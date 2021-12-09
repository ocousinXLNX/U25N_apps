// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Sep 22 09:47:23 2021
// Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/kestera/U25N/u25n_dfx/dynamic/lineArb/fpga.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_lineArb_0_6/dynamic_design_top_lineArb_0_6_stub.v
// Design      : dynamic_design_top_lineArb_0_6
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lineArb,Vivado 2020.1" *)
module dynamic_design_top_lineArb_0_6(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, ap_clk, ap_rst_n, in_0_TVALID, 
  in_0_TREADY, in_0_TDATA, in_0_TLAST, in_0_TKEEP, in_0_TSTRB, in_1_TVALID, in_1_TREADY, 
  in_1_TDATA, in_1_TLAST, in_1_TKEEP, in_1_TSTRB, in_2_TVALID, in_2_TREADY, in_2_TDATA, 
  in_2_TLAST, in_2_TKEEP, in_2_TSTRB, in_3_TVALID, in_3_TREADY, in_3_TDATA, in_3_TLAST, 
  in_3_TKEEP, in_3_TSTRB, out_0_TVALID, out_0_TREADY, out_0_TDATA, out_0_TLAST, out_0_TKEEP, 
  out_0_TSTRB, out_1_TVALID, out_1_TREADY, out_1_TDATA, out_1_TLAST, out_1_TKEEP, out_1_TSTRB, 
  out_2_TVALID, out_2_TREADY, out_2_TDATA, out_2_TLAST, out_2_TKEEP, out_2_TSTRB, out_3_TVALID, 
  out_3_TREADY, out_3_TDATA, out_3_TLAST, out_3_TKEEP, out_3_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[11:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[11:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,in_0_TVALID,in_0_TREADY,in_0_TDATA[511:0],in_0_TLAST[0:0],in_0_TKEEP[63:0],in_0_TSTRB[63:0],in_1_TVALID,in_1_TREADY,in_1_TDATA[511:0],in_1_TLAST[0:0],in_1_TKEEP[63:0],in_1_TSTRB[63:0],in_2_TVALID,in_2_TREADY,in_2_TDATA[511:0],in_2_TLAST[0:0],in_2_TKEEP[63:0],in_2_TSTRB[63:0],in_3_TVALID,in_3_TREADY,in_3_TDATA[511:0],in_3_TLAST[0:0],in_3_TKEEP[63:0],in_3_TSTRB[63:0],out_0_TVALID,out_0_TREADY,out_0_TDATA[511:0],out_0_TLAST[0:0],out_0_TKEEP[63:0],out_0_TSTRB[63:0],out_1_TVALID,out_1_TREADY,out_1_TDATA[511:0],out_1_TLAST[0:0],out_1_TKEEP[63:0],out_1_TSTRB[63:0],out_2_TVALID,out_2_TREADY,out_2_TDATA[511:0],out_2_TLAST[0:0],out_2_TKEEP[63:0],out_2_TSTRB[63:0],out_3_TVALID,out_3_TREADY,out_3_TDATA[511:0],out_3_TLAST[0:0],out_3_TKEEP[63:0],out_3_TSTRB[63:0]" */;
  input [11:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [11:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  input in_0_TVALID;
  output in_0_TREADY;
  input [511:0]in_0_TDATA;
  input [0:0]in_0_TLAST;
  input [63:0]in_0_TKEEP;
  input [63:0]in_0_TSTRB;
  input in_1_TVALID;
  output in_1_TREADY;
  input [511:0]in_1_TDATA;
  input [0:0]in_1_TLAST;
  input [63:0]in_1_TKEEP;
  input [63:0]in_1_TSTRB;
  input in_2_TVALID;
  output in_2_TREADY;
  input [511:0]in_2_TDATA;
  input [0:0]in_2_TLAST;
  input [63:0]in_2_TKEEP;
  input [63:0]in_2_TSTRB;
  input in_3_TVALID;
  output in_3_TREADY;
  input [511:0]in_3_TDATA;
  input [0:0]in_3_TLAST;
  input [63:0]in_3_TKEEP;
  input [63:0]in_3_TSTRB;
  output out_0_TVALID;
  input out_0_TREADY;
  output [511:0]out_0_TDATA;
  output [0:0]out_0_TLAST;
  output [63:0]out_0_TKEEP;
  output [63:0]out_0_TSTRB;
  output out_1_TVALID;
  input out_1_TREADY;
  output [511:0]out_1_TDATA;
  output [0:0]out_1_TLAST;
  output [63:0]out_1_TKEEP;
  output [63:0]out_1_TSTRB;
  output out_2_TVALID;
  input out_2_TREADY;
  output [511:0]out_2_TDATA;
  output [0:0]out_2_TLAST;
  output [63:0]out_2_TKEEP;
  output [63:0]out_2_TSTRB;
  output out_3_TVALID;
  input out_3_TREADY;
  output [511:0]out_3_TDATA;
  output [0:0]out_3_TLAST;
  output [63:0]out_3_TKEEP;
  output [63:0]out_3_TSTRB;
endmodule
