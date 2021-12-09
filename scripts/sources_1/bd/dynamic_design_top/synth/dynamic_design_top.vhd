--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Mon May 24 12:01:47 2021
--Host        : newton running 64-bit unknown
--Command     : generate_target dynamic_design_top.bd
--Design      : dynamic_design_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1UARHRC is
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
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
end m00_couplers_imp_1UARHRC;

architecture STRUCTURE of m00_couplers_imp_1UARHRC is
  component dynamic_design_top_m00_regslice_3 is
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
  end component dynamic_design_top_m00_regslice_3;
  component dynamic_design_top_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
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
  end component dynamic_design_top_auto_pc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal m00_regslice_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_regslice_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_regslice_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_regslice_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_regslice_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
auto_pc: component dynamic_design_top_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      m_axi_bready => auto_pc_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
m00_regslice: component dynamic_design_top_m00_regslice_3
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_regslice_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => m00_regslice_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_regslice_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => m00_regslice_to_m00_couplers_AWPROT(2 downto 0),
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
      m_axi_wstrb(3 downto 0) => m00_regslice_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      s_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      s_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      s_axi_bready => auto_pc_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_m00_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_pc_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_m00_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_pc_to_m00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_m00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1W96NYJ is
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
end m00_couplers_imp_1W96NYJ;

architecture STRUCTURE of m00_couplers_imp_1W96NYJ is
  component dynamic_design_top_m00_data_fifo_0 is
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
  end component dynamic_design_top_m00_data_fifo_0;
  component dynamic_design_top_m00_regslice_2 is
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
  end component dynamic_design_top_m00_regslice_2;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_m00_data_fifo_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_TVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_data_fifo_to_m00_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_data_fifo_to_m00_regslice_TLAST : STD_LOGIC;
  signal m00_data_fifo_to_m00_regslice_TREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_regslice_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= m00_regslice_to_m00_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= m00_regslice_to_m00_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_data_fifo_TREADY;
  m00_couplers_to_m00_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m00_couplers_to_m00_data_fifo_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m00_couplers_to_m00_data_fifo_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_data_fifo_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
m00_data_fifo: component dynamic_design_top_m00_data_fifo_0
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m00_data_fifo_to_m00_regslice_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => m00_data_fifo_to_m00_regslice_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => m00_data_fifo_to_m00_regslice_TKEEP(63 downto 0),
      m_axis_tlast => m00_data_fifo_to_m00_regslice_TLAST,
      m_axis_tready => m00_data_fifo_to_m00_regslice_TREADY,
      m_axis_tvalid => m00_data_fifo_to_m00_regslice_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m00_couplers_to_m00_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => m00_couplers_to_m00_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => m00_couplers_to_m00_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m00_couplers_to_m00_data_fifo_TLAST,
      s_axis_tready => m00_couplers_to_m00_data_fifo_TREADY,
      s_axis_tvalid => m00_couplers_to_m00_data_fifo_TVALID
    );
m00_regslice: component dynamic_design_top_m00_regslice_2
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => m00_regslice_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => m00_regslice_to_m00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => m00_regslice_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(511 downto 0) => m00_data_fifo_to_m00_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => m00_data_fifo_to_m00_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => m00_data_fifo_to_m00_regslice_TKEEP(63 downto 0),
      s_axis_tlast => m00_data_fifo_to_m00_regslice_TLAST,
      s_axis_tready => m00_data_fifo_to_m00_regslice_TREADY,
      s_axis_tvalid => m00_data_fifo_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1UE3VSL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
end m01_couplers_imp_1UE3VSL;

architecture STRUCTURE of m01_couplers_imp_1UE3VSL is
  component dynamic_design_top_m01_regslice_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component dynamic_design_top_m01_regslice_3;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_regslice_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_regslice_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_WVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_regslice_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_regslice_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_regslice_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_regslice_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_regslice_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr <= m01_regslice_to_m01_couplers_ARADDR(0);
  M_AXI_arburst <= m01_regslice_to_m01_couplers_ARBURST(0);
  M_AXI_arcache <= m01_regslice_to_m01_couplers_ARCACHE(0);
  M_AXI_arlen <= m01_regslice_to_m01_couplers_ARLEN(0);
  M_AXI_arlock <= m01_regslice_to_m01_couplers_ARLOCK(0);
  M_AXI_arprot <= m01_regslice_to_m01_couplers_ARPROT(0);
  M_AXI_arqos <= m01_regslice_to_m01_couplers_ARQOS(0);
  M_AXI_arregion <= m01_regslice_to_m01_couplers_ARREGION(0);
  M_AXI_arsize <= m01_regslice_to_m01_couplers_ARSIZE(0);
  M_AXI_arvalid <= m01_regslice_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_regslice_to_m01_couplers_AWADDR(0);
  M_AXI_awburst <= m01_regslice_to_m01_couplers_AWBURST(0);
  M_AXI_awcache <= m01_regslice_to_m01_couplers_AWCACHE(0);
  M_AXI_awlen <= m01_regslice_to_m01_couplers_AWLEN(0);
  M_AXI_awlock <= m01_regslice_to_m01_couplers_AWLOCK(0);
  M_AXI_awprot <= m01_regslice_to_m01_couplers_AWPROT(0);
  M_AXI_awqos <= m01_regslice_to_m01_couplers_AWQOS(0);
  M_AXI_awregion <= m01_regslice_to_m01_couplers_AWREGION(0);
  M_AXI_awsize <= m01_regslice_to_m01_couplers_AWSIZE(0);
  M_AXI_awvalid <= m01_regslice_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_regslice_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_regslice_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_regslice_to_m01_couplers_WDATA(0);
  M_AXI_wlast <= m01_regslice_to_m01_couplers_WLAST;
  M_AXI_wstrb <= m01_regslice_to_m01_couplers_WSTRB(0);
  M_AXI_wvalid <= m01_regslice_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_regslice_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_regslice_RDATA(31 downto 0);
  S_AXI_rlast <= m01_couplers_to_m01_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_regslice_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_regslice_WREADY;
  m01_couplers_to_m01_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_regslice_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_m01_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_m01_regslice_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_m01_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_regslice_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_regslice_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_m01_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_m01_regslice_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_m01_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_regslice_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_regslice_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_regslice_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_regslice_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_regslice_WVALID <= S_AXI_wvalid;
  m01_regslice_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_regslice_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_regslice_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_regslice_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_regslice_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_regslice_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_regslice_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_regslice_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_regslice_to_m01_couplers_WREADY <= M_AXI_wready;
m01_regslice: component dynamic_design_top_m01_regslice_3
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m01_regslice_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m01_regslice_to_m01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m01_regslice_to_m01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => m01_regslice_to_m01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => m01_regslice_to_m01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => m01_regslice_to_m01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m01_regslice_to_m01_couplers_ARQOS(3 downto 0),
      m_axi_arready => m01_regslice_to_m01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => m01_regslice_to_m01_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => m01_regslice_to_m01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m01_regslice_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m01_regslice_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m01_regslice_to_m01_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m01_regslice_to_m01_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => m01_regslice_to_m01_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => m01_regslice_to_m01_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => m01_regslice_to_m01_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m01_regslice_to_m01_couplers_AWQOS(3 downto 0),
      m_axi_awready => m01_regslice_to_m01_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => m01_regslice_to_m01_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => m01_regslice_to_m01_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m01_regslice_to_m01_couplers_AWVALID,
      m_axi_bready => m01_regslice_to_m01_couplers_BREADY,
      m_axi_bresp(1) => m01_regslice_to_m01_couplers_BRESP,
      m_axi_bresp(0) => m01_regslice_to_m01_couplers_BRESP,
      m_axi_bvalid => m01_regslice_to_m01_couplers_BVALID,
      m_axi_rdata(31) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(30) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(29) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(28) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(27) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(26) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(25) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(24) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(23) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(22) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(21) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(20) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(19) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(18) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(17) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(16) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(15) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(14) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(13) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(12) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(11) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(10) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(9) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(8) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(7) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(6) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(5) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(4) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(3) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(2) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(1) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rdata(0) => m01_regslice_to_m01_couplers_RDATA,
      m_axi_rlast => m01_regslice_to_m01_couplers_RLAST,
      m_axi_rready => m01_regslice_to_m01_couplers_RREADY,
      m_axi_rresp(1) => m01_regslice_to_m01_couplers_RRESP,
      m_axi_rresp(0) => m01_regslice_to_m01_couplers_RRESP,
      m_axi_rvalid => m01_regslice_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m01_regslice_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wlast => m01_regslice_to_m01_couplers_WLAST,
      m_axi_wready => m01_regslice_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m01_regslice_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m01_regslice_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m01_couplers_to_m01_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_m01_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_m01_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_m01_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_m01_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_m01_regslice_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_m01_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_m01_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_m01_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_m01_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_m01_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_m01_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_m01_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_m01_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_m01_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_m01_regslice_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_m01_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_m01_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_m01_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_m01_regslice_AWVALID,
      s_axi_bready => m01_couplers_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rlast => m01_couplers_to_m01_regslice_RLAST,
      s_axi_rready => m01_couplers_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wlast => m01_couplers_to_m01_regslice_WLAST,
      s_axi_wready => m01_couplers_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1VS6C46 is
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
end m01_couplers_imp_1VS6C46;

architecture STRUCTURE of m01_couplers_imp_1VS6C46 is
  component dynamic_design_top_m01_data_fifo_0 is
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
  end component dynamic_design_top_m01_data_fifo_0;
  component dynamic_design_top_m01_regslice_2 is
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
  end component dynamic_design_top_m01_regslice_2;
  signal AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_data_fifo_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_couplers_to_m01_data_fifo_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_data_fifo_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_couplers_to_m01_data_fifo_TLAST : STD_LOGIC;
  signal m01_couplers_to_m01_data_fifo_TREADY : STD_LOGIC;
  signal m01_couplers_to_m01_data_fifo_TVALID : STD_LOGIC;
  signal m01_data_fifo_to_m01_regslice_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_data_fifo_to_m01_regslice_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_data_fifo_to_m01_regslice_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_data_fifo_to_m01_regslice_TLAST : STD_LOGIC;
  signal m01_data_fifo_to_m01_regslice_TREADY : STD_LOGIC;
  signal m01_data_fifo_to_m01_regslice_TVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_regslice_to_m01_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_regslice_to_m01_couplers_TLAST : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(511 downto 0) <= m01_regslice_to_m01_couplers_TDATA(511 downto 0);
  M_AXIS_tdest(1 downto 0) <= m01_regslice_to_m01_couplers_TDEST(1 downto 0);
  M_AXIS_tkeep(63 downto 0) <= m01_regslice_to_m01_couplers_TKEEP(63 downto 0);
  M_AXIS_tlast <= m01_regslice_to_m01_couplers_TLAST;
  M_AXIS_tvalid <= m01_regslice_to_m01_couplers_TVALID;
  S_AXIS_tready <= m01_couplers_to_m01_data_fifo_TREADY;
  m01_couplers_to_m01_data_fifo_TDATA(511 downto 0) <= S_AXIS_tdata(511 downto 0);
  m01_couplers_to_m01_data_fifo_TDEST(1 downto 0) <= S_AXIS_tdest(1 downto 0);
  m01_couplers_to_m01_data_fifo_TKEEP(63 downto 0) <= S_AXIS_tkeep(63 downto 0);
  m01_couplers_to_m01_data_fifo_TLAST <= S_AXIS_tlast;
  m01_couplers_to_m01_data_fifo_TVALID <= S_AXIS_tvalid;
  m01_regslice_to_m01_couplers_TREADY <= M_AXIS_tready;
m01_data_fifo: component dynamic_design_top_m01_data_fifo_0
     port map (
      axis_rd_data_count(31 downto 0) => AXIS_RD_DATA_COUNT_to_S_AXIS_RD_DATA_COUNT(31 downto 0),
      axis_wr_data_count(31 downto 0) => AXIS_WR_DATA_COUNT_to_S_AXIS_WR_DATA_COUNT(31 downto 0),
      m_axis_tdata(511 downto 0) => m01_data_fifo_to_m01_regslice_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => m01_data_fifo_to_m01_regslice_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => m01_data_fifo_to_m01_regslice_TKEEP(63 downto 0),
      m_axis_tlast => m01_data_fifo_to_m01_regslice_TLAST,
      m_axis_tready => m01_data_fifo_to_m01_regslice_TREADY,
      m_axis_tvalid => m01_data_fifo_to_m01_regslice_TVALID,
      s_axis_aclk => S_AXIS_ACLK,
      s_axis_aresetn => S_AXIS_ARESETN,
      s_axis_tdata(511 downto 0) => m01_couplers_to_m01_data_fifo_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => m01_couplers_to_m01_data_fifo_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => m01_couplers_to_m01_data_fifo_TKEEP(63 downto 0),
      s_axis_tlast => m01_couplers_to_m01_data_fifo_TLAST,
      s_axis_tready => m01_couplers_to_m01_data_fifo_TREADY,
      s_axis_tvalid => m01_couplers_to_m01_data_fifo_TVALID
    );
m01_regslice: component dynamic_design_top_m01_regslice_2
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(511 downto 0) => m01_regslice_to_m01_couplers_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => m01_regslice_to_m01_couplers_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => m01_regslice_to_m01_couplers_TKEEP(63 downto 0),
      m_axis_tlast => m01_regslice_to_m01_couplers_TLAST,
      m_axis_tready => m01_regslice_to_m01_couplers_TREADY,
      m_axis_tvalid => m01_regslice_to_m01_couplers_TVALID,
      s_axis_tdata(511 downto 0) => m01_data_fifo_to_m01_regslice_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => m01_data_fifo_to_m01_regslice_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => m01_data_fifo_to_m01_regslice_TKEEP(63 downto 0),
      s_axis_tlast => m01_data_fifo_to_m01_regslice_TLAST,
      s_axis_tready => m01_data_fifo_to_m01_regslice_TREADY,
      s_axis_tvalid => m01_data_fifo_to_m01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_D34BYZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
end s00_couplers_imp_D34BYZ;

architecture STRUCTURE of s00_couplers_imp_D34BYZ is
  component dynamic_design_top_s00_regslice_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component dynamic_design_top_s00_regslice_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_WVALID : STD_LOGIC;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_regslice_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_regslice_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_regslice_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_regslice_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_regslice_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_regslice_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_regslice_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_regslice_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_regslice_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_regslice_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_regslice_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_regslice_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_regslice_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_regslice_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_regslice_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_regslice_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_regslice_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_regslice_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_regslice_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_regslice_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_regslice_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= s00_regslice_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= s00_regslice_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_regslice_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_regslice_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
  s00_regslice_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_regslice_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_regslice_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_regslice_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_regslice_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_regslice_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_regslice_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_regslice_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_regslice_to_s00_couplers_WREADY <= M_AXI_wready;
s00_regslice: component dynamic_design_top_s00_regslice_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_s00_couplers_AWVALID,
      m_axi_bready => s00_regslice_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => s00_regslice_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => s00_regslice_to_s00_couplers_RLAST,
      m_axi_rready => s00_regslice_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => s00_regslice_to_s00_couplers_WLAST,
      m_axi_wready => s00_regslice_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_s00_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_s00_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_regslice_RDATA(31 downto 0),
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
entity s00_couplers_imp_EGX52W is
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
end s00_couplers_imp_EGX52W;

architecture STRUCTURE of s00_couplers_imp_EGX52W is
  component dynamic_design_top_s00_regslice_2 is
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
  end component dynamic_design_top_s00_regslice_2;
  component dynamic_design_top_s00_data_fifo_0 is
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
  end component dynamic_design_top_s00_data_fifo_0;
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
s00_data_fifo: component dynamic_design_top_s00_data_fifo_0
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
s00_regslice: component dynamic_design_top_s00_regslice_2
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
entity dynamic_design_top_INTERC_from_MAC_0 is
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
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC
  );
end dynamic_design_top_INTERC_from_MAC_0;

architecture STRUCTURE of dynamic_design_top_INTERC_from_MAC_0 is
  component dynamic_design_top_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component dynamic_design_top_xbar_0;
  signal INTERC_from_MAC_ACLK_net : STD_LOGIC;
  signal INTERC_from_MAC_ARESETN_net : STD_LOGIC;
  signal INTERC_from_MAC_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTERC_from_MAC_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTERC_from_MAC_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTERC_from_MAC_to_s00_couplers_TLAST : STD_LOGIC;
  signal INTERC_from_MAC_to_s00_couplers_TREADY : STD_LOGIC;
  signal INTERC_from_MAC_to_s00_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_INTERC_from_MAC_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_INTERC_from_MAC_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_INTERC_from_MAC_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_INTERC_from_MAC_TLAST : STD_LOGIC;
  signal m00_couplers_to_INTERC_from_MAC_TREADY : STD_LOGIC;
  signal m00_couplers_to_INTERC_from_MAC_TVALID : STD_LOGIC;
  signal m01_couplers_to_INTERC_from_MAC_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_couplers_to_INTERC_from_MAC_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_INTERC_from_MAC_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_couplers_to_INTERC_from_MAC_TLAST : STD_LOGIC;
  signal m01_couplers_to_INTERC_from_MAC_TREADY : STD_LOGIC;
  signal m01_couplers_to_INTERC_from_MAC_TVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal xbar_to_m01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal xbar_to_m01_couplers_TLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_TVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  INTERC_from_MAC_ACLK_net <= ACLK;
  INTERC_from_MAC_ARESETN_net <= ARESETN;
  INTERC_from_MAC_to_s00_couplers_TDATA(511 downto 0) <= S00_AXIS_tdata(511 downto 0);
  INTERC_from_MAC_to_s00_couplers_TDEST(1 downto 0) <= S00_AXIS_tdest(1 downto 0);
  INTERC_from_MAC_to_s00_couplers_TKEEP(63 downto 0) <= S00_AXIS_tkeep(63 downto 0);
  INTERC_from_MAC_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  INTERC_from_MAC_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  M00_AXIS_tdata(511 downto 0) <= m00_couplers_to_INTERC_from_MAC_TDATA(511 downto 0);
  M00_AXIS_tdest(1 downto 0) <= m00_couplers_to_INTERC_from_MAC_TDEST(1 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= m00_couplers_to_INTERC_from_MAC_TKEEP(63 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_INTERC_from_MAC_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_INTERC_from_MAC_TVALID;
  M01_AXIS_tdata(511 downto 0) <= m01_couplers_to_INTERC_from_MAC_TDATA(511 downto 0);
  M01_AXIS_tdest(1 downto 0) <= m01_couplers_to_INTERC_from_MAC_TDEST(1 downto 0);
  M01_AXIS_tkeep(63 downto 0) <= m01_couplers_to_INTERC_from_MAC_TKEEP(63 downto 0);
  M01_AXIS_tlast <= m01_couplers_to_INTERC_from_MAC_TLAST;
  M01_AXIS_tvalid <= m01_couplers_to_INTERC_from_MAC_TVALID;
  S00_AXIS_tready <= INTERC_from_MAC_to_s00_couplers_TREADY;
  m00_couplers_to_INTERC_from_MAC_TREADY <= M00_AXIS_tready;
  m01_couplers_to_INTERC_from_MAC_TREADY <= M01_AXIS_tready;
m00_couplers: entity work.m00_couplers_imp_1W96NYJ
     port map (
      M_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      M_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => m00_couplers_to_INTERC_from_MAC_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => m00_couplers_to_INTERC_from_MAC_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => m00_couplers_to_INTERC_from_MAC_TKEEP(63 downto 0),
      M_AXIS_tlast => m00_couplers_to_INTERC_from_MAC_TLAST,
      M_AXIS_tready => m00_couplers_to_INTERC_from_MAC_TREADY,
      M_AXIS_tvalid => m00_couplers_to_INTERC_from_MAC_TVALID,
      S_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      S_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1VS6C46
     port map (
      M_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      M_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => m01_couplers_to_INTERC_from_MAC_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => m01_couplers_to_INTERC_from_MAC_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => m01_couplers_to_INTERC_from_MAC_TKEEP(63 downto 0),
      M_AXIS_tlast => m01_couplers_to_INTERC_from_MAC_TLAST,
      M_AXIS_tready => m01_couplers_to_INTERC_from_MAC_TREADY,
      M_AXIS_tvalid => m01_couplers_to_INTERC_from_MAC_TVALID,
      S_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      S_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => xbar_to_m01_couplers_TDATA(1023 downto 512),
      S_AXIS_tdest(1 downto 0) => xbar_to_m01_couplers_TDEST(3 downto 2),
      S_AXIS_tkeep(63 downto 0) => xbar_to_m01_couplers_TKEEP(127 downto 64),
      S_AXIS_tlast => xbar_to_m01_couplers_TLAST(1),
      S_AXIS_tready => xbar_to_m01_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m01_couplers_TVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_EGX52W
     port map (
      M_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      M_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      M_AXIS_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      M_AXIS_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      M_AXIS_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => INTERC_from_MAC_ACLK_net,
      S_AXIS_ARESETN => INTERC_from_MAC_ARESETN_net,
      S_AXIS_tdata(511 downto 0) => INTERC_from_MAC_to_s00_couplers_TDATA(511 downto 0),
      S_AXIS_tdest(1 downto 0) => INTERC_from_MAC_to_s00_couplers_TDEST(1 downto 0),
      S_AXIS_tkeep(63 downto 0) => INTERC_from_MAC_to_s00_couplers_TKEEP(63 downto 0),
      S_AXIS_tlast => INTERC_from_MAC_to_s00_couplers_TLAST,
      S_AXIS_tready => INTERC_from_MAC_to_s00_couplers_TREADY,
      S_AXIS_tvalid => INTERC_from_MAC_to_s00_couplers_TVALID
    );
xbar: component dynamic_design_top_xbar_0
     port map (
      aclk => INTERC_from_MAC_ACLK_net,
      aresetn => INTERC_from_MAC_ARESETN_net,
      m_axis_tdata(1023 downto 512) => xbar_to_m01_couplers_TDATA(1023 downto 512),
      m_axis_tdata(511 downto 0) => xbar_to_m00_couplers_TDATA(511 downto 0),
      m_axis_tdest(3 downto 2) => xbar_to_m01_couplers_TDEST(3 downto 2),
      m_axis_tdest(1 downto 0) => xbar_to_m00_couplers_TDEST(1 downto 0),
      m_axis_tkeep(127 downto 64) => xbar_to_m01_couplers_TKEEP(127 downto 64),
      m_axis_tkeep(63 downto 0) => xbar_to_m00_couplers_TKEEP(63 downto 0),
      m_axis_tlast(1) => xbar_to_m01_couplers_TLAST(1),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(1) => xbar_to_m01_couplers_TREADY,
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(1) => xbar_to_m01_couplers_TVALID(1),
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axis_tdata(511 downto 0) => s00_couplers_to_xbar_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => s00_couplers_to_xbar_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => s00_couplers_to_xbar_TKEEP(63 downto 0),
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID,
      s_decode_err(0) => NLW_xbar_s_decode_err_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
end dynamic_design_top_axi_interconnect_0_0;

architecture STRUCTURE of dynamic_design_top_axi_interconnect_0_0 is
  component dynamic_design_top_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_xbar_1;
  component dynamic_design_top_s00_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component dynamic_design_top_s00_mmu_0;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_AXI_araddr <= m01_couplers_to_axi_interconnect_0_ARADDR;
  M01_AXI_arburst <= m01_couplers_to_axi_interconnect_0_ARBURST;
  M01_AXI_arcache <= m01_couplers_to_axi_interconnect_0_ARCACHE;
  M01_AXI_arlen <= m01_couplers_to_axi_interconnect_0_ARLEN;
  M01_AXI_arlock <= m01_couplers_to_axi_interconnect_0_ARLOCK;
  M01_AXI_arprot <= m01_couplers_to_axi_interconnect_0_ARPROT;
  M01_AXI_arqos <= m01_couplers_to_axi_interconnect_0_ARQOS;
  M01_AXI_arregion <= m01_couplers_to_axi_interconnect_0_ARREGION;
  M01_AXI_arsize <= m01_couplers_to_axi_interconnect_0_ARSIZE;
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_axi_interconnect_0_AWADDR;
  M01_AXI_awburst <= m01_couplers_to_axi_interconnect_0_AWBURST;
  M01_AXI_awcache <= m01_couplers_to_axi_interconnect_0_AWCACHE;
  M01_AXI_awlen <= m01_couplers_to_axi_interconnect_0_AWLEN;
  M01_AXI_awlock <= m01_couplers_to_axi_interconnect_0_AWLOCK;
  M01_AXI_awprot <= m01_couplers_to_axi_interconnect_0_AWPROT;
  M01_AXI_awqos <= m01_couplers_to_axi_interconnect_0_AWQOS;
  M01_AXI_awregion <= m01_couplers_to_axi_interconnect_0_AWREGION;
  M01_AXI_awsize <= m01_couplers_to_axi_interconnect_0_AWSIZE;
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata <= m01_couplers_to_axi_interconnect_0_WDATA;
  M01_AXI_wlast <= m01_couplers_to_axi_interconnect_0_WLAST;
  M01_AXI_wstrb <= m01_couplers_to_axi_interconnect_0_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARLOCK(0) <= S00_AXI_arlock(0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK(0) <= S00_AXI_awlock(0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP <= M01_AXI_bresp;
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA <= M01_AXI_rdata;
  m01_couplers_to_axi_interconnect_0_RLAST <= M01_AXI_rlast;
  m01_couplers_to_axi_interconnect_0_RRESP <= M01_AXI_rresp;
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1UARHRC
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1UE3VSL
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr => m01_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m01_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m01_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m01_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m01_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m01_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m01_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m01_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m01_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m01_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m01_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m01_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m01_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m01_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m01_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m01_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m01_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m01_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m01_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m01_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m01_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m01_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m01_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m01_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m01_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_D34BYZ
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s00_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s00_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s00_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s00_mmu_M_AXI_AWVALID,
      S_AXI_bready => s00_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s00_mmu_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
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
s00_mmu: component dynamic_design_top_s00_mmu_0
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(31 downto 0) => s00_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_mmu_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s00_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s00_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_mmu_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s00_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => s00_mmu_M_AXI_RLAST,
      m_axi_rready => s00_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s00_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s00_mmu_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s00_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s00_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(0) => S00_AXI_1_ARLOCK(0),
      s_axi_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S00_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S00_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => S00_AXI_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
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
xbar: component dynamic_design_top_xbar_1
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Dynamic_imp_1KRJ0N5 is
  port (
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M03_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_packetizer_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_packetizer_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_packetizer_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_packetizer_tlast : out STD_LOGIC;
    M_AXIS_packetizer_tready : in STD_LOGIC;
    M_AXIS_packetizer_tvalid : out STD_LOGIC;
    S_AXIS_MAC0_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC0_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC0_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC0_tlast : in STD_LOGIC;
    S_AXIS_MAC0_tready : out STD_LOGIC;
    S_AXIS_MAC0_tvalid : in STD_LOGIC;
    S_AXIS_MAC1_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC1_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC1_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC1_tlast : in STD_LOGIC;
    S_AXIS_MAC1_tready : out STD_LOGIC;
    S_AXIS_MAC1_tvalid : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC2_MAC3_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC2_MAC3_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC2_MAC3_tlast : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tready : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tvalid : in STD_LOGIC;
    S_AXI_Lite_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_Lite_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_Lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_arready : out STD_LOGIC;
    S_AXI_Lite_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_arvalid : in STD_LOGIC;
    S_AXI_Lite_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_Lite_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_Lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_awready : out STD_LOGIC;
    S_AXI_Lite_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_awvalid : in STD_LOGIC;
    S_AXI_Lite_bready : in STD_LOGIC;
    S_AXI_Lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_bvalid : out STD_LOGIC;
    S_AXI_Lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_rlast : out STD_LOGIC;
    S_AXI_Lite_rready : in STD_LOGIC;
    S_AXI_Lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_rvalid : out STD_LOGIC;
    S_AXI_Lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_wlast : in STD_LOGIC;
    S_AXI_Lite_wready : out STD_LOGIC;
    S_AXI_Lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_wvalid : in STD_LOGIC;
    clk_100M_in : in STD_LOGIC;
    clk_200M_in : in STD_LOGIC;
    clk_250M_in : in STD_LOGIC;
    clk_400M_in : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
end Dynamic_imp_1KRJ0N5;

architecture STRUCTURE of Dynamic_imp_1KRJ0N5 is
  component dynamic_design_top_Packetizer_0 is
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
  end component dynamic_design_top_Packetizer_0;
  component dynamic_design_top_Register_interface_0_0 is
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
    s00_axi_rready : in STD_LOGIC;
    mac_reset : out STD_LOGIC;
    ipsec_dec_tag_check_en : out STD_LOGIC;
    capsule_meta_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    capsule_meta_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    capsule_meta_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    capsule_meta_3 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    capsule_meta_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    capsule_meta_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    capsule_meta_6 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    mode_select0 : out STD_LOGIC;
    mode_select1 : out STD_LOGIC;
    reset_logic_o : out STD_LOGIC
  );
  end component dynamic_design_top_Register_interface_0_0;
  component dynamic_design_top_axis_data_fifo_from_Internal_0 is
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
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_axis_data_fifo_from_Internal_0;
  component dynamic_design_top_axis_data_fifo_from_MAC0_0 is
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
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_axis_data_fifo_from_MAC0_0;
  component dynamic_design_top_axis_data_fifo_from_MAC1_0 is
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
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_axis_data_fifo_from_MAC1_0;
  component dynamic_design_top_axis_data_fifo_to_MAC0_0 is
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
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_axis_data_fifo_to_MAC0_0;
  component dynamic_design_top_axis_data_fifo_to_MAC1_0 is
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
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_axis_data_fifo_to_MAC1_0;
  component dynamic_design_top_slice_100_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component dynamic_design_top_slice_100_0;
  component dynamic_design_top_slice_250_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component dynamic_design_top_slice_250_0;
  component dynamic_design_top_slice_NIC_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component dynamic_design_top_slice_NIC_0;
  component dynamic_design_top_slice_to_MAC0_0 is
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
  end component dynamic_design_top_slice_to_MAC0_0;
  component dynamic_design_top_slice_to_MAC1_0 is
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
  end component dynamic_design_top_slice_to_MAC1_0;
  component dynamic_design_top_slice_to_MAC2_0 is
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
  end component dynamic_design_top_slice_to_MAC2_0;
  component dynamic_design_top_slice_to_MAC3_0 is
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
  end component dynamic_design_top_slice_to_MAC3_0;
  component dynamic_design_top_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component dynamic_design_top_xlconcat_0_0;
  component dynamic_design_top_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component dynamic_design_top_xlconcat_1_0;
  component dynamic_design_top_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component dynamic_design_top_xlconcat_3_0;
  component dynamic_design_top_xlconcat_5_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component dynamic_design_top_xlconcat_5_0;
  component dynamic_design_top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component dynamic_design_top_xlconstant_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn2_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal INTERC_from_MAE_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTERC_from_MAE_M00_AXIS_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTERC_from_MAE_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTERC_from_MAE_M00_AXIS_TLAST : STD_LOGIC;
  signal INTERC_from_MAE_M00_AXIS_TREADY : STD_LOGIC;
  signal INTERC_from_MAE_M00_AXIS_TVALID : STD_LOGIC;
  signal INTERC_from_MAE_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal INTERC_from_MAE_M01_AXIS_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INTERC_from_MAE_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal INTERC_from_MAE_M01_AXIS_TLAST : STD_LOGIC;
  signal INTERC_from_MAE_M01_AXIS_TREADY : STD_LOGIC;
  signal INTERC_from_MAE_M01_AXIS_TVALID : STD_LOGIC;
  signal S_AXIS_Int_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_Int_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_Int_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_Int_1_TLAST : STD_LOGIC;
  signal S_AXIS_Int_1_TREADY : STD_LOGIC;
  signal S_AXIS_Int_1_TVALID : STD_LOGIC;
  signal S_AXIS_MAC0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_MAC0_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_MAC0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_MAC0_1_TLAST : STD_LOGIC;
  signal S_AXIS_MAC0_1_TREADY : STD_LOGIC;
  signal S_AXIS_MAC0_1_TVALID : STD_LOGIC;
  signal S_AXIS_MAC1_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_MAC1_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_MAC1_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_MAC1_1_TLAST : STD_LOGIC;
  signal S_AXIS_MAC1_1_TREADY : STD_LOGIC;
  signal S_AXIS_MAC1_1_TVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axis_data_fifo_from_Internal_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_from_Internal_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_data_fifo_from_Internal_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_from_Internal_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_from_Internal_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_from_Internal_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_from_MAC0_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_from_MAC0_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_data_fifo_from_MAC0_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_from_MAC0_m_axis_tlast : STD_LOGIC;
  signal axis_data_fifo_from_MAC0_m_axis_tvalid : STD_LOGIC;
  signal axis_data_fifo_from_MAC1_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_from_MAC1_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_data_fifo_from_MAC1_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_from_MAC1_m_axis_tlast : STD_LOGIC;
  signal axis_data_fifo_from_MAC1_m_axis_tvalid : STD_LOGIC;
  signal axis_data_fifo_to_MAC0_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_to_MAC0_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_data_fifo_to_MAC0_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_to_MAC0_m_axis_tlast : STD_LOGIC;
  signal axis_data_fifo_to_MAC0_m_axis_tvalid : STD_LOGIC;
  signal axis_data_fifo_to_MAC1_m_axis_tdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axis_data_fifo_to_MAC1_m_axis_tdest : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_data_fifo_to_MAC1_m_axis_tkeep : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_data_fifo_to_MAC1_m_axis_tlast : STD_LOGIC;
  signal axis_data_fifo_to_MAC1_m_axis_tvalid : STD_LOGIC;
  signal axis_register_slice_0_s_axis_tready : STD_LOGIC;
  signal axis_register_slice_to_MAC1_s_axis_tready : STD_LOGIC;
  signal axis_register_slice_to_MAC3_s_axis_tready : STD_LOGIC;
  signal axis_register_slice_to_MAC4_s_axis_tready : STD_LOGIC;
  signal clk_100M_in_1 : STD_LOGIC;
  signal clk_250M_in_1 : STD_LOGIC;
  signal clk_400M_out_1 : STD_LOGIC;
  signal clk_wiz_0_clk_250M : STD_LOGIC;
  signal s_axis_aresetn_0_0_2 : STD_LOGIC;
  signal slice_to_MAC0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slice_to_MAC0_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice_to_MAC0_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal slice_to_MAC0_M_AXIS_TLAST : STD_LOGIC;
  signal slice_to_MAC0_M_AXIS_TREADY : STD_LOGIC;
  signal slice_to_MAC0_M_AXIS_TVALID : STD_LOGIC;
  signal slice_to_MAC1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slice_to_MAC1_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice_to_MAC1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal slice_to_MAC1_M_AXIS_TLAST : STD_LOGIC;
  signal slice_to_MAC1_M_AXIS_TREADY : STD_LOGIC;
  signal slice_to_MAC1_M_AXIS_TVALID : STD_LOGIC;
  signal slice_to_MAC2_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slice_to_MAC2_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice_to_MAC2_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal slice_to_MAC2_M_AXIS_TLAST : STD_LOGIC;
  signal slice_to_MAC2_M_AXIS_TREADY : STD_LOGIC;
  signal slice_to_MAC2_M_AXIS_TVALID : STD_LOGIC;
  signal slice_to_MAC3_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slice_to_MAC3_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slice_to_MAC3_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal slice_to_MAC3_M_AXIS_TLAST : STD_LOGIC;
  signal slice_to_MAC3_M_AXIS_TREADY : STD_LOGIC;
  signal slice_to_MAC3_M_AXIS_TVALID : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_5_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Packetizer_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_ipsec_dec_tag_check_en_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_mac_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_mode_select0_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_mode_select1_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_reset_logic_o_UNCONNECTED : STD_LOGIC;
  signal NLW_Register_interface_0_capsule_meta_0_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_3_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Register_interface_0_capsule_meta_6_UNCONNECTED : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_100_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_100_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_100_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_slice_250_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_250_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_250_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_slice_NIC_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_NIC_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_slice_NIC_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Conn1_ARADDR(31 downto 0) <= S_AXI_Lite_araddr(31 downto 0);
  Conn1_ARBURST(1 downto 0) <= S_AXI_Lite_arburst(1 downto 0);
  Conn1_ARCACHE(3 downto 0) <= S_AXI_Lite_arcache(3 downto 0);
  Conn1_ARLEN(7 downto 0) <= S_AXI_Lite_arlen(7 downto 0);
  Conn1_ARLOCK(0) <= S_AXI_Lite_arlock(0);
  Conn1_ARPROT(2 downto 0) <= S_AXI_Lite_arprot(2 downto 0);
  Conn1_ARQOS(3 downto 0) <= S_AXI_Lite_arqos(3 downto 0);
  Conn1_ARSIZE(2 downto 0) <= S_AXI_Lite_arsize(2 downto 0);
  Conn1_ARVALID <= S_AXI_Lite_arvalid;
  Conn1_AWADDR(31 downto 0) <= S_AXI_Lite_awaddr(31 downto 0);
  Conn1_AWBURST(1 downto 0) <= S_AXI_Lite_awburst(1 downto 0);
  Conn1_AWCACHE(3 downto 0) <= S_AXI_Lite_awcache(3 downto 0);
  Conn1_AWLEN(7 downto 0) <= S_AXI_Lite_awlen(7 downto 0);
  Conn1_AWLOCK(0) <= S_AXI_Lite_awlock(0);
  Conn1_AWPROT(2 downto 0) <= S_AXI_Lite_awprot(2 downto 0);
  Conn1_AWQOS(3 downto 0) <= S_AXI_Lite_awqos(3 downto 0);
  Conn1_AWSIZE(2 downto 0) <= S_AXI_Lite_awsize(2 downto 0);
  Conn1_AWVALID <= S_AXI_Lite_awvalid;
  Conn1_BREADY <= S_AXI_Lite_bready;
  Conn1_RREADY <= S_AXI_Lite_rready;
  Conn1_WDATA(31 downto 0) <= S_AXI_Lite_wdata(31 downto 0);
  Conn1_WLAST <= S_AXI_Lite_wlast;
  Conn1_WSTRB(3 downto 0) <= S_AXI_Lite_wstrb(3 downto 0);
  Conn1_WVALID <= S_AXI_Lite_wvalid;
  Conn2_TREADY <= M_AXIS_packetizer_tready;
  M00_AXIS_tdata(511 downto 0) <= slice_to_MAC0_M_AXIS_TDATA(511 downto 0);
  M00_AXIS_tdest(3 downto 0) <= slice_to_MAC0_M_AXIS_TDEST(3 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= slice_to_MAC0_M_AXIS_TKEEP(63 downto 0);
  M00_AXIS_tlast <= slice_to_MAC0_M_AXIS_TLAST;
  M00_AXIS_tvalid <= slice_to_MAC0_M_AXIS_TVALID;
  M01_AXIS_tdata(511 downto 0) <= slice_to_MAC1_M_AXIS_TDATA(511 downto 0);
  M01_AXIS_tdest(3 downto 0) <= slice_to_MAC1_M_AXIS_TDEST(3 downto 0);
  M01_AXIS_tkeep(63 downto 0) <= slice_to_MAC1_M_AXIS_TKEEP(63 downto 0);
  M01_AXIS_tlast <= slice_to_MAC1_M_AXIS_TLAST;
  M01_AXIS_tvalid <= slice_to_MAC1_M_AXIS_TVALID;
  M02_AXIS_tdata(511 downto 0) <= slice_to_MAC2_M_AXIS_TDATA(511 downto 0);
  M02_AXIS_tdest(3 downto 0) <= slice_to_MAC2_M_AXIS_TDEST(3 downto 0);
  M02_AXIS_tkeep(63 downto 0) <= slice_to_MAC2_M_AXIS_TKEEP(63 downto 0);
  M02_AXIS_tlast <= slice_to_MAC2_M_AXIS_TLAST;
  M02_AXIS_tvalid <= slice_to_MAC2_M_AXIS_TVALID;
  M03_AXIS_tdata(511 downto 0) <= slice_to_MAC3_M_AXIS_TDATA(511 downto 0);
  M03_AXIS_tdest(3 downto 0) <= slice_to_MAC3_M_AXIS_TDEST(3 downto 0);
  M03_AXIS_tkeep(63 downto 0) <= slice_to_MAC3_M_AXIS_TKEEP(63 downto 0);
  M03_AXIS_tlast <= slice_to_MAC3_M_AXIS_TLAST;
  M03_AXIS_tvalid <= slice_to_MAC3_M_AXIS_TVALID;
  M_AXIS_packetizer_tdata(511 downto 0) <= Conn2_TDATA(511 downto 0);
  M_AXIS_packetizer_tdest(3 downto 0) <= Conn2_TDEST(3 downto 0);
  M_AXIS_packetizer_tkeep(63 downto 0) <= Conn2_TKEEP(63 downto 0);
  M_AXIS_packetizer_tlast <= Conn2_TLAST;
  M_AXIS_packetizer_tvalid <= Conn2_TVALID;
  S_AXIS_Int_1_TDATA(511 downto 0) <= S_AXIS_MAC2_MAC3_tdata(511 downto 0);
  S_AXIS_Int_1_TDEST(1 downto 0) <= S_AXIS_MAC2_MAC3_tdest(1 downto 0);
  S_AXIS_Int_1_TKEEP(63 downto 0) <= S_AXIS_MAC2_MAC3_tkeep(63 downto 0);
  S_AXIS_Int_1_TLAST <= S_AXIS_MAC2_MAC3_tlast;
  S_AXIS_Int_1_TVALID <= S_AXIS_MAC2_MAC3_tvalid;
  S_AXIS_MAC0_1_TDATA(511 downto 0) <= S_AXIS_MAC0_tdata(511 downto 0);
  S_AXIS_MAC0_1_TDEST(1 downto 0) <= S_AXIS_MAC0_tdest(1 downto 0);
  S_AXIS_MAC0_1_TKEEP(63 downto 0) <= S_AXIS_MAC0_tkeep(63 downto 0);
  S_AXIS_MAC0_1_TLAST <= S_AXIS_MAC0_tlast;
  S_AXIS_MAC0_1_TVALID <= S_AXIS_MAC0_tvalid;
  S_AXIS_MAC0_tready <= S_AXIS_MAC0_1_TREADY;
  S_AXIS_MAC1_1_TDATA(511 downto 0) <= S_AXIS_MAC1_tdata(511 downto 0);
  S_AXIS_MAC1_1_TDEST(1 downto 0) <= S_AXIS_MAC1_tdest(1 downto 0);
  S_AXIS_MAC1_1_TKEEP(63 downto 0) <= S_AXIS_MAC1_tkeep(63 downto 0);
  S_AXIS_MAC1_1_TLAST <= S_AXIS_MAC1_tlast;
  S_AXIS_MAC1_1_TVALID <= S_AXIS_MAC1_tvalid;
  S_AXIS_MAC1_tready <= S_AXIS_MAC1_1_TREADY;
  S_AXIS_MAC2_MAC3_tready <= S_AXIS_Int_1_TREADY;
  S_AXI_Lite_arready <= Conn1_ARREADY;
  S_AXI_Lite_awready <= Conn1_AWREADY;
  S_AXI_Lite_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_Lite_bvalid <= Conn1_BVALID;
  S_AXI_Lite_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_Lite_rlast <= Conn1_RLAST;
  S_AXI_Lite_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_Lite_rvalid <= Conn1_RVALID;
  S_AXI_Lite_wready <= Conn1_WREADY;
  clk_100M_in_1 <= clk_100M_in;
  clk_250M_in_1 <= clk_250M_in;
  clk_400M_out_1 <= clk_400M_in;
  clk_wiz_0_clk_250M <= clk_200M_in;
  s_axis_aresetn_0_0_2 <= resetn;
  slice_to_MAC0_M_AXIS_TREADY <= M00_AXIS_tready;
  slice_to_MAC1_M_AXIS_TREADY <= M01_AXIS_tready;
  slice_to_MAC2_M_AXIS_TREADY <= M02_AXIS_tready;
  slice_to_MAC3_M_AXIS_TREADY <= M03_AXIS_tready;
INTERC_from_MAC: entity work.dynamic_design_top_INTERC_from_MAC_0
     port map (
      ACLK => clk_wiz_0_clk_250M,
      ARESETN => s_axis_aresetn_0_0_2,
      M00_AXIS_ACLK => clk_wiz_0_clk_250M,
      M00_AXIS_ARESETN => s_axis_aresetn_0_0_2,
      M00_AXIS_tdata(511 downto 0) => INTERC_from_MAE_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tdest(1 downto 0) => INTERC_from_MAE_M00_AXIS_TDEST(1 downto 0),
      M00_AXIS_tkeep(63 downto 0) => INTERC_from_MAE_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => INTERC_from_MAE_M00_AXIS_TLAST,
      M00_AXIS_tready => INTERC_from_MAE_M00_AXIS_TREADY,
      M00_AXIS_tvalid => INTERC_from_MAE_M00_AXIS_TVALID,
      M01_AXIS_ACLK => clk_wiz_0_clk_250M,
      M01_AXIS_ARESETN => s_axis_aresetn_0_0_2,
      M01_AXIS_tdata(511 downto 0) => INTERC_from_MAE_M01_AXIS_TDATA(511 downto 0),
      M01_AXIS_tdest(1 downto 0) => INTERC_from_MAE_M01_AXIS_TDEST(1 downto 0),
      M01_AXIS_tkeep(63 downto 0) => INTERC_from_MAE_M01_AXIS_TKEEP(63 downto 0),
      M01_AXIS_tlast => INTERC_from_MAE_M01_AXIS_TLAST,
      M01_AXIS_tready => INTERC_from_MAE_M01_AXIS_TREADY,
      M01_AXIS_tvalid => INTERC_from_MAE_M01_AXIS_TVALID,
      S00_AXIS_ACLK => clk_wiz_0_clk_250M,
      S00_AXIS_ARESETN => s_axis_aresetn_0_0_2,
      S00_AXIS_tdata(511 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TDATA(511 downto 0),
      S00_AXIS_tdest(1 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TDEST(1 downto 0),
      S00_AXIS_tkeep(63 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TKEEP(63 downto 0),
      S00_AXIS_tlast => axis_data_fifo_from_Internal_M_AXIS_TLAST,
      S00_AXIS_tready => axis_data_fifo_from_Internal_M_AXIS_TREADY,
      S00_AXIS_tvalid => axis_data_fifo_from_Internal_M_AXIS_TVALID
    );
Packetizer: component dynamic_design_top_Packetizer_0
     port map (
      aclk => clk_wiz_0_clk_250M,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(511 downto 0) => Conn2_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => Conn2_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => Conn2_TKEEP(63 downto 0),
      m_axis_tlast => Conn2_TLAST,
      m_axis_tready => Conn2_TREADY,
      m_axis_tvalid => Conn2_TVALID,
      s_axis_tdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tkeep(63 downto 0) => B"1111111111111111111111111111111111111111111111111111111111111111",
      s_axis_tlast => '0',
      s_axis_tready => NLW_Packetizer_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0'
    );
Register_interface_0: component dynamic_design_top_Register_interface_0_0
     port map (
      capsule_meta_0(5 downto 0) => NLW_Register_interface_0_capsule_meta_0_UNCONNECTED(5 downto 0),
      capsule_meta_1(15 downto 0) => NLW_Register_interface_0_capsule_meta_1_UNCONNECTED(15 downto 0),
      capsule_meta_2(31 downto 0) => NLW_Register_interface_0_capsule_meta_2_UNCONNECTED(31 downto 0),
      capsule_meta_3(30 downto 0) => NLW_Register_interface_0_capsule_meta_3_UNCONNECTED(30 downto 0),
      capsule_meta_4(31 downto 0) => NLW_Register_interface_0_capsule_meta_4_UNCONNECTED(31 downto 0),
      capsule_meta_5(31 downto 0) => NLW_Register_interface_0_capsule_meta_5_UNCONNECTED(31 downto 0),
      capsule_meta_6(18 downto 0) => NLW_Register_interface_0_capsule_meta_6_UNCONNECTED(18 downto 0),
      ipsec_dec_tag_check_en => NLW_Register_interface_0_ipsec_dec_tag_check_en_UNCONNECTED,
      mac_reset => NLW_Register_interface_0_mac_reset_UNCONNECTED,
      mode_select0 => NLW_Register_interface_0_mode_select0_UNCONNECTED,
      mode_select1 => NLW_Register_interface_0_mode_select1_UNCONNECTED,
      reset_logic_o => NLW_Register_interface_0_reset_logic_o_UNCONNECTED,
      s00_axi_aclk => clk_wiz_0_clk_250M,
      s00_axi_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      s00_axi_aresetn => s_axis_aresetn_0_0_2,
      s00_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s00_axi_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
axi_interconnect_0: entity work.dynamic_design_top_axi_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_250M,
      ARESETN => s_axis_aresetn_0_0_2,
      M00_ACLK => clk_wiz_0_clk_250M,
      M00_ARESETN => s_axis_aresetn_0_0_2,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_250M,
      M01_ARESETN => s_axis_aresetn_0_0_2,
      M01_AXI_araddr => NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arburst => NLW_axi_interconnect_0_M01_AXI_arburst_UNCONNECTED,
      M01_AXI_arcache => NLW_axi_interconnect_0_M01_AXI_arcache_UNCONNECTED,
      M01_AXI_arlen => NLW_axi_interconnect_0_M01_AXI_arlen_UNCONNECTED,
      M01_AXI_arlock => NLW_axi_interconnect_0_M01_AXI_arlock_UNCONNECTED,
      M01_AXI_arprot => NLW_axi_interconnect_0_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arqos => NLW_axi_interconnect_0_M01_AXI_arqos_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arregion => NLW_axi_interconnect_0_M01_AXI_arregion_UNCONNECTED,
      M01_AXI_arsize => NLW_axi_interconnect_0_M01_AXI_arsize_UNCONNECTED,
      M01_AXI_arvalid => NLW_axi_interconnect_0_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awburst => NLW_axi_interconnect_0_M01_AXI_awburst_UNCONNECTED,
      M01_AXI_awcache => NLW_axi_interconnect_0_M01_AXI_awcache_UNCONNECTED,
      M01_AXI_awlen => NLW_axi_interconnect_0_M01_AXI_awlen_UNCONNECTED,
      M01_AXI_awlock => NLW_axi_interconnect_0_M01_AXI_awlock_UNCONNECTED,
      M01_AXI_awprot => NLW_axi_interconnect_0_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awqos => NLW_axi_interconnect_0_M01_AXI_awqos_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awregion => NLW_axi_interconnect_0_M01_AXI_awregion_UNCONNECTED,
      M01_AXI_awsize => NLW_axi_interconnect_0_M01_AXI_awsize_UNCONNECTED,
      M01_AXI_awvalid => NLW_axi_interconnect_0_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bready => NLW_axi_interconnect_0_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rlast => '0',
      M01_AXI_rready => NLW_axi_interconnect_0_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_axi_interconnect_0_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wlast => NLW_axi_interconnect_0_M01_AXI_wlast_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_axi_interconnect_0_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_axi_interconnect_0_M01_AXI_wvalid_UNCONNECTED,
      S00_ACLK => clk_wiz_0_clk_250M,
      S00_ARESETN => s_axis_aresetn_0_0_2,
      S00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => Conn1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      S00_AXI_arready => Conn1_ARREADY,
      S00_AXI_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => Conn1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => Conn1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Conn1_AWQOS(3 downto 0),
      S00_AXI_awready => Conn1_AWREADY,
      S00_AXI_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => Conn1_AWVALID,
      S00_AXI_bready => Conn1_BREADY,
      S00_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      S00_AXI_bvalid => Conn1_BVALID,
      S00_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      S00_AXI_rlast => Conn1_RLAST,
      S00_AXI_rready => Conn1_RREADY,
      S00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      S00_AXI_rvalid => Conn1_RVALID,
      S00_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      S00_AXI_wlast => Conn1_WLAST,
      S00_AXI_wready => Conn1_WREADY,
      S00_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      S00_AXI_wvalid => Conn1_WVALID
    );
axis_data_fifo_from_Internal: component dynamic_design_top_axis_data_fifo_from_Internal_0
     port map (
      m_axis_tdata(511 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TDEST(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_from_Internal_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => axis_data_fifo_from_Internal_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_from_Internal_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_from_Internal_M_AXIS_TVALID,
      s_axis_aclk => clk_wiz_0_clk_250M,
      s_axis_aresetn => s_axis_aresetn_0_0_2,
      s_axis_tdata(511 downto 0) => S_AXIS_Int_1_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => S_AXIS_Int_1_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => S_AXIS_Int_1_TKEEP(63 downto 0),
      s_axis_tlast => S_AXIS_Int_1_TLAST,
      s_axis_tready => S_AXIS_Int_1_TREADY,
      s_axis_tvalid => S_AXIS_Int_1_TVALID
    );
axis_data_fifo_from_MAC0: component dynamic_design_top_axis_data_fifo_from_MAC0_0
     port map (
      m_axis_tdata(511 downto 0) => axis_data_fifo_from_MAC0_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_data_fifo_from_MAC0_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_from_MAC0_m_axis_tkeep(63 downto 0),
      m_axis_tlast => axis_data_fifo_from_MAC0_m_axis_tlast,
      m_axis_tready => axis_register_slice_0_s_axis_tready,
      m_axis_tvalid => axis_data_fifo_from_MAC0_m_axis_tvalid,
      s_axis_aclk => clk_wiz_0_clk_250M,
      s_axis_aresetn => s_axis_aresetn_0_0_2,
      s_axis_tdata(511 downto 0) => S_AXIS_MAC0_1_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => S_AXIS_MAC0_1_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => S_AXIS_MAC0_1_TKEEP(63 downto 0),
      s_axis_tlast => S_AXIS_MAC0_1_TLAST,
      s_axis_tready => S_AXIS_MAC0_1_TREADY,
      s_axis_tvalid => S_AXIS_MAC0_1_TVALID
    );
axis_data_fifo_from_MAC1: component dynamic_design_top_axis_data_fifo_from_MAC1_0
     port map (
      m_axis_tdata(511 downto 0) => axis_data_fifo_from_MAC1_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_data_fifo_from_MAC1_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_from_MAC1_m_axis_tkeep(63 downto 0),
      m_axis_tlast => axis_data_fifo_from_MAC1_m_axis_tlast,
      m_axis_tready => axis_register_slice_to_MAC3_s_axis_tready,
      m_axis_tvalid => axis_data_fifo_from_MAC1_m_axis_tvalid,
      s_axis_aclk => clk_wiz_0_clk_250M,
      s_axis_aresetn => s_axis_aresetn_0_0_2,
      s_axis_tdata(511 downto 0) => S_AXIS_MAC1_1_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => S_AXIS_MAC1_1_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => S_AXIS_MAC1_1_TKEEP(63 downto 0),
      s_axis_tlast => S_AXIS_MAC1_1_TLAST,
      s_axis_tready => S_AXIS_MAC1_1_TREADY,
      s_axis_tvalid => S_AXIS_MAC1_1_TVALID
    );
axis_data_fifo_to_MAC0: component dynamic_design_top_axis_data_fifo_to_MAC0_0
     port map (
      m_axis_tdata(511 downto 0) => axis_data_fifo_to_MAC0_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_data_fifo_to_MAC0_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_to_MAC0_m_axis_tkeep(63 downto 0),
      m_axis_tlast => axis_data_fifo_to_MAC0_m_axis_tlast,
      m_axis_tready => axis_register_slice_to_MAC4_s_axis_tready,
      m_axis_tvalid => axis_data_fifo_to_MAC0_m_axis_tvalid,
      s_axis_aclk => clk_wiz_0_clk_250M,
      s_axis_aresetn => s_axis_aresetn_0_0_2,
      s_axis_tdata(511 downto 0) => INTERC_from_MAE_M00_AXIS_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => INTERC_from_MAE_M00_AXIS_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => INTERC_from_MAE_M00_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => INTERC_from_MAE_M00_AXIS_TLAST,
      s_axis_tready => INTERC_from_MAE_M00_AXIS_TREADY,
      s_axis_tvalid => INTERC_from_MAE_M00_AXIS_TVALID
    );
axis_data_fifo_to_MAC1: component dynamic_design_top_axis_data_fifo_to_MAC1_0
     port map (
      m_axis_tdata(511 downto 0) => axis_data_fifo_to_MAC1_m_axis_tdata(511 downto 0),
      m_axis_tdest(1 downto 0) => axis_data_fifo_to_MAC1_m_axis_tdest(1 downto 0),
      m_axis_tkeep(63 downto 0) => axis_data_fifo_to_MAC1_m_axis_tkeep(63 downto 0),
      m_axis_tlast => axis_data_fifo_to_MAC1_m_axis_tlast,
      m_axis_tready => axis_register_slice_to_MAC1_s_axis_tready,
      m_axis_tvalid => axis_data_fifo_to_MAC1_m_axis_tvalid,
      s_axis_aclk => clk_wiz_0_clk_250M,
      s_axis_aresetn => s_axis_aresetn_0_0_2,
      s_axis_tdata(511 downto 0) => INTERC_from_MAE_M01_AXIS_TDATA(511 downto 0),
      s_axis_tdest(1 downto 0) => INTERC_from_MAE_M01_AXIS_TDEST(1 downto 0),
      s_axis_tkeep(63 downto 0) => INTERC_from_MAE_M01_AXIS_TKEEP(63 downto 0),
      s_axis_tlast => INTERC_from_MAE_M01_AXIS_TLAST,
      s_axis_tready => INTERC_from_MAE_M01_AXIS_TREADY,
      s_axis_tvalid => INTERC_from_MAE_M01_AXIS_TVALID
    );
slice_100: component dynamic_design_top_slice_100_0
     port map (
      aclk => clk_100M_in_1,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(7 downto 0) => NLW_slice_100_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => NLW_slice_100_m_axis_tvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tready => NLW_slice_100_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0'
    );
slice_250: component dynamic_design_top_slice_250_0
     port map (
      aclk => clk_250M_in_1,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(7 downto 0) => NLW_slice_250_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => NLW_slice_250_m_axis_tvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tready => NLW_slice_250_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0'
    );
slice_NIC: component dynamic_design_top_slice_NIC_0
     port map (
      aclk => clk_400M_out_1,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(7 downto 0) => NLW_slice_NIC_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => NLW_slice_NIC_m_axis_tvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tready => NLW_slice_NIC_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0'
    );
slice_to_MAC0: component dynamic_design_top_slice_to_MAC0_0
     port map (
      aclk => clk_wiz_0_clk_250M,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(511 downto 0) => slice_to_MAC0_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => slice_to_MAC0_M_AXIS_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => slice_to_MAC0_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => slice_to_MAC0_M_AXIS_TLAST,
      m_axis_tready => slice_to_MAC0_M_AXIS_TREADY,
      m_axis_tvalid => slice_to_MAC0_M_AXIS_TVALID,
      s_axis_tdata(511 downto 0) => axis_data_fifo_to_MAC0_m_axis_tdata(511 downto 0),
      s_axis_tdest(3 downto 0) => xlconcat_5_dout(3 downto 0),
      s_axis_tkeep(63 downto 0) => axis_data_fifo_to_MAC0_m_axis_tkeep(63 downto 0),
      s_axis_tlast => axis_data_fifo_to_MAC0_m_axis_tlast,
      s_axis_tready => axis_register_slice_to_MAC4_s_axis_tready,
      s_axis_tvalid => axis_data_fifo_to_MAC0_m_axis_tvalid
    );
slice_to_MAC1: component dynamic_design_top_slice_to_MAC1_0
     port map (
      aclk => clk_wiz_0_clk_250M,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(511 downto 0) => slice_to_MAC1_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => slice_to_MAC1_M_AXIS_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => slice_to_MAC1_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => slice_to_MAC1_M_AXIS_TLAST,
      m_axis_tready => slice_to_MAC1_M_AXIS_TREADY,
      m_axis_tvalid => slice_to_MAC1_M_AXIS_TVALID,
      s_axis_tdata(511 downto 0) => axis_data_fifo_to_MAC1_m_axis_tdata(511 downto 0),
      s_axis_tdest(3 downto 0) => xlconcat_3_dout(3 downto 0),
      s_axis_tkeep(63 downto 0) => axis_data_fifo_to_MAC1_m_axis_tkeep(63 downto 0),
      s_axis_tlast => axis_data_fifo_to_MAC1_m_axis_tlast,
      s_axis_tready => axis_register_slice_to_MAC1_s_axis_tready,
      s_axis_tvalid => axis_data_fifo_to_MAC1_m_axis_tvalid
    );
slice_to_MAC2: component dynamic_design_top_slice_to_MAC2_0
     port map (
      aclk => clk_wiz_0_clk_250M,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(511 downto 0) => slice_to_MAC2_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => slice_to_MAC2_M_AXIS_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => slice_to_MAC2_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => slice_to_MAC2_M_AXIS_TLAST,
      m_axis_tready => slice_to_MAC2_M_AXIS_TREADY,
      m_axis_tvalid => slice_to_MAC2_M_AXIS_TVALID,
      s_axis_tdata(511 downto 0) => axis_data_fifo_from_MAC0_m_axis_tdata(511 downto 0),
      s_axis_tdest(3 downto 0) => xlconcat_0_dout(3 downto 0),
      s_axis_tkeep(63 downto 0) => axis_data_fifo_from_MAC0_m_axis_tkeep(63 downto 0),
      s_axis_tlast => axis_data_fifo_from_MAC0_m_axis_tlast,
      s_axis_tready => axis_register_slice_0_s_axis_tready,
      s_axis_tvalid => axis_data_fifo_from_MAC0_m_axis_tvalid
    );
slice_to_MAC3: component dynamic_design_top_slice_to_MAC3_0
     port map (
      aclk => clk_wiz_0_clk_250M,
      aresetn => s_axis_aresetn_0_0_2,
      m_axis_tdata(511 downto 0) => slice_to_MAC3_M_AXIS_TDATA(511 downto 0),
      m_axis_tdest(3 downto 0) => slice_to_MAC3_M_AXIS_TDEST(3 downto 0),
      m_axis_tkeep(63 downto 0) => slice_to_MAC3_M_AXIS_TKEEP(63 downto 0),
      m_axis_tlast => slice_to_MAC3_M_AXIS_TLAST,
      m_axis_tready => slice_to_MAC3_M_AXIS_TREADY,
      m_axis_tvalid => slice_to_MAC3_M_AXIS_TVALID,
      s_axis_tdata(511 downto 0) => axis_data_fifo_from_MAC1_m_axis_tdata(511 downto 0),
      s_axis_tdest(3 downto 0) => xlconcat_1_dout(3 downto 0),
      s_axis_tkeep(63 downto 0) => axis_data_fifo_from_MAC1_m_axis_tkeep(63 downto 0),
      s_axis_tlast => axis_data_fifo_from_MAC1_m_axis_tlast,
      s_axis_tready => axis_register_slice_to_MAC3_s_axis_tready,
      s_axis_tvalid => axis_data_fifo_from_MAC1_m_axis_tvalid
    );
xlconcat_0: component dynamic_design_top_xlconcat_0_0
     port map (
      In0(1 downto 0) => axis_data_fifo_from_MAC0_m_axis_tdest(1 downto 0),
      In1(1 downto 0) => xlconstant_0_dout(1 downto 0),
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconcat_1: component dynamic_design_top_xlconcat_1_0
     port map (
      In0(1 downto 0) => axis_data_fifo_from_MAC1_m_axis_tdest(1 downto 0),
      In1(1 downto 0) => xlconstant_0_dout(1 downto 0),
      dout(3 downto 0) => xlconcat_1_dout(3 downto 0)
    );
xlconcat_3: component dynamic_design_top_xlconcat_3_0
     port map (
      In0(1 downto 0) => axis_data_fifo_to_MAC1_m_axis_tdest(1 downto 0),
      In1(1 downto 0) => xlconstant_0_dout(1 downto 0),
      dout(3 downto 0) => xlconcat_3_dout(3 downto 0)
    );
xlconcat_5: component dynamic_design_top_xlconcat_5_0
     port map (
      In0(1 downto 0) => axis_data_fifo_to_MAC0_m_axis_tdest(1 downto 0),
      In1(1 downto 0) => xlconstant_0_dout(1 downto 0),
      dout(3 downto 0) => xlconcat_5_dout(3 downto 0)
    );
xlconstant_0: component dynamic_design_top_xlconstant_0_0
     port map (
      dout(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top is
  port (
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M03_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_packetizer_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXIS_packetizer_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_packetizer_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_packetizer_tlast : out STD_LOGIC;
    M_AXIS_packetizer_tready : in STD_LOGIC;
    M_AXIS_packetizer_tvalid : out STD_LOGIC;
    S_AXIS_MAC0_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC0_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC0_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC0_tlast : in STD_LOGIC;
    S_AXIS_MAC0_tready : out STD_LOGIC;
    S_AXIS_MAC0_tvalid : in STD_LOGIC;
    S_AXIS_MAC1_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC1_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC1_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC1_tlast : in STD_LOGIC;
    S_AXIS_MAC1_tready : out STD_LOGIC;
    S_AXIS_MAC1_tvalid : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC2_MAC3_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC2_MAC3_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC2_MAC3_tlast : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tready : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tvalid : in STD_LOGIC;
    S_AXI_Lite_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_Lite_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_Lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_arready : out STD_LOGIC;
    S_AXI_Lite_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_arvalid : in STD_LOGIC;
    S_AXI_Lite_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_Lite_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_Lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_awready : out STD_LOGIC;
    S_AXI_Lite_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_Lite_awvalid : in STD_LOGIC;
    S_AXI_Lite_bready : in STD_LOGIC;
    S_AXI_Lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_bvalid : out STD_LOGIC;
    S_AXI_Lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_rlast : out STD_LOGIC;
    S_AXI_Lite_rready : in STD_LOGIC;
    S_AXI_Lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_Lite_rvalid : out STD_LOGIC;
    S_AXI_Lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_Lite_wlast : in STD_LOGIC;
    S_AXI_Lite_wready : out STD_LOGIC;
    S_AXI_Lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_Lite_wvalid : in STD_LOGIC;
    clk_100M_in : in STD_LOGIC;
    clk_200M_in : in STD_LOGIC;
    clk_250M_in : in STD_LOGIC;
    clk_400M_in : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of dynamic_design_top : entity is "dynamic_design_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dynamic_design_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=41,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of dynamic_design_top : entity is "dynamic_design_top.hwdef";
end dynamic_design_top;

architecture STRUCTURE of dynamic_design_top is
  signal Dynamic_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Dynamic_M00_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dynamic_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Dynamic_M00_AXIS_TLAST : STD_LOGIC;
  signal Dynamic_M00_AXIS_TREADY : STD_LOGIC;
  signal Dynamic_M00_AXIS_TVALID : STD_LOGIC;
  signal Dynamic_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Dynamic_M01_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dynamic_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Dynamic_M01_AXIS_TLAST : STD_LOGIC;
  signal Dynamic_M01_AXIS_TREADY : STD_LOGIC;
  signal Dynamic_M01_AXIS_TVALID : STD_LOGIC;
  signal Dynamic_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Dynamic_M02_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dynamic_M02_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Dynamic_M02_AXIS_TLAST : STD_LOGIC;
  signal Dynamic_M02_AXIS_TREADY : STD_LOGIC;
  signal Dynamic_M02_AXIS_TVALID : STD_LOGIC;
  signal Dynamic_M03_AXIS_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Dynamic_M03_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dynamic_M03_AXIS_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Dynamic_M03_AXIS_TLAST : STD_LOGIC;
  signal Dynamic_M03_AXIS_TREADY : STD_LOGIC;
  signal Dynamic_M03_AXIS_TVALID : STD_LOGIC;
  signal Dynamic_M_AXIS_packetizer_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Dynamic_M_AXIS_packetizer_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Dynamic_M_AXIS_packetizer_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Dynamic_M_AXIS_packetizer_TLAST : STD_LOGIC;
  signal Dynamic_M_AXIS_packetizer_TREADY : STD_LOGIC;
  signal Dynamic_M_AXIS_packetizer_TVALID : STD_LOGIC;
  signal S_AXIS_MAC0_0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_MAC0_0_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_MAC0_0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_MAC0_0_1_TLAST : STD_LOGIC;
  signal S_AXIS_MAC0_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_MAC0_0_1_TVALID : STD_LOGIC;
  signal S_AXIS_MAC1_0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_MAC1_0_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_MAC1_0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_MAC1_0_1_TLAST : STD_LOGIC;
  signal S_AXIS_MAC1_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_MAC1_0_1_TVALID : STD_LOGIC;
  signal S_AXIS_MAC2_MAC3_0_1_TDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal S_AXIS_MAC2_MAC3_0_1_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXIS_MAC2_MAC3_0_1_TKEEP : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S_AXIS_MAC2_MAC3_0_1_TLAST : STD_LOGIC;
  signal S_AXIS_MAC2_MAC3_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_MAC2_MAC3_0_1_TVALID : STD_LOGIC;
  signal S_AXI_Lite_0_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_Lite_0_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_Lite_0_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_Lite_0_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_Lite_0_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_Lite_0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_Lite_0_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_Lite_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_Lite_0_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_Lite_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_Lite_0_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_Lite_0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_Lite_0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_Lite_0_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_Lite_0_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_Lite_0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_Lite_0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_Lite_0_1_AWREADY : STD_LOGIC;
  signal S_AXI_Lite_0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_Lite_0_1_AWVALID : STD_LOGIC;
  signal S_AXI_Lite_0_1_BREADY : STD_LOGIC;
  signal S_AXI_Lite_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_Lite_0_1_BVALID : STD_LOGIC;
  signal S_AXI_Lite_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_Lite_0_1_RLAST : STD_LOGIC;
  signal S_AXI_Lite_0_1_RREADY : STD_LOGIC;
  signal S_AXI_Lite_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_Lite_0_1_RVALID : STD_LOGIC;
  signal S_AXI_Lite_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_Lite_0_1_WLAST : STD_LOGIC;
  signal S_AXI_Lite_0_1_WREADY : STD_LOGIC;
  signal S_AXI_Lite_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_Lite_0_1_WVALID : STD_LOGIC;
  signal clk_100M_in_0_1 : STD_LOGIC;
  signal clk_200M_in_0_1 : STD_LOGIC;
  signal clk_250M_in_0_1 : STD_LOGIC;
  signal clk_400M_in_0_1 : STD_LOGIC;
  signal resetn_0_1 : STD_LOGIC;
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
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of clk_100M_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100M_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100M_in : signal is "XIL_INTERFACENAME CLK.CLK_100M_IN, ASSOCIATED_RESET resetn, CLK_DOMAIN dynamic_design_top_clk_100M_in_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_200M_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_200M_IN CLK";
  attribute X_INTERFACE_PARAMETER of clk_200M_in : signal is "XIL_INTERFACENAME CLK.CLK_200M_IN, ASSOCIATED_BUSIF S_AXIS_MAC0:S_AXIS_MAC1:S_AXIS_MAC2_MAC3:S_AXI_Lite:M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M_AXIS_packetizer, ASSOCIATED_RESET resetn, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_250M_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_250M_IN CLK";
  attribute X_INTERFACE_PARAMETER of clk_250M_in : signal is "XIL_INTERFACENAME CLK.CLK_250M_IN, ASSOCIATED_RESET resetn, CLK_DOMAIN dynamic_design_top_clk_250M_in_0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_400M_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_400M_IN CLK";
  attribute X_INTERFACE_PARAMETER of clk_400M_in : signal is "XIL_INTERFACENAME CLK.CLK_400M_IN, ASSOCIATED_RESET resetn, CLK_DOMAIN dynamic_design_top_clk_400M_in_0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M00_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_PARAMETER of M00_AXIS_tdata : signal is "XIL_INTERFACENAME M00_AXIS, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M00_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M00_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M00_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_PARAMETER of M01_AXIS_tdata : signal is "XIL_INTERFACENAME M01_AXIS, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M01_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M01_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M01_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_PARAMETER of M02_AXIS_tdata : signal is "XIL_INTERFACENAME M02_AXIS, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M02_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M02_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M02_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_PARAMETER of M03_AXIS_tdata : signal is "XIL_INTERFACENAME M03_AXIS, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M03_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M03_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 M03_AXIS ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_PARAMETER of M_AXIS_packetizer_tdata : signal is "XIL_INTERFACENAME M_AXIS_packetizer, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tdest : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of M_AXIS_packetizer_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_packetizer ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC0_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC0, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC0_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC0 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC1_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC1, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC1_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC1 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_PARAMETER of S_AXIS_MAC2_MAC3_tdata : signal is "XIL_INTERFACENAME S_AXIS_MAC2_MAC3, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, FREQ_HZ 200000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 2, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tdest : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXIS_MAC2_MAC3_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MAC2_MAC3 ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_PARAMETER of S_AXI_Lite_araddr : signal is "XIL_INTERFACENAME S_AXI_Lite, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN dynamic_design_top_clk_200M_in_0, DATA_WIDTH 32, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
  attribute X_INTERFACE_INFO of S_AXI_Lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_Lite ";
begin
  Dynamic_M00_AXIS_TREADY <= M00_AXIS_tready;
  Dynamic_M01_AXIS_TREADY <= M01_AXIS_tready;
  Dynamic_M02_AXIS_TREADY <= M02_AXIS_tready;
  Dynamic_M03_AXIS_TREADY <= M03_AXIS_tready;
  Dynamic_M_AXIS_packetizer_TREADY <= M_AXIS_packetizer_tready;
  M00_AXIS_tdata(511 downto 0) <= Dynamic_M00_AXIS_TDATA(511 downto 0);
  M00_AXIS_tdest(3 downto 0) <= Dynamic_M00_AXIS_TDEST(3 downto 0);
  M00_AXIS_tkeep(63 downto 0) <= Dynamic_M00_AXIS_TKEEP(63 downto 0);
  M00_AXIS_tlast <= Dynamic_M00_AXIS_TLAST;
  M00_AXIS_tvalid <= Dynamic_M00_AXIS_TVALID;
  M01_AXIS_tdata(511 downto 0) <= Dynamic_M01_AXIS_TDATA(511 downto 0);
  M01_AXIS_tdest(3 downto 0) <= Dynamic_M01_AXIS_TDEST(3 downto 0);
  M01_AXIS_tkeep(63 downto 0) <= Dynamic_M01_AXIS_TKEEP(63 downto 0);
  M01_AXIS_tlast <= Dynamic_M01_AXIS_TLAST;
  M01_AXIS_tvalid <= Dynamic_M01_AXIS_TVALID;
  M02_AXIS_tdata(511 downto 0) <= Dynamic_M02_AXIS_TDATA(511 downto 0);
  M02_AXIS_tdest(3 downto 0) <= Dynamic_M02_AXIS_TDEST(3 downto 0);
  M02_AXIS_tkeep(63 downto 0) <= Dynamic_M02_AXIS_TKEEP(63 downto 0);
  M02_AXIS_tlast <= Dynamic_M02_AXIS_TLAST;
  M02_AXIS_tvalid <= Dynamic_M02_AXIS_TVALID;
  M03_AXIS_tdata(511 downto 0) <= Dynamic_M03_AXIS_TDATA(511 downto 0);
  M03_AXIS_tdest(3 downto 0) <= Dynamic_M03_AXIS_TDEST(3 downto 0);
  M03_AXIS_tkeep(63 downto 0) <= Dynamic_M03_AXIS_TKEEP(63 downto 0);
  M03_AXIS_tlast <= Dynamic_M03_AXIS_TLAST;
  M03_AXIS_tvalid <= Dynamic_M03_AXIS_TVALID;
  M_AXIS_packetizer_tdata(511 downto 0) <= Dynamic_M_AXIS_packetizer_TDATA(511 downto 0);
  M_AXIS_packetizer_tdest(3 downto 0) <= Dynamic_M_AXIS_packetizer_TDEST(3 downto 0);
  M_AXIS_packetizer_tkeep(63 downto 0) <= Dynamic_M_AXIS_packetizer_TKEEP(63 downto 0);
  M_AXIS_packetizer_tlast <= Dynamic_M_AXIS_packetizer_TLAST;
  M_AXIS_packetizer_tvalid <= Dynamic_M_AXIS_packetizer_TVALID;
  S_AXIS_MAC0_0_1_TDATA(511 downto 0) <= S_AXIS_MAC0_tdata(511 downto 0);
  S_AXIS_MAC0_0_1_TDEST(1 downto 0) <= S_AXIS_MAC0_tdest(1 downto 0);
  S_AXIS_MAC0_0_1_TKEEP(63 downto 0) <= S_AXIS_MAC0_tkeep(63 downto 0);
  S_AXIS_MAC0_0_1_TLAST <= S_AXIS_MAC0_tlast;
  S_AXIS_MAC0_0_1_TVALID <= S_AXIS_MAC0_tvalid;
  S_AXIS_MAC0_tready <= S_AXIS_MAC0_0_1_TREADY;
  S_AXIS_MAC1_0_1_TDATA(511 downto 0) <= S_AXIS_MAC1_tdata(511 downto 0);
  S_AXIS_MAC1_0_1_TDEST(1 downto 0) <= S_AXIS_MAC1_tdest(1 downto 0);
  S_AXIS_MAC1_0_1_TKEEP(63 downto 0) <= S_AXIS_MAC1_tkeep(63 downto 0);
  S_AXIS_MAC1_0_1_TLAST <= S_AXIS_MAC1_tlast;
  S_AXIS_MAC1_0_1_TVALID <= S_AXIS_MAC1_tvalid;
  S_AXIS_MAC1_tready <= S_AXIS_MAC1_0_1_TREADY;
  S_AXIS_MAC2_MAC3_0_1_TDATA(511 downto 0) <= S_AXIS_MAC2_MAC3_tdata(511 downto 0);
  S_AXIS_MAC2_MAC3_0_1_TDEST(1 downto 0) <= S_AXIS_MAC2_MAC3_tdest(1 downto 0);
  S_AXIS_MAC2_MAC3_0_1_TKEEP(63 downto 0) <= S_AXIS_MAC2_MAC3_tkeep(63 downto 0);
  S_AXIS_MAC2_MAC3_0_1_TLAST <= S_AXIS_MAC2_MAC3_tlast;
  S_AXIS_MAC2_MAC3_0_1_TVALID <= S_AXIS_MAC2_MAC3_tvalid;
  S_AXIS_MAC2_MAC3_tready <= S_AXIS_MAC2_MAC3_0_1_TREADY;
  S_AXI_Lite_0_1_ARADDR(31 downto 0) <= S_AXI_Lite_araddr(31 downto 0);
  S_AXI_Lite_0_1_ARBURST(1 downto 0) <= S_AXI_Lite_arburst(1 downto 0);
  S_AXI_Lite_0_1_ARCACHE(3 downto 0) <= S_AXI_Lite_arcache(3 downto 0);
  S_AXI_Lite_0_1_ARLEN(7 downto 0) <= S_AXI_Lite_arlen(7 downto 0);
  S_AXI_Lite_0_1_ARLOCK(0) <= S_AXI_Lite_arlock(0);
  S_AXI_Lite_0_1_ARPROT(2 downto 0) <= S_AXI_Lite_arprot(2 downto 0);
  S_AXI_Lite_0_1_ARQOS(3 downto 0) <= S_AXI_Lite_arqos(3 downto 0);
  S_AXI_Lite_0_1_ARSIZE(2 downto 0) <= S_AXI_Lite_arsize(2 downto 0);
  S_AXI_Lite_0_1_ARVALID <= S_AXI_Lite_arvalid;
  S_AXI_Lite_0_1_AWADDR(31 downto 0) <= S_AXI_Lite_awaddr(31 downto 0);
  S_AXI_Lite_0_1_AWBURST(1 downto 0) <= S_AXI_Lite_awburst(1 downto 0);
  S_AXI_Lite_0_1_AWCACHE(3 downto 0) <= S_AXI_Lite_awcache(3 downto 0);
  S_AXI_Lite_0_1_AWLEN(7 downto 0) <= S_AXI_Lite_awlen(7 downto 0);
  S_AXI_Lite_0_1_AWLOCK(0) <= S_AXI_Lite_awlock(0);
  S_AXI_Lite_0_1_AWPROT(2 downto 0) <= S_AXI_Lite_awprot(2 downto 0);
  S_AXI_Lite_0_1_AWQOS(3 downto 0) <= S_AXI_Lite_awqos(3 downto 0);
  S_AXI_Lite_0_1_AWSIZE(2 downto 0) <= S_AXI_Lite_awsize(2 downto 0);
  S_AXI_Lite_0_1_AWVALID <= S_AXI_Lite_awvalid;
  S_AXI_Lite_0_1_BREADY <= S_AXI_Lite_bready;
  S_AXI_Lite_0_1_RREADY <= S_AXI_Lite_rready;
  S_AXI_Lite_0_1_WDATA(31 downto 0) <= S_AXI_Lite_wdata(31 downto 0);
  S_AXI_Lite_0_1_WLAST <= S_AXI_Lite_wlast;
  S_AXI_Lite_0_1_WSTRB(3 downto 0) <= S_AXI_Lite_wstrb(3 downto 0);
  S_AXI_Lite_0_1_WVALID <= S_AXI_Lite_wvalid;
  S_AXI_Lite_arready <= S_AXI_Lite_0_1_ARREADY;
  S_AXI_Lite_awready <= S_AXI_Lite_0_1_AWREADY;
  S_AXI_Lite_bresp(1 downto 0) <= S_AXI_Lite_0_1_BRESP(1 downto 0);
  S_AXI_Lite_bvalid <= S_AXI_Lite_0_1_BVALID;
  S_AXI_Lite_rdata(31 downto 0) <= S_AXI_Lite_0_1_RDATA(31 downto 0);
  S_AXI_Lite_rlast <= S_AXI_Lite_0_1_RLAST;
  S_AXI_Lite_rresp(1 downto 0) <= S_AXI_Lite_0_1_RRESP(1 downto 0);
  S_AXI_Lite_rvalid <= S_AXI_Lite_0_1_RVALID;
  S_AXI_Lite_wready <= S_AXI_Lite_0_1_WREADY;
  clk_100M_in_0_1 <= clk_100M_in;
  clk_200M_in_0_1 <= clk_200M_in;
  clk_250M_in_0_1 <= clk_250M_in;
  clk_400M_in_0_1 <= clk_400M_in;
  resetn_0_1 <= resetn;
Dynamic: entity work.Dynamic_imp_1KRJ0N5
     port map (
      M00_AXIS_tdata(511 downto 0) => Dynamic_M00_AXIS_TDATA(511 downto 0),
      M00_AXIS_tdest(3 downto 0) => Dynamic_M00_AXIS_TDEST(3 downto 0),
      M00_AXIS_tkeep(63 downto 0) => Dynamic_M00_AXIS_TKEEP(63 downto 0),
      M00_AXIS_tlast => Dynamic_M00_AXIS_TLAST,
      M00_AXIS_tready => Dynamic_M00_AXIS_TREADY,
      M00_AXIS_tvalid => Dynamic_M00_AXIS_TVALID,
      M01_AXIS_tdata(511 downto 0) => Dynamic_M01_AXIS_TDATA(511 downto 0),
      M01_AXIS_tdest(3 downto 0) => Dynamic_M01_AXIS_TDEST(3 downto 0),
      M01_AXIS_tkeep(63 downto 0) => Dynamic_M01_AXIS_TKEEP(63 downto 0),
      M01_AXIS_tlast => Dynamic_M01_AXIS_TLAST,
      M01_AXIS_tready => Dynamic_M01_AXIS_TREADY,
      M01_AXIS_tvalid => Dynamic_M01_AXIS_TVALID,
      M02_AXIS_tdata(511 downto 0) => Dynamic_M02_AXIS_TDATA(511 downto 0),
      M02_AXIS_tdest(3 downto 0) => Dynamic_M02_AXIS_TDEST(3 downto 0),
      M02_AXIS_tkeep(63 downto 0) => Dynamic_M02_AXIS_TKEEP(63 downto 0),
      M02_AXIS_tlast => Dynamic_M02_AXIS_TLAST,
      M02_AXIS_tready => Dynamic_M02_AXIS_TREADY,
      M02_AXIS_tvalid => Dynamic_M02_AXIS_TVALID,
      M03_AXIS_tdata(511 downto 0) => Dynamic_M03_AXIS_TDATA(511 downto 0),
      M03_AXIS_tdest(3 downto 0) => Dynamic_M03_AXIS_TDEST(3 downto 0),
      M03_AXIS_tkeep(63 downto 0) => Dynamic_M03_AXIS_TKEEP(63 downto 0),
      M03_AXIS_tlast => Dynamic_M03_AXIS_TLAST,
      M03_AXIS_tready => Dynamic_M03_AXIS_TREADY,
      M03_AXIS_tvalid => Dynamic_M03_AXIS_TVALID,
      M_AXIS_packetizer_tdata(511 downto 0) => Dynamic_M_AXIS_packetizer_TDATA(511 downto 0),
      M_AXIS_packetizer_tdest(3 downto 0) => Dynamic_M_AXIS_packetizer_TDEST(3 downto 0),
      M_AXIS_packetizer_tkeep(63 downto 0) => Dynamic_M_AXIS_packetizer_TKEEP(63 downto 0),
      M_AXIS_packetizer_tlast => Dynamic_M_AXIS_packetizer_TLAST,
      M_AXIS_packetizer_tready => Dynamic_M_AXIS_packetizer_TREADY,
      M_AXIS_packetizer_tvalid => Dynamic_M_AXIS_packetizer_TVALID,
      S_AXIS_MAC0_tdata(511 downto 0) => S_AXIS_MAC0_0_1_TDATA(511 downto 0),
      S_AXIS_MAC0_tdest(1 downto 0) => S_AXIS_MAC0_0_1_TDEST(1 downto 0),
      S_AXIS_MAC0_tkeep(63 downto 0) => S_AXIS_MAC0_0_1_TKEEP(63 downto 0),
      S_AXIS_MAC0_tlast => S_AXIS_MAC0_0_1_TLAST,
      S_AXIS_MAC0_tready => S_AXIS_MAC0_0_1_TREADY,
      S_AXIS_MAC0_tvalid => S_AXIS_MAC0_0_1_TVALID,
      S_AXIS_MAC1_tdata(511 downto 0) => S_AXIS_MAC1_0_1_TDATA(511 downto 0),
      S_AXIS_MAC1_tdest(1 downto 0) => S_AXIS_MAC1_0_1_TDEST(1 downto 0),
      S_AXIS_MAC1_tkeep(63 downto 0) => S_AXIS_MAC1_0_1_TKEEP(63 downto 0),
      S_AXIS_MAC1_tlast => S_AXIS_MAC1_0_1_TLAST,
      S_AXIS_MAC1_tready => S_AXIS_MAC1_0_1_TREADY,
      S_AXIS_MAC1_tvalid => S_AXIS_MAC1_0_1_TVALID,
      S_AXIS_MAC2_MAC3_tdata(511 downto 0) => S_AXIS_MAC2_MAC3_0_1_TDATA(511 downto 0),
      S_AXIS_MAC2_MAC3_tdest(1 downto 0) => S_AXIS_MAC2_MAC3_0_1_TDEST(1 downto 0),
      S_AXIS_MAC2_MAC3_tkeep(63 downto 0) => S_AXIS_MAC2_MAC3_0_1_TKEEP(63 downto 0),
      S_AXIS_MAC2_MAC3_tlast => S_AXIS_MAC2_MAC3_0_1_TLAST,
      S_AXIS_MAC2_MAC3_tready => S_AXIS_MAC2_MAC3_0_1_TREADY,
      S_AXIS_MAC2_MAC3_tvalid => S_AXIS_MAC2_MAC3_0_1_TVALID,
      S_AXI_Lite_araddr(31 downto 0) => S_AXI_Lite_0_1_ARADDR(31 downto 0),
      S_AXI_Lite_arburst(1 downto 0) => S_AXI_Lite_0_1_ARBURST(1 downto 0),
      S_AXI_Lite_arcache(3 downto 0) => S_AXI_Lite_0_1_ARCACHE(3 downto 0),
      S_AXI_Lite_arlen(7 downto 0) => S_AXI_Lite_0_1_ARLEN(7 downto 0),
      S_AXI_Lite_arlock(0) => S_AXI_Lite_0_1_ARLOCK(0),
      S_AXI_Lite_arprot(2 downto 0) => S_AXI_Lite_0_1_ARPROT(2 downto 0),
      S_AXI_Lite_arqos(3 downto 0) => S_AXI_Lite_0_1_ARQOS(3 downto 0),
      S_AXI_Lite_arready => S_AXI_Lite_0_1_ARREADY,
      S_AXI_Lite_arsize(2 downto 0) => S_AXI_Lite_0_1_ARSIZE(2 downto 0),
      S_AXI_Lite_arvalid => S_AXI_Lite_0_1_ARVALID,
      S_AXI_Lite_awaddr(31 downto 0) => S_AXI_Lite_0_1_AWADDR(31 downto 0),
      S_AXI_Lite_awburst(1 downto 0) => S_AXI_Lite_0_1_AWBURST(1 downto 0),
      S_AXI_Lite_awcache(3 downto 0) => S_AXI_Lite_0_1_AWCACHE(3 downto 0),
      S_AXI_Lite_awlen(7 downto 0) => S_AXI_Lite_0_1_AWLEN(7 downto 0),
      S_AXI_Lite_awlock(0) => S_AXI_Lite_0_1_AWLOCK(0),
      S_AXI_Lite_awprot(2 downto 0) => S_AXI_Lite_0_1_AWPROT(2 downto 0),
      S_AXI_Lite_awqos(3 downto 0) => S_AXI_Lite_0_1_AWQOS(3 downto 0),
      S_AXI_Lite_awready => S_AXI_Lite_0_1_AWREADY,
      S_AXI_Lite_awsize(2 downto 0) => S_AXI_Lite_0_1_AWSIZE(2 downto 0),
      S_AXI_Lite_awvalid => S_AXI_Lite_0_1_AWVALID,
      S_AXI_Lite_bready => S_AXI_Lite_0_1_BREADY,
      S_AXI_Lite_bresp(1 downto 0) => S_AXI_Lite_0_1_BRESP(1 downto 0),
      S_AXI_Lite_bvalid => S_AXI_Lite_0_1_BVALID,
      S_AXI_Lite_rdata(31 downto 0) => S_AXI_Lite_0_1_RDATA(31 downto 0),
      S_AXI_Lite_rlast => S_AXI_Lite_0_1_RLAST,
      S_AXI_Lite_rready => S_AXI_Lite_0_1_RREADY,
      S_AXI_Lite_rresp(1 downto 0) => S_AXI_Lite_0_1_RRESP(1 downto 0),
      S_AXI_Lite_rvalid => S_AXI_Lite_0_1_RVALID,
      S_AXI_Lite_wdata(31 downto 0) => S_AXI_Lite_0_1_WDATA(31 downto 0),
      S_AXI_Lite_wlast => S_AXI_Lite_0_1_WLAST,
      S_AXI_Lite_wready => S_AXI_Lite_0_1_WREADY,
      S_AXI_Lite_wstrb(3 downto 0) => S_AXI_Lite_0_1_WSTRB(3 downto 0),
      S_AXI_Lite_wvalid => S_AXI_Lite_0_1_WVALID,
      clk_100M_in => clk_100M_in_0_1,
      clk_200M_in => clk_200M_in_0_1,
      clk_250M_in => clk_250M_in_0_1,
      clk_400M_in => clk_400M_in_0_1,
      resetn => resetn_0_1
    );
end STRUCTURE;
