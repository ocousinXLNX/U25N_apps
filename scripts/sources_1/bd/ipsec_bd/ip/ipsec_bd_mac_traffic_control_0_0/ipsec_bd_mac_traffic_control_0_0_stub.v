// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:08:25 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_traffic_control_0_0/ipsec_bd_mac_traffic_control_0_0_stub.v
// Design      : ipsec_bd_mac_traffic_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mac_traffic_control,Vivado 2020.1_AR75245" *)
module ipsec_bd_mac_traffic_control_0_0(clk, rst_n, s_axis_TData, s_axis_TKeep, 
  s_axis_TValid, s_axis_TReady, s_axis_TLast, s_axis_TDest, m0_axis_TData, m0_axis_TKeep, 
  m0_axis_TValid, m0_axis_TReady, m0_axis_TLast, m0_axis_TDest, m1_axis_TData, m1_axis_TKeep, 
  m1_axis_TValid, m1_axis_TReady, m1_axis_TLast, m1_axis_TDest, fifo_prog_full)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,s_axis_TData[63:0],s_axis_TKeep[7:0],s_axis_TValid,s_axis_TReady,s_axis_TLast,s_axis_TDest[10:0],m0_axis_TData[63:0],m0_axis_TKeep[7:0],m0_axis_TValid,m0_axis_TReady,m0_axis_TLast,m0_axis_TDest[10:0],m1_axis_TData[63:0],m1_axis_TKeep[7:0],m1_axis_TValid,m1_axis_TReady,m1_axis_TLast,m1_axis_TDest[10:0],fifo_prog_full" */;
  input clk;
  input rst_n;
  input [63:0]s_axis_TData;
  input [7:0]s_axis_TKeep;
  input s_axis_TValid;
  output s_axis_TReady;
  input s_axis_TLast;
  input [10:0]s_axis_TDest;
  output [63:0]m0_axis_TData;
  output [7:0]m0_axis_TKeep;
  output m0_axis_TValid;
  input m0_axis_TReady;
  output m0_axis_TLast;
  output [10:0]m0_axis_TDest;
  output [63:0]m1_axis_TData;
  output [7:0]m1_axis_TKeep;
  output m1_axis_TValid;
  input m1_axis_TReady;
  output m1_axis_TLast;
  output [10:0]m1_axis_TDest;
  input fifo_prog_full;
endmodule
