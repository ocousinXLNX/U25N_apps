/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "lineArb.hpp"
#include <iostream>
typedef struct md_seq_t {
	ap_uint<32> msg_seq_num;
} md_seq_t;

typedef struct udp_t {
	ap_uint<16> src_port;
	ap_uint<16> dst_port;
	ap_uint<16> udp_len;
	ap_uint<16> udp_csum;
} udp_t;

typedef struct ipv4_header_t {
	ap_uint<4> version;
	ap_uint<4> hdr_len;
	ap_uint<8> diff_serv;
	ap_uint<16> total_length;
	ap_uint<16> id;
	ap_uint<16> flags;
	ap_uint<8> ttl;
	ap_uint<8> protocol;
	ap_uint<16> hdr_csum;
	ap_uint<32> src_ip;
	ap_uint<32> dst_ip;
} ipv4_header_t;

typedef struct pkt_header_t {
	ap_uint<48> dst_mac;
	ap_uint<48> src_mac;
	ap_uint<16> ether_type;
    ipv4_header_t ipv4_hdr;
    udp_t		udp_hdr;
    md_seq_t	market_data;
} pkt_header_t;


void beatUnpackEth( pkt_size *beat_in, pkt_header_t *beat_out) {
#pragma HLS INLINE
	beat_out->dst_mac = beat_in->data.range(47,0);
	beat_out->src_mac = beat_in->data.range(95,48);
	beat_out->ether_type = (ap_uint<16>) (beat_in->data.range(103,96),beat_in->data.range(111,104));
	return;
}
void beatUnpackIP( pkt_size *beat_in, pkt_header_t *beat_out) {
#pragma HLS INLINE
	beat_out->ipv4_hdr.version = (ap_uint<4>) (beat_in->data.range(119,116));
	beat_out->ipv4_hdr.hdr_len = (ap_uint<4>) (beat_in->data.range(115,112));
	beat_out->ipv4_hdr.diff_serv = (ap_uint<4>) (beat_in->data.range(127,120));
	beat_out->ipv4_hdr.total_length = (ap_uint<16>) (beat_in->data.range(135,128),beat_in->data.range(143,136));
	beat_out->ipv4_hdr.id = (ap_uint<16>) (beat_in->data.range(151,144),beat_in->data.range(159,152));
	beat_out->ipv4_hdr.flags = (ap_uint<16>) (beat_in->data.range(167,160),beat_in->data.range(175,168));
	beat_out->ipv4_hdr.ttl = (ap_uint<8>) (beat_in->data.range(183,176));
	beat_out->ipv4_hdr.protocol = (ap_uint<8>) (beat_in->data.range(191,184));
	beat_out->ipv4_hdr.hdr_csum = (ap_uint<16>) (beat_in->data.range(199,192),beat_in->data.range(207,200));
//#define ARP
//#ifdef ARP
	if (beat_out->ether_type == 0x806) {
		beat_out->ipv4_hdr.src_ip = (ap_uint<32>) (beat_in->data.range(231,224),beat_in->data.range(239,232),beat_in->data.range(247,240),beat_in->data.range(255,248));
		beat_out->ipv4_hdr.dst_ip = (ap_uint<32>) (beat_in->data.range(311,304),beat_in->data.range(319,312),beat_in->data.range(327,320),beat_in->data.range(335,328));
	} else {
//#else
		beat_out->ipv4_hdr.src_ip = (ap_uint<32>) (beat_in->data.range(215,208),beat_in->data.range(223,216),beat_in->data.range(231,224),beat_in->data.range(239,232));
		beat_out->ipv4_hdr.dst_ip = (ap_uint<32>) (beat_in->data.range(247,240),beat_in->data.range(255,248),beat_in->data.range(263,256),beat_in->data.range(271,264));
	}
//#endif
	return;
}
void beatUnpackUDP( pkt_size *beat_in, pkt_header_t *beat_out) {
#pragma HLS INLINE
	beat_out->udp_hdr.src_port = (ap_uint<16>) (beat_in->data.range(279,272),beat_in->data.range(287,280));
	beat_out->udp_hdr.dst_port = (ap_uint<16>) (beat_in->data.range(295,288),beat_in->data.range(303,296));
	beat_out->udp_hdr.udp_len = (ap_uint<16>) (beat_in->data.range(311,304),beat_in->data.range(319,312));
	beat_out->udp_hdr.udp_csum = (ap_uint<16>) (beat_in->data.range(327,320),beat_in->data.range(335,328));
	return;
}

void beatUnpackCME( pkt_size *beat_in, pkt_header_t *beat_out) {
#pragma HLS INLINE
	beat_out->market_data.msg_seq_num = (ap_uint<32>) (beat_in->data.range(367,336));
	return;
}

ap_uint<16> adjustCsum(ap_uint<20> csum, ap_int<20> csum_diff) { // csum_in is 16 bits but need 20 to allow for overflow in calculations
#pragma HLS INLINE
	csum -= csum_diff;										// Subtract difference from original csum
	csum = (csum & 0xffff) + (ap_int<4>)(csum >> 16);		// remove upper 16 bits and add overflow
	csum = (csum & 0xffff) + (ap_uint<4>)(csum >> 16);		// repeat in case of second overflow
	return (ap_uint<16>) csum;								// return 16 bit csum

}

void changeIPHeader( pkt_size *beat_out, ap_uint<32> src_ip, ap_uint<32> dst_ip, ap_uint<32> src_port, ap_uint<16> dst_port, ap_int<20> csum_adjust) {
#pragma HLS INLINE
//	std::cout << "pre  change               " << std::hex << beat_out->data << "  " << src_ip << " " << dst_ip << " " << src_port << "\n";
//	(beat_out->data.range(215,208),beat_out->data.range(223,216),beat_out->data.range(231,224),beat_out->data.range(239,232)) = src_ip;

	(beat_out->data.range(231,224),beat_out->data.range(239,232)) = (ap_uint<16>) src_ip;
	(beat_out->data.range(215,208),beat_out->data.range(223,216)) = (ap_uint<16>) src_ip.range(31,16);
	(beat_out->data.range(263,256),beat_out->data.range(271,264)) = (ap_uint<16>) dst_ip;
	(beat_out->data.range(247,240),beat_out->data.range(255,248)) = (ap_uint<16>) dst_ip.range(31,16);

	(beat_out->data.range(279,272),beat_out->data.range(287,280)) = src_port;
	(beat_out->data.range(295,288),beat_out->data.range(303,296)) = dst_port;


	(beat_out->data.range(327,320),beat_out->data.range(335,328)) =
			adjustCsum((ap_uint<20>) (beat_out->data.range(327,320),beat_out->data.range(335,328)), csum_adjust);   // udp csum
	(beat_out->data.range(199,192),beat_out->data.range(207,200)) =
			adjustCsum((ap_uint<20>) (beat_out->data.range(199,192),beat_out->data.range(207,200)), csum_adjust);;	// ip csum
	return;
}

void lineArb(mystream &in_0, mystream &in_1, mystream &in_2, mystream &in_3,
		mystream &out_0, mystream &out_1, mystream &out_2, mystream &out_3,
		ap_uint<32> confFilterDstIPsA[NUM_GROUPS], ap_uint<16> confFilterDstPortsA[NUM_GROUPS],
		ap_uint<32> confFilterDstIPsB[NUM_GROUPS], ap_uint<16> confFilterDstPortsB[NUM_GROUPS],
		ap_uint<32> confFilterSrcIPsA[NUM_GROUPS], ap_uint<16> confFilterSrcPortsA[NUM_GROUPS],
		ap_uint<32> confFilterSrcIPsB[NUM_GROUPS], ap_uint<16> confFilterSrcPortsB[NUM_GROUPS],
		ap_int<20>  confFilterCsumAdj[NUM_GROUPS],
		int ip[4][4], int stats[6][4]) {

#pragma HLS PIPELINE
#pragma HLS INTERFACE axis port=in_0
#pragma HLS INTERFACE axis port=in_1
#pragma HLS INTERFACE axis port=in_2
#pragma HLS INTERFACE axis port=in_3
#pragma HLS INTERFACE axis port=out_0
#pragma HLS INTERFACE axis port=out_1
#pragma HLS INTERFACE axis port=out_2
#pragma HLS INTERFACE axis port=out_3

#pragma HLS ARRAY_PARTITION variable=confFilterDstPortsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterDstIPsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterDstPortsB type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterDstIPsB type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcPortsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcIPsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcPortsB type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcIPsB type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterCsumAdj type=complete

#pragma HLS ARRAY_PARTITION variable=ip type=complete dim=0
#pragma HLS ARRAY_PARTITION variable=stats type=complete dim=0 // need to specify dim=0 as these are 2 dim arrays and we need to partition both ways

#pragma HLS interface mode=ap_ctrl_none port=return


//	#pragma HLS INTERFACE mode=s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterDstIPsA bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterDstPortsA bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterDstIPsB bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterDstPortsB bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterSrcIPsA bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterSrcPortsA bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterSrcIPsB bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterSrcPortsB bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=confFilterCsumAdj bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=ip bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=stats bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=confFilterSrcPortsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcIPsA type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcPortsB type=complete
#pragma HLS ARRAY_PARTITION variable=confFilterSrcIPsB type=complete

/*	confFilterDstIPsA[0] = 0x0101010a;
	confFilterDstIPsA[1] = 0x0101010b;
	confFilterDstIPsA[2] = 0x0101010c;
	confFilterDstIPsA[3] = 0x0101010d;
	confFilterDstIPsA[4] = 0x0101010e;

	confFilterDstIPsB[0] = 0x02010105;
	confFilterDstIPsB[1] = 0x02010106;
	confFilterDstIPsB[2] = 0x02010107;
	confFilterDstIPsB[3] = 0x02010108;
	confFilterDstIPsB[4] = 0x02010109;

	confFilterDstPortsA[0] = 25010;
	confFilterDstPortsA[1] = 25011;
	confFilterDstPortsA[2] = 25012;
	confFilterDstPortsA[3] = 25013;
	confFilterDstPortsA[4] = 25014;

	confFilterDstPortsB[0] = 26005;
	confFilterDstPortsB[1] = 26006;
	confFilterDstPortsB[2] = 26007;
	confFilterDstPortsB[3] = 26008;
	confFilterDstPortsB[4] = 26009;

	confFilterSrcIPsA[0] = 0x01010102;
	confFilterSrcIPsA[1] = 0x01010102;
	confFilterSrcIPsA[2] = 0x01010102;
	confFilterSrcIPsA[3] = 0x01010102;
	confFilterSrcIPsA[4] = 0x01010102;

	confFilterSrcIPsB[0] = 0x02010102;
	confFilterSrcIPsB[1] = 0x02010102;
	confFilterSrcIPsB[2] = 0x02010102;
	confFilterSrcIPsB[3] = 0x02010102;
	confFilterSrcIPsB[4] = 0x02010102;

	confFilterSrcPortsA[0] = 45110;
	confFilterSrcPortsA[1] = 45011;
	confFilterSrcPortsA[2] = 45012;
	confFilterSrcPortsA[3] = 45013;
	confFilterSrcPortsA[4] = 45014;

	confFilterSrcPortsB[0] = 46005;
	confFilterSrcPortsB[1] = 46006;
	confFilterSrcPortsB[2] = 46007;
	confFilterSrcPortsB[3] = 46008;
	confFilterSrcPortsB[4] = 46009;
*/
	for (int i = 0; i <NUM_GROUPS; i++) {
#pragma HLS UNROLL
		 ap_int<20> csum_adjustA = confFilterDstIPsA[i].range(15,0) + confFilterDstIPsA[i].range(31,16) + confFilterDstPortsA[i] +
								confFilterSrcIPsA[i].range(15,0) + confFilterSrcIPsA[i].range(31,16) + confFilterSrcPortsA[i];
		 ap_int<20> csum_adjustB = confFilterDstIPsB[i].range(15,0) + confFilterDstIPsB[i].range(31,16) + confFilterDstPortsB[i] +
							confFilterSrcIPsB[i].range(15,0) + confFilterSrcIPsB[i].range(31,16) + confFilterSrcPortsB[i];
		 confFilterCsumAdj[i] = csum_adjustA - csum_adjustB;
	}
	pkt_size tmp_pkt_beat;

#define TOTAL 4;
    static int pkt_count = 0;
	static int stats_l[6][4];
#pragma HLS ARRAY_PARTITION variable=stats_l type=complete dim=0

	static ap_uint<2> in_port;
	static ap_uint<2> out_port;
	static mystream active_stream;
    ap_uint<NUM_GROUPS> filterChkA;
    ap_uint<NUM_GROUPS> filterChkB;
    ap_uint<5> group_match_idx = 0;
    static ap_uint<32> expectedSeq[NUM_GROUPS];
#pragma HLS ARRAY_PARTITION variable=expectedSeq type=complete

    enum stateTypes {WAIT_PKT, FWD_A, FWD_B, FWD_NOMATCH, DUPLICATE_DISCARD};
	static stateTypes state = WAIT_PKT;

	pkt_header_t pkt_header;

	do {
		switch (state) {

		case WAIT_PKT: 							// Waiting for first beat of a new packet
			switch (in_port) {					// rotate round ports to be fair
			case 0:
				if (!in_0.empty()) {
					in_port = 0;
					tmp_pkt_beat = in_0.read();
				} else if (!in_1.empty()) {
					in_port = 1;
					tmp_pkt_beat = in_1.read();
				} else if (!in_2.empty()) {
					in_port = 2;
					tmp_pkt_beat = in_2.read();
				} else if (!in_3.empty()) {
					in_port = 3;
					tmp_pkt_beat = in_3.read();
				} else {
					continue;					// No beat to read so try again
				}
				break;
			case 1:
				if (!in_1.empty()) {
					in_port = 1;
					tmp_pkt_beat = in_1.read();
				} else if (!in_2.empty()) {
					in_port = 2;
					tmp_pkt_beat = in_2.read();
				} else if (!in_3.empty()) {
					in_port = 3;
					tmp_pkt_beat = in_3.read();
				} else if (!in_0.empty()) {
					in_port = 0;
					tmp_pkt_beat = in_0.read();
				} else {
					continue;					// No beat to read so try again
				}
				break;
			case 2:
				if (!in_2.empty()) {
					in_port = 2;
					tmp_pkt_beat = in_2.read();
				} else if (!in_3.empty()) {
					in_port = 3;
					tmp_pkt_beat = in_3.read();
				} else if (!in_0.empty()) {
					in_port = 0;
					tmp_pkt_beat = in_0.read();
				} else if (!in_1.empty()) {
					in_port = 1;
					tmp_pkt_beat = in_1.read();
				} else {
					continue;					// No beat to read so try again
				}
				break;
			case 3:
				if (!in_3.empty()) {
					in_port = 3;
					tmp_pkt_beat = in_3.read();
				} else if (!in_0.empty()) {
					in_port = 0;
					tmp_pkt_beat = in_0.read();
				} else if (!in_1.empty()) {
					in_port = 1;
					tmp_pkt_beat = in_1.read();
				} else if (!in_2.empty()) {
					in_port = 2;
					tmp_pkt_beat = in_2.read();
				} else {
					continue;					// No beat to read so try again
				}
				break;
			}
			beatUnpackEth(&tmp_pkt_beat, &pkt_header);
			beatUnpackIP(&tmp_pkt_beat, &pkt_header);
			beatUnpackUDP(&tmp_pkt_beat, &pkt_header);
			beatUnpackCME(&tmp_pkt_beat, &pkt_header);
			if (pkt_header.ether_type == 0x0800 && pkt_header.ipv4_hdr.version == 4 &&
					pkt_header.ipv4_hdr.hdr_len == 5 && pkt_header.ipv4_hdr.protocol == 17 ) { // Only check valid packets
				for (int i = 0; i < NUM_GROUPS; i++) {  // Find multicast group ID in A list (will only be in one) // Can these two be done in one loop
#pragma HLS UNROLL
					filterChkA[(NUM_GROUPS -1)-i] =
								((pkt_header.ipv4_hdr.dst_ip == confFilterDstIPsA[i]) && (pkt_header.udp_hdr.dst_port == confFilterDstPortsA[i]));
				}
				for (int i = 0; i < NUM_GROUPS; i++) {  // Find multicast group ID in B list (will only be in one)
#pragma HLS UNROLL
					filterChkB[(NUM_GROUPS -1)-i] =
								((pkt_header.ipv4_hdr.dst_ip == confFilterDstIPsB[i]) && (pkt_header.udp_hdr.dst_port == confFilterDstPortsB[i]));
				}
				if (filterChkA !=0 || filterChkB !=0) {
					group_match_idx  = filterChkA.countLeadingZeros() | filterChkB.countLeadingZeros();
					std::cout << "Expected seq " << expectedSeq[group_match_idx] << " Pkt Seq " << pkt_header.market_data.msg_seq_num;
					if (expectedSeq[group_match_idx] == 0 ) {		// initialise seq
						std::cout << " initialise ";
						expectedSeq[group_match_idx] = pkt_header.market_data.msg_seq_num;
					}
					if (pkt_header.market_data.msg_seq_num == 0 ) {							// incoming packet is seq reset
						std::cout << " incoming seq reset ";
						expectedSeq[group_match_idx] = pkt_header.market_data.msg_seq_num;
					}

					if (expectedSeq[group_match_idx] < pkt_header.market_data.msg_seq_num) { // GAP Detected
						std::cout << " gap detected\n";
						expectedSeq[group_match_idx] = pkt_header.market_data.msg_seq_num + 1;
						state = (filterChkA !=0)? FWD_A: FWD_B;
					} else if (expectedSeq[group_match_idx] == pkt_header.market_data.msg_seq_num) { // Packet has Expected Sequence
						std::cout << " pkt has expected seq\n";
						expectedSeq[group_match_idx]++;
						state = (filterChkA !=0)? FWD_A: FWD_B;
					} else { // (expectedSeq[group_match_idx] > pkt_header.market_data.msg_seq_num)  // Earlier packet so discard as duplicate
						std::cout << " discard duplicate\n";
						state = DUPLICATE_DISCARD;
					}
				} else { // Packet is UDP but not one of the configured groups, assume forward
					std::cout << "No match - Fwd\n";
					state = FWD_NOMATCH;  // Forward all packets that are not matched
				}
			} else {  // Packet is not UDP
				std::cout << " no match not udp - Fwd\n ";
				state = FWD_NOMATCH;  // Forward all packets that are not UDP
			}
			// decide output
			switch (state) {
			case FWD_B:
				std::cout << "Rewrite header\n ";
				changeIPHeader(&tmp_pkt_beat,  confFilterSrcIPsA[group_match_idx],confFilterDstIPsA[group_match_idx],
						confFilterSrcPortsA[group_match_idx],confFilterDstPortsA[group_match_idx],confFilterCsumAdj[group_match_idx]); //csum_adjustA-csum_adjustB);
				// Drop through
			case FWD_A:
				out_port = 2;
				out_2.write(tmp_pkt_beat);		// write next beat of packet
//				out_0.write(tmp_pkt_beat);		// write next beat of packet
//				out_1.write(tmp_pkt_beat);		// write next beat of packet
//				out_3.write(tmp_pkt_beat);		// write next beat of packet
				break;
			case FWD_NOMATCH:
				out_port = in_port +2; // Forward unknown packets to paired interface
				switch (out_port) {
				case 0:
					out_0.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 1:
					out_1.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 2:
					out_2.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 3:
					out_3.write(tmp_pkt_beat);		// write next beat of packet
					break;
				}
				break;
			case DUPLICATE_DISCARD:
			case WAIT_PKT:
				break;
			}
			if (tmp_pkt_beat.last) {
				state = WAIT_PKT;		// No more beats of packet to come so wait for next packet
			}
//			stats_l[out_port][1]++;		//tx packet
//			stats_l[out_port][3]++; 		//tx beat
			ip[out_port][0] = pkt_header.ipv4_hdr.dst_ip; 	//Dest IP
			ip[out_port][1] = pkt_header.ipv4_hdr.src_ip; 	// Src IP
			ip[out_port][2] = (ap_uint<16>) (tmp_pkt_beat.data.range(199,192),tmp_pkt_beat.data.range(207,200));		// IP Csum
		ip[out_port][3] =		(ap_uint<16>) (tmp_pkt_beat.data.range(327,320),tmp_pkt_beat.data.range(335,328)); 		// UDP Csum
		//	ip[out_port][3] = pkt_header.market_data.msg_seq_num; 		// cme seq num
//			stats_l[in_port][0]++;		//rx packet
//			stats_l[in_port][2]++; 		//rx beat
//			stats_l[4][0]++;				//rx pkt total
//			stats_l[4][2]++;				//rx beat total
//			stats_l[4][1]++;				//tx pkt total
//			stats_l[4][3]++;				//tx beat total


			break;
		case FWD_A:
		case FWD_B:
		case FWD_NOMATCH:
		case DUPLICATE_DISCARD:
			switch (in_port) {
			case 0:
				if (in_0.empty()) {
					continue;
				}
				tmp_pkt_beat = in_0.read();
				break;
			case 1:
				if (in_1.empty()) {
					continue;
				}
				tmp_pkt_beat = in_1.read();
				break;
			case 2:
				if (in_2.empty()) {
					continue;
				}
				tmp_pkt_beat = in_2.read();
				break;
			case 3:
				if (in_3.empty()) {
					continue;
				}
				tmp_pkt_beat = in_3.read();
				break;
			}
			if (tmp_pkt_beat.last) {
				state = WAIT_PKT;				// packet done
				in_port++;
			}

			if (state != DUPLICATE_DISCARD) {
				switch (out_port) {
				case 0:
					out_0.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 1:
					out_1.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 2:
					out_2.write(tmp_pkt_beat);		// write next beat of packet
					break;
				case 3:
					out_3.write(tmp_pkt_beat);		// write next beat of packet
					break;
				}
			}
//			stats_l[out_port][3]++; 		//tx beat
//			stats_l[in_port][2]++; 		//rx beat
//			stats_l[4][0]++;				//rx pkt total
//			stats_l[4][2]++;				//rx beat total
//			stats_l[4][1]++;				//tx pkt total
//			stats_l[4][3]++;				//tx beat total
    		break;
		}
    } while (!tmp_pkt_beat.last);
/*	stats_l_to_stats_loop1: for (int i= 0; i <6; i++) {
#pragma HLS UNROLL
		stats_l_to_stats_loop2: for (int j= 0; j <4; j++) {
			stats[i][j] = stats_l[i][j];
		}
	}
*/
}
