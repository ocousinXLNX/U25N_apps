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
#include "axiSTnonBlockingExample.hpp"

int main() {

	unsigned int i,j;
	mystream line_A("line_A"), line_B("line_B"), outputArb1("outputArb1"), outputArb2("outputArb2"), swTest("swTest");

	std::cout << "HLS AXI-Stream Line Arbitration \n";

	pkt_size hw_beat;
	pkt_size sw_beat[nbOfpackets * beatsPerPacket];
	pkt_size hw1, hw2;


	ap_uint<512> cme_packet[nbOfpackets * beatsPerPacket];
	ap_uint<512> ipAddSrc;
	ap_uint<32> ipAddDest;

	ap_uint<512> reg;


    int c;

    LineArbRegisters configReg;


    configReg.ip_srcAddrA = 0xcdd1d44b;  // Source IP address A&B feed
	 configReg.ip_srcAddrB = 0xcdd1dd4b;

    configReg.ip_destAddrA = 0xe0002009; // Destination IP address A&B feed
    configReg.ip_destAddrB = 0xe0001f09;

    configReg.udp_srcPortA = 0x3db6;       // udp source port
    configReg.udp_srcPortB = 0x37ee;

    configReg.udp_destPortA = 0x3db6;       // udp destination port
    configReg.udp_destPortB = 0x37ee;

   //A
   cme_packet[0] = ap_uint<512>("01005e002009005056afd453080045000084000100004011d841cdd1d44be00020093bd63bd60070d372000000000026e4ad5f0167165a0008002000cdab0100", 16); //radix 16 hex
   cme_packet[1] = ap_uint<512>("58000000002ae4ad5f01671680000020000100e87648170000001202000078563412000000000200000000013000000000001600000000000001000000000000", 16);
   cme_packet[2] = ap_uint<512>("0000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffff", 16);
   //cme_packet[2] = ap_uint<512>("0000ffffffffffffffffffffff7fff000000", 16);

   //B
   cme_packet[3] = ap_uint<512>("01005e001f09005056afd453080045000084000100004011d041cdd1dd4be0001f0937ee37ee0070d3420000000000261f0937ee37ee0070d342000000000026", 16);
   cme_packet[4] = ap_uint<512>("e4ad5f0167165a0008002000cdab010058000000002ae4ad5f01671680000020000100e876481700000012020000785634120000000002000000000130000000", 16);
   cme_packet[5] = ap_uint<512>("000016000000000000010000000000000000ffffffffffffffffffffff7fff000000000016000000000000010000000000000000ffffffffffffffffffffff7f", 16);
   //cme_packet[5] = ap_uint<512>("000016000000000000010000000000000000ffffffffffffffffffffff7fff000000", 16);
   //A
   cme_packet[6] = ap_uint<512>("01005e002009005056afd453080045000084000100004011d841cdd1d44be00020093bd63bd600707cbc0100000000fcf4ad5f0167165a0008002000cdab0100", 16);
   cme_packet[7] = ap_uint<512>("5800000000fff4ad5f016716800000200001007cacbf170000000802000078563412010000000800000000013100000000001600000000000001000000000000", 16);
   cme_packet[8] = ap_uint<512>("0000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffff", 16);
   //cme_packet[8] = ap_uint<512>("0000ffffffffffffffffffffff7fff000000", 16);

   //B
   cme_packet[9] = ap_uint<512>("01005e001f09005056afd453080045000084000100004011d041cdd1dd4be0001f0937ee37ee00707c8c0100000000fcf4ad5f0167165a0008002000cdab0100", 16);
   cme_packet[10] = ap_uint<512>("5800000000fff4ad5f016716800000200001007cacbf170000000802000078563412010000000800000000013100000000001600000000000001000000000000", 16);
   cme_packet[11] = ap_uint<512>("0000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffff", 16);
   //cme_packet[11] = ap_uint<512>("0000ffffffffffffffffffffff7fff000000", 16);

   //A
   cme_packet[12] = ap_uint<512>("01005e001f09005056afd453080045000084000100004011d041cdd1dd4be0001f0937ee37ee0070df0202000000004803ae5f0167165a0008002000cdab0100", 16);
   cme_packet[13] = ap_uint<512>("58000000004c03ae5f016716800000200001001edc0c170000005c03000078563412020000000400000001013000000000001600000000000001000000000000", 16);
   cme_packet[14] = ap_uint<512>("0000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffff", 16);
   //cme_packet[14] = ap_uint<512>("0000ffffffffffffffffffffff7fff000000", 16);

   //B
   cme_packet[15] = ap_uint<512>("01005e002009005056afd453080045000084000100004011d841cdd1d44be00020093bd63bd60070df3202000000004803ae5f0167165a0008002000cdab0100", 16);
   cme_packet[16] = ap_uint<512>("58000000004c03ae5f016716800000200001001edc0c170000005c03000078563412020000000400000001013000000000001600000000000001000000000000", 16);
   cme_packet[17] = ap_uint<512>("0000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffffffffff7fff0000000000ffffffffffffffff", 16);
   //cme_packet[17] = ap_uint<512>("0000ffffffffffffffffffffff7fff000000", 16);


	std::cout << "Ethernet packets are initialized with the following values:\n";
	std::cout << "Packet 1: " << std::hex << cme_packet[0] << "\n";
	std::cout << "Packet 2: " << cme_packet[1] << "\n";
	std::cout << "Packet 3: " << cme_packet[2] << "\n";

	std::cout << " axiSTnonBlockingExample IP initialised with he following values:" << "\n";
	std::cout << "ip_srcAddrA: " << std::hex << configReg.ip_srcAddrA << "\n";
	std::cout << "ip_srcAddrB: " << std::hex << configReg.ip_srcAddrB << "\n";
	std::cout << "ip_destAddrA: " << std::hex << configReg.ip_destAddrA << "\n";
	std::cout << "ip_destAddrB: " << std::hex << configReg.ip_destAddrB << "\n";
	std::cout << "udp_srcPortA: " << std::hex << configReg.udp_srcPortA << "\n";
	std::cout << "udp_srcPortB: " << std::hex << configReg.udp_srcPortB << "\n";
	std::cout << "udp_destPortA: " << std::hex << configReg.udp_destPortA << "\n";
	std::cout << "udp_destPortB: " << std::hex << configReg.udp_destPortB << "\n";

	for (j = 0; j < nbOfpackets; j++) {   //number of 512 bit reads
		for (i = 0; i < beatsPerPacket; i++) { // number of 512bit per packet
			hw_beat.data = cme_packet[i + j*beatsPerPacket];
			hw_beat.last = (i == (beatsPerPacket - 1)) ? 1 : 0; //finish packet sent TLAST

			line_A.write(hw_beat);
			line_B.write(hw_beat);
			//std::cout << "Packet: " << i+j*beatsPerPacket << " " << std::hex << cme_packet[i+j*beatsPerPacket] << "\n";
		}

		axiSTnonBlockingExample(line_A, line_B, outputArb1, outputArb2, configReg, c);
	}

	for (i = 0; i < nbOfpackets*beatsPerPacket; i++) {
		pkt_size hw1 = outputArb1.read(); //modified
		pkt_size hw2 = outputArb2.read(); //straight copy
		std::cout << "HW o/p: " << hw1.data << "\n";
//		std::cout << "HW o/p: " << hw2.data << "\n";
	}
	std::cout << " register output =  " << c << "\n";
	return 0;
}
