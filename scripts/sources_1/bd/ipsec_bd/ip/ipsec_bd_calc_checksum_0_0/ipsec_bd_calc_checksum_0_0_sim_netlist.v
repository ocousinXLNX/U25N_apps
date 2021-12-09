// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:26:33 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_calc_checksum_0_0/ipsec_bd_calc_checksum_0_0_sim_netlist.v
// Design      : ipsec_bd_calc_checksum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_calc_checksum_0_0,calc_checksum,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "calc_checksum,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_calc_checksum_0_0
   (clk,
    rst,
    valid_in,
    data_in,
    valid_out,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input valid_in;
  input [159:0]data_in;
  output valid_out;
  output [15:0]data_out;

  wire clk;
  wire [159:0]data_in;
  wire [15:0]data_out;
  wire rst;
  wire valid_in;
  wire valid_out;

  ipsec_bd_calc_checksum_0_0_calc_checksum inst
       (.clk(clk),
        .data_in({data_in[159:80],data_in[63:0]}),
        .data_out(data_out),
        .rst(rst),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

(* ORIG_REF_NAME = "calc_checksum" *) 
module ipsec_bd_calc_checksum_0_0_calc_checksum
   (valid_out,
    data_out,
    valid_in,
    clk,
    data_in,
    rst);
  output valid_out;
  output [15:0]data_out;
  input valid_in;
  input clk;
  input [143:0]data_in;
  input rst;

  wire clk;
  wire [143:0]data_in;
  wire [15:0]data_out;
  wire [16:0]l0_0;
  wire [16:0]l0_00;
  wire \l0_0[15]_i_2_n_0 ;
  wire \l0_0[15]_i_3_n_0 ;
  wire \l0_0[15]_i_4_n_0 ;
  wire \l0_0[15]_i_5_n_0 ;
  wire \l0_0[15]_i_6_n_0 ;
  wire \l0_0[15]_i_7_n_0 ;
  wire \l0_0[15]_i_8_n_0 ;
  wire \l0_0[15]_i_9_n_0 ;
  wire \l0_0[7]_i_2_n_0 ;
  wire \l0_0[7]_i_3_n_0 ;
  wire \l0_0[7]_i_4_n_0 ;
  wire \l0_0[7]_i_5_n_0 ;
  wire \l0_0[7]_i_6_n_0 ;
  wire \l0_0[7]_i_7_n_0 ;
  wire \l0_0[7]_i_8_n_0 ;
  wire \l0_0[7]_i_9_n_0 ;
  wire \l0_0_reg[15]_i_1_n_0 ;
  wire \l0_0_reg[15]_i_1_n_1 ;
  wire \l0_0_reg[15]_i_1_n_2 ;
  wire \l0_0_reg[15]_i_1_n_3 ;
  wire \l0_0_reg[15]_i_1_n_4 ;
  wire \l0_0_reg[15]_i_1_n_5 ;
  wire \l0_0_reg[15]_i_1_n_6 ;
  wire \l0_0_reg[15]_i_1_n_7 ;
  wire \l0_0_reg[7]_i_1_n_0 ;
  wire \l0_0_reg[7]_i_1_n_1 ;
  wire \l0_0_reg[7]_i_1_n_2 ;
  wire \l0_0_reg[7]_i_1_n_3 ;
  wire \l0_0_reg[7]_i_1_n_4 ;
  wire \l0_0_reg[7]_i_1_n_5 ;
  wire \l0_0_reg[7]_i_1_n_6 ;
  wire \l0_0_reg[7]_i_1_n_7 ;
  wire [16:0]l0_1;
  wire [16:0]l0_10;
  wire \l0_1[15]_i_2_n_0 ;
  wire \l0_1[15]_i_3_n_0 ;
  wire \l0_1[15]_i_4_n_0 ;
  wire \l0_1[15]_i_5_n_0 ;
  wire \l0_1[15]_i_6_n_0 ;
  wire \l0_1[15]_i_7_n_0 ;
  wire \l0_1[15]_i_8_n_0 ;
  wire \l0_1[15]_i_9_n_0 ;
  wire \l0_1[7]_i_2_n_0 ;
  wire \l0_1[7]_i_3_n_0 ;
  wire \l0_1[7]_i_4_n_0 ;
  wire \l0_1[7]_i_5_n_0 ;
  wire \l0_1[7]_i_6_n_0 ;
  wire \l0_1[7]_i_7_n_0 ;
  wire \l0_1[7]_i_8_n_0 ;
  wire \l0_1[7]_i_9_n_0 ;
  wire \l0_1_reg[15]_i_1_n_0 ;
  wire \l0_1_reg[15]_i_1_n_1 ;
  wire \l0_1_reg[15]_i_1_n_2 ;
  wire \l0_1_reg[15]_i_1_n_3 ;
  wire \l0_1_reg[15]_i_1_n_4 ;
  wire \l0_1_reg[15]_i_1_n_5 ;
  wire \l0_1_reg[15]_i_1_n_6 ;
  wire \l0_1_reg[15]_i_1_n_7 ;
  wire \l0_1_reg[7]_i_1_n_0 ;
  wire \l0_1_reg[7]_i_1_n_1 ;
  wire \l0_1_reg[7]_i_1_n_2 ;
  wire \l0_1_reg[7]_i_1_n_3 ;
  wire \l0_1_reg[7]_i_1_n_4 ;
  wire \l0_1_reg[7]_i_1_n_5 ;
  wire \l0_1_reg[7]_i_1_n_6 ;
  wire \l0_1_reg[7]_i_1_n_7 ;
  wire [15:0]l0_2;
  wire [16:0]l0_3;
  wire [16:0]l0_30;
  wire \l0_3[15]_i_2_n_0 ;
  wire \l0_3[15]_i_3_n_0 ;
  wire \l0_3[15]_i_4_n_0 ;
  wire \l0_3[15]_i_5_n_0 ;
  wire \l0_3[15]_i_6_n_0 ;
  wire \l0_3[15]_i_7_n_0 ;
  wire \l0_3[15]_i_8_n_0 ;
  wire \l0_3[15]_i_9_n_0 ;
  wire \l0_3[7]_i_2_n_0 ;
  wire \l0_3[7]_i_3_n_0 ;
  wire \l0_3[7]_i_4_n_0 ;
  wire \l0_3[7]_i_5_n_0 ;
  wire \l0_3[7]_i_6_n_0 ;
  wire \l0_3[7]_i_7_n_0 ;
  wire \l0_3[7]_i_8_n_0 ;
  wire \l0_3[7]_i_9_n_0 ;
  wire \l0_3_reg[15]_i_1_n_0 ;
  wire \l0_3_reg[15]_i_1_n_1 ;
  wire \l0_3_reg[15]_i_1_n_2 ;
  wire \l0_3_reg[15]_i_1_n_3 ;
  wire \l0_3_reg[15]_i_1_n_4 ;
  wire \l0_3_reg[15]_i_1_n_5 ;
  wire \l0_3_reg[15]_i_1_n_6 ;
  wire \l0_3_reg[15]_i_1_n_7 ;
  wire \l0_3_reg[7]_i_1_n_0 ;
  wire \l0_3_reg[7]_i_1_n_1 ;
  wire \l0_3_reg[7]_i_1_n_2 ;
  wire \l0_3_reg[7]_i_1_n_3 ;
  wire \l0_3_reg[7]_i_1_n_4 ;
  wire \l0_3_reg[7]_i_1_n_5 ;
  wire \l0_3_reg[7]_i_1_n_6 ;
  wire \l0_3_reg[7]_i_1_n_7 ;
  wire [16:0]l0_4;
  wire [16:0]l0_40;
  wire \l0_4[15]_i_2_n_0 ;
  wire \l0_4[15]_i_3_n_0 ;
  wire \l0_4[15]_i_4_n_0 ;
  wire \l0_4[15]_i_5_n_0 ;
  wire \l0_4[15]_i_6_n_0 ;
  wire \l0_4[15]_i_7_n_0 ;
  wire \l0_4[15]_i_8_n_0 ;
  wire \l0_4[15]_i_9_n_0 ;
  wire \l0_4[7]_i_2_n_0 ;
  wire \l0_4[7]_i_3_n_0 ;
  wire \l0_4[7]_i_4_n_0 ;
  wire \l0_4[7]_i_5_n_0 ;
  wire \l0_4[7]_i_6_n_0 ;
  wire \l0_4[7]_i_7_n_0 ;
  wire \l0_4[7]_i_8_n_0 ;
  wire \l0_4[7]_i_9_n_0 ;
  wire \l0_4_reg[15]_i_1_n_0 ;
  wire \l0_4_reg[15]_i_1_n_1 ;
  wire \l0_4_reg[15]_i_1_n_2 ;
  wire \l0_4_reg[15]_i_1_n_3 ;
  wire \l0_4_reg[15]_i_1_n_4 ;
  wire \l0_4_reg[15]_i_1_n_5 ;
  wire \l0_4_reg[15]_i_1_n_6 ;
  wire \l0_4_reg[15]_i_1_n_7 ;
  wire \l0_4_reg[7]_i_1_n_0 ;
  wire \l0_4_reg[7]_i_1_n_1 ;
  wire \l0_4_reg[7]_i_1_n_2 ;
  wire \l0_4_reg[7]_i_1_n_3 ;
  wire \l0_4_reg[7]_i_1_n_4 ;
  wire \l0_4_reg[7]_i_1_n_5 ;
  wire \l0_4_reg[7]_i_1_n_6 ;
  wire \l0_4_reg[7]_i_1_n_7 ;
  wire l0_v;
  wire [17:0]l1_0;
  wire [17:0]l1_00;
  wire \l1_0[15]_i_2_n_0 ;
  wire \l1_0[15]_i_3_n_0 ;
  wire \l1_0[15]_i_4_n_0 ;
  wire \l1_0[15]_i_5_n_0 ;
  wire \l1_0[15]_i_6_n_0 ;
  wire \l1_0[15]_i_7_n_0 ;
  wire \l1_0[15]_i_8_n_0 ;
  wire \l1_0[15]_i_9_n_0 ;
  wire \l1_0[17]_i_2_n_0 ;
  wire \l1_0[7]_i_2_n_0 ;
  wire \l1_0[7]_i_3_n_0 ;
  wire \l1_0[7]_i_4_n_0 ;
  wire \l1_0[7]_i_5_n_0 ;
  wire \l1_0[7]_i_6_n_0 ;
  wire \l1_0[7]_i_7_n_0 ;
  wire \l1_0[7]_i_8_n_0 ;
  wire \l1_0[7]_i_9_n_0 ;
  wire \l1_0_reg[15]_i_1_n_0 ;
  wire \l1_0_reg[15]_i_1_n_1 ;
  wire \l1_0_reg[15]_i_1_n_2 ;
  wire \l1_0_reg[15]_i_1_n_3 ;
  wire \l1_0_reg[15]_i_1_n_4 ;
  wire \l1_0_reg[15]_i_1_n_5 ;
  wire \l1_0_reg[15]_i_1_n_6 ;
  wire \l1_0_reg[15]_i_1_n_7 ;
  wire \l1_0_reg[7]_i_1_n_0 ;
  wire \l1_0_reg[7]_i_1_n_1 ;
  wire \l1_0_reg[7]_i_1_n_2 ;
  wire \l1_0_reg[7]_i_1_n_3 ;
  wire \l1_0_reg[7]_i_1_n_4 ;
  wire \l1_0_reg[7]_i_1_n_5 ;
  wire \l1_0_reg[7]_i_1_n_6 ;
  wire \l1_0_reg[7]_i_1_n_7 ;
  wire [17:0]l1_1;
  wire [17:0]l1_10;
  wire \l1_1[15]_i_2_n_0 ;
  wire \l1_1[15]_i_3_n_0 ;
  wire \l1_1[15]_i_4_n_0 ;
  wire \l1_1[15]_i_5_n_0 ;
  wire \l1_1[15]_i_6_n_0 ;
  wire \l1_1[15]_i_7_n_0 ;
  wire \l1_1[15]_i_8_n_0 ;
  wire \l1_1[15]_i_9_n_0 ;
  wire \l1_1[7]_i_2_n_0 ;
  wire \l1_1[7]_i_3_n_0 ;
  wire \l1_1[7]_i_4_n_0 ;
  wire \l1_1[7]_i_5_n_0 ;
  wire \l1_1[7]_i_6_n_0 ;
  wire \l1_1[7]_i_7_n_0 ;
  wire \l1_1[7]_i_8_n_0 ;
  wire \l1_1[7]_i_9_n_0 ;
  wire \l1_1_reg[15]_i_1_n_0 ;
  wire \l1_1_reg[15]_i_1_n_1 ;
  wire \l1_1_reg[15]_i_1_n_2 ;
  wire \l1_1_reg[15]_i_1_n_3 ;
  wire \l1_1_reg[15]_i_1_n_4 ;
  wire \l1_1_reg[15]_i_1_n_5 ;
  wire \l1_1_reg[15]_i_1_n_6 ;
  wire \l1_1_reg[15]_i_1_n_7 ;
  wire \l1_1_reg[7]_i_1_n_0 ;
  wire \l1_1_reg[7]_i_1_n_1 ;
  wire \l1_1_reg[7]_i_1_n_2 ;
  wire \l1_1_reg[7]_i_1_n_3 ;
  wire \l1_1_reg[7]_i_1_n_4 ;
  wire \l1_1_reg[7]_i_1_n_5 ;
  wire \l1_1_reg[7]_i_1_n_6 ;
  wire \l1_1_reg[7]_i_1_n_7 ;
  wire [16:0]l1_2;
  wire l1_v;
  wire [18:0]l2_0;
  wire [18:0]l2_00;
  wire \l2_0[15]_i_2_n_0 ;
  wire \l2_0[15]_i_3_n_0 ;
  wire \l2_0[15]_i_4_n_0 ;
  wire \l2_0[15]_i_5_n_0 ;
  wire \l2_0[15]_i_6_n_0 ;
  wire \l2_0[15]_i_7_n_0 ;
  wire \l2_0[15]_i_8_n_0 ;
  wire \l2_0[15]_i_9_n_0 ;
  wire \l2_0[18]_i_2_n_0 ;
  wire \l2_0[18]_i_3_n_0 ;
  wire \l2_0[7]_i_2_n_0 ;
  wire \l2_0[7]_i_3_n_0 ;
  wire \l2_0[7]_i_4_n_0 ;
  wire \l2_0[7]_i_5_n_0 ;
  wire \l2_0[7]_i_6_n_0 ;
  wire \l2_0[7]_i_7_n_0 ;
  wire \l2_0[7]_i_8_n_0 ;
  wire \l2_0[7]_i_9_n_0 ;
  wire \l2_0_reg[15]_i_1_n_0 ;
  wire \l2_0_reg[15]_i_1_n_1 ;
  wire \l2_0_reg[15]_i_1_n_2 ;
  wire \l2_0_reg[15]_i_1_n_3 ;
  wire \l2_0_reg[15]_i_1_n_4 ;
  wire \l2_0_reg[15]_i_1_n_5 ;
  wire \l2_0_reg[15]_i_1_n_6 ;
  wire \l2_0_reg[15]_i_1_n_7 ;
  wire \l2_0_reg[18]_i_1_n_7 ;
  wire \l2_0_reg[7]_i_1_n_0 ;
  wire \l2_0_reg[7]_i_1_n_1 ;
  wire \l2_0_reg[7]_i_1_n_2 ;
  wire \l2_0_reg[7]_i_1_n_3 ;
  wire \l2_0_reg[7]_i_1_n_4 ;
  wire \l2_0_reg[7]_i_1_n_5 ;
  wire \l2_0_reg[7]_i_1_n_6 ;
  wire \l2_0_reg[7]_i_1_n_7 ;
  wire [16:0]l2_1;
  wire l2_v;
  wire [19:0]l3_00;
  wire \l3_0[15]_i_2_n_0 ;
  wire \l3_0[15]_i_3_n_0 ;
  wire \l3_0[15]_i_4_n_0 ;
  wire \l3_0[15]_i_5_n_0 ;
  wire \l3_0[15]_i_6_n_0 ;
  wire \l3_0[15]_i_7_n_0 ;
  wire \l3_0[15]_i_8_n_0 ;
  wire \l3_0[15]_i_9_n_0 ;
  wire \l3_0[19]_i_2_n_0 ;
  wire \l3_0[7]_i_2_n_0 ;
  wire \l3_0[7]_i_3_n_0 ;
  wire \l3_0[7]_i_4_n_0 ;
  wire \l3_0[7]_i_5_n_0 ;
  wire \l3_0[7]_i_6_n_0 ;
  wire \l3_0[7]_i_7_n_0 ;
  wire \l3_0[7]_i_8_n_0 ;
  wire \l3_0[7]_i_9_n_0 ;
  wire \l3_0_reg[15]_i_1_n_0 ;
  wire \l3_0_reg[15]_i_1_n_1 ;
  wire \l3_0_reg[15]_i_1_n_2 ;
  wire \l3_0_reg[15]_i_1_n_3 ;
  wire \l3_0_reg[15]_i_1_n_4 ;
  wire \l3_0_reg[15]_i_1_n_5 ;
  wire \l3_0_reg[15]_i_1_n_6 ;
  wire \l3_0_reg[15]_i_1_n_7 ;
  wire \l3_0_reg[19]_i_1_n_6 ;
  wire \l3_0_reg[19]_i_1_n_7 ;
  wire \l3_0_reg[7]_i_1_n_0 ;
  wire \l3_0_reg[7]_i_1_n_1 ;
  wire \l3_0_reg[7]_i_1_n_2 ;
  wire \l3_0_reg[7]_i_1_n_3 ;
  wire \l3_0_reg[7]_i_1_n_4 ;
  wire \l3_0_reg[7]_i_1_n_5 ;
  wire \l3_0_reg[7]_i_1_n_6 ;
  wire \l3_0_reg[7]_i_1_n_7 ;
  wire \l3_0_reg_n_0_[0] ;
  wire \l3_0_reg_n_0_[10] ;
  wire \l3_0_reg_n_0_[11] ;
  wire \l3_0_reg_n_0_[12] ;
  wire \l3_0_reg_n_0_[13] ;
  wire \l3_0_reg_n_0_[14] ;
  wire \l3_0_reg_n_0_[15] ;
  wire \l3_0_reg_n_0_[1] ;
  wire \l3_0_reg_n_0_[2] ;
  wire \l3_0_reg_n_0_[3] ;
  wire \l3_0_reg_n_0_[4] ;
  wire \l3_0_reg_n_0_[5] ;
  wire \l3_0_reg_n_0_[6] ;
  wire \l3_0_reg_n_0_[7] ;
  wire \l3_0_reg_n_0_[8] ;
  wire \l3_0_reg_n_0_[9] ;
  wire l3_v;
  wire \l4_0[7]_i_2_n_0 ;
  wire \l4_0[7]_i_3_n_0 ;
  wire \l4_0[7]_i_4_n_0 ;
  wire \l4_0[7]_i_5_n_0 ;
  wire \l4_0_reg[15]_i_1_n_0 ;
  wire \l4_0_reg[15]_i_1_n_1 ;
  wire \l4_0_reg[15]_i_1_n_10 ;
  wire \l4_0_reg[15]_i_1_n_11 ;
  wire \l4_0_reg[15]_i_1_n_12 ;
  wire \l4_0_reg[15]_i_1_n_13 ;
  wire \l4_0_reg[15]_i_1_n_14 ;
  wire \l4_0_reg[15]_i_1_n_15 ;
  wire \l4_0_reg[15]_i_1_n_2 ;
  wire \l4_0_reg[15]_i_1_n_3 ;
  wire \l4_0_reg[15]_i_1_n_4 ;
  wire \l4_0_reg[15]_i_1_n_5 ;
  wire \l4_0_reg[15]_i_1_n_6 ;
  wire \l4_0_reg[15]_i_1_n_7 ;
  wire \l4_0_reg[15]_i_1_n_8 ;
  wire \l4_0_reg[15]_i_1_n_9 ;
  wire \l4_0_reg[16]_i_1_n_7 ;
  wire \l4_0_reg[7]_i_1_n_0 ;
  wire \l4_0_reg[7]_i_1_n_1 ;
  wire \l4_0_reg[7]_i_1_n_10 ;
  wire \l4_0_reg[7]_i_1_n_11 ;
  wire \l4_0_reg[7]_i_1_n_12 ;
  wire \l4_0_reg[7]_i_1_n_13 ;
  wire \l4_0_reg[7]_i_1_n_14 ;
  wire \l4_0_reg[7]_i_1_n_15 ;
  wire \l4_0_reg[7]_i_1_n_2 ;
  wire \l4_0_reg[7]_i_1_n_3 ;
  wire \l4_0_reg[7]_i_1_n_4 ;
  wire \l4_0_reg[7]_i_1_n_5 ;
  wire \l4_0_reg[7]_i_1_n_6 ;
  wire \l4_0_reg[7]_i_1_n_7 ;
  wire \l4_0_reg[7]_i_1_n_8 ;
  wire \l4_0_reg[7]_i_1_n_9 ;
  wire \l4_0_reg_n_0_[0] ;
  wire \l4_0_reg_n_0_[10] ;
  wire \l4_0_reg_n_0_[11] ;
  wire \l4_0_reg_n_0_[12] ;
  wire \l4_0_reg_n_0_[13] ;
  wire \l4_0_reg_n_0_[14] ;
  wire \l4_0_reg_n_0_[15] ;
  wire \l4_0_reg_n_0_[1] ;
  wire \l4_0_reg_n_0_[2] ;
  wire \l4_0_reg_n_0_[3] ;
  wire \l4_0_reg_n_0_[4] ;
  wire \l4_0_reg_n_0_[5] ;
  wire \l4_0_reg_n_0_[6] ;
  wire \l4_0_reg_n_0_[7] ;
  wire \l4_0_reg_n_0_[8] ;
  wire \l4_0_reg_n_0_[9] ;
  wire l4_v;
  wire l5_000;
  wire \l5_0[7]_i_2_n_0 ;
  wire \l5_0_reg[15]_i_1_n_1 ;
  wire \l5_0_reg[15]_i_1_n_10 ;
  wire \l5_0_reg[15]_i_1_n_11 ;
  wire \l5_0_reg[15]_i_1_n_12 ;
  wire \l5_0_reg[15]_i_1_n_13 ;
  wire \l5_0_reg[15]_i_1_n_14 ;
  wire \l5_0_reg[15]_i_1_n_15 ;
  wire \l5_0_reg[15]_i_1_n_2 ;
  wire \l5_0_reg[15]_i_1_n_3 ;
  wire \l5_0_reg[15]_i_1_n_4 ;
  wire \l5_0_reg[15]_i_1_n_5 ;
  wire \l5_0_reg[15]_i_1_n_6 ;
  wire \l5_0_reg[15]_i_1_n_7 ;
  wire \l5_0_reg[15]_i_1_n_8 ;
  wire \l5_0_reg[15]_i_1_n_9 ;
  wire \l5_0_reg[7]_i_1_n_0 ;
  wire \l5_0_reg[7]_i_1_n_1 ;
  wire \l5_0_reg[7]_i_1_n_10 ;
  wire \l5_0_reg[7]_i_1_n_11 ;
  wire \l5_0_reg[7]_i_1_n_12 ;
  wire \l5_0_reg[7]_i_1_n_13 ;
  wire \l5_0_reg[7]_i_1_n_14 ;
  wire \l5_0_reg[7]_i_1_n_15 ;
  wire \l5_0_reg[7]_i_1_n_2 ;
  wire \l5_0_reg[7]_i_1_n_3 ;
  wire \l5_0_reg[7]_i_1_n_4 ;
  wire \l5_0_reg[7]_i_1_n_5 ;
  wire \l5_0_reg[7]_i_1_n_6 ;
  wire \l5_0_reg[7]_i_1_n_7 ;
  wire \l5_0_reg[7]_i_1_n_8 ;
  wire \l5_0_reg[7]_i_1_n_9 ;
  wire \l5_0_reg_n_0_[0] ;
  wire \l5_0_reg_n_0_[10] ;
  wire \l5_0_reg_n_0_[11] ;
  wire \l5_0_reg_n_0_[12] ;
  wire \l5_0_reg_n_0_[13] ;
  wire \l5_0_reg_n_0_[14] ;
  wire \l5_0_reg_n_0_[15] ;
  wire \l5_0_reg_n_0_[1] ;
  wire \l5_0_reg_n_0_[2] ;
  wire \l5_0_reg_n_0_[3] ;
  wire \l5_0_reg_n_0_[4] ;
  wire \l5_0_reg_n_0_[5] ;
  wire \l5_0_reg_n_0_[6] ;
  wire \l5_0_reg_n_0_[7] ;
  wire \l5_0_reg_n_0_[8] ;
  wire \l5_0_reg_n_0_[9] ;
  wire p_0_in;
  wire [3:0]p_1_in;
  wire rst;
  wire valid_in;
  wire valid_out;
  wire [7:1]\NLW_l0_0_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_l0_0_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_l0_1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_l0_1_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_l0_3_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_l0_3_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_l0_4_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_l0_4_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_l1_0_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_l1_0_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_l1_1_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_l1_1_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_l2_0_reg[18]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_l2_0_reg[18]_i_1_O_UNCONNECTED ;
  wire [7:2]\NLW_l3_0_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_l3_0_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_l4_0_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_l4_0_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_l5_0_reg[15]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0 
       (.I0(\l5_0_reg_n_0_[0] ),
        .O(data_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[10]_INST_0 
       (.I0(\l5_0_reg_n_0_[10] ),
        .O(data_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[11]_INST_0 
       (.I0(\l5_0_reg_n_0_[11] ),
        .O(data_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0 
       (.I0(\l5_0_reg_n_0_[12] ),
        .O(data_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[13]_INST_0 
       (.I0(\l5_0_reg_n_0_[13] ),
        .O(data_out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[14]_INST_0 
       (.I0(\l5_0_reg_n_0_[14] ),
        .O(data_out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_INST_0 
       (.I0(\l5_0_reg_n_0_[15] ),
        .O(data_out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[1]_INST_0 
       (.I0(\l5_0_reg_n_0_[1] ),
        .O(data_out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[2]_INST_0 
       (.I0(\l5_0_reg_n_0_[2] ),
        .O(data_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[3]_INST_0 
       (.I0(\l5_0_reg_n_0_[3] ),
        .O(data_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[4]_INST_0 
       (.I0(\l5_0_reg_n_0_[4] ),
        .O(data_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[5]_INST_0 
       (.I0(\l5_0_reg_n_0_[5] ),
        .O(data_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[6]_INST_0 
       (.I0(\l5_0_reg_n_0_[6] ),
        .O(data_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[7]_INST_0 
       (.I0(\l5_0_reg_n_0_[7] ),
        .O(data_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[8]_INST_0 
       (.I0(\l5_0_reg_n_0_[8] ),
        .O(data_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[9]_INST_0 
       (.I0(\l5_0_reg_n_0_[9] ),
        .O(data_out[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_2 
       (.I0(data_in[143]),
        .I1(data_in[127]),
        .O(\l0_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_3 
       (.I0(data_in[142]),
        .I1(data_in[126]),
        .O(\l0_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_4 
       (.I0(data_in[141]),
        .I1(data_in[125]),
        .O(\l0_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_5 
       (.I0(data_in[140]),
        .I1(data_in[124]),
        .O(\l0_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_6 
       (.I0(data_in[139]),
        .I1(data_in[123]),
        .O(\l0_0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_7 
       (.I0(data_in[138]),
        .I1(data_in[122]),
        .O(\l0_0[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_8 
       (.I0(data_in[137]),
        .I1(data_in[121]),
        .O(\l0_0[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[15]_i_9 
       (.I0(data_in[136]),
        .I1(data_in[120]),
        .O(\l0_0[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_2 
       (.I0(data_in[135]),
        .I1(data_in[119]),
        .O(\l0_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_3 
       (.I0(data_in[134]),
        .I1(data_in[118]),
        .O(\l0_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_4 
       (.I0(data_in[133]),
        .I1(data_in[117]),
        .O(\l0_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_5 
       (.I0(data_in[132]),
        .I1(data_in[116]),
        .O(\l0_0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_6 
       (.I0(data_in[131]),
        .I1(data_in[115]),
        .O(\l0_0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_7 
       (.I0(data_in[130]),
        .I1(data_in[114]),
        .O(\l0_0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_8 
       (.I0(data_in[129]),
        .I1(data_in[113]),
        .O(\l0_0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_0[7]_i_9 
       (.I0(data_in[128]),
        .I1(data_in[112]),
        .O(\l0_0[7]_i_9_n_0 ));
  FDRE \l0_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[0]),
        .Q(l0_0[0]),
        .R(p_0_in));
  FDRE \l0_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[10]),
        .Q(l0_0[10]),
        .R(p_0_in));
  FDRE \l0_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[11]),
        .Q(l0_0[11]),
        .R(p_0_in));
  FDRE \l0_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[12]),
        .Q(l0_0[12]),
        .R(p_0_in));
  FDRE \l0_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[13]),
        .Q(l0_0[13]),
        .R(p_0_in));
  FDRE \l0_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[14]),
        .Q(l0_0[14]),
        .R(p_0_in));
  FDRE \l0_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[15]),
        .Q(l0_0[15]),
        .R(p_0_in));
  CARRY8 \l0_0_reg[15]_i_1 
       (.CI(\l0_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l0_0_reg[15]_i_1_n_0 ,\l0_0_reg[15]_i_1_n_1 ,\l0_0_reg[15]_i_1_n_2 ,\l0_0_reg[15]_i_1_n_3 ,\l0_0_reg[15]_i_1_n_4 ,\l0_0_reg[15]_i_1_n_5 ,\l0_0_reg[15]_i_1_n_6 ,\l0_0_reg[15]_i_1_n_7 }),
        .DI(data_in[143:136]),
        .O(l0_00[15:8]),
        .S({\l0_0[15]_i_2_n_0 ,\l0_0[15]_i_3_n_0 ,\l0_0[15]_i_4_n_0 ,\l0_0[15]_i_5_n_0 ,\l0_0[15]_i_6_n_0 ,\l0_0[15]_i_7_n_0 ,\l0_0[15]_i_8_n_0 ,\l0_0[15]_i_9_n_0 }));
  FDRE \l0_0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[16]),
        .Q(l0_0[16]),
        .R(p_0_in));
  CARRY8 \l0_0_reg[16]_i_1 
       (.CI(\l0_0_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l0_0_reg[16]_i_1_CO_UNCONNECTED [7:1],l0_00[16]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_l0_0_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \l0_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[1]),
        .Q(l0_0[1]),
        .R(p_0_in));
  FDRE \l0_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[2]),
        .Q(l0_0[2]),
        .R(p_0_in));
  FDRE \l0_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[3]),
        .Q(l0_0[3]),
        .R(p_0_in));
  FDRE \l0_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[4]),
        .Q(l0_0[4]),
        .R(p_0_in));
  FDRE \l0_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[5]),
        .Q(l0_0[5]),
        .R(p_0_in));
  FDRE \l0_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[6]),
        .Q(l0_0[6]),
        .R(p_0_in));
  FDRE \l0_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[7]),
        .Q(l0_0[7]),
        .R(p_0_in));
  CARRY8 \l0_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l0_0_reg[7]_i_1_n_0 ,\l0_0_reg[7]_i_1_n_1 ,\l0_0_reg[7]_i_1_n_2 ,\l0_0_reg[7]_i_1_n_3 ,\l0_0_reg[7]_i_1_n_4 ,\l0_0_reg[7]_i_1_n_5 ,\l0_0_reg[7]_i_1_n_6 ,\l0_0_reg[7]_i_1_n_7 }),
        .DI(data_in[135:128]),
        .O(l0_00[7:0]),
        .S({\l0_0[7]_i_2_n_0 ,\l0_0[7]_i_3_n_0 ,\l0_0[7]_i_4_n_0 ,\l0_0[7]_i_5_n_0 ,\l0_0[7]_i_6_n_0 ,\l0_0[7]_i_7_n_0 ,\l0_0[7]_i_8_n_0 ,\l0_0[7]_i_9_n_0 }));
  FDRE \l0_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[8]),
        .Q(l0_0[8]),
        .R(p_0_in));
  FDRE \l0_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_00[9]),
        .Q(l0_0[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_2 
       (.I0(data_in[111]),
        .I1(data_in[95]),
        .O(\l0_1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_3 
       (.I0(data_in[110]),
        .I1(data_in[94]),
        .O(\l0_1[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_4 
       (.I0(data_in[109]),
        .I1(data_in[93]),
        .O(\l0_1[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_5 
       (.I0(data_in[108]),
        .I1(data_in[92]),
        .O(\l0_1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_6 
       (.I0(data_in[107]),
        .I1(data_in[91]),
        .O(\l0_1[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_7 
       (.I0(data_in[106]),
        .I1(data_in[90]),
        .O(\l0_1[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_8 
       (.I0(data_in[105]),
        .I1(data_in[89]),
        .O(\l0_1[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[15]_i_9 
       (.I0(data_in[104]),
        .I1(data_in[88]),
        .O(\l0_1[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_2 
       (.I0(data_in[103]),
        .I1(data_in[87]),
        .O(\l0_1[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_3 
       (.I0(data_in[102]),
        .I1(data_in[86]),
        .O(\l0_1[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_4 
       (.I0(data_in[101]),
        .I1(data_in[85]),
        .O(\l0_1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_5 
       (.I0(data_in[100]),
        .I1(data_in[84]),
        .O(\l0_1[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_6 
       (.I0(data_in[99]),
        .I1(data_in[83]),
        .O(\l0_1[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_7 
       (.I0(data_in[98]),
        .I1(data_in[82]),
        .O(\l0_1[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_8 
       (.I0(data_in[97]),
        .I1(data_in[81]),
        .O(\l0_1[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_1[7]_i_9 
       (.I0(data_in[96]),
        .I1(data_in[80]),
        .O(\l0_1[7]_i_9_n_0 ));
  FDRE \l0_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[0]),
        .Q(l0_1[0]),
        .R(p_0_in));
  FDRE \l0_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[10]),
        .Q(l0_1[10]),
        .R(p_0_in));
  FDRE \l0_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[11]),
        .Q(l0_1[11]),
        .R(p_0_in));
  FDRE \l0_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[12]),
        .Q(l0_1[12]),
        .R(p_0_in));
  FDRE \l0_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[13]),
        .Q(l0_1[13]),
        .R(p_0_in));
  FDRE \l0_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[14]),
        .Q(l0_1[14]),
        .R(p_0_in));
  FDRE \l0_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[15]),
        .Q(l0_1[15]),
        .R(p_0_in));
  CARRY8 \l0_1_reg[15]_i_1 
       (.CI(\l0_1_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l0_1_reg[15]_i_1_n_0 ,\l0_1_reg[15]_i_1_n_1 ,\l0_1_reg[15]_i_1_n_2 ,\l0_1_reg[15]_i_1_n_3 ,\l0_1_reg[15]_i_1_n_4 ,\l0_1_reg[15]_i_1_n_5 ,\l0_1_reg[15]_i_1_n_6 ,\l0_1_reg[15]_i_1_n_7 }),
        .DI(data_in[111:104]),
        .O(l0_10[15:8]),
        .S({\l0_1[15]_i_2_n_0 ,\l0_1[15]_i_3_n_0 ,\l0_1[15]_i_4_n_0 ,\l0_1[15]_i_5_n_0 ,\l0_1[15]_i_6_n_0 ,\l0_1[15]_i_7_n_0 ,\l0_1[15]_i_8_n_0 ,\l0_1[15]_i_9_n_0 }));
  FDRE \l0_1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[16]),
        .Q(l0_1[16]),
        .R(p_0_in));
  CARRY8 \l0_1_reg[16]_i_1 
       (.CI(\l0_1_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l0_1_reg[16]_i_1_CO_UNCONNECTED [7:1],l0_10[16]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_l0_1_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \l0_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[1]),
        .Q(l0_1[1]),
        .R(p_0_in));
  FDRE \l0_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[2]),
        .Q(l0_1[2]),
        .R(p_0_in));
  FDRE \l0_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[3]),
        .Q(l0_1[3]),
        .R(p_0_in));
  FDRE \l0_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[4]),
        .Q(l0_1[4]),
        .R(p_0_in));
  FDRE \l0_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[5]),
        .Q(l0_1[5]),
        .R(p_0_in));
  FDRE \l0_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[6]),
        .Q(l0_1[6]),
        .R(p_0_in));
  FDRE \l0_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[7]),
        .Q(l0_1[7]),
        .R(p_0_in));
  CARRY8 \l0_1_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l0_1_reg[7]_i_1_n_0 ,\l0_1_reg[7]_i_1_n_1 ,\l0_1_reg[7]_i_1_n_2 ,\l0_1_reg[7]_i_1_n_3 ,\l0_1_reg[7]_i_1_n_4 ,\l0_1_reg[7]_i_1_n_5 ,\l0_1_reg[7]_i_1_n_6 ,\l0_1_reg[7]_i_1_n_7 }),
        .DI(data_in[103:96]),
        .O(l0_10[7:0]),
        .S({\l0_1[7]_i_2_n_0 ,\l0_1[7]_i_3_n_0 ,\l0_1[7]_i_4_n_0 ,\l0_1[7]_i_5_n_0 ,\l0_1[7]_i_6_n_0 ,\l0_1[7]_i_7_n_0 ,\l0_1[7]_i_8_n_0 ,\l0_1[7]_i_9_n_0 }));
  FDRE \l0_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[8]),
        .Q(l0_1[8]),
        .R(p_0_in));
  FDRE \l0_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_10[9]),
        .Q(l0_1[9]),
        .R(p_0_in));
  FDRE \l0_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[64]),
        .Q(l0_2[0]),
        .R(p_0_in));
  FDRE \l0_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[74]),
        .Q(l0_2[10]),
        .R(p_0_in));
  FDRE \l0_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[75]),
        .Q(l0_2[11]),
        .R(p_0_in));
  FDRE \l0_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[76]),
        .Q(l0_2[12]),
        .R(p_0_in));
  FDRE \l0_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[77]),
        .Q(l0_2[13]),
        .R(p_0_in));
  FDRE \l0_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[78]),
        .Q(l0_2[14]),
        .R(p_0_in));
  FDRE \l0_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[79]),
        .Q(l0_2[15]),
        .R(p_0_in));
  FDRE \l0_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[65]),
        .Q(l0_2[1]),
        .R(p_0_in));
  FDRE \l0_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[66]),
        .Q(l0_2[2]),
        .R(p_0_in));
  FDRE \l0_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[67]),
        .Q(l0_2[3]),
        .R(p_0_in));
  FDRE \l0_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[68]),
        .Q(l0_2[4]),
        .R(p_0_in));
  FDRE \l0_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[69]),
        .Q(l0_2[5]),
        .R(p_0_in));
  FDRE \l0_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[70]),
        .Q(l0_2[6]),
        .R(p_0_in));
  FDRE \l0_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[71]),
        .Q(l0_2[7]),
        .R(p_0_in));
  FDRE \l0_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[72]),
        .Q(l0_2[8]),
        .R(p_0_in));
  FDRE \l0_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in[73]),
        .Q(l0_2[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_2 
       (.I0(data_in[63]),
        .I1(data_in[47]),
        .O(\l0_3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_3 
       (.I0(data_in[62]),
        .I1(data_in[46]),
        .O(\l0_3[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_4 
       (.I0(data_in[61]),
        .I1(data_in[45]),
        .O(\l0_3[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_5 
       (.I0(data_in[60]),
        .I1(data_in[44]),
        .O(\l0_3[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_6 
       (.I0(data_in[59]),
        .I1(data_in[43]),
        .O(\l0_3[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_7 
       (.I0(data_in[58]),
        .I1(data_in[42]),
        .O(\l0_3[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_8 
       (.I0(data_in[57]),
        .I1(data_in[41]),
        .O(\l0_3[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[15]_i_9 
       (.I0(data_in[56]),
        .I1(data_in[40]),
        .O(\l0_3[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_2 
       (.I0(data_in[55]),
        .I1(data_in[39]),
        .O(\l0_3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_3 
       (.I0(data_in[54]),
        .I1(data_in[38]),
        .O(\l0_3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_4 
       (.I0(data_in[53]),
        .I1(data_in[37]),
        .O(\l0_3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_5 
       (.I0(data_in[52]),
        .I1(data_in[36]),
        .O(\l0_3[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_6 
       (.I0(data_in[51]),
        .I1(data_in[35]),
        .O(\l0_3[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_7 
       (.I0(data_in[50]),
        .I1(data_in[34]),
        .O(\l0_3[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_8 
       (.I0(data_in[49]),
        .I1(data_in[33]),
        .O(\l0_3[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_3[7]_i_9 
       (.I0(data_in[48]),
        .I1(data_in[32]),
        .O(\l0_3[7]_i_9_n_0 ));
  FDRE \l0_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[0]),
        .Q(l0_3[0]),
        .R(p_0_in));
  FDRE \l0_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[10]),
        .Q(l0_3[10]),
        .R(p_0_in));
  FDRE \l0_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[11]),
        .Q(l0_3[11]),
        .R(p_0_in));
  FDRE \l0_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[12]),
        .Q(l0_3[12]),
        .R(p_0_in));
  FDRE \l0_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[13]),
        .Q(l0_3[13]),
        .R(p_0_in));
  FDRE \l0_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[14]),
        .Q(l0_3[14]),
        .R(p_0_in));
  FDRE \l0_3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[15]),
        .Q(l0_3[15]),
        .R(p_0_in));
  CARRY8 \l0_3_reg[15]_i_1 
       (.CI(\l0_3_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l0_3_reg[15]_i_1_n_0 ,\l0_3_reg[15]_i_1_n_1 ,\l0_3_reg[15]_i_1_n_2 ,\l0_3_reg[15]_i_1_n_3 ,\l0_3_reg[15]_i_1_n_4 ,\l0_3_reg[15]_i_1_n_5 ,\l0_3_reg[15]_i_1_n_6 ,\l0_3_reg[15]_i_1_n_7 }),
        .DI(data_in[63:56]),
        .O(l0_30[15:8]),
        .S({\l0_3[15]_i_2_n_0 ,\l0_3[15]_i_3_n_0 ,\l0_3[15]_i_4_n_0 ,\l0_3[15]_i_5_n_0 ,\l0_3[15]_i_6_n_0 ,\l0_3[15]_i_7_n_0 ,\l0_3[15]_i_8_n_0 ,\l0_3[15]_i_9_n_0 }));
  FDRE \l0_3_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[16]),
        .Q(l0_3[16]),
        .R(p_0_in));
  CARRY8 \l0_3_reg[16]_i_1 
       (.CI(\l0_3_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l0_3_reg[16]_i_1_CO_UNCONNECTED [7:1],l0_30[16]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_l0_3_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \l0_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[1]),
        .Q(l0_3[1]),
        .R(p_0_in));
  FDRE \l0_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[2]),
        .Q(l0_3[2]),
        .R(p_0_in));
  FDRE \l0_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[3]),
        .Q(l0_3[3]),
        .R(p_0_in));
  FDRE \l0_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[4]),
        .Q(l0_3[4]),
        .R(p_0_in));
  FDRE \l0_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[5]),
        .Q(l0_3[5]),
        .R(p_0_in));
  FDRE \l0_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[6]),
        .Q(l0_3[6]),
        .R(p_0_in));
  FDRE \l0_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[7]),
        .Q(l0_3[7]),
        .R(p_0_in));
  CARRY8 \l0_3_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l0_3_reg[7]_i_1_n_0 ,\l0_3_reg[7]_i_1_n_1 ,\l0_3_reg[7]_i_1_n_2 ,\l0_3_reg[7]_i_1_n_3 ,\l0_3_reg[7]_i_1_n_4 ,\l0_3_reg[7]_i_1_n_5 ,\l0_3_reg[7]_i_1_n_6 ,\l0_3_reg[7]_i_1_n_7 }),
        .DI(data_in[55:48]),
        .O(l0_30[7:0]),
        .S({\l0_3[7]_i_2_n_0 ,\l0_3[7]_i_3_n_0 ,\l0_3[7]_i_4_n_0 ,\l0_3[7]_i_5_n_0 ,\l0_3[7]_i_6_n_0 ,\l0_3[7]_i_7_n_0 ,\l0_3[7]_i_8_n_0 ,\l0_3[7]_i_9_n_0 }));
  FDRE \l0_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[8]),
        .Q(l0_3[8]),
        .R(p_0_in));
  FDRE \l0_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_30[9]),
        .Q(l0_3[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_2 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .O(\l0_4[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_3 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .O(\l0_4[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_4 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .O(\l0_4[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_5 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .O(\l0_4[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_6 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .O(\l0_4[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_7 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .O(\l0_4[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_8 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .O(\l0_4[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[15]_i_9 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .O(\l0_4[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_2 
       (.I0(data_in[23]),
        .I1(data_in[7]),
        .O(\l0_4[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_3 
       (.I0(data_in[22]),
        .I1(data_in[6]),
        .O(\l0_4[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_4 
       (.I0(data_in[21]),
        .I1(data_in[5]),
        .O(\l0_4[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_5 
       (.I0(data_in[20]),
        .I1(data_in[4]),
        .O(\l0_4[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_6 
       (.I0(data_in[19]),
        .I1(data_in[3]),
        .O(\l0_4[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_7 
       (.I0(data_in[18]),
        .I1(data_in[2]),
        .O(\l0_4[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_8 
       (.I0(data_in[17]),
        .I1(data_in[1]),
        .O(\l0_4[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l0_4[7]_i_9 
       (.I0(data_in[16]),
        .I1(data_in[0]),
        .O(\l0_4[7]_i_9_n_0 ));
  FDRE \l0_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[0]),
        .Q(l0_4[0]),
        .R(p_0_in));
  FDRE \l0_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[10]),
        .Q(l0_4[10]),
        .R(p_0_in));
  FDRE \l0_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[11]),
        .Q(l0_4[11]),
        .R(p_0_in));
  FDRE \l0_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[12]),
        .Q(l0_4[12]),
        .R(p_0_in));
  FDRE \l0_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[13]),
        .Q(l0_4[13]),
        .R(p_0_in));
  FDRE \l0_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[14]),
        .Q(l0_4[14]),
        .R(p_0_in));
  FDRE \l0_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[15]),
        .Q(l0_4[15]),
        .R(p_0_in));
  CARRY8 \l0_4_reg[15]_i_1 
       (.CI(\l0_4_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l0_4_reg[15]_i_1_n_0 ,\l0_4_reg[15]_i_1_n_1 ,\l0_4_reg[15]_i_1_n_2 ,\l0_4_reg[15]_i_1_n_3 ,\l0_4_reg[15]_i_1_n_4 ,\l0_4_reg[15]_i_1_n_5 ,\l0_4_reg[15]_i_1_n_6 ,\l0_4_reg[15]_i_1_n_7 }),
        .DI(data_in[31:24]),
        .O(l0_40[15:8]),
        .S({\l0_4[15]_i_2_n_0 ,\l0_4[15]_i_3_n_0 ,\l0_4[15]_i_4_n_0 ,\l0_4[15]_i_5_n_0 ,\l0_4[15]_i_6_n_0 ,\l0_4[15]_i_7_n_0 ,\l0_4[15]_i_8_n_0 ,\l0_4[15]_i_9_n_0 }));
  FDRE \l0_4_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[16]),
        .Q(l0_4[16]),
        .R(p_0_in));
  CARRY8 \l0_4_reg[16]_i_1 
       (.CI(\l0_4_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l0_4_reg[16]_i_1_CO_UNCONNECTED [7:1],l0_40[16]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_l0_4_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \l0_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[1]),
        .Q(l0_4[1]),
        .R(p_0_in));
  FDRE \l0_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[2]),
        .Q(l0_4[2]),
        .R(p_0_in));
  FDRE \l0_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[3]),
        .Q(l0_4[3]),
        .R(p_0_in));
  FDRE \l0_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[4]),
        .Q(l0_4[4]),
        .R(p_0_in));
  FDRE \l0_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[5]),
        .Q(l0_4[5]),
        .R(p_0_in));
  FDRE \l0_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[6]),
        .Q(l0_4[6]),
        .R(p_0_in));
  FDRE \l0_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[7]),
        .Q(l0_4[7]),
        .R(p_0_in));
  CARRY8 \l0_4_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l0_4_reg[7]_i_1_n_0 ,\l0_4_reg[7]_i_1_n_1 ,\l0_4_reg[7]_i_1_n_2 ,\l0_4_reg[7]_i_1_n_3 ,\l0_4_reg[7]_i_1_n_4 ,\l0_4_reg[7]_i_1_n_5 ,\l0_4_reg[7]_i_1_n_6 ,\l0_4_reg[7]_i_1_n_7 }),
        .DI(data_in[23:16]),
        .O(l0_40[7:0]),
        .S({\l0_4[7]_i_2_n_0 ,\l0_4[7]_i_3_n_0 ,\l0_4[7]_i_4_n_0 ,\l0_4[7]_i_5_n_0 ,\l0_4[7]_i_6_n_0 ,\l0_4[7]_i_7_n_0 ,\l0_4[7]_i_8_n_0 ,\l0_4[7]_i_9_n_0 }));
  FDRE \l0_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[8]),
        .Q(l0_4[8]),
        .R(p_0_in));
  FDRE \l0_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_40[9]),
        .Q(l0_4[9]),
        .R(p_0_in));
  FDRE l0_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_in),
        .Q(l0_v),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_2 
       (.I0(l0_0[15]),
        .I1(l0_1[15]),
        .O(\l1_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_3 
       (.I0(l0_0[14]),
        .I1(l0_1[14]),
        .O(\l1_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_4 
       (.I0(l0_0[13]),
        .I1(l0_1[13]),
        .O(\l1_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_5 
       (.I0(l0_0[12]),
        .I1(l0_1[12]),
        .O(\l1_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_6 
       (.I0(l0_0[11]),
        .I1(l0_1[11]),
        .O(\l1_0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_7 
       (.I0(l0_0[10]),
        .I1(l0_1[10]),
        .O(\l1_0[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_8 
       (.I0(l0_0[9]),
        .I1(l0_1[9]),
        .O(\l1_0[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[15]_i_9 
       (.I0(l0_0[8]),
        .I1(l0_1[8]),
        .O(\l1_0[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[17]_i_2 
       (.I0(l0_0[16]),
        .I1(l0_1[16]),
        .O(\l1_0[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_2 
       (.I0(l0_0[7]),
        .I1(l0_1[7]),
        .O(\l1_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_3 
       (.I0(l0_0[6]),
        .I1(l0_1[6]),
        .O(\l1_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_4 
       (.I0(l0_0[5]),
        .I1(l0_1[5]),
        .O(\l1_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_5 
       (.I0(l0_0[4]),
        .I1(l0_1[4]),
        .O(\l1_0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_6 
       (.I0(l0_0[3]),
        .I1(l0_1[3]),
        .O(\l1_0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_7 
       (.I0(l0_0[2]),
        .I1(l0_1[2]),
        .O(\l1_0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_8 
       (.I0(l0_0[1]),
        .I1(l0_1[1]),
        .O(\l1_0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_0[7]_i_9 
       (.I0(l0_0[0]),
        .I1(l0_1[0]),
        .O(\l1_0[7]_i_9_n_0 ));
  FDRE \l1_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[0]),
        .Q(l1_0[0]),
        .R(p_0_in));
  FDRE \l1_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[10]),
        .Q(l1_0[10]),
        .R(p_0_in));
  FDRE \l1_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[11]),
        .Q(l1_0[11]),
        .R(p_0_in));
  FDRE \l1_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[12]),
        .Q(l1_0[12]),
        .R(p_0_in));
  FDRE \l1_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[13]),
        .Q(l1_0[13]),
        .R(p_0_in));
  FDRE \l1_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[14]),
        .Q(l1_0[14]),
        .R(p_0_in));
  FDRE \l1_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[15]),
        .Q(l1_0[15]),
        .R(p_0_in));
  CARRY8 \l1_0_reg[15]_i_1 
       (.CI(\l1_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l1_0_reg[15]_i_1_n_0 ,\l1_0_reg[15]_i_1_n_1 ,\l1_0_reg[15]_i_1_n_2 ,\l1_0_reg[15]_i_1_n_3 ,\l1_0_reg[15]_i_1_n_4 ,\l1_0_reg[15]_i_1_n_5 ,\l1_0_reg[15]_i_1_n_6 ,\l1_0_reg[15]_i_1_n_7 }),
        .DI(l0_0[15:8]),
        .O(l1_00[15:8]),
        .S({\l1_0[15]_i_2_n_0 ,\l1_0[15]_i_3_n_0 ,\l1_0[15]_i_4_n_0 ,\l1_0[15]_i_5_n_0 ,\l1_0[15]_i_6_n_0 ,\l1_0[15]_i_7_n_0 ,\l1_0[15]_i_8_n_0 ,\l1_0[15]_i_9_n_0 }));
  FDRE \l1_0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[16]),
        .Q(l1_0[16]),
        .R(p_0_in));
  FDRE \l1_0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[17]),
        .Q(l1_0[17]),
        .R(p_0_in));
  CARRY8 \l1_0_reg[17]_i_1 
       (.CI(\l1_0_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l1_0_reg[17]_i_1_CO_UNCONNECTED [7:2],l1_00[17],\NLW_l1_0_reg[17]_i_1_CO_UNCONNECTED [0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,l0_0[16]}),
        .O({\NLW_l1_0_reg[17]_i_1_O_UNCONNECTED [7:1],l1_00[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\l1_0[17]_i_2_n_0 }));
  FDRE \l1_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[1]),
        .Q(l1_0[1]),
        .R(p_0_in));
  FDRE \l1_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[2]),
        .Q(l1_0[2]),
        .R(p_0_in));
  FDRE \l1_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[3]),
        .Q(l1_0[3]),
        .R(p_0_in));
  FDRE \l1_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[4]),
        .Q(l1_0[4]),
        .R(p_0_in));
  FDRE \l1_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[5]),
        .Q(l1_0[5]),
        .R(p_0_in));
  FDRE \l1_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[6]),
        .Q(l1_0[6]),
        .R(p_0_in));
  FDRE \l1_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[7]),
        .Q(l1_0[7]),
        .R(p_0_in));
  CARRY8 \l1_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l1_0_reg[7]_i_1_n_0 ,\l1_0_reg[7]_i_1_n_1 ,\l1_0_reg[7]_i_1_n_2 ,\l1_0_reg[7]_i_1_n_3 ,\l1_0_reg[7]_i_1_n_4 ,\l1_0_reg[7]_i_1_n_5 ,\l1_0_reg[7]_i_1_n_6 ,\l1_0_reg[7]_i_1_n_7 }),
        .DI(l0_0[7:0]),
        .O(l1_00[7:0]),
        .S({\l1_0[7]_i_2_n_0 ,\l1_0[7]_i_3_n_0 ,\l1_0[7]_i_4_n_0 ,\l1_0[7]_i_5_n_0 ,\l1_0[7]_i_6_n_0 ,\l1_0[7]_i_7_n_0 ,\l1_0[7]_i_8_n_0 ,\l1_0[7]_i_9_n_0 }));
  FDRE \l1_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[8]),
        .Q(l1_0[8]),
        .R(p_0_in));
  FDRE \l1_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_00[9]),
        .Q(l1_0[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_2 
       (.I0(l0_2[15]),
        .I1(l0_3[15]),
        .O(\l1_1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_3 
       (.I0(l0_2[14]),
        .I1(l0_3[14]),
        .O(\l1_1[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_4 
       (.I0(l0_2[13]),
        .I1(l0_3[13]),
        .O(\l1_1[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_5 
       (.I0(l0_2[12]),
        .I1(l0_3[12]),
        .O(\l1_1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_6 
       (.I0(l0_2[11]),
        .I1(l0_3[11]),
        .O(\l1_1[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_7 
       (.I0(l0_2[10]),
        .I1(l0_3[10]),
        .O(\l1_1[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_8 
       (.I0(l0_2[9]),
        .I1(l0_3[9]),
        .O(\l1_1[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[15]_i_9 
       (.I0(l0_2[8]),
        .I1(l0_3[8]),
        .O(\l1_1[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_2 
       (.I0(l0_2[7]),
        .I1(l0_3[7]),
        .O(\l1_1[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_3 
       (.I0(l0_2[6]),
        .I1(l0_3[6]),
        .O(\l1_1[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_4 
       (.I0(l0_2[5]),
        .I1(l0_3[5]),
        .O(\l1_1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_5 
       (.I0(l0_2[4]),
        .I1(l0_3[4]),
        .O(\l1_1[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_6 
       (.I0(l0_2[3]),
        .I1(l0_3[3]),
        .O(\l1_1[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_7 
       (.I0(l0_2[2]),
        .I1(l0_3[2]),
        .O(\l1_1[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_8 
       (.I0(l0_2[1]),
        .I1(l0_3[1]),
        .O(\l1_1[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l1_1[7]_i_9 
       (.I0(l0_2[0]),
        .I1(l0_3[0]),
        .O(\l1_1[7]_i_9_n_0 ));
  FDRE \l1_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[0]),
        .Q(l1_1[0]),
        .R(p_0_in));
  FDRE \l1_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[10]),
        .Q(l1_1[10]),
        .R(p_0_in));
  FDRE \l1_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[11]),
        .Q(l1_1[11]),
        .R(p_0_in));
  FDRE \l1_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[12]),
        .Q(l1_1[12]),
        .R(p_0_in));
  FDRE \l1_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[13]),
        .Q(l1_1[13]),
        .R(p_0_in));
  FDRE \l1_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[14]),
        .Q(l1_1[14]),
        .R(p_0_in));
  FDRE \l1_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[15]),
        .Q(l1_1[15]),
        .R(p_0_in));
  CARRY8 \l1_1_reg[15]_i_1 
       (.CI(\l1_1_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l1_1_reg[15]_i_1_n_0 ,\l1_1_reg[15]_i_1_n_1 ,\l1_1_reg[15]_i_1_n_2 ,\l1_1_reg[15]_i_1_n_3 ,\l1_1_reg[15]_i_1_n_4 ,\l1_1_reg[15]_i_1_n_5 ,\l1_1_reg[15]_i_1_n_6 ,\l1_1_reg[15]_i_1_n_7 }),
        .DI(l0_2[15:8]),
        .O(l1_10[15:8]),
        .S({\l1_1[15]_i_2_n_0 ,\l1_1[15]_i_3_n_0 ,\l1_1[15]_i_4_n_0 ,\l1_1[15]_i_5_n_0 ,\l1_1[15]_i_6_n_0 ,\l1_1[15]_i_7_n_0 ,\l1_1[15]_i_8_n_0 ,\l1_1[15]_i_9_n_0 }));
  FDRE \l1_1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[16]),
        .Q(l1_1[16]),
        .R(p_0_in));
  FDRE \l1_1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[17]),
        .Q(l1_1[17]),
        .R(p_0_in));
  CARRY8 \l1_1_reg[17]_i_1 
       (.CI(\l1_1_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l1_1_reg[17]_i_1_CO_UNCONNECTED [7:2],l1_10[17],\NLW_l1_1_reg[17]_i_1_CO_UNCONNECTED [0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_l1_1_reg[17]_i_1_O_UNCONNECTED [7:1],l1_10[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,l0_3[16]}));
  FDRE \l1_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[1]),
        .Q(l1_1[1]),
        .R(p_0_in));
  FDRE \l1_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[2]),
        .Q(l1_1[2]),
        .R(p_0_in));
  FDRE \l1_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[3]),
        .Q(l1_1[3]),
        .R(p_0_in));
  FDRE \l1_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[4]),
        .Q(l1_1[4]),
        .R(p_0_in));
  FDRE \l1_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[5]),
        .Q(l1_1[5]),
        .R(p_0_in));
  FDRE \l1_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[6]),
        .Q(l1_1[6]),
        .R(p_0_in));
  FDRE \l1_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[7]),
        .Q(l1_1[7]),
        .R(p_0_in));
  CARRY8 \l1_1_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l1_1_reg[7]_i_1_n_0 ,\l1_1_reg[7]_i_1_n_1 ,\l1_1_reg[7]_i_1_n_2 ,\l1_1_reg[7]_i_1_n_3 ,\l1_1_reg[7]_i_1_n_4 ,\l1_1_reg[7]_i_1_n_5 ,\l1_1_reg[7]_i_1_n_6 ,\l1_1_reg[7]_i_1_n_7 }),
        .DI(l0_2[7:0]),
        .O(l1_10[7:0]),
        .S({\l1_1[7]_i_2_n_0 ,\l1_1[7]_i_3_n_0 ,\l1_1[7]_i_4_n_0 ,\l1_1[7]_i_5_n_0 ,\l1_1[7]_i_6_n_0 ,\l1_1[7]_i_7_n_0 ,\l1_1[7]_i_8_n_0 ,\l1_1[7]_i_9_n_0 }));
  FDRE \l1_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[8]),
        .Q(l1_1[8]),
        .R(p_0_in));
  FDRE \l1_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_10[9]),
        .Q(l1_1[9]),
        .R(p_0_in));
  FDRE \l1_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[0]),
        .Q(l1_2[0]),
        .R(p_0_in));
  FDRE \l1_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[10]),
        .Q(l1_2[10]),
        .R(p_0_in));
  FDRE \l1_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[11]),
        .Q(l1_2[11]),
        .R(p_0_in));
  FDRE \l1_2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[12]),
        .Q(l1_2[12]),
        .R(p_0_in));
  FDRE \l1_2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[13]),
        .Q(l1_2[13]),
        .R(p_0_in));
  FDRE \l1_2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[14]),
        .Q(l1_2[14]),
        .R(p_0_in));
  FDRE \l1_2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[15]),
        .Q(l1_2[15]),
        .R(p_0_in));
  FDRE \l1_2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[16]),
        .Q(l1_2[16]),
        .R(p_0_in));
  FDRE \l1_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[1]),
        .Q(l1_2[1]),
        .R(p_0_in));
  FDRE \l1_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[2]),
        .Q(l1_2[2]),
        .R(p_0_in));
  FDRE \l1_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[3]),
        .Q(l1_2[3]),
        .R(p_0_in));
  FDRE \l1_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[4]),
        .Q(l1_2[4]),
        .R(p_0_in));
  FDRE \l1_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[5]),
        .Q(l1_2[5]),
        .R(p_0_in));
  FDRE \l1_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[6]),
        .Q(l1_2[6]),
        .R(p_0_in));
  FDRE \l1_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[7]),
        .Q(l1_2[7]),
        .R(p_0_in));
  FDRE \l1_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[8]),
        .Q(l1_2[8]),
        .R(p_0_in));
  FDRE \l1_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l0_4[9]),
        .Q(l1_2[9]),
        .R(p_0_in));
  FDRE l1_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(l0_v),
        .Q(l1_v),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_2 
       (.I0(l1_0[15]),
        .I1(l1_1[15]),
        .O(\l2_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_3 
       (.I0(l1_0[14]),
        .I1(l1_1[14]),
        .O(\l2_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_4 
       (.I0(l1_0[13]),
        .I1(l1_1[13]),
        .O(\l2_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_5 
       (.I0(l1_0[12]),
        .I1(l1_1[12]),
        .O(\l2_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_6 
       (.I0(l1_0[11]),
        .I1(l1_1[11]),
        .O(\l2_0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_7 
       (.I0(l1_0[10]),
        .I1(l1_1[10]),
        .O(\l2_0[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_8 
       (.I0(l1_0[9]),
        .I1(l1_1[9]),
        .O(\l2_0[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[15]_i_9 
       (.I0(l1_0[8]),
        .I1(l1_1[8]),
        .O(\l2_0[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[18]_i_2 
       (.I0(l1_0[17]),
        .I1(l1_1[17]),
        .O(\l2_0[18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[18]_i_3 
       (.I0(l1_0[16]),
        .I1(l1_1[16]),
        .O(\l2_0[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_2 
       (.I0(l1_0[7]),
        .I1(l1_1[7]),
        .O(\l2_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_3 
       (.I0(l1_0[6]),
        .I1(l1_1[6]),
        .O(\l2_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_4 
       (.I0(l1_0[5]),
        .I1(l1_1[5]),
        .O(\l2_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_5 
       (.I0(l1_0[4]),
        .I1(l1_1[4]),
        .O(\l2_0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_6 
       (.I0(l1_0[3]),
        .I1(l1_1[3]),
        .O(\l2_0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_7 
       (.I0(l1_0[2]),
        .I1(l1_1[2]),
        .O(\l2_0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_8 
       (.I0(l1_0[1]),
        .I1(l1_1[1]),
        .O(\l2_0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l2_0[7]_i_9 
       (.I0(l1_0[0]),
        .I1(l1_1[0]),
        .O(\l2_0[7]_i_9_n_0 ));
  FDRE \l2_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[0]),
        .Q(l2_0[0]),
        .R(p_0_in));
  FDRE \l2_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[10]),
        .Q(l2_0[10]),
        .R(p_0_in));
  FDRE \l2_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[11]),
        .Q(l2_0[11]),
        .R(p_0_in));
  FDRE \l2_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[12]),
        .Q(l2_0[12]),
        .R(p_0_in));
  FDRE \l2_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[13]),
        .Q(l2_0[13]),
        .R(p_0_in));
  FDRE \l2_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[14]),
        .Q(l2_0[14]),
        .R(p_0_in));
  FDRE \l2_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[15]),
        .Q(l2_0[15]),
        .R(p_0_in));
  CARRY8 \l2_0_reg[15]_i_1 
       (.CI(\l2_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l2_0_reg[15]_i_1_n_0 ,\l2_0_reg[15]_i_1_n_1 ,\l2_0_reg[15]_i_1_n_2 ,\l2_0_reg[15]_i_1_n_3 ,\l2_0_reg[15]_i_1_n_4 ,\l2_0_reg[15]_i_1_n_5 ,\l2_0_reg[15]_i_1_n_6 ,\l2_0_reg[15]_i_1_n_7 }),
        .DI(l1_0[15:8]),
        .O(l2_00[15:8]),
        .S({\l2_0[15]_i_2_n_0 ,\l2_0[15]_i_3_n_0 ,\l2_0[15]_i_4_n_0 ,\l2_0[15]_i_5_n_0 ,\l2_0[15]_i_6_n_0 ,\l2_0[15]_i_7_n_0 ,\l2_0[15]_i_8_n_0 ,\l2_0[15]_i_9_n_0 }));
  FDRE \l2_0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[16]),
        .Q(l2_0[16]),
        .R(p_0_in));
  FDRE \l2_0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[17]),
        .Q(l2_0[17]),
        .R(p_0_in));
  FDRE \l2_0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[18]),
        .Q(l2_0[18]),
        .R(p_0_in));
  CARRY8 \l2_0_reg[18]_i_1 
       (.CI(\l2_0_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l2_0_reg[18]_i_1_CO_UNCONNECTED [7:3],l2_00[18],\NLW_l2_0_reg[18]_i_1_CO_UNCONNECTED [1],\l2_0_reg[18]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,l1_0[17:16]}),
        .O({\NLW_l2_0_reg[18]_i_1_O_UNCONNECTED [7:2],l2_00[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\l2_0[18]_i_2_n_0 ,\l2_0[18]_i_3_n_0 }));
  FDRE \l2_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[1]),
        .Q(l2_0[1]),
        .R(p_0_in));
  FDRE \l2_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[2]),
        .Q(l2_0[2]),
        .R(p_0_in));
  FDRE \l2_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[3]),
        .Q(l2_0[3]),
        .R(p_0_in));
  FDRE \l2_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[4]),
        .Q(l2_0[4]),
        .R(p_0_in));
  FDRE \l2_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[5]),
        .Q(l2_0[5]),
        .R(p_0_in));
  FDRE \l2_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[6]),
        .Q(l2_0[6]),
        .R(p_0_in));
  FDRE \l2_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[7]),
        .Q(l2_0[7]),
        .R(p_0_in));
  CARRY8 \l2_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l2_0_reg[7]_i_1_n_0 ,\l2_0_reg[7]_i_1_n_1 ,\l2_0_reg[7]_i_1_n_2 ,\l2_0_reg[7]_i_1_n_3 ,\l2_0_reg[7]_i_1_n_4 ,\l2_0_reg[7]_i_1_n_5 ,\l2_0_reg[7]_i_1_n_6 ,\l2_0_reg[7]_i_1_n_7 }),
        .DI(l1_0[7:0]),
        .O(l2_00[7:0]),
        .S({\l2_0[7]_i_2_n_0 ,\l2_0[7]_i_3_n_0 ,\l2_0[7]_i_4_n_0 ,\l2_0[7]_i_5_n_0 ,\l2_0[7]_i_6_n_0 ,\l2_0[7]_i_7_n_0 ,\l2_0[7]_i_8_n_0 ,\l2_0[7]_i_9_n_0 }));
  FDRE \l2_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[8]),
        .Q(l2_0[8]),
        .R(p_0_in));
  FDRE \l2_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l2_00[9]),
        .Q(l2_0[9]),
        .R(p_0_in));
  FDRE \l2_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[0]),
        .Q(l2_1[0]),
        .R(p_0_in));
  FDRE \l2_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[10]),
        .Q(l2_1[10]),
        .R(p_0_in));
  FDRE \l2_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[11]),
        .Q(l2_1[11]),
        .R(p_0_in));
  FDRE \l2_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[12]),
        .Q(l2_1[12]),
        .R(p_0_in));
  FDRE \l2_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[13]),
        .Q(l2_1[13]),
        .R(p_0_in));
  FDRE \l2_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[14]),
        .Q(l2_1[14]),
        .R(p_0_in));
  FDRE \l2_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[15]),
        .Q(l2_1[15]),
        .R(p_0_in));
  FDRE \l2_1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[16]),
        .Q(l2_1[16]),
        .R(p_0_in));
  FDRE \l2_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[1]),
        .Q(l2_1[1]),
        .R(p_0_in));
  FDRE \l2_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[2]),
        .Q(l2_1[2]),
        .R(p_0_in));
  FDRE \l2_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[3]),
        .Q(l2_1[3]),
        .R(p_0_in));
  FDRE \l2_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[4]),
        .Q(l2_1[4]),
        .R(p_0_in));
  FDRE \l2_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[5]),
        .Q(l2_1[5]),
        .R(p_0_in));
  FDRE \l2_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[6]),
        .Q(l2_1[6]),
        .R(p_0_in));
  FDRE \l2_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[7]),
        .Q(l2_1[7]),
        .R(p_0_in));
  FDRE \l2_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[8]),
        .Q(l2_1[8]),
        .R(p_0_in));
  FDRE \l2_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l1_2[9]),
        .Q(l2_1[9]),
        .R(p_0_in));
  FDRE l2_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(l1_v),
        .Q(l2_v),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_2 
       (.I0(l2_0[15]),
        .I1(l2_1[15]),
        .O(\l3_0[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_3 
       (.I0(l2_0[14]),
        .I1(l2_1[14]),
        .O(\l3_0[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_4 
       (.I0(l2_0[13]),
        .I1(l2_1[13]),
        .O(\l3_0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_5 
       (.I0(l2_0[12]),
        .I1(l2_1[12]),
        .O(\l3_0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_6 
       (.I0(l2_0[11]),
        .I1(l2_1[11]),
        .O(\l3_0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_7 
       (.I0(l2_0[10]),
        .I1(l2_1[10]),
        .O(\l3_0[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_8 
       (.I0(l2_0[9]),
        .I1(l2_1[9]),
        .O(\l3_0[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[15]_i_9 
       (.I0(l2_0[8]),
        .I1(l2_1[8]),
        .O(\l3_0[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[19]_i_2 
       (.I0(l2_0[16]),
        .I1(l2_1[16]),
        .O(\l3_0[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_2 
       (.I0(l2_0[7]),
        .I1(l2_1[7]),
        .O(\l3_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_3 
       (.I0(l2_0[6]),
        .I1(l2_1[6]),
        .O(\l3_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_4 
       (.I0(l2_0[5]),
        .I1(l2_1[5]),
        .O(\l3_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_5 
       (.I0(l2_0[4]),
        .I1(l2_1[4]),
        .O(\l3_0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_6 
       (.I0(l2_0[3]),
        .I1(l2_1[3]),
        .O(\l3_0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_7 
       (.I0(l2_0[2]),
        .I1(l2_1[2]),
        .O(\l3_0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_8 
       (.I0(l2_0[1]),
        .I1(l2_1[1]),
        .O(\l3_0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l3_0[7]_i_9 
       (.I0(l2_0[0]),
        .I1(l2_1[0]),
        .O(\l3_0[7]_i_9_n_0 ));
  FDRE \l3_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[0]),
        .Q(\l3_0_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \l3_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[10]),
        .Q(\l3_0_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \l3_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[11]),
        .Q(\l3_0_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \l3_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[12]),
        .Q(\l3_0_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \l3_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[13]),
        .Q(\l3_0_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \l3_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[14]),
        .Q(\l3_0_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \l3_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[15]),
        .Q(\l3_0_reg_n_0_[15] ),
        .R(p_0_in));
  CARRY8 \l3_0_reg[15]_i_1 
       (.CI(\l3_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l3_0_reg[15]_i_1_n_0 ,\l3_0_reg[15]_i_1_n_1 ,\l3_0_reg[15]_i_1_n_2 ,\l3_0_reg[15]_i_1_n_3 ,\l3_0_reg[15]_i_1_n_4 ,\l3_0_reg[15]_i_1_n_5 ,\l3_0_reg[15]_i_1_n_6 ,\l3_0_reg[15]_i_1_n_7 }),
        .DI(l2_0[15:8]),
        .O(l3_00[15:8]),
        .S({\l3_0[15]_i_2_n_0 ,\l3_0[15]_i_3_n_0 ,\l3_0[15]_i_4_n_0 ,\l3_0[15]_i_5_n_0 ,\l3_0[15]_i_6_n_0 ,\l3_0[15]_i_7_n_0 ,\l3_0[15]_i_8_n_0 ,\l3_0[15]_i_9_n_0 }));
  FDRE \l3_0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[16]),
        .Q(p_1_in[0]),
        .R(p_0_in));
  FDRE \l3_0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[17]),
        .Q(p_1_in[1]),
        .R(p_0_in));
  FDRE \l3_0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[18]),
        .Q(p_1_in[2]),
        .R(p_0_in));
  FDRE \l3_0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[19]),
        .Q(p_1_in[3]),
        .R(p_0_in));
  CARRY8 \l3_0_reg[19]_i_1 
       (.CI(\l3_0_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l3_0_reg[19]_i_1_CO_UNCONNECTED [7:4],l3_00[19],\NLW_l3_0_reg[19]_i_1_CO_UNCONNECTED [2],\l3_0_reg[19]_i_1_n_6 ,\l3_0_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,l2_0[16]}),
        .O({\NLW_l3_0_reg[19]_i_1_O_UNCONNECTED [7:3],l3_00[18:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b1,l2_0[18:17],\l3_0[19]_i_2_n_0 }));
  FDRE \l3_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[1]),
        .Q(\l3_0_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \l3_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[2]),
        .Q(\l3_0_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \l3_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[3]),
        .Q(\l3_0_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \l3_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[4]),
        .Q(\l3_0_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \l3_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[5]),
        .Q(\l3_0_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \l3_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[6]),
        .Q(\l3_0_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \l3_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[7]),
        .Q(\l3_0_reg_n_0_[7] ),
        .R(p_0_in));
  CARRY8 \l3_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l3_0_reg[7]_i_1_n_0 ,\l3_0_reg[7]_i_1_n_1 ,\l3_0_reg[7]_i_1_n_2 ,\l3_0_reg[7]_i_1_n_3 ,\l3_0_reg[7]_i_1_n_4 ,\l3_0_reg[7]_i_1_n_5 ,\l3_0_reg[7]_i_1_n_6 ,\l3_0_reg[7]_i_1_n_7 }),
        .DI(l2_0[7:0]),
        .O(l3_00[7:0]),
        .S({\l3_0[7]_i_2_n_0 ,\l3_0[7]_i_3_n_0 ,\l3_0[7]_i_4_n_0 ,\l3_0[7]_i_5_n_0 ,\l3_0[7]_i_6_n_0 ,\l3_0[7]_i_7_n_0 ,\l3_0[7]_i_8_n_0 ,\l3_0[7]_i_9_n_0 }));
  FDRE \l3_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[8]),
        .Q(\l3_0_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \l3_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(l3_00[9]),
        .Q(\l3_0_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE l3_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(l2_v),
        .Q(l3_v),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l4_0[7]_i_2 
       (.I0(p_1_in[3]),
        .I1(\l3_0_reg_n_0_[3] ),
        .O(\l4_0[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l4_0[7]_i_3 
       (.I0(p_1_in[2]),
        .I1(\l3_0_reg_n_0_[2] ),
        .O(\l4_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l4_0[7]_i_4 
       (.I0(p_1_in[1]),
        .I1(\l3_0_reg_n_0_[1] ),
        .O(\l4_0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \l4_0[7]_i_5 
       (.I0(p_1_in[0]),
        .I1(\l3_0_reg_n_0_[0] ),
        .O(\l4_0[7]_i_5_n_0 ));
  FDRE \l4_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_15 ),
        .Q(\l4_0_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \l4_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_13 ),
        .Q(\l4_0_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \l4_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_12 ),
        .Q(\l4_0_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \l4_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_11 ),
        .Q(\l4_0_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \l4_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_10 ),
        .Q(\l4_0_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \l4_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_9 ),
        .Q(\l4_0_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \l4_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_8 ),
        .Q(\l4_0_reg_n_0_[15] ),
        .R(p_0_in));
  CARRY8 \l4_0_reg[15]_i_1 
       (.CI(\l4_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\l4_0_reg[15]_i_1_n_0 ,\l4_0_reg[15]_i_1_n_1 ,\l4_0_reg[15]_i_1_n_2 ,\l4_0_reg[15]_i_1_n_3 ,\l4_0_reg[15]_i_1_n_4 ,\l4_0_reg[15]_i_1_n_5 ,\l4_0_reg[15]_i_1_n_6 ,\l4_0_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\l4_0_reg[15]_i_1_n_8 ,\l4_0_reg[15]_i_1_n_9 ,\l4_0_reg[15]_i_1_n_10 ,\l4_0_reg[15]_i_1_n_11 ,\l4_0_reg[15]_i_1_n_12 ,\l4_0_reg[15]_i_1_n_13 ,\l4_0_reg[15]_i_1_n_14 ,\l4_0_reg[15]_i_1_n_15 }),
        .S({\l3_0_reg_n_0_[15] ,\l3_0_reg_n_0_[14] ,\l3_0_reg_n_0_[13] ,\l3_0_reg_n_0_[12] ,\l3_0_reg_n_0_[11] ,\l3_0_reg_n_0_[10] ,\l3_0_reg_n_0_[9] ,\l3_0_reg_n_0_[8] }));
  FDRE \l4_0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[16]_i_1_n_7 ),
        .Q(l5_000),
        .R(p_0_in));
  CARRY8 \l4_0_reg[16]_i_1 
       (.CI(\l4_0_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l4_0_reg[16]_i_1_CO_UNCONNECTED [7:1],\l4_0_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_l4_0_reg[16]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  FDRE \l4_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_14 ),
        .Q(\l4_0_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \l4_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_13 ),
        .Q(\l4_0_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \l4_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_12 ),
        .Q(\l4_0_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \l4_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_11 ),
        .Q(\l4_0_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \l4_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_10 ),
        .Q(\l4_0_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \l4_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_9 ),
        .Q(\l4_0_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \l4_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[7]_i_1_n_8 ),
        .Q(\l4_0_reg_n_0_[7] ),
        .R(p_0_in));
  CARRY8 \l4_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l4_0_reg[7]_i_1_n_0 ,\l4_0_reg[7]_i_1_n_1 ,\l4_0_reg[7]_i_1_n_2 ,\l4_0_reg[7]_i_1_n_3 ,\l4_0_reg[7]_i_1_n_4 ,\l4_0_reg[7]_i_1_n_5 ,\l4_0_reg[7]_i_1_n_6 ,\l4_0_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,p_1_in}),
        .O({\l4_0_reg[7]_i_1_n_8 ,\l4_0_reg[7]_i_1_n_9 ,\l4_0_reg[7]_i_1_n_10 ,\l4_0_reg[7]_i_1_n_11 ,\l4_0_reg[7]_i_1_n_12 ,\l4_0_reg[7]_i_1_n_13 ,\l4_0_reg[7]_i_1_n_14 ,\l4_0_reg[7]_i_1_n_15 }),
        .S({\l3_0_reg_n_0_[7] ,\l3_0_reg_n_0_[6] ,\l3_0_reg_n_0_[5] ,\l3_0_reg_n_0_[4] ,\l4_0[7]_i_2_n_0 ,\l4_0[7]_i_3_n_0 ,\l4_0[7]_i_4_n_0 ,\l4_0[7]_i_5_n_0 }));
  FDRE \l4_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_15 ),
        .Q(\l4_0_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \l4_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\l4_0_reg[15]_i_1_n_14 ),
        .Q(\l4_0_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE l4_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(l3_v),
        .Q(l4_v),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \l5_0[7]_i_2 
       (.I0(l5_000),
        .I1(\l4_0_reg_n_0_[0] ),
        .O(\l5_0[7]_i_2_n_0 ));
  FDRE \l5_0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_15 ),
        .Q(\l5_0_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \l5_0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_13 ),
        .Q(\l5_0_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \l5_0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_12 ),
        .Q(\l5_0_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \l5_0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_11 ),
        .Q(\l5_0_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \l5_0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_10 ),
        .Q(\l5_0_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \l5_0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_9 ),
        .Q(\l5_0_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \l5_0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_8 ),
        .Q(\l5_0_reg_n_0_[15] ),
        .R(p_0_in));
  CARRY8 \l5_0_reg[15]_i_1 
       (.CI(\l5_0_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_l5_0_reg[15]_i_1_CO_UNCONNECTED [7],\l5_0_reg[15]_i_1_n_1 ,\l5_0_reg[15]_i_1_n_2 ,\l5_0_reg[15]_i_1_n_3 ,\l5_0_reg[15]_i_1_n_4 ,\l5_0_reg[15]_i_1_n_5 ,\l5_0_reg[15]_i_1_n_6 ,\l5_0_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\l5_0_reg[15]_i_1_n_8 ,\l5_0_reg[15]_i_1_n_9 ,\l5_0_reg[15]_i_1_n_10 ,\l5_0_reg[15]_i_1_n_11 ,\l5_0_reg[15]_i_1_n_12 ,\l5_0_reg[15]_i_1_n_13 ,\l5_0_reg[15]_i_1_n_14 ,\l5_0_reg[15]_i_1_n_15 }),
        .S({\l4_0_reg_n_0_[15] ,\l4_0_reg_n_0_[14] ,\l4_0_reg_n_0_[13] ,\l4_0_reg_n_0_[12] ,\l4_0_reg_n_0_[11] ,\l4_0_reg_n_0_[10] ,\l4_0_reg_n_0_[9] ,\l4_0_reg_n_0_[8] }));
  FDRE \l5_0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_14 ),
        .Q(\l5_0_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \l5_0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_13 ),
        .Q(\l5_0_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \l5_0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_12 ),
        .Q(\l5_0_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \l5_0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_11 ),
        .Q(\l5_0_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \l5_0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_10 ),
        .Q(\l5_0_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \l5_0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_9 ),
        .Q(\l5_0_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \l5_0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[7]_i_1_n_8 ),
        .Q(\l5_0_reg_n_0_[7] ),
        .R(p_0_in));
  CARRY8 \l5_0_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\l5_0_reg[7]_i_1_n_0 ,\l5_0_reg[7]_i_1_n_1 ,\l5_0_reg[7]_i_1_n_2 ,\l5_0_reg[7]_i_1_n_3 ,\l5_0_reg[7]_i_1_n_4 ,\l5_0_reg[7]_i_1_n_5 ,\l5_0_reg[7]_i_1_n_6 ,\l5_0_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,l5_000}),
        .O({\l5_0_reg[7]_i_1_n_8 ,\l5_0_reg[7]_i_1_n_9 ,\l5_0_reg[7]_i_1_n_10 ,\l5_0_reg[7]_i_1_n_11 ,\l5_0_reg[7]_i_1_n_12 ,\l5_0_reg[7]_i_1_n_13 ,\l5_0_reg[7]_i_1_n_14 ,\l5_0_reg[7]_i_1_n_15 }),
        .S({\l4_0_reg_n_0_[7] ,\l4_0_reg_n_0_[6] ,\l4_0_reg_n_0_[5] ,\l4_0_reg_n_0_[4] ,\l4_0_reg_n_0_[3] ,\l4_0_reg_n_0_[2] ,\l4_0_reg_n_0_[1] ,\l5_0[7]_i_2_n_0 }));
  FDRE \l5_0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_15 ),
        .Q(\l5_0_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \l5_0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\l5_0_reg[15]_i_1_n_14 ),
        .Q(\l5_0_reg_n_0_[9] ),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    l5_v_i_1
       (.I0(rst),
        .O(p_0_in));
  FDRE l5_v_reg
       (.C(clk),
        .CE(1'b1),
        .D(l4_v),
        .Q(valid_out),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
