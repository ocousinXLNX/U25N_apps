//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Sep 22 09:38:16 2021
//Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target dynamic_design_top_wrapper.bd
//Design      : dynamic_design_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dynamic_design_top_wrapper
   (DDR_clk_n,
    DDR_clk_p,
    M_AXIS_MAC0_tdata,
    M_AXIS_MAC0_tdest,
    M_AXIS_MAC0_tkeep,
    M_AXIS_MAC0_tlast,
    M_AXIS_MAC0_tready,
    M_AXIS_MAC0_tstrb,
    M_AXIS_MAC0_tvalid,
    M_AXIS_MAC1_tdata,
    M_AXIS_MAC1_tdest,
    M_AXIS_MAC1_tkeep,
    M_AXIS_MAC1_tlast,
    M_AXIS_MAC1_tready,
    M_AXIS_MAC1_tstrb,
    M_AXIS_MAC1_tvalid,
    M_AXIS_MAC2_tdata,
    M_AXIS_MAC2_tdest,
    M_AXIS_MAC2_tkeep,
    M_AXIS_MAC2_tlast,
    M_AXIS_MAC2_tready,
    M_AXIS_MAC2_tstrb,
    M_AXIS_MAC2_tvalid,
    M_AXIS_MAC3_tdata,
    M_AXIS_MAC3_tdest,
    M_AXIS_MAC3_tkeep,
    M_AXIS_MAC3_tlast,
    M_AXIS_MAC3_tready,
    M_AXIS_MAC3_tstrb,
    M_AXIS_MAC3_tvalid,
    S_AXIS_MAC0_tdata,
    S_AXIS_MAC0_tdest,
    S_AXIS_MAC0_tkeep,
    S_AXIS_MAC0_tlast,
    S_AXIS_MAC0_tready,
    S_AXIS_MAC0_tvalid,
    S_AXIS_MAC1_tdata,
    S_AXIS_MAC1_tdest,
    S_AXIS_MAC1_tkeep,
    S_AXIS_MAC1_tlast,
    S_AXIS_MAC1_tready,
    S_AXIS_MAC1_tvalid,
    S_AXIS_MAC2_MAC3_tdata,
    S_AXIS_MAC2_MAC3_tdest,
    S_AXIS_MAC2_MAC3_tkeep,
    S_AXIS_MAC2_MAC3_tlast,
    S_AXIS_MAC2_MAC3_tready,
    S_AXIS_MAC2_MAC3_tvalid,
    S_AXI_Lite_araddr,
    S_AXI_Lite_arprot,
    S_AXI_Lite_arready,
    S_AXI_Lite_arvalid,
    S_AXI_Lite_awaddr,
    S_AXI_Lite_awprot,
    S_AXI_Lite_awready,
    S_AXI_Lite_awvalid,
    S_AXI_Lite_bready,
    S_AXI_Lite_bresp,
    S_AXI_Lite_bvalid,
    S_AXI_Lite_rdata,
    S_AXI_Lite_rready,
    S_AXI_Lite_rresp,
    S_AXI_Lite_rvalid,
    S_AXI_Lite_wdata,
    S_AXI_Lite_wready,
    S_AXI_Lite_wstrb,
    S_AXI_Lite_wvalid,
    clk_100M_in,
    clk_200M_in,
    clk_250M_in,
    clk_400M_in,
    resetn);
  input DDR_clk_n;
  input DDR_clk_p;
  output [511:0]M_AXIS_MAC0_tdata;
  output [1:0]M_AXIS_MAC0_tdest;
  output [63:0]M_AXIS_MAC0_tkeep;
  output M_AXIS_MAC0_tlast;
  input M_AXIS_MAC0_tready;
  output [63:0]M_AXIS_MAC0_tstrb;
  output M_AXIS_MAC0_tvalid;
  output [511:0]M_AXIS_MAC1_tdata;
  output [1:0]M_AXIS_MAC1_tdest;
  output [63:0]M_AXIS_MAC1_tkeep;
  output M_AXIS_MAC1_tlast;
  input M_AXIS_MAC1_tready;
  output [63:0]M_AXIS_MAC1_tstrb;
  output M_AXIS_MAC1_tvalid;
  output [511:0]M_AXIS_MAC2_tdata;
  output [1:0]M_AXIS_MAC2_tdest;
  output [63:0]M_AXIS_MAC2_tkeep;
  output M_AXIS_MAC2_tlast;
  input M_AXIS_MAC2_tready;
  output [63:0]M_AXIS_MAC2_tstrb;
  output M_AXIS_MAC2_tvalid;
  output [511:0]M_AXIS_MAC3_tdata;
  output [1:0]M_AXIS_MAC3_tdest;
  output [63:0]M_AXIS_MAC3_tkeep;
  output M_AXIS_MAC3_tlast;
  input M_AXIS_MAC3_tready;
  output [63:0]M_AXIS_MAC3_tstrb;
  output M_AXIS_MAC3_tvalid;
  input [511:0]S_AXIS_MAC0_tdata;
  input [1:0]S_AXIS_MAC0_tdest;
  input [63:0]S_AXIS_MAC0_tkeep;
  input S_AXIS_MAC0_tlast;
  output S_AXIS_MAC0_tready;
  input S_AXIS_MAC0_tvalid;
  input [511:0]S_AXIS_MAC1_tdata;
  input [1:0]S_AXIS_MAC1_tdest;
  input [63:0]S_AXIS_MAC1_tkeep;
  input S_AXIS_MAC1_tlast;
  output S_AXIS_MAC1_tready;
  input S_AXIS_MAC1_tvalid;
  input [511:0]S_AXIS_MAC2_MAC3_tdata;
  input [1:0]S_AXIS_MAC2_MAC3_tdest;
  input [63:0]S_AXIS_MAC2_MAC3_tkeep;
  input S_AXIS_MAC2_MAC3_tlast;
  output S_AXIS_MAC2_MAC3_tready;
  input S_AXIS_MAC2_MAC3_tvalid;
  input [39:0]S_AXI_Lite_araddr;
  input [2:0]S_AXI_Lite_arprot;
  output S_AXI_Lite_arready;
  input S_AXI_Lite_arvalid;
  input [39:0]S_AXI_Lite_awaddr;
  input [2:0]S_AXI_Lite_awprot;
  output S_AXI_Lite_awready;
  input S_AXI_Lite_awvalid;
  input S_AXI_Lite_bready;
  output [1:0]S_AXI_Lite_bresp;
  output S_AXI_Lite_bvalid;
  output [31:0]S_AXI_Lite_rdata;
  input S_AXI_Lite_rready;
  output [1:0]S_AXI_Lite_rresp;
  output S_AXI_Lite_rvalid;
  input [31:0]S_AXI_Lite_wdata;
  output S_AXI_Lite_wready;
  input [3:0]S_AXI_Lite_wstrb;
  input S_AXI_Lite_wvalid;
  input clk_100M_in;
  input clk_200M_in;
  input clk_250M_in;
  input clk_400M_in;
  input resetn;

  wire DDR_clk_n;
  wire DDR_clk_p;
  wire [511:0]M_AXIS_MAC0_tdata;
  wire [1:0]M_AXIS_MAC0_tdest;
  wire [63:0]M_AXIS_MAC0_tkeep;
  wire M_AXIS_MAC0_tlast;
  wire M_AXIS_MAC0_tready;
  wire [63:0]M_AXIS_MAC0_tstrb;
  wire M_AXIS_MAC0_tvalid;
  wire [511:0]M_AXIS_MAC1_tdata;
  wire [1:0]M_AXIS_MAC1_tdest;
  wire [63:0]M_AXIS_MAC1_tkeep;
  wire M_AXIS_MAC1_tlast;
  wire M_AXIS_MAC1_tready;
  wire [63:0]M_AXIS_MAC1_tstrb;
  wire M_AXIS_MAC1_tvalid;
  wire [511:0]M_AXIS_MAC2_tdata;
  wire [1:0]M_AXIS_MAC2_tdest;
  wire [63:0]M_AXIS_MAC2_tkeep;
  wire M_AXIS_MAC2_tlast;
  wire M_AXIS_MAC2_tready;
  wire [63:0]M_AXIS_MAC2_tstrb;
  wire M_AXIS_MAC2_tvalid;
  wire [511:0]M_AXIS_MAC3_tdata;
  wire [1:0]M_AXIS_MAC3_tdest;
  wire [63:0]M_AXIS_MAC3_tkeep;
  wire M_AXIS_MAC3_tlast;
  wire M_AXIS_MAC3_tready;
  wire [63:0]M_AXIS_MAC3_tstrb;
  wire M_AXIS_MAC3_tvalid;
  wire [511:0]S_AXIS_MAC0_tdata;
  wire [1:0]S_AXIS_MAC0_tdest;
  wire [63:0]S_AXIS_MAC0_tkeep;
  wire S_AXIS_MAC0_tlast;
  wire S_AXIS_MAC0_tready;
  wire S_AXIS_MAC0_tvalid;
  wire [511:0]S_AXIS_MAC1_tdata;
  wire [1:0]S_AXIS_MAC1_tdest;
  wire [63:0]S_AXIS_MAC1_tkeep;
  wire S_AXIS_MAC1_tlast;
  wire S_AXIS_MAC1_tready;
  wire S_AXIS_MAC1_tvalid;
  wire [511:0]S_AXIS_MAC2_MAC3_tdata;
  wire [1:0]S_AXIS_MAC2_MAC3_tdest;
  wire [63:0]S_AXIS_MAC2_MAC3_tkeep;
  wire S_AXIS_MAC2_MAC3_tlast;
  wire S_AXIS_MAC2_MAC3_tready;
  wire S_AXIS_MAC2_MAC3_tvalid;
  wire [39:0]S_AXI_Lite_araddr;
  wire [2:0]S_AXI_Lite_arprot;
  wire S_AXI_Lite_arready;
  wire S_AXI_Lite_arvalid;
  wire [39:0]S_AXI_Lite_awaddr;
  wire [2:0]S_AXI_Lite_awprot;
  wire S_AXI_Lite_awready;
  wire S_AXI_Lite_awvalid;
  wire S_AXI_Lite_bready;
  wire [1:0]S_AXI_Lite_bresp;
  wire S_AXI_Lite_bvalid;
  wire [31:0]S_AXI_Lite_rdata;
  wire S_AXI_Lite_rready;
  wire [1:0]S_AXI_Lite_rresp;
  wire S_AXI_Lite_rvalid;
  wire [31:0]S_AXI_Lite_wdata;
  wire S_AXI_Lite_wready;
  wire [3:0]S_AXI_Lite_wstrb;
  wire S_AXI_Lite_wvalid;
  wire clk_100M_in;
  wire clk_200M_in;
  wire clk_250M_in;
  wire clk_400M_in;
  wire resetn;

  dynamic_design_top dynamic_design_top_i
       (.DDR_clk_n(DDR_clk_n),
        .DDR_clk_p(DDR_clk_p),
        .M_AXIS_MAC0_tdata(M_AXIS_MAC0_tdata),
        .M_AXIS_MAC0_tdest(M_AXIS_MAC0_tdest),
        .M_AXIS_MAC0_tkeep(M_AXIS_MAC0_tkeep),
        .M_AXIS_MAC0_tlast(M_AXIS_MAC0_tlast),
        .M_AXIS_MAC0_tready(M_AXIS_MAC0_tready),
        .M_AXIS_MAC0_tstrb(M_AXIS_MAC0_tstrb),
        .M_AXIS_MAC0_tvalid(M_AXIS_MAC0_tvalid),
        .M_AXIS_MAC1_tdata(M_AXIS_MAC1_tdata),
        .M_AXIS_MAC1_tdest(M_AXIS_MAC1_tdest),
        .M_AXIS_MAC1_tkeep(M_AXIS_MAC1_tkeep),
        .M_AXIS_MAC1_tlast(M_AXIS_MAC1_tlast),
        .M_AXIS_MAC1_tready(M_AXIS_MAC1_tready),
        .M_AXIS_MAC1_tstrb(M_AXIS_MAC1_tstrb),
        .M_AXIS_MAC1_tvalid(M_AXIS_MAC1_tvalid),
        .M_AXIS_MAC2_tdata(M_AXIS_MAC2_tdata),
        .M_AXIS_MAC2_tdest(M_AXIS_MAC2_tdest),
        .M_AXIS_MAC2_tkeep(M_AXIS_MAC2_tkeep),
        .M_AXIS_MAC2_tlast(M_AXIS_MAC2_tlast),
        .M_AXIS_MAC2_tready(M_AXIS_MAC2_tready),
        .M_AXIS_MAC2_tstrb(M_AXIS_MAC2_tstrb),
        .M_AXIS_MAC2_tvalid(M_AXIS_MAC2_tvalid),
        .M_AXIS_MAC3_tdata(M_AXIS_MAC3_tdata),
        .M_AXIS_MAC3_tdest(M_AXIS_MAC3_tdest),
        .M_AXIS_MAC3_tkeep(M_AXIS_MAC3_tkeep),
        .M_AXIS_MAC3_tlast(M_AXIS_MAC3_tlast),
        .M_AXIS_MAC3_tready(M_AXIS_MAC3_tready),
        .M_AXIS_MAC3_tstrb(M_AXIS_MAC3_tstrb),
        .M_AXIS_MAC3_tvalid(M_AXIS_MAC3_tvalid),
        .S_AXIS_MAC0_tdata(S_AXIS_MAC0_tdata),
        .S_AXIS_MAC0_tdest(S_AXIS_MAC0_tdest),
        .S_AXIS_MAC0_tkeep(S_AXIS_MAC0_tkeep),
        .S_AXIS_MAC0_tlast(S_AXIS_MAC0_tlast),
        .S_AXIS_MAC0_tready(S_AXIS_MAC0_tready),
        .S_AXIS_MAC0_tvalid(S_AXIS_MAC0_tvalid),
        .S_AXIS_MAC1_tdata(S_AXIS_MAC1_tdata),
        .S_AXIS_MAC1_tdest(S_AXIS_MAC1_tdest),
        .S_AXIS_MAC1_tkeep(S_AXIS_MAC1_tkeep),
        .S_AXIS_MAC1_tlast(S_AXIS_MAC1_tlast),
        .S_AXIS_MAC1_tready(S_AXIS_MAC1_tready),
        .S_AXIS_MAC1_tvalid(S_AXIS_MAC1_tvalid),
        .S_AXIS_MAC2_MAC3_tdata(S_AXIS_MAC2_MAC3_tdata),
        .S_AXIS_MAC2_MAC3_tdest(S_AXIS_MAC2_MAC3_tdest),
        .S_AXIS_MAC2_MAC3_tkeep(S_AXIS_MAC2_MAC3_tkeep),
        .S_AXIS_MAC2_MAC3_tlast(S_AXIS_MAC2_MAC3_tlast),
        .S_AXIS_MAC2_MAC3_tready(S_AXIS_MAC2_MAC3_tready),
        .S_AXIS_MAC2_MAC3_tvalid(S_AXIS_MAC2_MAC3_tvalid),
        .S_AXI_Lite_araddr(S_AXI_Lite_araddr),
        .S_AXI_Lite_arprot(S_AXI_Lite_arprot),
        .S_AXI_Lite_arready(S_AXI_Lite_arready),
        .S_AXI_Lite_arvalid(S_AXI_Lite_arvalid),
        .S_AXI_Lite_awaddr(S_AXI_Lite_awaddr),
        .S_AXI_Lite_awprot(S_AXI_Lite_awprot),
        .S_AXI_Lite_awready(S_AXI_Lite_awready),
        .S_AXI_Lite_awvalid(S_AXI_Lite_awvalid),
        .S_AXI_Lite_bready(S_AXI_Lite_bready),
        .S_AXI_Lite_bresp(S_AXI_Lite_bresp),
        .S_AXI_Lite_bvalid(S_AXI_Lite_bvalid),
        .S_AXI_Lite_rdata(S_AXI_Lite_rdata),
        .S_AXI_Lite_rready(S_AXI_Lite_rready),
        .S_AXI_Lite_rresp(S_AXI_Lite_rresp),
        .S_AXI_Lite_rvalid(S_AXI_Lite_rvalid),
        .S_AXI_Lite_wdata(S_AXI_Lite_wdata),
        .S_AXI_Lite_wready(S_AXI_Lite_wready),
        .S_AXI_Lite_wstrb(S_AXI_Lite_wstrb),
        .S_AXI_Lite_wvalid(S_AXI_Lite_wvalid),
        .clk_100M_in(clk_100M_in),
        .clk_200M_in(clk_200M_in),
        .clk_250M_in(clk_250M_in),
        .clk_400M_in(clk_400M_in),
        .resetn(resetn));
endmodule
