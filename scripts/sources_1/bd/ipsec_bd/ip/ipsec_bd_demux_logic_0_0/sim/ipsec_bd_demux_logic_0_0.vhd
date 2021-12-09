-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:demux_logic:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ipsec_bd_demux_logic_0_0 IS
  PORT (
    s_axis_aclk : IN STD_LOGIC;
    s_axis_aresetn : IN STD_LOGIC;
    demux_en : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axis_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_tdest : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m0_axis_tvalid : OUT STD_LOGIC;
    m0_axis_tready : IN STD_LOGIC;
    m0_axis_tlast : OUT STD_LOGIC;
    m0_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m0_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m0_axis_tdest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m1_axis_tvalid : OUT STD_LOGIC;
    m1_axis_tready : IN STD_LOGIC;
    m1_axis_tlast : OUT STD_LOGIC;
    m1_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m1_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m1_axis_tdest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END ipsec_bd_demux_logic_0_0;

ARCHITECTURE ipsec_bd_demux_logic_0_0_arch OF ipsec_bd_demux_logic_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ipsec_bd_demux_logic_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT demux_logic IS
    GENERIC (
      TDEST_SIZE : INTEGER;
      TDATA_WIDTH : INTEGER;
      TKEEP_WIDTH : INTEGER
    );
    PORT (
      s_axis_aclk : IN STD_LOGIC;
      s_axis_aresetn : IN STD_LOGIC;
      demux_en : IN STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axis_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_tdest : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m0_axis_tvalid : OUT STD_LOGIC;
      m0_axis_tready : IN STD_LOGIC;
      m0_axis_tlast : OUT STD_LOGIC;
      m0_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m0_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m0_axis_tdest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m1_axis_tvalid : OUT STD_LOGIC;
      m1_axis_tready : IN STD_LOGIC;
      m1_axis_tlast : OUT STD_LOGIC;
      m1_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m1_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m1_axis_tdest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT demux_logic;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF ipsec_bd_demux_logic_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m1_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m0_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.0, CLK_DOMAIN ipsec_bd_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_aclk: SIGNAL IS "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 333333333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ipsec_bd_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
BEGIN
  U0 : demux_logic
    GENERIC MAP (
      TDEST_SIZE => 16,
      TDATA_WIDTH => 128,
      TKEEP_WIDTH => 16
    )
    PORT MAP (
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      demux_en => demux_en,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      s_axis_tlast => s_axis_tlast,
      s_axis_tdata => s_axis_tdata,
      s_axis_tkeep => s_axis_tkeep,
      s_axis_tdest => s_axis_tdest,
      m0_axis_tvalid => m0_axis_tvalid,
      m0_axis_tready => m0_axis_tready,
      m0_axis_tlast => m0_axis_tlast,
      m0_axis_tdata => m0_axis_tdata,
      m0_axis_tkeep => m0_axis_tkeep,
      m0_axis_tdest => m0_axis_tdest,
      m1_axis_tvalid => m1_axis_tvalid,
      m1_axis_tready => m1_axis_tready,
      m1_axis_tlast => m1_axis_tlast,
      m1_axis_tdata => m1_axis_tdata,
      m1_axis_tkeep => m1_axis_tkeep,
      m1_axis_tdest => m1_axis_tdest
    );
END ipsec_bd_demux_logic_0_0_arch;
