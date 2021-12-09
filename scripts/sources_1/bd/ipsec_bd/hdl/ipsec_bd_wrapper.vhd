--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Tue Sep 29 19:45:41 2020
--Host        : newton running 64-bit unknown
--Command     : generate_target ipsec_bd_wrapper.bd
--Design      : ipsec_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_wrapper is
  port (
    pcie_clk_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_clk_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_mgt_0_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_rstn : in STD_LOGIC;
    rx_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_00_tlast : in STD_LOGIC;
    rx_AXIS_00_tready : out STD_LOGIC;
    rx_AXIS_00_tvalid : in STD_LOGIC;
    rx_aclk_00 : in STD_LOGIC;
    s_axis_aresetn_0 : in STD_LOGIC;
    stat_rx_pause_req_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_pause_valid_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_AXIS_00_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_00_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_00_tlast : out STD_LOGIC;
    tx_AXIS_00_tready : in STD_LOGIC;
    tx_AXIS_00_tvalid : out STD_LOGIC;
    tx_aclk_00 : in STD_LOGIC;
    tx_pause_req_00_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_resend_pause_00_o : out STD_LOGIC
  );
end ipsec_bd_wrapper;

architecture STRUCTURE of ipsec_bd_wrapper is
  component ipsec_bd is
  port (
    pcie_rstn : in STD_LOGIC;
    tx_pause_req_00_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    tx_resend_pause_00_o : out STD_LOGIC;
    stat_tx_pause_valid_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_aresetn_0 : in STD_LOGIC;
    rx_aclk_00 : in STD_LOGIC;
    tx_aclk_00 : in STD_LOGIC;
    stat_rx_pause_req_00_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_AXIS_00_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_AXIS_00_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_AXIS_00_tlast : in STD_LOGIC;
    rx_AXIS_00_tready : out STD_LOGIC;
    rx_AXIS_00_tvalid : in STD_LOGIC;
    tx_AXIS_00_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_AXIS_00_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_AXIS_00_tlast : out STD_LOGIC;
    tx_AXIS_00_tvalid : out STD_LOGIC;
    tx_AXIS_00_tready : in STD_LOGIC;
    pcie_clk_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_clk_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_mgt_0_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_mgt_0_txp : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ipsec_bd;
begin
ipsec_bd_i: component ipsec_bd
     port map (
      pcie_clk_clk_n(0) => pcie_clk_clk_n(0),
      pcie_clk_clk_p(0) => pcie_clk_clk_p(0),
      pcie_mgt_0_rxn(7 downto 0) => pcie_mgt_0_rxn(7 downto 0),
      pcie_mgt_0_rxp(7 downto 0) => pcie_mgt_0_rxp(7 downto 0),
      pcie_mgt_0_txn(7 downto 0) => pcie_mgt_0_txn(7 downto 0),
      pcie_mgt_0_txp(7 downto 0) => pcie_mgt_0_txp(7 downto 0),
      pcie_rstn => pcie_rstn,
      rx_AXIS_00_tdata(63 downto 0) => rx_AXIS_00_tdata(63 downto 0),
      rx_AXIS_00_tkeep(7 downto 0) => rx_AXIS_00_tkeep(7 downto 0),
      rx_AXIS_00_tlast => rx_AXIS_00_tlast,
      rx_AXIS_00_tready => rx_AXIS_00_tready,
      rx_AXIS_00_tvalid => rx_AXIS_00_tvalid,
      rx_aclk_00 => rx_aclk_00,
      s_axis_aresetn_0 => s_axis_aresetn_0,
      stat_rx_pause_req_00_i(8 downto 0) => stat_rx_pause_req_00_i(8 downto 0),
      stat_tx_pause_valid_00_i(8 downto 0) => stat_tx_pause_valid_00_i(8 downto 0),
      tx_AXIS_00_tdata(63 downto 0) => tx_AXIS_00_tdata(63 downto 0),
      tx_AXIS_00_tkeep(7 downto 0) => tx_AXIS_00_tkeep(7 downto 0),
      tx_AXIS_00_tlast => tx_AXIS_00_tlast,
      tx_AXIS_00_tready => tx_AXIS_00_tready,
      tx_AXIS_00_tvalid => tx_AXIS_00_tvalid,
      tx_aclk_00 => tx_aclk_00,
      tx_pause_req_00_o(8 downto 0) => tx_pause_req_00_o(8 downto 0),
      tx_resend_pause_00_o => tx_resend_pause_00_o
    );
end STRUCTURE;
