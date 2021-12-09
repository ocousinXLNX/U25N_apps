//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Sep 30 14:00:47 2021
//Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
//Command     : generate_target dynamic_design_top.bd
//Design      : dynamic_design_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "dynamic_design_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dynamic_design_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=34,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=10,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "dynamic_design_top.hwdef" *) 
module dynamic_design_top
   (DDR_clk_n,
    DDR_clk_p,
    M_AXIS_MAC0_tdata,
    M_AXIS_MAC0_tdest,
    M_AXIS_MAC0_tkeep,
    M_AXIS_MAC0_tlast,
    M_AXIS_MAC0_tready,
    M_AXIS_MAC0_tvalid,
    M_AXIS_MAC1_tdata,
    M_AXIS_MAC1_tdest,
    M_AXIS_MAC1_tkeep,
    M_AXIS_MAC1_tlast,
    M_AXIS_MAC1_tready,
    M_AXIS_MAC1_tvalid,
    M_AXIS_MAC2_tdata,
    M_AXIS_MAC2_tdest,
    M_AXIS_MAC2_tkeep,
    M_AXIS_MAC2_tlast,
    M_AXIS_MAC2_tready,
    M_AXIS_MAC2_tvalid,
    M_AXIS_MAC3_tdata,
    M_AXIS_MAC3_tdest,
    M_AXIS_MAC3_tkeep,
    M_AXIS_MAC3_tlast,
    M_AXIS_MAC3_tready,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR_CLK_N, CLK_DOMAIN dynamic_design_top_DDR_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input DDR_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR_CLK_P, CLK_DOMAIN dynamic_design_top_DDR_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input DDR_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_MAC0, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]M_AXIS_MAC0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TDEST" *) output [1:0]M_AXIS_MAC0_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TKEEP" *) output [63:0]M_AXIS_MAC0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TLAST" *) output M_AXIS_MAC0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TREADY" *) input M_AXIS_MAC0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC0 TVALID" *) output M_AXIS_MAC0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_MAC1, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]M_AXIS_MAC1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TDEST" *) output [1:0]M_AXIS_MAC1_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TKEEP" *) output [63:0]M_AXIS_MAC1_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TLAST" *) output M_AXIS_MAC1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TREADY" *) input M_AXIS_MAC1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC1 TVALID" *) output M_AXIS_MAC1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_MAC2, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]M_AXIS_MAC2_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TDEST" *) output [1:0]M_AXIS_MAC2_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TKEEP" *) output [63:0]M_AXIS_MAC2_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TLAST" *) output M_AXIS_MAC2_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TREADY" *) input M_AXIS_MAC2_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC2 TVALID" *) output M_AXIS_MAC2_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_MAC3, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]M_AXIS_MAC3_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TDEST" *) output [1:0]M_AXIS_MAC3_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TKEEP" *) output [63:0]M_AXIS_MAC3_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TLAST" *) output M_AXIS_MAC3_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TREADY" *) input M_AXIS_MAC3_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MAC3 TVALID" *) output M_AXIS_MAC3_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_MAC0, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) input [511:0]S_AXIS_MAC0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TDEST" *) input [1:0]S_AXIS_MAC0_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TKEEP" *) input [63:0]S_AXIS_MAC0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TLAST" *) input S_AXIS_MAC0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TREADY" *) output S_AXIS_MAC0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 TVALID" *) input S_AXIS_MAC0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_MAC1, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) input [511:0]S_AXIS_MAC1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TDEST" *) input [1:0]S_AXIS_MAC1_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TKEEP" *) input [63:0]S_AXIS_MAC1_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TLAST" *) input S_AXIS_MAC1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TREADY" *) output S_AXIS_MAC1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 TVALID" *) input S_AXIS_MAC1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_MAC2_MAC3, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0" *) input [511:0]S_AXIS_MAC2_MAC3_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TDEST" *) input [1:0]S_AXIS_MAC2_MAC3_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TKEEP" *) input [63:0]S_AXIS_MAC2_MAC3_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TLAST" *) input S_AXIS_MAC2_MAC3_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TREADY" *) output S_AXIS_MAC2_MAC3_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 TVALID" *) input S_AXIS_MAC2_MAC3_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_Lite, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN dynamic_design_top_clk_100M_in, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]S_AXI_Lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite ARPROT" *) input [2:0]S_AXI_Lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite ARREADY" *) output S_AXI_Lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite ARVALID" *) input S_AXI_Lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite AWADDR" *) input [39:0]S_AXI_Lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite AWPROT" *) input [2:0]S_AXI_Lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite AWREADY" *) output S_AXI_Lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite AWVALID" *) input S_AXI_Lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite BREADY" *) input S_AXI_Lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite BRESP" *) output [1:0]S_AXI_Lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite BVALID" *) output S_AXI_Lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite RDATA" *) output [31:0]S_AXI_Lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite RREADY" *) input S_AXI_Lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite RRESP" *) output [1:0]S_AXI_Lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite RVALID" *) output S_AXI_Lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite WDATA" *) input [31:0]S_AXI_Lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite WREADY" *) output S_AXI_Lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite WSTRB" *) input [3:0]S_AXI_Lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_Lite WVALID" *) input S_AXI_Lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100M_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100M_IN, ASSOCIATED_BUSIF S_AXI_Lite, CLK_DOMAIN dynamic_design_top_clk_100M_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_100M_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_200M_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_200M_IN, ASSOCIATED_BUSIF S_AXIS_MAC0:S_AXIS_MAC1:S_AXIS_MAC2_MAC3:M_AXIS_MAC0:M_AXIS_MAC1:M_AXIS_MAC2:M_AXIS_MAC3, CLK_DOMAIN dynamic_design_top_clk_200M_in, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_200M_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_250M_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_250M_IN, CLK_DOMAIN dynamic_design_top_clk_250M_in, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_250M_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_400M_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_400M_IN, CLK_DOMAIN dynamic_design_top_clk_400M_in, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_400M_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire ARESETN_1;
  wire [511:0]INTERC_from_MAC_M00_AXIS_TDATA;
  wire [1:0]INTERC_from_MAC_M00_AXIS_TDEST;
  wire [63:0]INTERC_from_MAC_M00_AXIS_TKEEP;
  wire INTERC_from_MAC_M00_AXIS_TLAST;
  wire INTERC_from_MAC_M00_AXIS_TREADY;
  wire INTERC_from_MAC_M00_AXIS_TVALID;
  wire [511:0]INTERC_from_MAC_M01_AXIS_TDATA;
  wire [1:0]INTERC_from_MAC_M01_AXIS_TDEST;
  wire [63:0]INTERC_from_MAC_M01_AXIS_TKEEP;
  wire INTERC_from_MAC_M01_AXIS_TLAST;
  wire INTERC_from_MAC_M01_AXIS_TREADY;
  wire INTERC_from_MAC_M01_AXIS_TVALID;
  wire [39:0]S00_AXI_0_1_ARADDR;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire S00_AXI_0_1_ARREADY;
  wire S00_AXI_0_1_ARVALID;
  wire [39:0]S00_AXI_0_1_AWADDR;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire S00_AXI_0_1_AWREADY;
  wire S00_AXI_0_1_AWVALID;
  wire S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire S00_AXI_0_1_BVALID;
  wire [31:0]S00_AXI_0_1_RDATA;
  wire S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire S00_AXI_0_1_RVALID;
  wire [31:0]S00_AXI_0_1_WDATA;
  wire S00_AXI_0_1_WREADY;
  wire [3:0]S00_AXI_0_1_WSTRB;
  wire S00_AXI_0_1_WVALID;
  wire [511:0]S_AXIS_MAC0_1_TDATA;
  wire [1:0]S_AXIS_MAC0_1_TDEST;
  wire [63:0]S_AXIS_MAC0_1_TKEEP;
  wire S_AXIS_MAC0_1_TLAST;
  wire S_AXIS_MAC0_1_TREADY;
  wire S_AXIS_MAC0_1_TVALID;
  wire [511:0]S_AXIS_MAC1_1_TDATA;
  wire [1:0]S_AXIS_MAC1_1_TDEST;
  wire [63:0]S_AXIS_MAC1_1_TKEEP;
  wire S_AXIS_MAC1_1_TLAST;
  wire S_AXIS_MAC1_1_TREADY;
  wire S_AXIS_MAC1_1_TVALID;
  wire [511:0]S_AXIS_MAC2_MAC3_1_TDATA;
  wire [1:0]S_AXIS_MAC2_MAC3_1_TDEST;
  wire [63:0]S_AXIS_MAC2_MAC3_1_TKEEP;
  wire S_AXIS_MAC2_MAC3_1_TLAST;
  wire S_AXIS_MAC2_MAC3_1_TREADY;
  wire S_AXIS_MAC2_MAC3_1_TVALID;
  wire [16:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_interconnect_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_M00_AXI_ARPROT;
  wire axi_interconnect_M00_AXI_ARREADY;
  wire axi_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_M00_AXI_AWPROT;
  wire axi_interconnect_M00_AXI_AWREADY;
  wire axi_interconnect_M00_AXI_AWVALID;
  wire axi_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_M00_AXI_BRESP;
  wire axi_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_M00_AXI_RDATA;
  wire axi_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_M00_AXI_RRESP;
  wire axi_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_M00_AXI_WDATA;
  wire axi_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_M00_AXI_WSTRB;
  wire axi_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_M01_AXI_ARADDR;
  wire [2:0]axi_interconnect_M01_AXI_ARPROT;
  wire axi_interconnect_M01_AXI_ARREADY;
  wire axi_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_M01_AXI_AWADDR;
  wire [2:0]axi_interconnect_M01_AXI_AWPROT;
  wire axi_interconnect_M01_AXI_AWREADY;
  wire axi_interconnect_M01_AXI_AWVALID;
  wire axi_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_M01_AXI_BRESP;
  wire axi_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_M01_AXI_RDATA;
  wire axi_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_M01_AXI_RRESP;
  wire axi_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_M01_AXI_WDATA;
  wire axi_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_M01_AXI_WSTRB;
  wire axi_interconnect_M01_AXI_WVALID;
  wire [0:0]axi_interconnect_M02_AXI_ARADDR;
  wire axi_interconnect_M02_AXI_ARREADY;
  wire axi_interconnect_M02_AXI_ARVALID;
  wire [0:0]axi_interconnect_M02_AXI_AWADDR;
  wire axi_interconnect_M02_AXI_AWREADY;
  wire axi_interconnect_M02_AXI_AWVALID;
  wire axi_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_M02_AXI_BRESP;
  wire axi_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_M02_AXI_RDATA;
  wire axi_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_M02_AXI_RRESP;
  wire axi_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_M02_AXI_WDATA;
  wire axi_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_M02_AXI_WSTRB;
  wire axi_interconnect_M02_AXI_WVALID;
  wire [8:0]axi_interconnect_M03_AXI_ARADDR;
  wire axi_interconnect_M03_AXI_ARREADY;
  wire axi_interconnect_M03_AXI_ARVALID;
  wire [8:0]axi_interconnect_M03_AXI_AWADDR;
  wire axi_interconnect_M03_AXI_AWREADY;
  wire axi_interconnect_M03_AXI_AWVALID;
  wire axi_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_M03_AXI_BRESP;
  wire axi_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_M03_AXI_RDATA;
  wire axi_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_M03_AXI_RRESP;
  wire axi_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_M03_AXI_WDATA;
  wire axi_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_M03_AXI_WSTRB;
  wire axi_interconnect_M03_AXI_WVALID;
  wire [511:0]axis_data_fifo_from_Internal_M_AXIS_TDATA;
  wire [1:0]axis_data_fifo_from_Internal_M_AXIS_TDEST;
  wire [63:0]axis_data_fifo_from_Internal_M_AXIS_TKEEP;
  wire axis_data_fifo_from_Internal_M_AXIS_TLAST;
  wire axis_data_fifo_from_Internal_M_AXIS_TREADY;
  wire axis_data_fifo_from_Internal_M_AXIS_TVALID;
  wire [511:0]axis_data_fifo_from_MAC0_M_AXIS_TDATA;
  wire [63:0]axis_data_fifo_from_MAC0_M_AXIS_TKEEP;
  wire axis_data_fifo_from_MAC0_M_AXIS_TLAST;
  wire axis_data_fifo_from_MAC0_M_AXIS_TREADY;
  wire axis_data_fifo_from_MAC0_M_AXIS_TVALID;
  wire [511:0]axis_data_fifo_from_MAC1_M_AXIS_TDATA;
  wire [1:0]axis_data_fifo_from_MAC1_M_AXIS_TDEST;
  wire [63:0]axis_data_fifo_from_MAC1_M_AXIS_TKEEP;
  wire axis_data_fifo_from_MAC1_M_AXIS_TLAST;
  wire axis_data_fifo_from_MAC1_M_AXIS_TREADY;
  wire axis_data_fifo_from_MAC1_M_AXIS_TVALID;
  wire clk_100M_in_1;
  wire clk_200M_in_1;
  wire clk_250M_in_1;
  wire clk_400M_in_1;
  wire [511:0]dynamic_M_AXIS_MAC0_TDATA;
  wire [1:0]dynamic_M_AXIS_MAC0_TDEST;
  wire [63:0]dynamic_M_AXIS_MAC0_TKEEP;
  wire dynamic_M_AXIS_MAC0_TLAST;
  wire dynamic_M_AXIS_MAC0_TREADY;
  wire dynamic_M_AXIS_MAC0_TVALID;
  wire [511:0]dynamic_M_AXIS_MAC1_TDATA;
  wire [1:0]dynamic_M_AXIS_MAC1_TDEST;
  wire [63:0]dynamic_M_AXIS_MAC1_TKEEP;
  wire dynamic_M_AXIS_MAC1_TLAST;
  wire dynamic_M_AXIS_MAC1_TREADY;
  wire dynamic_M_AXIS_MAC1_TVALID;
  wire [511:0]dynamic_M_AXIS_MAC2_TDATA;
  wire [1:0]dynamic_M_AXIS_MAC2_TDEST;
  wire [63:0]dynamic_M_AXIS_MAC2_TKEEP;
  wire dynamic_M_AXIS_MAC2_TLAST;
  wire dynamic_M_AXIS_MAC2_TREADY;
  wire dynamic_M_AXIS_MAC2_TVALID;
  wire [511:0]dynamic_M_AXIS_MAC3_TDATA;
  wire [1:0]dynamic_M_AXIS_MAC3_TDEST;
  wire [63:0]dynamic_M_AXIS_MAC3_TKEEP;
  wire dynamic_M_AXIS_MAC3_TLAST;
  wire dynamic_M_AXIS_MAC3_TREADY;
  wire dynamic_M_AXIS_MAC3_TVALID;
  wire reset_latch_dyn_0_rstn_100M1;
  wire resetn_1;
  wire [511:0]sdnet_0_m_axis_TDATA;
  wire [63:0]sdnet_0_m_axis_TKEEP;
  wire sdnet_0_m_axis_TLAST;
  wire sdnet_0_m_axis_TREADY;
  wire sdnet_0_m_axis_TVALID;
  wire [15:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign M_AXIS_MAC0_tdata[511:0] = dynamic_M_AXIS_MAC0_TDATA;
  assign M_AXIS_MAC0_tdest[1:0] = dynamic_M_AXIS_MAC0_TDEST;
  assign M_AXIS_MAC0_tkeep[63:0] = dynamic_M_AXIS_MAC0_TKEEP;
  assign M_AXIS_MAC0_tlast = dynamic_M_AXIS_MAC0_TLAST;
  assign M_AXIS_MAC0_tvalid = dynamic_M_AXIS_MAC0_TVALID;
  assign M_AXIS_MAC1_tdata[511:0] = dynamic_M_AXIS_MAC1_TDATA;
  assign M_AXIS_MAC1_tdest[1:0] = dynamic_M_AXIS_MAC1_TDEST;
  assign M_AXIS_MAC1_tkeep[63:0] = dynamic_M_AXIS_MAC1_TKEEP;
  assign M_AXIS_MAC1_tlast = dynamic_M_AXIS_MAC1_TLAST;
  assign M_AXIS_MAC1_tvalid = dynamic_M_AXIS_MAC1_TVALID;
  assign M_AXIS_MAC2_tdata[511:0] = dynamic_M_AXIS_MAC2_TDATA;
  assign M_AXIS_MAC2_tdest[1:0] = dynamic_M_AXIS_MAC2_TDEST;
  assign M_AXIS_MAC2_tkeep[63:0] = dynamic_M_AXIS_MAC2_TKEEP;
  assign M_AXIS_MAC2_tlast = dynamic_M_AXIS_MAC2_TLAST;
  assign M_AXIS_MAC2_tvalid = dynamic_M_AXIS_MAC2_TVALID;
  assign M_AXIS_MAC3_tdata[511:0] = dynamic_M_AXIS_MAC3_TDATA;
  assign M_AXIS_MAC3_tdest[1:0] = dynamic_M_AXIS_MAC3_TDEST;
  assign M_AXIS_MAC3_tkeep[63:0] = dynamic_M_AXIS_MAC3_TKEEP;
  assign M_AXIS_MAC3_tlast = dynamic_M_AXIS_MAC3_TLAST;
  assign M_AXIS_MAC3_tvalid = dynamic_M_AXIS_MAC3_TVALID;
  assign S00_AXI_0_1_ARADDR = S_AXI_Lite_araddr[39:0];
  assign S00_AXI_0_1_ARPROT = S_AXI_Lite_arprot[2:0];
  assign S00_AXI_0_1_ARVALID = S_AXI_Lite_arvalid;
  assign S00_AXI_0_1_AWADDR = S_AXI_Lite_awaddr[39:0];
  assign S00_AXI_0_1_AWPROT = S_AXI_Lite_awprot[2:0];
  assign S00_AXI_0_1_AWVALID = S_AXI_Lite_awvalid;
  assign S00_AXI_0_1_BREADY = S_AXI_Lite_bready;
  assign S00_AXI_0_1_RREADY = S_AXI_Lite_rready;
  assign S00_AXI_0_1_WDATA = S_AXI_Lite_wdata[31:0];
  assign S00_AXI_0_1_WSTRB = S_AXI_Lite_wstrb[3:0];
  assign S00_AXI_0_1_WVALID = S_AXI_Lite_wvalid;
  assign S_AXIS_MAC0_1_TDATA = S_AXIS_MAC0_tdata[511:0];
  assign S_AXIS_MAC0_1_TDEST = S_AXIS_MAC0_tdest[1:0];
  assign S_AXIS_MAC0_1_TKEEP = S_AXIS_MAC0_tkeep[63:0];
  assign S_AXIS_MAC0_1_TLAST = S_AXIS_MAC0_tlast;
  assign S_AXIS_MAC0_1_TVALID = S_AXIS_MAC0_tvalid;
  assign S_AXIS_MAC0_tready = S_AXIS_MAC0_1_TREADY;
  assign S_AXIS_MAC1_1_TDATA = S_AXIS_MAC1_tdata[511:0];
  assign S_AXIS_MAC1_1_TDEST = S_AXIS_MAC1_tdest[1:0];
  assign S_AXIS_MAC1_1_TKEEP = S_AXIS_MAC1_tkeep[63:0];
  assign S_AXIS_MAC1_1_TLAST = S_AXIS_MAC1_tlast;
  assign S_AXIS_MAC1_1_TVALID = S_AXIS_MAC1_tvalid;
  assign S_AXIS_MAC1_tready = S_AXIS_MAC1_1_TREADY;
  assign S_AXIS_MAC2_MAC3_1_TDATA = S_AXIS_MAC2_MAC3_tdata[511:0];
  assign S_AXIS_MAC2_MAC3_1_TDEST = S_AXIS_MAC2_MAC3_tdest[1:0];
  assign S_AXIS_MAC2_MAC3_1_TKEEP = S_AXIS_MAC2_MAC3_tkeep[63:0];
  assign S_AXIS_MAC2_MAC3_1_TLAST = S_AXIS_MAC2_MAC3_tlast;
  assign S_AXIS_MAC2_MAC3_1_TVALID = S_AXIS_MAC2_MAC3_tvalid;
  assign S_AXIS_MAC2_MAC3_tready = S_AXIS_MAC2_MAC3_1_TREADY;
  assign S_AXI_Lite_arready = S00_AXI_0_1_ARREADY;
  assign S_AXI_Lite_awready = S00_AXI_0_1_AWREADY;
  assign S_AXI_Lite_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign S_AXI_Lite_bvalid = S00_AXI_0_1_BVALID;
  assign S_AXI_Lite_rdata[31:0] = S00_AXI_0_1_RDATA;
  assign S_AXI_Lite_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign S_AXI_Lite_rvalid = S00_AXI_0_1_RVALID;
  assign S_AXI_Lite_wready = S00_AXI_0_1_WREADY;
  assign clk_100M_in_1 = clk_100M_in;
  assign clk_200M_in_1 = clk_200M_in;
  assign clk_250M_in_1 = clk_250M_in;
  assign clk_400M_in_1 = clk_400M_in;
  assign dynamic_M_AXIS_MAC0_TREADY = M_AXIS_MAC0_tready;
  assign dynamic_M_AXIS_MAC1_TREADY = M_AXIS_MAC1_tready;
  assign dynamic_M_AXIS_MAC2_TREADY = M_AXIS_MAC2_tready;
  assign dynamic_M_AXIS_MAC3_TREADY = M_AXIS_MAC3_tready;
  assign resetn_1 = resetn;
  dynamic_design_top_INTERC_from_MAC_0 INTERC_from_MAC
       (.ACLK(clk_200M_in_1),
        .ARESETN(ARESETN_1),
        .M00_AXIS_ACLK(clk_200M_in_1),
        .M00_AXIS_ARESETN(ARESETN_1),
        .M00_AXIS_tdata(INTERC_from_MAC_M00_AXIS_TDATA),
        .M00_AXIS_tdest(INTERC_from_MAC_M00_AXIS_TDEST),
        .M00_AXIS_tkeep(INTERC_from_MAC_M00_AXIS_TKEEP),
        .M00_AXIS_tlast(INTERC_from_MAC_M00_AXIS_TLAST),
        .M00_AXIS_tready(INTERC_from_MAC_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(INTERC_from_MAC_M00_AXIS_TVALID),
        .M01_AXIS_ACLK(clk_200M_in_1),
        .M01_AXIS_ARESETN(ARESETN_1),
        .M01_AXIS_tdata(INTERC_from_MAC_M01_AXIS_TDATA),
        .M01_AXIS_tdest(INTERC_from_MAC_M01_AXIS_TDEST),
        .M01_AXIS_tkeep(INTERC_from_MAC_M01_AXIS_TKEEP),
        .M01_AXIS_tlast(INTERC_from_MAC_M01_AXIS_TLAST),
        .M01_AXIS_tready(INTERC_from_MAC_M01_AXIS_TREADY),
        .M01_AXIS_tvalid(INTERC_from_MAC_M01_AXIS_TVALID),
        .S00_AXIS_ACLK(clk_200M_in_1),
        .S00_AXIS_ARESETN(ARESETN_1),
        .S00_AXIS_tdata(axis_data_fifo_from_Internal_M_AXIS_TDATA),
        .S00_AXIS_tdest(axis_data_fifo_from_Internal_M_AXIS_TDEST),
        .S00_AXIS_tkeep(axis_data_fifo_from_Internal_M_AXIS_TKEEP),
        .S00_AXIS_tlast(axis_data_fifo_from_Internal_M_AXIS_TLAST),
        .S00_AXIS_tready(axis_data_fifo_from_Internal_M_AXIS_TREADY),
        .S00_AXIS_tvalid(axis_data_fifo_from_Internal_M_AXIS_TVALID));
  dynamic_design_top_Register_interface_0 Register_interface
       (.s00_axi_aclk(clk_100M_in_1),
        .s00_axi_araddr(axi_interconnect_M01_AXI_ARADDR),
        .s00_axi_aresetn(ARESETN_1),
        .s00_axi_arprot(axi_interconnect_M01_AXI_ARPROT),
        .s00_axi_arready(axi_interconnect_M01_AXI_ARREADY),
        .s00_axi_arvalid(axi_interconnect_M01_AXI_ARVALID),
        .s00_axi_awaddr(axi_interconnect_M01_AXI_AWADDR),
        .s00_axi_awprot(axi_interconnect_M01_AXI_AWPROT),
        .s00_axi_awready(axi_interconnect_M01_AXI_AWREADY),
        .s00_axi_awvalid(axi_interconnect_M01_AXI_AWVALID),
        .s00_axi_bready(axi_interconnect_M01_AXI_BREADY),
        .s00_axi_bresp(axi_interconnect_M01_AXI_BRESP),
        .s00_axi_bvalid(axi_interconnect_M01_AXI_BVALID),
        .s00_axi_rdata(axi_interconnect_M01_AXI_RDATA),
        .s00_axi_rready(axi_interconnect_M01_AXI_RREADY),
        .s00_axi_rresp(axi_interconnect_M01_AXI_RRESP),
        .s00_axi_rvalid(axi_interconnect_M01_AXI_RVALID),
        .s00_axi_wdata(axi_interconnect_M01_AXI_WDATA),
        .s00_axi_wready(axi_interconnect_M01_AXI_WREADY),
        .s00_axi_wstrb(axi_interconnect_M01_AXI_WSTRB),
        .s00_axi_wvalid(axi_interconnect_M01_AXI_WVALID));
  dynamic_design_top_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_100M_in_1),
        .s_axi_araddr(axi_interconnect_M03_AXI_ARADDR),
        .s_axi_aresetn(reset_latch_dyn_0_rstn_100M1),
        .s_axi_arready(axi_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_M03_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_M03_AXI_WVALID));
  dynamic_design_top_axi_interconnect_0 axi_interconnect
       (.ACLK(clk_100M_in_1),
        .ARESETN(reset_latch_dyn_0_rstn_100M1),
        .M00_ACLK(clk_100M_in_1),
        .M00_ARESETN(reset_latch_dyn_0_rstn_100M1),
        .M00_AXI_araddr(axi_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_M00_AXI_WVALID),
        .M01_ACLK(clk_100M_in_1),
        .M01_ARESETN(reset_latch_dyn_0_rstn_100M1),
        .M01_AXI_araddr(axi_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_M01_AXI_WVALID),
        .M02_ACLK(clk_100M_in_1),
        .M02_ARESETN(reset_latch_dyn_0_rstn_100M1),
        .M02_AXI_araddr(axi_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_M02_AXI_WVALID),
        .M03_ACLK(clk_100M_in_1),
        .M03_ARESETN(reset_latch_dyn_0_rstn_100M1),
        .M03_AXI_araddr(axi_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_M03_AXI_WVALID),
        .S00_ACLK(clk_100M_in_1),
        .S00_ARESETN(reset_latch_dyn_0_rstn_100M1),
        .S00_AXI_araddr(S00_AXI_0_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_0_1_ARPROT),
        .S00_AXI_arready(S00_AXI_0_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_0_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_0_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_0_1_AWPROT),
        .S00_AXI_awready(S00_AXI_0_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_0_1_AWVALID),
        .S00_AXI_bready(S00_AXI_0_1_BREADY),
        .S00_AXI_bresp(S00_AXI_0_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_0_1_BVALID),
        .S00_AXI_rdata(S00_AXI_0_1_RDATA),
        .S00_AXI_rready(S00_AXI_0_1_RREADY),
        .S00_AXI_rresp(S00_AXI_0_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_0_1_RVALID),
        .S00_AXI_wdata(S00_AXI_0_1_WDATA),
        .S00_AXI_wready(S00_AXI_0_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_0_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_0_1_WVALID));
  dynamic_design_top_axis_data_fifo_from_Internal_0 axis_data_fifo_from_Internal
       (.m_axis_tdata(axis_data_fifo_from_Internal_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_from_Internal_M_AXIS_TDEST),
        .m_axis_tkeep(axis_data_fifo_from_Internal_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_from_Internal_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_from_Internal_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_from_Internal_M_AXIS_TVALID),
        .s_axis_aclk(clk_200M_in_1),
        .s_axis_aresetn(ARESETN_1),
        .s_axis_tdata(S_AXIS_MAC2_MAC3_1_TDATA),
        .s_axis_tdest(S_AXIS_MAC2_MAC3_1_TDEST),
        .s_axis_tkeep(S_AXIS_MAC2_MAC3_1_TKEEP),
        .s_axis_tlast(S_AXIS_MAC2_MAC3_1_TLAST),
        .s_axis_tready(S_AXIS_MAC2_MAC3_1_TREADY),
        .s_axis_tvalid(S_AXIS_MAC2_MAC3_1_TVALID));
  dynamic_design_top_axis_data_fifo_from_MAC0_0 axis_data_fifo_from_MAC0
       (.m_axis_tdata(axis_data_fifo_from_MAC0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_from_MAC0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_from_MAC0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_from_MAC0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_from_MAC0_M_AXIS_TVALID),
        .s_axis_aclk(clk_200M_in_1),
        .s_axis_aresetn(ARESETN_1),
        .s_axis_tdata(S_AXIS_MAC0_1_TDATA),
        .s_axis_tdest(S_AXIS_MAC0_1_TDEST),
        .s_axis_tkeep(S_AXIS_MAC0_1_TKEEP),
        .s_axis_tlast(S_AXIS_MAC0_1_TLAST),
        .s_axis_tready(S_AXIS_MAC0_1_TREADY),
        .s_axis_tvalid(S_AXIS_MAC0_1_TVALID));
  dynamic_design_top_axis_data_fifo_from_MAC1_0 axis_data_fifo_from_MAC1
       (.m_axis_tdata(axis_data_fifo_from_MAC1_M_AXIS_TDATA),
        .m_axis_tdest(axis_data_fifo_from_MAC1_M_AXIS_TDEST),
        .m_axis_tkeep(axis_data_fifo_from_MAC1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_from_MAC1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_from_MAC1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_from_MAC1_M_AXIS_TVALID),
        .s_axis_aclk(clk_200M_in_1),
        .s_axis_aresetn(ARESETN_1),
        .s_axis_tdata(S_AXIS_MAC1_1_TDATA),
        .s_axis_tdest(S_AXIS_MAC1_1_TDEST),
        .s_axis_tkeep(S_AXIS_MAC1_1_TKEEP),
        .s_axis_tlast(S_AXIS_MAC1_1_TLAST),
        .s_axis_tready(S_AXIS_MAC1_1_TREADY),
        .s_axis_tvalid(S_AXIS_MAC1_1_TVALID));
  dynamic_design_top_reset_latch_dyn_0_0 reset_latch_dyn_0
       (.clk_100M_in(clk_100M_in_1),
        .clk_200M_in(clk_200M_in_1),
        .clk_250M_in(clk_250M_in_1),
        .clk_400M_in(clk_400M_in_1),
        .resetn_in(resetn_1),
        .rstn_100M(reset_latch_dyn_0_rstn_100M1),
        .rstn_200M(ARESETN_1));
  dynamic_design_top_sdnet_0_0 sdnet_0
       (.m_axis_tdata(sdnet_0_m_axis_TDATA),
        .m_axis_tkeep(sdnet_0_m_axis_TKEEP),
        .m_axis_tlast(sdnet_0_m_axis_TLAST),
        .m_axis_tready(sdnet_0_m_axis_TREADY),
        .m_axis_tvalid(sdnet_0_m_axis_TVALID),
        .s_axi_aclk(clk_100M_in_1),
        .s_axi_araddr(axi_interconnect_M02_AXI_ARADDR),
        .s_axi_aresetn(reset_latch_dyn_0_rstn_100M1),
        .s_axi_arready(axi_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_M02_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_M02_AXI_WVALID),
        .s_axis_aclk(clk_200M_in_1),
        .s_axis_aresetn(ARESETN_1),
        .s_axis_tdata(axis_data_fifo_from_MAC0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_fifo_from_MAC0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_fifo_from_MAC0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_from_MAC0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_from_MAC0_M_AXIS_TVALID),
        .user_metadata_in(xlslice_0_Dout),
        .user_metadata_in_valid(xlslice_1_Dout));
  dynamic_design_top_slice_to_MAC0_0 slice_to_MAC0
       (.aclk(clk_200M_in_1),
        .aresetn(ARESETN_1),
        .m_axis_tdata(dynamic_M_AXIS_MAC0_TDATA),
        .m_axis_tdest(dynamic_M_AXIS_MAC0_TDEST),
        .m_axis_tkeep(dynamic_M_AXIS_MAC0_TKEEP),
        .m_axis_tlast(dynamic_M_AXIS_MAC0_TLAST),
        .m_axis_tready(dynamic_M_AXIS_MAC0_TREADY),
        .m_axis_tvalid(dynamic_M_AXIS_MAC0_TVALID),
        .s_axis_tdata(INTERC_from_MAC_M00_AXIS_TDATA),
        .s_axis_tdest(INTERC_from_MAC_M00_AXIS_TDEST),
        .s_axis_tkeep(INTERC_from_MAC_M00_AXIS_TKEEP),
        .s_axis_tlast(INTERC_from_MAC_M00_AXIS_TLAST),
        .s_axis_tready(INTERC_from_MAC_M00_AXIS_TREADY),
        .s_axis_tvalid(INTERC_from_MAC_M00_AXIS_TVALID));
  dynamic_design_top_slice_to_MAC1_0 slice_to_MAC1
       (.aclk(clk_200M_in_1),
        .aresetn(ARESETN_1),
        .m_axis_tdata(dynamic_M_AXIS_MAC1_TDATA),
        .m_axis_tdest(dynamic_M_AXIS_MAC1_TDEST),
        .m_axis_tkeep(dynamic_M_AXIS_MAC1_TKEEP),
        .m_axis_tlast(dynamic_M_AXIS_MAC1_TLAST),
        .m_axis_tready(dynamic_M_AXIS_MAC1_TREADY),
        .m_axis_tvalid(dynamic_M_AXIS_MAC1_TVALID),
        .s_axis_tdata(INTERC_from_MAC_M01_AXIS_TDATA),
        .s_axis_tdest(INTERC_from_MAC_M01_AXIS_TDEST),
        .s_axis_tkeep(INTERC_from_MAC_M01_AXIS_TKEEP),
        .s_axis_tlast(INTERC_from_MAC_M01_AXIS_TLAST),
        .s_axis_tready(INTERC_from_MAC_M01_AXIS_TREADY),
        .s_axis_tvalid(INTERC_from_MAC_M01_AXIS_TVALID));
  dynamic_design_top_slice_to_MAC2_0 slice_to_MAC2
       (.aclk(clk_200M_in_1),
        .aresetn(ARESETN_1),
        .m_axis_tdata(dynamic_M_AXIS_MAC2_TDATA),
        .m_axis_tdest(dynamic_M_AXIS_MAC2_TDEST),
        .m_axis_tkeep(dynamic_M_AXIS_MAC2_TKEEP),
        .m_axis_tlast(dynamic_M_AXIS_MAC2_TLAST),
        .m_axis_tready(dynamic_M_AXIS_MAC2_TREADY),
        .m_axis_tvalid(dynamic_M_AXIS_MAC2_TVALID),
        .s_axis_tdata(sdnet_0_m_axis_TDATA),
        .s_axis_tdest({1'b0,1'b0}),
        .s_axis_tkeep(sdnet_0_m_axis_TKEEP),
        .s_axis_tlast(sdnet_0_m_axis_TLAST),
        .s_axis_tready(sdnet_0_m_axis_TREADY),
        .s_axis_tvalid(sdnet_0_m_axis_TVALID));
  dynamic_design_top_slice_to_MAC3_0 slice_to_MAC3
       (.aclk(clk_200M_in_1),
        .aresetn(ARESETN_1),
        .m_axis_tdata(dynamic_M_AXIS_MAC3_TDATA),
        .m_axis_tdest(dynamic_M_AXIS_MAC3_TDEST),
        .m_axis_tkeep(dynamic_M_AXIS_MAC3_TKEEP),
        .m_axis_tlast(dynamic_M_AXIS_MAC3_TLAST),
        .m_axis_tready(dynamic_M_AXIS_MAC3_TREADY),
        .m_axis_tvalid(dynamic_M_AXIS_MAC3_TVALID),
        .s_axis_tdata(axis_data_fifo_from_MAC1_M_AXIS_TDATA),
        .s_axis_tdest(axis_data_fifo_from_MAC1_M_AXIS_TDEST),
        .s_axis_tkeep(axis_data_fifo_from_MAC1_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_fifo_from_MAC1_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_from_MAC1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_from_MAC1_M_AXIS_TVALID));
  dynamic_design_top_version_register_0_0 version_register_0
       (.s00_axi_aclk(clk_100M_in_1),
        .s00_axi_araddr(axi_interconnect_M00_AXI_ARADDR),
        .s00_axi_aresetn(reset_latch_dyn_0_rstn_100M1),
        .s00_axi_arprot(axi_interconnect_M00_AXI_ARPROT),
        .s00_axi_arready(axi_interconnect_M00_AXI_ARREADY),
        .s00_axi_arvalid(axi_interconnect_M00_AXI_ARVALID),
        .s00_axi_awaddr(axi_interconnect_M00_AXI_AWADDR),
        .s00_axi_awprot(axi_interconnect_M00_AXI_AWPROT),
        .s00_axi_awready(axi_interconnect_M00_AXI_AWREADY),
        .s00_axi_awvalid(axi_interconnect_M00_AXI_AWVALID),
        .s00_axi_bready(axi_interconnect_M00_AXI_BREADY),
        .s00_axi_bresp(axi_interconnect_M00_AXI_BRESP),
        .s00_axi_bvalid(axi_interconnect_M00_AXI_BVALID),
        .s00_axi_rdata(axi_interconnect_M00_AXI_RDATA),
        .s00_axi_rready(axi_interconnect_M00_AXI_RREADY),
        .s00_axi_rresp(axi_interconnect_M00_AXI_RRESP),
        .s00_axi_rvalid(axi_interconnect_M00_AXI_RVALID),
        .s00_axi_wdata(axi_interconnect_M00_AXI_WDATA),
        .s00_axi_wready(axi_interconnect_M00_AXI_WREADY),
        .s00_axi_wstrb(axi_interconnect_M00_AXI_WSTRB),
        .s00_axi_wvalid(axi_interconnect_M00_AXI_WVALID));
  dynamic_design_top_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_0_Dout));
  dynamic_design_top_xlslice_0_1 xlslice_1
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_1_Dout));
endmodule

module dynamic_design_top_INTERC_from_MAC_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tdest,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tkeep,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [511:0]M00_AXIS_tdata;
  output [1:0]M00_AXIS_tdest;
  output [63:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [511:0]M01_AXIS_tdata;
  output [1:0]M01_AXIS_tdest;
  output [63:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output M01_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [511:0]S00_AXIS_tdata;
  input [1:0]S00_AXIS_tdest;
  input [63:0]S00_AXIS_tkeep;
  input S00_AXIS_tlast;
  output S00_AXIS_tready;
  input S00_AXIS_tvalid;

  wire INTERC_from_MAC_ACLK_net;
  wire INTERC_from_MAC_ARESETN_net;
  wire [511:0]INTERC_from_MAC_to_s00_couplers_TDATA;
  wire [1:0]INTERC_from_MAC_to_s00_couplers_TDEST;
  wire [63:0]INTERC_from_MAC_to_s00_couplers_TKEEP;
  wire INTERC_from_MAC_to_s00_couplers_TLAST;
  wire INTERC_from_MAC_to_s00_couplers_TREADY;
  wire INTERC_from_MAC_to_s00_couplers_TVALID;
  wire [511:0]m00_couplers_to_INTERC_from_MAC_TDATA;
  wire [1:0]m00_couplers_to_INTERC_from_MAC_TDEST;
  wire [63:0]m00_couplers_to_INTERC_from_MAC_TKEEP;
  wire m00_couplers_to_INTERC_from_MAC_TLAST;
  wire m00_couplers_to_INTERC_from_MAC_TREADY;
  wire m00_couplers_to_INTERC_from_MAC_TVALID;
  wire [511:0]m01_couplers_to_INTERC_from_MAC_TDATA;
  wire [1:0]m01_couplers_to_INTERC_from_MAC_TDEST;
  wire [63:0]m01_couplers_to_INTERC_from_MAC_TKEEP;
  wire m01_couplers_to_INTERC_from_MAC_TLAST;
  wire m01_couplers_to_INTERC_from_MAC_TREADY;
  wire m01_couplers_to_INTERC_from_MAC_TVALID;
  wire [511:0]s00_couplers_to_xbar_TDATA;
  wire [1:0]s00_couplers_to_xbar_TDEST;
  wire [63:0]s00_couplers_to_xbar_TKEEP;
  wire s00_couplers_to_xbar_TLAST;
  wire [0:0]s00_couplers_to_xbar_TREADY;
  wire s00_couplers_to_xbar_TVALID;
  wire [511:0]xbar_to_m00_couplers_TDATA;
  wire [1:0]xbar_to_m00_couplers_TDEST;
  wire [63:0]xbar_to_m00_couplers_TKEEP;
  wire [0:0]xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [0:0]xbar_to_m00_couplers_TVALID;
  wire [1023:512]xbar_to_m01_couplers_TDATA;
  wire [3:2]xbar_to_m01_couplers_TDEST;
  wire [127:64]xbar_to_m01_couplers_TKEEP;
  wire [1:1]xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [1:1]xbar_to_m01_couplers_TVALID;

  assign INTERC_from_MAC_ACLK_net = ACLK;
  assign INTERC_from_MAC_ARESETN_net = ARESETN;
  assign INTERC_from_MAC_to_s00_couplers_TDATA = S00_AXIS_tdata[511:0];
  assign INTERC_from_MAC_to_s00_couplers_TDEST = S00_AXIS_tdest[1:0];
  assign INTERC_from_MAC_to_s00_couplers_TKEEP = S00_AXIS_tkeep[63:0];
  assign INTERC_from_MAC_to_s00_couplers_TLAST = S00_AXIS_tlast;
  assign INTERC_from_MAC_to_s00_couplers_TVALID = S00_AXIS_tvalid;
  assign M00_AXIS_tdata[511:0] = m00_couplers_to_INTERC_from_MAC_TDATA;
  assign M00_AXIS_tdest[1:0] = m00_couplers_to_INTERC_from_MAC_TDEST;
  assign M00_AXIS_tkeep[63:0] = m00_couplers_to_INTERC_from_MAC_TKEEP;
  assign M00_AXIS_tlast = m00_couplers_to_INTERC_from_MAC_TLAST;
  assign M00_AXIS_tvalid = m00_couplers_to_INTERC_from_MAC_TVALID;
  assign M01_AXIS_tdata[511:0] = m01_couplers_to_INTERC_from_MAC_TDATA;
  assign M01_AXIS_tdest[1:0] = m01_couplers_to_INTERC_from_MAC_TDEST;
  assign M01_AXIS_tkeep[63:0] = m01_couplers_to_INTERC_from_MAC_TKEEP;
  assign M01_AXIS_tlast = m01_couplers_to_INTERC_from_MAC_TLAST;
  assign M01_AXIS_tvalid = m01_couplers_to_INTERC_from_MAC_TVALID;
  assign S00_AXIS_tready = INTERC_from_MAC_to_s00_couplers_TREADY;
  assign m00_couplers_to_INTERC_from_MAC_TREADY = M00_AXIS_tready;
  assign m01_couplers_to_INTERC_from_MAC_TREADY = M01_AXIS_tready;
  m00_couplers_imp_6PVOWP m00_couplers
       (.M_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .M_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .M_AXIS_tdata(m00_couplers_to_INTERC_from_MAC_TDATA),
        .M_AXIS_tdest(m00_couplers_to_INTERC_from_MAC_TDEST),
        .M_AXIS_tkeep(m00_couplers_to_INTERC_from_MAC_TKEEP),
        .M_AXIS_tlast(m00_couplers_to_INTERC_from_MAC_TLAST),
        .M_AXIS_tready(m00_couplers_to_INTERC_from_MAC_TREADY),
        .M_AXIS_tvalid(m00_couplers_to_INTERC_from_MAC_TVALID),
        .S_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .S_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m00_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m00_couplers_TDEST),
        .S_AXIS_tkeep(xbar_to_m00_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m00_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m00_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m00_couplers_TVALID));
  m01_couplers_imp_72TO78 m01_couplers
       (.M_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .M_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .M_AXIS_tdata(m01_couplers_to_INTERC_from_MAC_TDATA),
        .M_AXIS_tdest(m01_couplers_to_INTERC_from_MAC_TDEST),
        .M_AXIS_tkeep(m01_couplers_to_INTERC_from_MAC_TKEEP),
        .M_AXIS_tlast(m01_couplers_to_INTERC_from_MAC_TLAST),
        .M_AXIS_tready(m01_couplers_to_INTERC_from_MAC_TREADY),
        .M_AXIS_tvalid(m01_couplers_to_INTERC_from_MAC_TVALID),
        .S_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .S_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tkeep(xbar_to_m01_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  s00_couplers_imp_1OGW06I s00_couplers
       (.M_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .M_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .M_AXIS_tdata(s00_couplers_to_xbar_TDATA),
        .M_AXIS_tdest(s00_couplers_to_xbar_TDEST),
        .M_AXIS_tkeep(s00_couplers_to_xbar_TKEEP),
        .M_AXIS_tlast(s00_couplers_to_xbar_TLAST),
        .M_AXIS_tready(s00_couplers_to_xbar_TREADY),
        .M_AXIS_tvalid(s00_couplers_to_xbar_TVALID),
        .S_AXIS_ACLK(INTERC_from_MAC_ACLK_net),
        .S_AXIS_ARESETN(INTERC_from_MAC_ARESETN_net),
        .S_AXIS_tdata(INTERC_from_MAC_to_s00_couplers_TDATA),
        .S_AXIS_tdest(INTERC_from_MAC_to_s00_couplers_TDEST),
        .S_AXIS_tkeep(INTERC_from_MAC_to_s00_couplers_TKEEP),
        .S_AXIS_tlast(INTERC_from_MAC_to_s00_couplers_TLAST),
        .S_AXIS_tready(INTERC_from_MAC_to_s00_couplers_TREADY),
        .S_AXIS_tvalid(INTERC_from_MAC_to_s00_couplers_TVALID));
  dynamic_design_top_xbar_0 xbar
       (.aclk(INTERC_from_MAC_ACLK_net),
        .aresetn(INTERC_from_MAC_ARESETN_net),
        .m_axis_tdata({xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tkeep({xbar_to_m01_couplers_TKEEP,xbar_to_m00_couplers_TKEEP}),
        .m_axis_tlast({xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tvalid({xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axis_tdata(s00_couplers_to_xbar_TDATA),
        .s_axis_tdest(s00_couplers_to_xbar_TDEST),
        .s_axis_tkeep(s00_couplers_to_xbar_TKEEP),
        .s_axis_tlast(s00_couplers_to_xbar_TLAST),
        .s_axis_tready(s00_couplers_to_xbar_TREADY),
        .s_axis_tvalid(s00_couplers_to_xbar_TVALID));
endmodule

module dynamic_design_top_axi_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [0:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [0:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_ACLK_net;
  wire axi_interconnect_ARESETN_net;
  wire [39:0]axi_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_to_s00_couplers_ARPROT;
  wire axi_interconnect_to_s00_couplers_ARREADY;
  wire axi_interconnect_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_to_s00_couplers_AWPROT;
  wire axi_interconnect_to_s00_couplers_AWREADY;
  wire axi_interconnect_to_s00_couplers_AWVALID;
  wire axi_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_to_s00_couplers_BRESP;
  wire axi_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_to_s00_couplers_RDATA;
  wire axi_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_to_s00_couplers_RRESP;
  wire axi_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_to_s00_couplers_WDATA;
  wire axi_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_to_s00_couplers_WSTRB;
  wire axi_interconnect_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_ARADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_ARPROT;
  wire m00_couplers_to_axi_interconnect_ARREADY;
  wire m00_couplers_to_axi_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_AWADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_AWPROT;
  wire m00_couplers_to_axi_interconnect_AWREADY;
  wire m00_couplers_to_axi_interconnect_AWVALID;
  wire m00_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_BRESP;
  wire m00_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_RDATA;
  wire m00_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_RRESP;
  wire m00_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_WDATA;
  wire m00_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_WSTRB;
  wire m00_couplers_to_axi_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_ARPROT;
  wire m01_couplers_to_axi_interconnect_ARREADY;
  wire m01_couplers_to_axi_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_AWPROT;
  wire m01_couplers_to_axi_interconnect_AWREADY;
  wire m01_couplers_to_axi_interconnect_AWVALID;
  wire m01_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_BRESP;
  wire m01_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_RDATA;
  wire m01_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_RRESP;
  wire m01_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_WDATA;
  wire m01_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_WSTRB;
  wire m01_couplers_to_axi_interconnect_WVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_ARADDR;
  wire m02_couplers_to_axi_interconnect_ARREADY;
  wire m02_couplers_to_axi_interconnect_ARVALID;
  wire [0:0]m02_couplers_to_axi_interconnect_AWADDR;
  wire m02_couplers_to_axi_interconnect_AWREADY;
  wire m02_couplers_to_axi_interconnect_AWVALID;
  wire m02_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_BRESP;
  wire m02_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_RDATA;
  wire m02_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_RRESP;
  wire m02_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_WDATA;
  wire m02_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_WSTRB;
  wire m02_couplers_to_axi_interconnect_WVALID;
  wire [8:0]m03_couplers_to_axi_interconnect_ARADDR;
  wire m03_couplers_to_axi_interconnect_ARREADY;
  wire m03_couplers_to_axi_interconnect_ARVALID;
  wire [8:0]m03_couplers_to_axi_interconnect_AWADDR;
  wire m03_couplers_to_axi_interconnect_AWREADY;
  wire m03_couplers_to_axi_interconnect_AWVALID;
  wire m03_couplers_to_axi_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_BRESP;
  wire m03_couplers_to_axi_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_RDATA;
  wire m03_couplers_to_axi_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_RRESP;
  wire m03_couplers_to_axi_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_WDATA;
  wire m03_couplers_to_axi_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_WSTRB;
  wire m03_couplers_to_axi_interconnect_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_WVALID;
  assign M02_AXI_araddr[0] = m02_couplers_to_axi_interconnect_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_ARVALID;
  assign M02_AXI_awaddr[0] = m02_couplers_to_axi_interconnect_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_WVALID;
  assign M03_AXI_araddr[8:0] = m03_couplers_to_axi_interconnect_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_axi_interconnect_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_WVALID;
  assign S00_AXI_arready = axi_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_to_s00_couplers_WREADY;
  assign axi_interconnect_ACLK_net = ACLK;
  assign axi_interconnect_ARESETN_net = ARESETN;
  assign axi_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_WREADY = M03_AXI_wready;
  m00_couplers_imp_184MT6L m00_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_181O7C0 m01_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_17E0YYV m02_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_17SJE3E m03_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_QB5NGU s00_couplers
       (.M_ACLK(axi_interconnect_ACLK_net),
        .M_ARESETN(axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_ACLK_net),
        .S_ARESETN(axi_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_to_s00_couplers_WVALID));
  dynamic_design_top_xbar_1 xbar
       (.aclk(axi_interconnect_ACLK_net),
        .aresetn(axi_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_184MT6L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [39:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  dynamic_design_top_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[31:0]),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[31:0]),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_6PVOWP
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [511:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [511:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [511:0]m00_couplers_to_m00_data_fifo_TDATA;
  wire [1:0]m00_couplers_to_m00_data_fifo_TDEST;
  wire [63:0]m00_couplers_to_m00_data_fifo_TKEEP;
  wire m00_couplers_to_m00_data_fifo_TLAST;
  wire m00_couplers_to_m00_data_fifo_TREADY;
  wire m00_couplers_to_m00_data_fifo_TVALID;
  wire [511:0]m00_data_fifo_to_m00_couplers_TDATA;
  wire [1:0]m00_data_fifo_to_m00_couplers_TDEST;
  wire [63:0]m00_data_fifo_to_m00_couplers_TKEEP;
  wire m00_data_fifo_to_m00_couplers_TLAST;
  wire m00_data_fifo_to_m00_couplers_TREADY;
  wire m00_data_fifo_to_m00_couplers_TVALID;

  assign M_AXIS_tdata[511:0] = m00_data_fifo_to_m00_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = m00_data_fifo_to_m00_couplers_TDEST;
  assign M_AXIS_tkeep[63:0] = m00_data_fifo_to_m00_couplers_TKEEP;
  assign M_AXIS_tlast = m00_data_fifo_to_m00_couplers_TLAST;
  assign M_AXIS_tvalid = m00_data_fifo_to_m00_couplers_TVALID;
  assign S_AXIS_tready = m00_couplers_to_m00_data_fifo_TREADY;
  assign m00_couplers_to_m00_data_fifo_TDATA = S_AXIS_tdata[511:0];
  assign m00_couplers_to_m00_data_fifo_TDEST = S_AXIS_tdest[1:0];
  assign m00_couplers_to_m00_data_fifo_TKEEP = S_AXIS_tkeep[63:0];
  assign m00_couplers_to_m00_data_fifo_TLAST = S_AXIS_tlast;
  assign m00_couplers_to_m00_data_fifo_TVALID = S_AXIS_tvalid;
  assign m00_data_fifo_to_m00_couplers_TREADY = M_AXIS_tready;
  dynamic_design_top_m00_data_fifo_0 m00_data_fifo
       (.axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m00_data_fifo_to_m00_couplers_TDATA),
        .m_axis_tdest(m00_data_fifo_to_m00_couplers_TDEST),
        .m_axis_tkeep(m00_data_fifo_to_m00_couplers_TKEEP),
        .m_axis_tlast(m00_data_fifo_to_m00_couplers_TLAST),
        .m_axis_tready(m00_data_fifo_to_m00_couplers_TREADY),
        .m_axis_tvalid(m00_data_fifo_to_m00_couplers_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m00_couplers_to_m00_data_fifo_TDATA),
        .s_axis_tdest(m00_couplers_to_m00_data_fifo_TDEST),
        .s_axis_tkeep(m00_couplers_to_m00_data_fifo_TKEEP),
        .s_axis_tlast(m00_couplers_to_m00_data_fifo_TLAST),
        .s_axis_tready(m00_couplers_to_m00_data_fifo_TREADY),
        .s_axis_tvalid(m00_couplers_to_m00_data_fifo_TVALID));
endmodule

module m01_couplers_imp_181O7C0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [39:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [31:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [31:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  dynamic_design_top_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR[31:0]),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR[31:0]),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_72TO78
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [511:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [511:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire S_AXIS_ACLK;
  wire S_AXIS_ARESETN;
  wire [511:0]m01_couplers_to_m01_data_fifo_TDATA;
  wire [1:0]m01_couplers_to_m01_data_fifo_TDEST;
  wire [63:0]m01_couplers_to_m01_data_fifo_TKEEP;
  wire m01_couplers_to_m01_data_fifo_TLAST;
  wire m01_couplers_to_m01_data_fifo_TREADY;
  wire m01_couplers_to_m01_data_fifo_TVALID;
  wire [511:0]m01_data_fifo_to_m01_couplers_TDATA;
  wire [1:0]m01_data_fifo_to_m01_couplers_TDEST;
  wire [63:0]m01_data_fifo_to_m01_couplers_TKEEP;
  wire m01_data_fifo_to_m01_couplers_TLAST;
  wire m01_data_fifo_to_m01_couplers_TREADY;
  wire m01_data_fifo_to_m01_couplers_TVALID;

  assign M_AXIS_tdata[511:0] = m01_data_fifo_to_m01_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = m01_data_fifo_to_m01_couplers_TDEST;
  assign M_AXIS_tkeep[63:0] = m01_data_fifo_to_m01_couplers_TKEEP;
  assign M_AXIS_tlast = m01_data_fifo_to_m01_couplers_TLAST;
  assign M_AXIS_tvalid = m01_data_fifo_to_m01_couplers_TVALID;
  assign S_AXIS_tready = m01_couplers_to_m01_data_fifo_TREADY;
  assign m01_couplers_to_m01_data_fifo_TDATA = S_AXIS_tdata[511:0];
  assign m01_couplers_to_m01_data_fifo_TDEST = S_AXIS_tdest[1:0];
  assign m01_couplers_to_m01_data_fifo_TKEEP = S_AXIS_tkeep[63:0];
  assign m01_couplers_to_m01_data_fifo_TLAST = S_AXIS_tlast;
  assign m01_couplers_to_m01_data_fifo_TVALID = S_AXIS_tvalid;
  assign m01_data_fifo_to_m01_couplers_TREADY = M_AXIS_tready;
  dynamic_design_top_m01_data_fifo_0 m01_data_fifo
       (.axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(m01_data_fifo_to_m01_couplers_TDATA),
        .m_axis_tdest(m01_data_fifo_to_m01_couplers_TDEST),
        .m_axis_tkeep(m01_data_fifo_to_m01_couplers_TKEEP),
        .m_axis_tlast(m01_data_fifo_to_m01_couplers_TLAST),
        .m_axis_tready(m01_data_fifo_to_m01_couplers_TREADY),
        .m_axis_tvalid(m01_data_fifo_to_m01_couplers_TVALID),
        .s_axis_aclk(S_AXIS_ACLK),
        .s_axis_aresetn(S_AXIS_ARESETN),
        .s_axis_tdata(m01_couplers_to_m01_data_fifo_TDATA),
        .s_axis_tdest(m01_couplers_to_m01_data_fifo_TDEST),
        .s_axis_tkeep(m01_couplers_to_m01_data_fifo_TKEEP),
        .s_axis_tlast(m01_couplers_to_m01_data_fifo_TLAST),
        .s_axis_tready(m01_couplers_to_m01_data_fifo_TREADY),
        .s_axis_tvalid(m01_couplers_to_m01_data_fifo_TVALID));
endmodule

module m02_couplers_imp_17E0YYV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [0:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [0:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [39:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [31:0]m02_couplers_to_m02_regslice_RDATA;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [31:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [3:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [0:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [0:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  dynamic_design_top_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR[0]),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR[0]),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_17SJE3E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]m03_couplers_to_m03_regslice_ARADDR;
  wire [2:0]m03_couplers_to_m03_regslice_ARPROT;
  wire m03_couplers_to_m03_regslice_ARREADY;
  wire m03_couplers_to_m03_regslice_ARVALID;
  wire [39:0]m03_couplers_to_m03_regslice_AWADDR;
  wire [2:0]m03_couplers_to_m03_regslice_AWPROT;
  wire m03_couplers_to_m03_regslice_AWREADY;
  wire m03_couplers_to_m03_regslice_AWVALID;
  wire m03_couplers_to_m03_regslice_BREADY;
  wire [1:0]m03_couplers_to_m03_regslice_BRESP;
  wire m03_couplers_to_m03_regslice_BVALID;
  wire [31:0]m03_couplers_to_m03_regslice_RDATA;
  wire m03_couplers_to_m03_regslice_RREADY;
  wire [1:0]m03_couplers_to_m03_regslice_RRESP;
  wire m03_couplers_to_m03_regslice_RVALID;
  wire [31:0]m03_couplers_to_m03_regslice_WDATA;
  wire m03_couplers_to_m03_regslice_WREADY;
  wire [3:0]m03_couplers_to_m03_regslice_WSTRB;
  wire m03_couplers_to_m03_regslice_WVALID;
  wire [8:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [8:0]m03_regslice_to_m03_couplers_AWADDR;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_regslice_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_regslice_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_regslice_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_regslice_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_regslice_WREADY;
  assign m03_couplers_to_m03_regslice_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_regslice_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_regslice_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_regslice_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_regslice_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_regslice_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_regslice_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  dynamic_design_top_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_m03_regslice_ARADDR[8:0]),
        .s_axi_arprot(m03_couplers_to_m03_regslice_ARPROT),
        .s_axi_arready(m03_couplers_to_m03_regslice_ARREADY),
        .s_axi_arvalid(m03_couplers_to_m03_regslice_ARVALID),
        .s_axi_awaddr(m03_couplers_to_m03_regslice_AWADDR[8:0]),
        .s_axi_awprot(m03_couplers_to_m03_regslice_AWPROT),
        .s_axi_awready(m03_couplers_to_m03_regslice_AWREADY),
        .s_axi_awvalid(m03_couplers_to_m03_regslice_AWVALID),
        .s_axi_bready(m03_couplers_to_m03_regslice_BREADY),
        .s_axi_bresp(m03_couplers_to_m03_regslice_BRESP),
        .s_axi_bvalid(m03_couplers_to_m03_regslice_BVALID),
        .s_axi_rdata(m03_couplers_to_m03_regslice_RDATA),
        .s_axi_rready(m03_couplers_to_m03_regslice_RREADY),
        .s_axi_rresp(m03_couplers_to_m03_regslice_RRESP),
        .s_axi_rvalid(m03_couplers_to_m03_regslice_RVALID),
        .s_axi_wdata(m03_couplers_to_m03_regslice_WDATA),
        .s_axi_wready(m03_couplers_to_m03_regslice_WREADY),
        .s_axi_wstrb(m03_couplers_to_m03_regslice_WSTRB),
        .s_axi_wvalid(m03_couplers_to_m03_regslice_WVALID));
endmodule

module s00_couplers_imp_1OGW06I
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tdata,
    M_AXIS_tdest,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_ACLK,
    S_AXIS_ARESETN,
    S_AXIS_tdata,
    S_AXIS_tdest,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [511:0]M_AXIS_tdata;
  output [1:0]M_AXIS_tdest;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input S_AXIS_ACLK;
  input S_AXIS_ARESETN;
  input [511:0]S_AXIS_tdata;
  input [1:0]S_AXIS_tdest;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;

  wire [31:0]AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT;
  wire [31:0]AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT;
  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire [511:0]s00_couplers_to_s00_data_fifo_TDATA;
  wire [1:0]s00_couplers_to_s00_data_fifo_TDEST;
  wire [63:0]s00_couplers_to_s00_data_fifo_TKEEP;
  wire s00_couplers_to_s00_data_fifo_TLAST;
  wire s00_couplers_to_s00_data_fifo_TREADY;
  wire s00_couplers_to_s00_data_fifo_TVALID;
  wire [511:0]s00_data_fifo_to_s00_couplers_TDATA;
  wire [1:0]s00_data_fifo_to_s00_couplers_TDEST;
  wire [63:0]s00_data_fifo_to_s00_couplers_TKEEP;
  wire s00_data_fifo_to_s00_couplers_TLAST;
  wire s00_data_fifo_to_s00_couplers_TREADY;
  wire s00_data_fifo_to_s00_couplers_TVALID;

  assign M_AXIS_tdata[511:0] = s00_data_fifo_to_s00_couplers_TDATA;
  assign M_AXIS_tdest[1:0] = s00_data_fifo_to_s00_couplers_TDEST;
  assign M_AXIS_tkeep[63:0] = s00_data_fifo_to_s00_couplers_TKEEP;
  assign M_AXIS_tlast = s00_data_fifo_to_s00_couplers_TLAST;
  assign M_AXIS_tvalid = s00_data_fifo_to_s00_couplers_TVALID;
  assign S_AXIS_tready = s00_couplers_to_s00_data_fifo_TREADY;
  assign s00_couplers_to_s00_data_fifo_TDATA = S_AXIS_tdata[511:0];
  assign s00_couplers_to_s00_data_fifo_TDEST = S_AXIS_tdest[1:0];
  assign s00_couplers_to_s00_data_fifo_TKEEP = S_AXIS_tkeep[63:0];
  assign s00_couplers_to_s00_data_fifo_TLAST = S_AXIS_tlast;
  assign s00_couplers_to_s00_data_fifo_TVALID = S_AXIS_tvalid;
  assign s00_data_fifo_to_s00_couplers_TREADY = M_AXIS_tready;
  dynamic_design_top_s00_data_fifo_0 s00_data_fifo
       (.axis_rd_data_count(AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT),
        .axis_wr_data_count(AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT),
        .m_axis_tdata(s00_data_fifo_to_s00_couplers_TDATA),
        .m_axis_tdest(s00_data_fifo_to_s00_couplers_TDEST),
        .m_axis_tkeep(s00_data_fifo_to_s00_couplers_TKEEP),
        .m_axis_tlast(s00_data_fifo_to_s00_couplers_TLAST),
        .m_axis_tready(s00_data_fifo_to_s00_couplers_TREADY),
        .m_axis_tvalid(s00_data_fifo_to_s00_couplers_TVALID),
        .s_axis_aclk(M_AXIS_ACLK),
        .s_axis_aresetn(M_AXIS_ARESETN),
        .s_axis_tdata(s00_couplers_to_s00_data_fifo_TDATA),
        .s_axis_tdest(s00_couplers_to_s00_data_fifo_TDEST),
        .s_axis_tkeep(s00_couplers_to_s00_data_fifo_TKEEP),
        .s_axis_tlast(s00_couplers_to_s00_data_fifo_TLAST),
        .s_axis_tready(s00_couplers_to_s00_data_fifo_TREADY),
        .s_axis_tvalid(s00_couplers_to_s00_data_fifo_TVALID));
endmodule

module s00_couplers_imp_QB5NGU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [39:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [39:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [39:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  dynamic_design_top_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule
