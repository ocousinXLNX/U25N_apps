// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:10:08 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_flow_control_0_0/ipsec_bd_mac_flow_control_0_0_stub.v
// Design      : ipsec_bd_mac_flow_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mac_flow_control,Vivado 2020.1_AR75245" *)
module ipsec_bd_mac_flow_control_0_0(s00_axi_aclk, m00_axi_aclk, s00_axi_aresetn, 
  i_fifo_full, i_stat_tx_pause_valid, o_fifo_full_ila, o_ctl_tx_pause_req, 
  o_ctl_tx_resend_pause)
/* synthesis syn_black_box black_box_pad_pin="s00_axi_aclk,m00_axi_aclk,s00_axi_aresetn,i_fifo_full,i_stat_tx_pause_valid[8:0],o_fifo_full_ila,o_ctl_tx_pause_req[8:0],o_ctl_tx_resend_pause" */;
  input s00_axi_aclk;
  input m00_axi_aclk;
  input s00_axi_aresetn;
  input i_fifo_full;
  input [8:0]i_stat_tx_pause_valid;
  output o_fifo_full_ila;
  output [8:0]o_ctl_tx_pause_req;
  output o_ctl_tx_resend_pause;
endmodule
