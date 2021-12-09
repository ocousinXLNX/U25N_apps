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

#include <iostream>
#include "lineArb.hpp"

ap_uint<512> byteReverse512(ap_uint<512> inputData) {
	return (ap_uint<512>) (
			inputData.range(7,0),
			inputData.range(15,8),
			inputData.range(23,16),
			inputData.range(31,24),
			inputData.range(39,32),
			inputData.range(47,40),
			inputData.range(55,48),
			inputData.range(63,56),
			inputData.range(71,64),
			inputData.range(79,72),
			inputData.range(87,80),
			inputData.range(95,88),
			inputData.range(103,96),
			inputData.range(111,104),
			inputData.range(119,112),
			inputData.range(127,120),
			inputData.range(135,128),
			inputData.range(143,136),
			inputData.range(151,144),
			inputData.range(159,152),
			inputData.range(167,160),
			inputData.range(175,168),
			inputData.range(183,176),
			inputData.range(191,184),
			inputData.range(199,192),
			inputData.range(207,200),
			inputData.range(215,208),
			inputData.range(223,216),
			inputData.range(231,224),
			inputData.range(239,232),
			inputData.range(247,240),
			inputData.range(255,248),
			inputData.range(263,256),
			inputData.range(271,264),
			inputData.range(279,272),
			inputData.range(287,280),
			inputData.range(295,288),
			inputData.range(303,296),
			inputData.range(311,304),
			inputData.range(319,312),
			inputData.range(327,320),
			inputData.range(335,328),
			inputData.range(343,336),
			inputData.range(351,344),
			inputData.range(359,352),
			inputData.range(367,360),
			inputData.range(375,368),
			inputData.range(383,376),
			inputData.range(391,384),
			inputData.range(399,392),
			inputData.range(407,400),
			inputData.range(415,408),
			inputData.range(423,416),
			inputData.range(431,424),
			inputData.range(439,432),
			inputData.range(447,440),
			inputData.range(455,448),
			inputData.range(463,456),
			inputData.range(471,464),
			inputData.range(479,472),
			inputData.range(487,480),
			inputData.range(495,488),
			inputData.range(503,496),
			inputData.range(511,504));
}


typedef struct regPortFilterContainer {
	ap_uint<32> filterIP0[32];
	ap_uint<32> filterPort0[32];
	ap_uint<32> filterSplitId0[32];
	ap_uint<32> filterIP1[32];
	ap_uint<32> filterPort1[32];
	ap_uint<32> filterSplitId1[32];

	inline regPortFilterContainer() {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=filterIP0
#pragma HLS ARRAY_PARTITION variable=filterPort0
#pragma HLS ARRAY_PARTITION variable=SplitId0
#pragma HLS ARRAY_PARTITION variable=filterIP1
#pragma HLS ARRAY_PARTITION variable=filterPort1
#pragma HLS ARRAY_PARTITION variable=SplitId0
	}
} regPortFilterContainer_t;

void printPktDetails(const char * header, pkt_size *hw_beat, int read_out, int ip[4][4]) {
	std::cout << header;
	if (read_out >=0)
		std::cout << read_out;
	std::cout << " Seq " << std::dec << hw_beat->data.range(367,336); //(hw_beat->data.range(343,336),hw_beat->data.range(351,344),hw_beat->data.range(359,352),hw_beat->data.range(367,360));
	std::cout << " Dst " << std::dec << hw_beat->data.range(247,240) << "." << hw_beat->data.range(255,248) << "." <<hw_beat->data.range(263,256) << "." << hw_beat->data.range(271,264);
	std::cout << " Src " << std::dec << hw_beat->data.range(215,208) << "." << hw_beat->data.range(223,216) << "." <<hw_beat->data.range(231,224) << "." << hw_beat->data.range(239,232);
	std::cout << " Dst Port " << std::dec << (hw_beat->data.range(295,288),hw_beat->data.range(303,296));
	std::cout << " Src Port " << std::dec << (hw_beat->data.range(279,272),hw_beat->data.range(287,280));
	std::cout << " IP csum " << std::hex << (hw_beat->data.range(199,192),hw_beat->data.range(207,200));
	std::cout << " UDP csum " << std::hex << (hw_beat->data.range(327,320),hw_beat->data.range(335,328));
	std::cout << " " << ip[read_out][0] << " " <<  ip[read_out][1] << " " << ip[read_out][2] << " " << ip[read_out][3] << "\n";
	std::cout << "                          " << std::hex << hw_beat->data << "\n";

}
int main() {

	unsigned int i;
	mystream in_0("in_0"), in_1("in_1"), in_2("in_2"), in_3("in_3");
	mystream out_0("out_0"), out_1("out_1"), out_2("out_2"), out_3("out_3"), swTest("swTest");

	std::cout << "HLS AXI-Stream Line Arbitration \n";
	int beats_per_pkt = 0;
	int beats = 0;
	pkt_size hw_beat;

	ap_uint<32> grpIPsA[32];
	ap_uint<16> grpPortsA[32];
	ap_uint<32> grpIPsB[32];
	ap_uint<16> grpPortsB[32];
	ap_uint<32> grpSrcIPsA[32];
	ap_uint<16> grpSrcPortsA[32];
	ap_uint<32> grpSrcIPsB[32];
	ap_uint<16> grpSrcPortsB[32];
	ap_int<20> grpCsumAdj[32];

	grpIPsA[0] = 0x4bd4d1ce ;
	grpPortsA[0] = 0x3bd6;
	grpIPsA[1] = 0x4bd4d1cd ;
	grpPortsA[1] = 0x3bd6;
	grpIPsA[2] = 0x0101010a ;
	grpPortsA[2] = 25010;
	grpIPsA[3] = 0x0101010b ;
	grpPortsA[3] = 0x0a00;

	grpIPsB[0] = 0x4cd4d1ce ;
	grpPortsB[0] = 0x3bd6;
	grpIPsB[1] = 0x4cd4d1cd ;
	grpPortsB[1] = 0x12ff;
	grpIPsB[2] = 0x02010105 ;
	grpPortsB[2] = 25010;
	grpIPsB[3] = 0x0201010d ;
	grpPortsB[3] = 0x0a01;

	ap_uint<512> pkt[16];
	ap_uint<2> pkt_port[16];
	ap_uint<2> pkt_beats[16];



//#define ARP
#ifdef ARP
	/* arp
    ffff ffff ffff 000a 3508 a060 0806 0001
    0800 0604 0001 000a 3508 a060 0a01 0101
    0000 0000 0000 0a01 0106 0000 0000 0000
    0000 0000 0000 0000 0000 0000
    */
	pkt[0] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000101010100000000000000000000000000000000000000000001",16));
	pkt[1] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000101010200000000000000000000000000000000000000000001",16));
	pkt[2] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000101010300000000000000000000000000000000000000000001",16));
	pkt[3] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000101010400000000000000000000000000000000000000000001",16));
	pkt[4] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000201010100000000000000000000000000000000000000000001",16));
	pkt[5] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000201010200000000000000000000000000000000000000000001",16));
	pkt[6] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000201010300000000000000000000000000000000000000000001",16));
	pkt[7] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000201010400000000000000000000000000000000000000000001",16));
	pkt[8] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000301010100000000000000000000000000000000000000000001",16));
	pkt[9] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000301010200000000000000000000000000000000000000000001",16));
	pkt[10] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000301010300000000000000000000000000000000000000000001",16));
	pkt[11] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000301010400000000000000000000000000000000000000000001",16));
	pkt[12] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000401010100000000000000000000000000000000000000000001",16));
	pkt[13] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000401010200000000000000000000000000000000000000000001",16));
	pkt[14] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000401010300000000000000000000000000000000000000000001",16));
	pkt[15] = byteReverse512(ap_uint<512>("ffffffffffff000a3508a06008060001080006040001000a3508a0600a0101010000000000000401010400000000000000000000000000000000000000000001",16));
	beats_per_pkt = 1;
	beats = 16;
#else

	//real cme packet
	/*
	01 00 5e 00 20 09 00 05 9a 3c 7a 00 08 00 45 00
	00 84 00 01 00 00 40 11 d8 41 cd d1 d4 4b e0 00
	20 09 3b d6 3b d6 00 70 c3 e7 02 00 00 00 00 d1
	c7 b6 21 18 89 16 5a 00 08 00 20 00 cd ab 01 00
	58 00 00 00 00 d1 c7 b6 21 18 89 16 80 00 00 20
	00 01 00 1e dc 0c 17 00 00 00 22 01 00 00 78 56
	34 12 02 00 00 00 08 00 00 00 01 01 30 00 00 00
	00 00 16 00 00 00 00 00 00 01 00 00 00 00 00 00
	00 00 ff ff ff ff ff ff ff ff ff ff ff 7f ff 00
	00 00
	*/

	beats_per_pkt = 3;
#endif
	std::cout << "Ethernet packets are initialized with the following values:\n";
	std::cout << "                          " << "                                      | SEQ  |csum|Ln||DP||SP||DST IP||SRC IP|csumPr      |ID|      VL                            " << "\n";

	int ip[4][4], stats[6][4];
	memset(&ip,0,sizeof(ip));
	memset(&stats,0,sizeof(stats));

	for (int pkts = 6; pkts < 10; pkts++) {
		// Put data into streams
//	  std::cout << "                          " << "                            VL      |ID|      Prcsum|SRC IP||DST IP||SP||DP||Ln|csum| SEQ  |                                    " << "\n";
//		hw_beat.data = byteReverse512(ap_uint<512>("01005e00200900059a3c7a00080045000084000100004011d84105550304010101fe000a0a010070c3e70200000000d1c7b6211889165a0008002000cdab0122",16));
		hw_beat.data = byteReverse512(ap_uint<512>("000a3508a061000f53688f6108004500003002b5400040113200020101020101010ac7bf6595001c3a4a0000000062303030302042467374000060edb8e50000",16));
		hw_beat.last = (1 == beats_per_pkt) ? 1 : 0;							// Set last after number beats per pkt

		hw_beat.data.range(343,336) = 10 + pkts;  // Change Seq
		ap_int<20> csum_adjustA = grpIPsA[2].range(15,0) + grpIPsA[2].range(31,16) + grpPortsA[2];
		ap_int<20> csum_adjustB = grpIPsB[2].range(15,0) + grpIPsB[2].range(31,16) + grpPortsB[2];
		ap_int<20> csum_adjust = csum_adjustA - csum_adjustB;
		std::cout << "csumA " << std::dec << csum_adjustA  << " " <<  std::dec << csum_adjustA << " csumB " << std::hex << csum_adjustB  << " " <<  std::dec << csum_adjustB << " diff " << " " <<  std::hex << (csum_adjustB -csum_adjustA)  << " " <<  std::dec << (csum_adjustB -csum_adjustA)  << " " <<  std::hex << (csum_adjustA -csum_adjustB)  << " " << std::dec << (csum_adjustA -csum_adjustB) << "\n";

		hw_beat.data.range(271,264) = 10; // Change Dest IP x.x.x.10
		hw_beat.data.range(247,240) = 1; // Change Dest IP 1.x.x.x
		(hw_beat.data.range(295,288),hw_beat.data.range(303,296))= (ap_int<16>) 25010; // Change Dest Port
		printPktDetails("Post 10 ", &hw_beat, -1, ip);
		in_0.write(hw_beat);
		hw_beat.data.range(271,264) = 5; // Change Dest IP x.x.x.5
		hw_beat.data.range(247,240) = 2; // Change Dest IP 2.x.x.x
		(hw_beat.data.range(295,288),hw_beat.data.range(303,296))= (ap_int<16>) 26005; // Change Dest Port
		printPktDetails("Post 11 ", &hw_beat, -1, ip);
		in_1.write(hw_beat);
		hw_beat.data.range(343,336) = 50 + pkts;  // Change Seq
		hw_beat.data.range(271,264) = 12; // Change Dest IP x.x.x.12
		hw_beat.data.range(247,240) = 1; // Change Dest IP 1.x.x.x
		(hw_beat.data.range(295,288),hw_beat.data.range(303,296))= (ap_int<16>) 25012; // Change Dest Port
		printPktDetails("Post 12 ", &hw_beat, -1, ip);
		in_2.write(hw_beat);
		hw_beat.data.range(271,264) = 6; // Change Dest IP x.x.x.13
		hw_beat.data.range(247,240) = 2; // Change Dest IP 2.x.x.x
		(hw_beat.data.range(295,288),hw_beat.data.range(303,296))= (ap_int<16>) 26006; // Change Dest Port
		printPktDetails("Post 13 ", &hw_beat, -1, ip);
		in_3.write(hw_beat);
		for (int i = 1; i < beats_per_pkt; i++){
			hw_beat.data = ap_uint<512>("123456789000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABCD",16);
			hw_beat.last = ((i+1) == beats_per_pkt) ? 1 : 0;
			in_0.write(hw_beat);
			in_1.write(hw_beat);
			in_2.write(hw_beat);
			in_3.write(hw_beat);
		}


		int beat_of_pkt = 1;
		while (!(in_0.empty() && in_1.empty() && in_2.empty() && in_3.empty())) {
			lineArb(in_0, in_1, in_2, in_3, out_0, out_1, out_2, out_3, grpIPsA, grpPortsA, grpIPsB, grpPortsB, grpSrcIPsA, grpSrcPortsA, grpSrcIPsB, grpSrcPortsB, grpCsumAdj, ip, stats); //to fix to support src and csum adj

			int read_out;
			do {
				read_out = -1;
				if (!out_0.empty()) {
					out_0.read(hw_beat);
					read_out = 0;
				} else if (!out_1.empty()) {
					out_1.read(hw_beat);
					read_out = 1;
				} else if (!out_2.empty()) {
					out_2.read(hw_beat);
					read_out = 2;
				} else if (!out_3.empty()) {
					out_3.read(hw_beat);
					read_out = 3;
				}
				if (read_out !=-1) {
					if (beat_of_pkt == 1) { // only print first beat
						printPktDetails("Read ", &hw_beat, read_out, ip);
					}
					if (hw_beat.last == true) {
						beat_of_pkt = 1;
					} else {
						beat_of_pkt++;
					}
				}
			} while (read_out != -1);
		}
	}
	return 0;
}
