// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:19:40 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_esp_trailer_addition_0_0/ipsec_bd_esp_trailer_addition_0_0_stub.v
// Design      : ipsec_bd_esp_trailer_addition_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "esp_trailer_addition,Vivado 2020.1_AR75245" *)
module ipsec_bd_esp_trailer_addition_0_0(s_axis_tdata, s_axis_tkeep, s_axis_tdest, 
  s_axis_tvalid, s_axis_tlast, s_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tvalid, 
  m_axis_tlast, m_axis_tready, length_bytes_o, length_valid_o, s_axis_aclk, s_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tdest[15:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,length_bytes_o[15:0],length_valid_o,s_axis_aclk,s_axis_aresetn" */;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [15:0]s_axis_tdest;
  input s_axis_tvalid;
  input s_axis_tlast;
  output s_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  output [15:0]length_bytes_o;
  output length_valid_o;
  input s_axis_aclk;
  input s_axis_aresetn;
endmodule
