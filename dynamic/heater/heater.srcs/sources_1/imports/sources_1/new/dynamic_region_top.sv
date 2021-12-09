`timescale 1ns / 1ps


module dynamic_region_top(
    M00AXIS_tdata,
    M00AXIS_tdest,
    M00AXIS_tkeep,
    M00AXIS_tlast,
    M00AXIS_tready,
    M00AXIS_tvalid,
    M01AXIS_tdata,
    M01AXIS_tdest,
    M01AXIS_tkeep,
    M01AXIS_tlast,
    M01AXIS_tready,
    M01AXIS_tvalid,
    M02AXIS_tdata,
    M02AXIS_tdest,
    M02AXIS_tkeep,
    M02AXIS_tlast,
    M02AXIS_tready,
    M02AXIS_tvalid,
    M03AXIS_tdata,
    M03AXIS_tdest,
    M03AXIS_tkeep,
    M03AXIS_tlast,
    M03AXIS_tready,
    M03AXIS_tvalid,
    MAXIS_packetizer_tdata,
    MAXIS_packetizer_tkeep,
    MAXIS_packetizer_tlast,
    MAXIS_packetizer_tready,
    MAXIS_packetizer_tvalid,        
    SAXIS_MAC2_MAC3_tdata,
    SAXIS_MAC2_MAC3_tdest,
    SAXIS_MAC2_MAC3_tkeep,
    SAXIS_MAC2_MAC3_tlast,
    SAXIS_MAC2_MAC3_tready,
    SAXIS_MAC2_MAC3_tvalid,
    SAXIS_MAC0_tdata,
    SAXIS_MAC0_tdest,
    SAXIS_MAC0_tkeep,
    SAXIS_MAC0_tlast,
    SAXIS_MAC0_tready,
    SAXIS_MAC0_tvalid,
    SAXIS_MAC1_tdata,
    SAXIS_MAC1_tdest,
    SAXIS_MAC1_tkeep,
    SAXIS_MAC1_tlast,
    SAXIS_MAC1_tready,
    SAXIS_MAC1_tvalid,
    SAXI_Lite_araddr,
    SAXI_Lite_arprot,
    SAXI_Lite_arready,
    SAXI_Lite_arvalid,
    SAXI_Lite_awaddr,
    SAXI_Lite_awprot,
    SAXI_Lite_awready,
    SAXI_Lite_awvalid,
    SAXI_Lite_bready,
    SAXI_Lite_bresp,
    SAXI_Lite_bvalid,
    SAXI_Lite_rdata,
    SAXI_Lite_rready,
    SAXI_Lite_rresp,
    SAXI_Lite_rvalid,
    SAXI_Lite_wdata,
    SAXI_Lite_wready,
    SAXI_Lite_wstrb,
    SAXI_Lite_wvalid,
    clk_200M_in,
    clk_250M_in,
    clk_400M_in,
    clk_100M_in,
    sysclks_p,
    sysclks_n,
    resetn
	);
//------------------------------------

  input             sysclks_p;
  input             sysclks_n;
  
  output [511:0]	M00AXIS_tdata;
  output [1:0]		M00AXIS_tdest;
  output [63:0]		M00AXIS_tkeep;
  output 			M00AXIS_tlast;
  input 			M00AXIS_tready;
  output 			M00AXIS_tvalid;
  
  output [511:0]	M01AXIS_tdata;
  output [1:0]		M01AXIS_tdest;
  output [63:0]		M01AXIS_tkeep;
  output 			M01AXIS_tlast;
  input 			M01AXIS_tready;
  output 			M01AXIS_tvalid;
  
  output [511:0]	M02AXIS_tdata;
  output [1:0]		M02AXIS_tdest;
  output [63:0]		M02AXIS_tkeep;
  output 			M02AXIS_tlast;
  input 			M02AXIS_tready;
  output 			M02AXIS_tvalid;  
  
  output [511:0]	M03AXIS_tdata;
  output [1:0]		M03AXIS_tdest;
  output [63:0]		M03AXIS_tkeep;
  output 			M03AXIS_tlast;
  input 			M03AXIS_tready;
  output 			M03AXIS_tvalid;
  
  
  output [511:0]	MAXIS_packetizer_tdata;
  output [63:0]		MAXIS_packetizer_tkeep;
  output 			MAXIS_packetizer_tlast;
  input 			MAXIS_packetizer_tready;
  output 			MAXIS_packetizer_tvalid;
  
  input [511:0]		SAXIS_MAC2_MAC3_tdata;
  input [1:0]		SAXIS_MAC2_MAC3_tdest;
  input [63:0]		SAXIS_MAC2_MAC3_tkeep;
  input 			SAXIS_MAC2_MAC3_tlast;
  output			SAXIS_MAC2_MAC3_tready;
  input 			SAXIS_MAC2_MAC3_tvalid;
  
  input [511:0]		SAXIS_MAC0_tdata;
  input [1:0]		SAXIS_MAC0_tdest;
  input [63:0]		SAXIS_MAC0_tkeep;
  input 			SAXIS_MAC0_tlast;
  output			SAXIS_MAC0_tready;
  input 			SAXIS_MAC0_tvalid;
  
  input [511:0]		SAXIS_MAC1_tdata;
  input [1:0]		SAXIS_MAC1_tdest;
  input [63:0]		SAXIS_MAC1_tkeep;
  input 			SAXIS_MAC1_tlast;
  output			SAXIS_MAC1_tready;
  input 			SAXIS_MAC1_tvalid;

  
  input [39:0]		SAXI_Lite_araddr;
  input [2:0]		SAXI_Lite_arprot;
  output 			SAXI_Lite_arready;
  input 			SAXI_Lite_arvalid;
  input [39:0]		SAXI_Lite_awaddr;
  input [2:0]		SAXI_Lite_awprot;
  output 			SAXI_Lite_awready;
  input 			SAXI_Lite_awvalid;
  input 			SAXI_Lite_bready;
  output [1:0]		SAXI_Lite_bresp;
  output 			SAXI_Lite_bvalid;
  output [31:0]		SAXI_Lite_rdata;
  input 			SAXI_Lite_rready;
  output [1:0]		SAXI_Lite_rresp;
  output 			SAXI_Lite_rvalid;
  input [31:0]		SAXI_Lite_wdata;
  output 			SAXI_Lite_wready;
  input [3:0]		SAXI_Lite_wstrb;
  input 			SAXI_Lite_wvalid;
  
  input 			clk_200M_in;
  input 			clk_250M_in;
  input 			clk_400M_in;
  input 			clk_100M_in;
  input 			resetn;

  wire [0:0]gpio2_io_i_0;
  wire [31:0]gpio_io_o_0;
  wire rstn_250M_0;
    
 dynamic_design_top_wrapper  dynamic_design_top_wrapper_inst (
        .clk_100M_in        (  clk_100M_in),
        .clk_200M_in        (  clk_200M_in),
        .clk_250M_in        (  clk_250M_in),
        .M_AXIS_MAC0_tdata  (  M00AXIS_tdata),
        .M_AXIS_MAC0_tdest  (  M00AXIS_tdest),
        .M_AXIS_MAC0_tkeep  (  M00AXIS_tkeep ),
        .M_AXIS_MAC0_tlast  (  M00AXIS_tlast ),
        .M_AXIS_MAC0_tready (  M00AXIS_tready ),
        .M_AXIS_MAC0_tvalid (  M00AXIS_tvalid  ),
        .M_AXIS_MAC1_tdata  (  M01AXIS_tdata ),
        .M_AXIS_MAC1_tdest  (  M01AXIS_tdest ),
        .M_AXIS_MAC1_tkeep  (  M01AXIS_tkeep ),
        .M_AXIS_MAC1_tlast  (  M01AXIS_tlast),
        .M_AXIS_MAC1_tready (  M01AXIS_tready ),
        .M_AXIS_MAC1_tvalid (  M01AXIS_tvalid  ),
        .M_AXIS_MAC2_tdata  (  M02AXIS_tdata ),
        .M_AXIS_MAC2_tdest  (  M02AXIS_tdest ),
        .M_AXIS_MAC2_tkeep  (  M02AXIS_tkeep),
        .M_AXIS_MAC2_tlast  (  M02AXIS_tlast),
        .M_AXIS_MAC2_tready (  M02AXIS_tready  ),
        .M_AXIS_MAC2_tvalid (  M02AXIS_tvalid  ),
        .M_AXIS_MAC3_tdata  (  M03AXIS_tdata ),
        .M_AXIS_MAC3_tdest  (  M03AXIS_tdest ),
        .M_AXIS_MAC3_tkeep  (  M03AXIS_tkeep),
        .M_AXIS_MAC3_tlast  (  M03AXIS_tlast),
        .M_AXIS_MAC3_tready  ( M03AXIS_tready ),
        .M_AXIS_MAC3_tvalid  ( M03AXIS_tvalid ),
        
        .S_AXIS_MAC0_tdata      (SAXIS_MAC0_tdata),
        .S_AXIS_MAC0_tdest      (SAXIS_MAC0_tdest),
        .S_AXIS_MAC0_tkeep      (SAXIS_MAC0_tkeep),
        .S_AXIS_MAC0_tlast      (SAXIS_MAC0_tlast),
        .S_AXIS_MAC0_tready     (SAXIS_MAC0_tready),
        .S_AXIS_MAC0_tvalid     (SAXIS_MAC0_tvalid),
        .S_AXIS_MAC1_tdata      (SAXIS_MAC1_tdata),
        .S_AXIS_MAC1_tdest      (SAXIS_MAC1_tdest),
        .S_AXIS_MAC1_tkeep      (SAXIS_MAC1_tkeep),
        .S_AXIS_MAC1_tlast      (SAXIS_MAC1_tlast),
        .S_AXIS_MAC1_tready     (SAXIS_MAC1_tready),
        .S_AXIS_MAC1_tvalid     (SAXIS_MAC1_tvalid),
        .S_AXIS_MAC2_MAC3_tdata (SAXIS_MAC2_MAC3_tdata),
        .S_AXIS_MAC2_MAC3_tdest (SAXIS_MAC2_MAC3_tdest),
        .S_AXIS_MAC2_MAC3_tkeep (SAXIS_MAC2_MAC3_tkeep),
        .S_AXIS_MAC2_MAC3_tlast (SAXIS_MAC2_MAC3_tlast),
        .S_AXIS_MAC2_MAC3_tready(SAXIS_MAC2_MAC3_tready),
        .S_AXIS_MAC2_MAC3_tvalid(SAXIS_MAC2_MAC3_tvalid),
        .S_AXI_Lite_araddr      (SAXI_Lite_araddr),
        .S_AXI_Lite_arprot      (SAXI_Lite_arprot),
        .S_AXI_Lite_arready     (SAXI_Lite_arready),
        .S_AXI_Lite_arvalid     (SAXI_Lite_arvalid),
        .S_AXI_Lite_awaddr      (SAXI_Lite_awaddr),
        .S_AXI_Lite_awprot      (SAXI_Lite_awprot),
        .S_AXI_Lite_awready     (SAXI_Lite_awready),
        .S_AXI_Lite_awvalid     (SAXI_Lite_awvalid),
        .S_AXI_Lite_bready      (SAXI_Lite_bready),
        .S_AXI_Lite_bresp       (SAXI_Lite_bresp),
        .S_AXI_Lite_bvalid      (SAXI_Lite_bvalid),
        .S_AXI_Lite_rdata       (SAXI_Lite_rdata),
        .S_AXI_Lite_rready      (SAXI_Lite_rready),
        .S_AXI_Lite_rresp       (SAXI_Lite_rresp),
        .S_AXI_Lite_rvalid      (SAXI_Lite_rvalid),
        .S_AXI_Lite_wdata       (SAXI_Lite_wdata),
        .S_AXI_Lite_wready      (SAXI_Lite_wready),
        .S_AXI_Lite_wstrb       (SAXI_Lite_wstrb),
        .S_AXI_Lite_wvalid      (SAXI_Lite_wvalid),
        
        
        .clk_400M_in            (clk_400M_in),
        .DDR_clk_p              (sysclks_p),
        .DDR_clk_n              (sysclks_n),
        .gpio2_io_i_0(gpio2_io_i_0),
        .gpio_io_o_0(gpio_io_o_0),
        .resetn(resetn),
        .rstn_250M_0(rstn_250M_0)
  
    );
   
       heater_cfg # 
       (
       .CARD                        (                     "U25N"),
       .DSP_MAX                     (                     70),
       .DSP_SEED                    (                     16'h8228),
       .SLICES_PER_ARRAY            (                     200),
       .SLICE_MAX                   (                     200),
       .BRAM_MAX                    (                     430)
       ) 
       heater_cfg_u
       (
       .clock                       (                clk_250M_in), //250MHz
       .resetn                      (               rstn_250M_0),
       .config_clk                  (                clk_200M_in),
       .config_port                 (               gpio_io_o_0),
       .dout                        (              gpio2_io_i_0)
       );        

   
endmodule
