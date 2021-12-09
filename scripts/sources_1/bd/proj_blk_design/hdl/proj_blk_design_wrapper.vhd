--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sun May 16 19:07:03 2021
--Host        : newton running 64-bit unknown
--Command     : generate_target proj_blk_design_wrapper.bd
--Design      : proj_blk_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proj_blk_design_wrapper is
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
end proj_blk_design_wrapper;

architecture STRUCTURE of proj_blk_design_wrapper is
  component proj_blk_design is
  port (
    clk_100M_in : in STD_LOGIC;
    clk_200M_out : out STD_LOGIC;
    clk_400M_out : out STD_LOGIC;
    port0_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    port1_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn : out STD_LOGIC;
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
    tx_resend_pause_11_o : out STD_LOGIC;
    rx_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_00_tlast : in STD_LOGIC;
    rx_AXIS_00_tvalid : in STD_LOGIC;
    rx_AXIS_00_tready : out STD_LOGIC;
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
    tx_AXIS_01_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_01_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_01_tlast : out STD_LOGIC;
    tx_AXIS_01_tvalid : out STD_LOGIC;
    tx_AXIS_01_tready : in STD_LOGIC;
    tx_AXIS_11_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_11_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_11_tlast : out STD_LOGIC;
    tx_AXIS_11_tvalid : out STD_LOGIC;
    tx_AXIS_11_tready : in STD_LOGIC;
    tx_AXIS_10_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_10_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_10_tlast : out STD_LOGIC;
    tx_AXIS_10_tvalid : out STD_LOGIC;
    tx_AXIS_10_tready : in STD_LOGIC;
    tx_AXIS_00_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_00_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_00_tlast : out STD_LOGIC;
    tx_AXIS_00_tvalid : out STD_LOGIC;
    tx_AXIS_00_tready : in STD_LOGIC;
    S_AXIS_MAC0_tvalid : out STD_LOGIC;
    S_AXIS_MAC0_tready : in STD_LOGIC;
    S_AXIS_MAC0_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC0_tlast : out STD_LOGIC;
    S_AXIS_MAC0_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC0_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC1_tvalid : out STD_LOGIC;
    S_AXIS_MAC1_tready : in STD_LOGIC;
    S_AXIS_MAC1_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC1_tlast : out STD_LOGIC;
    S_AXIS_MAC1_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC1_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_MAC2_MAC3_tvalid : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tready : in STD_LOGIC;
    S_AXIS_MAC2_MAC3_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXIS_MAC2_MAC3_tlast : out STD_LOGIC;
    S_AXIS_MAC2_MAC3_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_MAC2_MAC3_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_Lite_arvalid : out STD_LOGIC;
    S_AXIS_Lite_arready : in STD_LOGIC;
    S_AXIS_Lite_awvalid : out STD_LOGIC;
    S_AXIS_Lite_awready : in STD_LOGIC;
    S_AXIS_Lite_bvalid : in STD_LOGIC;
    S_AXIS_Lite_bready : out STD_LOGIC;
    S_AXIS_Lite_rvalid : in STD_LOGIC;
    S_AXIS_Lite_rready : out STD_LOGIC;
    S_AXIS_Lite_wvalid : out STD_LOGIC;
    S_AXIS_Lite_wready : in STD_LOGIC;
    S_AXIS_Lite_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXIS_Lite_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_Lite_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_Lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXIS_Lite_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXIS_Lite_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_Lite_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_Lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_Lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_100M_out : out STD_LOGIC;
    M00_AXIS_tvalid : in STD_LOGIC;
    M00_AXIS_tready : out STD_LOGIC;
    M00_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXIS_tlast : in STD_LOGIC;
    M00_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXIS_tvalid : in STD_LOGIC;
    M01_AXIS_tready : out STD_LOGIC;
    M01_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXIS_tlast : in STD_LOGIC;
    M01_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXIS_tvalid : in STD_LOGIC;
    M02_AXIS_tready : out STD_LOGIC;
    M02_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXIS_tlast : in STD_LOGIC;
    M02_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M03_AXIS_tvalid : in STD_LOGIC;
    M03_AXIS_tready : out STD_LOGIC;
    M03_AXIS_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M03_AXIS_tlast : in STD_LOGIC;
    M03_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_packetizer_tvalid : in STD_LOGIC;
    M_AXIS_packetizer_tready : out STD_LOGIC;
    M_AXIS_packetizer_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component proj_blk_design;
begin
proj_blk_design_i: component proj_blk_design
     port map (
      M00_AXIS_tdata(511 downto 0) => M00_AXIS_tdata(511 downto 0),
      M00_AXIS_tdest(3 downto 0) => M00_AXIS_tdest(3 downto 0),
      M00_AXIS_tkeep(63 downto 0) => M00_AXIS_tkeep(63 downto 0),
      M00_AXIS_tlast => M00_AXIS_tlast,
      M00_AXIS_tready => M00_AXIS_tready,
      M00_AXIS_tvalid => M00_AXIS_tvalid,
      M01_AXIS_tdata(511 downto 0) => M01_AXIS_tdata(511 downto 0),
      M01_AXIS_tdest(3 downto 0) => M01_AXIS_tdest(3 downto 0),
      M01_AXIS_tkeep(63 downto 0) => M01_AXIS_tkeep(63 downto 0),
      M01_AXIS_tlast => M01_AXIS_tlast,
      M01_AXIS_tready => M01_AXIS_tready,
      M01_AXIS_tvalid => M01_AXIS_tvalid,
      M02_AXIS_tdata(511 downto 0) => M02_AXIS_tdata(511 downto 0),
      M02_AXIS_tdest(3 downto 0) => M02_AXIS_tdest(3 downto 0),
      M02_AXIS_tkeep(63 downto 0) => M02_AXIS_tkeep(63 downto 0),
      M02_AXIS_tlast => M02_AXIS_tlast,
      M02_AXIS_tready => M02_AXIS_tready,
      M02_AXIS_tvalid => M02_AXIS_tvalid,
      M03_AXIS_tdata(511 downto 0) => M03_AXIS_tdata(511 downto 0),
      M03_AXIS_tdest(3 downto 0) => M03_AXIS_tdest(3 downto 0),
      M03_AXIS_tkeep(63 downto 0) => M03_AXIS_tkeep(63 downto 0),
      M03_AXIS_tlast => M03_AXIS_tlast,
      M03_AXIS_tready => M03_AXIS_tready,
      M03_AXIS_tvalid => M03_AXIS_tvalid,
      M_AXIS_packetizer_tdata(47 downto 0) => M_AXIS_packetizer_tdata(47 downto 0),
      M_AXIS_packetizer_tready => M_AXIS_packetizer_tready,
      M_AXIS_packetizer_tvalid => M_AXIS_packetizer_tvalid,
      S_AXIS_Lite_araddr(39 downto 0) => S_AXIS_Lite_araddr(39 downto 0),
      S_AXIS_Lite_arprot(2 downto 0) => S_AXIS_Lite_arprot(2 downto 0),
      S_AXIS_Lite_arqos(3 downto 0) => S_AXIS_Lite_arqos(3 downto 0),
      S_AXIS_Lite_arready => S_AXIS_Lite_arready,
      S_AXIS_Lite_arregion(3 downto 0) => S_AXIS_Lite_arregion(3 downto 0),
      S_AXIS_Lite_arvalid => S_AXIS_Lite_arvalid,
      S_AXIS_Lite_awaddr(39 downto 0) => S_AXIS_Lite_awaddr(39 downto 0),
      S_AXIS_Lite_awprot(2 downto 0) => S_AXIS_Lite_awprot(2 downto 0),
      S_AXIS_Lite_awqos(3 downto 0) => S_AXIS_Lite_awqos(3 downto 0),
      S_AXIS_Lite_awready => S_AXIS_Lite_awready,
      S_AXIS_Lite_awregion(3 downto 0) => S_AXIS_Lite_awregion(3 downto 0),
      S_AXIS_Lite_awvalid => S_AXIS_Lite_awvalid,
      S_AXIS_Lite_bready => S_AXIS_Lite_bready,
      S_AXIS_Lite_bresp(1 downto 0) => S_AXIS_Lite_bresp(1 downto 0),
      S_AXIS_Lite_bvalid => S_AXIS_Lite_bvalid,
      S_AXIS_Lite_rdata(31 downto 0) => S_AXIS_Lite_rdata(31 downto 0),
      S_AXIS_Lite_rready => S_AXIS_Lite_rready,
      S_AXIS_Lite_rresp(1 downto 0) => S_AXIS_Lite_rresp(1 downto 0),
      S_AXIS_Lite_rvalid => S_AXIS_Lite_rvalid,
      S_AXIS_Lite_wdata(31 downto 0) => S_AXIS_Lite_wdata(31 downto 0),
      S_AXIS_Lite_wready => S_AXIS_Lite_wready,
      S_AXIS_Lite_wstrb(3 downto 0) => S_AXIS_Lite_wstrb(3 downto 0),
      S_AXIS_Lite_wvalid => S_AXIS_Lite_wvalid,
      S_AXIS_MAC0_tdata(511 downto 0) => S_AXIS_MAC0_tdata(511 downto 0),
      S_AXIS_MAC0_tdest(1 downto 0) => S_AXIS_MAC0_tdest(1 downto 0),
      S_AXIS_MAC0_tkeep(63 downto 0) => S_AXIS_MAC0_tkeep(63 downto 0),
      S_AXIS_MAC0_tlast => S_AXIS_MAC0_tlast,
      S_AXIS_MAC0_tready => S_AXIS_MAC0_tready,
      S_AXIS_MAC0_tvalid => S_AXIS_MAC0_tvalid,
      S_AXIS_MAC1_tdata(511 downto 0) => S_AXIS_MAC1_tdata(511 downto 0),
      S_AXIS_MAC1_tdest(1 downto 0) => S_AXIS_MAC1_tdest(1 downto 0),
      S_AXIS_MAC1_tkeep(63 downto 0) => S_AXIS_MAC1_tkeep(63 downto 0),
      S_AXIS_MAC1_tlast => S_AXIS_MAC1_tlast,
      S_AXIS_MAC1_tready => S_AXIS_MAC1_tready,
      S_AXIS_MAC1_tvalid => S_AXIS_MAC1_tvalid,
      S_AXIS_MAC2_MAC3_tdata(511 downto 0) => S_AXIS_MAC2_MAC3_tdata(511 downto 0),
      S_AXIS_MAC2_MAC3_tdest(1 downto 0) => S_AXIS_MAC2_MAC3_tdest(1 downto 0),
      S_AXIS_MAC2_MAC3_tkeep(63 downto 0) => S_AXIS_MAC2_MAC3_tkeep(63 downto 0),
      S_AXIS_MAC2_MAC3_tlast => S_AXIS_MAC2_MAC3_tlast,
      S_AXIS_MAC2_MAC3_tready => S_AXIS_MAC2_MAC3_tready,
      S_AXIS_MAC2_MAC3_tvalid => S_AXIS_MAC2_MAC3_tvalid,
      clk_100M_in => clk_100M_in,
      clk_100M_out => clk_100M_out,
      clk_200M_out => clk_200M_out,
      clk_400M_out => clk_400M_out,
      port0_mode(1 downto 0) => port0_mode(1 downto 0),
      port1_mode(1 downto 0) => port1_mode(1 downto 0),
      resetn => resetn,
      rx_AXIS_00_tdata(63 downto 0) => rx_AXIS_00_tdata(63 downto 0),
      rx_AXIS_00_tkeep(7 downto 0) => rx_AXIS_00_tkeep(7 downto 0),
      rx_AXIS_00_tlast => rx_AXIS_00_tlast,
      rx_AXIS_00_tready => rx_AXIS_00_tready,
      rx_AXIS_00_tvalid => rx_AXIS_00_tvalid,
      rx_AXIS_01_tdata(63 downto 0) => rx_AXIS_01_tdata(63 downto 0),
      rx_AXIS_01_tkeep(7 downto 0) => rx_AXIS_01_tkeep(7 downto 0),
      rx_AXIS_01_tlast => rx_AXIS_01_tlast,
      rx_AXIS_01_tready => rx_AXIS_01_tready,
      rx_AXIS_01_tvalid => rx_AXIS_01_tvalid,
      rx_AXIS_10_tdata(63 downto 0) => rx_AXIS_10_tdata(63 downto 0),
      rx_AXIS_10_tkeep(7 downto 0) => rx_AXIS_10_tkeep(7 downto 0),
      rx_AXIS_10_tlast => rx_AXIS_10_tlast,
      rx_AXIS_10_tready => rx_AXIS_10_tready,
      rx_AXIS_10_tvalid => rx_AXIS_10_tvalid,
      rx_AXIS_11_tdata(63 downto 0) => rx_AXIS_11_tdata(63 downto 0),
      rx_AXIS_11_tkeep(7 downto 0) => rx_AXIS_11_tkeep(7 downto 0),
      rx_AXIS_11_tlast => rx_AXIS_11_tlast,
      rx_AXIS_11_tready => rx_AXIS_11_tready,
      rx_AXIS_11_tvalid => rx_AXIS_11_tvalid,
      rx_aclk_00 => rx_aclk_00,
      rx_aclk_01 => rx_aclk_01,
      rx_aclk_10 => rx_aclk_10,
      rx_aclk_11 => rx_aclk_11,
      s_axis_aresetn_0 => s_axis_aresetn_0,
      stat_rx_pause_req_00_i(8 downto 0) => stat_rx_pause_req_00_i(8 downto 0),
      stat_rx_pause_req_01_i(8 downto 0) => stat_rx_pause_req_01_i(8 downto 0),
      stat_rx_pause_req_10_i(8 downto 0) => stat_rx_pause_req_10_i(8 downto 0),
      stat_rx_pause_req_11_i(8 downto 0) => stat_rx_pause_req_11_i(8 downto 0),
      stat_tx_pause_valid_00_i(8 downto 0) => stat_tx_pause_valid_00_i(8 downto 0),
      stat_tx_pause_valid_01_i(8 downto 0) => stat_tx_pause_valid_01_i(8 downto 0),
      stat_tx_pause_valid_10_i(8 downto 0) => stat_tx_pause_valid_10_i(8 downto 0),
      stat_tx_pause_valid_11_i(8 downto 0) => stat_tx_pause_valid_11_i(8 downto 0),
      tx_AXIS_00_tdata(63 downto 0) => tx_AXIS_00_tdata(63 downto 0),
      tx_AXIS_00_tkeep(7 downto 0) => tx_AXIS_00_tkeep(7 downto 0),
      tx_AXIS_00_tlast => tx_AXIS_00_tlast,
      tx_AXIS_00_tready => tx_AXIS_00_tready,
      tx_AXIS_00_tvalid => tx_AXIS_00_tvalid,
      tx_AXIS_01_tdata(63 downto 0) => tx_AXIS_01_tdata(63 downto 0),
      tx_AXIS_01_tkeep(7 downto 0) => tx_AXIS_01_tkeep(7 downto 0),
      tx_AXIS_01_tlast => tx_AXIS_01_tlast,
      tx_AXIS_01_tready => tx_AXIS_01_tready,
      tx_AXIS_01_tvalid => tx_AXIS_01_tvalid,
      tx_AXIS_10_tdata(63 downto 0) => tx_AXIS_10_tdata(63 downto 0),
      tx_AXIS_10_tkeep(7 downto 0) => tx_AXIS_10_tkeep(7 downto 0),
      tx_AXIS_10_tlast => tx_AXIS_10_tlast,
      tx_AXIS_10_tready => tx_AXIS_10_tready,
      tx_AXIS_10_tvalid => tx_AXIS_10_tvalid,
      tx_AXIS_11_tdata(63 downto 0) => tx_AXIS_11_tdata(63 downto 0),
      tx_AXIS_11_tkeep(7 downto 0) => tx_AXIS_11_tkeep(7 downto 0),
      tx_AXIS_11_tlast => tx_AXIS_11_tlast,
      tx_AXIS_11_tready => tx_AXIS_11_tready,
      tx_AXIS_11_tvalid => tx_AXIS_11_tvalid,
      tx_aclk_00 => tx_aclk_00,
      tx_aclk_01 => tx_aclk_01,
      tx_aclk_10 => tx_aclk_10,
      tx_aclk_11 => tx_aclk_11,
      tx_pause_req_00_o(8 downto 0) => tx_pause_req_00_o(8 downto 0),
      tx_pause_req_01_o(8 downto 0) => tx_pause_req_01_o(8 downto 0),
      tx_pause_req_10_o(8 downto 0) => tx_pause_req_10_o(8 downto 0),
      tx_pause_req_11_o(8 downto 0) => tx_pause_req_11_o(8 downto 0),
      tx_resend_pause_00_o => tx_resend_pause_00_o,
      tx_resend_pause_01_o => tx_resend_pause_01_o,
      tx_resend_pause_10_o => tx_resend_pause_10_o,
      tx_resend_pause_11_o => tx_resend_pause_11_o
    );
end STRUCTURE;
