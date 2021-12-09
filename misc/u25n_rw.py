#!/usr/bin/python3

import socket
import struct
import fcntl
from ctypes import *

DEBUG = 0

SUBCOMMAND_CHECK = 0
SUBCOMMAND_READ_WRITE = 1
REG_RW_IOCTL = 0x89FC
#0x800E0000

class Operation(Structure):
    _fields_ = [("reg_addr", c_uint),
                ("reg_val", c_uint),
                ("rw", c_bool)]

class CommandFormat(Structure):
    _fields_ = [("subcommand", c_uint),
                ("args", Operation)]
                
class IFREQ(Structure):
    _fields_ = [("ifr_name", c_char * 16),
                ("ifr_data", POINTER(CommandFormat))]

def dump_struct(s, prefix=''):
    if DEBUG:
        import inspect
        print(f"{prefix}Structure {type(s).__name__}:")
        for field in s._fields_:
            if inspect.isclass(type(getattr(s, field[0]))) and issubclass(type(getattr(s, field[0])), Structure):
                dump_struct(getattr(s, field[0]), f"  {prefix}")
            elif hasattr(getattr(s, field[0]), 'contents'):
                dump_struct(getattr(s, field[0]).contents, f"  {prefix}")
            else:
                print(f"{prefix}  {field[0]} =  {getattr(s, field[0])}")
        print("")
 

class U25N_RW_REG:
    def __init__(self, iface):
        self._iface = iface


    def check_link(self):
        # check link - puts it in loopback as needed
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, 0)
        reg_addr = c_uint()
        reg_val = c_uint()
        rw = c_bool(False)
        operation = Operation(reg_addr, reg_val, rw)
        command = CommandFormat(c_uint(SUBCOMMAND_CHECK), operation)
        ifr = IFREQ(str.encode(self._iface), pointer(command))
        dump_struct(ifr)

        retval = fcntl.ioctl(sock,REG_RW_IOCTL,ifr)
        if retval:
            raise OSError
        dump_struct(ifr)

    def read(self, addr):
        # read register
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, 0)
        reg_addr = c_uint(addr)
        reg_val = c_uint()
        rw = c_bool(False)
        operation = Operation(reg_addr, reg_val, rw)
        command = CommandFormat(c_uint(SUBCOMMAND_READ_WRITE), operation)
        ifr = IFREQ(str.encode(self._iface), pointer(command))
        dump_struct(ifr)

        retval = fcntl.ioctl(sock,REG_RW_IOCTL,ifr)
        if retval:
            raise OSError
        dump_struct(ifr)
        return ifr.ifr_data.contents.args.reg_val


    def write(self, addr, value):
        # write register
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, 0)
        reg_addr = c_uint(addr)
        reg_val = c_uint(value)
        rw = c_bool(True)
        operation = Operation(reg_addr, reg_val, rw)
        command = CommandFormat(c_uint(SUBCOMMAND_READ_WRITE), operation)
        ifr = IFREQ(str.encode(self._iface), pointer(command))
        dump_struct(ifr)
        retval = fcntl.ioctl(sock,REG_RW_IOCTL,ifr)
        dump_struct(ifr)
        if retval:
            raise OSError

def detect_interface_name():
    # get the first interface that is using the sfc driver
    import os
    for f in os.listdir('/sys/class/net/'):
        if os.path.exists(f'/sys/class/net/{f}/device/driver/module'):
            driver=os.path.basename(os.readlink(f'/sys/class/net/{f}/device/driver/module'))
            if driver == 'sfc':
                return f
    return None

if __name__ == "__main__":
    import sys
    import argparse
    def auto_int(x):
        return int(x, 0)
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', "--iface", help="the name of the u25n interface", default='None')
    parser.add_argument('-v', "--verbose", help="verbose output", action="store_true")
    parser.add_argument("addr", type=auto_int, help="the address to read or write from")
    parser.add_argument("val", nargs='?', type=auto_int, default=None, help="the value to write")
    args = parser.parse_args()
    
    #print(args)

    if args.iface == 'None':
        args.iface = detect_interface_name()
    if args.iface == None:
        print('Interface not found')
        sys.exit(-1)

    #print(args)

    u25_rw_reg = U25N_RW_REG(args.iface)
    u25_rw_reg.check_link()
    if args.val == None:
        retval = u25_rw_reg.read(args.addr)
        if args.verbose:
            print(f'[if: {args.iface}] reg[{format(args.addr, "#010X")}] = {format(retval, "#010X")}')
        else:
            print(retval)
    else:
        u25_rw_reg.write(args.addr, args.val)
        if args.verbose:
            print(f'[if: {args.iface}] wrote {format(args.val, "#010X")} to reg[{format(args.addr, "#010X")}]')
        


