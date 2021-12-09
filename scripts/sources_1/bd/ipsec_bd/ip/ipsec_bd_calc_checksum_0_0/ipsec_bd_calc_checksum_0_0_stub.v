// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:26:33 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_calc_checksum_0_0/ipsec_bd_calc_checksum_0_0_stub.v
// Design      : ipsec_bd_calc_checksum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "calc_checksum,Vivado 2020.1_AR75245" *)
module ipsec_bd_calc_checksum_0_0(clk, rst, valid_in, data_in, valid_out, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,valid_in,data_in[159:0],valid_out,data_out[15:0]" */;
  input clk;
  input rst;
  input valid_in;
  input [159:0]data_in;
  output valid_out;
  output [15:0]data_out;
endmodule
