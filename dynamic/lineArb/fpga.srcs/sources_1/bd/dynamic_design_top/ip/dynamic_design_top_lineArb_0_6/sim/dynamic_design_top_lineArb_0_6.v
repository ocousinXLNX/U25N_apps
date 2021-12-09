// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Xilinx:Fintech:lineArb:1.2
// IP Revision: 2109212245

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dynamic_design_top_lineArb_0_6 (
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_RREADY,
  ap_clk,
  ap_rst_n,
  in_0_TVALID,
  in_0_TREADY,
  in_0_TDATA,
  in_0_TLAST,
  in_0_TKEEP,
  in_0_TSTRB,
  in_1_TVALID,
  in_1_TREADY,
  in_1_TDATA,
  in_1_TLAST,
  in_1_TKEEP,
  in_1_TSTRB,
  in_2_TVALID,
  in_2_TREADY,
  in_2_TDATA,
  in_2_TLAST,
  in_2_TKEEP,
  in_2_TSTRB,
  in_3_TVALID,
  in_3_TREADY,
  in_3_TDATA,
  in_3_TLAST,
  in_3_TKEEP,
  in_3_TSTRB,
  out_0_TVALID,
  out_0_TREADY,
  out_0_TDATA,
  out_0_TLAST,
  out_0_TKEEP,
  out_0_TSTRB,
  out_1_TVALID,
  out_1_TREADY,
  out_1_TDATA,
  out_1_TLAST,
  out_1_TKEEP,
  out_1_TSTRB,
  out_2_TVALID,
  out_2_TREADY,
  out_2_TDATA,
  out_2_TLAST,
  out_2_TKEEP,
  out_2_TSTRB,
  out_3_TVALID,
  out_3_TREADY,
  out_3_TDATA,
  out_3_TLAST,
  out_3_TKEEP,
  out_3_TSTRB
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [11 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
input wire [11 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 12, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 200000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:in_0:in_1:in_2:in_3:out_0:out_1:out_2:out_3, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TVALID" *)
input wire in_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TREADY" *)
output wire in_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TDATA" *)
input wire [511 : 0] in_0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TLAST" *)
input wire [0 : 0] in_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TKEEP" *)
input wire [63 : 0] in_0_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_0, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_0 TSTRB" *)
input wire [63 : 0] in_0_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TVALID" *)
input wire in_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TREADY" *)
output wire in_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TDATA" *)
input wire [511 : 0] in_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TLAST" *)
input wire [0 : 0] in_1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TKEEP" *)
input wire [63 : 0] in_1_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_1, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_1 TSTRB" *)
input wire [63 : 0] in_1_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TVALID" *)
input wire in_2_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TREADY" *)
output wire in_2_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TDATA" *)
input wire [511 : 0] in_2_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TLAST" *)
input wire [0 : 0] in_2_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TKEEP" *)
input wire [63 : 0] in_2_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_2, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_2 TSTRB" *)
input wire [63 : 0] in_2_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TVALID" *)
input wire in_3_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TREADY" *)
output wire in_3_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TDATA" *)
input wire [511 : 0] in_3_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TLAST" *)
input wire [0 : 0] in_3_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TKEEP" *)
input wire [63 : 0] in_3_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_3, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_3 TSTRB" *)
input wire [63 : 0] in_3_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TVALID" *)
output wire out_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TREADY" *)
input wire out_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TDATA" *)
output wire [511 : 0] out_0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TLAST" *)
output wire [0 : 0] out_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TKEEP" *)
output wire [63 : 0] out_0_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_0, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_0 TSTRB" *)
output wire [63 : 0] out_0_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TVALID" *)
output wire out_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TREADY" *)
input wire out_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TDATA" *)
output wire [511 : 0] out_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TLAST" *)
output wire [0 : 0] out_1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TKEEP" *)
output wire [63 : 0] out_1_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_1, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_1 TSTRB" *)
output wire [63 : 0] out_1_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TVALID" *)
output wire out_2_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TREADY" *)
input wire out_2_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TDATA" *)
output wire [511 : 0] out_2_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TLAST" *)
output wire [0 : 0] out_2_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TKEEP" *)
output wire [63 : 0] out_2_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_2, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_2 TSTRB" *)
output wire [63 : 0] out_2_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TVALID" *)
output wire out_3_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TREADY" *)
input wire out_3_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TDATA" *)
output wire [511 : 0] out_3_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TLAST" *)
output wire [0 : 0] out_3_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TKEEP" *)
output wire [63 : 0] out_3_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_3, TDATA_NUM_BYTES 64, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_200M_in, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_3 TSTRB" *)
output wire [63 : 0] out_3_TSTRB;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  lineArb #(
    .C_S_AXI_CTRL_ADDR_WIDTH(12),
    .C_S_AXI_CTRL_DATA_WIDTH(32)
  ) inst (
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .in_0_TVALID(in_0_TVALID),
    .in_0_TREADY(in_0_TREADY),
    .in_0_TDATA(in_0_TDATA),
    .in_0_TLAST(in_0_TLAST),
    .in_0_TKEEP(in_0_TKEEP),
    .in_0_TSTRB(in_0_TSTRB),
    .in_1_TVALID(in_1_TVALID),
    .in_1_TREADY(in_1_TREADY),
    .in_1_TDATA(in_1_TDATA),
    .in_1_TLAST(in_1_TLAST),
    .in_1_TKEEP(in_1_TKEEP),
    .in_1_TSTRB(in_1_TSTRB),
    .in_2_TVALID(in_2_TVALID),
    .in_2_TREADY(in_2_TREADY),
    .in_2_TDATA(in_2_TDATA),
    .in_2_TLAST(in_2_TLAST),
    .in_2_TKEEP(in_2_TKEEP),
    .in_2_TSTRB(in_2_TSTRB),
    .in_3_TVALID(in_3_TVALID),
    .in_3_TREADY(in_3_TREADY),
    .in_3_TDATA(in_3_TDATA),
    .in_3_TLAST(in_3_TLAST),
    .in_3_TKEEP(in_3_TKEEP),
    .in_3_TSTRB(in_3_TSTRB),
    .out_0_TVALID(out_0_TVALID),
    .out_0_TREADY(out_0_TREADY),
    .out_0_TDATA(out_0_TDATA),
    .out_0_TLAST(out_0_TLAST),
    .out_0_TKEEP(out_0_TKEEP),
    .out_0_TSTRB(out_0_TSTRB),
    .out_1_TVALID(out_1_TVALID),
    .out_1_TREADY(out_1_TREADY),
    .out_1_TDATA(out_1_TDATA),
    .out_1_TLAST(out_1_TLAST),
    .out_1_TKEEP(out_1_TKEEP),
    .out_1_TSTRB(out_1_TSTRB),
    .out_2_TVALID(out_2_TVALID),
    .out_2_TREADY(out_2_TREADY),
    .out_2_TDATA(out_2_TDATA),
    .out_2_TLAST(out_2_TLAST),
    .out_2_TKEEP(out_2_TKEEP),
    .out_2_TSTRB(out_2_TSTRB),
    .out_3_TVALID(out_3_TVALID),
    .out_3_TREADY(out_3_TREADY),
    .out_3_TDATA(out_3_TDATA),
    .out_3_TLAST(out_3_TLAST),
    .out_3_TKEEP(out_3_TKEEP),
    .out_3_TSTRB(out_3_TSTRB)
  );
endmodule
