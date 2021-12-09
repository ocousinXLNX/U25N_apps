#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"
#define nbOfpackets 6
#define beatsPerPacket 3


typedef hls::axis<ap_uint<512>, 0, 0, 0> pkt_size;
typedef hls::stream<pkt_size> mystream;
typedef ap_uint<8> byte;
typedef ap_uint<32> word;

typedef enum { F, T } boolean;


/*
 * Structure of a 10Mb/s Ethernet header.
 */

struct	ethernet_header {
	byte	ether_dhost[6];    // MAC address destination
	byte	ether_shost[6];    // MAC address source
	byte	ether_type[2];     // type=IPV4
	byte	ether_verh;        // version + header
	byte	ether_sf;          // service field
	byte	ether_len[2];      // total length
	byte	ether_id[2];       // identification
	byte	ether_flags;       // flags
	byte	ether_offset;      // fragment offset
	byte	ether_t2l;         // time to live
	byte	ether_proto;       // protocol
	byte	ether_cs[2];       // check sum
	byte	ip_srcAddr[4];     // source ip address
	word	ip_destAddr;    // destination ip address
	byte	udp_sport[2];      // udp port source
	byte	udp_dport[2];      // udp destination port
	byte	udp_len[2];        // udp length
	byte	udp_cs[2];         // udp checksum 42 bytes
	word    cme_seq_nb;        // CME sequence number
    byte	padding[21];       // udp payload 512bit 64 bytes 1 axis read
};

struct LineArbRegisters{
	word	ip_srcAddrA;     // source ip address
	word	ip_srcAddrB;     // source ip address
	word	ip_destAddrA;    // destination ip address
	word	ip_destAddrB;    // destination ip address
	word	udp_srcPortA;      // udp destination port
	word	udp_srcPortB;      // udp destination port
	word	udp_destPortA;      // udp destination port
	word	udp_destPortB;      // udp destination port
};




void axiSTnonBlockingExample(mystream &line_A, mystream &line_B, mystream &outputArb1, mystream &outputArb2, LineArbRegisters configRegA, int &c);
