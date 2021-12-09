--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sun May 16 19:07:02 2021
--Host        : newton running 64-bit unknown
--Command     : generate_target proj_blk_design.bd
--Design      : proj_blk_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PS_imp_9B4UWJ is
  port (
    M_AXIS_MM2S_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_MM2S_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_MM2S_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_MM2S_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_MM2S_tlast : out STD_LOGIC;
    M_AXIS_MM2S_tready : in STD_LOGIC;
    M_AXIS_MM2S_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_MM2S_tvalid : out STD_LOGIC;
    M_AXI_HPM0_LPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HPM0_LPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HPM0_LPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HPM0_LPD_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HPM0_LPD_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_HPM0_LPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HPM0_LPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HPM0_LPD_arready : in STD_LOGIC;
    M_AXI_HPM0_LPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HPM0_LPD_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_arvalid : out STD_LOGIC;
    M_AXI_HPM0_LPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HPM0_LPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HPM0_LPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HPM0_LPD_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HPM0_LPD_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_HPM0_LPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HPM0_LPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HPM0_LPD_awready : in STD_LOGIC;
    M_AXI_HPM0_LPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HPM0_LPD_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_awvalid : out STD_LOGIC;
    M_AXI_HPM0_LPD_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_bready : out STD_LOGIC;
    M_AXI_HPM0_LPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HPM0_LPD_bvalid : in STD_LOGIC;
    M_AXI_HPM0_LPD_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_HPM0_LPD_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HPM0_LPD_rlast : in STD_LOGIC;
    M_AXI_HPM0_LPD_rready : out STD_LOGIC;
    M_AXI_HPM0_LPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HPM0_LPD_rvalid : in STD_LOGIC;
    M_AXI_HPM0_LPD_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_HPM0_LPD_wlast : out STD_LOGIC;
    M_AXI_HPM0_LPD_wready : in STD_LOGIC;
    M_AXI_HPM0_LPD_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HPM0_LPD_wvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_clk0 : out STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC
  );
end PS_imp_9B4UWJ;

architecture STRUCTURE of PS_imp_9B4UWJ is
  component proj_blk_design_axi_mcdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_mm2s_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_ch1_introut : out STD_LOGIC;
    mm2s_ch2_introut : out STD_LOGIC;
    mm2s_ch3_introut : out STD_LOGIC;
    mm2s_ch4_introut : out STD_LOGIC;
    s2mm_ch1_introut : out STD_LOGIC;
    s2mm_ch2_introut : out STD_LOGIC;
    s2mm_ch3_introut : out STD_LOGIC;
    s2mm_ch4_introut : out STD_LOGIC
  );
  end component proj_blk_design_axi_mcdma_0_0;
  component proj_blk_design_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_proc_sys_reset_0_0;
  component proj_blk_design_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component proj_blk_design_smartconnect_0_0;
  component proj_blk_design_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC
  );
  end component proj_blk_design_util_reduced_logic_0_0;
  component proj_blk_design_util_reduced_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC
  );
  end component proj_blk_design_util_reduced_logic_1_0;
  component proj_blk_design_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_xlconcat_0_0;
  component proj_blk_design_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_xlconcat_1_0;
  component proj_blk_design_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_xlconcat_2_0;
  component proj_blk_design_zynq_ultra_ps_e_0_0 is
  port (
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp0_fpd_aclk : in STD_LOGIC;
    saxigp2_aruser : in STD_LOGIC;
    saxigp2_awuser : in STD_LOGIC;
    saxigp2_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_awlock : in STD_LOGIC;
    saxigp2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awvalid : in STD_LOGIC;
    saxigp2_awready : out STD_LOGIC;
    saxigp2_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp2_wlast : in STD_LOGIC;
    saxigp2_wvalid : in STD_LOGIC;
    saxigp2_wready : out STD_LOGIC;
    saxigp2_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_bvalid : out STD_LOGIC;
    saxigp2_bready : in STD_LOGIC;
    saxigp2_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_arlock : in STD_LOGIC;
    saxigp2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arvalid : in STD_LOGIC;
    saxigp2_arready : out STD_LOGIC;
    saxigp2_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_rlast : out STD_LOGIC;
    saxigp2_rvalid : out STD_LOGIC;
    saxigp2_rready : in STD_LOGIC;
    saxigp2_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );
  end component proj_blk_design_zynq_ultra_ps_e_0_0;
  component proj_blk_design_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component proj_blk_design_axis_data_fifo_0_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_TVALID : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_1_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_1_TLAST : STD_LOGIC;
  signal S_AXIS_1_TREADY : STD_LOGIC;
  signal S_AXIS_1_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXIS_1_TVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mcdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_mcdma_0_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mcdma_0_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_mcdma_0_mm2s_ch1_introut : STD_LOGIC;
  signal axi_mcdma_0_mm2s_ch2_introut : STD_LOGIC;
  signal axi_mcdma_0_mm2s_ch3_introut : STD_LOGIC;
  signal axi_mcdma_0_mm2s_ch4_introut : STD_LOGIC;
  signal axi_mcdma_0_s2mm_ch1_introut : STD_LOGIC;
  signal axi_mcdma_0_s2mm_ch2_introut : STD_LOGIC;
  signal axi_mcdma_0_s2mm_ch3_introut : STD_LOGIC;
  signal axi_mcdma_0_s2mm_ch4_introut : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal smartconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal util_reduced_logic_1_Res : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_resetn1 : STD_LOGIC;
  signal NLW_axi_mcdma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_mcdma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ultra_ps_e_0_saxigp2_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_saxigp2_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  Conn1_TREADY <= M_AXIS_MM2S_tready;
  M_AXIS_MM2S_tdata(511 downto 0) <= Conn1_TDATA(511 downto 0);
  M_AXIS_MM2S_tdest(3 downto 0) <= Conn1_TDEST(3 downto 0);
  M_AXIS_MM2S_tid(7 downto 0) <= Conn1_TID(7 downto 0);
  M_AXIS_MM2S_tkeep(63 downto 0) <= Conn1_TKEEP(63 downto 0);
  M_AXIS_MM2S_tlast <= Conn1_TLAST;
  M_AXIS_MM2S_tuser(15 downto 0) <= Conn1_TUSER(15 downto 0);
  M_AXIS_MM2S_tvalid <= Conn1_TVALID;
  M_AXI_HPM0_LPD_araddr(39 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0);
  M_AXI_HPM0_LPD_arburst(1 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0);
  M_AXI_HPM0_LPD_arcache(3 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0);
  M_AXI_HPM0_LPD_arid(15 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0);
  M_AXI_HPM0_LPD_arlen(7 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0);
  M_AXI_HPM0_LPD_arlock(0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  M_AXI_HPM0_LPD_arprot(2 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0);
  M_AXI_HPM0_LPD_arqos(3 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0);
  M_AXI_HPM0_LPD_arsize(2 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0);
  M_AXI_HPM0_LPD_aruser(15 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER(15 downto 0);
  M_AXI_HPM0_LPD_arvalid <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  M_AXI_HPM0_LPD_awaddr(39 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0);
  M_AXI_HPM0_LPD_awburst(1 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0);
  M_AXI_HPM0_LPD_awcache(3 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0);
  M_AXI_HPM0_LPD_awid(15 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0);
  M_AXI_HPM0_LPD_awlen(7 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0);
  M_AXI_HPM0_LPD_awlock(0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  M_AXI_HPM0_LPD_awprot(2 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0);
  M_AXI_HPM0_LPD_awqos(3 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0);
  M_AXI_HPM0_LPD_awsize(2 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0);
  M_AXI_HPM0_LPD_awuser(15 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER(15 downto 0);
  M_AXI_HPM0_LPD_awvalid <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  M_AXI_HPM0_LPD_bready <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  M_AXI_HPM0_LPD_rready <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  M_AXI_HPM0_LPD_wdata(31 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0);
  M_AXI_HPM0_LPD_wlast <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  M_AXI_HPM0_LPD_wstrb(3 downto 0) <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0);
  M_AXI_HPM0_LPD_wvalid <= zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S_AXIS_1_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  S_AXIS_1_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  S_AXIS_1_TID(7 downto 0) <= S_AXIS_tid(7 downto 0);
  S_AXIS_1_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  S_AXIS_1_TLAST <= S_AXIS_tlast;
  S_AXIS_1_TUSER(15 downto 0) <= S_AXIS_tuser(15 downto 0);
  S_AXIS_1_TVALID <= S_AXIS_tvalid;
  S_AXIS_tready <= S_AXIS_1_TREADY;
  S_AXI_LITE_arready <= axi_interconnect_0_M00_AXI_ARREADY;
  S_AXI_LITE_awready <= axi_interconnect_0_M00_AXI_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= axi_interconnect_0_M00_AXI_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= axi_interconnect_0_M00_AXI_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= axi_interconnect_0_M00_AXI_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= axi_interconnect_0_M00_AXI_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= axi_interconnect_0_M00_AXI_RVALID;
  S_AXI_LITE_wready <= axi_interconnect_0_M00_AXI_WREADY;
  axi_interconnect_0_M00_AXI_ARADDR(11 downto 0) <= S_AXI_LITE_araddr(11 downto 0);
  axi_interconnect_0_M00_AXI_ARVALID <= S_AXI_LITE_arvalid;
  axi_interconnect_0_M00_AXI_AWADDR(11 downto 0) <= S_AXI_LITE_awaddr(11 downto 0);
  axi_interconnect_0_M00_AXI_AWVALID <= S_AXI_LITE_awvalid;
  axi_interconnect_0_M00_AXI_BREADY <= S_AXI_LITE_bready;
  axi_interconnect_0_M00_AXI_RREADY <= S_AXI_LITE_rready;
  axi_interconnect_0_M00_AXI_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  axi_interconnect_0_M00_AXI_WVALID <= S_AXI_LITE_wvalid;
  peripheral_aresetn(0) <= zynq_ultra_ps_e_0_pl_resetn0(0);
  pl_clk0 <= zynq_ultra_ps_e_0_pl_clk0;
  s_axis_aresetn_0_1 <= s_axis_aresetn_0;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY <= M_AXI_HPM0_LPD_arready;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY <= M_AXI_HPM0_LPD_awready;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0) <= M_AXI_HPM0_LPD_bid(15 downto 0);
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0) <= M_AXI_HPM0_LPD_bresp(1 downto 0);
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID <= M_AXI_HPM0_LPD_bvalid;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0) <= M_AXI_HPM0_LPD_rdata(31 downto 0);
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0) <= M_AXI_HPM0_LPD_rid(15 downto 0);
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST <= M_AXI_HPM0_LPD_rlast;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0) <= M_AXI_HPM0_LPD_rresp(1 downto 0);
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID <= M_AXI_HPM0_LPD_rvalid;
  zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY <= M_AXI_HPM0_LPD_wready;
axi_mcdma_0: component proj_blk_design_axi_mcdma_0_0
     port map (
      axi_resetn => zynq_ultra_ps_e_0_pl_resetn0(0),
      m_axi_mm2s_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axi_mm2s_araddr(31 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_mcdma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_aruser(3 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARUSER(3 downto 0),
      m_axi_mm2s_arvalid => axi_mcdma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(511 downto 0) => axi_mcdma_0_M_AXI_MM2S_RDATA(511 downto 0),
      m_axi_mm2s_rlast => axi_mcdma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_mcdma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_mcdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_mcdma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_mcdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awuser(3 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWUSER(3 downto 0),
      m_axi_s2mm_awvalid => axi_mcdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_mcdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_mcdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_mcdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(511 downto 0) => axi_mcdma_0_M_AXI_S2MM_WDATA(511 downto 0),
      m_axi_s2mm_wlast => axi_mcdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_mcdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(63 downto 0) => axi_mcdma_0_M_AXI_S2MM_WSTRB(63 downto 0),
      m_axi_s2mm_wvalid => axi_mcdma_0_M_AXI_S2MM_WVALID,
      m_axi_sg_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axi_sg_araddr(31 downto 0) => axi_mcdma_0_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_mcdma_0_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_mcdma_0_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_mcdma_0_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_mcdma_0_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_mcdma_0_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_mcdma_0_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_aruser(3 downto 0) => axi_mcdma_0_M_AXI_SG_ARUSER(3 downto 0),
      m_axi_sg_arvalid => axi_mcdma_0_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_mcdma_0_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_mcdma_0_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_mcdma_0_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_mcdma_0_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_mcdma_0_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_mcdma_0_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_mcdma_0_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awuser(3 downto 0) => axi_mcdma_0_M_AXI_SG_AWUSER(3 downto 0),
      m_axi_sg_awvalid => axi_mcdma_0_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_mcdma_0_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_mcdma_0_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_mcdma_0_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_mcdma_0_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_mcdma_0_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_mcdma_0_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_mcdma_0_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_mcdma_0_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_mcdma_0_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_mcdma_0_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_mcdma_0_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_mcdma_0_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_mcdma_0_M_AXI_SG_WVALID,
      m_axis_mm2s_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      m_axis_mm2s_tdest(3 downto 0) => Conn1_TDEST(3 downto 0),
      m_axis_mm2s_tid(7 downto 0) => Conn1_TID(7 downto 0),
      m_axis_mm2s_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      m_axis_mm2s_tlast => Conn1_TLAST,
      m_axis_mm2s_tready => Conn1_TREADY,
      m_axis_mm2s_tuser(15 downto 0) => Conn1_TUSER(15 downto 0),
      m_axis_mm2s_tvalid => Conn1_TVALID,
      mm2s_ch1_introut => axi_mcdma_0_mm2s_ch1_introut,
      mm2s_ch2_introut => axi_mcdma_0_mm2s_ch2_introut,
      mm2s_ch3_introut => axi_mcdma_0_mm2s_ch3_introut,
      mm2s_ch4_introut => axi_mcdma_0_mm2s_ch4_introut,
      mm2s_prmry_reset_out_n => NLW_axi_mcdma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_ch1_introut => axi_mcdma_0_s2mm_ch1_introut,
      s2mm_ch2_introut => axi_mcdma_0_s2mm_ch2_introut,
      s2mm_ch3_introut => axi_mcdma_0_s2mm_ch3_introut,
      s2mm_ch4_introut => axi_mcdma_0_s2mm_ch4_introut,
      s2mm_prmry_reset_out_n => NLW_axi_mcdma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_lite_araddr(11 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(11 downto 0),
      s_axi_lite_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_lite_awaddr(11 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(11 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      s_axis_s2mm_tdata(511 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(511 downto 0),
      s_axis_s2mm_tdest(3 downto 0) => axis_data_fifo_0_M_AXIS_TDEST(3 downto 0),
      s_axis_s2mm_tid(7 downto 0) => axis_data_fifo_0_M_AXIS_TID(7 downto 0),
      s_axis_s2mm_tkeep(63 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(63 downto 0),
      s_axis_s2mm_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      s_axis_s2mm_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s_axis_s2mm_tuser(15 downto 0) => axis_data_fifo_0_M_AXIS_TUSER(15 downto 0),
      s_axis_s2mm_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
axis_data_fifo_0: component proj_blk_design_axis_data_fifo_0_0
     port map (
      m_axis_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axis_tdata(511 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => axis_data_fifo_0_M_AXIS_TDEST(3 downto 0),
      m_axis_tid(7 downto 0) => axis_data_fifo_0_M_AXIS_TID(7 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tuser(15 downto 0) => axis_data_fifo_0_M_AXIS_TUSER(15 downto 0),
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => S00_AXIS_ACLK_1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(511 downto 0) => S_AXIS_1_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => S_AXIS_1_TDEST(3 downto 0),
      s_axis_tid(7 downto 0) => S_AXIS_1_TID(7 downto 0),
      s_axis_tkeep(63 downto 0) => S_AXIS_1_TKEEP(63 downto 0),
      s_axis_tlast => S_AXIS_1_TLAST,
      s_axis_tready => S_AXIS_1_TREADY,
      s_axis_tuser(15 downto 0) => S_AXIS_1_TUSER(15 downto 0),
      s_axis_tvalid => S_AXIS_1_TVALID
    );
proc_sys_reset_0: component proj_blk_design_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => zynq_ultra_ps_e_0_pl_resetn0(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
smartconnect_0: component proj_blk_design_smartconnect_0_0
     port map (
      M00_AXI_araddr(48 downto 0) => smartconnect_0_M00_AXI_ARADDR(48 downto 0),
      M00_AXI_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => smartconnect_0_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(3 downto 0) => smartconnect_0_M00_AXI_ARUSER(3 downto 0),
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(48 downto 0) => smartconnect_0_M00_AXI_AWADDR(48 downto 0),
      M00_AXI_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => smartconnect_0_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(3 downto 0) => smartconnect_0_M00_AXI_AWUSER(3 downto 0),
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => smartconnect_0_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => smartconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => smartconnect_0_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => smartconnect_0_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_mcdma_0_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_aruser(3 downto 0) => axi_mcdma_0_M_AXI_MM2S_ARUSER(3 downto 0),
      S00_AXI_arvalid => axi_mcdma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(511 downto 0) => axi_mcdma_0_M_AXI_MM2S_RDATA(511 downto 0),
      S00_AXI_rlast => axi_mcdma_0_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_mcdma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_mcdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_mcdma_0_M_AXI_MM2S_RVALID,
      S01_AXI_awaddr(31 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => axi_mcdma_0_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awuser(3 downto 0) => axi_mcdma_0_M_AXI_S2MM_AWUSER(3 downto 0),
      S01_AXI_awvalid => axi_mcdma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => axi_mcdma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_mcdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_mcdma_0_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(511 downto 0) => axi_mcdma_0_M_AXI_S2MM_WDATA(511 downto 0),
      S01_AXI_wlast => axi_mcdma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready => axi_mcdma_0_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(63 downto 0) => axi_mcdma_0_M_AXI_S2MM_WSTRB(63 downto 0),
      S01_AXI_wvalid => axi_mcdma_0_M_AXI_S2MM_WVALID,
      S02_AXI_araddr(31 downto 0) => axi_mcdma_0_M_AXI_SG_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_mcdma_0_M_AXI_SG_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_mcdma_0_M_AXI_SG_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_mcdma_0_M_AXI_SG_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => '0',
      S02_AXI_arprot(2 downto 0) => axi_mcdma_0_M_AXI_SG_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => B"0000",
      S02_AXI_arready => axi_mcdma_0_M_AXI_SG_ARREADY,
      S02_AXI_arsize(2 downto 0) => axi_mcdma_0_M_AXI_SG_ARSIZE(2 downto 0),
      S02_AXI_aruser(3 downto 0) => axi_mcdma_0_M_AXI_SG_ARUSER(3 downto 0),
      S02_AXI_arvalid => axi_mcdma_0_M_AXI_SG_ARVALID,
      S02_AXI_awaddr(31 downto 0) => axi_mcdma_0_M_AXI_SG_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_mcdma_0_M_AXI_SG_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_mcdma_0_M_AXI_SG_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_mcdma_0_M_AXI_SG_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => '0',
      S02_AXI_awprot(2 downto 0) => axi_mcdma_0_M_AXI_SG_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => B"0000",
      S02_AXI_awready => axi_mcdma_0_M_AXI_SG_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_mcdma_0_M_AXI_SG_AWSIZE(2 downto 0),
      S02_AXI_awuser(3 downto 0) => axi_mcdma_0_M_AXI_SG_AWUSER(3 downto 0),
      S02_AXI_awvalid => axi_mcdma_0_M_AXI_SG_AWVALID,
      S02_AXI_bready => axi_mcdma_0_M_AXI_SG_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_mcdma_0_M_AXI_SG_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_mcdma_0_M_AXI_SG_BVALID,
      S02_AXI_rdata(31 downto 0) => axi_mcdma_0_M_AXI_SG_RDATA(31 downto 0),
      S02_AXI_rlast => axi_mcdma_0_M_AXI_SG_RLAST,
      S02_AXI_rready => axi_mcdma_0_M_AXI_SG_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_mcdma_0_M_AXI_SG_RRESP(1 downto 0),
      S02_AXI_rvalid => axi_mcdma_0_M_AXI_SG_RVALID,
      S02_AXI_wdata(31 downto 0) => axi_mcdma_0_M_AXI_SG_WDATA(31 downto 0),
      S02_AXI_wlast => axi_mcdma_0_M_AXI_SG_WLAST,
      S02_AXI_wready => axi_mcdma_0_M_AXI_SG_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_mcdma_0_M_AXI_SG_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_mcdma_0_M_AXI_SG_WVALID,
      aclk => zynq_ultra_ps_e_0_pl_clk0,
      aresetn => zynq_ultra_ps_e_0_pl_resetn0(0)
    );
util_reduced_logic_0: component proj_blk_design_util_reduced_logic_0_0
     port map (
      Op1(3 downto 0) => xlconcat_1_dout(3 downto 0),
      Res => util_reduced_logic_0_Res
    );
util_reduced_logic_1: component proj_blk_design_util_reduced_logic_1_0
     port map (
      Op1(3 downto 0) => xlconcat_0_dout(3 downto 0),
      Res => util_reduced_logic_1_Res
    );
xlconcat_0: component proj_blk_design_xlconcat_0_0
     port map (
      In0(0) => axi_mcdma_0_mm2s_ch1_introut,
      In1(0) => axi_mcdma_0_mm2s_ch2_introut,
      In2(0) => axi_mcdma_0_mm2s_ch3_introut,
      In3(0) => axi_mcdma_0_mm2s_ch4_introut,
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconcat_1: component proj_blk_design_xlconcat_1_0
     port map (
      In0(0) => axi_mcdma_0_s2mm_ch1_introut,
      In1(0) => axi_mcdma_0_s2mm_ch2_introut,
      In2(0) => axi_mcdma_0_s2mm_ch3_introut,
      In3(0) => axi_mcdma_0_s2mm_ch4_introut,
      dout(3 downto 0) => xlconcat_1_dout(3 downto 0)
    );
xlconcat_2: component proj_blk_design_xlconcat_2_0
     port map (
      In0(0) => util_reduced_logic_0_Res,
      In1(0) => util_reduced_logic_1_Res,
      dout(1 downto 0) => xlconcat_2_dout(1 downto 0)
    );
zynq_ultra_ps_e_0: component proj_blk_design_zynq_ultra_ps_e_0_0
     port map (
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      maxigp2_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_0_pl_clk0,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk0,
      pl_ps_irq0(1 downto 0) => xlconcat_2_dout(1 downto 0),
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn1,
      saxigp2_araddr(48 downto 0) => smartconnect_0_M00_AXI_ARADDR(48 downto 0),
      saxigp2_arburst(1 downto 0) => smartconnect_0_M00_AXI_ARBURST(1 downto 0),
      saxigp2_arcache(3 downto 0) => smartconnect_0_M00_AXI_ARCACHE(3 downto 0),
      saxigp2_arid(5 downto 0) => B"000000",
      saxigp2_arlen(7 downto 0) => smartconnect_0_M00_AXI_ARLEN(7 downto 0),
      saxigp2_arlock => smartconnect_0_M00_AXI_ARLOCK(0),
      saxigp2_arprot(2 downto 0) => smartconnect_0_M00_AXI_ARPROT(2 downto 0),
      saxigp2_arqos(3 downto 0) => smartconnect_0_M00_AXI_ARQOS(3 downto 0),
      saxigp2_arready => smartconnect_0_M00_AXI_ARREADY,
      saxigp2_arsize(2 downto 0) => smartconnect_0_M00_AXI_ARSIZE(2 downto 0),
      saxigp2_aruser => smartconnect_0_M00_AXI_ARUSER(0),
      saxigp2_arvalid => smartconnect_0_M00_AXI_ARVALID,
      saxigp2_awaddr(48 downto 0) => smartconnect_0_M00_AXI_AWADDR(48 downto 0),
      saxigp2_awburst(1 downto 0) => smartconnect_0_M00_AXI_AWBURST(1 downto 0),
      saxigp2_awcache(3 downto 0) => smartconnect_0_M00_AXI_AWCACHE(3 downto 0),
      saxigp2_awid(5 downto 0) => B"000000",
      saxigp2_awlen(7 downto 0) => smartconnect_0_M00_AXI_AWLEN(7 downto 0),
      saxigp2_awlock => smartconnect_0_M00_AXI_AWLOCK(0),
      saxigp2_awprot(2 downto 0) => smartconnect_0_M00_AXI_AWPROT(2 downto 0),
      saxigp2_awqos(3 downto 0) => smartconnect_0_M00_AXI_AWQOS(3 downto 0),
      saxigp2_awready => smartconnect_0_M00_AXI_AWREADY,
      saxigp2_awsize(2 downto 0) => smartconnect_0_M00_AXI_AWSIZE(2 downto 0),
      saxigp2_awuser => smartconnect_0_M00_AXI_AWUSER(0),
      saxigp2_awvalid => smartconnect_0_M00_AXI_AWVALID,
      saxigp2_bid(5 downto 0) => NLW_zynq_ultra_ps_e_0_saxigp2_bid_UNCONNECTED(5 downto 0),
      saxigp2_bready => smartconnect_0_M00_AXI_BREADY,
      saxigp2_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      saxigp2_bvalid => smartconnect_0_M00_AXI_BVALID,
      saxigp2_rdata(127 downto 0) => smartconnect_0_M00_AXI_RDATA(127 downto 0),
      saxigp2_rid(5 downto 0) => NLW_zynq_ultra_ps_e_0_saxigp2_rid_UNCONNECTED(5 downto 0),
      saxigp2_rlast => smartconnect_0_M00_AXI_RLAST,
      saxigp2_rready => smartconnect_0_M00_AXI_RREADY,
      saxigp2_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      saxigp2_rvalid => smartconnect_0_M00_AXI_RVALID,
      saxigp2_wdata(127 downto 0) => smartconnect_0_M00_AXI_WDATA(127 downto 0),
      saxigp2_wlast => smartconnect_0_M00_AXI_WLAST,
      saxigp2_wready => smartconnect_0_M00_AXI_WREADY,
      saxigp2_wstrb(15 downto 0) => smartconnect_0_M00_AXI_WSTRB(15 downto 0),
      saxigp2_wvalid => smartconnect_0_M00_AXI_WVALID,
      saxihp0_fpd_aclk => zynq_ultra_ps_e_0_pl_clk0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity from_ps_imp_IN897Q is
  port (
    M_AXIS1_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS1_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS1_tlast : out STD_LOGIC;
    M_AXIS1_tready : in STD_LOGIC;
    M_AXIS1_tvalid : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_tvalid : in STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
end from_ps_imp_IN897Q;

architecture STRUCTURE of from_ps_imp_IN897Q is
  component proj_blk_design_demux_logic_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    demux_en : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component proj_blk_design_demux_logic_0_0;
  component proj_blk_design_fifo_PS_to_Cntrl_VLAN_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component proj_blk_design_fifo_PS_to_Cntrl_VLAN_0;
  component proj_blk_design_fifo_CNTRL_VLAN_to_MAC3_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_fifo_CNTRL_VLAN_to_MAC3_0;
  component proj_blk_design_Control_VLAN_PUSH_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    egress_flag : out STD_LOGIC
  );
  end component proj_blk_design_Control_VLAN_PUSH_0_0;
  component proj_blk_design_fifo_CNTRL_VLAN_to_MAC2_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_fifo_CNTRL_VLAN_to_MAC2_0;
  signal Control_VLAN_PUSH_0_egress_flag : STD_LOGIC;
  signal Control_VLAN_PUSH_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Control_VLAN_PUSH_0_m_axis_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Control_VLAN_PUSH_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Control_VLAN_PUSH_0_m_axis_TLAST : STD_LOGIC;
  signal Control_VLAN_PUSH_0_m_axis_TREADY : STD_LOGIC;
  signal Control_VLAN_PUSH_0_m_axis_TVALID : STD_LOGIC;
  signal Control_VLAN_PUSH_0_s_axis_tready : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal PS_M_AXIS_MM2S_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXIS_MM2S_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PS_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal PS_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked1 : STD_LOGIC;
  signal demux_logic_0_m0_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal demux_logic_0_m0_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal demux_logic_0_m0_axis_tlast : STD_LOGIC;
  signal demux_logic_0_m0_axis_tvalid : STD_LOGIC;
  signal demux_logic_0_m1_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal demux_logic_0_m1_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal demux_logic_0_m1_axis_tlast : STD_LOGIC;
  signal demux_logic_0_m1_axis_tvalid : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_s_axis_tready : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_s_axis_tready : STD_LOGIC;
  signal fifo_PS_to_Cntrl_VLAN_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal fifo_PS_to_Cntrl_VLAN_m_axis_tdest : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_PS_to_Cntrl_VLAN_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_PS_to_Cntrl_VLAN_m_axis_tlast : STD_LOGIC;
  signal fifo_PS_to_Cntrl_VLAN_m_axis_tvalid : STD_LOGIC;
  signal qdma_axi_aclk : STD_LOGIC;
  signal NLW_demux_logic_0_m0_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_PS_to_Cntrl_VLAN_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_PS_to_Cntrl_VLAN_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  M_AXIS1_tdata(511 downto 0) <= fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA(511 downto 0);
  M_AXIS1_tkeep(63 downto 0) <= fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP(63 downto 0);
  M_AXIS1_tlast <= fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST;
  M_AXIS1_tvalid <= fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID;
  M_AXIS_tdata(511 downto 0) <= fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA(511 downto 0);
  M_AXIS_tkeep(63 downto 0) <= fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP(63 downto 0);
  M_AXIS_tlast <= fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST;
  M_AXIS_tvalid <= fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID;
  PS_M_AXIS_MM2S_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  PS_M_AXIS_MM2S_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  PS_M_AXIS_MM2S_TID(7 downto 0) <= S_AXIS_tid(7 downto 0);
  PS_M_AXIS_MM2S_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  PS_M_AXIS_MM2S_TLAST <= S_AXIS_tlast;
  PS_M_AXIS_MM2S_TUSER(15 downto 0) <= S_AXIS_tuser(15 downto 0);
  PS_M_AXIS_MM2S_TVALID <= S_AXIS_tvalid;
  S_AXIS_tready <= PS_M_AXIS_MM2S_TREADY;
  clk_wiz_0_clk_out2 <= m1_axis_aclk;
  clk_wiz_0_locked1 <= s_axis_aresetn;
  fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY <= M_AXIS1_tready;
  fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY <= M_AXIS_tready;
  qdma_axi_aclk <= s_axis_aclk;
Control_VLAN_PUSH_0: component proj_blk_design_Control_VLAN_PUSH_0_0
     port map (
      egress_flag => Control_VLAN_PUSH_0_egress_flag,
      m_axis_aclk => clk_wiz_0_clk_out2,
      m_axis_tdata(511 downto 0) => Control_VLAN_PUSH_0_m_axis_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => Control_VLAN_PUSH_0_m_axis_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => Control_VLAN_PUSH_0_m_axis_TKEEP(63 downto 0),
      m_axis_tlast => Control_VLAN_PUSH_0_m_axis_TLAST,
      m_axis_tready => Control_VLAN_PUSH_0_m_axis_TREADY,
      m_axis_tvalid => Control_VLAN_PUSH_0_m_axis_TVALID,
      s_axis_aclk => clk_wiz_0_clk_out2,
      s_axis_aresetn => clk_wiz_0_locked1,
      s_axis_tdata(511 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tdata(511 downto 0),
      s_axis_tdest(3 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tdest(3 downto 0),
      s_axis_tkeep(63 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tkeep(63 downto 0),
      s_axis_tlast => fifo_PS_to_Cntrl_VLAN_m_axis_tlast,
      s_axis_tready => Control_VLAN_PUSH_0_s_axis_tready,
      s_axis_tvalid => fifo_PS_to_Cntrl_VLAN_m_axis_tvalid
    );
demux_logic_0: component proj_blk_design_demux_logic_0_0
     port map (
      demux_en => Control_VLAN_PUSH_0_egress_flag,
      m0_axis_aclk => clk_wiz_0_clk_out2,
      m0_axis_tdata(511 downto 0) => demux_logic_0_m0_axis_tdata(511 downto 0),
      m0_axis_tdest(3 downto 0) => NLW_demux_logic_0_m0_axis_tdest_UNCONNECTED(3 downto 0),
      m0_axis_tkeep(63 downto 0) => demux_logic_0_m0_axis_tkeep(63 downto 0),
      m0_axis_tlast => demux_logic_0_m0_axis_tlast,
      m0_axis_tready => fifo_CNTRL_VLAN_to_MAC2_s_axis_tready,
      m0_axis_tvalid => demux_logic_0_m0_axis_tvalid,
      m1_axis_aclk => clk_wiz_0_clk_out2,
      m1_axis_tdata(511 downto 0) => demux_logic_0_m1_axis_tdata(511 downto 0),
      m1_axis_tkeep(63 downto 0) => demux_logic_0_m1_axis_tkeep(63 downto 0),
      m1_axis_tlast => demux_logic_0_m1_axis_tlast,
      m1_axis_tready => fifo_CNTRL_VLAN_to_MAC3_s_axis_tready,
      m1_axis_tvalid => demux_logic_0_m1_axis_tvalid,
      s_axis_aclk => clk_wiz_0_clk_out2,
      s_axis_aresetn => clk_wiz_0_locked1,
      s_axis_tdata(511 downto 0) => Control_VLAN_PUSH_0_m_axis_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => Control_VLAN_PUSH_0_m_axis_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => Control_VLAN_PUSH_0_m_axis_TKEEP(63 downto 0),
      s_axis_tlast => Control_VLAN_PUSH_0_m_axis_TLAST,
      s_axis_tready => Control_VLAN_PUSH_0_m_axis_TREADY,
      s_axis_tvalid => Control_VLAN_PUSH_0_m_axis_TVALID
    );
fifo_CNTRL_VLAN_to_MAC2: component proj_blk_design_fifo_CNTRL_VLAN_to_MAC2_0
     port map (
      m_axis_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST,
      m_axis_tready => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY,
      m_axis_tvalid => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_0_clk_out2,
      s_axis_aresetn => clk_wiz_0_locked1,
      s_axis_tdata(511 downto 0) => demux_logic_0_m0_axis_tdata(511 downto 0),
      s_axis_tkeep(63 downto 0) => demux_logic_0_m0_axis_tkeep(63 downto 0),
      s_axis_tlast => demux_logic_0_m0_axis_tlast,
      s_axis_tready => fifo_CNTRL_VLAN_to_MAC2_s_axis_tready,
      s_axis_tvalid => demux_logic_0_m0_axis_tvalid
    );
fifo_CNTRL_VLAN_to_MAC3: component proj_blk_design_fifo_CNTRL_VLAN_to_MAC3_0
     port map (
      m_axis_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST,
      m_axis_tready => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY,
      m_axis_tvalid => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_0_clk_out2,
      s_axis_aresetn => clk_wiz_0_locked1,
      s_axis_tdata(511 downto 0) => demux_logic_0_m1_axis_tdata(511 downto 0),
      s_axis_tkeep(63 downto 0) => demux_logic_0_m1_axis_tkeep(63 downto 0),
      s_axis_tlast => demux_logic_0_m1_axis_tlast,
      s_axis_tready => fifo_CNTRL_VLAN_to_MAC3_s_axis_tready,
      s_axis_tvalid => demux_logic_0_m1_axis_tvalid
    );
fifo_PS_to_Cntrl_VLAN: component proj_blk_design_fifo_PS_to_Cntrl_VLAN_0
     port map (
      m_axis_aclk => clk_wiz_0_clk_out2,
      m_axis_tdata(511 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tdata(511 downto 0),
      m_axis_tdest(3 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tdest(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_PS_to_Cntrl_VLAN_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(63 downto 0) => fifo_PS_to_Cntrl_VLAN_m_axis_tkeep(63 downto 0),
      m_axis_tlast => fifo_PS_to_Cntrl_VLAN_m_axis_tlast,
      m_axis_tready => Control_VLAN_PUSH_0_s_axis_tready,
      m_axis_tuser(15 downto 0) => NLW_fifo_PS_to_Cntrl_VLAN_m_axis_tuser_UNCONNECTED(15 downto 0),
      m_axis_tvalid => fifo_PS_to_Cntrl_VLAN_m_axis_tvalid,
      s_axis_aclk => qdma_axi_aclk,
      s_axis_aresetn => clk_wiz_0_locked1,
      s_axis_tdata(511 downto 0) => PS_M_AXIS_MM2S_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => PS_M_AXIS_MM2S_TDEST(3 downto 0),
      s_axis_tid(7 downto 0) => PS_M_AXIS_MM2S_TID(7 downto 0),
      s_axis_tkeep(63 downto 0) => PS_M_AXIS_MM2S_TKEEP(63 downto 0),
      s_axis_tlast => PS_M_AXIS_MM2S_TLAST,
      s_axis_tready => PS_M_AXIS_MM2S_TREADY,
      s_axis_tuser(15 downto 0) => PS_M_AXIS_MM2S_TUSER(15 downto 0),
      s_axis_tvalid => PS_M_AXIS_MM2S_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1TG9LCN is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_1TG9LCN;

architecture STRUCTURE of m00_couplers_imp_1TG9LCN is
  component proj_blk_design_m00_data_fifo_10 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_m00_data_fifo_10;
  component proj_blk_design_m00_regslice_12 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_m00_regslice_12;
  component proj_blk_design_auto_cc_9 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_cc_9;
  component proj_blk_design_auto_ds_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ds_2;
  component proj_blk_design_auto_ss_slidr_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_ss_slidr_3;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_auto_ds_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_auto_ds_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_auto_ds_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_auto_ds_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ds_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ds_TVALID : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_data_fifo_to_auto_cc_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_cc_TLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(63 downto 0) <= m00_regslice_to_m00_couplers_TDATA(63 downto 0);
  M_AXIS_tkeep(7 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(7 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_data_fifo_TREADY;
  m00_couplers_to_m00_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_data_fifo_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_data_fifo_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_data_fifo_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_9
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_auto_ds_TLAST,
      m_axis_tready => auto_cc_to_auto_ds_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ds_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      s_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      s_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID
    );
auto_ds: component proj_blk_design_auto_ds_2
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      m_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      m_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      m_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      m_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID,
      s_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_auto_ds_TLAST,
      s_axis_tready => auto_cc_to_auto_ds_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ds_TVALID
    );
auto_ss_slidr: component proj_blk_design_auto_ss_slidr_3
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      m_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID,
      s_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      s_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      s_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      s_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      s_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID
    );
m00_data_fifo: component proj_blk_design_m00_data_fifo_10
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      m_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      m_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_couplers_to_m00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_couplers_to_m00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_m00_data_fifo_TLAST,
      s_axis_tready => m00_couplers_to_m00_data_fifo_TREADY,
      s_axis_tvalid => m00_couplers_to_m00_data_fifo_TVALID
    );
m00_regslice: component proj_blk_design_m00_regslice_12
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => m00_regslice_to_m00_couplers_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => m00_regslice_to_m00_couplers_TKEEP(7 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      s_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1VFVZYS is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_1VFVZYS;

architecture STRUCTURE of m00_couplers_imp_1VFVZYS is
  component proj_blk_design_m00_data_fifo_8 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_m00_data_fifo_8;
  component proj_blk_design_m00_regslice_11 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_m00_regslice_11;
  component proj_blk_design_auto_cc_7 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_cc_7;
  component proj_blk_design_auto_ds_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ds_0;
  component proj_blk_design_auto_ss_slidr_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_ss_slidr_1;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_auto_ds_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_auto_ds_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_auto_ds_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_auto_ds_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ds_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ds_TVALID : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_data_fifo_to_auto_cc_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_cc_TLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(63 downto 0) <= m00_regslice_to_m00_couplers_TDATA(63 downto 0);
  M_AXIS_tkeep(7 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(7 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_data_fifo_TREADY;
  m00_couplers_to_m00_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_data_fifo_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_data_fifo_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_data_fifo_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_7
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_auto_ds_TLAST,
      m_axis_tready => auto_cc_to_auto_ds_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ds_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      s_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      s_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID
    );
auto_ds: component proj_blk_design_auto_ds_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      m_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      m_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      m_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      m_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID,
      s_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_auto_ds_TLAST,
      s_axis_tready => auto_cc_to_auto_ds_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ds_TVALID
    );
auto_ss_slidr: component proj_blk_design_auto_ss_slidr_1
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      m_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID,
      s_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      s_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      s_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      s_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      s_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID
    );
m00_data_fifo: component proj_blk_design_m00_data_fifo_8
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      m_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      m_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_couplers_to_m00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_couplers_to_m00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_m00_data_fifo_TLAST,
      s_axis_tready => m00_couplers_to_m00_data_fifo_TREADY,
      s_axis_tvalid => m00_couplers_to_m00_data_fifo_TVALID
    );
m00_regslice: component proj_blk_design_m00_regslice_11
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => m00_regslice_to_m00_couplers_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => m00_regslice_to_m00_couplers_TKEEP(7 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      s_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1WCGL5T is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_1WCGL5T;

architecture STRUCTURE of m00_couplers_imp_1WCGL5T is
  component proj_blk_design_m00_regslice_10 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component proj_blk_design_m00_regslice_10;
  component proj_blk_design_auto_ss_slidr_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slidr_0;
  component proj_blk_design_auto_ss_u_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component proj_blk_design_auto_ss_u_0;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slidr_to_auto_ss_u_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slidr_to_auto_ss_u_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slidr_to_auto_ss_u_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_slidr_to_auto_ss_u_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slidr_to_auto_ss_u_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_auto_ss_u_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_auto_ss_u_TVALID : STD_LOGIC;
  signal auto_ss_u_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_u_to_m00_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_u_to_m00_regslice_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_u_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_u_to_m00_regslice_TLAST : STD_LOGIC;
  signal auto_ss_u_to_m00_regslice_TREADY : STD_LOGIC;
  signal auto_ss_u_to_m00_regslice_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ss_u_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal m00_couplers_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_regslice_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= m00_regslice_to_m00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= m00_regslice_to_m00_couplers_TDEST(3 downto 0);
  M_AXIS_tid(7 downto 0) <= m00_regslice_to_m00_couplers_TID(7 downto 0);
  M_AXIS_tkeep(63 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tuser(15 downto 0) <= m00_regslice_to_m00_couplers_TUSER(15 downto 0);
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= m00_couplers_to_auto_ss_slidr_TREADY;
  m00_couplers_to_auto_ss_slidr_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_auto_ss_slidr_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  m00_couplers_to_auto_ss_slidr_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_auto_ss_slidr_TLAST <= S_AXIS_tlast;
  m00_couplers_to_auto_ss_slidr_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
auto_ss_slidr: component proj_blk_design_auto_ss_slidr_0
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(511 downto 0) => auto_ss_slidr_to_auto_ss_u_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slidr_to_auto_ss_u_TDEST(3 downto 0),
      m_axis_tid(7 downto 0) => auto_ss_slidr_to_auto_ss_u_TID(7 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slidr_to_auto_ss_u_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slidr_to_auto_ss_u_TLAST,
      m_axis_tready => auto_ss_slidr_to_auto_ss_u_TREADY,
      m_axis_tvalid => auto_ss_slidr_to_auto_ss_u_TVALID,
      s_axis_tdata(511 downto 0) => m00_couplers_to_auto_ss_slidr_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => m00_couplers_to_auto_ss_slidr_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_auto_ss_slidr_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_auto_ss_slidr_TLAST,
      s_axis_tready => m00_couplers_to_auto_ss_slidr_TREADY,
      s_axis_tvalid => m00_couplers_to_auto_ss_slidr_TVALID
    );
auto_ss_u: component proj_blk_design_auto_ss_u_0
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(511 downto 0) => auto_ss_u_to_m00_regslice_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_u_to_m00_regslice_TDEST(3 downto 0),
      m_axis_tid(7 downto 0) => auto_ss_u_to_m00_regslice_TID(7 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_u_to_m00_regslice_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_u_to_m00_regslice_TLAST,
      m_axis_tready => auto_ss_u_to_m00_regslice_TREADY,
      m_axis_tuser(15 downto 0) => auto_ss_u_to_m00_regslice_TUSER(15 downto 0),
      m_axis_tvalid => auto_ss_u_to_m00_regslice_TVALID,
      s_axis_tdata(511 downto 0) => auto_ss_slidr_to_auto_ss_u_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slidr_to_auto_ss_u_TDEST(3 downto 0),
      s_axis_tid(7 downto 0) => auto_ss_slidr_to_auto_ss_u_TID(7 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slidr_to_auto_ss_u_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slidr_to_auto_ss_u_TLAST,
      s_axis_tready => auto_ss_slidr_to_auto_ss_u_TREADY,
      s_axis_tvalid => auto_ss_slidr_to_auto_ss_u_TVALID
    );
m00_regslice: component proj_blk_design_m00_regslice_10
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => m00_regslice_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => m00_regslice_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tid(7 downto 0) => m00_regslice_to_m00_couplers_TID(7 downto 0),
      m_axis_tkeep(63 downto 0) => m00_regslice_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tuser(15 downto 0) => m00_regslice_to_m00_couplers_TUSER(15 downto 0),
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(511 downto 0) => auto_ss_u_to_m00_regslice_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_u_to_m00_regslice_TDEST(3 downto 0),
      s_axis_tid(7 downto 0) => auto_ss_u_to_m00_regslice_TID(7 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_u_to_m00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_u_to_m00_regslice_TLAST,
      s_axis_tready => auto_ss_u_to_m00_regslice_TREADY,
      s_axis_tuser(15 downto 0) => auto_ss_u_to_m00_regslice_TUSER(15 downto 0),
      s_axis_tvalid => auto_ss_u_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_8WVSET is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_8WVSET;

architecture STRUCTURE of m00_couplers_imp_8WVSET is
  signal m00_couplers_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= m00_couplers_to_m00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= m00_couplers_to_m00_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= m00_couplers_to_m00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= m00_couplers_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= m00_couplers_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_couplers_TREADY;
  m00_couplers_to_m00_couplers_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_couplers_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  m00_couplers_to_m00_couplers_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_couplers_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_couplers_TREADY <= M_AXIS_tready;
  m00_couplers_to_m00_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_B27SHO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_B27SHO;

architecture STRUCTURE of m00_couplers_imp_B27SHO is
  component proj_blk_design_m00_regslice_9 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m00_regslice_9;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_m00_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(11 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(11 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(11 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(11 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_regslice_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_regslice_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_regslice_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_regslice_WREADY;
  m00_couplers_to_m00_regslice_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_regslice_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_regslice_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_regslice_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_regslice_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_regslice_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_regslice_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
m00_regslice: component proj_blk_design_m00_regslice_9
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(11 downto 0) => m00_regslice_to_m00_couplers_ARADDR(11 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m00_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(11 downto 0) => m00_regslice_to_m00_couplers_AWADDR(11 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m00_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m00_regslice_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m00_regslice_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_m00_regslice_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(11 downto 0) => m00_couplers_to_m00_regslice_ARADDR(11 downto 0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arready => m00_couplers_to_m00_regslice_ARREADY,
      s_axi_arvalid => m00_couplers_to_m00_regslice_ARVALID,
      s_axi_awaddr(11 downto 0) => m00_couplers_to_m00_regslice_AWADDR(11 downto 0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awready => m00_couplers_to_m00_regslice_AWREADY,
      s_axi_awvalid => m00_couplers_to_m00_regslice_AWVALID,
      s_axi_bready => m00_couplers_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_m00_regslice_RDATA(31 downto 0),
      s_axi_rready => m00_couplers_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_m00_regslice_WDATA(31 downto 0),
      s_axi_wready => m00_couplers_to_m00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_m00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_CWB0T3 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_CWB0T3;

architecture STRUCTURE of m00_couplers_imp_CWB0T3 is
  component proj_blk_design_m00_data_fifo_9 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_m00_data_fifo_9;
  component proj_blk_design_auto_cc_8 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_cc_8;
  component proj_blk_design_auto_ds_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ds_1;
  component proj_blk_design_auto_ss_slidr_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_ss_slidr_2;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal M_AXIS_ACLK_1 : STD_LOGIC;
  signal M_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_auto_ds_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_auto_ds_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_auto_ds_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_auto_ds_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ds_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ds_TVALID : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal auto_ss_slidr_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slidr_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_slidr_to_m00_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m00_couplers_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m00_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_data_fifo_to_auto_cc_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_cc_TLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TVALID : STD_LOGIC;
begin
  M_AXIS_ACLK_1 <= M_AXIS_ACLK;
  M_AXIS_ARESETN_1 <= M_AXIS_ARESETN;
  M_AXIS_tdata(63 downto 0) <= auto_ss_slidr_to_m00_couplers_TDATA(63 downto 0);
  M_AXIS_tkeep(7 downto 0) <= auto_ss_slidr_to_m00_couplers_TKEEP(7 downto 0);
  M_AXIS_tlast <= auto_ss_slidr_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_slidr_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_data_fifo_TREADY;
  auto_ss_slidr_to_m00_couplers_TREADY <= M_AXIS_tready;
  m00_couplers_to_m00_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_data_fifo_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_data_fifo_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_data_fifo_TVALID <= S_AXIS_tvalid;
auto_cc: component proj_blk_design_auto_cc_8
     port map (
      m_axis_aclk => M_AXIS_ACLK_1,
      m_axis_aresetn => M_AXIS_ARESETN_1,
      m_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_auto_ds_TLAST,
      m_axis_tready => auto_cc_to_auto_ds_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ds_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      s_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      s_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID
    );
auto_ds: component proj_blk_design_auto_ds_1
     port map (
      aclk => M_AXIS_ACLK_1,
      aresetn => M_AXIS_ARESETN_1,
      m_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      m_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      m_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      m_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      m_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID,
      s_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_auto_ds_TLAST,
      s_axis_tready => auto_cc_to_auto_ds_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ds_TVALID
    );
auto_ss_slidr: component proj_blk_design_auto_ss_slidr_2
     port map (
      aclk => M_AXIS_ACLK_1,
      aresetn => M_AXIS_ARESETN_1,
      m_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_couplers_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_couplers_TKEEP(7 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m00_couplers_TLAST,
      m_axis_tready => auto_ss_slidr_to_m00_couplers_TREADY,
      m_axis_tvalid => auto_ss_slidr_to_m00_couplers_TVALID,
      s_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      s_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      s_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      s_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      s_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID
    );
m00_data_fifo: component proj_blk_design_m00_data_fifo_9
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      m_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      m_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_couplers_to_m00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_couplers_to_m00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_m00_data_fifo_TLAST,
      s_axis_tready => m00_couplers_to_m00_data_fifo_TREADY,
      s_axis_tvalid => m00_couplers_to_m00_data_fifo_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_F4YYC4 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_F4YYC4;

architecture STRUCTURE of m00_couplers_imp_F4YYC4 is
  component proj_blk_design_m00_data_fifo_11 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_m00_data_fifo_11;
  component proj_blk_design_m00_regslice_13 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_m00_regslice_13;
  component proj_blk_design_auto_cc_10 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_cc_10;
  component proj_blk_design_auto_ds_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ds_3;
  component proj_blk_design_auto_ss_slidr_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_ss_slidr_4;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_auto_ds_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_auto_ds_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_auto_ds_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_auto_ds_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ds_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ds_TVALID : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal auto_ds_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ss_slidr_to_m00_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_data_fifo_to_auto_cc_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_auto_cc_TLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_cc_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(63 downto 0) <= m00_regslice_to_m00_couplers_TDATA(63 downto 0);
  M_AXIS_tkeep(7 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(7 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_data_fifo_TREADY;
  m00_couplers_to_m00_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_data_fifo_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_data_fifo_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_data_fifo_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_10
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_auto_ds_TLAST,
      m_axis_tready => auto_cc_to_auto_ds_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ds_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      s_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      s_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID
    );
auto_ds: component proj_blk_design_auto_ds_3
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      m_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      m_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      m_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      m_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID,
      s_axis_tdata(511 downto 0) => auto_cc_to_auto_ds_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_cc_to_auto_ds_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_auto_ds_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_auto_ds_TLAST,
      s_axis_tready => auto_cc_to_auto_ds_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ds_TVALID
    );
auto_ss_slidr: component proj_blk_design_auto_ss_slidr_4
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      m_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID,
      s_axis_tdata(63 downto 0) => auto_ds_to_auto_ss_slidr_TDATA(63 downto 0),
      s_axis_tdest(3 downto 0) => auto_ds_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ds_to_auto_ss_slidr_TKEEP(7 downto 0),
      s_axis_tlast => auto_ds_to_auto_ss_slidr_TLAST,
      s_axis_tready => auto_ds_to_auto_ss_slidr_TREADY,
      s_axis_tvalid => auto_ds_to_auto_ss_slidr_TVALID
    );
m00_data_fifo: component proj_blk_design_m00_data_fifo_11
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m00_data_fifo_to_auto_cc_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => m00_data_fifo_to_auto_cc_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => m00_data_fifo_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => m00_data_fifo_to_auto_cc_TLAST,
      m_axis_tready => m00_data_fifo_to_auto_cc_TREADY,
      m_axis_tvalid => m00_data_fifo_to_auto_cc_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_couplers_to_m00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => m00_couplers_to_m00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_m00_data_fifo_TLAST,
      s_axis_tready => m00_couplers_to_m00_data_fifo_TREADY,
      s_axis_tvalid => m00_couplers_to_m00_data_fifo_TVALID
    );
m00_regslice: component proj_blk_design_m00_regslice_13
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => m00_regslice_to_m00_couplers_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => m00_regslice_to_m00_couplers_TKEEP(7 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(63 downto 0) => auto_ss_slidr_to_m00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => auto_ss_slidr_to_m00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m00_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m00_regslice_TREADY,
      s_axis_tvalid => auto_ss_slidr_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_105WF76 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_105WF76;

architecture STRUCTURE of m01_couplers_imp_105WF76 is
  component proj_blk_design_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m01_regslice_0;
  component proj_blk_design_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m01_regslice_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m01_regslice_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_regslice_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_regslice_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_regslice_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_regslice_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_regslice_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_regslice_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_regslice_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_regslice_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_regslice_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_regslice_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_cc_WREADY;
  m01_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m01_regslice_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_regslice_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_regslice_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_regslice_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_regslice_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_regslice_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_regslice_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_regslice_to_m01_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_m01_regslice_ARADDR(31 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_m01_regslice_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m01_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m01_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m01_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m01_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_cc_ARADDR(31 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m01_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m01_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m01_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m01_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m01_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m01_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m01_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_cc_WVALID
    );
m01_regslice: component proj_blk_design_m01_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m01_regslice_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => m01_regslice_to_m01_couplers_ARPROT(2 downto 0),
      m_axi_arready => m01_regslice_to_m01_couplers_ARREADY,
      m_axi_arvalid => m01_regslice_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m01_regslice_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => m01_regslice_to_m01_couplers_AWPROT(2 downto 0),
      m_axi_awready => m01_regslice_to_m01_couplers_AWREADY,
      m_axi_awvalid => m01_regslice_to_m01_couplers_AWVALID,
      m_axi_bready => m01_regslice_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m01_regslice_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m01_regslice_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m01_regslice_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => m01_regslice_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m01_regslice_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m01_regslice_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m01_regslice_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => m01_regslice_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m01_regslice_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m01_regslice_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_cc_to_m01_regslice_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_cc_to_m01_regslice_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1EZ9RQ9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1EZ9RQ9;

architecture STRUCTURE of m02_couplers_imp_1EZ9RQ9 is
  component proj_blk_design_m02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m02_regslice_0;
  component proj_blk_design_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m02_regslice_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_m02_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m02_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_m02_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m02_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m02_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m02_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m02_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m02_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m02_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m02_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m02_regslice_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_regslice_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_regslice_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_regslice_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_regslice_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_regslice_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(39 downto 0) <= m02_regslice_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_regslice_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m02_regslice_to_m02_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m02_regslice_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_regslice_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m02_regslice_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_regslice_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_regslice_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_regslice_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_regslice_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_regslice_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_cc_WREADY;
  m02_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m02_regslice_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_regslice_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_regslice_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_regslice_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_regslice_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_regslice_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_regslice_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_regslice_to_m02_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(39 downto 0) => auto_cc_to_m02_regslice_ARADDR(39 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m02_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m02_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m02_regslice_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_cc_to_m02_regslice_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m02_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m02_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m02_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m02_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m02_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m02_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m02_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m02_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m02_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m02_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m02_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m02_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m02_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m02_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => m02_couplers_to_auto_cc_ARADDR(39 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m02_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m02_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(39 downto 0) => m02_couplers_to_auto_cc_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m02_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m02_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m02_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m02_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m02_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_cc_WVALID
    );
m02_regslice: component proj_blk_design_m02_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(39 downto 0) => m02_regslice_to_m02_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => m02_regslice_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arready => m02_regslice_to_m02_couplers_ARREADY,
      m_axi_arvalid => m02_regslice_to_m02_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => m02_regslice_to_m02_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => m02_regslice_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awready => m02_regslice_to_m02_couplers_AWREADY,
      m_axi_awvalid => m02_regslice_to_m02_couplers_AWVALID,
      m_axi_bready => m02_regslice_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m02_regslice_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m02_regslice_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m02_regslice_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => m02_regslice_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m02_regslice_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m02_regslice_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m02_regslice_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => m02_regslice_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m02_regslice_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m02_regslice_to_m02_couplers_WVALID,
      s_axi_araddr(39 downto 0) => auto_cc_to_m02_regslice_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m02_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m02_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m02_regslice_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_cc_to_m02_regslice_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m02_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m02_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m02_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m02_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m02_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m02_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m02_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m02_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m02_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m02_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m02_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m02_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m02_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m02_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_51OQ7J is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_51OQ7J;

architecture STRUCTURE of m03_couplers_imp_51OQ7J is
  component proj_blk_design_m03_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m03_regslice_0;
  component proj_blk_design_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m03_regslice_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m03_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m03_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m03_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m03_regslice_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m03_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m03_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m03_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m03_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m03_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m03_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m03_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m03_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m03_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m03_regslice_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_regslice_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_regslice_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_regslice_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_regslice_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_regslice_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_regslice_to_m03_couplers_WVALID : STD_LOGIC;
  signal NLW_m03_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m03_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m03_regslice_to_m03_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m03_regslice_to_m03_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m03_regslice_to_m03_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m03_regslice_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_regslice_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_regslice_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_regslice_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_regslice_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_regslice_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_cc_WREADY;
  m03_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m03_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m03_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m03_regslice_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_regslice_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_regslice_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_regslice_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_regslice_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_regslice_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_regslice_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_regslice_to_m03_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(8 downto 0) => auto_cc_to_m03_regslice_ARADDR(8 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m03_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m03_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m03_regslice_ARVALID,
      m_axi_awaddr(8 downto 0) => auto_cc_to_m03_regslice_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m03_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m03_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m03_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m03_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m03_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m03_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m03_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m03_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m03_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m03_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m03_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m03_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m03_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m03_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(8 downto 0) => m03_couplers_to_auto_cc_ARADDR(8 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m03_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m03_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(8 downto 0) => m03_couplers_to_auto_cc_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m03_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m03_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m03_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m03_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_cc_WVALID
    );
m03_regslice: component proj_blk_design_m03_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m03_regslice_to_m03_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m03_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m03_regslice_to_m03_couplers_ARREADY,
      m_axi_arvalid => m03_regslice_to_m03_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m03_regslice_to_m03_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m03_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m03_regslice_to_m03_couplers_AWREADY,
      m_axi_awvalid => m03_regslice_to_m03_couplers_AWVALID,
      m_axi_bready => m03_regslice_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m03_regslice_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m03_regslice_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m03_regslice_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => m03_regslice_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m03_regslice_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m03_regslice_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m03_regslice_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => m03_regslice_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m03_regslice_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m03_regslice_to_m03_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_cc_to_m03_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m03_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m03_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m03_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_cc_to_m03_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m03_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m03_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m03_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m03_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m03_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m03_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m03_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m03_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m03_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m03_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m03_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m03_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m03_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m03_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1P5ABRB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1P5ABRB;

architecture STRUCTURE of m04_couplers_imp_1P5ABRB is
  component proj_blk_design_m04_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m04_regslice_0;
  component proj_blk_design_auto_cc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_3;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m04_regslice_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m04_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m04_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m04_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m04_regslice_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m04_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m04_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m04_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m04_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m04_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m04_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m04_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m04_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m04_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m04_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m04_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m04_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m04_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m04_regslice_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_regslice_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_regslice_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_regslice_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_regslice_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_regslice_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_regslice_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_regslice_to_m04_couplers_WVALID : STD_LOGIC;
  signal NLW_m04_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m04_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m04_regslice_to_m04_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m04_regslice_to_m04_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m04_regslice_to_m04_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m04_regslice_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_regslice_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_regslice_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_regslice_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_regslice_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_regslice_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m04_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_cc_WREADY;
  m04_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m04_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m04_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m04_regslice_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_regslice_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_regslice_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_regslice_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_regslice_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_regslice_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_regslice_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_regslice_to_m04_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_3
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(8 downto 0) => auto_cc_to_m04_regslice_ARADDR(8 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m04_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m04_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m04_regslice_ARVALID,
      m_axi_awaddr(8 downto 0) => auto_cc_to_m04_regslice_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m04_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m04_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m04_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m04_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m04_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m04_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m04_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m04_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m04_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m04_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m04_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m04_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m04_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m04_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(8 downto 0) => m04_couplers_to_auto_cc_ARADDR(8 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m04_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m04_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(8 downto 0) => m04_couplers_to_auto_cc_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m04_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m04_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m04_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m04_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m04_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_cc_WVALID
    );
m04_regslice: component proj_blk_design_m04_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m04_regslice_to_m04_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m04_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m04_regslice_to_m04_couplers_ARREADY,
      m_axi_arvalid => m04_regslice_to_m04_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m04_regslice_to_m04_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m04_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m04_regslice_to_m04_couplers_AWREADY,
      m_axi_awvalid => m04_regslice_to_m04_couplers_AWVALID,
      m_axi_bready => m04_regslice_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m04_regslice_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m04_regslice_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m04_regslice_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => m04_regslice_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m04_regslice_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m04_regslice_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m04_regslice_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => m04_regslice_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m04_regslice_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m04_regslice_to_m04_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_cc_to_m04_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m04_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m04_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m04_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_cc_to_m04_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m04_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m04_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m04_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m04_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m04_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m04_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m04_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m04_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m04_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m04_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m04_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m04_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m04_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m04_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_XTSZD5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_XTSZD5;

architecture STRUCTURE of m05_couplers_imp_XTSZD5 is
  component proj_blk_design_m05_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m05_regslice_0;
  component proj_blk_design_auto_cc_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_4;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m05_regslice_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m05_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m05_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m05_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m05_regslice_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m05_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m05_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m05_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m05_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m05_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m05_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m05_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m05_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m05_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m05_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m05_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m05_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m05_regslice_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_regslice_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_regslice_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_regslice_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_regslice_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_regslice_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_regslice_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_regslice_to_m05_couplers_WVALID : STD_LOGIC;
  signal NLW_m05_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m05_regslice_to_m05_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m05_regslice_to_m05_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m05_regslice_to_m05_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m05_regslice_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_regslice_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_regslice_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_regslice_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_regslice_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_regslice_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m05_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_cc_WREADY;
  m05_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m05_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m05_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m05_regslice_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_regslice_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_regslice_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_regslice_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_regslice_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_regslice_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_regslice_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_regslice_to_m05_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_4
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(8 downto 0) => auto_cc_to_m05_regslice_ARADDR(8 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m05_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m05_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m05_regslice_ARVALID,
      m_axi_awaddr(8 downto 0) => auto_cc_to_m05_regslice_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m05_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m05_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m05_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m05_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m05_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m05_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m05_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m05_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m05_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m05_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m05_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m05_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m05_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m05_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(8 downto 0) => m05_couplers_to_auto_cc_ARADDR(8 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m05_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m05_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(8 downto 0) => m05_couplers_to_auto_cc_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m05_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m05_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m05_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m05_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m05_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_cc_WVALID
    );
m05_regslice: component proj_blk_design_m05_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m05_regslice_to_m05_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m05_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m05_regslice_to_m05_couplers_ARREADY,
      m_axi_arvalid => m05_regslice_to_m05_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m05_regslice_to_m05_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m05_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m05_regslice_to_m05_couplers_AWREADY,
      m_axi_awvalid => m05_regslice_to_m05_couplers_AWVALID,
      m_axi_bready => m05_regslice_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m05_regslice_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m05_regslice_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m05_regslice_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => m05_regslice_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m05_regslice_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m05_regslice_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m05_regslice_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => m05_regslice_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m05_regslice_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m05_regslice_to_m05_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_cc_to_m05_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m05_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m05_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m05_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_cc_to_m05_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m05_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m05_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m05_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m05_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m05_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m05_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m05_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m05_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m05_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m05_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m05_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m05_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m05_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m05_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_L3EKBE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_L3EKBE;

architecture STRUCTURE of m06_couplers_imp_L3EKBE is
  component proj_blk_design_m06_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_m06_regslice_0;
  component proj_blk_design_auto_cc_5 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_5;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m06_regslice_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m06_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal auto_cc_to_m06_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m06_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m06_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m06_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m06_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m06_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m06_regslice_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_regslice_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_regslice_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_regslice_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_regslice_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_regslice_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_regslice_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_regslice_to_m06_couplers_WVALID : STD_LOGIC;
  signal NLW_m06_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(8 downto 0) <= m06_regslice_to_m06_couplers_ARADDR(8 downto 0);
  M_AXI_arvalid <= m06_regslice_to_m06_couplers_ARVALID;
  M_AXI_awaddr(8 downto 0) <= m06_regslice_to_m06_couplers_AWADDR(8 downto 0);
  M_AXI_awvalid <= m06_regslice_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_regslice_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_regslice_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_regslice_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_regslice_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_regslice_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_cc_WREADY;
  m06_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m06_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m06_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
  m06_regslice_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_regslice_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_regslice_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_regslice_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_regslice_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_regslice_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_regslice_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_regslice_to_m06_couplers_WREADY <= M_AXI_wready;
auto_cc: component proj_blk_design_auto_cc_5
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(8 downto 0) => auto_cc_to_m06_regslice_ARADDR(8 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m06_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m06_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m06_regslice_ARVALID,
      m_axi_awaddr(8 downto 0) => auto_cc_to_m06_regslice_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m06_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m06_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m06_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m06_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m06_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m06_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m06_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m06_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m06_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m06_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m06_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m06_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m06_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m06_regslice_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(8 downto 0) => m06_couplers_to_auto_cc_ARADDR(8 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m06_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m06_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(8 downto 0) => m06_couplers_to_auto_cc_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m06_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m06_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m06_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m06_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_cc_WVALID
    );
m06_regslice: component proj_blk_design_m06_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(8 downto 0) => m06_regslice_to_m06_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m06_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m06_regslice_to_m06_couplers_ARREADY,
      m_axi_arvalid => m06_regslice_to_m06_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => m06_regslice_to_m06_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m06_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m06_regslice_to_m06_couplers_AWREADY,
      m_axi_awvalid => m06_regslice_to_m06_couplers_AWVALID,
      m_axi_bready => m06_regslice_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m06_regslice_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m06_regslice_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m06_regslice_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => m06_regslice_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m06_regslice_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m06_regslice_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m06_regslice_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => m06_regslice_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m06_regslice_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m06_regslice_to_m06_couplers_WVALID,
      s_axi_araddr(8 downto 0) => auto_cc_to_m06_regslice_ARADDR(8 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m06_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m06_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m06_regslice_ARVALID,
      s_axi_awaddr(8 downto 0) => auto_cc_to_m06_regslice_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m06_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m06_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m06_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m06_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m06_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m06_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m06_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m06_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m06_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m06_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m06_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m06_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m06_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m06_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1KENUJ3 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1KENUJ3;

architecture STRUCTURE of s00_couplers_imp_1KENUJ3 is
  component proj_blk_design_s00_regslice_25 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_25;
  component proj_blk_design_s00_data_fifo_24 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_24;
  component proj_blk_design_auto_ss_slid_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_4;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_4
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s00_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s00_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_ss_slid_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_24
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_25
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s00_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1MR2MRW is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1MR2MRW;

architecture STRUCTURE of s00_couplers_imp_1MR2MRW is
  component proj_blk_design_s00_regslice_23 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_s00_regslice_23;
  component proj_blk_design_s00_data_fifo_22 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_22;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
s00_data_fifo: component proj_blk_design_s00_data_fifo_22
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      s_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      s_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_23
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      m_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      m_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_s00_regslice_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1NNHLQ1 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1NNHLQ1;

architecture STRUCTURE of s00_couplers_imp_1NNHLQ1 is
  component proj_blk_design_s00_regslice_20 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s00_regslice_20;
  component proj_blk_design_s00_data_fifo_19 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_19;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
s00_data_fifo: component proj_blk_design_s00_data_fifo_19
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      s_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      s_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_20
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      m_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      m_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s00_couplers_to_s00_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1S4TDMR is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1S4TDMR;

architecture STRUCTURE of s00_couplers_imp_1S4TDMR is
  component proj_blk_design_s00_regslice_28 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_28;
  component proj_blk_design_s00_data_fifo_27 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_27;
  component proj_blk_design_auto_us_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_us_3;
  component proj_blk_design_auto_cc_12 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_12;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_cc_TLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_TREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_us_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(63 downto 0) <= S_AXIS_tdata(63 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(7 downto 0) <= S_AXIS_tkeep(7 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_12
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => auto_us_to_auto_cc_TLAST,
      s_axis_tready => auto_us_to_auto_cc_TREADY,
      s_axis_tvalid => auto_us_to_auto_cc_TVALID
    );
auto_us: component proj_blk_design_auto_us_3
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => auto_us_to_auto_cc_TLAST,
      m_axis_tready => auto_us_to_auto_cc_TREADY,
      m_axis_tvalid => auto_us_to_auto_cc_TVALID,
      s_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      s_axis_tlast => s00_regslice_to_auto_us_TLAST,
      s_axis_tready => s00_regslice_to_auto_us_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_us_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_27
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_28
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      m_axis_tlast => s00_regslice_to_auto_us_TLAST,
      m_axis_tready => s00_regslice_to_auto_us_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_us_TVALID,
      s_axis_tdata(63 downto 0) => s00_couplers_to_s00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_couplers_to_s00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1YZ9PKW is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1YZ9PKW;

architecture STRUCTURE of s00_couplers_imp_1YZ9PKW is
  component proj_blk_design_s00_regslice_27 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_27;
  component proj_blk_design_s00_data_fifo_26 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_26;
  component proj_blk_design_auto_us_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_us_2;
  component proj_blk_design_auto_cc_11 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_11;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_cc_TLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_TREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_us_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(63 downto 0) <= S_AXIS_tdata(63 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(7 downto 0) <= S_AXIS_tkeep(7 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_11
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => auto_us_to_auto_cc_TLAST,
      s_axis_tready => auto_us_to_auto_cc_TREADY,
      s_axis_tvalid => auto_us_to_auto_cc_TVALID
    );
auto_us: component proj_blk_design_auto_us_2
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => auto_us_to_auto_cc_TLAST,
      m_axis_tready => auto_us_to_auto_cc_TREADY,
      m_axis_tvalid => auto_us_to_auto_cc_TVALID,
      s_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      s_axis_tlast => s00_regslice_to_auto_us_TLAST,
      s_axis_tready => s00_regslice_to_auto_us_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_us_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_26
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_27
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      m_axis_tlast => s00_regslice_to_auto_us_TLAST,
      m_axis_tready => s00_regslice_to_auto_us_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_us_TVALID,
      s_axis_tdata(63 downto 0) => s00_couplers_to_s00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_couplers_to_s00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_22ENS4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_22ENS4;

architecture STRUCTURE of s00_couplers_imp_22ENS4 is
  component proj_blk_design_s00_regslice_19 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_19;
  component proj_blk_design_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_regslice_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_regslice_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_s00_regslice_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_s00_regslice_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_s00_regslice_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_regslice_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_s00_regslice_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_regslice_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARUSER(15 downto 0) <= S_AXI_aruser(15 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWUSER(15 downto 0) <= S_AXI_awuser(15 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
auto_pc: component proj_blk_design_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => s00_regslice_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_regslice_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_regslice_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_regslice_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => s00_regslice_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_regslice_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_regslice_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => s00_regslice_to_auto_pc_BID(15 downto 0),
      s_axi_bready => s00_regslice_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_regslice_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      s_axi_rready => s00_regslice_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      s_axi_wready => s00_regslice_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_pc_WVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_19
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => s00_regslice_to_auto_pc_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arid(15 downto 0) => s00_regslice_to_auto_pc_ARID(15 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => s00_regslice_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_aruser(15 downto 0) => NLW_s00_regslice_m_axi_aruser_UNCONNECTED(15 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      m_axi_awaddr(39 downto 0) => s00_regslice_to_auto_pc_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awid(15 downto 0) => s00_regslice_to_auto_pc_AWID(15 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awuser(15 downto 0) => NLW_s00_regslice_m_axi_awuser_UNCONNECTED(15 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      m_axi_bid(15 downto 0) => s00_regslice_to_auto_pc_BID(15 downto 0),
      m_axi_bready => s00_regslice_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      m_axi_rid(15 downto 0) => s00_regslice_to_auto_pc_RID(15 downto 0),
      m_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      m_axi_rready => s00_regslice_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      m_axi_wready => s00_regslice_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_pc_WVALID,
      s_axi_araddr(39 downto 0) => s00_couplers_to_s00_regslice_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_s00_regslice_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_s00_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => s00_couplers_to_s00_regslice_ARUSER(15 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_s00_regslice_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_s00_regslice_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_s00_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => s00_couplers_to_s00_regslice_AWUSER(15 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_s00_regslice_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_regslice_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_s00_regslice_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_regslice_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_444URZ is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_444URZ;

architecture STRUCTURE of s00_couplers_imp_444URZ is
  component proj_blk_design_s00_regslice_24 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_24;
  component proj_blk_design_s00_data_fifo_23 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_23;
  component proj_blk_design_auto_ss_slid_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_2;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_2
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s00_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s00_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_ss_slid_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_23
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_24
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s00_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_6507D8 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_6507D8;

architecture STRUCTURE of s00_couplers_imp_6507D8 is
  component proj_blk_design_s00_regslice_26 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_s00_regslice_26;
  component proj_blk_design_s00_data_fifo_25 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_25;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
s00_data_fifo: component proj_blk_design_s00_data_fifo_25
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      s_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      s_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_26
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      m_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      m_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_s00_regslice_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_6WA6L is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_6WA6L;

architecture STRUCTURE of s00_couplers_imp_6WA6L is
  component proj_blk_design_s00_regslice_21 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s00_regslice_21;
  component proj_blk_design_s00_data_fifo_20 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_20;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_s00_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal s00_regslice_to_s00_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= s00_data_fifo_to_s00_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s00_couplers_to_s00_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
s00_data_fifo: component proj_blk_design_s00_data_fifo_20
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s00_data_fifo_to_s00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      s_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      s_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_21
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s00_regslice_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s00_regslice_to_s00_data_fifo_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s00_regslice_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s00_regslice_to_s00_data_fifo_TLAST,
      m_axis_tready => s00_regslice_to_s00_data_fifo_TREADY,
      m_axis_tvalid => s00_regslice_to_s00_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s00_couplers_to_s00_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s00_couplers_to_s00_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_s00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_9MXARN is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_9MXARN;

architecture STRUCTURE of s00_couplers_imp_9MXARN is
  component proj_blk_design_s00_regslice_29 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_29;
  component proj_blk_design_s00_data_fifo_28 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_28;
  component proj_blk_design_auto_us_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_us_4;
  component proj_blk_design_auto_cc_13 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_13;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_cc_TLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_TREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_us_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(63 downto 0) <= S_AXIS_tdata(63 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(7 downto 0) <= S_AXIS_tkeep(7 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_13
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => auto_us_to_auto_cc_TLAST,
      s_axis_tready => auto_us_to_auto_cc_TREADY,
      s_axis_tvalid => auto_us_to_auto_cc_TVALID
    );
auto_us: component proj_blk_design_auto_us_4
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => auto_us_to_auto_cc_TLAST,
      m_axis_tready => auto_us_to_auto_cc_TREADY,
      m_axis_tvalid => auto_us_to_auto_cc_TVALID,
      s_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      s_axis_tlast => s00_regslice_to_auto_us_TLAST,
      s_axis_tready => s00_regslice_to_auto_us_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_us_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_28
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_29
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      m_axis_tlast => s00_regslice_to_auto_us_TLAST,
      m_axis_tready => s00_regslice_to_auto_us_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_us_TVALID,
      s_axis_tdata(63 downto 0) => s00_couplers_to_s00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_couplers_to_s00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_G6GO5C is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_G6GO5C;

architecture STRUCTURE of s00_couplers_imp_G6GO5C is
  component proj_blk_design_s00_regslice_22 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_s00_regslice_22;
  component proj_blk_design_s00_data_fifo_21 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s00_data_fifo_21;
  component proj_blk_design_auto_us_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_us_1;
  component proj_blk_design_auto_cc_6 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component proj_blk_design_auto_cc_6;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s00_data_fifo_TLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_TVALID : STD_LOGIC;
  signal auto_us_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_cc_TLAST : STD_LOGIC;
  signal auto_us_to_auto_cc_TREADY : STD_LOGIC;
  signal auto_us_to_auto_cc_TVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_TLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_TVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_data_fifo_to_s00_couplers_TLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_auto_us_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_TLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_TREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s00_data_fifo_to_s00_couplers_TDATA(511 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s00_data_fifo_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= s00_data_fifo_to_s00_couplers_TVALID;
  S_AXIS_tready <= s00_couplers_to_s00_regslice_TREADY;
  s00_couplers_to_s00_regslice_TDATA(63 downto 0) <= S_AXIS_tdata(63 downto 0);
  s00_couplers_to_s00_regslice_TKEEP(7 downto 0) <= S_AXIS_tkeep(7 downto 0);
  s00_couplers_to_s00_regslice_TLAST <= S_AXIS_tlast;
  s00_couplers_to_s00_regslice_TVALID <= S_AXIS_tvalid;
  s00_data_fifo_to_s00_couplers_TREADY <= M_AXIS_tready;
auto_cc: component proj_blk_design_auto_cc_6
     port map (
      m_axis_aclk => M_AXIS_ACLK,
      m_axis_aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      m_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      m_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      s_axis_tlast => auto_us_to_auto_cc_TLAST,
      s_axis_tready => auto_us_to_auto_cc_TREADY,
      s_axis_tvalid => auto_us_to_auto_cc_TVALID
    );
auto_us: component proj_blk_design_auto_us_1
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_us_to_auto_cc_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_us_to_auto_cc_TKEEP(63 downto 0),
      m_axis_tlast => auto_us_to_auto_cc_TLAST,
      m_axis_tready => auto_us_to_auto_cc_TREADY,
      m_axis_tvalid => auto_us_to_auto_cc_TVALID,
      s_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      s_axis_tlast => s00_regslice_to_auto_us_TLAST,
      s_axis_tready => s00_regslice_to_auto_us_TREADY,
      s_axis_tvalid => s00_regslice_to_auto_us_TVALID
    );
s00_data_fifo: component proj_blk_design_s00_data_fifo_21
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s00_data_fifo_to_s00_couplers_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => s00_data_fifo_to_s00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s00_data_fifo_to_s00_couplers_TLAST,
      m_axis_tready => s00_data_fifo_to_s00_couplers_TREADY,
      m_axis_tvalid => s00_data_fifo_to_s00_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_cc_to_s00_data_fifo_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_cc_to_s00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_cc_to_s00_data_fifo_TLAST,
      s_axis_tready => auto_cc_to_s00_data_fifo_TREADY,
      s_axis_tvalid => auto_cc_to_s00_data_fifo_TVALID
    );
s00_regslice: component proj_blk_design_s00_regslice_22
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(63 downto 0) => s00_regslice_to_auto_us_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => s00_regslice_to_auto_us_TKEEP(7 downto 0),
      m_axis_tlast => s00_regslice_to_auto_us_TLAST,
      m_axis_tready => s00_regslice_to_auto_us_TREADY,
      m_axis_tvalid => s00_regslice_to_auto_us_TVALID,
      s_axis_tdata(63 downto 0) => s00_couplers_to_s00_regslice_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => s00_couplers_to_s00_regslice_TKEEP(7 downto 0),
      s_axis_tlast => s00_couplers_to_s00_regslice_TLAST,
      s_axis_tready => s00_couplers_to_s00_regslice_TREADY,
      s_axis_tvalid => s00_couplers_to_s00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_19UGBR7 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_19UGBR7;

architecture STRUCTURE of s01_couplers_imp_19UGBR7 is
  component proj_blk_design_s01_regslice_11 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s01_regslice_11;
  component proj_blk_design_s01_data_fifo_12 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_12;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_s01_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s01_couplers_to_s01_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s01_couplers_to_s01_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s01_couplers_to_s01_regslice_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
s01_data_fifo: component proj_blk_design_s01_data_fifo_12
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      s_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      s_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_11
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      m_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      m_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s01_couplers_to_s01_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_couplers_to_s01_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_couplers_to_s01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s01_couplers_to_s01_regslice_TLAST,
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1BJS5A9 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_1BJS5A9;

architecture STRUCTURE of s01_couplers_imp_1BJS5A9 is
  component proj_blk_design_s01_regslice_13 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_s01_regslice_13;
  component proj_blk_design_s01_data_fifo_14 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_14;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_s01_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s01_couplers_to_s01_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  s01_couplers_to_s01_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s01_couplers_to_s01_regslice_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
s01_data_fifo: component proj_blk_design_s01_data_fifo_14
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      s_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      s_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_13
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      m_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      m_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s01_couplers_to_s01_regslice_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s01_couplers_to_s01_regslice_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s01_couplers_to_s01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s01_couplers_to_s01_regslice_TLAST,
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1DUOHTU is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_1DUOHTU;

architecture STRUCTURE of s01_couplers_imp_1DUOHTU is
  component proj_blk_design_s01_regslice_15 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s01_regslice_15;
  component proj_blk_design_s01_data_fifo_16 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_16;
  component proj_blk_design_auto_ss_slid_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_6;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_s01_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s01_couplers_to_s01_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s01_couplers_to_s01_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s01_couplers_to_s01_regslice_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_6
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s01_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s01_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s01_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s01_regslice_to_auto_ss_slid_TVALID
    );
s01_data_fifo: component proj_blk_design_s01_data_fifo_16
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_15
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s01_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s01_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s01_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s01_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s01_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s01_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s01_couplers_to_s01_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_couplers_to_s01_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_couplers_to_s01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s01_couplers_to_s01_regslice_TLAST,
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_UQ9C8X is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_UQ9C8X;

architecture STRUCTURE of s01_couplers_imp_UQ9C8X is
  component proj_blk_design_s01_regslice_14 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_s01_regslice_14;
  component proj_blk_design_s01_data_fifo_15 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_15;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_s01_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal s01_regslice_to_s01_data_fifo_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s01_couplers_to_s01_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  s01_couplers_to_s01_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s01_couplers_to_s01_regslice_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
s01_data_fifo: component proj_blk_design_s01_data_fifo_15
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      s_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      s_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_14
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s01_regslice_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_regslice_to_s01_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_regslice_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => s01_regslice_to_s01_data_fifo_TLAST,
      m_axis_tready => s01_regslice_to_s01_data_fifo_TREADY,
      m_axis_tvalid => s01_regslice_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s01_couplers_to_s01_regslice_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => s01_couplers_to_s01_regslice_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => s01_couplers_to_s01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s01_couplers_to_s01_regslice_TLAST,
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_W1BK1J is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_W1BK1J;

architecture STRUCTURE of s01_couplers_imp_W1BK1J is
  component proj_blk_design_s01_regslice_10 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component proj_blk_design_s01_regslice_10;
  component proj_blk_design_s01_data_fifo_11 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_11;
  component proj_blk_design_auto_us_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component proj_blk_design_auto_us_0;
  component proj_blk_design_auto_ss_slid_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_0;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TVALID : STD_LOGIC;
  signal auto_us_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal auto_us_to_auto_ss_slid_TVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal s01_regslice_to_auto_us_TREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(47 downto 0) <= S_AXIS_tdata(47 downto 0);
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_0
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => auto_us_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => auto_us_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tready => auto_us_to_auto_ss_slid_TREADY,
      s_axis_tvalid => auto_us_to_auto_ss_slid_TVALID
    );
auto_us: component proj_blk_design_auto_us_0
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_us_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tkeep(63 downto 0) => auto_us_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tready => auto_us_to_auto_ss_slid_TREADY,
      m_axis_tvalid => auto_us_to_auto_ss_slid_TVALID,
      s_axis_tdata(47 downto 0) => s01_regslice_to_auto_us_TDATA(47 downto 0),
      s_axis_tready => s01_regslice_to_auto_us_TREADY,
      s_axis_tvalid => s01_regslice_to_auto_us_TVALID
    );
s01_data_fifo: component proj_blk_design_s01_data_fifo_11
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_10
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(47 downto 0) => s01_regslice_to_auto_us_TDATA(47 downto 0),
      m_axis_tready => s01_regslice_to_auto_us_TREADY,
      m_axis_tvalid => s01_regslice_to_auto_us_TVALID,
      s_axis_tdata(47 downto 0) => s01_couplers_to_s01_regslice_TDATA(47 downto 0),
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_WSPXOI is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_WSPXOI;

architecture STRUCTURE of s01_couplers_imp_WSPXOI is
  component proj_blk_design_s01_regslice_12 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s01_regslice_12;
  component proj_blk_design_s01_data_fifo_13 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s01_data_fifo_13;
  component proj_blk_design_auto_ss_slid_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_1;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s01_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s01_data_fifo_TVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_s01_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_TVALID : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_data_fifo_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_data_fifo_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s01_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s01_data_fifo_to_s01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s01_data_fifo_to_s01_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s01_data_fifo_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_data_fifo_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_regslice_TREADY;
  s01_couplers_to_s01_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s01_couplers_to_s01_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s01_couplers_to_s01_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s01_couplers_to_s01_regslice_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_regslice_TVALID <= S_AXIS_tvalid;
  s01_data_fifo_to_s01_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_1
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s01_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s01_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s01_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s01_regslice_to_auto_ss_slid_TVALID
    );
s01_data_fifo: component proj_blk_design_s01_data_fifo_13
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s01_data_fifo_to_s01_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s01_data_fifo_to_s01_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s01_data_fifo_to_s01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s01_data_fifo_to_s01_couplers_TLAST,
      m_axis_tready => s01_data_fifo_to_s01_couplers_TREADY,
      m_axis_tvalid => s01_data_fifo_to_s01_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s01_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s01_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s01_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s01_data_fifo_TVALID
    );
s01_regslice: component proj_blk_design_s01_regslice_12
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s01_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s01_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s01_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s01_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s01_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s01_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s01_couplers_to_s01_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s01_couplers_to_s01_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s01_couplers_to_s01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s01_couplers_to_s01_regslice_TLAST,
      s_axis_tready => s01_couplers_to_s01_regslice_TREADY,
      s_axis_tvalid => s01_couplers_to_s01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1816U1E is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s02_couplers_imp_1816U1E;

architecture STRUCTURE of s02_couplers_imp_1816U1E is
  component proj_blk_design_s02_regslice_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s02_regslice_4;
  component proj_blk_design_s02_data_fifo_4 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s02_data_fifo_4;
  component proj_blk_design_auto_ss_slid_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_3;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s02_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s02_data_fifo_TVALID : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_s02_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_s02_regslice_TLAST : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TREADY : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TVALID : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TLAST : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TREADY : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TVALID : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s02_data_fifo_to_s02_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s02_data_fifo_to_s02_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s02_data_fifo_to_s02_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s02_data_fifo_to_s02_couplers_TLAST;
  M_AXIS_tvalid <= s02_data_fifo_to_s02_couplers_TVALID;
  S_AXIS_tready <= s02_couplers_to_s02_regslice_TREADY;
  s02_couplers_to_s02_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s02_couplers_to_s02_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s02_couplers_to_s02_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s02_couplers_to_s02_regslice_TLAST <= S_AXIS_tlast;
  s02_couplers_to_s02_regslice_TVALID <= S_AXIS_tvalid;
  s02_data_fifo_to_s02_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_3
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s02_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s02_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s02_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s02_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s02_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s02_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s02_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s02_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s02_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s02_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s02_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s02_regslice_to_auto_ss_slid_TVALID
    );
s02_data_fifo: component proj_blk_design_s02_data_fifo_4
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s02_data_fifo_to_s02_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s02_data_fifo_to_s02_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s02_data_fifo_to_s02_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s02_data_fifo_to_s02_couplers_TLAST,
      m_axis_tready => s02_data_fifo_to_s02_couplers_TREADY,
      m_axis_tvalid => s02_data_fifo_to_s02_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s02_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s02_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s02_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s02_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s02_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s02_data_fifo_TVALID
    );
s02_regslice: component proj_blk_design_s02_regslice_4
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s02_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s02_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s02_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s02_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s02_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s02_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s02_couplers_to_s02_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s02_couplers_to_s02_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s02_couplers_to_s02_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s02_couplers_to_s02_regslice_TLAST,
      s_axis_tready => s02_couplers_to_s02_regslice_TREADY,
      s_axis_tvalid => s02_couplers_to_s02_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_PAR1G2 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s02_couplers_imp_PAR1G2;

architecture STRUCTURE of s02_couplers_imp_PAR1G2 is
  component proj_blk_design_s02_regslice_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s02_regslice_5;
  component proj_blk_design_s02_data_fifo_5 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proj_blk_design_s02_data_fifo_5;
  component proj_blk_design_auto_ss_slid_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component proj_blk_design_auto_ss_slid_5;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ss_slid_to_s02_data_fifo_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s02_data_fifo_TREADY : STD_LOGIC;
  signal auto_ss_slid_to_s02_data_fifo_TVALID : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_s02_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_s02_regslice_TLAST : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TREADY : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_TVALID : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_data_fifo_to_s02_couplers_TLAST : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TREADY : STD_LOGIC;
  signal s02_data_fifo_to_s02_couplers_TVALID : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_regslice_to_auto_ss_slid_TLAST : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s02_regslice_to_auto_ss_slid_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= s02_data_fifo_to_s02_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(3 downto 0) <= s02_data_fifo_to_s02_couplers_TDEST(3 downto 0);
  M_AXIS_tkeep(63 downto 0) <= s02_data_fifo_to_s02_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= s02_data_fifo_to_s02_couplers_TLAST;
  M_AXIS_tvalid <= s02_data_fifo_to_s02_couplers_TVALID;
  S_AXIS_tready <= s02_couplers_to_s02_regslice_TREADY;
  s02_couplers_to_s02_regslice_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  s02_couplers_to_s02_regslice_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  s02_couplers_to_s02_regslice_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  s02_couplers_to_s02_regslice_TLAST <= S_AXIS_tlast;
  s02_couplers_to_s02_regslice_TVALID <= S_AXIS_tvalid;
  s02_data_fifo_to_s02_couplers_TREADY <= M_AXIS_tready;
auto_ss_slid: component proj_blk_design_auto_ss_slid_5
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => auto_ss_slid_to_s02_data_fifo_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s02_data_fifo_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => auto_ss_slid_to_s02_data_fifo_TKEEP(63 downto 0),
      m_axis_tlast => auto_ss_slid_to_s02_data_fifo_TLAST,
      m_axis_tready => auto_ss_slid_to_s02_data_fifo_TREADY,
      m_axis_tvalid => auto_ss_slid_to_s02_data_fifo_TVALID,
      s_axis_tdata(511 downto 0) => s02_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s02_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s02_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      s_axis_tlast => s02_regslice_to_auto_ss_slid_TLAST,
      s_axis_tready => s02_regslice_to_auto_ss_slid_TREADY,
      s_axis_tvalid => s02_regslice_to_auto_ss_slid_TVALID
    );
s02_data_fifo: component proj_blk_design_s02_data_fifo_5
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => s02_data_fifo_to_s02_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => s02_data_fifo_to_s02_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => s02_data_fifo_to_s02_couplers_TKEEP(63 downto 0),
      m_axis_tlast => s02_data_fifo_to_s02_couplers_TLAST,
      m_axis_tready => s02_data_fifo_to_s02_couplers_TREADY,
      m_axis_tvalid => s02_data_fifo_to_s02_couplers_TVALID,
      s_axis_aclk => M_AXIS_ACLK,
      s_axis_aresetn => M_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => auto_ss_slid_to_s02_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(3 downto 0) => auto_ss_slid_to_s02_data_fifo_TDEST(3 downto 0),
      s_axis_tkeep(63 downto 0) => auto_ss_slid_to_s02_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => auto_ss_slid_to_s02_data_fifo_TLAST,
      s_axis_tready => auto_ss_slid_to_s02_data_fifo_TREADY,
      s_axis_tvalid => auto_ss_slid_to_s02_data_fifo_TVALID
    );
s02_regslice: component proj_blk_design_s02_regslice_5
     port map (
      aclk => S_AXIS_ACLK,
      aresetn => S_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => s02_regslice_to_auto_ss_slid_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => s02_regslice_to_auto_ss_slid_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => s02_regslice_to_auto_ss_slid_TKEEP(63 downto 0),
      m_axis_tlast => s02_regslice_to_auto_ss_slid_TLAST,
      m_axis_tready => s02_regslice_to_auto_ss_slid_TREADY,
      m_axis_tvalid => s02_regslice_to_auto_ss_slid_TVALID,
      s_axis_tdata(511 downto 0) => s02_couplers_to_s02_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s02_couplers_to_s02_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s02_couplers_to_s02_regslice_TKEEP(63 downto 0),
      s_axis_tlast => s02_couplers_to_s02_regslice_TLAST,
      s_axis_tready => s02_couplers_to_s02_regslice_TREADY,
      s_axis_tvalid => s02_couplers_to_s02_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_INTC_to_MCDI_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_INTC_to_MCDI_0;

architecture STRUCTURE of proj_blk_design_INTC_to_MCDI_0 is
  component proj_blk_design_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_xbar_0;
  component proj_blk_design_s_arb_req_suppress_concat_12 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_12;
  signal INTC_to_MCDI_ACLK_net : STD_LOGIC;
  signal INTC_to_MCDI_ARESETN_net : STD_LOGIC;
  signal INTC_to_MCDI_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTC_to_MCDI_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTC_to_MCDI_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTC_to_MCDI_to_s00_couplers_TLAST : STD_LOGIC;
  signal INTC_to_MCDI_to_s00_couplers_TREADY : STD_LOGIC;
  signal INTC_to_MCDI_to_s00_couplers_TVALID : STD_LOGIC;
  signal INTC_to_MCDI_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTC_to_MCDI_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTC_to_MCDI_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTC_to_MCDI_to_s01_couplers_TLAST : STD_LOGIC;
  signal INTC_to_MCDI_to_s01_couplers_TREADY : STD_LOGIC;
  signal INTC_to_MCDI_to_s01_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_INTC_to_MCDI_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_INTC_to_MCDI_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_INTC_to_MCDI_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_INTC_to_MCDI_TLAST : STD_LOGIC;
  signal m00_couplers_to_INTC_to_MCDI_TREADY : STD_LOGIC;
  signal m00_couplers_to_INTC_to_MCDI_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  INTC_to_MCDI_ACLK_net <= ACLK;
  INTC_to_MCDI_ARESETN_net <= ARESETN;
  INTC_to_MCDI_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  INTC_to_MCDI_to_s00_couplers_TDEST(1 downto 0) <= S00_AXIS_tdest(1 downto 0);
  INTC_to_MCDI_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  INTC_to_MCDI_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  INTC_to_MCDI_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  INTC_to_MCDI_to_s01_couplers_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  INTC_to_MCDI_to_s01_couplers_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  INTC_to_MCDI_to_s01_couplers_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  INTC_to_MCDI_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  INTC_to_MCDI_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  M00_AXIS_tdata(511 downto 0) <= m00_couplers_to_INTC_to_MCDI_TDATA(511 downto 0);
  M00_AXIS_tdest(1 downto 0) <= m00_couplers_to_INTC_to_MCDI_TDEST(1 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= m00_couplers_to_INTC_to_MCDI_TKEEP(63 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_INTC_to_MCDI_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_INTC_to_MCDI_TVALID;
  S00_AXIS_tready <= INTC_to_MCDI_to_s00_couplers_TREADY;
  S01_AXIS_tready <= INTC_to_MCDI_to_s01_couplers_TREADY;
  m00_couplers_to_INTC_to_MCDI_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_8WVSET
     port map (
      M_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      M_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => m00_couplers_to_INTC_to_MCDI_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => m00_couplers_to_INTC_to_MCDI_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => m00_couplers_to_INTC_to_MCDI_TKEEP(63 downto 0),
      M_AXIS_tlast => m00_couplers_to_INTC_to_MCDI_TLAST,
      M_AXIS_tready => m00_couplers_to_INTC_to_MCDI_TREADY,
      M_AXIS_tvalid => m00_couplers_to_INTC_to_MCDI_TVALID,
      S_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      S_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_6WA6L
     port map (
      M_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      M_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      S_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => INTC_to_MCDI_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => INTC_to_MCDI_to_s00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => INTC_to_MCDI_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => INTC_to_MCDI_to_s00_couplers_TLAST,
      S_AXIS_tready => INTC_to_MCDI_to_s00_couplers_TREADY,
      S_AXIS_tvalid => INTC_to_MCDI_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_19UGBR7
     port map (
      M_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      M_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => s01_couplers_to_xbar_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => INTC_to_MCDI_ACLK_net,
      S_AXIS_ARESETN => INTC_to_MCDI_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => INTC_to_MCDI_to_s01_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => INTC_to_MCDI_to_s01_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => INTC_to_MCDI_to_s01_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => INTC_to_MCDI_to_s01_couplers_TLAST,
      S_AXIS_tready => INTC_to_MCDI_to_s01_couplers_TREADY,
      S_AXIS_tvalid => INTC_to_MCDI_to_s01_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_12
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
xbar: component proj_blk_design_xbar_0
     port map (
      aclk => INTC_to_MCDI_ACLK_net,
      aresetn => INTC_to_MCDI_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(3 downto 2) => s01_couplers_to_xbar_TDEST(1 downto 0),
      s_axis_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(1 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end proj_blk_design_axi_interconnect_1_0;

architecture STRUCTURE of proj_blk_design_axi_interconnect_1_0 is
  component proj_blk_design_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component proj_blk_design_xbar_1;
  component proj_blk_design_s00_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component proj_blk_design_s00_mmu_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal axi_interconnect_1_ACLK_net : STD_LOGIC;
  signal axi_interconnect_1_ARESETN_net : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_ARREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_ARVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_AWREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_AWVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_BREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_BVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_RREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_RVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_WREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axi_interconnect_1_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(11 downto 0) <= m00_couplers_to_axi_interconnect_1_ARADDR(11 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_1_ARVALID;
  M00_AXI_awaddr(11 downto 0) <= m00_couplers_to_axi_interconnect_1_AWADDR(11 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_1_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_1_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_1_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_1_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_1_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_1_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_1_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_1_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_1_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_1_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_1_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_axi_interconnect_1_ARADDR(39 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_axi_interconnect_1_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_1_ARVALID;
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_axi_interconnect_1_AWADDR(39 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_axi_interconnect_1_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_1_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_1_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_1_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_1_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(8 downto 0) <= m03_couplers_to_axi_interconnect_1_ARADDR(8 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_interconnect_1_ARVALID;
  M03_AXI_awaddr(8 downto 0) <= m03_couplers_to_axi_interconnect_1_AWADDR(8 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_interconnect_1_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_interconnect_1_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_interconnect_1_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_interconnect_1_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(8 downto 0) <= m04_couplers_to_axi_interconnect_1_ARADDR(8 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_interconnect_1_ARVALID;
  M04_AXI_awaddr(8 downto 0) <= m04_couplers_to_axi_interconnect_1_AWADDR(8 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_interconnect_1_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_interconnect_1_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_interconnect_1_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_interconnect_1_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(8 downto 0) <= m05_couplers_to_axi_interconnect_1_ARADDR(8 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_interconnect_1_ARVALID;
  M05_AXI_awaddr(8 downto 0) <= m05_couplers_to_axi_interconnect_1_AWADDR(8 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_interconnect_1_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_interconnect_1_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_interconnect_1_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_interconnect_1_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(8 downto 0) <= m06_couplers_to_axi_interconnect_1_ARADDR(8 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_axi_interconnect_1_ARVALID;
  M06_AXI_awaddr(8 downto 0) <= m06_couplers_to_axi_interconnect_1_AWADDR(8 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_axi_interconnect_1_AWVALID;
  M06_AXI_bready <= m06_couplers_to_axi_interconnect_1_BREADY;
  M06_AXI_rready <= m06_couplers_to_axi_interconnect_1_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_axi_interconnect_1_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_axi_interconnect_1_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_axi_interconnect_1_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_1_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARLOCK(0) <= S00_AXI_arlock(0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARUSER(15 downto 0) <= S00_AXI_aruser(15 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK(0) <= S00_AXI_awlock(0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWUSER(15 downto 0) <= S00_AXI_awuser(15 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bid(15 downto 0) <= S00_AXI_1_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rid(15 downto 0) <= S00_AXI_1_RID(15 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  axi_interconnect_1_ACLK_net <= ACLK;
  axi_interconnect_1_ARESETN_net <= ARESETN;
  m00_couplers_to_axi_interconnect_1_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_1_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_1_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_1_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_1_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_1_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_1_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_1_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_1_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_1_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_1_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_1_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_1_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_1_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_interconnect_1_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_interconnect_1_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_1_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_1_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_interconnect_1_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_interconnect_1_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_interconnect_1_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_interconnect_1_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_interconnect_1_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_interconnect_1_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_interconnect_1_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_interconnect_1_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_interconnect_1_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_interconnect_1_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_interconnect_1_WREADY <= M05_AXI_wready;
  m06_couplers_to_axi_interconnect_1_ARREADY <= M06_AXI_arready;
  m06_couplers_to_axi_interconnect_1_AWREADY <= M06_AXI_awready;
  m06_couplers_to_axi_interconnect_1_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_axi_interconnect_1_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_axi_interconnect_1_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_axi_interconnect_1_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_axi_interconnect_1_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_axi_interconnect_1_WREADY <= M06_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_B27SHO
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(11 downto 0) => m00_couplers_to_axi_interconnect_1_ARADDR(11 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(11 downto 0) => m00_couplers_to_axi_interconnect_1_AWADDR(11 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_105WF76
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_1_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_1_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1EZ9RQ9
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_axi_interconnect_1_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_axi_interconnect_1_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_axi_interconnect_1_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_axi_interconnect_1_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_51OQ7J
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m03_couplers_to_axi_interconnect_1_ARADDR(8 downto 0),
      M_AXI_arready => m03_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m03_couplers_to_axi_interconnect_1_AWADDR(8 downto 0),
      M_AXI_awready => m03_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(39 downto 0) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1P5ABRB
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m04_couplers_to_axi_interconnect_1_ARADDR(8 downto 0),
      M_AXI_arready => m04_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m04_couplers_to_axi_interconnect_1_AWADDR(8 downto 0),
      M_AXI_awready => m04_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(39 downto 0) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_XTSZD5
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m05_couplers_to_axi_interconnect_1_ARADDR(8 downto 0),
      M_AXI_arready => m05_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m05_couplers_to_axi_interconnect_1_AWADDR(8 downto 0),
      M_AXI_awready => m05_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(39 downto 0) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_L3EKBE
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(8 downto 0) => m06_couplers_to_axi_interconnect_1_ARADDR(8 downto 0),
      M_AXI_arready => m06_couplers_to_axi_interconnect_1_ARREADY,
      M_AXI_arvalid => m06_couplers_to_axi_interconnect_1_ARVALID,
      M_AXI_awaddr(8 downto 0) => m06_couplers_to_axi_interconnect_1_AWADDR(8 downto 0),
      M_AXI_awready => m06_couplers_to_axi_interconnect_1_AWREADY,
      M_AXI_awvalid => m06_couplers_to_axi_interconnect_1_AWVALID,
      M_AXI_bready => m06_couplers_to_axi_interconnect_1_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_axi_interconnect_1_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_axi_interconnect_1_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_axi_interconnect_1_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_axi_interconnect_1_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_axi_interconnect_1_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_axi_interconnect_1_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_axi_interconnect_1_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_axi_interconnect_1_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_axi_interconnect_1_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_axi_interconnect_1_WVALID,
      S_ACLK => axi_interconnect_1_ACLK_net,
      S_ARESETN => axi_interconnect_1_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(39 downto 0) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_22ENS4
     port map (
      M_ACLK => axi_interconnect_1_ACLK_net,
      M_ARESETN => axi_interconnect_1_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => s00_mmu_M_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => s00_mmu_M_AXI_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s00_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_aruser(15 downto 0) => s00_mmu_M_AXI_ARUSER(15 downto 0),
      S_AXI_arvalid => s00_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(39 downto 0) => s00_mmu_M_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => s00_mmu_M_AXI_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s00_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awuser(15 downto 0) => s00_mmu_M_AXI_AWUSER(15 downto 0),
      S_AXI_awvalid => s00_mmu_M_AXI_AWVALID,
      S_AXI_bid(15 downto 0) => s00_mmu_M_AXI_BID(15 downto 0),
      S_AXI_bready => s00_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s00_mmu_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => s00_mmu_M_AXI_RID(15 downto 0),
      S_AXI_rlast => s00_mmu_M_AXI_RLAST,
      S_AXI_rready => s00_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s00_mmu_M_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wlast => s00_mmu_M_AXI_WLAST,
      S_AXI_wready => s00_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s00_mmu_M_AXI_WVALID
    );
s00_mmu: component proj_blk_design_s00_mmu_0
     port map (
      aclk => S00_ACLK_1,
      aresetn => S00_ARESETN_1,
      m_axi_araddr(39 downto 0) => s00_mmu_M_AXI_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(15 downto 0) => s00_mmu_M_AXI_ARID(15 downto 0),
      m_axi_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s00_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_aruser(15 downto 0) => s00_mmu_M_AXI_ARUSER(15 downto 0),
      m_axi_arvalid => s00_mmu_M_AXI_ARVALID,
      m_axi_awaddr(39 downto 0) => s00_mmu_M_AXI_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(15 downto 0) => s00_mmu_M_AXI_AWID(15 downto 0),
      m_axi_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(15 downto 0) => s00_mmu_M_AXI_AWUSER(15 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bid(15 downto 0) => s00_mmu_M_AXI_BID(15 downto 0),
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rid(15 downto 0) => s00_mmu_M_AXI_RID(15 downto 0),
      m_axi_rlast => s00_mmu_M_AXI_RLAST,
      m_axi_rready => s00_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s00_mmu_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_araddr(39 downto 0) => S00_AXI_1_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => S00_AXI_1_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(0) => S00_AXI_1_ARLOCK(0),
      s_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S00_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => S00_AXI_1_ARUSER(15 downto 0),
      s_axi_arvalid => S00_AXI_1_ARVALID,
      s_axi_awaddr(39 downto 0) => S00_AXI_1_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => S00_AXI_1_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => S00_AXI_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => S00_AXI_1_AWUSER(15 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bid(15 downto 0) => S00_AXI_1_BID(15 downto 0),
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => S00_AXI_1_RID(15 downto 0),
      s_axi_rlast => S00_AXI_1_RLAST,
      s_axi_rready => S00_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S00_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      s_axi_wlast => S00_AXI_1_WLAST,
      s_axi_wready => S00_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S00_AXI_1_WVALID
    );
xbar: component proj_blk_design_xbar_1
     port map (
      aclk => axi_interconnect_1_ACLK_net,
      aresetn => axi_interconnect_1_ARESETN_net,
      m_axi_araddr(279 downto 240) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      m_axi_araddr(239 downto 200) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      m_axi_araddr(199 downto 160) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      m_axi_araddr(159 downto 120) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(279 downto 240) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      m_axi_awaddr(239 downto 200) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      m_axi_awaddr(199 downto 160) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      m_axi_awaddr(159 downto 120) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_0;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_0 is
  component proj_blk_design_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_xbar_2;
  component proj_blk_design_s_arb_req_suppress_concat_11 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_11;
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M00_AXIS_tdata(511 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(511 downto 0);
  M00_AXIS_tdest(3 downto 0) <= m00_couplers_to_axis_interconnect_0_TDEST(3 downto 0);
  M00_AXIS_tid(7 downto 0) <= m00_couplers_to_axis_interconnect_0_TID(7 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= m00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tuser(15 downto 0) <= m00_couplers_to_axis_interconnect_0_TUSER(15 downto 0);
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net <= ARESETN;
  axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s00_couplers_TDEST(1 downto 0) <= S00_AXIS_tdest(1 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(47 downto 0) <= S01_AXIS_tdata(47 downto 0);
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_1WCGL5T
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => m00_couplers_to_axis_interconnect_0_TDEST(3 downto 0),
      M_AXIS_tid(7 downto 0) => m00_couplers_to_axis_interconnect_0_TID(7 downto 0),
      M_AXIS_tkeep(63 downto 0) => m00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tuser(15 downto 0) => m00_couplers_to_axis_interconnect_0_TUSER(15 downto 0),
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1NNHLQ1
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => axis_interconnect_0_to_s00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_W1BK1J
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => s01_couplers_to_xbar_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(47 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(47 downto 0),
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_11
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
xbar: component proj_blk_design_xbar_2
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(3 downto 2) => s01_couplers_to_xbar_TDEST(1 downto 0),
      s_axis_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(1 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_1;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_1 is
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(511 downto 0) <= s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0);
  M00_AXIS_tlast <= s00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= s00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0) <= S00_AXIS_tdata(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0) <= S00_AXIS_tkeep(7 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  s00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
s00_couplers: entity work.s00_couplers_imp_G6GO5C
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => s00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => s00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(63 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0),
      S_AXIS_tkeep(7 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_10 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_10;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_10 is
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(511 downto 0) <= s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0);
  M00_AXIS_tlast <= s00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= s00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0) <= S00_AXIS_tdata(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0) <= S00_AXIS_tkeep(7 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  s00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
s00_couplers: entity work.s00_couplers_imp_1S4TDMR
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => s00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => s00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(63 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0),
      S_AXIS_tkeep(7 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_11 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_11;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_11 is
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(511 downto 0) <= s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0);
  M00_AXIS_tlast <= s00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= s00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0) <= S00_AXIS_tdata(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0) <= S00_AXIS_tkeep(7 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  s00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
s00_couplers: entity work.s00_couplers_imp_9MXARN
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => s00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => s00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(63 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0),
      S_AXIS_tkeep(7 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_5 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_5;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_5 is
  component proj_blk_design_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_xbar_3;
  component proj_blk_design_s_arb_req_suppress_concat_13 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_13;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(63 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0);
  M00_AXIS_tkeep(7 downto 0) <= m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1 <= S01_AXIS_ARESETN;
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net <= ARESETN;
  axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s00_couplers_TDEST(3 downto 0) <= S00_AXIS_tdest(3 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s01_couplers_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_1VFVZYS
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(63 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0),
      M_AXIS_tkeep(7 downto 0) => m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1MR2MRW
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => axis_interconnect_0_to_s00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_WSPXOI
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN => S01_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => axis_interconnect_0_to_s01_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s01_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_13
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
xbar: component proj_blk_design_xbar_3
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(1 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_6 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_6;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_6 is
  component proj_blk_design_xbar_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component proj_blk_design_xbar_4;
  component proj_blk_design_s_arb_req_suppress_concat_14 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_14;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC;
  signal S02_AXIS_ACLK_1 : STD_LOGIC;
  signal S02_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s02_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s02_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(63 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0);
  M00_AXIS_tkeep(7 downto 0) <= m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1 <= S01_AXIS_ARESETN;
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  S02_AXIS_ACLK_1 <= S02_AXIS_ACLK;
  S02_AXIS_ARESETN_1 <= S02_AXIS_ARESETN;
  S02_AXIS_tready <= axis_interconnect_0_to_s02_couplers_TREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net <= ARESETN;
  axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s01_couplers_TDEST(3 downto 0) <= S01_AXIS_tdest(3 downto 0);
  axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  axis_interconnect_0_to_s02_couplers_TDATA(511 downto 0) <= S02_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s02_couplers_TDEST(1 downto 0) <= S02_AXIS_tdest(1 downto 0);
  axis_interconnect_0_to_s02_couplers_TKEEP(63 downto 0) <= S02_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s02_couplers_TLAST <= S02_AXIS_tlast;
  axis_interconnect_0_to_s02_couplers_TVALID <= S02_AXIS_tvalid;
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
  s02_arb_req_suppress_to_s_arb_req_suppress_concat <= S02_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_CWB0T3
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(63 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0),
      M_AXIS_tkeep(7 downto 0) => m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_444URZ
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_1BJS5A9
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN => S01_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => axis_interconnect_0_to_s01_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s01_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s02_couplers: entity work.s02_couplers_imp_1816U1E
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s02_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s02_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s02_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s02_couplers_to_xbar_TLAST,
      M_AXIS_tready => s02_couplers_to_xbar_TREADY(2),
      M_AXIS_tvalid => s02_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S02_AXIS_ACLK_1,
      S_AXIS_ARESETN => S02_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s02_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => axis_interconnect_0_to_s02_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s02_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s02_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s02_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s02_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_14
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      In2(0) => s02_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(2 downto 0) => s_arb_req_suppress_concat_dout(2 downto 0)
    );
xbar: component proj_blk_design_xbar_4
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1535 downto 1024) => s02_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(11 downto 8) => s02_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tkeep(191 downto 128) => s02_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(2) => s02_couplers_to_xbar_TLAST,
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(2) => s02_couplers_to_xbar_TREADY(2),
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(2) => s02_couplers_to_xbar_TVALID,
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(2 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(2 downto 0),
      s_req_suppress(2 downto 0) => s_arb_req_suppress_concat_dout(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_7 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_7;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_7 is
  component proj_blk_design_xbar_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component proj_blk_design_xbar_5;
  component proj_blk_design_s_arb_req_suppress_concat_15 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_15;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC;
  signal S02_AXIS_ACLK_1 : STD_LOGIC;
  signal S02_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s02_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s02_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(63 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0);
  M00_AXIS_tkeep(7 downto 0) <= m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1 <= S01_AXIS_ARESETN;
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  S02_AXIS_ACLK_1 <= S02_AXIS_ACLK;
  S02_AXIS_ARESETN_1 <= S02_AXIS_ARESETN;
  S02_AXIS_tready <= axis_interconnect_0_to_s02_couplers_TREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net <= ARESETN;
  axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s01_couplers_TDEST(3 downto 0) <= S01_AXIS_tdest(3 downto 0);
  axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  axis_interconnect_0_to_s02_couplers_TDATA(511 downto 0) <= S02_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s02_couplers_TDEST(1 downto 0) <= S02_AXIS_tdest(1 downto 0);
  axis_interconnect_0_to_s02_couplers_TKEEP(63 downto 0) <= S02_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s02_couplers_TLAST <= S02_AXIS_tlast;
  axis_interconnect_0_to_s02_couplers_TVALID <= S02_AXIS_tvalid;
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
  s02_arb_req_suppress_to_s_arb_req_suppress_concat <= S02_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_1TG9LCN
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(63 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0),
      M_AXIS_tkeep(7 downto 0) => m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1KENUJ3
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_UQ9C8X
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN => S01_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => axis_interconnect_0_to_s01_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s01_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s02_couplers: entity work.s02_couplers_imp_PAR1G2
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s02_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s02_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s02_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s02_couplers_to_xbar_TLAST,
      M_AXIS_tready => s02_couplers_to_xbar_TREADY(2),
      M_AXIS_tvalid => s02_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S02_AXIS_ACLK_1,
      S_AXIS_ARESETN => S02_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s02_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => axis_interconnect_0_to_s02_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s02_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s02_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s02_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s02_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_15
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      In2(0) => s02_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(2 downto 0) => s_arb_req_suppress_concat_dout(2 downto 0)
    );
xbar: component proj_blk_design_xbar_5
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1535 downto 1024) => s02_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(11 downto 8) => s02_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tkeep(191 downto 128) => s02_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(2) => s02_couplers_to_xbar_TLAST,
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(2) => s02_couplers_to_xbar_TREADY(2),
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(2) => s02_couplers_to_xbar_TVALID,
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(2 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(2 downto 0),
      s_req_suppress(2 downto 0) => s_arb_req_suppress_concat_dout(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_8 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_ARB_REQ_SUPPRESS : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_8;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_8 is
  component proj_blk_design_xbar_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_xbar_6;
  component proj_blk_design_s_arb_req_suppress_concat_16 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_s_arb_req_suppress_concat_16;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_arb_req_suppress_to_s_arb_req_suppress_concat : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s_arb_req_suppress_concat_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(63 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0);
  M00_AXIS_tkeep(7 downto 0) <= m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1 <= S01_AXIS_ARESETN;
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net <= ARESETN;
  axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s00_couplers_TDEST(3 downto 0) <= S00_AXIS_tdest(3 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  axis_interconnect_0_to_s01_couplers_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  axis_interconnect_0_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  s00_arb_req_suppress_to_s_arb_req_suppress_concat <= S00_ARB_REQ_SUPPRESS;
  s01_arb_req_suppress_to_s_arb_req_suppress_concat <= S01_ARB_REQ_SUPPRESS;
m00_couplers: entity work.m00_couplers_imp_F4YYC4
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(63 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(63 downto 0),
      M_AXIS_tkeep(7 downto 0) => m00_couplers_to_axis_interconnect_0_TKEEP(7 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_6507D8
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => axis_interconnect_0_to_s00_couplers_TDEST(3 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_1DUOHTU
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN => axis_interconnect_0_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s01_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tkeep(63 downto 0) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN => S01_AXIS_ARESETN_1,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => axis_interconnect_0_to_s01_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_to_s01_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s01_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s_arb_req_suppress_concat: component proj_blk_design_s_arb_req_suppress_concat_16
     port map (
      In0(0) => s00_arb_req_suppress_to_s_arb_req_suppress_concat,
      In1(0) => s01_arb_req_suppress_to_s_arb_req_suppress_concat,
      dout(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
xbar: component proj_blk_design_xbar_6
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net,
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(1023 downto 512) => s01_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tkeep(127 downto 64) => s01_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(1 downto 0) => NLW_xbar_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => s_arb_req_suppress_concat_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_axis_interconnect_0_9 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC
  );
end proj_blk_design_axis_interconnect_0_9;

architecture STRUCTURE of proj_blk_design_axis_interconnect_0_9 is
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal s00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(511 downto 0) <= s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0);
  M00_AXIS_tlast <= s00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= s00_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0) <= S00_AXIS_tdata(63 downto 0);
  axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0) <= S00_AXIS_tkeep(7 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  s00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
s00_couplers: entity work.s00_couplers_imp_1YZ9PKW
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_axis_interconnect_0_TDATA(511 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_axis_interconnect_0_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => s00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => s00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(63 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(63 downto 0),
      S_AXIS_tkeep(7 downto 0) => axis_interconnect_0_to_s00_couplers_TKEEP(7 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MCDI_imp_1O7F6XG is
  port (
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    clk_200M : in STD_LOGIC;
    m0_axis_MCDI_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_MCDI_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_MCDI_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_MCDI_tlast : out STD_LOGIC;
    m0_axis_MCDI_tready : in STD_LOGIC;
    m0_axis_MCDI_tvalid : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tvalid : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    port1_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC
  );
end MCDI_imp_1O7F6XG;

architecture STRUCTURE of MCDI_imp_1O7F6XG is
  component proj_blk_design_axis_register_slice_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_axis_register_slice_0_0;
  component proj_blk_design_demux_logic_MCDI_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    demux_en : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_demux_logic_MCDI_0_0;
  component proj_blk_design_mcdi_check_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    mode_select_MAC2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mode_select_MAC3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mcdi_flag_o : out STD_LOGIC
  );
  end component proj_blk_design_mcdi_check_0_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal INTC_to_MCDI_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTC_to_MCDI_M00_AXIS_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTC_to_MCDI_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTC_to_MCDI_M00_AXIS_TLAST : STD_LOGIC;
  signal INTC_to_MCDI_M00_AXIS_TREADY : STD_LOGIC;
  signal INTC_to_MCDI_M00_AXIS_TVALID : STD_LOGIC;
  signal aclk_1 : STD_LOGIC;
  signal axis_register_slice_0_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_register_slice_0_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_register_slice_0_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_register_slice_0_m_axis_tlast : STD_LOGIC;
  signal axis_register_slice_0_m_axis_tuser : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_register_slice_0_m_axis_tvalid : STD_LOGIC;
  signal axis_register_slice_0_s_axis_tready : STD_LOGIC;
  signal demux_logic_MCDI_0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal demux_logic_MCDI_0_m0_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal demux_logic_MCDI_0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal demux_logic_MCDI_0_m0_axis_TLAST : STD_LOGIC;
  signal demux_logic_MCDI_0_m0_axis_TREADY : STD_LOGIC;
  signal demux_logic_MCDI_0_m0_axis_TVALID : STD_LOGIC;
  signal demux_logic_MCDI_0_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal demux_logic_MCDI_0_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal demux_logic_MCDI_0_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal demux_logic_MCDI_0_m1_axis_TLAST : STD_LOGIC;
  signal demux_logic_MCDI_0_m1_axis_TREADY : STD_LOGIC;
  signal demux_logic_MCDI_0_m1_axis_TVALID : STD_LOGIC;
  signal demux_logic_MCDI_0_s_axis_tready : STD_LOGIC;
  signal mcdi_check_0_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal mcdi_check_0_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mcdi_check_0_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mcdi_check_0_m_axis_tlast : STD_LOGIC;
  signal mcdi_check_0_m_axis_tvalid : STD_LOGIC;
  signal mcdi_check_0_mcdi_flag_o : STD_LOGIC;
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal port1_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_aresetn_1 : STD_LOGIC;
begin
  Conn1_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  Conn1_TDEST(1 downto 0) <= S00_AXIS_tdest(1 downto 0);
  Conn1_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  Conn1_TLAST <= S00_AXIS_tlast;
  Conn1_TVALID <= S00_AXIS_tvalid;
  Conn2_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  Conn2_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  Conn2_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  Conn2_TLAST <= S01_AXIS_tlast;
  Conn2_TVALID <= S01_AXIS_tvalid;
  S00_AXIS_tready <= Conn1_TREADY;
  S01_AXIS_tready <= Conn2_TREADY;
  aclk_1 <= clk_200M;
  demux_logic_MCDI_0_m0_axis_TREADY <= m0_axis_MCDI_tready;
  demux_logic_MCDI_0_m1_axis_TREADY <= m1_axis_tready;
  m0_axis_MCDI_tdata(511 downto 0) <= demux_logic_MCDI_0_m0_axis_TDATA(511 downto 0);
  m0_axis_MCDI_tdest(1 downto 0) <= demux_logic_MCDI_0_m0_axis_TDEST(1 downto 0);
  m0_axis_MCDI_tkeep(63 downto 0) <= demux_logic_MCDI_0_m0_axis_TKEEP(63 downto 0);
  m0_axis_MCDI_tlast <= demux_logic_MCDI_0_m0_axis_TLAST;
  m0_axis_MCDI_tvalid <= demux_logic_MCDI_0_m0_axis_TVALID;
  m1_axis_tdata(511 downto 0) <= demux_logic_MCDI_0_m1_axis_TDATA(511 downto 0);
  m1_axis_tdest(1 downto 0) <= demux_logic_MCDI_0_m1_axis_TDEST(1 downto 0);
  m1_axis_tkeep(63 downto 0) <= demux_logic_MCDI_0_m1_axis_TKEEP(63 downto 0);
  m1_axis_tlast <= demux_logic_MCDI_0_m1_axis_TLAST;
  m1_axis_tvalid <= demux_logic_MCDI_0_m1_axis_TVALID;
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  port1_mode_1(1 downto 0) <= port1_mode(1 downto 0);
  s_axi_aresetn_1 <= s_axi_aresetn;
INTC_to_MCDI: entity work.proj_blk_design_INTC_to_MCDI_0
     port map (
      ACLK => aclk_1,
      ARESETN => s_axi_aresetn_1,
      M00_AXIS_ACLK => aclk_1,
      M00_AXIS_ARESETN => s_axi_aresetn_1,
      M00_AXIS_tdata(511 downto 0) => INTC_to_MCDI_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tdest(1 downto 0) => INTC_to_MCDI_M00_AXIS_TDEST(1 downto 0),
      M00_AXIS_tkeep(63 downto 0) => INTC_to_MCDI_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => INTC_to_MCDI_M00_AXIS_TLAST,
      M00_AXIS_tready => INTC_to_MCDI_M00_AXIS_TREADY,
      M00_AXIS_tvalid => INTC_to_MCDI_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => aclk_1,
      S00_AXIS_ARESETN => s_axi_aresetn_1,
      S00_AXIS_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      S00_AXIS_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      S00_AXIS_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      S00_AXIS_tlast => Conn1_TLAST,
      S00_AXIS_tready => Conn1_TREADY,
      S00_AXIS_tvalid => Conn1_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => aclk_1,
      S01_AXIS_ARESETN => s_axi_aresetn_1,
      S01_AXIS_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      S01_AXIS_tlast => Conn2_TLAST,
      S01_AXIS_tready => Conn2_TREADY,
      S01_AXIS_tvalid => Conn2_TVALID
    );
axis_register_slice_0: component proj_blk_design_axis_register_slice_0_0
     port map (
      aclk => aclk_1,
      aresetn => s_axi_aresetn_1,
      m_axis_tdata(511 downto 0) => axis_register_slice_0_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_register_slice_0_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_register_slice_0_m_axis_tkeep(63 downto 0),
      m_axis_tlast => axis_register_slice_0_m_axis_tlast,
      m_axis_tready => demux_logic_MCDI_0_s_axis_tready,
      m_axis_tuser(0) => axis_register_slice_0_m_axis_tuser(0),
      m_axis_tvalid => axis_register_slice_0_m_axis_tvalid,
      s_axis_tdata(511 downto 0) => mcdi_check_0_m_axis_tdata(511 downto 0),
      s_axis_tdest(1 downto 0) => mcdi_check_0_m_axis_tdest(1 downto 0),
      s_axis_tkeep(63 downto 0) => mcdi_check_0_m_axis_tkeep(63 downto 0),
      s_axis_tlast => mcdi_check_0_m_axis_tlast,
      s_axis_tready => axis_register_slice_0_s_axis_tready,
      s_axis_tuser(0) => mcdi_check_0_mcdi_flag_o,
      s_axis_tvalid => mcdi_check_0_m_axis_tvalid
    );
demux_logic_MCDI_0: component proj_blk_design_demux_logic_MCDI_0_0
     port map (
      demux_en => axis_register_slice_0_m_axis_tuser(0),
      m0_axis_aclk => aclk_1,
      m0_axis_tdata(511 downto 0) => demux_logic_MCDI_0_m0_axis_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => demux_logic_MCDI_0_m0_axis_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => demux_logic_MCDI_0_m0_axis_TKEEP(63 downto 0),
      m0_axis_tlast => demux_logic_MCDI_0_m0_axis_TLAST,
      m0_axis_tready => demux_logic_MCDI_0_m0_axis_TREADY,
      m0_axis_tvalid => demux_logic_MCDI_0_m0_axis_TVALID,
      m1_axis_aclk => aclk_1,
      m1_axis_tdata(511 downto 0) => demux_logic_MCDI_0_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => demux_logic_MCDI_0_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => demux_logic_MCDI_0_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => demux_logic_MCDI_0_m1_axis_TLAST,
      m1_axis_tready => demux_logic_MCDI_0_m1_axis_TREADY,
      m1_axis_tvalid => demux_logic_MCDI_0_m1_axis_TVALID,
      s_axis_aclk => aclk_1,
      s_axis_aresetn => s_axi_aresetn_1,
      s_axis_tdata(511 downto 0) => axis_register_slice_0_m_axis_tdata(511 downto 0),
      s_axis_tdest(1 downto 0) => axis_register_slice_0_m_axis_tdest(1 downto 0),
      s_axis_tkeep(63 downto 0) => axis_register_slice_0_m_axis_tkeep(63 downto 0),
      s_axis_tlast => axis_register_slice_0_m_axis_tlast,
      s_axis_tready => demux_logic_MCDI_0_s_axis_tready,
      s_axis_tvalid => axis_register_slice_0_m_axis_tvalid
    );
mcdi_check_0: component proj_blk_design_mcdi_check_0_0
     port map (
      m_axis_aclk => aclk_1,
      m_axis_tdata(511 downto 0) => mcdi_check_0_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => mcdi_check_0_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => mcdi_check_0_m_axis_tkeep(63 downto 0),
      m_axis_tlast => mcdi_check_0_m_axis_tlast,
      m_axis_tready => axis_register_slice_0_s_axis_tready,
      m_axis_tvalid => mcdi_check_0_m_axis_tvalid,
      mcdi_flag_o => mcdi_check_0_mcdi_flag_o,
      mode_select_MAC2(1 downto 0) => port0_mode_1(1 downto 0),
      mode_select_MAC3(1 downto 0) => port1_mode_1(1 downto 0),
      s_axis_aclk => aclk_1,
      s_axis_aresetn => s_axi_aresetn_1,
      s_axis_tdata(511 downto 0) => INTC_to_MCDI_M00_AXIS_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => INTC_to_MCDI_M00_AXIS_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => INTC_to_MCDI_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => INTC_to_MCDI_M00_AXIS_TLAST,
      s_axis_tready => INTC_to_MCDI_M00_AXIS_TREADY,
      s_axis_tvalid => INTC_to_MCDI_M00_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity from_MAC00_is_MAC0_imp_17V957Q is
  port (
    S_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_00_tlast : in STD_LOGIC;
    S_AXIS_00_tready : out STD_LOGIC;
    S_AXIS_00_tvalid : in STD_LOGIC;
    i_stat_tx_pause_valid_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tvalid : out STD_LOGIC;
    o_ctl_tx_pause_req_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause_0 : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_aclk_0 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    usr_clk : in STD_LOGIC;
    usr_resetn : in STD_LOGIC
  );
end from_MAC00_is_MAC0_imp_17V957Q;

architecture STRUCTURE of from_MAC00_is_MAC0_imp_17V957Q is
  component proj_blk_design_axis_data_fifo_1_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component proj_blk_design_axis_data_fifo_1_0;
  component proj_blk_design_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_0;
  component proj_blk_design_mac_traffic_control_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TValid : in STD_LOGIC;
    s_axis_TReady : out STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TReady : in STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TReady : in STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    fifo_prog_full : in STD_LOGIC
  );
  end component proj_blk_design_mac_traffic_control_0_0;
  component proj_blk_design_MAC_RX_out_logic_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_MAC_RX_out_logic_0_0;
  component proj_blk_design_mac_flow_control_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC;
    i_stat_tx_pause_valid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_fifo_full_ila : out STD_LOGIC;
    o_ctl_tx_pause_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause : out STD_LOGIC
  );
  end component proj_blk_design_mac_flow_control_0_0;
  component proj_blk_design_mode_selection_MAC0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mode_select_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC
  );
  end component proj_blk_design_mode_selection_MAC0_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TLAST : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TREADY : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S_AXIS_00_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_00_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_00_1_TLAST : STD_LOGIC;
  signal S_AXIS_00_1_TREADY : STD_LOGIC;
  signal S_AXIS_00_1_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_prog_empty : STD_LOGIC;
  signal axis_data_fifo_1_prog_full : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal i_stat_tx_pause_valid_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_pause_req : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_resend_pause : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mac_traffic_control_0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_traffic_control_0_m0_axis_TLAST : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TREADY : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TVALID : STD_LOGIC;
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_aclk_0_1 : STD_LOGIC;
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Conn1_TREADY <= m1_axis_tready;
  Conn2_TREADY <= m0_axis_tready;
  Net <= usr_resetn;
  Net1 <= usr_clk;
  S_AXIS_00_1_TDATA(63 downto 0) <= S_AXIS_00_tdata(63 downto 0);
  S_AXIS_00_1_TKEEP(7 downto 0) <= S_AXIS_00_tkeep(7 downto 0);
  S_AXIS_00_1_TLAST <= S_AXIS_00_tlast;
  S_AXIS_00_1_TVALID <= S_AXIS_00_tvalid;
  S_AXIS_00_tready <= S_AXIS_00_1_TREADY;
  i_stat_tx_pause_valid_0_1(8 downto 0) <= i_stat_tx_pause_valid_0(8 downto 0);
  m0_axis_tdata(511 downto 0) <= Conn2_TDATA(511 downto 0);
  m0_axis_tdest(1 downto 0) <= Conn2_TDEST(1 downto 0);
  m0_axis_tkeep(63 downto 0) <= Conn2_TKEEP(63 downto 0);
  m0_axis_tlast <= Conn2_TLAST;
  m0_axis_tvalid <= Conn2_TVALID;
  m1_axis_tdata(511 downto 0) <= Conn1_TDATA(511 downto 0);
  m1_axis_tdest(1 downto 0) <= Conn1_TDEST(1 downto 0);
  m1_axis_tkeep(63 downto 0) <= Conn1_TKEEP(63 downto 0);
  m1_axis_tlast <= Conn1_TLAST;
  m1_axis_tvalid <= Conn1_TVALID;
  o_ctl_tx_pause_req_0(8 downto 0) <= mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0);
  o_ctl_tx_resend_pause_0 <= mac_flow_control_0_o_ctl_tx_resend_pause;
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  s_axis_aclk_0_1 <= s_axis_aclk_0;
  s_axis_aresetn_0_1 <= s_axis_aresetn_0;
MAC_RX_out_logic_0: component proj_blk_design_MAC_RX_out_logic_0_0
     port map (
      m_axis_aclk => Net1,
      m_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      m_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      m_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      m_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID
    );
axis_data_fifo_1: component proj_blk_design_axis_data_fifo_1_0
     port map (
      m_axis_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      prog_empty => axis_data_fifo_1_prog_empty,
      prog_full => axis_data_fifo_1_prog_full,
      s_axis_aclk => s_axis_aclk_0_1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      s_axis_tlast => mac_traffic_control_0_m0_axis_TLAST,
      s_axis_tready => mac_traffic_control_0_m0_axis_TREADY,
      s_axis_tvalid => mac_traffic_control_0_m0_axis_TVALID
    );
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_1
     port map (
      ACLK => s_axis_aclk_0_1,
      ARESETN => s_axis_aresetn_0_1,
      M00_AXIS_ACLK => Net1,
      M00_AXIS_ARESETN => Net,
      M00_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_AXIS_ACLK => s_axis_aclk_0_1,
      S00_AXIS_ARESETN => s_axis_aresetn_0_1,
      S00_AXIS_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      S00_AXIS_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      S00_AXIS_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      S00_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      S00_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
mac_flow_control_0: component proj_blk_design_mac_flow_control_0_0
     port map (
      i_fifo_full => util_vector_logic_1_Res(0),
      i_stat_tx_pause_valid(8 downto 0) => i_stat_tx_pause_valid_0_1(8 downto 0),
      m00_axi_aclk => s_axis_aclk_0_1,
      o_ctl_tx_pause_req(8 downto 0) => mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0),
      o_ctl_tx_resend_pause => mac_flow_control_0_o_ctl_tx_resend_pause,
      o_fifo_full_ila => NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED,
      s00_axi_aclk => s_axis_aclk_0_1,
      s00_axi_aresetn => s_axis_aresetn_0_1
    );
mac_traffic_control_0: component proj_blk_design_mac_traffic_control_0_0
     port map (
      clk => s_axis_aclk_0_1,
      fifo_prog_full => axis_data_fifo_1_prog_full,
      m0_axis_TData(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      m0_axis_TKeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      m0_axis_TLast => mac_traffic_control_0_m0_axis_TLAST,
      m0_axis_TReady => mac_traffic_control_0_m0_axis_TREADY,
      m0_axis_TValid => mac_traffic_control_0_m0_axis_TVALID,
      m1_axis_TData(63 downto 0) => NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED(63 downto 0),
      m1_axis_TKeep(7 downto 0) => NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED(7 downto 0),
      m1_axis_TLast => NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED,
      m1_axis_TReady => '1',
      m1_axis_TValid => NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED,
      rst_n => s_axis_aresetn_0_1,
      s_axis_TData(63 downto 0) => S_AXIS_00_1_TDATA(63 downto 0),
      s_axis_TKeep(7 downto 0) => S_AXIS_00_1_TKEEP(7 downto 0),
      s_axis_TLast => S_AXIS_00_1_TLAST,
      s_axis_TReady => S_AXIS_00_1_TREADY,
      s_axis_TValid => S_AXIS_00_1_TVALID
    );
mode_selection_MAC0: component proj_blk_design_mode_selection_MAC0_0
     port map (
      clk => Net1,
      m0_axis_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      m0_axis_tlast => Conn2_TLAST,
      m0_axis_tready => Conn2_TREADY,
      m0_axis_tvalid => Conn2_TVALID,
      m1_axis_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      m1_axis_tlast => Conn1_TLAST,
      m1_axis_tready => Conn1_TREADY,
      m1_axis_tvalid => Conn1_TVALID,
      mode_select_i(1 downto 0) => port0_mode_1(1 downto 0),
      rst_n => Net,
      s_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      s_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      s_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      s_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_0
     port map (
      Op1(0) => axis_data_fifo_1_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity from_MAC01_is_MAC2_imp_16CIR4Y is
  port (
    S_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_00_tlast : in STD_LOGIC;
    S_AXIS_00_tready : out STD_LOGIC;
    S_AXIS_00_tvalid : in STD_LOGIC;
    i_stat_tx_pause_valid_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tvalid : out STD_LOGIC;
    o_ctl_tx_pause_req_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause_0 : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_aclk_0 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    usr_clk : in STD_LOGIC;
    usr_resetn : in STD_LOGIC
  );
end from_MAC01_is_MAC2_imp_16CIR4Y;

architecture STRUCTURE of from_MAC01_is_MAC2_imp_16CIR4Y is
  component proj_blk_design_axis_data_fifo_1_9 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component proj_blk_design_axis_data_fifo_1_9;
  component proj_blk_design_util_vector_logic_1_9 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_9;
  component proj_blk_design_mac_traffic_control_0_5 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TValid : in STD_LOGIC;
    s_axis_TReady : out STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TReady : in STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TReady : in STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    fifo_prog_full : in STD_LOGIC
  );
  end component proj_blk_design_mac_traffic_control_0_5;
  component proj_blk_design_MAC_RX_out_logic_0_5 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_MAC_RX_out_logic_0_5;
  component proj_blk_design_mac_flow_control_0_5 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC;
    i_stat_tx_pause_valid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_fifo_full_ila : out STD_LOGIC;
    o_ctl_tx_pause_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause : out STD_LOGIC
  );
  end component proj_blk_design_mac_flow_control_0_5;
  component proj_blk_design_mode_selection_MAC0_2 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mode_select_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC
  );
  end component proj_blk_design_mode_selection_MAC0_2;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TLAST : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TREADY : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S_AXIS_00_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_00_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_00_1_TLAST : STD_LOGIC;
  signal S_AXIS_00_1_TREADY : STD_LOGIC;
  signal S_AXIS_00_1_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_prog_empty : STD_LOGIC;
  signal axis_data_fifo_1_prog_full : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal i_stat_tx_pause_valid_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_pause_req : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_resend_pause : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mac_traffic_control_0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_traffic_control_0_m0_axis_TLAST : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TREADY : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TVALID : STD_LOGIC;
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_aclk_0_1 : STD_LOGIC;
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Conn1_TREADY <= m1_axis_tready;
  Conn2_TREADY <= m0_axis_tready;
  Net <= usr_resetn;
  Net1 <= usr_clk;
  S_AXIS_00_1_TDATA(63 downto 0) <= S_AXIS_00_tdata(63 downto 0);
  S_AXIS_00_1_TKEEP(7 downto 0) <= S_AXIS_00_tkeep(7 downto 0);
  S_AXIS_00_1_TLAST <= S_AXIS_00_tlast;
  S_AXIS_00_1_TVALID <= S_AXIS_00_tvalid;
  S_AXIS_00_tready <= S_AXIS_00_1_TREADY;
  i_stat_tx_pause_valid_0_1(8 downto 0) <= i_stat_tx_pause_valid_0(8 downto 0);
  m0_axis_tdata(511 downto 0) <= Conn2_TDATA(511 downto 0);
  m0_axis_tdest(1 downto 0) <= Conn2_TDEST(1 downto 0);
  m0_axis_tkeep(63 downto 0) <= Conn2_TKEEP(63 downto 0);
  m0_axis_tlast <= Conn2_TLAST;
  m0_axis_tvalid <= Conn2_TVALID;
  m1_axis_tdata(511 downto 0) <= Conn1_TDATA(511 downto 0);
  m1_axis_tdest(1 downto 0) <= Conn1_TDEST(1 downto 0);
  m1_axis_tkeep(63 downto 0) <= Conn1_TKEEP(63 downto 0);
  m1_axis_tlast <= Conn1_TLAST;
  m1_axis_tvalid <= Conn1_TVALID;
  o_ctl_tx_pause_req_0(8 downto 0) <= mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0);
  o_ctl_tx_resend_pause_0 <= mac_flow_control_0_o_ctl_tx_resend_pause;
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  s_axis_aclk_0_1 <= s_axis_aclk_0;
  s_axis_aresetn_0_1 <= s_axis_aresetn_0;
MAC_RX_out_logic_0: component proj_blk_design_MAC_RX_out_logic_0_5
     port map (
      m_axis_aclk => Net1,
      m_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      m_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      m_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      m_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID
    );
axis_data_fifo_1: component proj_blk_design_axis_data_fifo_1_9
     port map (
      m_axis_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      prog_empty => axis_data_fifo_1_prog_empty,
      prog_full => axis_data_fifo_1_prog_full,
      s_axis_aclk => s_axis_aclk_0_1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      s_axis_tlast => mac_traffic_control_0_m0_axis_TLAST,
      s_axis_tready => mac_traffic_control_0_m0_axis_TREADY,
      s_axis_tvalid => mac_traffic_control_0_m0_axis_TVALID
    );
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_10
     port map (
      ACLK => s_axis_aclk_0_1,
      ARESETN => s_axis_aresetn_0_1,
      M00_AXIS_ACLK => Net1,
      M00_AXIS_ARESETN => Net,
      M00_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_AXIS_ACLK => s_axis_aclk_0_1,
      S00_AXIS_ARESETN => s_axis_aresetn_0_1,
      S00_AXIS_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      S00_AXIS_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      S00_AXIS_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      S00_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      S00_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
mac_flow_control_0: component proj_blk_design_mac_flow_control_0_5
     port map (
      i_fifo_full => util_vector_logic_1_Res(0),
      i_stat_tx_pause_valid(8 downto 0) => i_stat_tx_pause_valid_0_1(8 downto 0),
      m00_axi_aclk => s_axis_aclk_0_1,
      o_ctl_tx_pause_req(8 downto 0) => mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0),
      o_ctl_tx_resend_pause => mac_flow_control_0_o_ctl_tx_resend_pause,
      o_fifo_full_ila => NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED,
      s00_axi_aclk => s_axis_aclk_0_1,
      s00_axi_aresetn => s_axis_aresetn_0_1
    );
mac_traffic_control_0: component proj_blk_design_mac_traffic_control_0_5
     port map (
      clk => s_axis_aclk_0_1,
      fifo_prog_full => axis_data_fifo_1_prog_full,
      m0_axis_TData(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      m0_axis_TKeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      m0_axis_TLast => mac_traffic_control_0_m0_axis_TLAST,
      m0_axis_TReady => mac_traffic_control_0_m0_axis_TREADY,
      m0_axis_TValid => mac_traffic_control_0_m0_axis_TVALID,
      m1_axis_TData(63 downto 0) => NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED(63 downto 0),
      m1_axis_TKeep(7 downto 0) => NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED(7 downto 0),
      m1_axis_TLast => NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED,
      m1_axis_TReady => '1',
      m1_axis_TValid => NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED,
      rst_n => s_axis_aresetn_0_1,
      s_axis_TData(63 downto 0) => S_AXIS_00_1_TDATA(63 downto 0),
      s_axis_TKeep(7 downto 0) => S_AXIS_00_1_TKEEP(7 downto 0),
      s_axis_TLast => S_AXIS_00_1_TLAST,
      s_axis_TReady => S_AXIS_00_1_TREADY,
      s_axis_TValid => S_AXIS_00_1_TVALID
    );
mode_selection_MAC0: component proj_blk_design_mode_selection_MAC0_2
     port map (
      clk => Net1,
      m0_axis_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      m0_axis_tlast => Conn2_TLAST,
      m0_axis_tready => Conn2_TREADY,
      m0_axis_tvalid => Conn2_TVALID,
      m1_axis_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      m1_axis_tlast => Conn1_TLAST,
      m1_axis_tready => Conn1_TREADY,
      m1_axis_tvalid => Conn1_TVALID,
      mode_select_i(1 downto 0) => port0_mode_1(1 downto 0),
      rst_n => Net,
      s_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      s_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      s_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      s_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_9
     port map (
      Op1(0) => axis_data_fifo_1_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity from_MAC10_is_MAC1_imp_15M214P is
  port (
    S_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_00_tlast : in STD_LOGIC;
    S_AXIS_00_tready : out STD_LOGIC;
    S_AXIS_00_tvalid : in STD_LOGIC;
    i_stat_tx_pause_valid_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tvalid : out STD_LOGIC;
    o_ctl_tx_pause_req_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause_0 : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_aclk_0 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    usr_clk : in STD_LOGIC;
    usr_resetn : in STD_LOGIC
  );
end from_MAC10_is_MAC1_imp_15M214P;

architecture STRUCTURE of from_MAC10_is_MAC1_imp_15M214P is
  component proj_blk_design_axis_data_fifo_1_8 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component proj_blk_design_axis_data_fifo_1_8;
  component proj_blk_design_util_vector_logic_1_8 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_8;
  component proj_blk_design_mac_traffic_control_0_4 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TValid : in STD_LOGIC;
    s_axis_TReady : out STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TReady : in STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TReady : in STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    fifo_prog_full : in STD_LOGIC
  );
  end component proj_blk_design_mac_traffic_control_0_4;
  component proj_blk_design_MAC_RX_out_logic_0_4 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_MAC_RX_out_logic_0_4;
  component proj_blk_design_mac_flow_control_0_4 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC;
    i_stat_tx_pause_valid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_fifo_full_ila : out STD_LOGIC;
    o_ctl_tx_pause_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause : out STD_LOGIC
  );
  end component proj_blk_design_mac_flow_control_0_4;
  component proj_blk_design_mode_selection_MAC0_1 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mode_select_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC
  );
  end component proj_blk_design_mode_selection_MAC0_1;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TLAST : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TREADY : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S_AXIS_00_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_00_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_00_1_TLAST : STD_LOGIC;
  signal S_AXIS_00_1_TREADY : STD_LOGIC;
  signal S_AXIS_00_1_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_prog_empty : STD_LOGIC;
  signal axis_data_fifo_1_prog_full : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal i_stat_tx_pause_valid_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_pause_req : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_resend_pause : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mac_traffic_control_0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_traffic_control_0_m0_axis_TLAST : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TREADY : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TVALID : STD_LOGIC;
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_aclk_0_1 : STD_LOGIC;
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Conn1_TREADY <= m1_axis_tready;
  Conn2_TREADY <= m0_axis_tready;
  Net <= usr_resetn;
  Net1 <= usr_clk;
  S_AXIS_00_1_TDATA(63 downto 0) <= S_AXIS_00_tdata(63 downto 0);
  S_AXIS_00_1_TKEEP(7 downto 0) <= S_AXIS_00_tkeep(7 downto 0);
  S_AXIS_00_1_TLAST <= S_AXIS_00_tlast;
  S_AXIS_00_1_TVALID <= S_AXIS_00_tvalid;
  S_AXIS_00_tready <= S_AXIS_00_1_TREADY;
  i_stat_tx_pause_valid_0_1(8 downto 0) <= i_stat_tx_pause_valid_0(8 downto 0);
  m0_axis_tdata(511 downto 0) <= Conn2_TDATA(511 downto 0);
  m0_axis_tdest(1 downto 0) <= Conn2_TDEST(1 downto 0);
  m0_axis_tkeep(63 downto 0) <= Conn2_TKEEP(63 downto 0);
  m0_axis_tlast <= Conn2_TLAST;
  m0_axis_tvalid <= Conn2_TVALID;
  m1_axis_tdata(511 downto 0) <= Conn1_TDATA(511 downto 0);
  m1_axis_tdest(1 downto 0) <= Conn1_TDEST(1 downto 0);
  m1_axis_tkeep(63 downto 0) <= Conn1_TKEEP(63 downto 0);
  m1_axis_tlast <= Conn1_TLAST;
  m1_axis_tvalid <= Conn1_TVALID;
  o_ctl_tx_pause_req_0(8 downto 0) <= mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0);
  o_ctl_tx_resend_pause_0 <= mac_flow_control_0_o_ctl_tx_resend_pause;
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  s_axis_aclk_0_1 <= s_axis_aclk_0;
  s_axis_aresetn_0_1 <= s_axis_aresetn_0;
MAC_RX_out_logic_0: component proj_blk_design_MAC_RX_out_logic_0_4
     port map (
      m_axis_aclk => Net1,
      m_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      m_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      m_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      m_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID
    );
axis_data_fifo_1: component proj_blk_design_axis_data_fifo_1_8
     port map (
      m_axis_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      prog_empty => axis_data_fifo_1_prog_empty,
      prog_full => axis_data_fifo_1_prog_full,
      s_axis_aclk => s_axis_aclk_0_1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      s_axis_tlast => mac_traffic_control_0_m0_axis_TLAST,
      s_axis_tready => mac_traffic_control_0_m0_axis_TREADY,
      s_axis_tvalid => mac_traffic_control_0_m0_axis_TVALID
    );
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_9
     port map (
      ACLK => s_axis_aclk_0_1,
      ARESETN => s_axis_aresetn_0_1,
      M00_AXIS_ACLK => Net1,
      M00_AXIS_ARESETN => Net,
      M00_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_AXIS_ACLK => s_axis_aclk_0_1,
      S00_AXIS_ARESETN => s_axis_aresetn_0_1,
      S00_AXIS_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      S00_AXIS_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      S00_AXIS_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      S00_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      S00_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
mac_flow_control_0: component proj_blk_design_mac_flow_control_0_4
     port map (
      i_fifo_full => util_vector_logic_1_Res(0),
      i_stat_tx_pause_valid(8 downto 0) => i_stat_tx_pause_valid_0_1(8 downto 0),
      m00_axi_aclk => s_axis_aclk_0_1,
      o_ctl_tx_pause_req(8 downto 0) => mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0),
      o_ctl_tx_resend_pause => mac_flow_control_0_o_ctl_tx_resend_pause,
      o_fifo_full_ila => NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED,
      s00_axi_aclk => s_axis_aclk_0_1,
      s00_axi_aresetn => s_axis_aresetn_0_1
    );
mac_traffic_control_0: component proj_blk_design_mac_traffic_control_0_4
     port map (
      clk => s_axis_aclk_0_1,
      fifo_prog_full => axis_data_fifo_1_prog_full,
      m0_axis_TData(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      m0_axis_TKeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      m0_axis_TLast => mac_traffic_control_0_m0_axis_TLAST,
      m0_axis_TReady => mac_traffic_control_0_m0_axis_TREADY,
      m0_axis_TValid => mac_traffic_control_0_m0_axis_TVALID,
      m1_axis_TData(63 downto 0) => NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED(63 downto 0),
      m1_axis_TKeep(7 downto 0) => NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED(7 downto 0),
      m1_axis_TLast => NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED,
      m1_axis_TReady => '1',
      m1_axis_TValid => NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED,
      rst_n => s_axis_aresetn_0_1,
      s_axis_TData(63 downto 0) => S_AXIS_00_1_TDATA(63 downto 0),
      s_axis_TKeep(7 downto 0) => S_AXIS_00_1_TKEEP(7 downto 0),
      s_axis_TLast => S_AXIS_00_1_TLAST,
      s_axis_TReady => S_AXIS_00_1_TREADY,
      s_axis_TValid => S_AXIS_00_1_TVALID
    );
mode_selection_MAC0: component proj_blk_design_mode_selection_MAC0_1
     port map (
      clk => Net1,
      m0_axis_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      m0_axis_tlast => Conn2_TLAST,
      m0_axis_tready => Conn2_TREADY,
      m0_axis_tvalid => Conn2_TVALID,
      m1_axis_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      m1_axis_tlast => Conn1_TLAST,
      m1_axis_tready => Conn1_TREADY,
      m1_axis_tvalid => Conn1_TVALID,
      mode_select_i(1 downto 0) => port0_mode_1(1 downto 0),
      rst_n => Net,
      s_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      s_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      s_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      s_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_8
     port map (
      Op1(0) => axis_data_fifo_1_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity from_MAC11_is_MAC3_imp_14X7M2L is
  port (
    S_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_00_tlast : in STD_LOGIC;
    S_AXIS_00_tready : out STD_LOGIC;
    S_AXIS_00_tvalid : in STD_LOGIC;
    i_stat_tx_pause_valid_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    m1_axis_tvalid : out STD_LOGIC;
    o_ctl_tx_pause_req_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause_0 : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_aclk_0 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    usr_clk : in STD_LOGIC;
    usr_resetn : in STD_LOGIC
  );
end from_MAC11_is_MAC3_imp_14X7M2L;

architecture STRUCTURE of from_MAC11_is_MAC3_imp_14X7M2L is
  component proj_blk_design_axis_data_fifo_1_10 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component proj_blk_design_axis_data_fifo_1_10;
  component proj_blk_design_util_vector_logic_1_10 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_10;
  component proj_blk_design_mac_traffic_control_0_6 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TValid : in STD_LOGIC;
    s_axis_TReady : out STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TReady : in STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TReady : in STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    fifo_prog_full : in STD_LOGIC
  );
  end component proj_blk_design_mac_traffic_control_0_6;
  component proj_blk_design_MAC_RX_out_logic_0_6 is
  port (
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component proj_blk_design_MAC_RX_out_logic_0_6;
  component proj_blk_design_mac_flow_control_0_6 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC;
    i_stat_tx_pause_valid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_fifo_full_ila : out STD_LOGIC;
    o_ctl_tx_pause_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause : out STD_LOGIC
  );
  end component proj_blk_design_mac_flow_control_0_6;
  component proj_blk_design_mode_selection_MAC0_3 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mode_select_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC
  );
  end component proj_blk_design_mode_selection_MAC0_3;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MAC_RX_out_logic_0_m_axis_TLAST : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TREADY : STD_LOGIC;
  signal MAC_RX_out_logic_0_m_axis_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S_AXIS_00_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_00_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_00_1_TLAST : STD_LOGIC;
  signal S_AXIS_00_1_TREADY : STD_LOGIC;
  signal S_AXIS_00_1_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_prog_empty : STD_LOGIC;
  signal axis_data_fifo_1_prog_full : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal i_stat_tx_pause_valid_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_pause_req : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mac_flow_control_0_o_ctl_tx_resend_pause : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal mac_traffic_control_0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_traffic_control_0_m0_axis_TLAST : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TREADY : STD_LOGIC;
  signal mac_traffic_control_0_m0_axis_TVALID : STD_LOGIC;
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_aclk_0_1 : STD_LOGIC;
  signal s_axis_aresetn_0_1 : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Conn1_TREADY <= m1_axis_tready;
  Conn2_TREADY <= m0_axis_tready;
  Net <= usr_resetn;
  Net1 <= usr_clk;
  S_AXIS_00_1_TDATA(63 downto 0) <= S_AXIS_00_tdata(63 downto 0);
  S_AXIS_00_1_TKEEP(7 downto 0) <= S_AXIS_00_tkeep(7 downto 0);
  S_AXIS_00_1_TLAST <= S_AXIS_00_tlast;
  S_AXIS_00_1_TVALID <= S_AXIS_00_tvalid;
  S_AXIS_00_tready <= S_AXIS_00_1_TREADY;
  i_stat_tx_pause_valid_0_1(8 downto 0) <= i_stat_tx_pause_valid_0(8 downto 0);
  m0_axis_tdata(511 downto 0) <= Conn2_TDATA(511 downto 0);
  m0_axis_tdest(1 downto 0) <= Conn2_TDEST(1 downto 0);
  m0_axis_tkeep(63 downto 0) <= Conn2_TKEEP(63 downto 0);
  m0_axis_tlast <= Conn2_TLAST;
  m0_axis_tvalid <= Conn2_TVALID;
  m1_axis_tdata(511 downto 0) <= Conn1_TDATA(511 downto 0);
  m1_axis_tdest(1 downto 0) <= Conn1_TDEST(1 downto 0);
  m1_axis_tkeep(63 downto 0) <= Conn1_TKEEP(63 downto 0);
  m1_axis_tlast <= Conn1_TLAST;
  m1_axis_tvalid <= Conn1_TVALID;
  o_ctl_tx_pause_req_0(8 downto 0) <= mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0);
  o_ctl_tx_resend_pause_0 <= mac_flow_control_0_o_ctl_tx_resend_pause;
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  s_axis_aclk_0_1 <= s_axis_aclk_0;
  s_axis_aresetn_0_1 <= s_axis_aresetn_0;
MAC_RX_out_logic_0: component proj_blk_design_MAC_RX_out_logic_0_6
     port map (
      m_axis_aclk => Net1,
      m_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      m_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      m_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      m_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID,
      s_axis_aclk => Net1,
      s_axis_aresetn => Net,
      s_axis_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      s_axis_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID
    );
axis_data_fifo_1: component proj_blk_design_axis_data_fifo_1_10
     port map (
      m_axis_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      prog_empty => axis_data_fifo_1_prog_empty,
      prog_full => axis_data_fifo_1_prog_full,
      s_axis_aclk => s_axis_aclk_0_1,
      s_axis_aresetn => s_axis_aresetn_0_1,
      s_axis_tdata(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      s_axis_tlast => mac_traffic_control_0_m0_axis_TLAST,
      s_axis_tready => mac_traffic_control_0_m0_axis_TREADY,
      s_axis_tvalid => mac_traffic_control_0_m0_axis_TVALID
    );
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_11
     port map (
      ACLK => s_axis_aclk_0_1,
      ARESETN => s_axis_aresetn_0_1,
      M00_AXIS_ACLK => Net1,
      M00_AXIS_ARESETN => Net,
      M00_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_AXIS_ACLK => s_axis_aclk_0_1,
      S00_AXIS_ARESETN => s_axis_aresetn_0_1,
      S00_AXIS_tdata(63 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(63 downto 0),
      S00_AXIS_tkeep(7 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(7 downto 0),
      S00_AXIS_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      S00_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      S00_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
mac_flow_control_0: component proj_blk_design_mac_flow_control_0_6
     port map (
      i_fifo_full => util_vector_logic_1_Res(0),
      i_stat_tx_pause_valid(8 downto 0) => i_stat_tx_pause_valid_0_1(8 downto 0),
      m00_axi_aclk => s_axis_aclk_0_1,
      o_ctl_tx_pause_req(8 downto 0) => mac_flow_control_0_o_ctl_tx_pause_req(8 downto 0),
      o_ctl_tx_resend_pause => mac_flow_control_0_o_ctl_tx_resend_pause,
      o_fifo_full_ila => NLW_mac_flow_control_0_o_fifo_full_ila_UNCONNECTED,
      s00_axi_aclk => s_axis_aclk_0_1,
      s00_axi_aresetn => s_axis_aresetn_0_1
    );
mac_traffic_control_0: component proj_blk_design_mac_traffic_control_0_6
     port map (
      clk => s_axis_aclk_0_1,
      fifo_prog_full => axis_data_fifo_1_prog_full,
      m0_axis_TData(63 downto 0) => mac_traffic_control_0_m0_axis_TDATA(63 downto 0),
      m0_axis_TKeep(7 downto 0) => mac_traffic_control_0_m0_axis_TKEEP(7 downto 0),
      m0_axis_TLast => mac_traffic_control_0_m0_axis_TLAST,
      m0_axis_TReady => mac_traffic_control_0_m0_axis_TREADY,
      m0_axis_TValid => mac_traffic_control_0_m0_axis_TVALID,
      m1_axis_TData(63 downto 0) => NLW_mac_traffic_control_0_m1_axis_TData_UNCONNECTED(63 downto 0),
      m1_axis_TKeep(7 downto 0) => NLW_mac_traffic_control_0_m1_axis_TKeep_UNCONNECTED(7 downto 0),
      m1_axis_TLast => NLW_mac_traffic_control_0_m1_axis_TLast_UNCONNECTED,
      m1_axis_TReady => '1',
      m1_axis_TValid => NLW_mac_traffic_control_0_m1_axis_TValid_UNCONNECTED,
      rst_n => s_axis_aresetn_0_1,
      s_axis_TData(63 downto 0) => S_AXIS_00_1_TDATA(63 downto 0),
      s_axis_TKeep(7 downto 0) => S_AXIS_00_1_TKEEP(7 downto 0),
      s_axis_TLast => S_AXIS_00_1_TLAST,
      s_axis_TReady => S_AXIS_00_1_TREADY,
      s_axis_TValid => S_AXIS_00_1_TVALID
    );
mode_selection_MAC0: component proj_blk_design_mode_selection_MAC0_3
     port map (
      clk => Net1,
      m0_axis_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      m0_axis_tlast => Conn2_TLAST,
      m0_axis_tready => Conn2_TREADY,
      m0_axis_tvalid => Conn2_TVALID,
      m1_axis_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      m1_axis_tlast => Conn1_TLAST,
      m1_axis_tready => Conn1_TREADY,
      m1_axis_tvalid => Conn1_TVALID,
      mode_select_i(1 downto 0) => port0_mode_1(1 downto 0),
      rst_n => Net,
      s_axis_tdata(511 downto 0) => MAC_RX_out_logic_0_m_axis_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => MAC_RX_out_logic_0_m_axis_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => MAC_RX_out_logic_0_m_axis_TKEEP(63 downto 0),
      s_axis_tlast => MAC_RX_out_logic_0_m_axis_TLAST,
      s_axis_tready => MAC_RX_out_logic_0_m_axis_TREADY,
      s_axis_tvalid => MAC_RX_out_logic_0_m_axis_TVALID
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_10
     port map (
      Op1(0) => axis_data_fifo_1_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity to_MAC00_is_MAC0_imp_Y6RFAR is
  port (
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    m_axis_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_01_tlast : out STD_LOGIC;
    m_axis_01_tready : in STD_LOGIC;
    m_axis_01_tvalid : out STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    stat_rx_pause_req_01_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_clk_01 : in STD_LOGIC;
    user_aresetn : in STD_LOGIC;
    usr_clk : in STD_LOGIC
  );
end to_MAC00_is_MAC0_imp_Y6RFAR;

architecture STRUCTURE of to_MAC00_is_MAC0_imp_Y6RFAR is
  component proj_blk_design_tx_flow_control_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    tready_frm_flow_cntrl_ila : out STD_LOGIC;
    tready_frm_flow_cntrl : in STD_LOGIC
  );
  end component proj_blk_design_tx_flow_control_0_0;
  component proj_blk_design_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_xlslice_0_0;
  component proj_blk_design_util_vector_logic_1_4 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_4;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal M00_AXIS_ACLK_0_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S00_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S00_AXIS_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXIS_1_TLAST : STD_LOGIC;
  signal S00_AXIS_1_TREADY : STD_LOGIC;
  signal S00_AXIS_1_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_flow_control_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_flow_control_0_m_axis_TLAST : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TREADY : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TVALID : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED : STD_LOGIC;
begin
  Conn1_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  Conn1_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  Conn1_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  Conn1_TLAST <= S01_AXIS_tlast;
  Conn1_TVALID <= S01_AXIS_tvalid;
  Din_0_1(8 downto 0) <= stat_rx_pause_req_01_i(8 downto 0);
  M00_AXIS_ACLK_0_1 <= tx_clk_01;
  M00_AXIS_ARESETN_0_1 <= s_axis_aresetn;
  Net <= user_aresetn;
  Net1 <= usr_clk;
  S00_AXIS_1_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  S00_AXIS_1_TDEST(3 downto 0) <= S00_AXIS_tdest(3 downto 0);
  S00_AXIS_1_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  S00_AXIS_1_TLAST <= S00_AXIS_tlast;
  S00_AXIS_1_TVALID <= S00_AXIS_tvalid;
  S00_AXIS_tready <= S00_AXIS_1_TREADY;
  S01_AXIS_tready <= Conn1_TREADY;
  m_axis_01_tdata(63 downto 0) <= tx_flow_control_0_m_axis_TDATA(63 downto 0);
  m_axis_01_tkeep(7 downto 0) <= tx_flow_control_0_m_axis_TKEEP(7 downto 0);
  m_axis_01_tlast <= tx_flow_control_0_m_axis_TLAST;
  m_axis_01_tvalid <= tx_flow_control_0_m_axis_TVALID;
  tx_flow_control_0_m_axis_TREADY <= m_axis_01_tready;
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_5
     port map (
      ACLK => Net1,
      ARESETN => Net,
      M00_AXIS_ACLK => M00_AXIS_ACLK_0_1,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN_0_1,
      M00_AXIS_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      M00_AXIS_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => Net1,
      S00_AXIS_ARESETN => Net,
      S00_AXIS_tdata(511 downto 0) => S00_AXIS_1_TDATA(511 downto 0),
      S00_AXIS_tdest(3 downto 0) => S00_AXIS_1_TDEST(3 downto 0),
      S00_AXIS_tkeep(63 downto 0) => S00_AXIS_1_TKEEP(63 downto 0),
      S00_AXIS_tlast => S00_AXIS_1_TLAST,
      S00_AXIS_tready => S00_AXIS_1_TREADY,
      S00_AXIS_tvalid => S00_AXIS_1_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => Net1,
      S01_AXIS_ARESETN => Net,
      S01_AXIS_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      S01_AXIS_tlast => Conn1_TLAST,
      S01_AXIS_tready => Conn1_TREADY,
      S01_AXIS_tvalid => Conn1_TVALID
    );
tx_flow_control_0: component proj_blk_design_tx_flow_control_0_0
     port map (
      m_axis_aclk => M00_AXIS_ACLK_0_1,
      m_axis_tdata(63 downto 0) => tx_flow_control_0_m_axis_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => tx_flow_control_0_m_axis_TKEEP(7 downto 0),
      m_axis_tlast => tx_flow_control_0_m_axis_TLAST,
      m_axis_tready => tx_flow_control_0_m_axis_TREADY,
      m_axis_tvalid => tx_flow_control_0_m_axis_TVALID,
      s_axis_aclk => M00_AXIS_ACLK_0_1,
      s_axis_aresetn => M00_AXIS_ARESETN_0_1,
      s_axis_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      tready_frm_flow_cntrl => util_vector_logic_1_Res(0),
      tready_frm_flow_cntrl_ila => NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_4
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
xlslice_0: component proj_blk_design_xlslice_0_0
     port map (
      Din(8 downto 0) => Din_0_1(8 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity to_MAC01_is_MAC2_imp_YVJQLZ is
  port (
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC;
    m_axis_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_01_tlast : out STD_LOGIC;
    m_axis_01_tready : in STD_LOGIC;
    m_axis_01_tvalid : out STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    stat_rx_pause_req_01_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_clk_01 : in STD_LOGIC;
    user_aresetn : in STD_LOGIC;
    usr_clk : in STD_LOGIC
  );
end to_MAC01_is_MAC2_imp_YVJQLZ;

architecture STRUCTURE of to_MAC01_is_MAC2_imp_YVJQLZ is
  component proj_blk_design_tx_flow_control_0_1 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    tready_frm_flow_cntrl_ila : out STD_LOGIC;
    tready_frm_flow_cntrl : in STD_LOGIC
  );
  end component proj_blk_design_tx_flow_control_0_1;
  component proj_blk_design_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_xlslice_0_1;
  component proj_blk_design_util_vector_logic_1_5 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_5;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal M00_AXIS_ACLK_0_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S01_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S01_AXIS_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S01_AXIS_1_TLAST : STD_LOGIC;
  signal S01_AXIS_1_TREADY : STD_LOGIC;
  signal S01_AXIS_1_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_flow_control_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_flow_control_0_m_axis_TLAST : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TREADY : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TVALID : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED : STD_LOGIC;
begin
  Conn1_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  Conn1_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  Conn1_TLAST <= S00_AXIS_tlast;
  Conn1_TVALID <= S00_AXIS_tvalid;
  Conn2_TDATA(511 downto 0) <= S02_AXIS_tdata(511 downto 0);
  Conn2_TDEST(1 downto 0) <= S02_AXIS_tdest(1 downto 0);
  Conn2_TKEEP(63 downto 0) <= S02_AXIS_tkeep(63 downto 0);
  Conn2_TLAST <= S02_AXIS_tlast;
  Conn2_TVALID <= S02_AXIS_tvalid;
  Din_0_1(8 downto 0) <= stat_rx_pause_req_01_i(8 downto 0);
  M00_AXIS_ACLK_0_1 <= tx_clk_01;
  M00_AXIS_ARESETN_0_1 <= s_axis_aresetn;
  Net <= user_aresetn;
  Net1 <= usr_clk;
  S00_AXIS_tready <= Conn1_TREADY;
  S01_AXIS_1_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  S01_AXIS_1_TDEST(3 downto 0) <= S01_AXIS_tdest(3 downto 0);
  S01_AXIS_1_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  S01_AXIS_1_TLAST <= S01_AXIS_tlast;
  S01_AXIS_1_TVALID <= S01_AXIS_tvalid;
  S01_AXIS_tready <= S01_AXIS_1_TREADY;
  S02_AXIS_tready <= Conn2_TREADY;
  m_axis_01_tdata(63 downto 0) <= tx_flow_control_0_m_axis_TDATA(63 downto 0);
  m_axis_01_tkeep(7 downto 0) <= tx_flow_control_0_m_axis_TKEEP(7 downto 0);
  m_axis_01_tlast <= tx_flow_control_0_m_axis_TLAST;
  m_axis_01_tvalid <= tx_flow_control_0_m_axis_TVALID;
  tx_flow_control_0_m_axis_TREADY <= m_axis_01_tready;
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_6
     port map (
      ACLK => Net1,
      ARESETN => Net,
      M00_AXIS_ACLK => M00_AXIS_ACLK_0_1,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN_0_1,
      M00_AXIS_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      M00_AXIS_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => Net1,
      S00_AXIS_ARESETN => Net,
      S00_AXIS_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      S00_AXIS_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      S00_AXIS_tlast => Conn1_TLAST,
      S00_AXIS_tready => Conn1_TREADY,
      S00_AXIS_tvalid => Conn1_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => Net1,
      S01_AXIS_ARESETN => Net,
      S01_AXIS_tdata(511 downto 0) => S01_AXIS_1_TDATA(511 downto 0),
      S01_AXIS_tdest(3 downto 0) => S01_AXIS_1_TDEST(3 downto 0),
      S01_AXIS_tkeep(63 downto 0) => S01_AXIS_1_TKEEP(63 downto 0),
      S01_AXIS_tlast => S01_AXIS_1_TLAST,
      S01_AXIS_tready => S01_AXIS_1_TREADY,
      S01_AXIS_tvalid => S01_AXIS_1_TVALID,
      S02_ARB_REQ_SUPPRESS => '0',
      S02_AXIS_ACLK => Net1,
      S02_AXIS_ARESETN => Net,
      S02_AXIS_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      S02_AXIS_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      S02_AXIS_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      S02_AXIS_tlast => Conn2_TLAST,
      S02_AXIS_tready => Conn2_TREADY,
      S02_AXIS_tvalid => Conn2_TVALID
    );
tx_flow_control_0: component proj_blk_design_tx_flow_control_0_1
     port map (
      m_axis_aclk => M00_AXIS_ACLK_0_1,
      m_axis_tdata(63 downto 0) => tx_flow_control_0_m_axis_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => tx_flow_control_0_m_axis_TKEEP(7 downto 0),
      m_axis_tlast => tx_flow_control_0_m_axis_TLAST,
      m_axis_tready => tx_flow_control_0_m_axis_TREADY,
      m_axis_tvalid => tx_flow_control_0_m_axis_TVALID,
      s_axis_aclk => M00_AXIS_ACLK_0_1,
      s_axis_aresetn => M00_AXIS_ARESETN_0_1,
      s_axis_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      tready_frm_flow_cntrl => util_vector_logic_1_Res(0),
      tready_frm_flow_cntrl_ila => NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_5
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
xlslice_0: component proj_blk_design_xlslice_0_1
     port map (
      Din(8 downto 0) => Din_0_1(8 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity to_MAC10_is_MAC1_imp_VB0FJG is
  port (
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    m_axis_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_01_tlast : out STD_LOGIC;
    m_axis_01_tready : in STD_LOGIC;
    m_axis_01_tvalid : out STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    stat_rx_pause_req_01_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_clk_01 : in STD_LOGIC;
    user_aresetn : in STD_LOGIC;
    usr_clk : in STD_LOGIC
  );
end to_MAC10_is_MAC1_imp_VB0FJG;

architecture STRUCTURE of to_MAC10_is_MAC1_imp_VB0FJG is
  component proj_blk_design_tx_flow_control_0_3 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    tready_frm_flow_cntrl_ila : out STD_LOGIC;
    tready_frm_flow_cntrl : in STD_LOGIC
  );
  end component proj_blk_design_tx_flow_control_0_3;
  component proj_blk_design_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_xlslice_0_3;
  component proj_blk_design_util_vector_logic_1_7 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_7;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal M00_AXIS_ACLK_0_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S00_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S00_AXIS_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXIS_1_TLAST : STD_LOGIC;
  signal S00_AXIS_1_TREADY : STD_LOGIC;
  signal S00_AXIS_1_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_flow_control_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_flow_control_0_m_axis_TLAST : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TREADY : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TVALID : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED : STD_LOGIC;
begin
  Conn1_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  Conn1_TDEST(1 downto 0) <= S01_AXIS_tdest(1 downto 0);
  Conn1_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  Conn1_TLAST <= S01_AXIS_tlast;
  Conn1_TVALID <= S01_AXIS_tvalid;
  Din_0_1(8 downto 0) <= stat_rx_pause_req_01_i(8 downto 0);
  M00_AXIS_ACLK_0_1 <= tx_clk_01;
  M00_AXIS_ARESETN_0_1 <= s_axis_aresetn;
  Net <= user_aresetn;
  Net1 <= usr_clk;
  S00_AXIS_1_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  S00_AXIS_1_TDEST(3 downto 0) <= S00_AXIS_tdest(3 downto 0);
  S00_AXIS_1_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  S00_AXIS_1_TLAST <= S00_AXIS_tlast;
  S00_AXIS_1_TVALID <= S00_AXIS_tvalid;
  S00_AXIS_tready <= S00_AXIS_1_TREADY;
  S01_AXIS_tready <= Conn1_TREADY;
  m_axis_01_tdata(63 downto 0) <= tx_flow_control_0_m_axis_TDATA(63 downto 0);
  m_axis_01_tkeep(7 downto 0) <= tx_flow_control_0_m_axis_TKEEP(7 downto 0);
  m_axis_01_tlast <= tx_flow_control_0_m_axis_TLAST;
  m_axis_01_tvalid <= tx_flow_control_0_m_axis_TVALID;
  tx_flow_control_0_m_axis_TREADY <= m_axis_01_tready;
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_8
     port map (
      ACLK => Net1,
      ARESETN => Net,
      M00_AXIS_ACLK => M00_AXIS_ACLK_0_1,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN_0_1,
      M00_AXIS_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      M00_AXIS_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => Net1,
      S00_AXIS_ARESETN => Net,
      S00_AXIS_tdata(511 downto 0) => S00_AXIS_1_TDATA(511 downto 0),
      S00_AXIS_tdest(3 downto 0) => S00_AXIS_1_TDEST(3 downto 0),
      S00_AXIS_tkeep(63 downto 0) => S00_AXIS_1_TKEEP(63 downto 0),
      S00_AXIS_tlast => S00_AXIS_1_TLAST,
      S00_AXIS_tready => S00_AXIS_1_TREADY,
      S00_AXIS_tvalid => S00_AXIS_1_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => Net1,
      S01_AXIS_ARESETN => Net,
      S01_AXIS_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => Conn1_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      S01_AXIS_tlast => Conn1_TLAST,
      S01_AXIS_tready => Conn1_TREADY,
      S01_AXIS_tvalid => Conn1_TVALID
    );
tx_flow_control_0: component proj_blk_design_tx_flow_control_0_3
     port map (
      m_axis_aclk => M00_AXIS_ACLK_0_1,
      m_axis_tdata(63 downto 0) => tx_flow_control_0_m_axis_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => tx_flow_control_0_m_axis_TKEEP(7 downto 0),
      m_axis_tlast => tx_flow_control_0_m_axis_TLAST,
      m_axis_tready => tx_flow_control_0_m_axis_TREADY,
      m_axis_tvalid => tx_flow_control_0_m_axis_TVALID,
      s_axis_aclk => M00_AXIS_ACLK_0_1,
      s_axis_aresetn => M00_AXIS_ARESETN_0_1,
      s_axis_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      tready_frm_flow_cntrl => util_vector_logic_1_Res(0),
      tready_frm_flow_cntrl_ila => NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_7
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
xlslice_0: component proj_blk_design_xlslice_0_3
     port map (
      Din(8 downto 0) => Din_0_1(8 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity to_MAC11_is_MAC3_imp_WTUC4O is
  port (
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC;
    m_axis_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_01_tlast : out STD_LOGIC;
    m_axis_01_tready : in STD_LOGIC;
    m_axis_01_tvalid : out STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    stat_rx_pause_req_11_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_clk_11 : in STD_LOGIC;
    user_aresetn : in STD_LOGIC;
    usr_clk : in STD_LOGIC
  );
end to_MAC11_is_MAC3_imp_WTUC4O;

architecture STRUCTURE of to_MAC11_is_MAC3_imp_WTUC4O is
  component proj_blk_design_tx_flow_control_0_2 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    tready_frm_flow_cntrl_ila : out STD_LOGIC;
    tready_frm_flow_cntrl : in STD_LOGIC
  );
  end component proj_blk_design_tx_flow_control_0_2;
  component proj_blk_design_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_xlslice_0_2;
  component proj_blk_design_util_vector_logic_1_6 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_util_vector_logic_1_6;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal M00_AXIS_ACLK_0_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_0_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal S01_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S01_AXIS_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S01_AXIS_1_TLAST : STD_LOGIC;
  signal S01_AXIS_1_TREADY : STD_LOGIC;
  signal S01_AXIS_1_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_flow_control_0_m_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_flow_control_0_m_axis_TLAST : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TREADY : STD_LOGIC;
  signal tx_flow_control_0_m_axis_TVALID : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED : STD_LOGIC;
begin
  Conn1_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  Conn1_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  Conn1_TLAST <= S00_AXIS_tlast;
  Conn1_TVALID <= S00_AXIS_tvalid;
  Conn2_TDATA(511 downto 0) <= S02_AXIS_tdata(511 downto 0);
  Conn2_TDEST(1 downto 0) <= S02_AXIS_tdest(1 downto 0);
  Conn2_TKEEP(63 downto 0) <= S02_AXIS_tkeep(63 downto 0);
  Conn2_TLAST <= S02_AXIS_tlast;
  Conn2_TVALID <= S02_AXIS_tvalid;
  Din_0_1(8 downto 0) <= stat_rx_pause_req_11_i(8 downto 0);
  M00_AXIS_ACLK_0_1 <= tx_clk_11;
  M00_AXIS_ARESETN_0_1 <= s_axis_aresetn;
  Net <= user_aresetn;
  Net1 <= usr_clk;
  S00_AXIS_tready <= Conn1_TREADY;
  S01_AXIS_1_TDATA(511 downto 0) <= S01_AXIS_tdata(511 downto 0);
  S01_AXIS_1_TDEST(3 downto 0) <= S01_AXIS_tdest(3 downto 0);
  S01_AXIS_1_TKEEP(63 downto 0) <= S01_AXIS_tkeep(63 downto 0);
  S01_AXIS_1_TLAST <= S01_AXIS_tlast;
  S01_AXIS_1_TVALID <= S01_AXIS_tvalid;
  S01_AXIS_tready <= S01_AXIS_1_TREADY;
  S02_AXIS_tready <= Conn2_TREADY;
  m_axis_01_tdata(63 downto 0) <= tx_flow_control_0_m_axis_TDATA(63 downto 0);
  m_axis_01_tkeep(7 downto 0) <= tx_flow_control_0_m_axis_TKEEP(7 downto 0);
  m_axis_01_tlast <= tx_flow_control_0_m_axis_TLAST;
  m_axis_01_tvalid <= tx_flow_control_0_m_axis_TVALID;
  tx_flow_control_0_m_axis_TREADY <= m_axis_01_tready;
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_7
     port map (
      ACLK => Net1,
      ARESETN => Net,
      M00_AXIS_ACLK => M00_AXIS_ACLK_0_1,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN_0_1,
      M00_AXIS_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      M00_AXIS_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => Net1,
      S00_AXIS_ARESETN => Net,
      S00_AXIS_tdata(511 downto 0) => Conn1_TDATA(511 downto 0),
      S00_AXIS_tkeep(63 downto 0) => Conn1_TKEEP(63 downto 0),
      S00_AXIS_tlast => Conn1_TLAST,
      S00_AXIS_tready => Conn1_TREADY,
      S00_AXIS_tvalid => Conn1_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => Net1,
      S01_AXIS_ARESETN => Net,
      S01_AXIS_tdata(511 downto 0) => S01_AXIS_1_TDATA(511 downto 0),
      S01_AXIS_tdest(3 downto 0) => S01_AXIS_1_TDEST(3 downto 0),
      S01_AXIS_tkeep(63 downto 0) => S01_AXIS_1_TKEEP(63 downto 0),
      S01_AXIS_tlast => S01_AXIS_1_TLAST,
      S01_AXIS_tready => S01_AXIS_1_TREADY,
      S01_AXIS_tvalid => S01_AXIS_1_TVALID,
      S02_ARB_REQ_SUPPRESS => '0',
      S02_AXIS_ACLK => Net1,
      S02_AXIS_ARESETN => Net,
      S02_AXIS_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      S02_AXIS_tdest(1 downto 0) => Conn2_TDEST(1 downto 0),
      S02_AXIS_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      S02_AXIS_tlast => Conn2_TLAST,
      S02_AXIS_tready => Conn2_TREADY,
      S02_AXIS_tvalid => Conn2_TVALID
    );
tx_flow_control_0: component proj_blk_design_tx_flow_control_0_2
     port map (
      m_axis_aclk => M00_AXIS_ACLK_0_1,
      m_axis_tdata(63 downto 0) => tx_flow_control_0_m_axis_TDATA(63 downto 0),
      m_axis_tkeep(7 downto 0) => tx_flow_control_0_m_axis_TKEEP(7 downto 0),
      m_axis_tlast => tx_flow_control_0_m_axis_TLAST,
      m_axis_tready => tx_flow_control_0_m_axis_TREADY,
      m_axis_tvalid => tx_flow_control_0_m_axis_TVALID,
      s_axis_aclk => M00_AXIS_ACLK_0_1,
      s_axis_aresetn => M00_AXIS_ARESETN_0_1,
      s_axis_tdata(63 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(63 downto 0),
      s_axis_tkeep(7 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(7 downto 0),
      s_axis_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      tready_frm_flow_cntrl => util_vector_logic_1_Res(0),
      tready_frm_flow_cntrl_ila => NLW_tx_flow_control_0_tready_frm_flow_cntrl_ila_UNCONNECTED
    );
util_vector_logic_1: component proj_blk_design_util_vector_logic_1_6
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
xlslice_0: component proj_blk_design_xlslice_0_2
     port map (
      Din(8 downto 0) => Din_0_1(8 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design is
  port (
    M00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : in STD_LOGIC;
    M00_AXIS_tready : out STD_LOGIC;
    M00_AXIS_tvalid : in STD_LOGIC;
    M01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXIS_tlast : in STD_LOGIC;
    M01_AXIS_tready : out STD_LOGIC;
    M01_AXIS_tvalid : in STD_LOGIC;
    M02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXIS_tlast : in STD_LOGIC;
    M02_AXIS_tready : out STD_LOGIC;
    M02_AXIS_tvalid : in STD_LOGIC;
    M03_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M03_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M03_AXIS_tlast : in STD_LOGIC;
    M03_AXIS_tready : out STD_LOGIC;
    M03_AXIS_tvalid : in STD_LOGIC;
    M_AXIS_packetizer_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    M_AXIS_packetizer_tready : out STD_LOGIC;
    M_AXIS_packetizer_tvalid : in STD_LOGIC;
    S_AXIS_Lite_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXIS_Lite_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_Lite_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_arready : in STD_LOGIC;
    S_AXIS_Lite_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_arvalid : out STD_LOGIC;
    S_AXIS_Lite_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXIS_Lite_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_Lite_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_awready : in STD_LOGIC;
    S_AXIS_Lite_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_awvalid : out STD_LOGIC;
    S_AXIS_Lite_bready : out STD_LOGIC;
    S_AXIS_Lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_Lite_bvalid : in STD_LOGIC;
    S_AXIS_Lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_Lite_rready : out STD_LOGIC;
    S_AXIS_Lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_Lite_rvalid : in STD_LOGIC;
    S_AXIS_Lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_Lite_wready : in STD_LOGIC;
    S_AXIS_Lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_wvalid : out STD_LOGIC;
    S_AXIS_MAC0_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC0_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC0_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC0_tlast : out STD_LOGIC;
    S_AXIS_MAC0_tready : in STD_LOGIC;
    S_AXIS_MAC0_tvalid : out STD_LOGIC;
    S_AXIS_MAC1_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC1_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC1_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC1_tlast : out STD_LOGIC;
    S_AXIS_MAC1_tready : in STD_LOGIC;
    S_AXIS_MAC1_tvalid : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC2_MAC3_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC2_MAC3_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC2_MAC3_tlast : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tready : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tvalid : out STD_LOGIC;
    clk_100M_in : in STD_LOGIC;
    clk_100M_out : out STD_LOGIC;
    clk_200M_out : out STD_LOGIC;
    clk_400M_out : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    port1_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn : out STD_LOGIC;
    rx_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_00_tlast : in STD_LOGIC;
    rx_AXIS_00_tready : out STD_LOGIC;
    rx_AXIS_00_tvalid : in STD_LOGIC;
    rx_AXIS_01_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_01_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_01_tlast : in STD_LOGIC;
    rx_AXIS_01_tready : out STD_LOGIC;
    rx_AXIS_01_tvalid : in STD_LOGIC;
    rx_AXIS_10_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_10_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_10_tlast : in STD_LOGIC;
    rx_AXIS_10_tready : out STD_LOGIC;
    rx_AXIS_10_tvalid : in STD_LOGIC;
    rx_AXIS_11_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_11_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_11_tlast : in STD_LOGIC;
    rx_AXIS_11_tready : out STD_LOGIC;
    rx_AXIS_11_tvalid : in STD_LOGIC;
    rx_aclk_00 : in STD_LOGIC;
    rx_aclk_01 : in STD_LOGIC;
    rx_aclk_10 : in STD_LOGIC;
    rx_aclk_11 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    stat_rx_pause_req_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_rx_pause_req_01_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_rx_pause_req_10_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_rx_pause_req_11_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_pause_valid_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_pause_valid_01_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_pause_valid_10_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_pause_valid_11_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_AXIS_00_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_00_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_00_tlast : out STD_LOGIC;
    tx_AXIS_00_tready : in STD_LOGIC;
    tx_AXIS_00_tvalid : out STD_LOGIC;
    tx_AXIS_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_01_tlast : out STD_LOGIC;
    tx_AXIS_01_tready : in STD_LOGIC;
    tx_AXIS_01_tvalid : out STD_LOGIC;
    tx_AXIS_10_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_10_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_10_tlast : out STD_LOGIC;
    tx_AXIS_10_tready : in STD_LOGIC;
    tx_AXIS_10_tvalid : out STD_LOGIC;
    tx_AXIS_11_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_11_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_11_tlast : out STD_LOGIC;
    tx_AXIS_11_tready : in STD_LOGIC;
    tx_AXIS_11_tvalid : out STD_LOGIC;
    tx_aclk_00 : in STD_LOGIC;
    tx_aclk_01 : in STD_LOGIC;
    tx_aclk_10 : in STD_LOGIC;
    tx_aclk_11 : in STD_LOGIC;
    tx_pause_req_00_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_pause_req_01_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_pause_req_10_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_pause_req_11_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_resend_pause_00_o : out STD_LOGIC;
    tx_resend_pause_01_o : out STD_LOGIC;
    tx_resend_pause_10_o : out STD_LOGIC;
    tx_resend_pause_11_o : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of proj_blk_design : entity is "proj_blk_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=proj_blk_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=221,numReposBlks=167,numNonXlnxBlks=0,numHierBlks=54,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=25,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of proj_blk_design : entity is "proj_blk_design.hwdef";
end proj_blk_design;

architecture STRUCTURE of proj_blk_design is
  component proj_blk_design_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_axi_gpio_0_0;
  component proj_blk_design_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_axi_gpio_1_0;
  component proj_blk_design_axi_gpio_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_axi_gpio_2_0;
  component proj_blk_design_axi_gpio_3_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component proj_blk_design_axi_gpio_3_0;
  component proj_blk_design_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_200M : out STD_LOGIC;
    clk_100M : out STD_LOGIC;
    clk_400M : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component proj_blk_design_clk_wiz_0_0;
  component proj_blk_design_dfx_decoupler_0_0 is
  port (
    s_intf_0_TVALID : out STD_LOGIC;
    rp_intf_0_TVALID : in STD_LOGIC;
    s_intf_0_TREADY : in STD_LOGIC;
    rp_intf_0_TREADY : out STD_LOGIC;
    s_intf_0_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_0_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_0_TLAST : out STD_LOGIC;
    rp_intf_0_TLAST : in STD_LOGIC;
    s_intf_0_TDEST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_intf_0_TDEST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_intf_0_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_0_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_intf_1_TVALID : out STD_LOGIC;
    rp_intf_1_TVALID : in STD_LOGIC;
    s_intf_1_TREADY : in STD_LOGIC;
    rp_intf_1_TREADY : out STD_LOGIC;
    s_intf_1_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_1_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_1_TLAST : out STD_LOGIC;
    rp_intf_1_TLAST : in STD_LOGIC;
    s_intf_1_TDEST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_intf_1_TDEST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_intf_1_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_1_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_intf_2_TVALID : out STD_LOGIC;
    rp_intf_2_TVALID : in STD_LOGIC;
    s_intf_2_TREADY : in STD_LOGIC;
    rp_intf_2_TREADY : out STD_LOGIC;
    s_intf_2_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_2_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_2_TLAST : out STD_LOGIC;
    rp_intf_2_TLAST : in STD_LOGIC;
    s_intf_2_TDEST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_intf_2_TDEST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_intf_2_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_2_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  end component proj_blk_design_dfx_decoupler_0_0;
  component proj_blk_design_dfx_decoupler_1_0 is
  port (
    s_intf_0_ARVALID : out STD_LOGIC;
    rp_intf_0_ARVALID : in STD_LOGIC;
    s_intf_0_ARREADY : in STD_LOGIC;
    rp_intf_0_ARREADY : out STD_LOGIC;
    s_intf_0_AWVALID : out STD_LOGIC;
    rp_intf_0_AWVALID : in STD_LOGIC;
    s_intf_0_AWREADY : in STD_LOGIC;
    rp_intf_0_AWREADY : out STD_LOGIC;
    s_intf_0_BVALID : in STD_LOGIC;
    rp_intf_0_BVALID : out STD_LOGIC;
    s_intf_0_BREADY : out STD_LOGIC;
    rp_intf_0_BREADY : in STD_LOGIC;
    s_intf_0_RVALID : in STD_LOGIC;
    rp_intf_0_RVALID : out STD_LOGIC;
    s_intf_0_RREADY : out STD_LOGIC;
    rp_intf_0_RREADY : in STD_LOGIC;
    s_intf_0_WVALID : out STD_LOGIC;
    rp_intf_0_WVALID : in STD_LOGIC;
    s_intf_0_WREADY : in STD_LOGIC;
    rp_intf_0_WREADY : out STD_LOGIC;
    s_intf_0_AWADDR : out STD_LOGIC_VECTOR ( 39 downto 0 );
    rp_intf_0_AWADDR : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_intf_0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_intf_0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_intf_0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_intf_0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_intf_0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_intf_0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_intf_0_ARADDR : out STD_LOGIC_VECTOR ( 39 downto 0 );
    rp_intf_0_ARADDR : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_intf_0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_intf_0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_intf_0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_intf_0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_intf_0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_intf_0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  end component proj_blk_design_dfx_decoupler_1_0;
  component proj_blk_design_dfx_decoupler_2_0 is
  port (
    s_intf_0_TVALID : out STD_LOGIC;
    rp_intf_0_TVALID : in STD_LOGIC;
    s_intf_0_TREADY : in STD_LOGIC;
    rp_intf_0_TREADY : out STD_LOGIC;
    s_intf_0_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_0_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_0_TLAST : out STD_LOGIC;
    rp_intf_0_TLAST : in STD_LOGIC;
    s_intf_0_TDEST : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_TDEST : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_0_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_intf_1_TVALID : out STD_LOGIC;
    rp_intf_1_TVALID : in STD_LOGIC;
    s_intf_1_TREADY : in STD_LOGIC;
    rp_intf_1_TREADY : out STD_LOGIC;
    s_intf_1_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_1_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_1_TLAST : out STD_LOGIC;
    rp_intf_1_TLAST : in STD_LOGIC;
    s_intf_1_TDEST : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_1_TDEST : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_1_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_1_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  end component proj_blk_design_dfx_decoupler_2_0;
  component proj_blk_design_dfx_decoupler_3_0 is
  port (
    s_intf_0_TVALID : out STD_LOGIC;
    rp_intf_0_TVALID : in STD_LOGIC;
    s_intf_0_TREADY : in STD_LOGIC;
    rp_intf_0_TREADY : out STD_LOGIC;
    s_intf_0_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_0_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_0_TLAST : out STD_LOGIC;
    rp_intf_0_TLAST : in STD_LOGIC;
    s_intf_0_TDEST : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_0_TDEST : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_0_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_0_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_intf_1_TVALID : out STD_LOGIC;
    rp_intf_1_TVALID : in STD_LOGIC;
    s_intf_1_TREADY : in STD_LOGIC;
    rp_intf_1_TREADY : out STD_LOGIC;
    s_intf_1_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_intf_1_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_intf_1_TLAST : out STD_LOGIC;
    rp_intf_1_TLAST : in STD_LOGIC;
    s_intf_1_TDEST : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_intf_1_TDEST : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_intf_1_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_intf_1_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_intf_2_TVALID : out STD_LOGIC;
    rp_intf_2_TVALID : in STD_LOGIC;
    s_intf_2_TREADY : in STD_LOGIC;
    rp_intf_2_TREADY : out STD_LOGIC;
    s_intf_2_TDATA : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rp_intf_2_TDATA : in STD_LOGIC_VECTOR ( 47 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  end component proj_blk_design_dfx_decoupler_3_0;
  component proj_blk_design_version_register_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component proj_blk_design_version_register_0_0;
  signal Din_01_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Din_0_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal M00_AXIS_ACLK_0_0_1 : STD_LOGIC;
  signal MCDI_m0_axis_MCDI_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MCDI_m0_axis_MCDI_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MCDI_m0_axis_MCDI_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MCDI_m0_axis_MCDI_TLAST : STD_LOGIC;
  signal MCDI_m0_axis_MCDI_TREADY : STD_LOGIC;
  signal MCDI_m0_axis_MCDI_TVALID : STD_LOGIC;
  signal MCDI_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal MCDI_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MCDI_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal MCDI_m1_axis_TLAST : STD_LOGIC;
  signal MCDI_m1_axis_TREADY : STD_LOGIC;
  signal MCDI_m1_axis_TVALID : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal PS_M_AXIS_MM2S_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXIS_MM2S_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PS_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal PS_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal PS_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PS_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PS_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PS_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PS_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PS_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PS_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal PS_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PS_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_1_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_2_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_3_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_1_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_1_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M04_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M05_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_interconnect_1_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M06_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M06_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M06_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M06_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M06_AXI_WVALID : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_100M : STD_LOGIC;
  signal clk_wiz_0_clk_200M : STD_LOGIC;
  signal clk_wiz_0_clk_400M : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal dfx_decoupler_0_decouple_status : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_0_s_intf_0_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dfx_decoupler_0_s_intf_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_0_s_intf_0_TLAST : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_0_TREADY : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_0_TVALID : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_0_s_intf_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dfx_decoupler_0_s_intf_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_0_s_intf_1_TLAST : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_1_TREADY : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_1_TVALID : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_0_s_intf_2_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dfx_decoupler_0_s_intf_2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_0_s_intf_2_TLAST : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_2_TREADY : STD_LOGIC;
  signal dfx_decoupler_0_s_intf_2_TVALID : STD_LOGIC;
  signal dfx_decoupler_1_decouple_status : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dfx_decoupler_1_s_intf_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dfx_decoupler_1_s_intf_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_1_s_intf_0_ARREADY : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_1_s_intf_0_ARVALID : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dfx_decoupler_1_s_intf_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dfx_decoupler_1_s_intf_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_1_s_intf_0_AWREADY : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_1_s_intf_0_AWVALID : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_BREADY : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dfx_decoupler_1_s_intf_0_BVALID : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dfx_decoupler_1_s_intf_0_RREADY : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dfx_decoupler_1_s_intf_0_RVALID : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dfx_decoupler_1_s_intf_0_WREADY : STD_LOGIC;
  signal dfx_decoupler_1_s_intf_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_1_s_intf_0_WVALID : STD_LOGIC;
  signal dfx_decoupler_2_decouple_status : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_2_s_intf_0_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_2_s_intf_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_2_s_intf_0_TLAST : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_0_TREADY : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_0_TVALID : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_2_s_intf_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_2_s_intf_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_2_s_intf_1_TLAST : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_1_TREADY : STD_LOGIC;
  signal dfx_decoupler_2_s_intf_1_TVALID : STD_LOGIC;
  signal dfx_decoupler_3_decouple_status : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_0_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_3_s_intf_0_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_3_s_intf_0_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_3_s_intf_0_TLAST : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_0_TREADY : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_0_TVALID : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal dfx_decoupler_3_s_intf_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dfx_decoupler_3_s_intf_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dfx_decoupler_3_s_intf_1_TLAST : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_1_TREADY : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_1_TVALID : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_2_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal dfx_decoupler_3_s_intf_2_TREADY : STD_LOGIC;
  signal dfx_decoupler_3_s_intf_2_TVALID : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID : STD_LOGIC;
  signal from_MAC00_is_MAC0_m0_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC00_is_MAC0_m0_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC00_is_MAC0_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC00_is_MAC0_m0_axis_TLAST : STD_LOGIC;
  signal from_MAC00_is_MAC0_m0_axis_TREADY : STD_LOGIC;
  signal from_MAC00_is_MAC0_m0_axis_TVALID : STD_LOGIC;
  signal from_MAC00_is_MAC0_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC00_is_MAC0_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC00_is_MAC0_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC00_is_MAC0_m1_axis_TLAST : STD_LOGIC;
  signal from_MAC00_is_MAC0_m1_axis_TREADY : STD_LOGIC;
  signal from_MAC00_is_MAC0_m1_axis_TVALID : STD_LOGIC;
  signal from_MAC00_is_MAC0_o_ctl_tx_pause_req_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal from_MAC00_is_MAC0_o_ctl_tx_resend_pause_0 : STD_LOGIC;
  signal from_MAC00_is_MAC1_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC00_is_MAC1_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC00_is_MAC1_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC00_is_MAC1_m1_axis_TLAST : STD_LOGIC;
  signal from_MAC00_is_MAC1_m1_axis_TREADY : STD_LOGIC;
  signal from_MAC00_is_MAC1_m1_axis_TVALID : STD_LOGIC;
  signal from_MAC00_is_MAC1_o_ctl_tx_pause_req_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal from_MAC00_is_MAC1_o_ctl_tx_resend_pause_0 : STD_LOGIC;
  signal from_MAC01_is_MAC2_m0_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC01_is_MAC2_m0_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC01_is_MAC2_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC01_is_MAC2_m0_axis_TLAST : STD_LOGIC;
  signal from_MAC01_is_MAC2_m0_axis_TREADY : STD_LOGIC;
  signal from_MAC01_is_MAC2_m0_axis_TVALID : STD_LOGIC;
  signal from_MAC01_is_MAC2_o_ctl_tx_pause_req_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal from_MAC01_is_MAC2_o_ctl_tx_resend_pause_0 : STD_LOGIC;
  signal from_MAC01_is_MAC3_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC01_is_MAC3_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC01_is_MAC3_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC01_is_MAC3_m1_axis_TLAST : STD_LOGIC;
  signal from_MAC01_is_MAC3_m1_axis_TREADY : STD_LOGIC;
  signal from_MAC01_is_MAC3_m1_axis_TVALID : STD_LOGIC;
  signal from_MAC01_is_MAC3_o_ctl_tx_pause_req_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal from_MAC01_is_MAC3_o_ctl_tx_resend_pause_0 : STD_LOGIC;
  signal from_MAC10_is_MAC1_m0_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC10_is_MAC1_m0_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC10_is_MAC1_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC10_is_MAC1_m0_axis_TLAST : STD_LOGIC;
  signal from_MAC10_is_MAC1_m0_axis_TREADY : STD_LOGIC;
  signal from_MAC10_is_MAC1_m0_axis_TVALID : STD_LOGIC;
  signal from_MAC10_is_MAC2_m1_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC10_is_MAC2_m1_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC10_is_MAC2_m1_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC10_is_MAC2_m1_axis_TLAST : STD_LOGIC;
  signal from_MAC10_is_MAC2_m1_axis_TREADY : STD_LOGIC;
  signal from_MAC10_is_MAC2_m1_axis_TVALID : STD_LOGIC;
  signal from_MAC11_is_MAC3_m0_axis_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal from_MAC11_is_MAC3_m0_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal from_MAC11_is_MAC3_m0_axis_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal from_MAC11_is_MAC3_m0_axis_TLAST : STD_LOGIC;
  signal from_MAC11_is_MAC3_m0_axis_TREADY : STD_LOGIC;
  signal from_MAC11_is_MAC3_m0_axis_TVALID : STD_LOGIC;
  signal i_stat_tx_pause_valid_0_0_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_stat_tx_pause_valid_0_0_2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal port0_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal port1_mode_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal qdma_axi_aclk : STD_LOGIC;
  signal qdma_axi_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rp_intf_0_0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal rp_intf_0_0_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rp_intf_0_0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rp_intf_0_0_1_TLAST : STD_LOGIC;
  signal rp_intf_0_0_1_TREADY : STD_LOGIC;
  signal rp_intf_0_0_1_TVALID : STD_LOGIC;
  signal rp_intf_0_0_2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal rp_intf_0_0_2_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rp_intf_0_0_2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rp_intf_0_0_2_TLAST : STD_LOGIC;
  signal rp_intf_0_0_2_TREADY : STD_LOGIC;
  signal rp_intf_0_0_2_TVALID : STD_LOGIC;
  signal rp_intf_1_0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal rp_intf_1_0_1_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rp_intf_1_0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rp_intf_1_0_1_TLAST : STD_LOGIC;
  signal rp_intf_1_0_1_TREADY : STD_LOGIC;
  signal rp_intf_1_0_1_TVALID : STD_LOGIC;
  signal rp_intf_1_0_2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal rp_intf_1_0_2_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rp_intf_1_0_2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rp_intf_1_0_2_TLAST : STD_LOGIC;
  signal rp_intf_1_0_2_TREADY : STD_LOGIC;
  signal rp_intf_1_0_2_TVALID : STD_LOGIC;
  signal rp_intf_2_0_1_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal rp_intf_2_0_1_TREADY : STD_LOGIC;
  signal rp_intf_2_0_1_TVALID : STD_LOGIC;
  signal rx_AXIS_00_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_AXIS_00_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_AXIS_00_1_TLAST : STD_LOGIC;
  signal rx_AXIS_00_1_TREADY : STD_LOGIC;
  signal rx_AXIS_00_1_TVALID : STD_LOGIC;
  signal rx_AXIS_01_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_AXIS_01_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_AXIS_01_1_TLAST : STD_LOGIC;
  signal rx_AXIS_01_1_TREADY : STD_LOGIC;
  signal rx_AXIS_01_1_TVALID : STD_LOGIC;
  signal rx_AXIS_10_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_AXIS_10_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_AXIS_10_1_TLAST : STD_LOGIC;
  signal rx_AXIS_10_1_TREADY : STD_LOGIC;
  signal rx_AXIS_10_1_TVALID : STD_LOGIC;
  signal rx_AXIS_11_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_AXIS_11_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_AXIS_11_1_TLAST : STD_LOGIC;
  signal rx_AXIS_11_1_TREADY : STD_LOGIC;
  signal rx_AXIS_11_1_TVALID : STD_LOGIC;
  signal rx_aclk_10_1 : STD_LOGIC;
  signal rx_aclk_11_1 : STD_LOGIC;
  signal s_axis_aclk_0_0_1 : STD_LOGIC;
  signal s_axis_aresetn_0_0_1 : STD_LOGIC;
  signal stat_rx_pause_req_10_i_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal stat_rx_pause_req_11_i_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal stat_tx_pause_valid_10_i_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal stat_tx_pause_valid_11_i_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal to_MAC01_is_MAC2_m_axis_0_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal to_MAC01_is_MAC2_m_axis_0_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal to_MAC01_is_MAC2_m_axis_0_TLAST : STD_LOGIC;
  signal to_MAC01_is_MAC2_m_axis_0_TREADY : STD_LOGIC;
  signal to_MAC01_is_MAC2_m_axis_0_TVALID : STD_LOGIC;
  signal to_MAC01_is_MAC3_m_axis_01_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal to_MAC01_is_MAC3_m_axis_01_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal to_MAC01_is_MAC3_m_axis_01_TLAST : STD_LOGIC;
  signal to_MAC01_is_MAC3_m_axis_01_TREADY : STD_LOGIC;
  signal to_MAC01_is_MAC3_m_axis_01_TVALID : STD_LOGIC;
  signal to_MAC10_is_MAC1_m_axis_01_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal to_MAC10_is_MAC1_m_axis_01_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal to_MAC10_is_MAC1_m_axis_01_TLAST : STD_LOGIC;
  signal to_MAC10_is_MAC1_m_axis_01_TREADY : STD_LOGIC;
  signal to_MAC10_is_MAC1_m_axis_01_TVALID : STD_LOGIC;
  signal to_MAC10_is_MAC2_m_axis_01_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal to_MAC10_is_MAC2_m_axis_01_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal to_MAC10_is_MAC2_m_axis_01_TLAST : STD_LOGIC;
  signal to_MAC10_is_MAC2_m_axis_01_TREADY : STD_LOGIC;
  signal to_MAC10_is_MAC2_m_axis_01_TVALID : STD_LOGIC;
  signal tx_aclk_10_1 : STD_LOGIC;
  signal tx_aclk_11_1 : STD_LOGIC;
  signal tx_clk_01_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of clk_100M_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100M_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100M_in : signal is "XIL_INTERFACENAME CLK.CLK_100M_IN, CLK_DOMAIN proj_blk_design_clk_100M_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_100M_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100M_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_100M_out : signal is "XIL_INTERFACENAME CLK.CLK_100M_OUT, CLK_DOMAIN proj_blk_design_clk_wiz_0_0_clk_200M, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_200M_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_200M_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_200M_out : signal is "XIL_INTERFACENAME CLK.CLK_200M_OUT, CLK_DOMAIN proj_blk_design_clk_wiz_0_0_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_400M_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_400M_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_400M_out : signal is "XIL_INTERFACENAME CLK.CLK_400M_OUT, CLK_DOMAIN proj_blk_design_clk_wiz_0_0_clk_200M, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rx_AXIS_00_tlast : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_00 TLAST";
  attribute X_INTERFACE_INFO of rx_AXIS_00_tready : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_00 TREADY";
  attribute X_INTERFACE_INFO of rx_AXIS_00_tvalid : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_00 TVALID";
  attribute X_INTERFACE_INFO of rx_AXIS_01_tlast : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_01 TLAST";
  attribute X_INTERFACE_INFO of rx_AXIS_01_tready : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_01 TREADY";
  attribute X_INTERFACE_INFO of rx_AXIS_01_tvalid : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_01 TVALID";
  attribute X_INTERFACE_INFO of rx_AXIS_10_tlast : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_10 TLAST";
  attribute X_INTERFACE_INFO of rx_AXIS_10_tready : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_10 TREADY";
  attribute X_INTERFACE_INFO of rx_AXIS_10_tvalid : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_10 TVALID";
  attribute X_INTERFACE_INFO of rx_AXIS_11_tlast : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_11 TLAST";
  attribute X_INTERFACE_INFO of rx_AXIS_11_tready : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_11 TREADY";
  attribute X_INTERFACE_INFO of rx_AXIS_11_tvalid : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_11 TVALID";
  attribute X_INTERFACE_INFO of rx_aclk_00 : signal is "xilinx.com:signal:clock:1.0 CLK.RX_ACLK_00 CLK";
  attribute X_INTERFACE_PARAMETER of rx_aclk_00 : signal is "XIL_INTERFACENAME CLK.RX_ACLK_00, ASSOCIATED_BUSIF rx_AXIS_00, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_rx_aclk_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rx_aclk_01 : signal is "xilinx.com:signal:clock:1.0 CLK.RX_ACLK_01 CLK";
  attribute X_INTERFACE_PARAMETER of rx_aclk_01 : signal is "XIL_INTERFACENAME CLK.RX_ACLK_01, ASSOCIATED_BUSIF rx_AXIS_01, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_rx_aclk_01, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rx_aclk_10 : signal is "xilinx.com:signal:clock:1.0 CLK.RX_ACLK_10 CLK";
  attribute X_INTERFACE_PARAMETER of rx_aclk_10 : signal is "XIL_INTERFACENAME CLK.RX_ACLK_10, ASSOCIATED_BUSIF rx_AXIS_10, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_rx_aclk_10, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rx_aclk_11 : signal is "xilinx.com:signal:clock:1.0 CLK.RX_ACLK_11 CLK";
  attribute X_INTERFACE_PARAMETER of rx_aclk_11 : signal is "XIL_INTERFACENAME CLK.RX_ACLK_11, ASSOCIATED_BUSIF rx_AXIS_11, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_rx_aclk_11, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn_0 : signal is "XIL_INTERFACENAME RST.S_AXIS_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of tx_AXIS_00_tlast : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_00 TLAST";
  attribute X_INTERFACE_INFO of tx_AXIS_00_tready : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_00 TREADY";
  attribute X_INTERFACE_INFO of tx_AXIS_00_tvalid : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_00 TVALID";
  attribute X_INTERFACE_INFO of tx_AXIS_01_tlast : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_01 TLAST";
  attribute X_INTERFACE_INFO of tx_AXIS_01_tready : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_01 TREADY";
  attribute X_INTERFACE_INFO of tx_AXIS_01_tvalid : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_01 TVALID";
  attribute X_INTERFACE_INFO of tx_AXIS_10_tlast : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_10 TLAST";
  attribute X_INTERFACE_INFO of tx_AXIS_10_tready : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_10 TREADY";
  attribute X_INTERFACE_INFO of tx_AXIS_10_tvalid : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_10 TVALID";
  attribute X_INTERFACE_INFO of tx_AXIS_11_tlast : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_11 TLAST";
  attribute X_INTERFACE_INFO of tx_AXIS_11_tready : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_11 TREADY";
  attribute X_INTERFACE_INFO of tx_AXIS_11_tvalid : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_11 TVALID";
  attribute X_INTERFACE_INFO of tx_aclk_00 : signal is "xilinx.com:signal:clock:1.0 CLK.TX_ACLK_00 CLK";
  attribute X_INTERFACE_PARAMETER of tx_aclk_00 : signal is "XIL_INTERFACENAME CLK.TX_ACLK_00, ASSOCIATED_BUSIF tx_AXIS_00, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_tx_aclk_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of tx_aclk_01 : signal is "xilinx.com:signal:clock:1.0 CLK.TX_ACLK_01 CLK";
  attribute X_INTERFACE_PARAMETER of tx_aclk_01 : signal is "XIL_INTERFACENAME CLK.TX_ACLK_01, ASSOCIATED_BUSIF tx_AXIS_01, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_tx_aclk_01, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of tx_aclk_10 : signal is "xilinx.com:signal:clock:1.0 CLK.TX_ACLK_10 CLK";
  attribute X_INTERFACE_PARAMETER of tx_aclk_10 : signal is "XIL_INTERFACENAME CLK.TX_ACLK_10, ASSOCIATED_BUSIF tx_AXIS_10, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_tx_aclk_10, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of tx_aclk_11 : signal is "xilinx.com:signal:clock:1.0 CLK.TX_ACLK_11 CLK";
  attribute X_INTERFACE_PARAMETER of tx_aclk_11 : signal is "XIL_INTERFACENAME CLK.TX_ACLK_11, ASSOCIATED_BUSIF tx_AXIS_11, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN proj_blk_design_tx_aclk_11, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of M00_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_PARAMETER of M00_AXIS_tdata : signal is "XIL_INTERFACENAME M00_AXIS, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M00_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_PARAMETER of M01_AXIS_tdata : signal is "XIL_INTERFACENAME M01_AXIS, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M01_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_PARAMETER of M02_AXIS_tdata : signal is "XIL_INTERFACENAME M02_AXIS, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M02_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_PARAMETER of M03_AXIS_tdata : signal is "XIL_INTERFACENAME M03_AXIS, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M03_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_PARAMETER of M_AXIS_packetizer_tdata : signal is "XIL_INTERFACENAME M_AXIS_packetizer, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_Lite_araddr : signal is "XIL_INTERFACENAME S_AXIS_Lite, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_Lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXIS_Lite ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC0_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC1_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC1, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC2_MAC3_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC2_MAC3, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of rx_AXIS_00_tdata : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_00 TDATA";
  attribute X_INTERFACE_PARAMETER of rx_AXIS_00_tdata : signal is "XIL_INTERFACENAME rx_AXIS_00, CLK_DOMAIN proj_blk_design_rx_aclk_00, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of rx_AXIS_00_tkeep : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_00 TKEEP";
  attribute X_INTERFACE_INFO of rx_AXIS_01_tdata : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_01 TDATA";
  attribute X_INTERFACE_PARAMETER of rx_AXIS_01_tdata : signal is "XIL_INTERFACENAME rx_AXIS_01, CLK_DOMAIN proj_blk_design_rx_aclk_01, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of rx_AXIS_01_tkeep : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_01 TKEEP";
  attribute X_INTERFACE_INFO of rx_AXIS_10_tdata : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_10 TDATA";
  attribute X_INTERFACE_PARAMETER of rx_AXIS_10_tdata : signal is "XIL_INTERFACENAME rx_AXIS_10, CLK_DOMAIN proj_blk_design_rx_aclk_10, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of rx_AXIS_10_tkeep : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_10 TKEEP";
  attribute X_INTERFACE_INFO of rx_AXIS_11_tdata : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_11 TDATA";
  attribute X_INTERFACE_PARAMETER of rx_AXIS_11_tdata : signal is "XIL_INTERFACENAME rx_AXIS_11, CLK_DOMAIN proj_blk_design_rx_aclk_11, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of rx_AXIS_11_tkeep : signal is "xilinx.com:interface:axis:1.0 rx_AXIS_11 TKEEP";
  attribute X_INTERFACE_INFO of tx_AXIS_00_tdata : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_00 TDATA";
  attribute X_INTERFACE_PARAMETER of tx_AXIS_00_tdata : signal is "XIL_INTERFACENAME tx_AXIS_00, CLK_DOMAIN proj_blk_design_tx_aclk_00, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of tx_AXIS_00_tkeep : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_00 TKEEP";
  attribute X_INTERFACE_INFO of tx_AXIS_01_tdata : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_01 TDATA";
  attribute X_INTERFACE_PARAMETER of tx_AXIS_01_tdata : signal is "XIL_INTERFACENAME tx_AXIS_01, CLK_DOMAIN proj_blk_design_tx_aclk_01, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of tx_AXIS_01_tkeep : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_01 TKEEP";
  attribute X_INTERFACE_INFO of tx_AXIS_10_tdata : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_10 TDATA";
  attribute X_INTERFACE_PARAMETER of tx_AXIS_10_tdata : signal is "XIL_INTERFACENAME tx_AXIS_10, CLK_DOMAIN proj_blk_design_tx_aclk_10, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of tx_AXIS_10_tkeep : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_10 TKEEP";
  attribute X_INTERFACE_INFO of tx_AXIS_11_tdata : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_11 TDATA";
  attribute X_INTERFACE_PARAMETER of tx_AXIS_11_tdata : signal is "XIL_INTERFACENAME tx_AXIS_11, CLK_DOMAIN proj_blk_design_tx_aclk_11, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of tx_AXIS_11_tkeep : signal is "xilinx.com:interface:axis:1.0 tx_AXIS_11 TKEEP";
begin
  Din_01_0_1(8 downto 0) <= stat_rx_pause_req_01_i(8 downto 0);
  Din_0_0_1(8 downto 0) <= stat_rx_pause_req_00_i(8 downto 0);
  M00_AXIS_ACLK_0_0_1 <= tx_aclk_00;
  M00_AXIS_tready <= rp_intf_0_0_1_TREADY;
  M01_AXIS_tready <= rp_intf_1_0_1_TREADY;
  M02_AXIS_tready <= rp_intf_0_0_2_TREADY;
  M03_AXIS_tready <= rp_intf_1_0_2_TREADY;
  M_AXIS_packetizer_tready <= rp_intf_2_0_1_TREADY;
  S_AXIS_Lite_araddr(39 downto 0) <= dfx_decoupler_1_s_intf_0_ARADDR(39 downto 0);
  S_AXIS_Lite_arprot(2 downto 0) <= dfx_decoupler_1_s_intf_0_ARPROT(2 downto 0);
  S_AXIS_Lite_arqos(3 downto 0) <= dfx_decoupler_1_s_intf_0_ARQOS(3 downto 0);
  S_AXIS_Lite_arregion(3 downto 0) <= dfx_decoupler_1_s_intf_0_ARREGION(3 downto 0);
  S_AXIS_Lite_arvalid <= dfx_decoupler_1_s_intf_0_ARVALID;
  S_AXIS_Lite_awaddr(39 downto 0) <= dfx_decoupler_1_s_intf_0_AWADDR(39 downto 0);
  S_AXIS_Lite_awprot(2 downto 0) <= dfx_decoupler_1_s_intf_0_AWPROT(2 downto 0);
  S_AXIS_Lite_awqos(3 downto 0) <= dfx_decoupler_1_s_intf_0_AWQOS(3 downto 0);
  S_AXIS_Lite_awregion(3 downto 0) <= dfx_decoupler_1_s_intf_0_AWREGION(3 downto 0);
  S_AXIS_Lite_awvalid <= dfx_decoupler_1_s_intf_0_AWVALID;
  S_AXIS_Lite_bready <= dfx_decoupler_1_s_intf_0_BREADY;
  S_AXIS_Lite_rready <= dfx_decoupler_1_s_intf_0_RREADY;
  S_AXIS_Lite_wdata(31 downto 0) <= dfx_decoupler_1_s_intf_0_WDATA(31 downto 0);
  S_AXIS_Lite_wstrb(3 downto 0) <= dfx_decoupler_1_s_intf_0_WSTRB(3 downto 0);
  S_AXIS_Lite_wvalid <= dfx_decoupler_1_s_intf_0_WVALID;
  S_AXIS_MAC0_tdata(511 downto 0) <= dfx_decoupler_0_s_intf_0_TDATA(511 downto 0);
  S_AXIS_MAC0_tdest(1 downto 0) <= dfx_decoupler_0_s_intf_0_TDEST(1 downto 0);
  S_AXIS_MAC0_tkeep(63 downto 0) <= dfx_decoupler_0_s_intf_0_TKEEP(63 downto 0);
  S_AXIS_MAC0_tlast <= dfx_decoupler_0_s_intf_0_TLAST;
  S_AXIS_MAC0_tvalid <= dfx_decoupler_0_s_intf_0_TVALID;
  S_AXIS_MAC1_tdata(511 downto 0) <= dfx_decoupler_0_s_intf_1_TDATA(511 downto 0);
  S_AXIS_MAC1_tdest(1 downto 0) <= dfx_decoupler_0_s_intf_1_TDEST(1 downto 0);
  S_AXIS_MAC1_tkeep(63 downto 0) <= dfx_decoupler_0_s_intf_1_TKEEP(63 downto 0);
  S_AXIS_MAC1_tlast <= dfx_decoupler_0_s_intf_1_TLAST;
  S_AXIS_MAC1_tvalid <= dfx_decoupler_0_s_intf_1_TVALID;
  S_AXIS_MAC2_MAC3_tdata(511 downto 0) <= dfx_decoupler_0_s_intf_2_TDATA(511 downto 0);
  S_AXIS_MAC2_MAC3_tdest(1 downto 0) <= dfx_decoupler_0_s_intf_2_TDEST(1 downto 0);
  S_AXIS_MAC2_MAC3_tkeep(63 downto 0) <= dfx_decoupler_0_s_intf_2_TKEEP(63 downto 0);
  S_AXIS_MAC2_MAC3_tlast <= dfx_decoupler_0_s_intf_2_TLAST;
  S_AXIS_MAC2_MAC3_tvalid <= dfx_decoupler_0_s_intf_2_TVALID;
  clk_100M_out <= clk_wiz_0_clk_100M;
  clk_200M_out <= clk_wiz_0_clk_200M;
  clk_400M_out <= clk_wiz_0_clk_400M;
  clk_in1_0_1 <= clk_100M_in;
  dfx_decoupler_0_s_intf_0_TREADY <= S_AXIS_MAC0_tready;
  dfx_decoupler_0_s_intf_1_TREADY <= S_AXIS_MAC1_tready;
  dfx_decoupler_0_s_intf_2_TREADY <= S_AXIS_MAC2_MAC3_tready;
  dfx_decoupler_1_s_intf_0_ARREADY <= S_AXIS_Lite_arready;
  dfx_decoupler_1_s_intf_0_AWREADY <= S_AXIS_Lite_awready;
  dfx_decoupler_1_s_intf_0_BRESP(1 downto 0) <= S_AXIS_Lite_bresp(1 downto 0);
  dfx_decoupler_1_s_intf_0_BVALID <= S_AXIS_Lite_bvalid;
  dfx_decoupler_1_s_intf_0_RDATA(31 downto 0) <= S_AXIS_Lite_rdata(31 downto 0);
  dfx_decoupler_1_s_intf_0_RRESP(1 downto 0) <= S_AXIS_Lite_rresp(1 downto 0);
  dfx_decoupler_1_s_intf_0_RVALID <= S_AXIS_Lite_rvalid;
  dfx_decoupler_1_s_intf_0_WREADY <= S_AXIS_Lite_wready;
  i_stat_tx_pause_valid_0_0_1(8 downto 0) <= stat_tx_pause_valid_00_i(8 downto 0);
  i_stat_tx_pause_valid_0_0_2(8 downto 0) <= stat_tx_pause_valid_01_i(8 downto 0);
  port0_mode_1(1 downto 0) <= port0_mode(1 downto 0);
  port1_mode_1(1 downto 0) <= port1_mode(1 downto 0);
  resetn <= clk_wiz_0_locked;
  rp_intf_0_0_1_TDATA(511 downto 0) <= M00_AXIS_tdata(511 downto 0);
  rp_intf_0_0_1_TDEST(3 downto 0) <= M00_AXIS_tdest(3 downto 0);
  rp_intf_0_0_1_TKEEP(63 downto 0) <= M00_AXIS_tkeep(63 downto 0);
  rp_intf_0_0_1_TLAST <= M00_AXIS_tlast;
  rp_intf_0_0_1_TVALID <= M00_AXIS_tvalid;
  rp_intf_0_0_2_TDATA(511 downto 0) <= M02_AXIS_tdata(511 downto 0);
  rp_intf_0_0_2_TDEST(3 downto 0) <= M02_AXIS_tdest(3 downto 0);
  rp_intf_0_0_2_TKEEP(63 downto 0) <= M02_AXIS_tkeep(63 downto 0);
  rp_intf_0_0_2_TLAST <= M02_AXIS_tlast;
  rp_intf_0_0_2_TVALID <= M02_AXIS_tvalid;
  rp_intf_1_0_1_TDATA(511 downto 0) <= M01_AXIS_tdata(511 downto 0);
  rp_intf_1_0_1_TDEST(3 downto 0) <= M01_AXIS_tdest(3 downto 0);
  rp_intf_1_0_1_TKEEP(63 downto 0) <= M01_AXIS_tkeep(63 downto 0);
  rp_intf_1_0_1_TLAST <= M01_AXIS_tlast;
  rp_intf_1_0_1_TVALID <= M01_AXIS_tvalid;
  rp_intf_1_0_2_TDATA(511 downto 0) <= M03_AXIS_tdata(511 downto 0);
  rp_intf_1_0_2_TDEST(3 downto 0) <= M03_AXIS_tdest(3 downto 0);
  rp_intf_1_0_2_TKEEP(63 downto 0) <= M03_AXIS_tkeep(63 downto 0);
  rp_intf_1_0_2_TLAST <= M03_AXIS_tlast;
  rp_intf_1_0_2_TVALID <= M03_AXIS_tvalid;
  rp_intf_2_0_1_TDATA(47 downto 0) <= M_AXIS_packetizer_tdata(47 downto 0);
  rp_intf_2_0_1_TVALID <= M_AXIS_packetizer_tvalid;
  rx_AXIS_00_1_TDATA(63 downto 0) <= rx_AXIS_00_tdata(63 downto 0);
  rx_AXIS_00_1_TKEEP(7 downto 0) <= rx_AXIS_00_tkeep(7 downto 0);
  rx_AXIS_00_1_TLAST <= rx_AXIS_00_tlast;
  rx_AXIS_00_1_TVALID <= rx_AXIS_00_tvalid;
  rx_AXIS_00_tready <= rx_AXIS_00_1_TREADY;
  rx_AXIS_01_1_TDATA(63 downto 0) <= rx_AXIS_01_tdata(63 downto 0);
  rx_AXIS_01_1_TKEEP(7 downto 0) <= rx_AXIS_01_tkeep(7 downto 0);
  rx_AXIS_01_1_TLAST <= rx_AXIS_01_tlast;
  rx_AXIS_01_1_TVALID <= rx_AXIS_01_tvalid;
  rx_AXIS_01_tready <= rx_AXIS_01_1_TREADY;
  rx_AXIS_10_1_TDATA(63 downto 0) <= rx_AXIS_10_tdata(63 downto 0);
  rx_AXIS_10_1_TKEEP(7 downto 0) <= rx_AXIS_10_tkeep(7 downto 0);
  rx_AXIS_10_1_TLAST <= rx_AXIS_10_tlast;
  rx_AXIS_10_1_TVALID <= rx_AXIS_10_tvalid;
  rx_AXIS_10_tready <= rx_AXIS_10_1_TREADY;
  rx_AXIS_11_1_TDATA(63 downto 0) <= rx_AXIS_11_tdata(63 downto 0);
  rx_AXIS_11_1_TKEEP(7 downto 0) <= rx_AXIS_11_tkeep(7 downto 0);
  rx_AXIS_11_1_TLAST <= rx_AXIS_11_tlast;
  rx_AXIS_11_1_TVALID <= rx_AXIS_11_tvalid;
  rx_AXIS_11_tready <= rx_AXIS_11_1_TREADY;
  rx_aclk_10_1 <= rx_aclk_10;
  rx_aclk_11_1 <= rx_aclk_11;
  s_axis_aclk_0_0_1 <= rx_aclk_00;
  s_axis_aresetn_0_0_1 <= s_axis_aresetn_0;
  stat_rx_pause_req_10_i_1(8 downto 0) <= stat_rx_pause_req_10_i(8 downto 0);
  stat_rx_pause_req_11_i_1(8 downto 0) <= stat_rx_pause_req_11_i(8 downto 0);
  stat_tx_pause_valid_10_i_1(8 downto 0) <= stat_tx_pause_valid_10_i(8 downto 0);
  stat_tx_pause_valid_11_i_1(8 downto 0) <= stat_tx_pause_valid_11_i(8 downto 0);
  to_MAC01_is_MAC2_m_axis_0_TREADY <= tx_AXIS_01_tready;
  to_MAC01_is_MAC3_m_axis_01_TREADY <= tx_AXIS_11_tready;
  to_MAC10_is_MAC1_m_axis_01_TREADY <= tx_AXIS_10_tready;
  to_MAC10_is_MAC2_m_axis_01_TREADY <= tx_AXIS_00_tready;
  tx_AXIS_00_tdata(63 downto 0) <= to_MAC10_is_MAC2_m_axis_01_TDATA(63 downto 0);
  tx_AXIS_00_tkeep(7 downto 0) <= to_MAC10_is_MAC2_m_axis_01_TKEEP(7 downto 0);
  tx_AXIS_00_tlast <= to_MAC10_is_MAC2_m_axis_01_TLAST;
  tx_AXIS_00_tvalid <= to_MAC10_is_MAC2_m_axis_01_TVALID;
  tx_AXIS_01_tdata(63 downto 0) <= to_MAC01_is_MAC2_m_axis_0_TDATA(63 downto 0);
  tx_AXIS_01_tkeep(7 downto 0) <= to_MAC01_is_MAC2_m_axis_0_TKEEP(7 downto 0);
  tx_AXIS_01_tlast <= to_MAC01_is_MAC2_m_axis_0_TLAST;
  tx_AXIS_01_tvalid <= to_MAC01_is_MAC2_m_axis_0_TVALID;
  tx_AXIS_10_tdata(63 downto 0) <= to_MAC10_is_MAC1_m_axis_01_TDATA(63 downto 0);
  tx_AXIS_10_tkeep(7 downto 0) <= to_MAC10_is_MAC1_m_axis_01_TKEEP(7 downto 0);
  tx_AXIS_10_tlast <= to_MAC10_is_MAC1_m_axis_01_TLAST;
  tx_AXIS_10_tvalid <= to_MAC10_is_MAC1_m_axis_01_TVALID;
  tx_AXIS_11_tdata(63 downto 0) <= to_MAC01_is_MAC3_m_axis_01_TDATA(63 downto 0);
  tx_AXIS_11_tkeep(7 downto 0) <= to_MAC01_is_MAC3_m_axis_01_TKEEP(7 downto 0);
  tx_AXIS_11_tlast <= to_MAC01_is_MAC3_m_axis_01_TLAST;
  tx_AXIS_11_tvalid <= to_MAC01_is_MAC3_m_axis_01_TVALID;
  tx_aclk_10_1 <= tx_aclk_10;
  tx_aclk_11_1 <= tx_aclk_11;
  tx_clk_01_0_1 <= tx_aclk_01;
  tx_pause_req_00_o(8 downto 0) <= from_MAC00_is_MAC0_o_ctl_tx_pause_req_0(8 downto 0);
  tx_pause_req_01_o(8 downto 0) <= from_MAC01_is_MAC2_o_ctl_tx_pause_req_0(8 downto 0);
  tx_pause_req_10_o(8 downto 0) <= from_MAC00_is_MAC1_o_ctl_tx_pause_req_0(8 downto 0);
  tx_pause_req_11_o(8 downto 0) <= from_MAC01_is_MAC3_o_ctl_tx_pause_req_0(8 downto 0);
  tx_resend_pause_00_o <= from_MAC00_is_MAC0_o_ctl_tx_resend_pause_0;
  tx_resend_pause_01_o <= from_MAC01_is_MAC2_o_ctl_tx_resend_pause_0;
  tx_resend_pause_10_o <= from_MAC00_is_MAC1_o_ctl_tx_resend_pause_0;
  tx_resend_pause_11_o <= from_MAC01_is_MAC3_o_ctl_tx_resend_pause_0;
MCDI: entity work.MCDI_imp_1O7F6XG
     port map (
      S00_AXIS_tdata(511 downto 0) => from_MAC10_is_MAC2_m1_axis_TDATA(511 downto 0),
      S00_AXIS_tdest(1 downto 0) => from_MAC10_is_MAC2_m1_axis_TDEST(1 downto 0),
      S00_AXIS_tkeep(63 downto 0) => from_MAC10_is_MAC2_m1_axis_TKEEP(63 downto 0),
      S00_AXIS_tlast => from_MAC10_is_MAC2_m1_axis_TLAST,
      S00_AXIS_tready => from_MAC10_is_MAC2_m1_axis_TREADY,
      S00_AXIS_tvalid => from_MAC10_is_MAC2_m1_axis_TVALID,
      S01_AXIS_tdata(511 downto 0) => from_MAC01_is_MAC3_m1_axis_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => from_MAC01_is_MAC3_m1_axis_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => from_MAC01_is_MAC3_m1_axis_TKEEP(63 downto 0),
      S01_AXIS_tlast => from_MAC01_is_MAC3_m1_axis_TLAST,
      S01_AXIS_tready => from_MAC01_is_MAC3_m1_axis_TREADY,
      S01_AXIS_tvalid => from_MAC01_is_MAC3_m1_axis_TVALID,
      clk_200M => clk_wiz_0_clk_200M,
      m0_axis_MCDI_tdata(511 downto 0) => MCDI_m0_axis_MCDI_TDATA(511 downto 0),
      m0_axis_MCDI_tdest(1 downto 0) => MCDI_m0_axis_MCDI_TDEST(1 downto 0),
      m0_axis_MCDI_tkeep(63 downto 0) => MCDI_m0_axis_MCDI_TKEEP(63 downto 0),
      m0_axis_MCDI_tlast => MCDI_m0_axis_MCDI_TLAST,
      m0_axis_MCDI_tready => MCDI_m0_axis_MCDI_TREADY,
      m0_axis_MCDI_tvalid => MCDI_m0_axis_MCDI_TVALID,
      m1_axis_tdata(511 downto 0) => MCDI_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => MCDI_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => MCDI_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => MCDI_m1_axis_TLAST,
      m1_axis_tready => MCDI_m1_axis_TREADY,
      m1_axis_tvalid => MCDI_m1_axis_TVALID,
      port0_mode(1 downto 0) => port0_mode_1(1 downto 0),
      port1_mode(1 downto 0) => port1_mode_1(1 downto 0),
      s_axi_aresetn => clk_wiz_0_locked
    );
PS: entity work.PS_imp_9B4UWJ
     port map (
      M_AXIS_MM2S_tdata(511 downto 0) => PS_M_AXIS_MM2S_TDATA(511 downto 0),
      M_AXIS_MM2S_tdest(3 downto 0) => PS_M_AXIS_MM2S_TDEST(3 downto 0),
      M_AXIS_MM2S_tid(7 downto 0) => PS_M_AXIS_MM2S_TID(7 downto 0),
      M_AXIS_MM2S_tkeep(63 downto 0) => PS_M_AXIS_MM2S_TKEEP(63 downto 0),
      M_AXIS_MM2S_tlast => PS_M_AXIS_MM2S_TLAST,
      M_AXIS_MM2S_tready => PS_M_AXIS_MM2S_TREADY,
      M_AXIS_MM2S_tuser(15 downto 0) => PS_M_AXIS_MM2S_TUSER(15 downto 0),
      M_AXIS_MM2S_tvalid => PS_M_AXIS_MM2S_TVALID,
      M_AXI_HPM0_LPD_araddr(39 downto 0) => PS_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      M_AXI_HPM0_LPD_arburst(1 downto 0) => PS_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      M_AXI_HPM0_LPD_arcache(3 downto 0) => PS_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      M_AXI_HPM0_LPD_arid(15 downto 0) => PS_M_AXI_HPM0_LPD_ARID(15 downto 0),
      M_AXI_HPM0_LPD_arlen(7 downto 0) => PS_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      M_AXI_HPM0_LPD_arlock(0) => PS_M_AXI_HPM0_LPD_ARLOCK(0),
      M_AXI_HPM0_LPD_arprot(2 downto 0) => PS_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      M_AXI_HPM0_LPD_arqos(3 downto 0) => PS_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      M_AXI_HPM0_LPD_arready => PS_M_AXI_HPM0_LPD_ARREADY,
      M_AXI_HPM0_LPD_arsize(2 downto 0) => PS_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      M_AXI_HPM0_LPD_aruser(15 downto 0) => PS_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      M_AXI_HPM0_LPD_arvalid => PS_M_AXI_HPM0_LPD_ARVALID,
      M_AXI_HPM0_LPD_awaddr(39 downto 0) => PS_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      M_AXI_HPM0_LPD_awburst(1 downto 0) => PS_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      M_AXI_HPM0_LPD_awcache(3 downto 0) => PS_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      M_AXI_HPM0_LPD_awid(15 downto 0) => PS_M_AXI_HPM0_LPD_AWID(15 downto 0),
      M_AXI_HPM0_LPD_awlen(7 downto 0) => PS_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      M_AXI_HPM0_LPD_awlock(0) => PS_M_AXI_HPM0_LPD_AWLOCK(0),
      M_AXI_HPM0_LPD_awprot(2 downto 0) => PS_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      M_AXI_HPM0_LPD_awqos(3 downto 0) => PS_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      M_AXI_HPM0_LPD_awready => PS_M_AXI_HPM0_LPD_AWREADY,
      M_AXI_HPM0_LPD_awsize(2 downto 0) => PS_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      M_AXI_HPM0_LPD_awuser(15 downto 0) => PS_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      M_AXI_HPM0_LPD_awvalid => PS_M_AXI_HPM0_LPD_AWVALID,
      M_AXI_HPM0_LPD_bid(15 downto 0) => PS_M_AXI_HPM0_LPD_BID(15 downto 0),
      M_AXI_HPM0_LPD_bready => PS_M_AXI_HPM0_LPD_BREADY,
      M_AXI_HPM0_LPD_bresp(1 downto 0) => PS_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      M_AXI_HPM0_LPD_bvalid => PS_M_AXI_HPM0_LPD_BVALID,
      M_AXI_HPM0_LPD_rdata(31 downto 0) => PS_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      M_AXI_HPM0_LPD_rid(15 downto 0) => PS_M_AXI_HPM0_LPD_RID(15 downto 0),
      M_AXI_HPM0_LPD_rlast => PS_M_AXI_HPM0_LPD_RLAST,
      M_AXI_HPM0_LPD_rready => PS_M_AXI_HPM0_LPD_RREADY,
      M_AXI_HPM0_LPD_rresp(1 downto 0) => PS_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      M_AXI_HPM0_LPD_rvalid => PS_M_AXI_HPM0_LPD_RVALID,
      M_AXI_HPM0_LPD_wdata(31 downto 0) => PS_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      M_AXI_HPM0_LPD_wlast => PS_M_AXI_HPM0_LPD_WLAST,
      M_AXI_HPM0_LPD_wready => PS_M_AXI_HPM0_LPD_WREADY,
      M_AXI_HPM0_LPD_wstrb(3 downto 0) => PS_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      M_AXI_HPM0_LPD_wvalid => PS_M_AXI_HPM0_LPD_WVALID,
      S00_AXIS_ACLK => clk_wiz_0_clk_200M,
      S_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => axis_interconnect_0_M00_AXIS_TDEST(3 downto 0),
      S_AXIS_tid(7 downto 0) => axis_interconnect_0_M00_AXIS_TID(7 downto 0),
      S_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      S_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      S_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      S_AXIS_tuser(15 downto 0) => axis_interconnect_0_M00_AXIS_TUSER(15 downto 0),
      S_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S_AXI_LITE_araddr(11 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(11 downto 0),
      S_AXI_LITE_arready => axi_interconnect_1_M00_AXI_ARREADY,
      S_AXI_LITE_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      S_AXI_LITE_awaddr(11 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(11 downto 0),
      S_AXI_LITE_awready => axi_interconnect_1_M00_AXI_AWREADY,
      S_AXI_LITE_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      S_AXI_LITE_bready => axi_interconnect_1_M00_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => axi_interconnect_1_M00_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => axi_interconnect_1_M00_AXI_WREADY,
      S_AXI_LITE_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      peripheral_aresetn(0) => qdma_axi_aresetn(0),
      pl_clk0 => qdma_axi_aclk,
      s_axis_aresetn_0 => clk_wiz_0_locked
    );
axi_gpio_0: component proj_blk_design_axi_gpio_0_0
     port map (
      gpio2_io_i(0) => dfx_decoupler_0_decouple_status,
      gpio_io_o(0) => axi_gpio_0_gpio_io_o(0),
      s_axi_aclk => clk_wiz_0_clk_200M,
      s_axi_araddr(8 downto 0) => axi_interconnect_1_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => clk_wiz_0_locked,
      s_axi_arready => axi_interconnect_1_M03_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_1_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_1_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_1_M03_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_1_M03_AXI_AWVALID,
      s_axi_bready => axi_interconnect_1_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_1_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_1_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M03_AXI_WVALID
    );
axi_gpio_1: component proj_blk_design_axi_gpio_1_0
     port map (
      gpio2_io_i(0) => dfx_decoupler_1_decouple_status,
      gpio_io_o(0) => axi_gpio_1_gpio_io_o(0),
      s_axi_aclk => clk_wiz_0_clk_200M,
      s_axi_araddr(8 downto 0) => axi_interconnect_1_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => clk_wiz_0_locked,
      s_axi_arready => axi_interconnect_1_M04_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_1_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_1_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_1_M04_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_1_M04_AXI_AWVALID,
      s_axi_bready => axi_interconnect_1_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_1_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_1_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M04_AXI_WVALID
    );
axi_gpio_2: component proj_blk_design_axi_gpio_2_0
     port map (
      gpio2_io_i(0) => dfx_decoupler_2_decouple_status,
      gpio_io_o(0) => axi_gpio_2_gpio_io_o(0),
      s_axi_aclk => clk_wiz_0_clk_200M,
      s_axi_araddr(8 downto 0) => axi_interconnect_1_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => clk_wiz_0_locked,
      s_axi_arready => axi_interconnect_1_M05_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_1_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_1_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_1_M05_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_1_M05_AXI_AWVALID,
      s_axi_bready => axi_interconnect_1_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_1_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_1_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M05_AXI_WVALID
    );
axi_gpio_3: component proj_blk_design_axi_gpio_3_0
     port map (
      gpio2_io_i(0) => dfx_decoupler_3_decouple_status,
      gpio_io_o(0) => axi_gpio_3_gpio_io_o(0),
      s_axi_aclk => clk_wiz_0_clk_200M,
      s_axi_araddr(8 downto 0) => axi_interconnect_1_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => clk_wiz_0_locked,
      s_axi_arready => axi_interconnect_1_M06_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_1_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_1_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_1_M06_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_1_M06_AXI_AWVALID,
      s_axi_bready => axi_interconnect_1_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_1_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_1_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_1_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_1_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_1_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_1_M06_AXI_WVALID
    );
axi_interconnect_1: entity work.proj_blk_design_axi_interconnect_1_0
     port map (
      ACLK => qdma_axi_aclk,
      ARESETN => qdma_axi_aresetn(0),
      M00_ACLK => qdma_axi_aclk,
      M00_ARESETN => qdma_axi_aresetn(0),
      M00_AXI_araddr(11 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(11 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(11 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(11 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_200M,
      M01_ARESETN => clk_wiz_0_locked,
      M01_AXI_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => axi_interconnect_1_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_interconnect_1_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_1_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => axi_interconnect_1_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_interconnect_1_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_1_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_1_M01_AXI_WVALID,
      M02_ACLK => clk_wiz_0_clk_200M,
      M02_ARESETN => clk_wiz_0_locked,
      M02_AXI_araddr(39 downto 0) => axi_interconnect_1_M02_AXI_ARADDR(39 downto 0),
      M02_AXI_arprot(2 downto 0) => axi_interconnect_1_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => axi_interconnect_1_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_1_M02_AXI_ARVALID,
      M02_AXI_awaddr(39 downto 0) => axi_interconnect_1_M02_AXI_AWADDR(39 downto 0),
      M02_AXI_awprot(2 downto 0) => axi_interconnect_1_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => axi_interconnect_1_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_1_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_1_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_1_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_1_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_1_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_1_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_1_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_1_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_1_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_1_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_1_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_1_M02_AXI_WVALID,
      M03_ACLK => clk_wiz_0_clk_200M,
      M03_ARESETN => clk_wiz_0_locked,
      M03_AXI_araddr(8 downto 0) => axi_interconnect_1_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arready => axi_interconnect_1_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_1_M03_AXI_ARVALID,
      M03_AXI_awaddr(8 downto 0) => axi_interconnect_1_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awready => axi_interconnect_1_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_1_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_1_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_1_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_1_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_1_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_1_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_1_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_1_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_1_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_1_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_1_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_interconnect_1_M03_AXI_WVALID,
      M04_ACLK => clk_wiz_0_clk_200M,
      M04_ARESETN => clk_wiz_0_locked,
      M04_AXI_araddr(8 downto 0) => axi_interconnect_1_M04_AXI_ARADDR(8 downto 0),
      M04_AXI_arready => axi_interconnect_1_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_1_M04_AXI_ARVALID,
      M04_AXI_awaddr(8 downto 0) => axi_interconnect_1_M04_AXI_AWADDR(8 downto 0),
      M04_AXI_awready => axi_interconnect_1_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_1_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_1_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_interconnect_1_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_interconnect_1_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_1_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_1_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_interconnect_1_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_interconnect_1_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_1_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_1_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_1_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_1_M04_AXI_WVALID,
      M05_ACLK => clk_wiz_0_clk_200M,
      M05_ARESETN => clk_wiz_0_locked,
      M05_AXI_araddr(8 downto 0) => axi_interconnect_1_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arready => axi_interconnect_1_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_interconnect_1_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => axi_interconnect_1_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awready => axi_interconnect_1_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_interconnect_1_M05_AXI_AWVALID,
      M05_AXI_bready => axi_interconnect_1_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_interconnect_1_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_interconnect_1_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_interconnect_1_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_interconnect_1_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_interconnect_1_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_interconnect_1_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_interconnect_1_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_interconnect_1_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_interconnect_1_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_interconnect_1_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_0_clk_200M,
      M06_ARESETN => clk_wiz_0_locked,
      M06_AXI_araddr(8 downto 0) => axi_interconnect_1_M06_AXI_ARADDR(8 downto 0),
      M06_AXI_arready => axi_interconnect_1_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_interconnect_1_M06_AXI_ARVALID,
      M06_AXI_awaddr(8 downto 0) => axi_interconnect_1_M06_AXI_AWADDR(8 downto 0),
      M06_AXI_awready => axi_interconnect_1_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_interconnect_1_M06_AXI_AWVALID,
      M06_AXI_bready => axi_interconnect_1_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_interconnect_1_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_interconnect_1_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_interconnect_1_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_interconnect_1_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_interconnect_1_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_interconnect_1_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_interconnect_1_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_interconnect_1_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_interconnect_1_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_interconnect_1_M06_AXI_WVALID,
      S00_ACLK => qdma_axi_aclk,
      S00_ARESETN => qdma_axi_aresetn(0),
      S00_AXI_araddr(39 downto 0) => PS_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => PS_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => PS_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => PS_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => PS_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => PS_M_AXI_HPM0_LPD_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => PS_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => PS_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready => PS_M_AXI_HPM0_LPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => PS_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => PS_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => PS_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => PS_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => PS_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => PS_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => PS_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => PS_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => PS_M_AXI_HPM0_LPD_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => PS_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => PS_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready => PS_M_AXI_HPM0_LPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => PS_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => PS_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => PS_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => PS_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready => PS_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => PS_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid => PS_M_AXI_HPM0_LPD_BVALID,
      S00_AXI_rdata(31 downto 0) => PS_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => PS_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast => PS_M_AXI_HPM0_LPD_RLAST,
      S00_AXI_rready => PS_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => PS_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid => PS_M_AXI_HPM0_LPD_RVALID,
      S00_AXI_wdata(31 downto 0) => PS_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast => PS_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready => PS_M_AXI_HPM0_LPD_WREADY,
      S00_AXI_wstrb(3 downto 0) => PS_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid => PS_M_AXI_HPM0_LPD_WVALID
    );
axis_interconnect_0: entity work.proj_blk_design_axis_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_200M,
      ARESETN => clk_wiz_0_locked,
      M00_AXIS_ACLK => clk_wiz_0_clk_200M,
      M00_AXIS_ARESETN => clk_wiz_0_locked,
      M00_AXIS_tdata(511 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tdest(3 downto 0) => axis_interconnect_0_M00_AXIS_TDEST(3 downto 0),
      M00_AXIS_tid(7 downto 0) => axis_interconnect_0_M00_AXIS_TID(7 downto 0),
      M00_AXIS_tkeep(63 downto 0) => axis_interconnect_0_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tuser(15 downto 0) => axis_interconnect_0_M00_AXIS_TUSER(15 downto 0),
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      S00_ARB_REQ_SUPPRESS => '0',
      S00_AXIS_ACLK => clk_wiz_0_clk_200M,
      S00_AXIS_ARESETN => clk_wiz_0_locked,
      S00_AXIS_tdata(511 downto 0) => MCDI_m0_axis_MCDI_TDATA(511 downto 0),
      S00_AXIS_tdest(1 downto 0) => MCDI_m0_axis_MCDI_TDEST(1 downto 0),
      S00_AXIS_tkeep(63 downto 0) => MCDI_m0_axis_MCDI_TKEEP(63 downto 0),
      S00_AXIS_tlast => MCDI_m0_axis_MCDI_TLAST,
      S00_AXIS_tready => MCDI_m0_axis_MCDI_TREADY,
      S00_AXIS_tvalid => MCDI_m0_axis_MCDI_TVALID,
      S01_ARB_REQ_SUPPRESS => '0',
      S01_AXIS_ACLK => clk_wiz_0_clk_200M,
      S01_AXIS_ARESETN => clk_wiz_0_locked,
      S01_AXIS_tdata(47 downto 0) => dfx_decoupler_3_s_intf_2_TDATA(47 downto 0),
      S01_AXIS_tready => dfx_decoupler_3_s_intf_2_TREADY,
      S01_AXIS_tvalid => dfx_decoupler_3_s_intf_2_TVALID
    );
clk_wiz_0: component proj_blk_design_clk_wiz_0_0
     port map (
      clk_100M => clk_wiz_0_clk_100M,
      clk_200M => clk_wiz_0_clk_200M,
      clk_400M => clk_wiz_0_clk_400M,
      clk_in1 => clk_in1_0_1,
      locked => clk_wiz_0_locked,
      resetn => qdma_axi_aresetn(0)
    );
dfx_decoupler_0: component proj_blk_design_dfx_decoupler_0_0
     port map (
      decouple => axi_gpio_0_gpio_io_o(0),
      decouple_status => dfx_decoupler_0_decouple_status,
      rp_intf_0_TDATA(511 downto 0) => from_MAC00_is_MAC0_m1_axis_TDATA(511 downto 0),
      rp_intf_0_TDEST(1 downto 0) => from_MAC00_is_MAC0_m1_axis_TDEST(1 downto 0),
      rp_intf_0_TKEEP(63 downto 0) => from_MAC00_is_MAC0_m1_axis_TKEEP(63 downto 0),
      rp_intf_0_TLAST => from_MAC00_is_MAC0_m1_axis_TLAST,
      rp_intf_0_TREADY => from_MAC00_is_MAC0_m1_axis_TREADY,
      rp_intf_0_TVALID => from_MAC00_is_MAC0_m1_axis_TVALID,
      rp_intf_1_TDATA(511 downto 0) => from_MAC00_is_MAC1_m1_axis_TDATA(511 downto 0),
      rp_intf_1_TDEST(1 downto 0) => from_MAC00_is_MAC1_m1_axis_TDEST(1 downto 0),
      rp_intf_1_TKEEP(63 downto 0) => from_MAC00_is_MAC1_m1_axis_TKEEP(63 downto 0),
      rp_intf_1_TLAST => from_MAC00_is_MAC1_m1_axis_TLAST,
      rp_intf_1_TREADY => from_MAC00_is_MAC1_m1_axis_TREADY,
      rp_intf_1_TVALID => from_MAC00_is_MAC1_m1_axis_TVALID,
      rp_intf_2_TDATA(511 downto 0) => MCDI_m1_axis_TDATA(511 downto 0),
      rp_intf_2_TDEST(1 downto 0) => MCDI_m1_axis_TDEST(1 downto 0),
      rp_intf_2_TKEEP(63 downto 0) => MCDI_m1_axis_TKEEP(63 downto 0),
      rp_intf_2_TLAST => MCDI_m1_axis_TLAST,
      rp_intf_2_TREADY => MCDI_m1_axis_TREADY,
      rp_intf_2_TVALID => MCDI_m1_axis_TVALID,
      s_intf_0_TDATA(511 downto 0) => dfx_decoupler_0_s_intf_0_TDATA(511 downto 0),
      s_intf_0_TDEST(1 downto 0) => dfx_decoupler_0_s_intf_0_TDEST(1 downto 0),
      s_intf_0_TKEEP(63 downto 0) => dfx_decoupler_0_s_intf_0_TKEEP(63 downto 0),
      s_intf_0_TLAST => dfx_decoupler_0_s_intf_0_TLAST,
      s_intf_0_TREADY => dfx_decoupler_0_s_intf_0_TREADY,
      s_intf_0_TVALID => dfx_decoupler_0_s_intf_0_TVALID,
      s_intf_1_TDATA(511 downto 0) => dfx_decoupler_0_s_intf_1_TDATA(511 downto 0),
      s_intf_1_TDEST(1 downto 0) => dfx_decoupler_0_s_intf_1_TDEST(1 downto 0),
      s_intf_1_TKEEP(63 downto 0) => dfx_decoupler_0_s_intf_1_TKEEP(63 downto 0),
      s_intf_1_TLAST => dfx_decoupler_0_s_intf_1_TLAST,
      s_intf_1_TREADY => dfx_decoupler_0_s_intf_1_TREADY,
      s_intf_1_TVALID => dfx_decoupler_0_s_intf_1_TVALID,
      s_intf_2_TDATA(511 downto 0) => dfx_decoupler_0_s_intf_2_TDATA(511 downto 0),
      s_intf_2_TDEST(1 downto 0) => dfx_decoupler_0_s_intf_2_TDEST(1 downto 0),
      s_intf_2_TKEEP(63 downto 0) => dfx_decoupler_0_s_intf_2_TKEEP(63 downto 0),
      s_intf_2_TLAST => dfx_decoupler_0_s_intf_2_TLAST,
      s_intf_2_TREADY => dfx_decoupler_0_s_intf_2_TREADY,
      s_intf_2_TVALID => dfx_decoupler_0_s_intf_2_TVALID
    );
dfx_decoupler_1: component proj_blk_design_dfx_decoupler_1_0
     port map (
      decouple => axi_gpio_1_gpio_io_o(0),
      decouple_status => dfx_decoupler_1_decouple_status,
      rp_intf_0_ARADDR(39 downto 0) => axi_interconnect_1_M02_AXI_ARADDR(39 downto 0),
      rp_intf_0_ARPROT(2 downto 0) => axi_interconnect_1_M02_AXI_ARPROT(2 downto 0),
      rp_intf_0_ARQOS(3 downto 0) => B"0000",
      rp_intf_0_ARREADY => axi_interconnect_1_M02_AXI_ARREADY,
      rp_intf_0_ARREGION(3 downto 0) => B"0000",
      rp_intf_0_ARVALID => axi_interconnect_1_M02_AXI_ARVALID,
      rp_intf_0_AWADDR(39 downto 0) => axi_interconnect_1_M02_AXI_AWADDR(39 downto 0),
      rp_intf_0_AWPROT(2 downto 0) => axi_interconnect_1_M02_AXI_AWPROT(2 downto 0),
      rp_intf_0_AWQOS(3 downto 0) => B"0000",
      rp_intf_0_AWREADY => axi_interconnect_1_M02_AXI_AWREADY,
      rp_intf_0_AWREGION(3 downto 0) => B"0000",
      rp_intf_0_AWVALID => axi_interconnect_1_M02_AXI_AWVALID,
      rp_intf_0_BREADY => axi_interconnect_1_M02_AXI_BREADY,
      rp_intf_0_BRESP(1 downto 0) => axi_interconnect_1_M02_AXI_BRESP(1 downto 0),
      rp_intf_0_BVALID => axi_interconnect_1_M02_AXI_BVALID,
      rp_intf_0_RDATA(31 downto 0) => axi_interconnect_1_M02_AXI_RDATA(31 downto 0),
      rp_intf_0_RREADY => axi_interconnect_1_M02_AXI_RREADY,
      rp_intf_0_RRESP(1 downto 0) => axi_interconnect_1_M02_AXI_RRESP(1 downto 0),
      rp_intf_0_RVALID => axi_interconnect_1_M02_AXI_RVALID,
      rp_intf_0_WDATA(31 downto 0) => axi_interconnect_1_M02_AXI_WDATA(31 downto 0),
      rp_intf_0_WREADY => axi_interconnect_1_M02_AXI_WREADY,
      rp_intf_0_WSTRB(3 downto 0) => axi_interconnect_1_M02_AXI_WSTRB(3 downto 0),
      rp_intf_0_WVALID => axi_interconnect_1_M02_AXI_WVALID,
      s_intf_0_ARADDR(39 downto 0) => dfx_decoupler_1_s_intf_0_ARADDR(39 downto 0),
      s_intf_0_ARPROT(2 downto 0) => dfx_decoupler_1_s_intf_0_ARPROT(2 downto 0),
      s_intf_0_ARQOS(3 downto 0) => dfx_decoupler_1_s_intf_0_ARQOS(3 downto 0),
      s_intf_0_ARREADY => dfx_decoupler_1_s_intf_0_ARREADY,
      s_intf_0_ARREGION(3 downto 0) => dfx_decoupler_1_s_intf_0_ARREGION(3 downto 0),
      s_intf_0_ARVALID => dfx_decoupler_1_s_intf_0_ARVALID,
      s_intf_0_AWADDR(39 downto 0) => dfx_decoupler_1_s_intf_0_AWADDR(39 downto 0),
      s_intf_0_AWPROT(2 downto 0) => dfx_decoupler_1_s_intf_0_AWPROT(2 downto 0),
      s_intf_0_AWQOS(3 downto 0) => dfx_decoupler_1_s_intf_0_AWQOS(3 downto 0),
      s_intf_0_AWREADY => dfx_decoupler_1_s_intf_0_AWREADY,
      s_intf_0_AWREGION(3 downto 0) => dfx_decoupler_1_s_intf_0_AWREGION(3 downto 0),
      s_intf_0_AWVALID => dfx_decoupler_1_s_intf_0_AWVALID,
      s_intf_0_BREADY => dfx_decoupler_1_s_intf_0_BREADY,
      s_intf_0_BRESP(1 downto 0) => dfx_decoupler_1_s_intf_0_BRESP(1 downto 0),
      s_intf_0_BVALID => dfx_decoupler_1_s_intf_0_BVALID,
      s_intf_0_RDATA(31 downto 0) => dfx_decoupler_1_s_intf_0_RDATA(31 downto 0),
      s_intf_0_RREADY => dfx_decoupler_1_s_intf_0_RREADY,
      s_intf_0_RRESP(1 downto 0) => dfx_decoupler_1_s_intf_0_RRESP(1 downto 0),
      s_intf_0_RVALID => dfx_decoupler_1_s_intf_0_RVALID,
      s_intf_0_WDATA(31 downto 0) => dfx_decoupler_1_s_intf_0_WDATA(31 downto 0),
      s_intf_0_WREADY => dfx_decoupler_1_s_intf_0_WREADY,
      s_intf_0_WSTRB(3 downto 0) => dfx_decoupler_1_s_intf_0_WSTRB(3 downto 0),
      s_intf_0_WVALID => dfx_decoupler_1_s_intf_0_WVALID
    );
dfx_decoupler_2: component proj_blk_design_dfx_decoupler_2_0
     port map (
      decouple => axi_gpio_2_gpio_io_o(0),
      decouple_status => dfx_decoupler_2_decouple_status,
      rp_intf_0_TDATA(511 downto 0) => rp_intf_0_0_1_TDATA(511 downto 0),
      rp_intf_0_TDEST(3 downto 0) => rp_intf_0_0_1_TDEST(3 downto 0),
      rp_intf_0_TKEEP(63 downto 0) => rp_intf_0_0_1_TKEEP(63 downto 0),
      rp_intf_0_TLAST => rp_intf_0_0_1_TLAST,
      rp_intf_0_TREADY => rp_intf_0_0_1_TREADY,
      rp_intf_0_TVALID => rp_intf_0_0_1_TVALID,
      rp_intf_1_TDATA(511 downto 0) => rp_intf_1_0_1_TDATA(511 downto 0),
      rp_intf_1_TDEST(3 downto 0) => rp_intf_1_0_1_TDEST(3 downto 0),
      rp_intf_1_TKEEP(63 downto 0) => rp_intf_1_0_1_TKEEP(63 downto 0),
      rp_intf_1_TLAST => rp_intf_1_0_1_TLAST,
      rp_intf_1_TREADY => rp_intf_1_0_1_TREADY,
      rp_intf_1_TVALID => rp_intf_1_0_1_TVALID,
      s_intf_0_TDATA(511 downto 0) => dfx_decoupler_2_s_intf_0_TDATA(511 downto 0),
      s_intf_0_TDEST(3 downto 0) => dfx_decoupler_2_s_intf_0_TDEST(3 downto 0),
      s_intf_0_TKEEP(63 downto 0) => dfx_decoupler_2_s_intf_0_TKEEP(63 downto 0),
      s_intf_0_TLAST => dfx_decoupler_2_s_intf_0_TLAST,
      s_intf_0_TREADY => dfx_decoupler_2_s_intf_0_TREADY,
      s_intf_0_TVALID => dfx_decoupler_2_s_intf_0_TVALID,
      s_intf_1_TDATA(511 downto 0) => dfx_decoupler_2_s_intf_1_TDATA(511 downto 0),
      s_intf_1_TDEST(3 downto 0) => dfx_decoupler_2_s_intf_1_TDEST(3 downto 0),
      s_intf_1_TKEEP(63 downto 0) => dfx_decoupler_2_s_intf_1_TKEEP(63 downto 0),
      s_intf_1_TLAST => dfx_decoupler_2_s_intf_1_TLAST,
      s_intf_1_TREADY => dfx_decoupler_2_s_intf_1_TREADY,
      s_intf_1_TVALID => dfx_decoupler_2_s_intf_1_TVALID
    );
dfx_decoupler_3: component proj_blk_design_dfx_decoupler_3_0
     port map (
      decouple => axi_gpio_3_gpio_io_o(0),
      decouple_status => dfx_decoupler_3_decouple_status,
      rp_intf_0_TDATA(511 downto 0) => rp_intf_0_0_2_TDATA(511 downto 0),
      rp_intf_0_TDEST(3 downto 0) => rp_intf_0_0_2_TDEST(3 downto 0),
      rp_intf_0_TKEEP(63 downto 0) => rp_intf_0_0_2_TKEEP(63 downto 0),
      rp_intf_0_TLAST => rp_intf_0_0_2_TLAST,
      rp_intf_0_TREADY => rp_intf_0_0_2_TREADY,
      rp_intf_0_TVALID => rp_intf_0_0_2_TVALID,
      rp_intf_1_TDATA(511 downto 0) => rp_intf_1_0_2_TDATA(511 downto 0),
      rp_intf_1_TDEST(3 downto 0) => rp_intf_1_0_2_TDEST(3 downto 0),
      rp_intf_1_TKEEP(63 downto 0) => rp_intf_1_0_2_TKEEP(63 downto 0),
      rp_intf_1_TLAST => rp_intf_1_0_2_TLAST,
      rp_intf_1_TREADY => rp_intf_1_0_2_TREADY,
      rp_intf_1_TVALID => rp_intf_1_0_2_TVALID,
      rp_intf_2_TDATA(47 downto 0) => rp_intf_2_0_1_TDATA(47 downto 0),
      rp_intf_2_TREADY => rp_intf_2_0_1_TREADY,
      rp_intf_2_TVALID => rp_intf_2_0_1_TVALID,
      s_intf_0_TDATA(511 downto 0) => dfx_decoupler_3_s_intf_0_TDATA(511 downto 0),
      s_intf_0_TDEST(3 downto 0) => dfx_decoupler_3_s_intf_0_TDEST(3 downto 0),
      s_intf_0_TKEEP(63 downto 0) => dfx_decoupler_3_s_intf_0_TKEEP(63 downto 0),
      s_intf_0_TLAST => dfx_decoupler_3_s_intf_0_TLAST,
      s_intf_0_TREADY => dfx_decoupler_3_s_intf_0_TREADY,
      s_intf_0_TVALID => dfx_decoupler_3_s_intf_0_TVALID,
      s_intf_1_TDATA(511 downto 0) => dfx_decoupler_3_s_intf_1_TDATA(511 downto 0),
      s_intf_1_TDEST(3 downto 0) => dfx_decoupler_3_s_intf_1_TDEST(3 downto 0),
      s_intf_1_TKEEP(63 downto 0) => dfx_decoupler_3_s_intf_1_TKEEP(63 downto 0),
      s_intf_1_TLAST => dfx_decoupler_3_s_intf_1_TLAST,
      s_intf_1_TREADY => dfx_decoupler_3_s_intf_1_TREADY,
      s_intf_1_TVALID => dfx_decoupler_3_s_intf_1_TVALID,
      s_intf_2_TDATA(47 downto 0) => dfx_decoupler_3_s_intf_2_TDATA(47 downto 0),
      s_intf_2_TREADY => dfx_decoupler_3_s_intf_2_TREADY,
      s_intf_2_TVALID => dfx_decoupler_3_s_intf_2_TVALID
    );
from_MAC00_is_MAC0: entity work.from_MAC00_is_MAC0_imp_17V957Q
     port map (
      S_AXIS_00_tdata(63 downto 0) => rx_AXIS_00_1_TDATA(63 downto 0),
      S_AXIS_00_tkeep(7 downto 0) => rx_AXIS_00_1_TKEEP(7 downto 0),
      S_AXIS_00_tlast => rx_AXIS_00_1_TLAST,
      S_AXIS_00_tready => rx_AXIS_00_1_TREADY,
      S_AXIS_00_tvalid => rx_AXIS_00_1_TVALID,
      i_stat_tx_pause_valid_0(8 downto 0) => i_stat_tx_pause_valid_0_0_1(8 downto 0),
      m0_axis_tdata(511 downto 0) => from_MAC00_is_MAC0_m0_axis_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => from_MAC00_is_MAC0_m0_axis_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => from_MAC00_is_MAC0_m0_axis_TKEEP(63 downto 0),
      m0_axis_tlast => from_MAC00_is_MAC0_m0_axis_TLAST,
      m0_axis_tready => from_MAC00_is_MAC0_m0_axis_TREADY,
      m0_axis_tvalid => from_MAC00_is_MAC0_m0_axis_TVALID,
      m1_axis_tdata(511 downto 0) => from_MAC00_is_MAC0_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => from_MAC00_is_MAC0_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => from_MAC00_is_MAC0_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => from_MAC00_is_MAC0_m1_axis_TLAST,
      m1_axis_tready => from_MAC00_is_MAC0_m1_axis_TREADY,
      m1_axis_tvalid => from_MAC00_is_MAC0_m1_axis_TVALID,
      o_ctl_tx_pause_req_0(8 downto 0) => from_MAC00_is_MAC0_o_ctl_tx_pause_req_0(8 downto 0),
      o_ctl_tx_resend_pause_0 => from_MAC00_is_MAC0_o_ctl_tx_resend_pause_0,
      port0_mode(1 downto 0) => port0_mode_1(1 downto 0),
      s_axis_aclk_0 => s_axis_aclk_0_0_1,
      s_axis_aresetn_0 => s_axis_aresetn_0_0_1,
      usr_clk => clk_wiz_0_clk_200M,
      usr_resetn => clk_wiz_0_locked
    );
from_MAC01_is_MAC2: entity work.from_MAC01_is_MAC2_imp_16CIR4Y
     port map (
      S_AXIS_00_tdata(63 downto 0) => rx_AXIS_01_1_TDATA(63 downto 0),
      S_AXIS_00_tkeep(7 downto 0) => rx_AXIS_01_1_TKEEP(7 downto 0),
      S_AXIS_00_tlast => rx_AXIS_01_1_TLAST,
      S_AXIS_00_tready => rx_AXIS_01_1_TREADY,
      S_AXIS_00_tvalid => rx_AXIS_01_1_TVALID,
      i_stat_tx_pause_valid_0(8 downto 0) => i_stat_tx_pause_valid_0_0_2(8 downto 0),
      m0_axis_tdata(511 downto 0) => from_MAC01_is_MAC2_m0_axis_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => from_MAC01_is_MAC2_m0_axis_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => from_MAC01_is_MAC2_m0_axis_TKEEP(63 downto 0),
      m0_axis_tlast => from_MAC01_is_MAC2_m0_axis_TLAST,
      m0_axis_tready => from_MAC01_is_MAC2_m0_axis_TREADY,
      m0_axis_tvalid => from_MAC01_is_MAC2_m0_axis_TVALID,
      m1_axis_tdata(511 downto 0) => from_MAC10_is_MAC2_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => from_MAC10_is_MAC2_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => from_MAC10_is_MAC2_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => from_MAC10_is_MAC2_m1_axis_TLAST,
      m1_axis_tready => from_MAC10_is_MAC2_m1_axis_TREADY,
      m1_axis_tvalid => from_MAC10_is_MAC2_m1_axis_TVALID,
      o_ctl_tx_pause_req_0(8 downto 0) => from_MAC01_is_MAC2_o_ctl_tx_pause_req_0(8 downto 0),
      o_ctl_tx_resend_pause_0 => from_MAC01_is_MAC2_o_ctl_tx_resend_pause_0,
      port0_mode(1 downto 0) => port0_mode_1(1 downto 0),
      s_axis_aclk_0 => rx_aclk_01,
      s_axis_aresetn_0 => s_axis_aresetn_0_0_1,
      usr_clk => clk_wiz_0_clk_200M,
      usr_resetn => clk_wiz_0_locked
    );
from_MAC10_is_MAC1: entity work.from_MAC10_is_MAC1_imp_15M214P
     port map (
      S_AXIS_00_tdata(63 downto 0) => rx_AXIS_10_1_TDATA(63 downto 0),
      S_AXIS_00_tkeep(7 downto 0) => rx_AXIS_10_1_TKEEP(7 downto 0),
      S_AXIS_00_tlast => rx_AXIS_10_1_TLAST,
      S_AXIS_00_tready => rx_AXIS_10_1_TREADY,
      S_AXIS_00_tvalid => rx_AXIS_10_1_TVALID,
      i_stat_tx_pause_valid_0(8 downto 0) => stat_tx_pause_valid_10_i_1(8 downto 0),
      m0_axis_tdata(511 downto 0) => from_MAC10_is_MAC1_m0_axis_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => from_MAC10_is_MAC1_m0_axis_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => from_MAC10_is_MAC1_m0_axis_TKEEP(63 downto 0),
      m0_axis_tlast => from_MAC10_is_MAC1_m0_axis_TLAST,
      m0_axis_tready => from_MAC10_is_MAC1_m0_axis_TREADY,
      m0_axis_tvalid => from_MAC10_is_MAC1_m0_axis_TVALID,
      m1_axis_tdata(511 downto 0) => from_MAC00_is_MAC1_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => from_MAC00_is_MAC1_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => from_MAC00_is_MAC1_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => from_MAC00_is_MAC1_m1_axis_TLAST,
      m1_axis_tready => from_MAC00_is_MAC1_m1_axis_TREADY,
      m1_axis_tvalid => from_MAC00_is_MAC1_m1_axis_TVALID,
      o_ctl_tx_pause_req_0(8 downto 0) => from_MAC00_is_MAC1_o_ctl_tx_pause_req_0(8 downto 0),
      o_ctl_tx_resend_pause_0 => from_MAC00_is_MAC1_o_ctl_tx_resend_pause_0,
      port0_mode(1 downto 0) => port1_mode_1(1 downto 0),
      s_axis_aclk_0 => rx_aclk_10_1,
      s_axis_aresetn_0 => s_axis_aresetn_0_0_1,
      usr_clk => clk_wiz_0_clk_200M,
      usr_resetn => clk_wiz_0_locked
    );
from_MAC11_is_MAC3: entity work.from_MAC11_is_MAC3_imp_14X7M2L
     port map (
      S_AXIS_00_tdata(63 downto 0) => rx_AXIS_11_1_TDATA(63 downto 0),
      S_AXIS_00_tkeep(7 downto 0) => rx_AXIS_11_1_TKEEP(7 downto 0),
      S_AXIS_00_tlast => rx_AXIS_11_1_TLAST,
      S_AXIS_00_tready => rx_AXIS_11_1_TREADY,
      S_AXIS_00_tvalid => rx_AXIS_11_1_TVALID,
      i_stat_tx_pause_valid_0(8 downto 0) => stat_tx_pause_valid_11_i_1(8 downto 0),
      m0_axis_tdata(511 downto 0) => from_MAC11_is_MAC3_m0_axis_TDATA(511 downto 0),
      m0_axis_tdest(1 downto 0) => from_MAC11_is_MAC3_m0_axis_TDEST(1 downto 0),
      m0_axis_tkeep(63 downto 0) => from_MAC11_is_MAC3_m0_axis_TKEEP(63 downto 0),
      m0_axis_tlast => from_MAC11_is_MAC3_m0_axis_TLAST,
      m0_axis_tready => from_MAC11_is_MAC3_m0_axis_TREADY,
      m0_axis_tvalid => from_MAC11_is_MAC3_m0_axis_TVALID,
      m1_axis_tdata(511 downto 0) => from_MAC01_is_MAC3_m1_axis_TDATA(511 downto 0),
      m1_axis_tdest(1 downto 0) => from_MAC01_is_MAC3_m1_axis_TDEST(1 downto 0),
      m1_axis_tkeep(63 downto 0) => from_MAC01_is_MAC3_m1_axis_TKEEP(63 downto 0),
      m1_axis_tlast => from_MAC01_is_MAC3_m1_axis_TLAST,
      m1_axis_tready => from_MAC01_is_MAC3_m1_axis_TREADY,
      m1_axis_tvalid => from_MAC01_is_MAC3_m1_axis_TVALID,
      o_ctl_tx_pause_req_0(8 downto 0) => from_MAC01_is_MAC3_o_ctl_tx_pause_req_0(8 downto 0),
      o_ctl_tx_resend_pause_0 => from_MAC01_is_MAC3_o_ctl_tx_resend_pause_0,
      port0_mode(1 downto 0) => port1_mode_1(1 downto 0),
      s_axis_aclk_0 => rx_aclk_11_1,
      s_axis_aresetn_0 => s_axis_aresetn_0_0_1,
      usr_clk => clk_wiz_0_clk_200M,
      usr_resetn => clk_wiz_0_locked
    );
from_ps: entity work.from_ps_imp_IN897Q
     port map (
      M_AXIS1_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA(511 downto 0),
      M_AXIS1_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP(63 downto 0),
      M_AXIS1_tlast => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST,
      M_AXIS1_tready => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY,
      M_AXIS1_tvalid => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID,
      M_AXIS_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA(511 downto 0),
      M_AXIS_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP(63 downto 0),
      M_AXIS_tlast => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST,
      M_AXIS_tready => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY,
      M_AXIS_tvalid => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID,
      S_AXIS_tdata(511 downto 0) => PS_M_AXIS_MM2S_TDATA(511 downto 0),
      S_AXIS_tdest(3 downto 0) => PS_M_AXIS_MM2S_TDEST(3 downto 0),
      S_AXIS_tid(7 downto 0) => PS_M_AXIS_MM2S_TID(7 downto 0),
      S_AXIS_tkeep(63 downto 0) => PS_M_AXIS_MM2S_TKEEP(63 downto 0),
      S_AXIS_tlast => PS_M_AXIS_MM2S_TLAST,
      S_AXIS_tready => PS_M_AXIS_MM2S_TREADY,
      S_AXIS_tuser(15 downto 0) => PS_M_AXIS_MM2S_TUSER(15 downto 0),
      S_AXIS_tvalid => PS_M_AXIS_MM2S_TVALID,
      m1_axis_aclk => clk_wiz_0_clk_200M,
      s_axis_aclk => qdma_axi_aclk,
      s_axis_aresetn => clk_wiz_0_locked
    );
to_MAC00_is_MAC0: entity work.to_MAC00_is_MAC0_imp_Y6RFAR
     port map (
      S00_AXIS_tdata(511 downto 0) => dfx_decoupler_2_s_intf_0_TDATA(511 downto 0),
      S00_AXIS_tdest(3 downto 0) => dfx_decoupler_2_s_intf_0_TDEST(3 downto 0),
      S00_AXIS_tkeep(63 downto 0) => dfx_decoupler_2_s_intf_0_TKEEP(63 downto 0),
      S00_AXIS_tlast => dfx_decoupler_2_s_intf_0_TLAST,
      S00_AXIS_tready => dfx_decoupler_2_s_intf_0_TREADY,
      S00_AXIS_tvalid => dfx_decoupler_2_s_intf_0_TVALID,
      S01_AXIS_tdata(511 downto 0) => from_MAC01_is_MAC2_m0_axis_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => from_MAC01_is_MAC2_m0_axis_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => from_MAC01_is_MAC2_m0_axis_TKEEP(63 downto 0),
      S01_AXIS_tlast => from_MAC01_is_MAC2_m0_axis_TLAST,
      S01_AXIS_tready => from_MAC01_is_MAC2_m0_axis_TREADY,
      S01_AXIS_tvalid => from_MAC01_is_MAC2_m0_axis_TVALID,
      m_axis_01_tdata(63 downto 0) => to_MAC10_is_MAC2_m_axis_01_TDATA(63 downto 0),
      m_axis_01_tkeep(7 downto 0) => to_MAC10_is_MAC2_m_axis_01_TKEEP(7 downto 0),
      m_axis_01_tlast => to_MAC10_is_MAC2_m_axis_01_TLAST,
      m_axis_01_tready => to_MAC10_is_MAC2_m_axis_01_TREADY,
      m_axis_01_tvalid => to_MAC10_is_MAC2_m_axis_01_TVALID,
      s_axis_aresetn => s_axis_aresetn_0_0_1,
      stat_rx_pause_req_01_i(8 downto 0) => Din_0_0_1(8 downto 0),
      tx_clk_01 => M00_AXIS_ACLK_0_0_1,
      user_aresetn => clk_wiz_0_locked,
      usr_clk => clk_wiz_0_clk_200M
    );
to_MAC01_is_MAC2: entity work.to_MAC01_is_MAC2_imp_YVJQLZ
     port map (
      S00_AXIS_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TDATA(511 downto 0),
      S00_AXIS_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TKEEP(63 downto 0),
      S00_AXIS_tlast => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TLAST,
      S00_AXIS_tready => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TREADY,
      S00_AXIS_tvalid => fifo_CNTRL_VLAN_to_MAC2_M_AXIS_TVALID,
      S01_AXIS_tdata(511 downto 0) => dfx_decoupler_3_s_intf_0_TDATA(511 downto 0),
      S01_AXIS_tdest(3 downto 0) => dfx_decoupler_3_s_intf_0_TDEST(3 downto 0),
      S01_AXIS_tkeep(63 downto 0) => dfx_decoupler_3_s_intf_0_TKEEP(63 downto 0),
      S01_AXIS_tlast => dfx_decoupler_3_s_intf_0_TLAST,
      S01_AXIS_tready => dfx_decoupler_3_s_intf_0_TREADY,
      S01_AXIS_tvalid => dfx_decoupler_3_s_intf_0_TVALID,
      S02_AXIS_tdata(511 downto 0) => from_MAC00_is_MAC0_m0_axis_TDATA(511 downto 0),
      S02_AXIS_tdest(1 downto 0) => from_MAC00_is_MAC0_m0_axis_TDEST(1 downto 0),
      S02_AXIS_tkeep(63 downto 0) => from_MAC00_is_MAC0_m0_axis_TKEEP(63 downto 0),
      S02_AXIS_tlast => from_MAC00_is_MAC0_m0_axis_TLAST,
      S02_AXIS_tready => from_MAC00_is_MAC0_m0_axis_TREADY,
      S02_AXIS_tvalid => from_MAC00_is_MAC0_m0_axis_TVALID,
      m_axis_01_tdata(63 downto 0) => to_MAC01_is_MAC2_m_axis_0_TDATA(63 downto 0),
      m_axis_01_tkeep(7 downto 0) => to_MAC01_is_MAC2_m_axis_0_TKEEP(7 downto 0),
      m_axis_01_tlast => to_MAC01_is_MAC2_m_axis_0_TLAST,
      m_axis_01_tready => to_MAC01_is_MAC2_m_axis_0_TREADY,
      m_axis_01_tvalid => to_MAC01_is_MAC2_m_axis_0_TVALID,
      s_axis_aresetn => s_axis_aresetn_0_0_1,
      stat_rx_pause_req_01_i(8 downto 0) => Din_01_0_1(8 downto 0),
      tx_clk_01 => tx_clk_01_0_1,
      user_aresetn => clk_wiz_0_locked,
      usr_clk => clk_wiz_0_clk_200M
    );
to_MAC10_is_MAC1: entity work.to_MAC10_is_MAC1_imp_VB0FJG
     port map (
      S00_AXIS_tdata(511 downto 0) => dfx_decoupler_2_s_intf_1_TDATA(511 downto 0),
      S00_AXIS_tdest(3 downto 0) => dfx_decoupler_2_s_intf_1_TDEST(3 downto 0),
      S00_AXIS_tkeep(63 downto 0) => dfx_decoupler_2_s_intf_1_TKEEP(63 downto 0),
      S00_AXIS_tlast => dfx_decoupler_2_s_intf_1_TLAST,
      S00_AXIS_tready => dfx_decoupler_2_s_intf_1_TREADY,
      S00_AXIS_tvalid => dfx_decoupler_2_s_intf_1_TVALID,
      S01_AXIS_tdata(511 downto 0) => from_MAC11_is_MAC3_m0_axis_TDATA(511 downto 0),
      S01_AXIS_tdest(1 downto 0) => from_MAC11_is_MAC3_m0_axis_TDEST(1 downto 0),
      S01_AXIS_tkeep(63 downto 0) => from_MAC11_is_MAC3_m0_axis_TKEEP(63 downto 0),
      S01_AXIS_tlast => from_MAC11_is_MAC3_m0_axis_TLAST,
      S01_AXIS_tready => from_MAC11_is_MAC3_m0_axis_TREADY,
      S01_AXIS_tvalid => from_MAC11_is_MAC3_m0_axis_TVALID,
      m_axis_01_tdata(63 downto 0) => to_MAC10_is_MAC1_m_axis_01_TDATA(63 downto 0),
      m_axis_01_tkeep(7 downto 0) => to_MAC10_is_MAC1_m_axis_01_TKEEP(7 downto 0),
      m_axis_01_tlast => to_MAC10_is_MAC1_m_axis_01_TLAST,
      m_axis_01_tready => to_MAC10_is_MAC1_m_axis_01_TREADY,
      m_axis_01_tvalid => to_MAC10_is_MAC1_m_axis_01_TVALID,
      s_axis_aresetn => s_axis_aresetn_0_0_1,
      stat_rx_pause_req_01_i(8 downto 0) => stat_rx_pause_req_10_i_1(8 downto 0),
      tx_clk_01 => tx_aclk_10_1,
      user_aresetn => clk_wiz_0_locked,
      usr_clk => clk_wiz_0_clk_200M
    );
to_MAC11_is_MAC3: entity work.to_MAC11_is_MAC3_imp_WTUC4O
     port map (
      S00_AXIS_tdata(511 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TDATA(511 downto 0),
      S00_AXIS_tkeep(63 downto 0) => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TKEEP(63 downto 0),
      S00_AXIS_tlast => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TLAST,
      S00_AXIS_tready => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TREADY,
      S00_AXIS_tvalid => fifo_CNTRL_VLAN_to_MAC3_M_AXIS_TVALID,
      S01_AXIS_tdata(511 downto 0) => dfx_decoupler_3_s_intf_1_TDATA(511 downto 0),
      S01_AXIS_tdest(3 downto 0) => dfx_decoupler_3_s_intf_1_TDEST(3 downto 0),
      S01_AXIS_tkeep(63 downto 0) => dfx_decoupler_3_s_intf_1_TKEEP(63 downto 0),
      S01_AXIS_tlast => dfx_decoupler_3_s_intf_1_TLAST,
      S01_AXIS_tready => dfx_decoupler_3_s_intf_1_TREADY,
      S01_AXIS_tvalid => dfx_decoupler_3_s_intf_1_TVALID,
      S02_AXIS_tdata(511 downto 0) => from_MAC10_is_MAC1_m0_axis_TDATA(511 downto 0),
      S02_AXIS_tdest(1 downto 0) => from_MAC10_is_MAC1_m0_axis_TDEST(1 downto 0),
      S02_AXIS_tkeep(63 downto 0) => from_MAC10_is_MAC1_m0_axis_TKEEP(63 downto 0),
      S02_AXIS_tlast => from_MAC10_is_MAC1_m0_axis_TLAST,
      S02_AXIS_tready => from_MAC10_is_MAC1_m0_axis_TREADY,
      S02_AXIS_tvalid => from_MAC10_is_MAC1_m0_axis_TVALID,
      m_axis_01_tdata(63 downto 0) => to_MAC01_is_MAC3_m_axis_01_TDATA(63 downto 0),
      m_axis_01_tkeep(7 downto 0) => to_MAC01_is_MAC3_m_axis_01_TKEEP(7 downto 0),
      m_axis_01_tlast => to_MAC01_is_MAC3_m_axis_01_TLAST,
      m_axis_01_tready => to_MAC01_is_MAC3_m_axis_01_TREADY,
      m_axis_01_tvalid => to_MAC01_is_MAC3_m_axis_01_TVALID,
      s_axis_aresetn => s_axis_aresetn_0_0_1,
      stat_rx_pause_req_11_i(8 downto 0) => stat_rx_pause_req_11_i_1(8 downto 0),
      tx_clk_11 => tx_aclk_11_1,
      user_aresetn => clk_wiz_0_locked,
      usr_clk => clk_wiz_0_clk_200M
    );
version_register_0: component proj_blk_design_version_register_0_0
     port map (
      s00_axi_aclk => clk_wiz_0_clk_200M,
      s00_axi_araddr(31 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => clk_wiz_0_locked,
      s00_axi_arprot(2 downto 0) => axi_interconnect_1_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_1_M01_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_1_M01_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_1_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_1_M01_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_1_M01_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_1_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_1_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_1_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_1_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_1_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_1_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_1_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_1_M01_AXI_WVALID
    );
end STRUCTURE;
