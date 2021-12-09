// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Sep 24 18:20:23 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_14_ilA/BD/ipsec_bd/ip/ipsec_bd_fifo_generator_plain_txt_len_enc_in_0/ipsec_bd_fifo_generator_plain_txt_len_enc_in_0_stub.v
// Design      : ipsec_bd_fifo_generator_plain_txt_len_enc_in_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.1_AR75245" *)
module ipsec_bd_fifo_generator_plain_txt_len_enc_in_0(clk, srst, din, wr_en, rd_en, dout, full, empty, 
  wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[15:0],wr_en,rd_en,dout[15:0],full,empty,wr_rst_busy,rd_rst_busy" */;
  input clk;
  input srst;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output empty;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
