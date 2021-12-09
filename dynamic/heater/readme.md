# Heater design for the U25N

On the host, the included driver should be installed:
```
sudo apt install sfc-dkms_<version>_all.deb
```
then reboot or unload and reload the sfc driver

Once this is done, the partial bitstream can be loaded. First the interfaces have to be brought up - this is what I do:
```
sudo su
export IF_0=enp13s0f0np0
export IF_1=enp13s0f1np1
ip addr flush dev $IF_0
ip addr add 192.168.100.2/24 dev $IF_0
ip link set up $IF_0
ip addr flush dev $IF_1
ip addr add 192.168.200.2/24 dev $IF_1
ip link set up $IF_1
ip a

u25n_update upgrade dynamic.bit ${IF_0}
```
I suggest to download the thermal testing scripts from https://www.xilinx.com/member/u25.html#vitis (a copy of the monitor script is in the misc folder). Once installed and configured, the monitor application can be exectued (in a different terminal) using:
```
sudo python ./u25_thermal_monitor.py
```
This will allow you to monitor temperature and power consumption of the U2N

At this point, the u25n_rw application or the u25n_rw.py script can be used to configure the heater. The base address of the heater is 0x800E0000.

### python script usage
```
$ ./u25n_rw.py -h
usage: u25n_rw.py [-h] [-i IFACE] [-v] addr [val]

positional arguments:
  addr                  the address to read or write from
  val                   the value to write

optional arguments:
  -h, --help            show this help message and exit
  -i IFACE, --iface IFACE
                        the name of the u25n interface
  -v, --verbose         verbose output
```
### u25n_rw usage
```
$ ./u25n_rw -h
Usage: (Address and values in hexadecimal)
	./u25n_rw <interface_name> -r <register_address>
	./u25n_rw <interface_name> -w <register_address> <write_value>
```
## Control the heater
read the base register of the gpio block - basic test
```
./u25n_rw.py 0x800E0000
```
change the toggle rates using the default 250MHz clock
```
./u25n_rw.py 0x800E0000 0x208
./u25n_rw.py 0x800E0000 0x388
./u25n_rw.py 0x800E0000 0x3CC
./u25n_rw.py 0x800E0000 0x3DD
./u25n_rw.py 0x800E0000 0x3EE
./u25n_rw.py 0x800E0000 0x3FF
```
disable the heater
./u25n_rw.py 0x800E0000 0x0

---- change the clock with 50% toggle rate (toggle rate can be changed at the same time as well of course) ----
```
//                3'b000:  clk_in   
./u25n_rw.py 0x800E0000 0x83CC
//                3'b001:  150.0MHz /10
./u25n_rw.py 0x800E0000 0x93CC
//                3'b010:  187.5MHz /8
./u25n_rw.py 0x800E0000 0xA3CC
//                3'b011:  214.3MHz /7
./u25n_rw.py 0x800E0000 0xB3CC
//                3'b100:  250.0MHz /6
./u25n_rw.py 0x800E0000 0xC3CC
//                3'b101:  300.0MHz /5
./u25n_rw.py 0x800E0000 0xD3CC
//                3'b110:  375.0MHz /4 
./u25n_rw.py 0x800E0000 0xE3CC
//                3'b111:  500.0MHz /3
./u25n_rw.py 0x800E0000 0xF3CC
```

Heater Usage: Config register
```
//                      _________________________________________________________________________
//                  Bit |   0    |   1    |   2    |   3    |   4    |   5    |   6    |   7    |
//                  Use |  SLC0  | SLC1   | SLC2   | SLC_EN |  BRM0  |  BRM1  |  BRM2  | BRM_EN |
//                      =========================================================================
//                  Bit |   8    |   9    |  10    |  11    |  12    |  13    |  14    |  15    |
//                  Use | DSP_EN | CFG_WR |  TBD   | TBD    | CK_SEL0| CK_SEL1| CK_SEL2| CK_EN  |
//                      =========================================================================
//                  Bit |  16    |  17    |  18    |  19    |  20    |  21    |  22    |  23    |
//                  Use |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |
//                      =========================================================================
//                  Bit |  24    |  25    |  26    |  27    |  28    |  29    |  30    |  31    |
//                  Use |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |
//                      =========================================================================
//              SLC[2:0] and BRM[2:0] Toggle rates
//                3'b111:100% Toggle
//                3'b110: 75% Toggle
//                3'b101: 50% Toggle
//                3'b100: 47% Toggle
//                3'b011: 37% Toggle
//                3'b010: 25% Toggle
//                3'b001: 12% Toggle
//                3'b000:  0% Toggle
//              SLC_EN: Active High single bit enable
//              BRM_EN  Active High single bit enable
//              DSP_EN: Active High single bit enable, Multiplies consist of a chain, one feeding the other.
//                      The first stage has a 16bit LSFR generating a number multiplied by the SEED, the result is
//                      fed to the next multiply which again is multiplied by the seed.
//              CK_EN:  Enabled the use of the MMCM if included in the design, if 0 bypasses MMCM. Only available if `define USE_MMCM
//              CK_SEL[2:0]: BUFG MUXES to select clock outputs. only available if `define USE_MMCM
//                3'b000:  clk_in   
//                3'b001:  150.0MHz /10 
//                3'b010:  187.5MHz /8  
//                3'b011:  214.3MHz /7 
//                3'b100:  250.0MHz /6
//                3'b101:  300.0MHz /5 
//                3'b110:  375.0MHz /4 
//                3'b111:  500.0MHz /3 
//              Example:
//                0x0000_0388 to turn on all the features with the lowest toggle rate and enable the write
//                To set the power to 50% toggle
//                0x0000_03CC
//                To set to 100% toggle rates
//                0x0000_03FF
```
