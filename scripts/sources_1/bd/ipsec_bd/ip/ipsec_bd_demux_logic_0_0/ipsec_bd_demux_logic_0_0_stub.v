// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep 29 19:49:22 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_1A/BD/ipsec_bd/ip/ipsec_bd_demux_logic_0_0/ipsec_bd_demux_logic_0_0_stub.v
// Design      : ipsec_bd_demux_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "demux_logic,Vivado 2020.1_AR75245" *)
module ipsec_bd_demux_logic_0_0(s_axis_aclk, s_axis_aresetn, demux_en, 
  s_axis_tvalid, s_axis_tready, s_axis_tlast, s_axis_tdata, s_axis_tkeep, s_axis_tdest, 
  m0_axis_tvalid, m0_axis_tready, m0_axis_tlast, m0_axis_tdata, m0_axis_tkeep, m0_axis_tdest, 
  m1_axis_tvalid, m1_axis_tready, m1_axis_tlast, m1_axis_tdata, m1_axis_tkeep, m1_axis_tdest)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aclk,s_axis_aresetn,demux_en,s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tdest[15:0],m0_axis_tvalid,m0_axis_tready,m0_axis_tlast,m0_axis_tdata[127:0],m0_axis_tkeep[15:0],m0_axis_tdest[15:0],m1_axis_tvalid,m1_axis_tready,m1_axis_tlast,m1_axis_tdata[127:0],m1_axis_tkeep[15:0],m1_axis_tdest[15:0]" */;
  input s_axis_aclk;
  input s_axis_aresetn;
  input demux_en;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [15:0]s_axis_tdest;
  output m0_axis_tvalid;
  input m0_axis_tready;
  output m0_axis_tlast;
  output [127:0]m0_axis_tdata;
  output [15:0]m0_axis_tkeep;
  output [15:0]m0_axis_tdest;
  output m1_axis_tvalid;
  input m1_axis_tready;
  output m1_axis_tlast;
  output [127:0]m1_axis_tdata;
  output [15:0]m1_axis_tkeep;
  output [15:0]m1_axis_tdest;
endmodule
