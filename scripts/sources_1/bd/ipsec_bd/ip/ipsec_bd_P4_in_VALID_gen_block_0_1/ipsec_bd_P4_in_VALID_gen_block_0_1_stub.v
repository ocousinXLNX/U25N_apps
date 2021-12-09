// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep 15 13:05:40 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_0C/BD/ipsec_bd/ip/ipsec_bd_P4_in_VALID_gen_block_0_1/ipsec_bd_P4_in_VALID_gen_block_0_1_stub.v
// Design      : ipsec_bd_P4_in_VALID_gen_block_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "P4_in_VALID_gen_block,Vivado 2020.1_AR75245" *)
module ipsec_bd_P4_in_VALID_gen_block_0_1(s_axis_aclk, m_axis_aclk, s_axis_aresetn, 
  s_axis_tvalid, s_axis_tready, s_axis_tlast, s_axis_tdata, s_axis_tkeep, s_axis_tdest, 
  m_axis_tvalid, m_axis_tready, m_axis_tlast, m_axis_tdata, m_axis_tkeep, m_axis_tdest, 
  Tuser_valid_out, Tdest_valid_out)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aclk,m_axis_aclk,s_axis_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tdest[580:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tdest[580:0],Tuser_valid_out,Tdest_valid_out" */;
  input s_axis_aclk;
  input m_axis_aclk;
  input s_axis_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [580:0]s_axis_tdest;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output [580:0]m_axis_tdest;
  output Tuser_valid_out;
  output Tdest_valid_out;
endmodule
