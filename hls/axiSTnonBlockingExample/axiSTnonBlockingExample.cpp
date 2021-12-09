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
#include "axiSTnonBlockingExample.hpp"

pkt_size beatA, beatB;



void axiSTnonBlockingExample(mystream &line_A, mystream &line_B, mystream &outputArb1, mystream &outputArb2,  LineArbRegisters configReg, int &c) {
#pragma HLS INTERFACE axis port=line_A
#pragma HLS INTERFACE axis port=line_B
#pragma HLS INTERFACE axis port=outputArb1
#pragma HLS INTERFACE axis port=outputArb2

//#pragma HLS interface mode=ap_ctrl_none port=return


#pragma HLS INTERFACE mode=s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=configReg bundle=CTRL
#pragma HLS INTERFACE mode=s_axilite port=c bundle=CTRL

static int counter = 1;

static int refSeqNb = 0;



// clang-format off
#pragma HLS reset variable = counter
// clang-format on


do {
	//non blocking read A
	if (line_A.read_nb(beatA)) {
		outputArb1.write(beatA);
		c = counter++;
	}
	else return;

	//non blocking read
	if (line_B.read_nb(beatB)) {
		outputArb2.write(beatA);
	}
	else return;

	} while (!beatA.last && !beatB.last); //do while TLAST is low
}













