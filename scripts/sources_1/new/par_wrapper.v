//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon May 10 14:00:06 2021
//Host        : newton running 64-bit unknown
//Command     : generate_target ipsec_decryption_wrapper.bd
//Design      : ipsec_decryption_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module par_wrapper
   (M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    M01_AXIS_tdata,
    M01_AXIS_tdest,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tvalid,
    M02_AXIS_tdata,
    M02_AXIS_tdest,
    M02_AXIS_tkeep,
    M02_AXIS_tlast,
    M02_AXIS_tready,
    M02_AXIS_tvalid,
    M03_AXIS_tdata,
    M03_AXIS_tdest,
    M03_AXIS_tkeep,
    M03_AXIS_tlast,
    M03_AXIS_tready,
    M03_AXIS_tvalid,
    M_AXIS_packetizer_tdata,
    M_AXIS_packetizer_tdest,
    M_AXIS_packetizer_tkeep,
    M_AXIS_packetizer_tlast,
    M_AXIS_packetizer_tready,
    M_AXIS_packetizer_tvalid,        
    S_AXIS_MAC2_MAC3_tdata,
    S_AXIS_MAC2_MAC3_tdest,
    S_AXIS_MAC2_MAC3_tkeep,
    S_AXIS_MAC2_MAC3_tlast,
    S_AXIS_MAC2_MAC3_tready,
    S_AXIS_MAC2_MAC3_tvalid,
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
    clk_200M_in,
    clk_250M_in,
    clk_400M_in,
    clk_100M_in,
    resetn);

  output [511:0]M00_AXIS_tdata;
  output [3:0]M00_AXIS_tdest;
  output [63:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output M00_AXIS_tvalid;
  output [511:0]M01_AXIS_tdata;
  output [3:0]M01_AXIS_tdest;
  output [63:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output M01_AXIS_tvalid;
  output [511:0]M02_AXIS_tdata;
  output [3:0]M02_AXIS_tdest;
  output [63:0]M02_AXIS_tkeep;
  output M02_AXIS_tlast;
  input M02_AXIS_tready;
  output M02_AXIS_tvalid;
  output [511:0]M03_AXIS_tdata;
  output [3:0]M03_AXIS_tdest;
  output [63:0]M03_AXIS_tkeep;
  output M03_AXIS_tlast;
  input M03_AXIS_tready;
  output M03_AXIS_tvalid;
output [511:0]M_AXIS_packetizer_tdata;
  output [3:0]M_AXIS_packetizer_tdest;
  output [63:0]M_AXIS_packetizer_tkeep;
  output M_AXIS_packetizer_tlast;
  input M_AXIS_packetizer_tready;
  output M_AXIS_packetizer_tvalid;
  
  input [511:0]S_AXIS_MAC2_MAC3_tdata;
  input [1:0]S_AXIS_MAC2_MAC3_tdest;
  input [63:0]S_AXIS_MAC2_MAC3_tkeep;
  input S_AXIS_MAC2_MAC3_tlast;
  output S_AXIS_MAC2_MAC3_tready;
  input S_AXIS_MAC2_MAC3_tvalid;
  
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
  input clk_200M_in;
  input clk_250M_in;
  input clk_400M_in;
  input clk_100M_in;
  input resetn;

 endmodule
