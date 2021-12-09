// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Sep 22 09:41:16 2021
// Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/kestera/U25N/u25n_dfx/dynamic/lineArb/fpga.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_reset_latch_dyn_0_0/dynamic_design_top_reset_latch_dyn_0_0_stub.v
// Design      : dynamic_design_top_reset_latch_dyn_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reset_latch_dyn,Vivado 2020.1" *)
module dynamic_design_top_reset_latch_dyn_0_0(clk_100M_in, clk_200M_in, clk_400M_in, 
  clk_250M_in, resetn_in, rstn_100M, rstn_200M, rstn_250M, rstn_400M)
/* synthesis syn_black_box black_box_pad_pin="clk_100M_in,clk_200M_in,clk_400M_in,clk_250M_in,resetn_in,rstn_100M,rstn_200M,rstn_250M,rstn_400M" */;
  input clk_100M_in;
  input clk_200M_in;
  input clk_400M_in;
  input clk_250M_in;
  input resetn_in;
  output rstn_100M;
  output rstn_200M;
  output rstn_250M;
  output rstn_400M;
endmodule
