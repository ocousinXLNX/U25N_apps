# P4 example design for the U25N

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

u25n_update upgrade p4_example.bit ${IF_0}
```
## Using the example design
The example implements an echo UDP server on a configurable port:
 The Echo example is like a UDP echo server. It does nothing more than sending 
 back whatever packets are sent to it, no control plane software is required. 
 The UDP port is setup to listen to port specified with metadata field echo_port. 
 Packets containing a different UDP destination port will remain unmodified. 

## Control the P4 block
The port for the echo server needs to be configured, via address 0x800E0000. The lower 16 bits are used for the address, bit 16 has to be set to one.
For example, to listen to port 1234, this needs to be written:
```
./u25n_rw.py -v 0x800E0000 0x104D2
```
You can then start a netcat server listening on that port:
```
nc -u -l 1234
```

on the peer, start a netcat client connecting to that host and port. For example:
```
nc -u 192.168.100.2 1234
```
Run wireshart on both the host and peer, and notice that the port numbers and ip addresses are switched when sending data over this connection.
To verify normal traffic, change the port number for the p4 block to 0, by writing
```
./u25n_rw.py -v 0x800E0000 0x10000
```

