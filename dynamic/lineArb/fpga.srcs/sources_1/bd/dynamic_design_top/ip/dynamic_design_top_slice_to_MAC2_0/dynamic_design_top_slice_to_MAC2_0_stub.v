// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Sep 22 09:41:21 2021
// Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top dynamic_design_top_slice_to_MAC2_0 -prefix
//               dynamic_design_top_slice_to_MAC2_0_ dynamic_design_top_slice_to_MAC0_0_stub.v
// Design      : dynamic_design_top_slice_to_MAC0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *)
module dynamic_design_top_slice_to_MAC2_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tstrb, s_axis_tkeep, s_axis_tlast, s_axis_tdest, m_axis_tvalid, 
  m_axis_tready, m_axis_tdata, m_axis_tstrb, m_axis_tkeep, m_axis_tlast, m_axis_tdest)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[511:0],s_axis_tstrb[63:0],s_axis_tkeep[63:0],s_axis_tlast,s_axis_tdest[1:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[511:0],m_axis_tstrb[63:0],m_axis_tkeep[63:0],m_axis_tlast,m_axis_tdest[1:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [511:0]s_axis_tdata;
  input [63:0]s_axis_tstrb;
  input [63:0]s_axis_tkeep;
  input s_axis_tlast;
  input [1:0]s_axis_tdest;
  output m_axis_tvalid;
  input m_axis_tready;
  output [511:0]m_axis_tdata;
  output [63:0]m_axis_tstrb;
  output [63:0]m_axis_tkeep;
  output m_axis_tlast;
  output [1:0]m_axis_tdest;
endmodule
