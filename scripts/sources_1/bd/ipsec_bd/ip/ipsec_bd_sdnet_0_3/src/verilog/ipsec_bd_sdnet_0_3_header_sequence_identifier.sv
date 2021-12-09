//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2015 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// US ExportControl: EAR 3E001
//
//
//       Owner:
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/parser/ttcl/header_sequence_identifier.ttcl#42 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_seq_id_state_start START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_hdr_seq_id_state_start 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                  aclk,
    input  logic                  aresetn,
    // inputs
    input  logic                  pipe_shift_en,
    input  T_PARSER_PIPE          pipe_data_shifted,
    input  logic                  pipe_data_shifted_valid,
    // outputs
    output T_PARSER_STATE_INFO    state_info,
    // Intra-level ports
    input  T_PARSER_PIPE          ext_pipe_data_shifted,
    input  logic                  ext_pipe_data_shifted_valid
);

// ///////////////////////////////////////
// signal declarations
// ///////////////////////////////////////
 
// transition signals declaration
logic [7:0] transition_key0; // constant
logic transition_valid;
logic transition_valid_reg;
logic [7:0] transition_field;
logic [7:0] transition_field_reg;
`INIT(E_PARSER_STATE_NAME transition_value, C_PAYLOAD)
`INIT(E_PARSER_STATE_NAME transition_value_reg, C_PAYLOAD)
 
// length signals declaration
logic [15:0] length_key0; // metadata.len
logic length_valid;
logic length_valid_reg;
logic [15:0] length_field;
logic [15:0] length_field_reg;
`INIT(logic [15:0] length_value, '0)
`INIT(logic [15:0] length_value_reg, '0)
 
// verify signals declaration
logic [0:0] verify_key0; // constant
logic verify_valid;
logic verify_valid_reg;
logic [0:0] verify_field;
logic [0:0] verify_field_reg;
`INIT(logic [C_PARSER_VERIFY_WIDTH-1:0] verify_value, '0)
`INIT(logic [C_PARSER_VERIFY_WIDTH-1:0] verify_value_reg, '0)

// Level enable pipeline 
logic [94:0] pipe_data_shifted_valid_i;
logic [94:0] ext_pipe_data_shifted_valid_i;

// ///////////////////////////////////////////////////////////////
// length/transition/verify key field connections
// ///////////////////////////////////////////////////////////////

// Level enable pipeline 
assign pipe_data_shifted_valid_i[0]     = pipe_data_shifted_valid;
assign ext_pipe_data_shifted_valid_i[0] = ext_pipe_data_shifted_valid;
`CLOCKED(aclk,aresetn)
begin
        pipe_data_shifted_valid_i[94:1] <= '0;
        ext_pipe_data_shifted_valid_i[94:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        pipe_data_shifted_valid_i[94:1]     <= pipe_data_shifted_valid_i[93:0];
        ext_pipe_data_shifted_valid_i[94:1] <= ext_pipe_data_shifted_valid_i[93:0];
    end
end
 
// length clock enable generation
assign length_valid = pipe_data_shifted.packet_valid;

// length field connections
assign length_key0[15:0] = pipe_data_shifted.udmeta_data[15:0];
assign length_field = {length_key0};
 
// transition clock enable generation
assign transition_valid = pipe_data_shifted_valid_i[0];

// transition field connections
assign transition_key0 = C_PAYLOAD;
assign transition_field = {transition_key0};
 
// verify clock enable generation
assign verify_valid = pipe_data_shifted_valid_i[0];

// verify field connections
assign verify_key0 = 1'd0;
assign verify_field = {verify_key0};

// ////////////////////////////////////////////////
// Resolve length/transition field value
// ////////////////////////////////////////////////

// transition value
always_comb begin
    if (transition_valid_reg) begin
        transition_value <= E_PARSER_STATE_NAME'(transition_field_reg);
    end else begin
        transition_value <= transition_value_reg;
    end
end

// length value
always_comb begin
    if (length_valid_reg) begin
        case (length_field_reg)  // 1521:1 MUX
            default: begin
                length_value <= 16'h1FFF;
            end
            16'd0: begin // 0
                length_value <= 16'd0;
            end
            16'd1: begin // 1
                length_value <= 16'd8;
            end
            16'd2: begin // 2
                length_value <= 16'd16;
            end
            16'd3: begin // 3
                length_value <= 16'd24;
            end
            16'd4: begin // 4
                length_value <= 16'd32;
            end
            16'd5: begin // 5
                length_value <= 16'd40;
            end
            16'd6: begin // 6
                length_value <= 16'd48;
            end
            16'd7: begin // 7
                length_value <= 16'd56;
            end
            16'd8: begin // 8
                length_value <= 16'd64;
            end
            16'd9: begin // 9
                length_value <= 16'd72;
            end
            16'd10: begin // 10
                length_value <= 16'd80;
            end
            16'd11: begin // 11
                length_value <= 16'd88;
            end
            16'd12: begin // 12
                length_value <= 16'd96;
            end
            16'd13: begin // 13
                length_value <= 16'd104;
            end
            16'd14: begin // 14
                length_value <= 16'd112;
            end
            16'd15: begin // 15
                length_value <= 16'd120;
            end
            16'd16: begin // 16
                length_value <= 16'd128;
            end
            16'd17: begin // 17
                length_value <= 16'd136;
            end
            16'd18: begin // 18
                length_value <= 16'd144;
            end
            16'd19: begin // 19
                length_value <= 16'd152;
            end
            16'd20: begin // 20
                length_value <= 16'd160;
            end
            16'd21: begin // 21
                length_value <= 16'd168;
            end
            16'd22: begin // 22
                length_value <= 16'd176;
            end
            16'd23: begin // 23
                length_value <= 16'd184;
            end
            16'd24: begin // 24
                length_value <= 16'd192;
            end
            16'd25: begin // 25
                length_value <= 16'd200;
            end
            16'd26: begin // 26
                length_value <= 16'd208;
            end
            16'd27: begin // 27
                length_value <= 16'd216;
            end
            16'd28: begin // 28
                length_value <= 16'd224;
            end
            16'd29: begin // 29
                length_value <= 16'd232;
            end
            16'd30: begin // 30
                length_value <= 16'd240;
            end
            16'd31: begin // 31
                length_value <= 16'd248;
            end
            16'd32: begin // 32
                length_value <= 16'd256;
            end
            16'd33: begin // 33
                length_value <= 16'd264;
            end
            16'd34: begin // 34
                length_value <= 16'd272;
            end
            16'd35: begin // 35
                length_value <= 16'd280;
            end
            16'd36: begin // 36
                length_value <= 16'd288;
            end
            16'd37: begin // 37
                length_value <= 16'd296;
            end
            16'd38: begin // 38
                length_value <= 16'd304;
            end
            16'd39: begin // 39
                length_value <= 16'd312;
            end
            16'd40: begin // 40
                length_value <= 16'd320;
            end
            16'd41: begin // 41
                length_value <= 16'd328;
            end
            16'd42: begin // 42
                length_value <= 16'd336;
            end
            16'd43: begin // 43
                length_value <= 16'd344;
            end
            16'd44: begin // 44
                length_value <= 16'd352;
            end
            16'd45: begin // 45
                length_value <= 16'd360;
            end
            16'd46: begin // 46
                length_value <= 16'd368;
            end
            16'd47: begin // 47
                length_value <= 16'd376;
            end
            16'd48: begin // 48
                length_value <= 16'd384;
            end
            16'd49: begin // 49
                length_value <= 16'd392;
            end
            16'd50: begin // 50
                length_value <= 16'd400;
            end
            16'd51: begin // 51
                length_value <= 16'd408;
            end
            16'd52: begin // 52
                length_value <= 16'd416;
            end
            16'd53: begin // 53
                length_value <= 16'd424;
            end
            16'd54: begin // 54
                length_value <= 16'd432;
            end
            16'd55: begin // 55
                length_value <= 16'd440;
            end
            16'd56: begin // 56
                length_value <= 16'd448;
            end
            16'd57: begin // 57
                length_value <= 16'd456;
            end
            16'd58: begin // 58
                length_value <= 16'd464;
            end
            16'd59: begin // 59
                length_value <= 16'd472;
            end
            16'd60: begin // 60
                length_value <= 16'd480;
            end
            16'd61: begin // 61
                length_value <= 16'd488;
            end
            16'd62: begin // 62
                length_value <= 16'd496;
            end
            16'd63: begin // 63
                length_value <= 16'd504;
            end
            16'd64: begin // 64
                length_value <= 16'd512;
            end
            16'd65: begin // 65
                length_value <= 16'd520;
            end
            16'd66: begin // 66
                length_value <= 16'd528;
            end
            16'd67: begin // 67
                length_value <= 16'd536;
            end
            16'd68: begin // 68
                length_value <= 16'd544;
            end
            16'd69: begin // 69
                length_value <= 16'd552;
            end
            16'd70: begin // 70
                length_value <= 16'd560;
            end
            16'd71: begin // 71
                length_value <= 16'd568;
            end
            16'd72: begin // 72
                length_value <= 16'd576;
            end
            16'd73: begin // 73
                length_value <= 16'd584;
            end
            16'd74: begin // 74
                length_value <= 16'd592;
            end
            16'd75: begin // 75
                length_value <= 16'd600;
            end
            16'd76: begin // 76
                length_value <= 16'd608;
            end
            16'd77: begin // 77
                length_value <= 16'd616;
            end
            16'd78: begin // 78
                length_value <= 16'd624;
            end
            16'd79: begin // 79
                length_value <= 16'd632;
            end
            16'd80: begin // 80
                length_value <= 16'd640;
            end
            16'd81: begin // 81
                length_value <= 16'd648;
            end
            16'd82: begin // 82
                length_value <= 16'd656;
            end
            16'd83: begin // 83
                length_value <= 16'd664;
            end
            16'd84: begin // 84
                length_value <= 16'd672;
            end
            16'd85: begin // 85
                length_value <= 16'd680;
            end
            16'd86: begin // 86
                length_value <= 16'd688;
            end
            16'd87: begin // 87
                length_value <= 16'd696;
            end
            16'd88: begin // 88
                length_value <= 16'd704;
            end
            16'd89: begin // 89
                length_value <= 16'd712;
            end
            16'd90: begin // 90
                length_value <= 16'd720;
            end
            16'd91: begin // 91
                length_value <= 16'd728;
            end
            16'd92: begin // 92
                length_value <= 16'd736;
            end
            16'd93: begin // 93
                length_value <= 16'd744;
            end
            16'd94: begin // 94
                length_value <= 16'd752;
            end
            16'd95: begin // 95
                length_value <= 16'd760;
            end
            16'd96: begin // 96
                length_value <= 16'd768;
            end
            16'd97: begin // 97
                length_value <= 16'd776;
            end
            16'd98: begin // 98
                length_value <= 16'd784;
            end
            16'd99: begin // 99
                length_value <= 16'd792;
            end
            16'd100: begin // 100
                length_value <= 16'd800;
            end
            16'd101: begin // 101
                length_value <= 16'd808;
            end
            16'd102: begin // 102
                length_value <= 16'd816;
            end
            16'd103: begin // 103
                length_value <= 16'd824;
            end
            16'd104: begin // 104
                length_value <= 16'd832;
            end
            16'd105: begin // 105
                length_value <= 16'd840;
            end
            16'd106: begin // 106
                length_value <= 16'd848;
            end
            16'd107: begin // 107
                length_value <= 16'd856;
            end
            16'd108: begin // 108
                length_value <= 16'd864;
            end
            16'd109: begin // 109
                length_value <= 16'd872;
            end
            16'd110: begin // 110
                length_value <= 16'd880;
            end
            16'd111: begin // 111
                length_value <= 16'd888;
            end
            16'd112: begin // 112
                length_value <= 16'd896;
            end
            16'd113: begin // 113
                length_value <= 16'd904;
            end
            16'd114: begin // 114
                length_value <= 16'd912;
            end
            16'd115: begin // 115
                length_value <= 16'd920;
            end
            16'd116: begin // 116
                length_value <= 16'd928;
            end
            16'd117: begin // 117
                length_value <= 16'd936;
            end
            16'd118: begin // 118
                length_value <= 16'd944;
            end
            16'd119: begin // 119
                length_value <= 16'd952;
            end
            16'd120: begin // 120
                length_value <= 16'd960;
            end
            16'd121: begin // 121
                length_value <= 16'd968;
            end
            16'd122: begin // 122
                length_value <= 16'd976;
            end
            16'd123: begin // 123
                length_value <= 16'd984;
            end
            16'd124: begin // 124
                length_value <= 16'd992;
            end
            16'd125: begin // 125
                length_value <= 16'd1000;
            end
            16'd126: begin // 126
                length_value <= 16'd1008;
            end
            16'd127: begin // 127
                length_value <= 16'd1016;
            end
            16'd128: begin // 128
                length_value <= 16'd1024;
            end
            16'd129: begin // 129
                length_value <= 16'd1032;
            end
            16'd130: begin // 130
                length_value <= 16'd1040;
            end
            16'd131: begin // 131
                length_value <= 16'd1048;
            end
            16'd132: begin // 132
                length_value <= 16'd1056;
            end
            16'd133: begin // 133
                length_value <= 16'd1064;
            end
            16'd134: begin // 134
                length_value <= 16'd1072;
            end
            16'd135: begin // 135
                length_value <= 16'd1080;
            end
            16'd136: begin // 136
                length_value <= 16'd1088;
            end
            16'd137: begin // 137
                length_value <= 16'd1096;
            end
            16'd138: begin // 138
                length_value <= 16'd1104;
            end
            16'd139: begin // 139
                length_value <= 16'd1112;
            end
            16'd140: begin // 140
                length_value <= 16'd1120;
            end
            16'd141: begin // 141
                length_value <= 16'd1128;
            end
            16'd142: begin // 142
                length_value <= 16'd1136;
            end
            16'd143: begin // 143
                length_value <= 16'd1144;
            end
            16'd144: begin // 144
                length_value <= 16'd1152;
            end
            16'd145: begin // 145
                length_value <= 16'd1160;
            end
            16'd146: begin // 146
                length_value <= 16'd1168;
            end
            16'd147: begin // 147
                length_value <= 16'd1176;
            end
            16'd148: begin // 148
                length_value <= 16'd1184;
            end
            16'd149: begin // 149
                length_value <= 16'd1192;
            end
            16'd150: begin // 150
                length_value <= 16'd1200;
            end
            16'd151: begin // 151
                length_value <= 16'd1208;
            end
            16'd152: begin // 152
                length_value <= 16'd1216;
            end
            16'd153: begin // 153
                length_value <= 16'd1224;
            end
            16'd154: begin // 154
                length_value <= 16'd1232;
            end
            16'd155: begin // 155
                length_value <= 16'd1240;
            end
            16'd156: begin // 156
                length_value <= 16'd1248;
            end
            16'd157: begin // 157
                length_value <= 16'd1256;
            end
            16'd158: begin // 158
                length_value <= 16'd1264;
            end
            16'd159: begin // 159
                length_value <= 16'd1272;
            end
            16'd160: begin // 160
                length_value <= 16'd1280;
            end
            16'd161: begin // 161
                length_value <= 16'd1288;
            end
            16'd162: begin // 162
                length_value <= 16'd1296;
            end
            16'd163: begin // 163
                length_value <= 16'd1304;
            end
            16'd164: begin // 164
                length_value <= 16'd1312;
            end
            16'd165: begin // 165
                length_value <= 16'd1320;
            end
            16'd166: begin // 166
                length_value <= 16'd1328;
            end
            16'd167: begin // 167
                length_value <= 16'd1336;
            end
            16'd168: begin // 168
                length_value <= 16'd1344;
            end
            16'd169: begin // 169
                length_value <= 16'd1352;
            end
            16'd170: begin // 170
                length_value <= 16'd1360;
            end
            16'd171: begin // 171
                length_value <= 16'd1368;
            end
            16'd172: begin // 172
                length_value <= 16'd1376;
            end
            16'd173: begin // 173
                length_value <= 16'd1384;
            end
            16'd174: begin // 174
                length_value <= 16'd1392;
            end
            16'd175: begin // 175
                length_value <= 16'd1400;
            end
            16'd176: begin // 176
                length_value <= 16'd1408;
            end
            16'd177: begin // 177
                length_value <= 16'd1416;
            end
            16'd178: begin // 178
                length_value <= 16'd1424;
            end
            16'd179: begin // 179
                length_value <= 16'd1432;
            end
            16'd180: begin // 180
                length_value <= 16'd1440;
            end
            16'd181: begin // 181
                length_value <= 16'd1448;
            end
            16'd182: begin // 182
                length_value <= 16'd1456;
            end
            16'd183: begin // 183
                length_value <= 16'd1464;
            end
            16'd184: begin // 184
                length_value <= 16'd1472;
            end
            16'd185: begin // 185
                length_value <= 16'd1480;
            end
            16'd186: begin // 186
                length_value <= 16'd1488;
            end
            16'd187: begin // 187
                length_value <= 16'd1496;
            end
            16'd188: begin // 188
                length_value <= 16'd1504;
            end
            16'd189: begin // 189
                length_value <= 16'd1512;
            end
            16'd190: begin // 190
                length_value <= 16'd1520;
            end
            16'd191: begin // 191
                length_value <= 16'd1528;
            end
            16'd192: begin // 192
                length_value <= 16'd1536;
            end
            16'd193: begin // 193
                length_value <= 16'd1544;
            end
            16'd194: begin // 194
                length_value <= 16'd1552;
            end
            16'd195: begin // 195
                length_value <= 16'd1560;
            end
            16'd196: begin // 196
                length_value <= 16'd1568;
            end
            16'd197: begin // 197
                length_value <= 16'd1576;
            end
            16'd198: begin // 198
                length_value <= 16'd1584;
            end
            16'd199: begin // 199
                length_value <= 16'd1592;
            end
            16'd200: begin // 200
                length_value <= 16'd1600;
            end
            16'd201: begin // 201
                length_value <= 16'd1608;
            end
            16'd202: begin // 202
                length_value <= 16'd1616;
            end
            16'd203: begin // 203
                length_value <= 16'd1624;
            end
            16'd204: begin // 204
                length_value <= 16'd1632;
            end
            16'd205: begin // 205
                length_value <= 16'd1640;
            end
            16'd206: begin // 206
                length_value <= 16'd1648;
            end
            16'd207: begin // 207
                length_value <= 16'd1656;
            end
            16'd208: begin // 208
                length_value <= 16'd1664;
            end
            16'd209: begin // 209
                length_value <= 16'd1672;
            end
            16'd210: begin // 210
                length_value <= 16'd1680;
            end
            16'd211: begin // 211
                length_value <= 16'd1688;
            end
            16'd212: begin // 212
                length_value <= 16'd1696;
            end
            16'd213: begin // 213
                length_value <= 16'd1704;
            end
            16'd214: begin // 214
                length_value <= 16'd1712;
            end
            16'd215: begin // 215
                length_value <= 16'd1720;
            end
            16'd216: begin // 216
                length_value <= 16'd1728;
            end
            16'd217: begin // 217
                length_value <= 16'd1736;
            end
            16'd218: begin // 218
                length_value <= 16'd1744;
            end
            16'd219: begin // 219
                length_value <= 16'd1752;
            end
            16'd220: begin // 220
                length_value <= 16'd1760;
            end
            16'd221: begin // 221
                length_value <= 16'd1768;
            end
            16'd222: begin // 222
                length_value <= 16'd1776;
            end
            16'd223: begin // 223
                length_value <= 16'd1784;
            end
            16'd224: begin // 224
                length_value <= 16'd1792;
            end
            16'd225: begin // 225
                length_value <= 16'd1800;
            end
            16'd226: begin // 226
                length_value <= 16'd1808;
            end
            16'd227: begin // 227
                length_value <= 16'd1816;
            end
            16'd228: begin // 228
                length_value <= 16'd1824;
            end
            16'd229: begin // 229
                length_value <= 16'd1832;
            end
            16'd230: begin // 230
                length_value <= 16'd1840;
            end
            16'd231: begin // 231
                length_value <= 16'd1848;
            end
            16'd232: begin // 232
                length_value <= 16'd1856;
            end
            16'd233: begin // 233
                length_value <= 16'd1864;
            end
            16'd234: begin // 234
                length_value <= 16'd1872;
            end
            16'd235: begin // 235
                length_value <= 16'd1880;
            end
            16'd236: begin // 236
                length_value <= 16'd1888;
            end
            16'd237: begin // 237
                length_value <= 16'd1896;
            end
            16'd238: begin // 238
                length_value <= 16'd1904;
            end
            16'd239: begin // 239
                length_value <= 16'd1912;
            end
            16'd240: begin // 240
                length_value <= 16'd1920;
            end
            16'd241: begin // 241
                length_value <= 16'd1928;
            end
            16'd242: begin // 242
                length_value <= 16'd1936;
            end
            16'd243: begin // 243
                length_value <= 16'd1944;
            end
            16'd244: begin // 244
                length_value <= 16'd1952;
            end
            16'd245: begin // 245
                length_value <= 16'd1960;
            end
            16'd246: begin // 246
                length_value <= 16'd1968;
            end
            16'd247: begin // 247
                length_value <= 16'd1976;
            end
            16'd248: begin // 248
                length_value <= 16'd1984;
            end
            16'd249: begin // 249
                length_value <= 16'd1992;
            end
            16'd250: begin // 250
                length_value <= 16'd2000;
            end
            16'd251: begin // 251
                length_value <= 16'd2008;
            end
            16'd252: begin // 252
                length_value <= 16'd2016;
            end
            16'd253: begin // 253
                length_value <= 16'd2024;
            end
            16'd254: begin // 254
                length_value <= 16'd2032;
            end
            16'd255: begin // 255
                length_value <= 16'd2040;
            end
            16'd256: begin // 256
                length_value <= 16'd2048;
            end
            16'd257: begin // 257
                length_value <= 16'd2056;
            end
            16'd258: begin // 258
                length_value <= 16'd2064;
            end
            16'd259: begin // 259
                length_value <= 16'd2072;
            end
            16'd260: begin // 260
                length_value <= 16'd2080;
            end
            16'd261: begin // 261
                length_value <= 16'd2088;
            end
            16'd262: begin // 262
                length_value <= 16'd2096;
            end
            16'd263: begin // 263
                length_value <= 16'd2104;
            end
            16'd264: begin // 264
                length_value <= 16'd2112;
            end
            16'd265: begin // 265
                length_value <= 16'd2120;
            end
            16'd266: begin // 266
                length_value <= 16'd2128;
            end
            16'd267: begin // 267
                length_value <= 16'd2136;
            end
            16'd268: begin // 268
                length_value <= 16'd2144;
            end
            16'd269: begin // 269
                length_value <= 16'd2152;
            end
            16'd270: begin // 270
                length_value <= 16'd2160;
            end
            16'd271: begin // 271
                length_value <= 16'd2168;
            end
            16'd272: begin // 272
                length_value <= 16'd2176;
            end
            16'd273: begin // 273
                length_value <= 16'd2184;
            end
            16'd274: begin // 274
                length_value <= 16'd2192;
            end
            16'd275: begin // 275
                length_value <= 16'd2200;
            end
            16'd276: begin // 276
                length_value <= 16'd2208;
            end
            16'd277: begin // 277
                length_value <= 16'd2216;
            end
            16'd278: begin // 278
                length_value <= 16'd2224;
            end
            16'd279: begin // 279
                length_value <= 16'd2232;
            end
            16'd280: begin // 280
                length_value <= 16'd2240;
            end
            16'd281: begin // 281
                length_value <= 16'd2248;
            end
            16'd282: begin // 282
                length_value <= 16'd2256;
            end
            16'd283: begin // 283
                length_value <= 16'd2264;
            end
            16'd284: begin // 284
                length_value <= 16'd2272;
            end
            16'd285: begin // 285
                length_value <= 16'd2280;
            end
            16'd286: begin // 286
                length_value <= 16'd2288;
            end
            16'd287: begin // 287
                length_value <= 16'd2296;
            end
            16'd288: begin // 288
                length_value <= 16'd2304;
            end
            16'd289: begin // 289
                length_value <= 16'd2312;
            end
            16'd290: begin // 290
                length_value <= 16'd2320;
            end
            16'd291: begin // 291
                length_value <= 16'd2328;
            end
            16'd292: begin // 292
                length_value <= 16'd2336;
            end
            16'd293: begin // 293
                length_value <= 16'd2344;
            end
            16'd294: begin // 294
                length_value <= 16'd2352;
            end
            16'd295: begin // 295
                length_value <= 16'd2360;
            end
            16'd296: begin // 296
                length_value <= 16'd2368;
            end
            16'd297: begin // 297
                length_value <= 16'd2376;
            end
            16'd298: begin // 298
                length_value <= 16'd2384;
            end
            16'd299: begin // 299
                length_value <= 16'd2392;
            end
            16'd300: begin // 300
                length_value <= 16'd2400;
            end
            16'd301: begin // 301
                length_value <= 16'd2408;
            end
            16'd302: begin // 302
                length_value <= 16'd2416;
            end
            16'd303: begin // 303
                length_value <= 16'd2424;
            end
            16'd304: begin // 304
                length_value <= 16'd2432;
            end
            16'd305: begin // 305
                length_value <= 16'd2440;
            end
            16'd306: begin // 306
                length_value <= 16'd2448;
            end
            16'd307: begin // 307
                length_value <= 16'd2456;
            end
            16'd308: begin // 308
                length_value <= 16'd2464;
            end
            16'd309: begin // 309
                length_value <= 16'd2472;
            end
            16'd310: begin // 310
                length_value <= 16'd2480;
            end
            16'd311: begin // 311
                length_value <= 16'd2488;
            end
            16'd312: begin // 312
                length_value <= 16'd2496;
            end
            16'd313: begin // 313
                length_value <= 16'd2504;
            end
            16'd314: begin // 314
                length_value <= 16'd2512;
            end
            16'd315: begin // 315
                length_value <= 16'd2520;
            end
            16'd316: begin // 316
                length_value <= 16'd2528;
            end
            16'd317: begin // 317
                length_value <= 16'd2536;
            end
            16'd318: begin // 318
                length_value <= 16'd2544;
            end
            16'd319: begin // 319
                length_value <= 16'd2552;
            end
            16'd320: begin // 320
                length_value <= 16'd2560;
            end
            16'd321: begin // 321
                length_value <= 16'd2568;
            end
            16'd322: begin // 322
                length_value <= 16'd2576;
            end
            16'd323: begin // 323
                length_value <= 16'd2584;
            end
            16'd324: begin // 324
                length_value <= 16'd2592;
            end
            16'd325: begin // 325
                length_value <= 16'd2600;
            end
            16'd326: begin // 326
                length_value <= 16'd2608;
            end
            16'd327: begin // 327
                length_value <= 16'd2616;
            end
            16'd328: begin // 328
                length_value <= 16'd2624;
            end
            16'd329: begin // 329
                length_value <= 16'd2632;
            end
            16'd330: begin // 330
                length_value <= 16'd2640;
            end
            16'd331: begin // 331
                length_value <= 16'd2648;
            end
            16'd332: begin // 332
                length_value <= 16'd2656;
            end
            16'd333: begin // 333
                length_value <= 16'd2664;
            end
            16'd334: begin // 334
                length_value <= 16'd2672;
            end
            16'd335: begin // 335
                length_value <= 16'd2680;
            end
            16'd336: begin // 336
                length_value <= 16'd2688;
            end
            16'd337: begin // 337
                length_value <= 16'd2696;
            end
            16'd338: begin // 338
                length_value <= 16'd2704;
            end
            16'd339: begin // 339
                length_value <= 16'd2712;
            end
            16'd340: begin // 340
                length_value <= 16'd2720;
            end
            16'd341: begin // 341
                length_value <= 16'd2728;
            end
            16'd342: begin // 342
                length_value <= 16'd2736;
            end
            16'd343: begin // 343
                length_value <= 16'd2744;
            end
            16'd344: begin // 344
                length_value <= 16'd2752;
            end
            16'd345: begin // 345
                length_value <= 16'd2760;
            end
            16'd346: begin // 346
                length_value <= 16'd2768;
            end
            16'd347: begin // 347
                length_value <= 16'd2776;
            end
            16'd348: begin // 348
                length_value <= 16'd2784;
            end
            16'd349: begin // 349
                length_value <= 16'd2792;
            end
            16'd350: begin // 350
                length_value <= 16'd2800;
            end
            16'd351: begin // 351
                length_value <= 16'd2808;
            end
            16'd352: begin // 352
                length_value <= 16'd2816;
            end
            16'd353: begin // 353
                length_value <= 16'd2824;
            end
            16'd354: begin // 354
                length_value <= 16'd2832;
            end
            16'd355: begin // 355
                length_value <= 16'd2840;
            end
            16'd356: begin // 356
                length_value <= 16'd2848;
            end
            16'd357: begin // 357
                length_value <= 16'd2856;
            end
            16'd358: begin // 358
                length_value <= 16'd2864;
            end
            16'd359: begin // 359
                length_value <= 16'd2872;
            end
            16'd360: begin // 360
                length_value <= 16'd2880;
            end
            16'd361: begin // 361
                length_value <= 16'd2888;
            end
            16'd362: begin // 362
                length_value <= 16'd2896;
            end
            16'd363: begin // 363
                length_value <= 16'd2904;
            end
            16'd364: begin // 364
                length_value <= 16'd2912;
            end
            16'd365: begin // 365
                length_value <= 16'd2920;
            end
            16'd366: begin // 366
                length_value <= 16'd2928;
            end
            16'd367: begin // 367
                length_value <= 16'd2936;
            end
            16'd368: begin // 368
                length_value <= 16'd2944;
            end
            16'd369: begin // 369
                length_value <= 16'd2952;
            end
            16'd370: begin // 370
                length_value <= 16'd2960;
            end
            16'd371: begin // 371
                length_value <= 16'd2968;
            end
            16'd372: begin // 372
                length_value <= 16'd2976;
            end
            16'd373: begin // 373
                length_value <= 16'd2984;
            end
            16'd374: begin // 374
                length_value <= 16'd2992;
            end
            16'd375: begin // 375
                length_value <= 16'd3000;
            end
            16'd376: begin // 376
                length_value <= 16'd3008;
            end
            16'd377: begin // 377
                length_value <= 16'd3016;
            end
            16'd378: begin // 378
                length_value <= 16'd3024;
            end
            16'd379: begin // 379
                length_value <= 16'd3032;
            end
            16'd380: begin // 380
                length_value <= 16'd3040;
            end
            16'd381: begin // 381
                length_value <= 16'd3048;
            end
            16'd382: begin // 382
                length_value <= 16'd3056;
            end
            16'd383: begin // 383
                length_value <= 16'd3064;
            end
            16'd384: begin // 384
                length_value <= 16'd3072;
            end
            16'd385: begin // 385
                length_value <= 16'd3080;
            end
            16'd386: begin // 386
                length_value <= 16'd3088;
            end
            16'd387: begin // 387
                length_value <= 16'd3096;
            end
            16'd388: begin // 388
                length_value <= 16'd3104;
            end
            16'd389: begin // 389
                length_value <= 16'd3112;
            end
            16'd390: begin // 390
                length_value <= 16'd3120;
            end
            16'd391: begin // 391
                length_value <= 16'd3128;
            end
            16'd392: begin // 392
                length_value <= 16'd3136;
            end
            16'd393: begin // 393
                length_value <= 16'd3144;
            end
            16'd394: begin // 394
                length_value <= 16'd3152;
            end
            16'd395: begin // 395
                length_value <= 16'd3160;
            end
            16'd396: begin // 396
                length_value <= 16'd3168;
            end
            16'd397: begin // 397
                length_value <= 16'd3176;
            end
            16'd398: begin // 398
                length_value <= 16'd3184;
            end
            16'd399: begin // 399
                length_value <= 16'd3192;
            end
            16'd400: begin // 400
                length_value <= 16'd3200;
            end
            16'd401: begin // 401
                length_value <= 16'd3208;
            end
            16'd402: begin // 402
                length_value <= 16'd3216;
            end
            16'd403: begin // 403
                length_value <= 16'd3224;
            end
            16'd404: begin // 404
                length_value <= 16'd3232;
            end
            16'd405: begin // 405
                length_value <= 16'd3240;
            end
            16'd406: begin // 406
                length_value <= 16'd3248;
            end
            16'd407: begin // 407
                length_value <= 16'd3256;
            end
            16'd408: begin // 408
                length_value <= 16'd3264;
            end
            16'd409: begin // 409
                length_value <= 16'd3272;
            end
            16'd410: begin // 410
                length_value <= 16'd3280;
            end
            16'd411: begin // 411
                length_value <= 16'd3288;
            end
            16'd412: begin // 412
                length_value <= 16'd3296;
            end
            16'd413: begin // 413
                length_value <= 16'd3304;
            end
            16'd414: begin // 414
                length_value <= 16'd3312;
            end
            16'd415: begin // 415
                length_value <= 16'd3320;
            end
            16'd416: begin // 416
                length_value <= 16'd3328;
            end
            16'd417: begin // 417
                length_value <= 16'd3336;
            end
            16'd418: begin // 418
                length_value <= 16'd3344;
            end
            16'd419: begin // 419
                length_value <= 16'd3352;
            end
            16'd420: begin // 420
                length_value <= 16'd3360;
            end
            16'd421: begin // 421
                length_value <= 16'd3368;
            end
            16'd422: begin // 422
                length_value <= 16'd3376;
            end
            16'd423: begin // 423
                length_value <= 16'd3384;
            end
            16'd424: begin // 424
                length_value <= 16'd3392;
            end
            16'd425: begin // 425
                length_value <= 16'd3400;
            end
            16'd426: begin // 426
                length_value <= 16'd3408;
            end
            16'd427: begin // 427
                length_value <= 16'd3416;
            end
            16'd428: begin // 428
                length_value <= 16'd3424;
            end
            16'd429: begin // 429
                length_value <= 16'd3432;
            end
            16'd430: begin // 430
                length_value <= 16'd3440;
            end
            16'd431: begin // 431
                length_value <= 16'd3448;
            end
            16'd432: begin // 432
                length_value <= 16'd3456;
            end
            16'd433: begin // 433
                length_value <= 16'd3464;
            end
            16'd434: begin // 434
                length_value <= 16'd3472;
            end
            16'd435: begin // 435
                length_value <= 16'd3480;
            end
            16'd436: begin // 436
                length_value <= 16'd3488;
            end
            16'd437: begin // 437
                length_value <= 16'd3496;
            end
            16'd438: begin // 438
                length_value <= 16'd3504;
            end
            16'd439: begin // 439
                length_value <= 16'd3512;
            end
            16'd440: begin // 440
                length_value <= 16'd3520;
            end
            16'd441: begin // 441
                length_value <= 16'd3528;
            end
            16'd442: begin // 442
                length_value <= 16'd3536;
            end
            16'd443: begin // 443
                length_value <= 16'd3544;
            end
            16'd444: begin // 444
                length_value <= 16'd3552;
            end
            16'd445: begin // 445
                length_value <= 16'd3560;
            end
            16'd446: begin // 446
                length_value <= 16'd3568;
            end
            16'd447: begin // 447
                length_value <= 16'd3576;
            end
            16'd448: begin // 448
                length_value <= 16'd3584;
            end
            16'd449: begin // 449
                length_value <= 16'd3592;
            end
            16'd450: begin // 450
                length_value <= 16'd3600;
            end
            16'd451: begin // 451
                length_value <= 16'd3608;
            end
            16'd452: begin // 452
                length_value <= 16'd3616;
            end
            16'd453: begin // 453
                length_value <= 16'd3624;
            end
            16'd454: begin // 454
                length_value <= 16'd3632;
            end
            16'd455: begin // 455
                length_value <= 16'd3640;
            end
            16'd456: begin // 456
                length_value <= 16'd3648;
            end
            16'd457: begin // 457
                length_value <= 16'd3656;
            end
            16'd458: begin // 458
                length_value <= 16'd3664;
            end
            16'd459: begin // 459
                length_value <= 16'd3672;
            end
            16'd460: begin // 460
                length_value <= 16'd3680;
            end
            16'd461: begin // 461
                length_value <= 16'd3688;
            end
            16'd462: begin // 462
                length_value <= 16'd3696;
            end
            16'd463: begin // 463
                length_value <= 16'd3704;
            end
            16'd464: begin // 464
                length_value <= 16'd3712;
            end
            16'd465: begin // 465
                length_value <= 16'd3720;
            end
            16'd466: begin // 466
                length_value <= 16'd3728;
            end
            16'd467: begin // 467
                length_value <= 16'd3736;
            end
            16'd468: begin // 468
                length_value <= 16'd3744;
            end
            16'd469: begin // 469
                length_value <= 16'd3752;
            end
            16'd470: begin // 470
                length_value <= 16'd3760;
            end
            16'd471: begin // 471
                length_value <= 16'd3768;
            end
            16'd472: begin // 472
                length_value <= 16'd3776;
            end
            16'd473: begin // 473
                length_value <= 16'd3784;
            end
            16'd474: begin // 474
                length_value <= 16'd3792;
            end
            16'd475: begin // 475
                length_value <= 16'd3800;
            end
            16'd476: begin // 476
                length_value <= 16'd3808;
            end
            16'd477: begin // 477
                length_value <= 16'd3816;
            end
            16'd478: begin // 478
                length_value <= 16'd3824;
            end
            16'd479: begin // 479
                length_value <= 16'd3832;
            end
            16'd480: begin // 480
                length_value <= 16'd3840;
            end
            16'd481: begin // 481
                length_value <= 16'd3848;
            end
            16'd482: begin // 482
                length_value <= 16'd3856;
            end
            16'd483: begin // 483
                length_value <= 16'd3864;
            end
            16'd484: begin // 484
                length_value <= 16'd3872;
            end
            16'd485: begin // 485
                length_value <= 16'd3880;
            end
            16'd486: begin // 486
                length_value <= 16'd3888;
            end
            16'd487: begin // 487
                length_value <= 16'd3896;
            end
            16'd488: begin // 488
                length_value <= 16'd3904;
            end
            16'd489: begin // 489
                length_value <= 16'd3912;
            end
            16'd490: begin // 490
                length_value <= 16'd3920;
            end
            16'd491: begin // 491
                length_value <= 16'd3928;
            end
            16'd492: begin // 492
                length_value <= 16'd3936;
            end
            16'd493: begin // 493
                length_value <= 16'd3944;
            end
            16'd494: begin // 494
                length_value <= 16'd3952;
            end
            16'd495: begin // 495
                length_value <= 16'd3960;
            end
            16'd496: begin // 496
                length_value <= 16'd3968;
            end
            16'd497: begin // 497
                length_value <= 16'd3976;
            end
            16'd498: begin // 498
                length_value <= 16'd3984;
            end
            16'd499: begin // 499
                length_value <= 16'd3992;
            end
            16'd500: begin // 500
                length_value <= 16'd4000;
            end
            16'd501: begin // 501
                length_value <= 16'd4008;
            end
            16'd502: begin // 502
                length_value <= 16'd4016;
            end
            16'd503: begin // 503
                length_value <= 16'd4024;
            end
            16'd504: begin // 504
                length_value <= 16'd4032;
            end
            16'd505: begin // 505
                length_value <= 16'd4040;
            end
            16'd506: begin // 506
                length_value <= 16'd4048;
            end
            16'd507: begin // 507
                length_value <= 16'd4056;
            end
            16'd508: begin // 508
                length_value <= 16'd4064;
            end
            16'd509: begin // 509
                length_value <= 16'd4072;
            end
            16'd510: begin // 510
                length_value <= 16'd4080;
            end
            16'd511: begin // 511
                length_value <= 16'd4088;
            end
            16'd512: begin // 512
                length_value <= 16'd4096;
            end
            16'd513: begin // 513
                length_value <= 16'd4104;
            end
            16'd514: begin // 514
                length_value <= 16'd4112;
            end
            16'd515: begin // 515
                length_value <= 16'd4120;
            end
            16'd516: begin // 516
                length_value <= 16'd4128;
            end
            16'd517: begin // 517
                length_value <= 16'd4136;
            end
            16'd518: begin // 518
                length_value <= 16'd4144;
            end
            16'd519: begin // 519
                length_value <= 16'd4152;
            end
            16'd520: begin // 520
                length_value <= 16'd4160;
            end
            16'd521: begin // 521
                length_value <= 16'd4168;
            end
            16'd522: begin // 522
                length_value <= 16'd4176;
            end
            16'd523: begin // 523
                length_value <= 16'd4184;
            end
            16'd524: begin // 524
                length_value <= 16'd4192;
            end
            16'd525: begin // 525
                length_value <= 16'd4200;
            end
            16'd526: begin // 526
                length_value <= 16'd4208;
            end
            16'd527: begin // 527
                length_value <= 16'd4216;
            end
            16'd528: begin // 528
                length_value <= 16'd4224;
            end
            16'd529: begin // 529
                length_value <= 16'd4232;
            end
            16'd530: begin // 530
                length_value <= 16'd4240;
            end
            16'd531: begin // 531
                length_value <= 16'd4248;
            end
            16'd532: begin // 532
                length_value <= 16'd4256;
            end
            16'd533: begin // 533
                length_value <= 16'd4264;
            end
            16'd534: begin // 534
                length_value <= 16'd4272;
            end
            16'd535: begin // 535
                length_value <= 16'd4280;
            end
            16'd536: begin // 536
                length_value <= 16'd4288;
            end
            16'd537: begin // 537
                length_value <= 16'd4296;
            end
            16'd538: begin // 538
                length_value <= 16'd4304;
            end
            16'd539: begin // 539
                length_value <= 16'd4312;
            end
            16'd540: begin // 540
                length_value <= 16'd4320;
            end
            16'd541: begin // 541
                length_value <= 16'd4328;
            end
            16'd542: begin // 542
                length_value <= 16'd4336;
            end
            16'd543: begin // 543
                length_value <= 16'd4344;
            end
            16'd544: begin // 544
                length_value <= 16'd4352;
            end
            16'd545: begin // 545
                length_value <= 16'd4360;
            end
            16'd546: begin // 546
                length_value <= 16'd4368;
            end
            16'd547: begin // 547
                length_value <= 16'd4376;
            end
            16'd548: begin // 548
                length_value <= 16'd4384;
            end
            16'd549: begin // 549
                length_value <= 16'd4392;
            end
            16'd550: begin // 550
                length_value <= 16'd4400;
            end
            16'd551: begin // 551
                length_value <= 16'd4408;
            end
            16'd552: begin // 552
                length_value <= 16'd4416;
            end
            16'd553: begin // 553
                length_value <= 16'd4424;
            end
            16'd554: begin // 554
                length_value <= 16'd4432;
            end
            16'd555: begin // 555
                length_value <= 16'd4440;
            end
            16'd556: begin // 556
                length_value <= 16'd4448;
            end
            16'd557: begin // 557
                length_value <= 16'd4456;
            end
            16'd558: begin // 558
                length_value <= 16'd4464;
            end
            16'd559: begin // 559
                length_value <= 16'd4472;
            end
            16'd560: begin // 560
                length_value <= 16'd4480;
            end
            16'd561: begin // 561
                length_value <= 16'd4488;
            end
            16'd562: begin // 562
                length_value <= 16'd4496;
            end
            16'd563: begin // 563
                length_value <= 16'd4504;
            end
            16'd564: begin // 564
                length_value <= 16'd4512;
            end
            16'd565: begin // 565
                length_value <= 16'd4520;
            end
            16'd566: begin // 566
                length_value <= 16'd4528;
            end
            16'd567: begin // 567
                length_value <= 16'd4536;
            end
            16'd568: begin // 568
                length_value <= 16'd4544;
            end
            16'd569: begin // 569
                length_value <= 16'd4552;
            end
            16'd570: begin // 570
                length_value <= 16'd4560;
            end
            16'd571: begin // 571
                length_value <= 16'd4568;
            end
            16'd572: begin // 572
                length_value <= 16'd4576;
            end
            16'd573: begin // 573
                length_value <= 16'd4584;
            end
            16'd574: begin // 574
                length_value <= 16'd4592;
            end
            16'd575: begin // 575
                length_value <= 16'd4600;
            end
            16'd576: begin // 576
                length_value <= 16'd4608;
            end
            16'd577: begin // 577
                length_value <= 16'd4616;
            end
            16'd578: begin // 578
                length_value <= 16'd4624;
            end
            16'd579: begin // 579
                length_value <= 16'd4632;
            end
            16'd580: begin // 580
                length_value <= 16'd4640;
            end
            16'd581: begin // 581
                length_value <= 16'd4648;
            end
            16'd582: begin // 582
                length_value <= 16'd4656;
            end
            16'd583: begin // 583
                length_value <= 16'd4664;
            end
            16'd584: begin // 584
                length_value <= 16'd4672;
            end
            16'd585: begin // 585
                length_value <= 16'd4680;
            end
            16'd586: begin // 586
                length_value <= 16'd4688;
            end
            16'd587: begin // 587
                length_value <= 16'd4696;
            end
            16'd588: begin // 588
                length_value <= 16'd4704;
            end
            16'd589: begin // 589
                length_value <= 16'd4712;
            end
            16'd590: begin // 590
                length_value <= 16'd4720;
            end
            16'd591: begin // 591
                length_value <= 16'd4728;
            end
            16'd592: begin // 592
                length_value <= 16'd4736;
            end
            16'd593: begin // 593
                length_value <= 16'd4744;
            end
            16'd594: begin // 594
                length_value <= 16'd4752;
            end
            16'd595: begin // 595
                length_value <= 16'd4760;
            end
            16'd596: begin // 596
                length_value <= 16'd4768;
            end
            16'd597: begin // 597
                length_value <= 16'd4776;
            end
            16'd598: begin // 598
                length_value <= 16'd4784;
            end
            16'd599: begin // 599
                length_value <= 16'd4792;
            end
            16'd600: begin // 600
                length_value <= 16'd4800;
            end
            16'd601: begin // 601
                length_value <= 16'd4808;
            end
            16'd602: begin // 602
                length_value <= 16'd4816;
            end
            16'd603: begin // 603
                length_value <= 16'd4824;
            end
            16'd604: begin // 604
                length_value <= 16'd4832;
            end
            16'd605: begin // 605
                length_value <= 16'd4840;
            end
            16'd606: begin // 606
                length_value <= 16'd4848;
            end
            16'd607: begin // 607
                length_value <= 16'd4856;
            end
            16'd608: begin // 608
                length_value <= 16'd4864;
            end
            16'd609: begin // 609
                length_value <= 16'd4872;
            end
            16'd610: begin // 610
                length_value <= 16'd4880;
            end
            16'd611: begin // 611
                length_value <= 16'd4888;
            end
            16'd612: begin // 612
                length_value <= 16'd4896;
            end
            16'd613: begin // 613
                length_value <= 16'd4904;
            end
            16'd614: begin // 614
                length_value <= 16'd4912;
            end
            16'd615: begin // 615
                length_value <= 16'd4920;
            end
            16'd616: begin // 616
                length_value <= 16'd4928;
            end
            16'd617: begin // 617
                length_value <= 16'd4936;
            end
            16'd618: begin // 618
                length_value <= 16'd4944;
            end
            16'd619: begin // 619
                length_value <= 16'd4952;
            end
            16'd620: begin // 620
                length_value <= 16'd4960;
            end
            16'd621: begin // 621
                length_value <= 16'd4968;
            end
            16'd622: begin // 622
                length_value <= 16'd4976;
            end
            16'd623: begin // 623
                length_value <= 16'd4984;
            end
            16'd624: begin // 624
                length_value <= 16'd4992;
            end
            16'd625: begin // 625
                length_value <= 16'd5000;
            end
            16'd626: begin // 626
                length_value <= 16'd5008;
            end
            16'd627: begin // 627
                length_value <= 16'd5016;
            end
            16'd628: begin // 628
                length_value <= 16'd5024;
            end
            16'd629: begin // 629
                length_value <= 16'd5032;
            end
            16'd630: begin // 630
                length_value <= 16'd5040;
            end
            16'd631: begin // 631
                length_value <= 16'd5048;
            end
            16'd632: begin // 632
                length_value <= 16'd5056;
            end
            16'd633: begin // 633
                length_value <= 16'd5064;
            end
            16'd634: begin // 634
                length_value <= 16'd5072;
            end
            16'd635: begin // 635
                length_value <= 16'd5080;
            end
            16'd636: begin // 636
                length_value <= 16'd5088;
            end
            16'd637: begin // 637
                length_value <= 16'd5096;
            end
            16'd638: begin // 638
                length_value <= 16'd5104;
            end
            16'd639: begin // 639
                length_value <= 16'd5112;
            end
            16'd640: begin // 640
                length_value <= 16'd5120;
            end
            16'd641: begin // 641
                length_value <= 16'd5128;
            end
            16'd642: begin // 642
                length_value <= 16'd5136;
            end
            16'd643: begin // 643
                length_value <= 16'd5144;
            end
            16'd644: begin // 644
                length_value <= 16'd5152;
            end
            16'd645: begin // 645
                length_value <= 16'd5160;
            end
            16'd646: begin // 646
                length_value <= 16'd5168;
            end
            16'd647: begin // 647
                length_value <= 16'd5176;
            end
            16'd648: begin // 648
                length_value <= 16'd5184;
            end
            16'd649: begin // 649
                length_value <= 16'd5192;
            end
            16'd650: begin // 650
                length_value <= 16'd5200;
            end
            16'd651: begin // 651
                length_value <= 16'd5208;
            end
            16'd652: begin // 652
                length_value <= 16'd5216;
            end
            16'd653: begin // 653
                length_value <= 16'd5224;
            end
            16'd654: begin // 654
                length_value <= 16'd5232;
            end
            16'd655: begin // 655
                length_value <= 16'd5240;
            end
            16'd656: begin // 656
                length_value <= 16'd5248;
            end
            16'd657: begin // 657
                length_value <= 16'd5256;
            end
            16'd658: begin // 658
                length_value <= 16'd5264;
            end
            16'd659: begin // 659
                length_value <= 16'd5272;
            end
            16'd660: begin // 660
                length_value <= 16'd5280;
            end
            16'd661: begin // 661
                length_value <= 16'd5288;
            end
            16'd662: begin // 662
                length_value <= 16'd5296;
            end
            16'd663: begin // 663
                length_value <= 16'd5304;
            end
            16'd664: begin // 664
                length_value <= 16'd5312;
            end
            16'd665: begin // 665
                length_value <= 16'd5320;
            end
            16'd666: begin // 666
                length_value <= 16'd5328;
            end
            16'd667: begin // 667
                length_value <= 16'd5336;
            end
            16'd668: begin // 668
                length_value <= 16'd5344;
            end
            16'd669: begin // 669
                length_value <= 16'd5352;
            end
            16'd670: begin // 670
                length_value <= 16'd5360;
            end
            16'd671: begin // 671
                length_value <= 16'd5368;
            end
            16'd672: begin // 672
                length_value <= 16'd5376;
            end
            16'd673: begin // 673
                length_value <= 16'd5384;
            end
            16'd674: begin // 674
                length_value <= 16'd5392;
            end
            16'd675: begin // 675
                length_value <= 16'd5400;
            end
            16'd676: begin // 676
                length_value <= 16'd5408;
            end
            16'd677: begin // 677
                length_value <= 16'd5416;
            end
            16'd678: begin // 678
                length_value <= 16'd5424;
            end
            16'd679: begin // 679
                length_value <= 16'd5432;
            end
            16'd680: begin // 680
                length_value <= 16'd5440;
            end
            16'd681: begin // 681
                length_value <= 16'd5448;
            end
            16'd682: begin // 682
                length_value <= 16'd5456;
            end
            16'd683: begin // 683
                length_value <= 16'd5464;
            end
            16'd684: begin // 684
                length_value <= 16'd5472;
            end
            16'd685: begin // 685
                length_value <= 16'd5480;
            end
            16'd686: begin // 686
                length_value <= 16'd5488;
            end
            16'd687: begin // 687
                length_value <= 16'd5496;
            end
            16'd688: begin // 688
                length_value <= 16'd5504;
            end
            16'd689: begin // 689
                length_value <= 16'd5512;
            end
            16'd690: begin // 690
                length_value <= 16'd5520;
            end
            16'd691: begin // 691
                length_value <= 16'd5528;
            end
            16'd692: begin // 692
                length_value <= 16'd5536;
            end
            16'd693: begin // 693
                length_value <= 16'd5544;
            end
            16'd694: begin // 694
                length_value <= 16'd5552;
            end
            16'd695: begin // 695
                length_value <= 16'd5560;
            end
            16'd696: begin // 696
                length_value <= 16'd5568;
            end
            16'd697: begin // 697
                length_value <= 16'd5576;
            end
            16'd698: begin // 698
                length_value <= 16'd5584;
            end
            16'd699: begin // 699
                length_value <= 16'd5592;
            end
            16'd700: begin // 700
                length_value <= 16'd5600;
            end
            16'd701: begin // 701
                length_value <= 16'd5608;
            end
            16'd702: begin // 702
                length_value <= 16'd5616;
            end
            16'd703: begin // 703
                length_value <= 16'd5624;
            end
            16'd704: begin // 704
                length_value <= 16'd5632;
            end
            16'd705: begin // 705
                length_value <= 16'd5640;
            end
            16'd706: begin // 706
                length_value <= 16'd5648;
            end
            16'd707: begin // 707
                length_value <= 16'd5656;
            end
            16'd708: begin // 708
                length_value <= 16'd5664;
            end
            16'd709: begin // 709
                length_value <= 16'd5672;
            end
            16'd710: begin // 710
                length_value <= 16'd5680;
            end
            16'd711: begin // 711
                length_value <= 16'd5688;
            end
            16'd712: begin // 712
                length_value <= 16'd5696;
            end
            16'd713: begin // 713
                length_value <= 16'd5704;
            end
            16'd714: begin // 714
                length_value <= 16'd5712;
            end
            16'd715: begin // 715
                length_value <= 16'd5720;
            end
            16'd716: begin // 716
                length_value <= 16'd5728;
            end
            16'd717: begin // 717
                length_value <= 16'd5736;
            end
            16'd718: begin // 718
                length_value <= 16'd5744;
            end
            16'd719: begin // 719
                length_value <= 16'd5752;
            end
            16'd720: begin // 720
                length_value <= 16'd5760;
            end
            16'd721: begin // 721
                length_value <= 16'd5768;
            end
            16'd722: begin // 722
                length_value <= 16'd5776;
            end
            16'd723: begin // 723
                length_value <= 16'd5784;
            end
            16'd724: begin // 724
                length_value <= 16'd5792;
            end
            16'd725: begin // 725
                length_value <= 16'd5800;
            end
            16'd726: begin // 726
                length_value <= 16'd5808;
            end
            16'd727: begin // 727
                length_value <= 16'd5816;
            end
            16'd728: begin // 728
                length_value <= 16'd5824;
            end
            16'd729: begin // 729
                length_value <= 16'd5832;
            end
            16'd730: begin // 730
                length_value <= 16'd5840;
            end
            16'd731: begin // 731
                length_value <= 16'd5848;
            end
            16'd732: begin // 732
                length_value <= 16'd5856;
            end
            16'd733: begin // 733
                length_value <= 16'd5864;
            end
            16'd734: begin // 734
                length_value <= 16'd5872;
            end
            16'd735: begin // 735
                length_value <= 16'd5880;
            end
            16'd736: begin // 736
                length_value <= 16'd5888;
            end
            16'd737: begin // 737
                length_value <= 16'd5896;
            end
            16'd738: begin // 738
                length_value <= 16'd5904;
            end
            16'd739: begin // 739
                length_value <= 16'd5912;
            end
            16'd740: begin // 740
                length_value <= 16'd5920;
            end
            16'd741: begin // 741
                length_value <= 16'd5928;
            end
            16'd742: begin // 742
                length_value <= 16'd5936;
            end
            16'd743: begin // 743
                length_value <= 16'd5944;
            end
            16'd744: begin // 744
                length_value <= 16'd5952;
            end
            16'd745: begin // 745
                length_value <= 16'd5960;
            end
            16'd746: begin // 746
                length_value <= 16'd5968;
            end
            16'd747: begin // 747
                length_value <= 16'd5976;
            end
            16'd748: begin // 748
                length_value <= 16'd5984;
            end
            16'd749: begin // 749
                length_value <= 16'd5992;
            end
            16'd750: begin // 750
                length_value <= 16'd6000;
            end
            16'd751: begin // 751
                length_value <= 16'd6008;
            end
            16'd752: begin // 752
                length_value <= 16'd6016;
            end
            16'd753: begin // 753
                length_value <= 16'd6024;
            end
            16'd754: begin // 754
                length_value <= 16'd6032;
            end
            16'd755: begin // 755
                length_value <= 16'd6040;
            end
            16'd756: begin // 756
                length_value <= 16'd6048;
            end
            16'd757: begin // 757
                length_value <= 16'd6056;
            end
            16'd758: begin // 758
                length_value <= 16'd6064;
            end
            16'd759: begin // 759
                length_value <= 16'd6072;
            end
            16'd760: begin // 760
                length_value <= 16'd6080;
            end
            16'd761: begin // 761
                length_value <= 16'd6088;
            end
            16'd762: begin // 762
                length_value <= 16'd6096;
            end
            16'd763: begin // 763
                length_value <= 16'd6104;
            end
            16'd764: begin // 764
                length_value <= 16'd6112;
            end
            16'd765: begin // 765
                length_value <= 16'd6120;
            end
            16'd766: begin // 766
                length_value <= 16'd6128;
            end
            16'd767: begin // 767
                length_value <= 16'd6136;
            end
            16'd768: begin // 768
                length_value <= 16'd6144;
            end
            16'd769: begin // 769
                length_value <= 16'd6152;
            end
            16'd770: begin // 770
                length_value <= 16'd6160;
            end
            16'd771: begin // 771
                length_value <= 16'd6168;
            end
            16'd772: begin // 772
                length_value <= 16'd6176;
            end
            16'd773: begin // 773
                length_value <= 16'd6184;
            end
            16'd774: begin // 774
                length_value <= 16'd6192;
            end
            16'd775: begin // 775
                length_value <= 16'd6200;
            end
            16'd776: begin // 776
                length_value <= 16'd6208;
            end
            16'd777: begin // 777
                length_value <= 16'd6216;
            end
            16'd778: begin // 778
                length_value <= 16'd6224;
            end
            16'd779: begin // 779
                length_value <= 16'd6232;
            end
            16'd780: begin // 780
                length_value <= 16'd6240;
            end
            16'd781: begin // 781
                length_value <= 16'd6248;
            end
            16'd782: begin // 782
                length_value <= 16'd6256;
            end
            16'd783: begin // 783
                length_value <= 16'd6264;
            end
            16'd784: begin // 784
                length_value <= 16'd6272;
            end
            16'd785: begin // 785
                length_value <= 16'd6280;
            end
            16'd786: begin // 786
                length_value <= 16'd6288;
            end
            16'd787: begin // 787
                length_value <= 16'd6296;
            end
            16'd788: begin // 788
                length_value <= 16'd6304;
            end
            16'd789: begin // 789
                length_value <= 16'd6312;
            end
            16'd790: begin // 790
                length_value <= 16'd6320;
            end
            16'd791: begin // 791
                length_value <= 16'd6328;
            end
            16'd792: begin // 792
                length_value <= 16'd6336;
            end
            16'd793: begin // 793
                length_value <= 16'd6344;
            end
            16'd794: begin // 794
                length_value <= 16'd6352;
            end
            16'd795: begin // 795
                length_value <= 16'd6360;
            end
            16'd796: begin // 796
                length_value <= 16'd6368;
            end
            16'd797: begin // 797
                length_value <= 16'd6376;
            end
            16'd798: begin // 798
                length_value <= 16'd6384;
            end
            16'd799: begin // 799
                length_value <= 16'd6392;
            end
            16'd800: begin // 800
                length_value <= 16'd6400;
            end
            16'd801: begin // 801
                length_value <= 16'd6408;
            end
            16'd802: begin // 802
                length_value <= 16'd6416;
            end
            16'd803: begin // 803
                length_value <= 16'd6424;
            end
            16'd804: begin // 804
                length_value <= 16'd6432;
            end
            16'd805: begin // 805
                length_value <= 16'd6440;
            end
            16'd806: begin // 806
                length_value <= 16'd6448;
            end
            16'd807: begin // 807
                length_value <= 16'd6456;
            end
            16'd808: begin // 808
                length_value <= 16'd6464;
            end
            16'd809: begin // 809
                length_value <= 16'd6472;
            end
            16'd810: begin // 810
                length_value <= 16'd6480;
            end
            16'd811: begin // 811
                length_value <= 16'd6488;
            end
            16'd812: begin // 812
                length_value <= 16'd6496;
            end
            16'd813: begin // 813
                length_value <= 16'd6504;
            end
            16'd814: begin // 814
                length_value <= 16'd6512;
            end
            16'd815: begin // 815
                length_value <= 16'd6520;
            end
            16'd816: begin // 816
                length_value <= 16'd6528;
            end
            16'd817: begin // 817
                length_value <= 16'd6536;
            end
            16'd818: begin // 818
                length_value <= 16'd6544;
            end
            16'd819: begin // 819
                length_value <= 16'd6552;
            end
            16'd820: begin // 820
                length_value <= 16'd6560;
            end
            16'd821: begin // 821
                length_value <= 16'd6568;
            end
            16'd822: begin // 822
                length_value <= 16'd6576;
            end
            16'd823: begin // 823
                length_value <= 16'd6584;
            end
            16'd824: begin // 824
                length_value <= 16'd6592;
            end
            16'd825: begin // 825
                length_value <= 16'd6600;
            end
            16'd826: begin // 826
                length_value <= 16'd6608;
            end
            16'd827: begin // 827
                length_value <= 16'd6616;
            end
            16'd828: begin // 828
                length_value <= 16'd6624;
            end
            16'd829: begin // 829
                length_value <= 16'd6632;
            end
            16'd830: begin // 830
                length_value <= 16'd6640;
            end
            16'd831: begin // 831
                length_value <= 16'd6648;
            end
            16'd832: begin // 832
                length_value <= 16'd6656;
            end
            16'd833: begin // 833
                length_value <= 16'd6664;
            end
            16'd834: begin // 834
                length_value <= 16'd6672;
            end
            16'd835: begin // 835
                length_value <= 16'd6680;
            end
            16'd836: begin // 836
                length_value <= 16'd6688;
            end
            16'd837: begin // 837
                length_value <= 16'd6696;
            end
            16'd838: begin // 838
                length_value <= 16'd6704;
            end
            16'd839: begin // 839
                length_value <= 16'd6712;
            end
            16'd840: begin // 840
                length_value <= 16'd6720;
            end
            16'd841: begin // 841
                length_value <= 16'd6728;
            end
            16'd842: begin // 842
                length_value <= 16'd6736;
            end
            16'd843: begin // 843
                length_value <= 16'd6744;
            end
            16'd844: begin // 844
                length_value <= 16'd6752;
            end
            16'd845: begin // 845
                length_value <= 16'd6760;
            end
            16'd846: begin // 846
                length_value <= 16'd6768;
            end
            16'd847: begin // 847
                length_value <= 16'd6776;
            end
            16'd848: begin // 848
                length_value <= 16'd6784;
            end
            16'd849: begin // 849
                length_value <= 16'd6792;
            end
            16'd850: begin // 850
                length_value <= 16'd6800;
            end
            16'd851: begin // 851
                length_value <= 16'd6808;
            end
            16'd852: begin // 852
                length_value <= 16'd6816;
            end
            16'd853: begin // 853
                length_value <= 16'd6824;
            end
            16'd854: begin // 854
                length_value <= 16'd6832;
            end
            16'd855: begin // 855
                length_value <= 16'd6840;
            end
            16'd856: begin // 856
                length_value <= 16'd6848;
            end
            16'd857: begin // 857
                length_value <= 16'd6856;
            end
            16'd858: begin // 858
                length_value <= 16'd6864;
            end
            16'd859: begin // 859
                length_value <= 16'd6872;
            end
            16'd860: begin // 860
                length_value <= 16'd6880;
            end
            16'd861: begin // 861
                length_value <= 16'd6888;
            end
            16'd862: begin // 862
                length_value <= 16'd6896;
            end
            16'd863: begin // 863
                length_value <= 16'd6904;
            end
            16'd864: begin // 864
                length_value <= 16'd6912;
            end
            16'd865: begin // 865
                length_value <= 16'd6920;
            end
            16'd866: begin // 866
                length_value <= 16'd6928;
            end
            16'd867: begin // 867
                length_value <= 16'd6936;
            end
            16'd868: begin // 868
                length_value <= 16'd6944;
            end
            16'd869: begin // 869
                length_value <= 16'd6952;
            end
            16'd870: begin // 870
                length_value <= 16'd6960;
            end
            16'd871: begin // 871
                length_value <= 16'd6968;
            end
            16'd872: begin // 872
                length_value <= 16'd6976;
            end
            16'd873: begin // 873
                length_value <= 16'd6984;
            end
            16'd874: begin // 874
                length_value <= 16'd6992;
            end
            16'd875: begin // 875
                length_value <= 16'd7000;
            end
            16'd876: begin // 876
                length_value <= 16'd7008;
            end
            16'd877: begin // 877
                length_value <= 16'd7016;
            end
            16'd878: begin // 878
                length_value <= 16'd7024;
            end
            16'd879: begin // 879
                length_value <= 16'd7032;
            end
            16'd880: begin // 880
                length_value <= 16'd7040;
            end
            16'd881: begin // 881
                length_value <= 16'd7048;
            end
            16'd882: begin // 882
                length_value <= 16'd7056;
            end
            16'd883: begin // 883
                length_value <= 16'd7064;
            end
            16'd884: begin // 884
                length_value <= 16'd7072;
            end
            16'd885: begin // 885
                length_value <= 16'd7080;
            end
            16'd886: begin // 886
                length_value <= 16'd7088;
            end
            16'd887: begin // 887
                length_value <= 16'd7096;
            end
            16'd888: begin // 888
                length_value <= 16'd7104;
            end
            16'd889: begin // 889
                length_value <= 16'd7112;
            end
            16'd890: begin // 890
                length_value <= 16'd7120;
            end
            16'd891: begin // 891
                length_value <= 16'd7128;
            end
            16'd892: begin // 892
                length_value <= 16'd7136;
            end
            16'd893: begin // 893
                length_value <= 16'd7144;
            end
            16'd894: begin // 894
                length_value <= 16'd7152;
            end
            16'd895: begin // 895
                length_value <= 16'd7160;
            end
            16'd896: begin // 896
                length_value <= 16'd7168;
            end
            16'd897: begin // 897
                length_value <= 16'd7176;
            end
            16'd898: begin // 898
                length_value <= 16'd7184;
            end
            16'd899: begin // 899
                length_value <= 16'd7192;
            end
            16'd900: begin // 900
                length_value <= 16'd7200;
            end
            16'd901: begin // 901
                length_value <= 16'd7208;
            end
            16'd902: begin // 902
                length_value <= 16'd7216;
            end
            16'd903: begin // 903
                length_value <= 16'd7224;
            end
            16'd904: begin // 904
                length_value <= 16'd7232;
            end
            16'd905: begin // 905
                length_value <= 16'd7240;
            end
            16'd906: begin // 906
                length_value <= 16'd7248;
            end
            16'd907: begin // 907
                length_value <= 16'd7256;
            end
            16'd908: begin // 908
                length_value <= 16'd7264;
            end
            16'd909: begin // 909
                length_value <= 16'd7272;
            end
            16'd910: begin // 910
                length_value <= 16'd7280;
            end
            16'd911: begin // 911
                length_value <= 16'd7288;
            end
            16'd912: begin // 912
                length_value <= 16'd7296;
            end
            16'd913: begin // 913
                length_value <= 16'd7304;
            end
            16'd914: begin // 914
                length_value <= 16'd7312;
            end
            16'd915: begin // 915
                length_value <= 16'd7320;
            end
            16'd916: begin // 916
                length_value <= 16'd7328;
            end
            16'd917: begin // 917
                length_value <= 16'd7336;
            end
            16'd918: begin // 918
                length_value <= 16'd7344;
            end
            16'd919: begin // 919
                length_value <= 16'd7352;
            end
            16'd920: begin // 920
                length_value <= 16'd7360;
            end
            16'd921: begin // 921
                length_value <= 16'd7368;
            end
            16'd922: begin // 922
                length_value <= 16'd7376;
            end
            16'd923: begin // 923
                length_value <= 16'd7384;
            end
            16'd924: begin // 924
                length_value <= 16'd7392;
            end
            16'd925: begin // 925
                length_value <= 16'd7400;
            end
            16'd926: begin // 926
                length_value <= 16'd7408;
            end
            16'd927: begin // 927
                length_value <= 16'd7416;
            end
            16'd928: begin // 928
                length_value <= 16'd7424;
            end
            16'd929: begin // 929
                length_value <= 16'd7432;
            end
            16'd930: begin // 930
                length_value <= 16'd7440;
            end
            16'd931: begin // 931
                length_value <= 16'd7448;
            end
            16'd932: begin // 932
                length_value <= 16'd7456;
            end
            16'd933: begin // 933
                length_value <= 16'd7464;
            end
            16'd934: begin // 934
                length_value <= 16'd7472;
            end
            16'd935: begin // 935
                length_value <= 16'd7480;
            end
            16'd936: begin // 936
                length_value <= 16'd7488;
            end
            16'd937: begin // 937
                length_value <= 16'd7496;
            end
            16'd938: begin // 938
                length_value <= 16'd7504;
            end
            16'd939: begin // 939
                length_value <= 16'd7512;
            end
            16'd940: begin // 940
                length_value <= 16'd7520;
            end
            16'd941: begin // 941
                length_value <= 16'd7528;
            end
            16'd942: begin // 942
                length_value <= 16'd7536;
            end
            16'd943: begin // 943
                length_value <= 16'd7544;
            end
            16'd944: begin // 944
                length_value <= 16'd7552;
            end
            16'd945: begin // 945
                length_value <= 16'd7560;
            end
            16'd946: begin // 946
                length_value <= 16'd7568;
            end
            16'd947: begin // 947
                length_value <= 16'd7576;
            end
            16'd948: begin // 948
                length_value <= 16'd7584;
            end
            16'd949: begin // 949
                length_value <= 16'd7592;
            end
            16'd950: begin // 950
                length_value <= 16'd7600;
            end
            16'd951: begin // 951
                length_value <= 16'd7608;
            end
            16'd952: begin // 952
                length_value <= 16'd7616;
            end
            16'd953: begin // 953
                length_value <= 16'd7624;
            end
            16'd954: begin // 954
                length_value <= 16'd7632;
            end
            16'd955: begin // 955
                length_value <= 16'd7640;
            end
            16'd956: begin // 956
                length_value <= 16'd7648;
            end
            16'd957: begin // 957
                length_value <= 16'd7656;
            end
            16'd958: begin // 958
                length_value <= 16'd7664;
            end
            16'd959: begin // 959
                length_value <= 16'd7672;
            end
            16'd960: begin // 960
                length_value <= 16'd7680;
            end
            16'd961: begin // 961
                length_value <= 16'd7688;
            end
            16'd962: begin // 962
                length_value <= 16'd7696;
            end
            16'd963: begin // 963
                length_value <= 16'd7704;
            end
            16'd964: begin // 964
                length_value <= 16'd7712;
            end
            16'd965: begin // 965
                length_value <= 16'd7720;
            end
            16'd966: begin // 966
                length_value <= 16'd7728;
            end
            16'd967: begin // 967
                length_value <= 16'd7736;
            end
            16'd968: begin // 968
                length_value <= 16'd7744;
            end
            16'd969: begin // 969
                length_value <= 16'd7752;
            end
            16'd970: begin // 970
                length_value <= 16'd7760;
            end
            16'd971: begin // 971
                length_value <= 16'd7768;
            end
            16'd972: begin // 972
                length_value <= 16'd7776;
            end
            16'd973: begin // 973
                length_value <= 16'd7784;
            end
            16'd974: begin // 974
                length_value <= 16'd7792;
            end
            16'd975: begin // 975
                length_value <= 16'd7800;
            end
            16'd976: begin // 976
                length_value <= 16'd7808;
            end
            16'd977: begin // 977
                length_value <= 16'd7816;
            end
            16'd978: begin // 978
                length_value <= 16'd7824;
            end
            16'd979: begin // 979
                length_value <= 16'd7832;
            end
            16'd980: begin // 980
                length_value <= 16'd7840;
            end
            16'd981: begin // 981
                length_value <= 16'd7848;
            end
            16'd982: begin // 982
                length_value <= 16'd7856;
            end
            16'd983: begin // 983
                length_value <= 16'd7864;
            end
            16'd984: begin // 984
                length_value <= 16'd7872;
            end
            16'd985: begin // 985
                length_value <= 16'd7880;
            end
            16'd986: begin // 986
                length_value <= 16'd7888;
            end
            16'd987: begin // 987
                length_value <= 16'd7896;
            end
            16'd988: begin // 988
                length_value <= 16'd7904;
            end
            16'd989: begin // 989
                length_value <= 16'd7912;
            end
            16'd990: begin // 990
                length_value <= 16'd7920;
            end
            16'd991: begin // 991
                length_value <= 16'd7928;
            end
            16'd992: begin // 992
                length_value <= 16'd7936;
            end
            16'd993: begin // 993
                length_value <= 16'd7944;
            end
            16'd994: begin // 994
                length_value <= 16'd7952;
            end
            16'd995: begin // 995
                length_value <= 16'd7960;
            end
            16'd996: begin // 996
                length_value <= 16'd7968;
            end
            16'd997: begin // 997
                length_value <= 16'd7976;
            end
            16'd998: begin // 998
                length_value <= 16'd7984;
            end
            16'd999: begin // 999
                length_value <= 16'd7992;
            end
            16'd1000: begin // 1000
                length_value <= 16'd8000;
            end
            16'd1001: begin // 1001
                length_value <= 16'd8008;
            end
            16'd1002: begin // 1002
                length_value <= 16'd8016;
            end
            16'd1003: begin // 1003
                length_value <= 16'd8024;
            end
            16'd1004: begin // 1004
                length_value <= 16'd8032;
            end
            16'd1005: begin // 1005
                length_value <= 16'd8040;
            end
            16'd1006: begin // 1006
                length_value <= 16'd8048;
            end
            16'd1007: begin // 1007
                length_value <= 16'd8056;
            end
            16'd1008: begin // 1008
                length_value <= 16'd8064;
            end
            16'd1009: begin // 1009
                length_value <= 16'd8072;
            end
            16'd1010: begin // 1010
                length_value <= 16'd8080;
            end
            16'd1011: begin // 1011
                length_value <= 16'd8088;
            end
            16'd1012: begin // 1012
                length_value <= 16'd8096;
            end
            16'd1013: begin // 1013
                length_value <= 16'd8104;
            end
            16'd1014: begin // 1014
                length_value <= 16'd8112;
            end
            16'd1015: begin // 1015
                length_value <= 16'd8120;
            end
            16'd1016: begin // 1016
                length_value <= 16'd8128;
            end
            16'd1017: begin // 1017
                length_value <= 16'd8136;
            end
            16'd1018: begin // 1018
                length_value <= 16'd8144;
            end
            16'd1019: begin // 1019
                length_value <= 16'd8152;
            end
            16'd1020: begin // 1020
                length_value <= 16'd8160;
            end
            16'd1021: begin // 1021
                length_value <= 16'd8168;
            end
            16'd1022: begin // 1022
                length_value <= 16'd8176;
            end
            16'd1023: begin // 1023
                length_value <= 16'd8184;
            end
            16'd1024: begin // 1024
                length_value <= 16'd8192;
            end
            16'd1025: begin // 1025
                length_value <= 16'd8200;
            end
            16'd1026: begin // 1026
                length_value <= 16'd8208;
            end
            16'd1027: begin // 1027
                length_value <= 16'd8216;
            end
            16'd1028: begin // 1028
                length_value <= 16'd8224;
            end
            16'd1029: begin // 1029
                length_value <= 16'd8232;
            end
            16'd1030: begin // 1030
                length_value <= 16'd8240;
            end
            16'd1031: begin // 1031
                length_value <= 16'd8248;
            end
            16'd1032: begin // 1032
                length_value <= 16'd8256;
            end
            16'd1033: begin // 1033
                length_value <= 16'd8264;
            end
            16'd1034: begin // 1034
                length_value <= 16'd8272;
            end
            16'd1035: begin // 1035
                length_value <= 16'd8280;
            end
            16'd1036: begin // 1036
                length_value <= 16'd8288;
            end
            16'd1037: begin // 1037
                length_value <= 16'd8296;
            end
            16'd1038: begin // 1038
                length_value <= 16'd8304;
            end
            16'd1039: begin // 1039
                length_value <= 16'd8312;
            end
            16'd1040: begin // 1040
                length_value <= 16'd8320;
            end
            16'd1041: begin // 1041
                length_value <= 16'd8328;
            end
            16'd1042: begin // 1042
                length_value <= 16'd8336;
            end
            16'd1043: begin // 1043
                length_value <= 16'd8344;
            end
            16'd1044: begin // 1044
                length_value <= 16'd8352;
            end
            16'd1045: begin // 1045
                length_value <= 16'd8360;
            end
            16'd1046: begin // 1046
                length_value <= 16'd8368;
            end
            16'd1047: begin // 1047
                length_value <= 16'd8376;
            end
            16'd1048: begin // 1048
                length_value <= 16'd8384;
            end
            16'd1049: begin // 1049
                length_value <= 16'd8392;
            end
            16'd1050: begin // 1050
                length_value <= 16'd8400;
            end
            16'd1051: begin // 1051
                length_value <= 16'd8408;
            end
            16'd1052: begin // 1052
                length_value <= 16'd8416;
            end
            16'd1053: begin // 1053
                length_value <= 16'd8424;
            end
            16'd1054: begin // 1054
                length_value <= 16'd8432;
            end
            16'd1055: begin // 1055
                length_value <= 16'd8440;
            end
            16'd1056: begin // 1056
                length_value <= 16'd8448;
            end
            16'd1057: begin // 1057
                length_value <= 16'd8456;
            end
            16'd1058: begin // 1058
                length_value <= 16'd8464;
            end
            16'd1059: begin // 1059
                length_value <= 16'd8472;
            end
            16'd1060: begin // 1060
                length_value <= 16'd8480;
            end
            16'd1061: begin // 1061
                length_value <= 16'd8488;
            end
            16'd1062: begin // 1062
                length_value <= 16'd8496;
            end
            16'd1063: begin // 1063
                length_value <= 16'd8504;
            end
            16'd1064: begin // 1064
                length_value <= 16'd8512;
            end
            16'd1065: begin // 1065
                length_value <= 16'd8520;
            end
            16'd1066: begin // 1066
                length_value <= 16'd8528;
            end
            16'd1067: begin // 1067
                length_value <= 16'd8536;
            end
            16'd1068: begin // 1068
                length_value <= 16'd8544;
            end
            16'd1069: begin // 1069
                length_value <= 16'd8552;
            end
            16'd1070: begin // 1070
                length_value <= 16'd8560;
            end
            16'd1071: begin // 1071
                length_value <= 16'd8568;
            end
            16'd1072: begin // 1072
                length_value <= 16'd8576;
            end
            16'd1073: begin // 1073
                length_value <= 16'd8584;
            end
            16'd1074: begin // 1074
                length_value <= 16'd8592;
            end
            16'd1075: begin // 1075
                length_value <= 16'd8600;
            end
            16'd1076: begin // 1076
                length_value <= 16'd8608;
            end
            16'd1077: begin // 1077
                length_value <= 16'd8616;
            end
            16'd1078: begin // 1078
                length_value <= 16'd8624;
            end
            16'd1079: begin // 1079
                length_value <= 16'd8632;
            end
            16'd1080: begin // 1080
                length_value <= 16'd8640;
            end
            16'd1081: begin // 1081
                length_value <= 16'd8648;
            end
            16'd1082: begin // 1082
                length_value <= 16'd8656;
            end
            16'd1083: begin // 1083
                length_value <= 16'd8664;
            end
            16'd1084: begin // 1084
                length_value <= 16'd8672;
            end
            16'd1085: begin // 1085
                length_value <= 16'd8680;
            end
            16'd1086: begin // 1086
                length_value <= 16'd8688;
            end
            16'd1087: begin // 1087
                length_value <= 16'd8696;
            end
            16'd1088: begin // 1088
                length_value <= 16'd8704;
            end
            16'd1089: begin // 1089
                length_value <= 16'd8712;
            end
            16'd1090: begin // 1090
                length_value <= 16'd8720;
            end
            16'd1091: begin // 1091
                length_value <= 16'd8728;
            end
            16'd1092: begin // 1092
                length_value <= 16'd8736;
            end
            16'd1093: begin // 1093
                length_value <= 16'd8744;
            end
            16'd1094: begin // 1094
                length_value <= 16'd8752;
            end
            16'd1095: begin // 1095
                length_value <= 16'd8760;
            end
            16'd1096: begin // 1096
                length_value <= 16'd8768;
            end
            16'd1097: begin // 1097
                length_value <= 16'd8776;
            end
            16'd1098: begin // 1098
                length_value <= 16'd8784;
            end
            16'd1099: begin // 1099
                length_value <= 16'd8792;
            end
            16'd1100: begin // 1100
                length_value <= 16'd8800;
            end
            16'd1101: begin // 1101
                length_value <= 16'd8808;
            end
            16'd1102: begin // 1102
                length_value <= 16'd8816;
            end
            16'd1103: begin // 1103
                length_value <= 16'd8824;
            end
            16'd1104: begin // 1104
                length_value <= 16'd8832;
            end
            16'd1105: begin // 1105
                length_value <= 16'd8840;
            end
            16'd1106: begin // 1106
                length_value <= 16'd8848;
            end
            16'd1107: begin // 1107
                length_value <= 16'd8856;
            end
            16'd1108: begin // 1108
                length_value <= 16'd8864;
            end
            16'd1109: begin // 1109
                length_value <= 16'd8872;
            end
            16'd1110: begin // 1110
                length_value <= 16'd8880;
            end
            16'd1111: begin // 1111
                length_value <= 16'd8888;
            end
            16'd1112: begin // 1112
                length_value <= 16'd8896;
            end
            16'd1113: begin // 1113
                length_value <= 16'd8904;
            end
            16'd1114: begin // 1114
                length_value <= 16'd8912;
            end
            16'd1115: begin // 1115
                length_value <= 16'd8920;
            end
            16'd1116: begin // 1116
                length_value <= 16'd8928;
            end
            16'd1117: begin // 1117
                length_value <= 16'd8936;
            end
            16'd1118: begin // 1118
                length_value <= 16'd8944;
            end
            16'd1119: begin // 1119
                length_value <= 16'd8952;
            end
            16'd1120: begin // 1120
                length_value <= 16'd8960;
            end
            16'd1121: begin // 1121
                length_value <= 16'd8968;
            end
            16'd1122: begin // 1122
                length_value <= 16'd8976;
            end
            16'd1123: begin // 1123
                length_value <= 16'd8984;
            end
            16'd1124: begin // 1124
                length_value <= 16'd8992;
            end
            16'd1125: begin // 1125
                length_value <= 16'd9000;
            end
            16'd1126: begin // 1126
                length_value <= 16'd9008;
            end
            16'd1127: begin // 1127
                length_value <= 16'd9016;
            end
            16'd1128: begin // 1128
                length_value <= 16'd9024;
            end
            16'd1129: begin // 1129
                length_value <= 16'd9032;
            end
            16'd1130: begin // 1130
                length_value <= 16'd9040;
            end
            16'd1131: begin // 1131
                length_value <= 16'd9048;
            end
            16'd1132: begin // 1132
                length_value <= 16'd9056;
            end
            16'd1133: begin // 1133
                length_value <= 16'd9064;
            end
            16'd1134: begin // 1134
                length_value <= 16'd9072;
            end
            16'd1135: begin // 1135
                length_value <= 16'd9080;
            end
            16'd1136: begin // 1136
                length_value <= 16'd9088;
            end
            16'd1137: begin // 1137
                length_value <= 16'd9096;
            end
            16'd1138: begin // 1138
                length_value <= 16'd9104;
            end
            16'd1139: begin // 1139
                length_value <= 16'd9112;
            end
            16'd1140: begin // 1140
                length_value <= 16'd9120;
            end
            16'd1141: begin // 1141
                length_value <= 16'd9128;
            end
            16'd1142: begin // 1142
                length_value <= 16'd9136;
            end
            16'd1143: begin // 1143
                length_value <= 16'd9144;
            end
            16'd1144: begin // 1144
                length_value <= 16'd9152;
            end
            16'd1145: begin // 1145
                length_value <= 16'd9160;
            end
            16'd1146: begin // 1146
                length_value <= 16'd9168;
            end
            16'd1147: begin // 1147
                length_value <= 16'd9176;
            end
            16'd1148: begin // 1148
                length_value <= 16'd9184;
            end
            16'd1149: begin // 1149
                length_value <= 16'd9192;
            end
            16'd1150: begin // 1150
                length_value <= 16'd9200;
            end
            16'd1151: begin // 1151
                length_value <= 16'd9208;
            end
            16'd1152: begin // 1152
                length_value <= 16'd9216;
            end
            16'd1153: begin // 1153
                length_value <= 16'd9224;
            end
            16'd1154: begin // 1154
                length_value <= 16'd9232;
            end
            16'd1155: begin // 1155
                length_value <= 16'd9240;
            end
            16'd1156: begin // 1156
                length_value <= 16'd9248;
            end
            16'd1157: begin // 1157
                length_value <= 16'd9256;
            end
            16'd1158: begin // 1158
                length_value <= 16'd9264;
            end
            16'd1159: begin // 1159
                length_value <= 16'd9272;
            end
            16'd1160: begin // 1160
                length_value <= 16'd9280;
            end
            16'd1161: begin // 1161
                length_value <= 16'd9288;
            end
            16'd1162: begin // 1162
                length_value <= 16'd9296;
            end
            16'd1163: begin // 1163
                length_value <= 16'd9304;
            end
            16'd1164: begin // 1164
                length_value <= 16'd9312;
            end
            16'd1165: begin // 1165
                length_value <= 16'd9320;
            end
            16'd1166: begin // 1166
                length_value <= 16'd9328;
            end
            16'd1167: begin // 1167
                length_value <= 16'd9336;
            end
            16'd1168: begin // 1168
                length_value <= 16'd9344;
            end
            16'd1169: begin // 1169
                length_value <= 16'd9352;
            end
            16'd1170: begin // 1170
                length_value <= 16'd9360;
            end
            16'd1171: begin // 1171
                length_value <= 16'd9368;
            end
            16'd1172: begin // 1172
                length_value <= 16'd9376;
            end
            16'd1173: begin // 1173
                length_value <= 16'd9384;
            end
            16'd1174: begin // 1174
                length_value <= 16'd9392;
            end
            16'd1175: begin // 1175
                length_value <= 16'd9400;
            end
            16'd1176: begin // 1176
                length_value <= 16'd9408;
            end
            16'd1177: begin // 1177
                length_value <= 16'd9416;
            end
            16'd1178: begin // 1178
                length_value <= 16'd9424;
            end
            16'd1179: begin // 1179
                length_value <= 16'd9432;
            end
            16'd1180: begin // 1180
                length_value <= 16'd9440;
            end
            16'd1181: begin // 1181
                length_value <= 16'd9448;
            end
            16'd1182: begin // 1182
                length_value <= 16'd9456;
            end
            16'd1183: begin // 1183
                length_value <= 16'd9464;
            end
            16'd1184: begin // 1184
                length_value <= 16'd9472;
            end
            16'd1185: begin // 1185
                length_value <= 16'd9480;
            end
            16'd1186: begin // 1186
                length_value <= 16'd9488;
            end
            16'd1187: begin // 1187
                length_value <= 16'd9496;
            end
            16'd1188: begin // 1188
                length_value <= 16'd9504;
            end
            16'd1189: begin // 1189
                length_value <= 16'd9512;
            end
            16'd1190: begin // 1190
                length_value <= 16'd9520;
            end
            16'd1191: begin // 1191
                length_value <= 16'd9528;
            end
            16'd1192: begin // 1192
                length_value <= 16'd9536;
            end
            16'd1193: begin // 1193
                length_value <= 16'd9544;
            end
            16'd1194: begin // 1194
                length_value <= 16'd9552;
            end
            16'd1195: begin // 1195
                length_value <= 16'd9560;
            end
            16'd1196: begin // 1196
                length_value <= 16'd9568;
            end
            16'd1197: begin // 1197
                length_value <= 16'd9576;
            end
            16'd1198: begin // 1198
                length_value <= 16'd9584;
            end
            16'd1199: begin // 1199
                length_value <= 16'd9592;
            end
            16'd1200: begin // 1200
                length_value <= 16'd9600;
            end
            16'd1201: begin // 1201
                length_value <= 16'd9608;
            end
            16'd1202: begin // 1202
                length_value <= 16'd9616;
            end
            16'd1203: begin // 1203
                length_value <= 16'd9624;
            end
            16'd1204: begin // 1204
                length_value <= 16'd9632;
            end
            16'd1205: begin // 1205
                length_value <= 16'd9640;
            end
            16'd1206: begin // 1206
                length_value <= 16'd9648;
            end
            16'd1207: begin // 1207
                length_value <= 16'd9656;
            end
            16'd1208: begin // 1208
                length_value <= 16'd9664;
            end
            16'd1209: begin // 1209
                length_value <= 16'd9672;
            end
            16'd1210: begin // 1210
                length_value <= 16'd9680;
            end
            16'd1211: begin // 1211
                length_value <= 16'd9688;
            end
            16'd1212: begin // 1212
                length_value <= 16'd9696;
            end
            16'd1213: begin // 1213
                length_value <= 16'd9704;
            end
            16'd1214: begin // 1214
                length_value <= 16'd9712;
            end
            16'd1215: begin // 1215
                length_value <= 16'd9720;
            end
            16'd1216: begin // 1216
                length_value <= 16'd9728;
            end
            16'd1217: begin // 1217
                length_value <= 16'd9736;
            end
            16'd1218: begin // 1218
                length_value <= 16'd9744;
            end
            16'd1219: begin // 1219
                length_value <= 16'd9752;
            end
            16'd1220: begin // 1220
                length_value <= 16'd9760;
            end
            16'd1221: begin // 1221
                length_value <= 16'd9768;
            end
            16'd1222: begin // 1222
                length_value <= 16'd9776;
            end
            16'd1223: begin // 1223
                length_value <= 16'd9784;
            end
            16'd1224: begin // 1224
                length_value <= 16'd9792;
            end
            16'd1225: begin // 1225
                length_value <= 16'd9800;
            end
            16'd1226: begin // 1226
                length_value <= 16'd9808;
            end
            16'd1227: begin // 1227
                length_value <= 16'd9816;
            end
            16'd1228: begin // 1228
                length_value <= 16'd9824;
            end
            16'd1229: begin // 1229
                length_value <= 16'd9832;
            end
            16'd1230: begin // 1230
                length_value <= 16'd9840;
            end
            16'd1231: begin // 1231
                length_value <= 16'd9848;
            end
            16'd1232: begin // 1232
                length_value <= 16'd9856;
            end
            16'd1233: begin // 1233
                length_value <= 16'd9864;
            end
            16'd1234: begin // 1234
                length_value <= 16'd9872;
            end
            16'd1235: begin // 1235
                length_value <= 16'd9880;
            end
            16'd1236: begin // 1236
                length_value <= 16'd9888;
            end
            16'd1237: begin // 1237
                length_value <= 16'd9896;
            end
            16'd1238: begin // 1238
                length_value <= 16'd9904;
            end
            16'd1239: begin // 1239
                length_value <= 16'd9912;
            end
            16'd1240: begin // 1240
                length_value <= 16'd9920;
            end
            16'd1241: begin // 1241
                length_value <= 16'd9928;
            end
            16'd1242: begin // 1242
                length_value <= 16'd9936;
            end
            16'd1243: begin // 1243
                length_value <= 16'd9944;
            end
            16'd1244: begin // 1244
                length_value <= 16'd9952;
            end
            16'd1245: begin // 1245
                length_value <= 16'd9960;
            end
            16'd1246: begin // 1246
                length_value <= 16'd9968;
            end
            16'd1247: begin // 1247
                length_value <= 16'd9976;
            end
            16'd1248: begin // 1248
                length_value <= 16'd9984;
            end
            16'd1249: begin // 1249
                length_value <= 16'd9992;
            end
            16'd1250: begin // 1250
                length_value <= 16'd10000;
            end
            16'd1251: begin // 1251
                length_value <= 16'd10008;
            end
            16'd1252: begin // 1252
                length_value <= 16'd10016;
            end
            16'd1253: begin // 1253
                length_value <= 16'd10024;
            end
            16'd1254: begin // 1254
                length_value <= 16'd10032;
            end
            16'd1255: begin // 1255
                length_value <= 16'd10040;
            end
            16'd1256: begin // 1256
                length_value <= 16'd10048;
            end
            16'd1257: begin // 1257
                length_value <= 16'd10056;
            end
            16'd1258: begin // 1258
                length_value <= 16'd10064;
            end
            16'd1259: begin // 1259
                length_value <= 16'd10072;
            end
            16'd1260: begin // 1260
                length_value <= 16'd10080;
            end
            16'd1261: begin // 1261
                length_value <= 16'd10088;
            end
            16'd1262: begin // 1262
                length_value <= 16'd10096;
            end
            16'd1263: begin // 1263
                length_value <= 16'd10104;
            end
            16'd1264: begin // 1264
                length_value <= 16'd10112;
            end
            16'd1265: begin // 1265
                length_value <= 16'd10120;
            end
            16'd1266: begin // 1266
                length_value <= 16'd10128;
            end
            16'd1267: begin // 1267
                length_value <= 16'd10136;
            end
            16'd1268: begin // 1268
                length_value <= 16'd10144;
            end
            16'd1269: begin // 1269
                length_value <= 16'd10152;
            end
            16'd1270: begin // 1270
                length_value <= 16'd10160;
            end
            16'd1271: begin // 1271
                length_value <= 16'd10168;
            end
            16'd1272: begin // 1272
                length_value <= 16'd10176;
            end
            16'd1273: begin // 1273
                length_value <= 16'd10184;
            end
            16'd1274: begin // 1274
                length_value <= 16'd10192;
            end
            16'd1275: begin // 1275
                length_value <= 16'd10200;
            end
            16'd1276: begin // 1276
                length_value <= 16'd10208;
            end
            16'd1277: begin // 1277
                length_value <= 16'd10216;
            end
            16'd1278: begin // 1278
                length_value <= 16'd10224;
            end
            16'd1279: begin // 1279
                length_value <= 16'd10232;
            end
            16'd1280: begin // 1280
                length_value <= 16'd10240;
            end
            16'd1281: begin // 1281
                length_value <= 16'd10248;
            end
            16'd1282: begin // 1282
                length_value <= 16'd10256;
            end
            16'd1283: begin // 1283
                length_value <= 16'd10264;
            end
            16'd1284: begin // 1284
                length_value <= 16'd10272;
            end
            16'd1285: begin // 1285
                length_value <= 16'd10280;
            end
            16'd1286: begin // 1286
                length_value <= 16'd10288;
            end
            16'd1287: begin // 1287
                length_value <= 16'd10296;
            end
            16'd1288: begin // 1288
                length_value <= 16'd10304;
            end
            16'd1289: begin // 1289
                length_value <= 16'd10312;
            end
            16'd1290: begin // 1290
                length_value <= 16'd10320;
            end
            16'd1291: begin // 1291
                length_value <= 16'd10328;
            end
            16'd1292: begin // 1292
                length_value <= 16'd10336;
            end
            16'd1293: begin // 1293
                length_value <= 16'd10344;
            end
            16'd1294: begin // 1294
                length_value <= 16'd10352;
            end
            16'd1295: begin // 1295
                length_value <= 16'd10360;
            end
            16'd1296: begin // 1296
                length_value <= 16'd10368;
            end
            16'd1297: begin // 1297
                length_value <= 16'd10376;
            end
            16'd1298: begin // 1298
                length_value <= 16'd10384;
            end
            16'd1299: begin // 1299
                length_value <= 16'd10392;
            end
            16'd1300: begin // 1300
                length_value <= 16'd10400;
            end
            16'd1301: begin // 1301
                length_value <= 16'd10408;
            end
            16'd1302: begin // 1302
                length_value <= 16'd10416;
            end
            16'd1303: begin // 1303
                length_value <= 16'd10424;
            end
            16'd1304: begin // 1304
                length_value <= 16'd10432;
            end
            16'd1305: begin // 1305
                length_value <= 16'd10440;
            end
            16'd1306: begin // 1306
                length_value <= 16'd10448;
            end
            16'd1307: begin // 1307
                length_value <= 16'd10456;
            end
            16'd1308: begin // 1308
                length_value <= 16'd10464;
            end
            16'd1309: begin // 1309
                length_value <= 16'd10472;
            end
            16'd1310: begin // 1310
                length_value <= 16'd10480;
            end
            16'd1311: begin // 1311
                length_value <= 16'd10488;
            end
            16'd1312: begin // 1312
                length_value <= 16'd10496;
            end
            16'd1313: begin // 1313
                length_value <= 16'd10504;
            end
            16'd1314: begin // 1314
                length_value <= 16'd10512;
            end
            16'd1315: begin // 1315
                length_value <= 16'd10520;
            end
            16'd1316: begin // 1316
                length_value <= 16'd10528;
            end
            16'd1317: begin // 1317
                length_value <= 16'd10536;
            end
            16'd1318: begin // 1318
                length_value <= 16'd10544;
            end
            16'd1319: begin // 1319
                length_value <= 16'd10552;
            end
            16'd1320: begin // 1320
                length_value <= 16'd10560;
            end
            16'd1321: begin // 1321
                length_value <= 16'd10568;
            end
            16'd1322: begin // 1322
                length_value <= 16'd10576;
            end
            16'd1323: begin // 1323
                length_value <= 16'd10584;
            end
            16'd1324: begin // 1324
                length_value <= 16'd10592;
            end
            16'd1325: begin // 1325
                length_value <= 16'd10600;
            end
            16'd1326: begin // 1326
                length_value <= 16'd10608;
            end
            16'd1327: begin // 1327
                length_value <= 16'd10616;
            end
            16'd1328: begin // 1328
                length_value <= 16'd10624;
            end
            16'd1329: begin // 1329
                length_value <= 16'd10632;
            end
            16'd1330: begin // 1330
                length_value <= 16'd10640;
            end
            16'd1331: begin // 1331
                length_value <= 16'd10648;
            end
            16'd1332: begin // 1332
                length_value <= 16'd10656;
            end
            16'd1333: begin // 1333
                length_value <= 16'd10664;
            end
            16'd1334: begin // 1334
                length_value <= 16'd10672;
            end
            16'd1335: begin // 1335
                length_value <= 16'd10680;
            end
            16'd1336: begin // 1336
                length_value <= 16'd10688;
            end
            16'd1337: begin // 1337
                length_value <= 16'd10696;
            end
            16'd1338: begin // 1338
                length_value <= 16'd10704;
            end
            16'd1339: begin // 1339
                length_value <= 16'd10712;
            end
            16'd1340: begin // 1340
                length_value <= 16'd10720;
            end
            16'd1341: begin // 1341
                length_value <= 16'd10728;
            end
            16'd1342: begin // 1342
                length_value <= 16'd10736;
            end
            16'd1343: begin // 1343
                length_value <= 16'd10744;
            end
            16'd1344: begin // 1344
                length_value <= 16'd10752;
            end
            16'd1345: begin // 1345
                length_value <= 16'd10760;
            end
            16'd1346: begin // 1346
                length_value <= 16'd10768;
            end
            16'd1347: begin // 1347
                length_value <= 16'd10776;
            end
            16'd1348: begin // 1348
                length_value <= 16'd10784;
            end
            16'd1349: begin // 1349
                length_value <= 16'd10792;
            end
            16'd1350: begin // 1350
                length_value <= 16'd10800;
            end
            16'd1351: begin // 1351
                length_value <= 16'd10808;
            end
            16'd1352: begin // 1352
                length_value <= 16'd10816;
            end
            16'd1353: begin // 1353
                length_value <= 16'd10824;
            end
            16'd1354: begin // 1354
                length_value <= 16'd10832;
            end
            16'd1355: begin // 1355
                length_value <= 16'd10840;
            end
            16'd1356: begin // 1356
                length_value <= 16'd10848;
            end
            16'd1357: begin // 1357
                length_value <= 16'd10856;
            end
            16'd1358: begin // 1358
                length_value <= 16'd10864;
            end
            16'd1359: begin // 1359
                length_value <= 16'd10872;
            end
            16'd1360: begin // 1360
                length_value <= 16'd10880;
            end
            16'd1361: begin // 1361
                length_value <= 16'd10888;
            end
            16'd1362: begin // 1362
                length_value <= 16'd10896;
            end
            16'd1363: begin // 1363
                length_value <= 16'd10904;
            end
            16'd1364: begin // 1364
                length_value <= 16'd10912;
            end
            16'd1365: begin // 1365
                length_value <= 16'd10920;
            end
            16'd1366: begin // 1366
                length_value <= 16'd10928;
            end
            16'd1367: begin // 1367
                length_value <= 16'd10936;
            end
            16'd1368: begin // 1368
                length_value <= 16'd10944;
            end
            16'd1369: begin // 1369
                length_value <= 16'd10952;
            end
            16'd1370: begin // 1370
                length_value <= 16'd10960;
            end
            16'd1371: begin // 1371
                length_value <= 16'd10968;
            end
            16'd1372: begin // 1372
                length_value <= 16'd10976;
            end
            16'd1373: begin // 1373
                length_value <= 16'd10984;
            end
            16'd1374: begin // 1374
                length_value <= 16'd10992;
            end
            16'd1375: begin // 1375
                length_value <= 16'd11000;
            end
            16'd1376: begin // 1376
                length_value <= 16'd11008;
            end
            16'd1377: begin // 1377
                length_value <= 16'd11016;
            end
            16'd1378: begin // 1378
                length_value <= 16'd11024;
            end
            16'd1379: begin // 1379
                length_value <= 16'd11032;
            end
            16'd1380: begin // 1380
                length_value <= 16'd11040;
            end
            16'd1381: begin // 1381
                length_value <= 16'd11048;
            end
            16'd1382: begin // 1382
                length_value <= 16'd11056;
            end
            16'd1383: begin // 1383
                length_value <= 16'd11064;
            end
            16'd1384: begin // 1384
                length_value <= 16'd11072;
            end
            16'd1385: begin // 1385
                length_value <= 16'd11080;
            end
            16'd1386: begin // 1386
                length_value <= 16'd11088;
            end
            16'd1387: begin // 1387
                length_value <= 16'd11096;
            end
            16'd1388: begin // 1388
                length_value <= 16'd11104;
            end
            16'd1389: begin // 1389
                length_value <= 16'd11112;
            end
            16'd1390: begin // 1390
                length_value <= 16'd11120;
            end
            16'd1391: begin // 1391
                length_value <= 16'd11128;
            end
            16'd1392: begin // 1392
                length_value <= 16'd11136;
            end
            16'd1393: begin // 1393
                length_value <= 16'd11144;
            end
            16'd1394: begin // 1394
                length_value <= 16'd11152;
            end
            16'd1395: begin // 1395
                length_value <= 16'd11160;
            end
            16'd1396: begin // 1396
                length_value <= 16'd11168;
            end
            16'd1397: begin // 1397
                length_value <= 16'd11176;
            end
            16'd1398: begin // 1398
                length_value <= 16'd11184;
            end
            16'd1399: begin // 1399
                length_value <= 16'd11192;
            end
            16'd1400: begin // 1400
                length_value <= 16'd11200;
            end
            16'd1401: begin // 1401
                length_value <= 16'd11208;
            end
            16'd1402: begin // 1402
                length_value <= 16'd11216;
            end
            16'd1403: begin // 1403
                length_value <= 16'd11224;
            end
            16'd1404: begin // 1404
                length_value <= 16'd11232;
            end
            16'd1405: begin // 1405
                length_value <= 16'd11240;
            end
            16'd1406: begin // 1406
                length_value <= 16'd11248;
            end
            16'd1407: begin // 1407
                length_value <= 16'd11256;
            end
            16'd1408: begin // 1408
                length_value <= 16'd11264;
            end
            16'd1409: begin // 1409
                length_value <= 16'd11272;
            end
            16'd1410: begin // 1410
                length_value <= 16'd11280;
            end
            16'd1411: begin // 1411
                length_value <= 16'd11288;
            end
            16'd1412: begin // 1412
                length_value <= 16'd11296;
            end
            16'd1413: begin // 1413
                length_value <= 16'd11304;
            end
            16'd1414: begin // 1414
                length_value <= 16'd11312;
            end
            16'd1415: begin // 1415
                length_value <= 16'd11320;
            end
            16'd1416: begin // 1416
                length_value <= 16'd11328;
            end
            16'd1417: begin // 1417
                length_value <= 16'd11336;
            end
            16'd1418: begin // 1418
                length_value <= 16'd11344;
            end
            16'd1419: begin // 1419
                length_value <= 16'd11352;
            end
            16'd1420: begin // 1420
                length_value <= 16'd11360;
            end
            16'd1421: begin // 1421
                length_value <= 16'd11368;
            end
            16'd1422: begin // 1422
                length_value <= 16'd11376;
            end
            16'd1423: begin // 1423
                length_value <= 16'd11384;
            end
            16'd1424: begin // 1424
                length_value <= 16'd11392;
            end
            16'd1425: begin // 1425
                length_value <= 16'd11400;
            end
            16'd1426: begin // 1426
                length_value <= 16'd11408;
            end
            16'd1427: begin // 1427
                length_value <= 16'd11416;
            end
            16'd1428: begin // 1428
                length_value <= 16'd11424;
            end
            16'd1429: begin // 1429
                length_value <= 16'd11432;
            end
            16'd1430: begin // 1430
                length_value <= 16'd11440;
            end
            16'd1431: begin // 1431
                length_value <= 16'd11448;
            end
            16'd1432: begin // 1432
                length_value <= 16'd11456;
            end
            16'd1433: begin // 1433
                length_value <= 16'd11464;
            end
            16'd1434: begin // 1434
                length_value <= 16'd11472;
            end
            16'd1435: begin // 1435
                length_value <= 16'd11480;
            end
            16'd1436: begin // 1436
                length_value <= 16'd11488;
            end
            16'd1437: begin // 1437
                length_value <= 16'd11496;
            end
            16'd1438: begin // 1438
                length_value <= 16'd11504;
            end
            16'd1439: begin // 1439
                length_value <= 16'd11512;
            end
            16'd1440: begin // 1440
                length_value <= 16'd11520;
            end
            16'd1441: begin // 1441
                length_value <= 16'd11528;
            end
            16'd1442: begin // 1442
                length_value <= 16'd11536;
            end
            16'd1443: begin // 1443
                length_value <= 16'd11544;
            end
            16'd1444: begin // 1444
                length_value <= 16'd11552;
            end
            16'd1445: begin // 1445
                length_value <= 16'd11560;
            end
            16'd1446: begin // 1446
                length_value <= 16'd11568;
            end
            16'd1447: begin // 1447
                length_value <= 16'd11576;
            end
            16'd1448: begin // 1448
                length_value <= 16'd11584;
            end
            16'd1449: begin // 1449
                length_value <= 16'd11592;
            end
            16'd1450: begin // 1450
                length_value <= 16'd11600;
            end
            16'd1451: begin // 1451
                length_value <= 16'd11608;
            end
            16'd1452: begin // 1452
                length_value <= 16'd11616;
            end
            16'd1453: begin // 1453
                length_value <= 16'd11624;
            end
            16'd1454: begin // 1454
                length_value <= 16'd11632;
            end
            16'd1455: begin // 1455
                length_value <= 16'd11640;
            end
            16'd1456: begin // 1456
                length_value <= 16'd11648;
            end
            16'd1457: begin // 1457
                length_value <= 16'd11656;
            end
            16'd1458: begin // 1458
                length_value <= 16'd11664;
            end
            16'd1459: begin // 1459
                length_value <= 16'd11672;
            end
            16'd1460: begin // 1460
                length_value <= 16'd11680;
            end
            16'd1461: begin // 1461
                length_value <= 16'd11688;
            end
            16'd1462: begin // 1462
                length_value <= 16'd11696;
            end
            16'd1463: begin // 1463
                length_value <= 16'd11704;
            end
            16'd1464: begin // 1464
                length_value <= 16'd11712;
            end
            16'd1465: begin // 1465
                length_value <= 16'd11720;
            end
            16'd1466: begin // 1466
                length_value <= 16'd11728;
            end
            16'd1467: begin // 1467
                length_value <= 16'd11736;
            end
            16'd1468: begin // 1468
                length_value <= 16'd11744;
            end
            16'd1469: begin // 1469
                length_value <= 16'd11752;
            end
            16'd1470: begin // 1470
                length_value <= 16'd11760;
            end
            16'd1471: begin // 1471
                length_value <= 16'd11768;
            end
            16'd1472: begin // 1472
                length_value <= 16'd11776;
            end
            16'd1473: begin // 1473
                length_value <= 16'd11784;
            end
            16'd1474: begin // 1474
                length_value <= 16'd11792;
            end
            16'd1475: begin // 1475
                length_value <= 16'd11800;
            end
            16'd1476: begin // 1476
                length_value <= 16'd11808;
            end
            16'd1477: begin // 1477
                length_value <= 16'd11816;
            end
            16'd1478: begin // 1478
                length_value <= 16'd11824;
            end
            16'd1479: begin // 1479
                length_value <= 16'd11832;
            end
            16'd1480: begin // 1480
                length_value <= 16'd11840;
            end
            16'd1481: begin // 1481
                length_value <= 16'd11848;
            end
            16'd1482: begin // 1482
                length_value <= 16'd11856;
            end
            16'd1483: begin // 1483
                length_value <= 16'd11864;
            end
            16'd1484: begin // 1484
                length_value <= 16'd11872;
            end
            16'd1485: begin // 1485
                length_value <= 16'd11880;
            end
            16'd1486: begin // 1486
                length_value <= 16'd11888;
            end
            16'd1487: begin // 1487
                length_value <= 16'd11896;
            end
            16'd1488: begin // 1488
                length_value <= 16'd11904;
            end
            16'd1489: begin // 1489
                length_value <= 16'd11912;
            end
            16'd1490: begin // 1490
                length_value <= 16'd11920;
            end
            16'd1491: begin // 1491
                length_value <= 16'd11928;
            end
            16'd1492: begin // 1492
                length_value <= 16'd11936;
            end
            16'd1493: begin // 1493
                length_value <= 16'd11944;
            end
            16'd1494: begin // 1494
                length_value <= 16'd11952;
            end
            16'd1495: begin // 1495
                length_value <= 16'd11960;
            end
            16'd1496: begin // 1496
                length_value <= 16'd11968;
            end
            16'd1497: begin // 1497
                length_value <= 16'd11976;
            end
            16'd1498: begin // 1498
                length_value <= 16'd11984;
            end
            16'd1499: begin // 1499
                length_value <= 16'd11992;
            end
            16'd1500: begin // 1500
                length_value <= 16'd12000;
            end
            16'd1501: begin // 1501
                length_value <= 16'd12008;
            end
            16'd1502: begin // 1502
                length_value <= 16'd12016;
            end
            16'd1503: begin // 1503
                length_value <= 16'd12024;
            end
            16'd1504: begin // 1504
                length_value <= 16'd12032;
            end
            16'd1505: begin // 1505
                length_value <= 16'd12040;
            end
            16'd1506: begin // 1506
                length_value <= 16'd12048;
            end
            16'd1507: begin // 1507
                length_value <= 16'd12056;
            end
            16'd1508: begin // 1508
                length_value <= 16'd12064;
            end
            16'd1509: begin // 1509
                length_value <= 16'd12072;
            end
            16'd1510: begin // 1510
                length_value <= 16'd12080;
            end
            16'd1511: begin // 1511
                length_value <= 16'd12088;
            end
            16'd1512: begin // 1512
                length_value <= 16'd12096;
            end
            16'd1513: begin // 1513
                length_value <= 16'd12104;
            end
            16'd1514: begin // 1514
                length_value <= 16'd12112;
            end
            16'd1515: begin // 1515
                length_value <= 16'd12120;
            end
            16'd1516: begin // 1516
                length_value <= 16'd12128;
            end
            16'd1517: begin // 1517
                length_value <= 16'd12136;
            end
            16'd1518: begin // 1518
                length_value <= 16'd12144;
            end
            16'd1519: begin // 1519
                length_value <= 16'd12152;
            end
            16'd1520: begin // 1520
                length_value <= 16'd12160;
            end
        endcase
    end else begin
        length_value <= length_value_reg;
    end
end

// verify value
always_comb begin
    if (verify_valid_reg) begin
        verify_value <= verify_field_reg;
    end else begin
        verify_value <= verify_value_reg;
    end
end

// //////////////////////////
// Register state signals    
// //////////////////////////  

`CLOCKED(aclk,aresetn)
begin
    transition_valid_reg <= '0;
    length_valid_reg <= '0;
    verify_valid_reg <= '0;
end else begin
    if (pipe_shift_en) begin
        transition_valid_reg <= transition_valid;
        length_valid_reg <= length_valid;
        verify_valid_reg <= verify_valid;
    end
end
 
`CLOCKED_NORESET(aclk,aresetn)
begin
    transition_field_reg <= '0;
    transition_value_reg <= C_PAYLOAD;
    length_field_reg <= '0;
    length_value_reg <= '0;
    verify_field_reg <= '0;
    verify_value_reg <= '0;
end else begin
    if (pipe_shift_en) begin
        transition_field_reg <= transition_field;
        transition_value_reg <= transition_value;
        length_field_reg <= length_field;
        length_value_reg <= length_value;
        verify_field_reg <= verify_field;
        verify_value_reg <= verify_value;
    end
end

// //////////////////////////
// Output connections    
// //////////////////////////  

always_comb begin
    if (1) begin
        state_info.valid.transition <= transition_valid_reg;
        state_info.valid.length <= length_valid_reg;
        state_info.valid.verify <= verify_valid_reg;
    end
end

always_comb begin
    if (1) begin
        state_info.transition <= transition_value;
        state_info.length <= length_value;
        state_info.verify <= verify_value;
    end
end

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_seq_id_state_start END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_seq_id_level_0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_hdr_seq_id_level_0 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                  aclk,
    input  logic                  aresetn,
    // inputs
    input  logic                  pipe_shift_en,
    input  T_PARSER_PIPE [1:0]    pipe_data_in,
    input  T_PARSER_LEVEL_INFO    level_info_in,
    input  T_PARSER_FRAME_INFO    frame_info_in,
    // outputs
    output T_PARSER_LEVEL_INFO    level_info_out,
    output T_PARSER_FRAME_INFO    frame_info_out,
    // Intra-level ports
    input  T_PARSER_PIPE          pipe_data_shifted_in,
    input  logic                  pipe_data_shifted_valid_in,
    output T_PARSER_PIPE          pipe_data_shifted_out,
    output logic                  pipe_data_shifted_valid_out
);

// latency = 2 (cycles)

// ///////////////////////////////////////
// signal declarations
// ///////////////////////////////////////

// Parse level signals 
T_PARSER_LEVEL_INFO [3:0] level_info_in_pipe;
T_PARSER_FRAME_INFO [3:0] frame_info_in_pipe;
T_PARSER_PIPE             pipe_data_shifted;
logic                     pipe_data_shifted_valid;

// State connections signals 
T_PARSER_STATE_INFO start_state_info;

// level MUX out signals
logic [15:0] next_level_offset;
logic [15:0] level_length;     
logic level_length_valid;
E_PARSER_STATE_NAME level_transition;     
logic level_transition_valid;
logic [C_PARSER_VERIFY_WIDTH-1:0] level_verify;     
logic level_verify_valid;

// intra-level connection signals
T_PARSER_PIPE [3:0] pipe_data_shifted_pipe;
logic         [3:0] pipe_data_shifted_valid_pipe;

// //////////////////////////
// level signal pipelines    
// ////////////////////////// 

// level info in pipeline connections
assign level_info_in_pipe[0] = level_info_in;
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_in_pipe[3:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        level_info_in_pipe[3:1] <= level_info_in_pipe[2:0];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        level_info_in_pipe[1].valid  <= '0;
        level_info_in_pipe[2].valid  <= '0;
        level_info_in_pipe[3].valid  <= '0;
    end
`endif
end

// frame info in pipeline connections
assign frame_info_in_pipe[0].end_of_frame     = frame_info_in.end_of_frame;
assign frame_info_in_pipe[0].frame_word_count = frame_info_in.frame_word_count;
assign frame_info_in_pipe[0].frame_bit_count  = frame_info_in.frame_bit_count;
assign frame_info_in_pipe[0].extracted_bits   = frame_info_in.frame_bit_count - level_info_in.offset;

`CLOCKED_NORESET(aclk,aresetn)
begin
    frame_info_in_pipe[3:1] <= '0;
end else begin 
    if (pipe_shift_en) begin
        frame_info_in_pipe[3:1] <= frame_info_in_pipe[2:0];
    end
end

// intra-level signals pipeline connections
assign pipe_data_shifted_valid_pipe[0] = pipe_data_shifted_valid;
`CLOCKED(aclk,aresetn)
begin
    pipe_data_shifted_valid_pipe[3:1] <= '0;
end else begin 
    if (pipe_shift_en) begin
        pipe_data_shifted_valid_pipe[3:1] <= pipe_data_shifted_valid_pipe[2:0];
    end
end 

// intra-level signals pipeline connections
assign pipe_data_shifted_pipe[0] = pipe_data_shifted;
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    pipe_data_shifted_pipe[3:1] <= '0;
end else begin 
    if (pipe_shift_en) begin
        pipe_data_shifted_pipe[3:1] <= pipe_data_shifted_pipe[2:0];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        pipe_data_shifted_pipe[1].packet_valid <= '0;
        pipe_data_shifted_pipe[2].packet_valid <= '0;
        pipe_data_shifted_pipe[3].packet_valid <= '0;
    end
`endif
end 

// //////////////////////////
// Level Barrel Shifter    
// //////////////////////////

assign pipe_data_shifted_valid = (level_info_in.offset[15:C_AXIS_DATA_BIT_RANGE] == frame_info_in.frame_word_count) ? 1 : 0;
always_comb begin
    pipe_data_shifted <= pipe_data_in[0];
    pipe_data_shifted.packet_data <= {pipe_data_in[0].packet_data[127:0]}; // 0
end

// //////////////////////////////////////
// Parser State Instantiation    
// //////////////////////////////////////
 
ipsec_bd_sdnet_0_3_hdr_seq_id_state_start hdr_seq_id_state_start_inst (
    .aclk                        (aclk),
    .aresetn                     (aresetn),
    .pipe_shift_en               (pipe_shift_en),
    .pipe_data_shifted           (pipe_data_shifted),
    .pipe_data_shifted_valid     (pipe_data_shifted_valid),
    .ext_pipe_data_shifted       (),
    .ext_pipe_data_shifted_valid (),
    .state_info                  (start_state_info)
);

// //////////////////////
// Level info MUX out    
// //////////////////////
 
// length
always_comb begin
    case (level_info_in_pipe[1].transition)
        default: begin
            level_length         <= '0;
            level_length_valid   <= '0;
        end
        C_START: begin
            level_length         <= start_state_info.length;
            level_length_valid   <= start_state_info.valid.length;
        end
    endcase
end
 
// transition
always_comb begin
    case (level_info_in_pipe[1].transition)
        default: begin
            level_transition         <= level_info_in_pipe[1].transition;
            level_transition_valid   <= '0;
        end
        C_START: begin
            level_transition         <= start_state_info.transition;
            level_transition_valid   <= start_state_info.valid.transition;
        end
    endcase
end
 
// verify
always_comb begin
    case (level_info_in_pipe[1].transition)
        default: begin
            level_verify         <= '0;
            level_verify_valid   <= '0;
        end
        C_START: begin
            level_verify         <= start_state_info.verify;
            level_verify_valid   <= start_state_info.valid.verify;
        end
    endcase
end

// Offset 
assign next_level_offset = level_info_in_pipe[1].offset + level_length;

// //////////////////////////
// Output connections    
// //////////////////////////

// frame info out
assign frame_info_out = frame_info_in_pipe[2];

// level info out
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_out.error  <= '{NoError:'1,default:'0};
    level_info_out.offset <= '0;
    level_info_out.length <= '0;
    level_info_out.valid.length <= '0;
    level_info_out.transition <= C_PAYLOAD;
    level_info_out.valid.transition <= '0;
    level_info_out.verify <= '0;
    level_info_out.valid.verify <= '0;
end else begin
    if (pipe_shift_en) begin
       level_info_out.error  <= '{NoError:'1,default:'0};
       level_info_out.offset <= next_level_offset;
       level_info_out.length <= level_length;
       level_info_out.valid.length <= level_length_valid;
       level_info_out.transition <= level_transition;
       level_info_out.valid.transition <= level_transition_valid;
       level_info_out.verify <= level_verify;
       level_info_out.valid.verify <= level_verify_valid;
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        level_info_out.valid.length <= '0;
        level_info_out.valid.transition <= '0;
        level_info_out.valid.verify <= '0;
    end
`endif
end

// intra-level signal out
assign pipe_data_shifted_out       = pipe_data_shifted_pipe[2];
assign pipe_data_shifted_valid_out = pipe_data_shifted_valid_pipe[2];

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_seq_id_level_0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_header_sequence_identifier START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_header_sequence_identifier 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                                       aclk,
    input  logic                                       aresetn,
    // inputs
    input  logic                                       pipe_shift_en,
    input  T_PARSER_PIPE       [C_PARSER_PIPE_DEPTH:0] pipe_data_in,
    input  T_PARSER_LEVEL_INFO                         level_info_in,
    input  T_PARSER_FRAME_INFO                         frame_info_in,
    // outputs
    output T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_out,
    output T_PARSER_FRAME_INFO [C_PARSER_NUM_LEVELS:0] frame_info_out 
);

localparam C_PIPE_DATA_SHIFTED_DEPTH = 3;

// Intra-module connection signals
T_PARSER_PIPE [C_PIPE_DATA_SHIFTED_DEPTH:0] [C_PARSER_NUM_LEVELS-1:0] pipe_data_shifted;
logic         [C_PIPE_DATA_SHIFTED_DEPTH:0] [C_PARSER_NUM_LEVELS-1:0] pipe_data_shifted_valid;

T_PARSER_LEVEL_INFO [3:0] [C_PARSER_NUM_LEVELS:0] level_info_out_pipe;
T_PARSER_LEVEL_INFO       [C_PARSER_NUM_LEVELS:0] level_info_out_i;

// Intra-module signals realignment
`CLOCKED(aclk,aresetn)
begin
    pipe_data_shifted_valid[C_PIPE_DATA_SHIFTED_DEPTH:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        pipe_data_shifted_valid[C_PIPE_DATA_SHIFTED_DEPTH:1] <= pipe_data_shifted_valid[C_PIPE_DATA_SHIFTED_DEPTH-1:0];
    end
end

// Intra-module signals realignment
`CLOCKED_NORESET(aclk,aresetn)
begin
    pipe_data_shifted[C_PIPE_DATA_SHIFTED_DEPTH:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        pipe_data_shifted[C_PIPE_DATA_SHIFTED_DEPTH:1] <= pipe_data_shifted[C_PIPE_DATA_SHIFTED_DEPTH-1:0];
    end
end

// Level 0 header_sequence_identifier instantiation
ipsec_bd_sdnet_0_3_hdr_seq_id_level_0 hdr_seq_id_level_0_inst (
    .aclk                        (aclk),
    .aresetn                     (aresetn),
    .pipe_shift_en               (pipe_shift_en),
    .pipe_data_in                ({pipe_data_in[0], pipe_data_in[1]}),
    .level_info_in               (level_info_in),
    .frame_info_in               (frame_info_in),
    .level_info_out              (level_info_out_i[0]),
    .frame_info_out              (frame_info_out[0]),
    .pipe_data_shifted_in        (),
    .pipe_data_shifted_valid_in  (),
    .pipe_data_shifted_out       (pipe_data_shifted[0][0]),
    .pipe_data_shifted_valid_out (pipe_data_shifted_valid[0][0])
);

// payload level
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_out_i[C_PARSER_NUM_LEVELS] <= '0;
    frame_info_out[C_PARSER_NUM_LEVELS]   <= '0;
end else begin
    if (pipe_shift_en) begin
        level_info_out_i[C_PARSER_NUM_LEVELS] <= level_info_out_i[C_PARSER_NUM_LEVELS-1];
        frame_info_out[C_PARSER_NUM_LEVELS]   <= frame_info_out[C_PARSER_NUM_LEVELS-1];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        level_info_out_i[C_PARSER_NUM_LEVELS].valid <= '0;
    end
`endif
end

// level info pipeline for realignment
assign level_info_out_pipe[0]  = level_info_out_i;
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_out_pipe[3:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        level_info_out_pipe[3:1] <= level_info_out_pipe[2:0];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        for (int i=0; i <= C_PARSER_NUM_LEVELS; i++)  begin
            level_info_out_pipe[1][i].valid <= '0;
            level_info_out_pipe[2][i].valid <= '0;
            level_info_out_pipe[3][i].valid <= '0;
        end
    end
`endif
end

// output level info assignment
// Important notes:
//   - level offset value if one clock cycle ahead, it needs to be delayed (except payload's level)
//   - payload's level must be aligned with last header level
always_comb begin
    level_info_out[0] <= level_info_out_i[0];
    level_info_out[0].offset <= '0;
    level_info_out[1] <= level_info_out_i[1];
    level_info_out[1].offset <= level_info_out_i[0].offset;
end 

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_header_sequence_identifier END
//------------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
