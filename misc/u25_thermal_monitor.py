#! /usr/bin/env python
# (c) Copyright 2020 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES

"""A script to perform thermal monitoring on Alveo U25 cards."""


from __future__ import print_function

import curses
import optparse
import os
import re
import subprocess
import sys
import time


CURSES_COLS = 200
CURSES_ROWS = 100
VERSION = 1.0


def get_timestamp(timestamp_raw=None):
    """Return a nicely formatted timestamp string."""
    timestamp_raw = timestamp_raw or time.time()
    timestamp_format = "%Y-%m-%d %H:%M:%S"
    timestamp = (time.strftime(timestamp_format, time.localtime(timestamp_raw))
                 + "{:.3f}".format(timestamp_raw%1)[1:])
    return timestamp

def print_banner(text, banner_char='-'):
    """Print a one-line banner using 'text'"""
    length = len(text)
    banner_line = banner_char*length
    print()
    print(banner_line)
    print(text)
    print(banner_line)


class OptionHandler(object):
    """Parse and handle command line options."""

    def __init__(self):
        """Construct a cmdline option parser."""
        script = os.path.basename(sys.argv[0])
        version = "{}: version {}".format(script, VERSION)
        parser = optparse.OptionParser(version=version)

        parser.add_option("--auto-detect", action="store_true", default=False,
                          help="auto-detect the sensor chips to monitor "
                               "(overrides --chips option)")
        parser.add_option("--chips", action="store",
                          type="string", default="",
                          help="comma-separated list of sensor chips to "
                               "monitor")
        parser.add_option("-l", "--log", action="store",
                          default="u25_sensors.log",
                          help="log file in which to store monitor data in "
                               "CSV format")
        parser.add_option("--no-log", action="store_true", default=False,
                          help="do not log monitor data to file "
                               "(overrides --log option)")
        parser.add_option("-t", "--time-interval", action="store",
                          type=float, default=1.0, metavar="SECONDS",
                          help="time interval between monitor readings "
                               "(may be a float)")
        parser.add_option("-v", "--verbose", action="store_true",
                          default=False,
                          help="more verbose output")

        self.parser = parser

    def get_options(self):
        """Return the processed command line options."""
        options, args = self.parser.parse_args()
        if args:
            self.parser.error("Unexpected cmdline args: {}".format(args))
        return self.process_options(options)

    def process_options(self, options):
        """Process and return the given options."""
        if options.no_log:
            options.log = None
        if options.time_interval <= 0:
            self.parser.error("--time-interval must be positive")
        if options.auto_detect and options.chips:
            self.parser.error(
                "please specify either --auto-detect or --chips but not both")
        return options


class SensorHandler(object):
    """Run and handle output from lm_sensors 'sensor' utility."""

    def __init__(self, options):
        self.options = options
        self.sensor_cmd = 'sensors'
        self.log_file = None
        self.log_fields = None
        self.start_time = None
        self.warnings = {}
        self.max_data = {}
        self.num_avg_readings = max(int(10.0/self.options.time_interval), 1)
        self.avg_data_store = {}
        self.avg_data = {}

        # Variables to handle printing data to screen:
        self.cols = None
        self.rows = None
        self.x_1 = 4
        self.x_2 = 8
        self.console_output = None

        self.available_chips = self.check_lm_sensors()
        self.chosen_chips = self.choose_chips()

    def check_lm_sensors(self):
        """Check 'lm_sensors' is installed; return list of monitor chips."""
        try:
            process = subprocess.Popen(self.sensor_cmd,
                                       stdout=subprocess.PIPE,
                                       stderr=subprocess.PIPE)
        except OSError:
            print("ERROR: '{}' not found; is 'lm_sensors' installed?"
                  .format(self.sensor_cmd))
            sys.exit(1)
        out = process.communicate()[0]
        return self.get_chips(out)

    @staticmethod
    def get_chips(sensors_output):
        """Return a list of chips present in sensors_output.

        Args:
        sensors_output -- the text output from running 'sensors' (with no args)
        """
        chip_names = []
        new_chip = True
        for line in sensors_output.splitlines():
            line = line.strip()
            if not line:
                new_chip = True
                continue
            if new_chip:
                chip_names.append(line)
                new_chip = False
        return chip_names

    def choose_chips(self):
        """Return a list of chips chosen for monitoring. """
        if self.options.auto_detect:
            return self.auto_detect_chips()

        available_chips = {}
        for i, chip in enumerate(self.available_chips):
            available_chips[i] = chip

        def get_choices():
            """Get the user's choice of chips to monitor from a list of options
            """
            print("Available chips:")
            for i, chip in sorted(available_chips.items()):
                print("\t{:2d}: {}".format(i, chip))
            return raw_input(
                "Enter comma-separated list of chips to monitor: ")

        def decode_choices(choices):
            """Validate the choice of chips to monitor, or print an error."""
            chips = []
            for chip in choices.split(","):
                if chip in self.available_chips:
                    # chip by name
                    chips.append(chip)
                else:
                    try:
                        _chip = int(chip)
                    except ValueError:
                        print("\nERROR: unrecognised chip: '{}'\n"
                              .format(chip))
                        return None
                    else:
                        if _chip in available_chips:
                            # chip by ID
                            chips.append(available_chips[int(chip)])
            return chips

        if self.options.chips:
            # get chips to monitor from cmdline
            chosen_chips = decode_choices(self.options.chips)
            if chosen_chips is None:
                print("ERROR: bad value for --chips given on cmdline")
                sys.exit(1)
        else:
            # prompt user for chips to monitor
            chosen_chips = None
            while chosen_chips is None:
                chosen_chips = decode_choices(get_choices())
        return chosen_chips

    def auto_detect_chips(self):
        """Return a list of auto-detected chips to monitor."""
        def get_ids(addrs):
            """Return list of IDs filtered from PCIe 'addrs'."""
            ids = []
            for addr in addrs:
                if addr.endswith('0'):
                    # ignore 2nd function (duplicates sensor data of 1st fn)
                    ids.append(addr[5:7] + addr[8:10])
                        # id = BBDD, from PCIe addr in format Domain:BB:DD.F
            return ids

        u25_x2_pcis = self.get_pci_addrs('1924:', '802e')
        u25_x2_ids = get_ids(u25_x2_pcis)

        chosen_chips = []
        for _id in u25_x2_ids:
            for chip in self.available_chips:
                if chip.endswith('pci-'+_id):
                    chosen_chips.append(chip)
        return chosen_chips

    @staticmethod
    def get_pci_addrs(svid, sid):
        """Return list of PCI addrs corresponding to given PCI SVID and SID."""
        process = subprocess.Popen(['lspci', '-d', svid, '-nm'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.STDOUT)
        out = process.communicate()[0]

        pci_addrs = []
        regex = r'([0-9a-fA-F]{4}:)?([0-9a-fA-F]{2}:[0-9a-fA-F]{2}.[0-7]).*"' \
              + sid + r'"'
        for line in out.splitlines():
            m = re.match(regex, line)
            if m:
                pci_addrs.append((m.group(1) or '0000:') + m.group(2))
        return pci_addrs

    def run(self):
        """Gather/report sensor data in a loop"""
        # Setup prior to running monitor:
        for chip in self.chosen_chips:
            self.warnings[chip] = ["-"]*5
            self.max_data[chip] = {}
            self.avg_data_store[chip] = []
            self.avg_data[chip] = {}
        if self.options.log:
            self.log_file = open(self.options.log, "w")
            self.log_fields = (
                'sensor_chip',
                'timestamp',
                'u25_temp',
                'x2_temp',
                'x2_temp_alarm',
                'fpga_temp',
                'fpga_temp_alarm',
                'u25_board_power',
                'u25_12v',
                'u25_12v_current',
                'u25_3v3',
                'u25_3v3_current',
                'x2_core_power',
                'x2_0v9',
                'x2_0v9_current',
                'fpga_core_power',
                'fpga_voltage',
                'fpga_current',
            )
            self.log_file.write(','.join(self.log_fields)+"\n")

        # Start the monitor:
        self.start_time = time.time()
        try:
            curses.wrapper(self.monitor_loop)
        except KeyboardInterrupt:
            pass

        # Print the final set of console output:
        # -- discard any trailing blank lines:
        while True:
            if self.console_output[-1].strip():
                break
            else:
                self.console_output.pop(-1)
        # -- print the remaining lines:
        print_banner("Final console output", banner_char="=")
        for line in self.console_output:
            print(line.rstrip())

    def monitor_loop(self, stdscr):
        """Monitor and process sensor data in a loop."""
        while True:
            # Run a single monitor iteration:
            timestamp_raw = time.time()
            timestamp = get_timestamp(timestamp_raw=timestamp_raw)
            self.monitor_iteration(stdscr, timestamp_raw, timestamp)

            # Sleep so the next monitor iteration happens at the correct time:
            next_iter_time = timestamp_raw + self.options.time_interval
            sleep_duration = max(0, next_iter_time - time.time())
            time.sleep(sleep_duration)

    def monitor_iteration(self, stdscr, timestamp_raw, timestamp):
        """Run 'sensors', process the output and print relevant info."""
        # Gather data:
        process = subprocess.Popen([self.sensor_cmd, '-u'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE)
        out = process.communicate()[0]

        # Process data:
        sensor_data = self.parse_sensor(out)
        reporting_data = self.process_sensor_data(sensor_data, timestamp_raw)

        # Log data to file and to screen:
        self.log_to_file(reporting_data)
        self.log_to_screen(stdscr, reporting_data, timestamp)

    def parse_sensor(self, output):
        """Parse the 'output' of `sensors -u`; return a dict of readings.

        Example output (from `sensors -u`):
        =======================================================================
        p5p1-pci-0400
        Adapter: PCI adapter
        in0:
          in0_input: 1.800
          in0_min: 0.500
          in0_max: 1.900
          in0_crit: 2.000
          in0_alarm: 0.000
        ...

        p5p1-pci-0401
        Adapter: PCI adapter
        in0:
        ...
        =======================================================================
        """
        sensor_data = {}
        chip_name = None
        for line in output.splitlines():
            if not line.strip():
                # blank lines separate the data for different sensor chips
                chip_name = None
            elif chip_name is None:
                # we've reached the start of data for a new chip
                chip_name = line.strip()  # first line is the sensor chip name
                if chip_name in self.chosen_chips:
                    sensor_data[chip_name] = {}
                    data = sensor_data[chip_name]
            elif chip_name in self.chosen_chips:
                if line.startswith('Adapter'):
                    data['adapter'] = re.match(r'Adapter: (.*)', line).group(1)
                elif not line.startswith((' ', '\t')):
                    sensor_name = line.strip().strip(':')
                    data[sensor_name] = {}
                else:
                    m = re.match(r'\s+\w+_(\w+):\s*(.*)', line)
                    data[sensor_name][m.group(1)] = float(m.group(2))
        return sensor_data

    def process_sensor_data(self, data, timestamp_raw):
        """Process the sensor data and return data to be reported."""
        _data = {}
        for chip in self.chosen_chips:
            d = {
                'sensor_chip': chip,
                'timestamp': timestamp_raw,
                }

            # Get temperatures:

            d['u25_temp'] = data[chip]['Ambient temp.']\
                .get('input', float('nan'))
            d['u25_temp_warn'] = data[chip]['Ambient temp.']\
                .get('max', float('nan'))
            d['u25_temp_error'] = data[chip]['Ambient temp.']\
                .get('crit', float('nan'))

            d['x2_temp'] = data[chip]['Controller die (TDIODE) temp.']\
                .get('input', float('nan'))
            d['x2_temp_warn'] = data[chip]['Controller die (TDIODE) temp.']\
                .get('max', float('nan'))
            d['x2_temp_error'] = data[chip]['Controller die (TDIODE) temp.']\
                .get('crit', float('nan'))
            d['x2_temp_alarm'] = self.check_temps(
                d['x2_temp'], d['x2_temp_warn'], d['x2_temp_error'])

            d['fpga_temp'] = data[chip]['AOE FPGA temp.']\
                .get('input', float('nan'))
            d['fpga_temp_warn'] = data[chip]['AOE FPGA temp.']\
                .get('max', float('nan'))
            d['fpga_temp_error'] = data[chip]['AOE FPGA temp.']\
                .get('crit', float('nan'))
            d['fpga_temp_alarm'] = self.check_temps(
                d['fpga_temp'], d['fpga_temp_warn'], d['fpga_temp_error'])

            # Get powers:

            d['u25_12v'] = data[chip]['12.0V supply']\
                .get('input', float('nan'))
            d['u25_12v_current'] = data[chip]['12V supply current']\
                .get('input', float('nan'))
            d['u25_3v3'] = data[chip]['3.3V supply']\
                .get('input', float('nan'))
            d['u25_3v3_current'] = data[chip]['3.3V supply current']\
                .get('input', float('nan'))
            d['u25_board_power'] = (d['u25_12v'] * d['u25_12v_current'] +
                                    d['u25_3v3'] * d['u25_3v3_current'])

            d['x2_0v9'] = data[chip]['0.9V phase A supply']\
                .get('input', float('nan'))
            d['x2_0v9_current'] = data[chip]['0.9V phase A supply current']\
                .get('input', float('nan'))
            d['x2_core_power'] = d['x2_0v9'] * d['x2_0v9_current']

            d['fpga_voltage'] = data[chip]['AOE input supply']\
                .get('input', float('nan'))
            d['fpga_current'] = data[chip]['AOE input current']\
                .get('input', float('nan'))
            d['fpga_core_power'] = d['fpga_voltage'] * d['fpga_current']

            _data[chip] = d

            # Update max readings:
            for k, v in d.items():
                if k in ('sensor_chip', 'timestamp'):
                    continue
                elif k not in self.max_data[chip]:
                    # if v is float('nan') on first pass through here then we
                    # must still ensure self.max_data is populated:
                    self.max_data[chip][k] = v
                if v > self.max_data[chip].get(k, 0):
                    self.max_data[chip][k] = v

            # Update rolling average values:
            while len(self.avg_data_store[chip]) >= self.num_avg_readings:
                # get rid of old, un-needed readings
                self.avg_data_store[chip].pop(0)
            self.avg_data_store[chip].append(d)
            for k, v in d.items():
                if k in ('sensor_chip', 'timestamp') or k.endswith('alarm'):
                    continue
                self.avg_data[chip][k] \
                    = sum(datum[k] for datum in self.avg_data_store[chip]) \
                    / len(self.avg_data_store[chip])

        return _data

    def log_to_file(self, data):
        """Print sensor data to log file."""
        if self.log_file:
            for chip in self.chosen_chips:
                log_data = []
                for field in self.log_fields:
                    if field.endswith('alarm'):
                        log_data.append(str(int(bool(data[chip][field]))))
                    else:
                        log_data.append(str(data[chip][field]))
                self.log_file.write(','.join(log_data) + "\n")

    def log_to_screen(self, stdscr, data, timestamp):
        """Print sensor data to screen."""
        # Prepare to display the data for this iteration:
        stdscr.clear()
        curses.curs_set(False)
        self.rows, self.cols = stdscr.getmaxyx()
        pad = curses.newpad(CURSES_ROWS, CURSES_COLS)

        # Construct the data to be shown on screen:
        self.draw_console(pad, timestamp, data)

        # Actually display the data on screen:
        pad.refresh(0, 0, 0, 0, self.rows-1, self.cols-1)

        # Store data printed to screen:
        self.console_output = []
        for i in range(CURSES_ROWS):
            self.console_output.append(pad.instr(i, 0))

    def draw_console(self, pad, timestamp, data):
        """Construct the console output for this iteration."""
        y = self.draw_header(pad, timestamp, data[self.chosen_chips[0]])
        for chip in self.chosen_chips:
            y = self.draw_table(pad, y, data, chip)
            y = self.draw_warnings(pad, y, data, chip, timestamp)

    def draw_header(self, window, timestamp, data):
        """Draw header; return number of lines used."""
        window.addstr(0, 0, "Timestamp:     {}".format(timestamp))
        elapsed_time = int(data['timestamp'] - self.start_time)
        minutes, seconds = divmod(elapsed_time, 60)
        hours, minutes = divmod(minutes, 60)
        days, hours = divmod(hours, 24)
        window.addstr(1, 0,
                      "Elapsed time:  {}d {}h {}m {}s"
                      .format(days, hours, minutes, seconds))

        return 2

    def draw_table(self, window, y, data, chip):
        """Draw table of sensor readings; return number of lines used."""
        def highlight_temps(y, current_temp, max_temp, avg_temp, warning_temp):
            """Highlight any temperatures that are above the warning_temp."""
            x = self.x_2 + 5
            for temp in (current_temp, max_temp, avg_temp):
                x += 12
                if temp > warning_temp:
                    window.addstr(y, x, "{:6.0f} C".format(temp),
                                  curses.A_REVERSE)

        line_len = 65
        line = "=" * line_len
        _line = "-" * line_len

        y += 1
        window.addstr(y, self.x_1, chip+":")
        window.addstr(y+1, self.x_2, line)
        window.addstr(
            y+2, self.x_2,
            "                  current         max    avg(10s)    warn    "
            "crit")
        window.addstr(y+3, self.x_2, line)
        window.addstr(
            y+4, self.x_2,
            "U25 board temp:  {:6.0f} C    {:6.0f} C    {:6.0f} C   "
            "{:3.0f} C   {:3.0f} C"
            .format(data[chip]['u25_temp'],
                    self.max_data[chip]['u25_temp'],
                    self.avg_data[chip]['u25_temp'],
                    data[chip]['u25_temp_warn'],
                    data[chip]['u25_temp_error']))
        highlight_temps(
            y+4, data[chip]['u25_temp'], self.max_data[chip]['u25_temp'],
            self.avg_data[chip]['u25_temp'], data[chip]['u25_temp_warn'])
        window.addstr(
            y+5, self.x_2,
            "X2 temp:         {:6.0f} C    {:6.0f} C    {:6.0f} C   "
            "{:3.0f} C   {:3.0f} C"
            .format(data[chip]['x2_temp'],
                    self.max_data[chip]['x2_temp'],
                    self.avg_data[chip]['x2_temp'],
                    data[chip]['x2_temp_warn'],
                    data[chip]['x2_temp_error']))
        highlight_temps(
            y+5, data[chip]['x2_temp'], self.max_data[chip]['x2_temp'],
            self.avg_data[chip]['x2_temp'], data[chip]['x2_temp_warn'])
        window.addstr(
            y+6, self.x_2,
            "FPGA temp:       {:6.0f} C    {:6.0f} C    {:6.0f} C   "
            "{:3.0f} C   {:3.0f} C"
            .format(data[chip]['fpga_temp'],
                    self.max_data[chip]['fpga_temp'],
                    self.avg_data[chip]['fpga_temp'],
                    data[chip]['fpga_temp_warn'],
                    data[chip]['fpga_temp_error']))
        highlight_temps(
            y+6, data[chip]['fpga_temp'], self.max_data[chip]['fpga_temp'],
            self.avg_data[chip]['fpga_temp'], data[chip]['fpga_temp_warn'])
        y += 7

        window.addstr(y, self.x_2, line)
        window.addstr(
            y+1, self.x_2,
            "U25 board power: {:6.3f} W    {:6.3f} W    {:6.3f} W"
            .format(data[chip]['u25_board_power'],
                    self.max_data[chip]['u25_board_power'],
                    self.avg_data[chip]['u25_board_power']))
        y += 2
        if self.options.verbose:
            window.addstr(
                y, self.x_2,
                "U25 12V supply:  {:6.3f} V    {:6.3f} V    {:6.3f} V"
                .format(data[chip]['u25_12v'],
                        self.max_data[chip]['u25_12v'],
                        self.avg_data[chip]['u25_12v']))
            window.addstr(
                y+1, self.x_2,
                "U25 12V current: {:6.3f} A    {:6.3f} A    {:6.3f} A"
                .format(data[chip]['u25_12v_current'],
                        self.max_data[chip]['u25_12v_current'],
                        self.avg_data[chip]['u25_12v_current']))
            window.addstr(
                y+2, self.x_2,
                "U25 3V3 supply:  {:6.3f} V    {:6.3f} V    {:6.3f} V"
                .format(data[chip]['u25_3v3'],
                        self.max_data[chip]['u25_3v3'],
                        self.avg_data[chip]['u25_3v3']))
            window.addstr(
                y+3, self.x_2,
                "U25 3V3 current: {:6.3f} A    {:6.3f} A    {:6.3f} A"
                .format(data[chip]['u25_3v3_current'],
                        self.max_data[chip]['u25_3v3_current'],
                        self.avg_data[chip]['u25_3v3_current']))
            window.addstr(y+4, self.x_2, _line)
            y += 5

        window.addstr(
            y, self.x_2,
            "X2 core power:   {:6.3f} W    {:6.3f} W    {:6.3f} W"
            .format(data[chip]['x2_core_power'],
                    self.max_data[chip]['x2_core_power'],
                    self.avg_data[chip]['x2_core_power']))
        y += 1
        if self.options.verbose:
            window.addstr(
                y, self.x_2,
                "X2 voltage:      {:6.3f} V    {:6.3f} V    {:6.3f} V"
                .format(data[chip]['x2_0v9'],
                        self.max_data[chip]['x2_0v9'],
                        self.avg_data[chip]['x2_0v9']))
            window.addstr(
                y+1, self.x_2,
                "X2 current:      {:6.3f} A    {:6.3f} A    {:6.3f} A"
                .format(data[chip]['x2_0v9_current'],
                        self.max_data[chip]['x2_0v9_current'],
                        self.avg_data[chip]['x2_0v9_current']))
            window.addstr(y+2, self.x_2, _line)
            y += 3

        window.addstr(
            y, self.x_2,
            "FPGA core power: {:6.3f} W    {:6.3f} W    {:6.3f} W"
            .format(data[chip]['fpga_core_power'],
                    self.max_data[chip]['fpga_core_power'],
                    self.avg_data[chip]['fpga_core_power']))
        y += 1
        if self.options.verbose:
            window.addstr(
                y, self.x_2,
                "FPGA voltage:    {:6.3f} V    {:6.3f} V    {:6.3f} V"
                .format(data[chip]['fpga_voltage'],
                        self.max_data[chip]['fpga_voltage'],
                        self.avg_data[chip]['fpga_voltage']))
            window.addstr(
                y+1, self.x_2,
                "FPGA current:    {:6.3f} A    {:6.3f} A    {:6.3f} A"
                .format(data[chip]['fpga_current'],
                        self.max_data[chip]['fpga_current'],
                        self.avg_data[chip]['fpga_current']))
            y += 2
        window.addstr(y, self.x_2, line)
        y += 1

        return y

    def draw_warnings(self, window, y, data, chip, timestamp):
        """Draw any sensor warnings; return number of lines used."""
        y += 1
        window.addstr(y, self.x_1, "Last 5 warnings:")
        y += 1

        if data[chip]['x2_temp_alarm']:
            self.warnings[chip].append(
                "WARNING: ({}) X2 temperature exceeded {} threshold"
                .format(timestamp, data[chip]['x2_temp_alarm']))
        if data[chip]['fpga_temp_alarm']:
            self.warnings[chip].append(
                "WARNING: ({}) FPGA temperature exceeded {} threshold"
                .format(timestamp, data[chip]['x2_temp_alarm']))
        self.warnings[chip] = self.warnings[chip][-5:]  # only report last
                                                        # 5 warnings seen
        for i, warning in enumerate(reversed(self.warnings[chip])):
            window.addstr(y+i, self.x_2, warning)
        y += 5

        return y

    @staticmethod
    def check_temps(reading, warning, critical):
        """Warn if 'reading' exceeds 'warning' or 'critical' thresholds."""
        if reading >= critical:
            return 'critical'
        elif reading >= warning:
            return 'warning'
        return None

    def stop(self):
        """Stop the monitor and perform any necessary cleanup."""
        if self.log_file:
            self.log_file.close()
            print("Sensor data written to: {}"
                  .format(self.options.log))


if __name__ == "__main__":
    print_banner("Performing setup", banner_char="=")
    options = OptionHandler().get_options()
    if os.geteuid() != 0:
        print("ERROR: please run as root")
        sys.exit(1)
    print_banner("Initialising U25 monitor")
    sensor_handler = SensorHandler(options)
    try:
        sensor_handler.run()
    finally:
        print_banner("Stopping U25 monitor", banner_char="=")
        if sensor_handler:
            sensor_handler.stop()
