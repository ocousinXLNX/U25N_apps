#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"
#define SIZE 3
#define NUM_GROUPS 32


typedef hls::axis<ap_uint<512>, 0, 0, 0> pkt_size;
typedef hls::stream<pkt_size> mystream;

void lineArb(mystream &in_0, mystream &in_1, mystream &in_2, mystream &in_3,
		mystream &out_0, mystream &out_1, mystream &out_2, mystream &out_3,
		ap_uint<32> confFilterDstIPsA[NUM_GROUPS], ap_uint<16> confFilterDstPortsA[NUM_GROUPS],
		ap_uint<32> confFilterDstIPsB[NUM_GROUPS], ap_uint<16> confFilterDstPortsB[NUM_GROUPS],
		ap_uint<32> confFilterSrcIPsA[NUM_GROUPS], ap_uint<16> confFilterSrcPortsA[NUM_GROUPS],
		ap_uint<32> confFilterSrcIPsB[NUM_GROUPS], ap_uint<16> confFilterSrcPortsB[NUM_GROUPS],
		ap_int<20>  confFilterCsumAdj[NUM_GROUPS],
		int ip[4][4], int stats[6][4]);


/*
 * Structure of a 10Mb/s Ethernet header.
 */
//typedef ap_uint<8> byte;
//
//struct	ethernet_header {
//	byte	ether_dhost[6];    // MAC address destination
//	byte	ether_shost[6];    // MAC address source
//	byte	ether_type[2];     // type=IPV4
//	byte	ether_verh;        // version + header
//	byte	ether_sf;          // service field
//	byte	ether_len[2];      // total length
//	byte	ether_id[2];       // identification
//	byte	ether_flags;       // flags
//	byte	ether_offset;      // fragment offset
//	byte	ether_t2l;         // time to live
//	byte	ether_proto;       // protocol
//	byte	ether_cs[2];       // check sum
//	byte	ip_srcAddr[4];     // source ip address
//	byte	ip_destAddr[4];    // destination ip address
//	byte	udp_sport[2];      // udp port source
//	byte	udp_dport[2];      // udp destination port
//	byte	udp_len[2];        // udp length
//	byte	udp_cs[2];         // udp checksum 42 bytes
//	byte    cme_seq_nb;        // CME sequence number
//    byte	padding[21];       // udp payload 512bit 64 bytes 1 axis read
//};
