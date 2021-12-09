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

-- IP VLNV: xilinx.com:module_ref:mac_traffic_control:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ipsec_bd_mac_traffic_control_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    s_axis_TData : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_TKeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_TValid : IN STD_LOGIC;
    s_axis_TReady : OUT STD_LOGIC;
    s_axis_TLast : IN STD_LOGIC;
    s_axis_TDest : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    m0_axis_TData : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m0_axis_TKeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m0_axis_TValid : OUT STD_LOGIC;
    m0_axis_TReady : IN STD_LOGIC;
    m0_axis_TLast : OUT STD_LOGIC;
    m0_axis_TDest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    m1_axis_TData : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m1_axis_TKeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m1_axis_TValid : OUT STD_LOGIC;
    m1_axis_TReady : IN STD_LOGIC;
    m1_axis_TLast : OUT STD_LOGIC;
    m1_axis_TDest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    fifo_prog_full : IN STD_LOGIC
  );
END ipsec_bd_mac_traffic_control_0_0;

ARCHITECTURE ipsec_bd_mac_traffic_control_0_0_arch OF ipsec_bd_mac_traffic_control_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ipsec_bd_mac_traffic_control_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mac_traffic_control IS
    PORT (
      clk : IN STD_LOGIC;
      rst_n : IN STD_LOGIC;
      s_axis_TData : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_TKeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_TValid : IN STD_LOGIC;
      s_axis_TReady : OUT STD_LOGIC;
      s_axis_TLast : IN STD_LOGIC;
      s_axis_TDest : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      m0_axis_TData : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m0_axis_TKeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m0_axis_TValid : OUT STD_LOGIC;
      m0_axis_TReady : IN STD_LOGIC;
      m0_axis_TLast : OUT STD_LOGIC;
      m0_axis_TDest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      m1_axis_TData : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m1_axis_TKeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m1_axis_TValid : OUT STD_LOGIC;
      m1_axis_TReady : IN STD_LOGIC;
      m1_axis_TLast : OUT STD_LOGIC;
      m1_axis_TDest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      fifo_prog_full : IN STD_LOGIC
    );
  END COMPONENT mac_traffic_control;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF ipsec_bd_mac_traffic_control_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TDest: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TLast: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TReady: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TValid: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TKeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m1_axis_TData: SIGNAL IS "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_TData: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TDest: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TLast: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TReady: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TValid: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TKeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m0_axis_TData: SIGNAL IS "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_TData: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TDest: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TLast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TReady: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TValid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TKeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_TData: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_TData: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n: SIGNAL IS "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : mac_traffic_control
    PORT MAP (
      clk => clk,
      rst_n => rst_n,
      s_axis_TData => s_axis_TData,
      s_axis_TKeep => s_axis_TKeep,
      s_axis_TValid => s_axis_TValid,
      s_axis_TReady => s_axis_TReady,
      s_axis_TLast => s_axis_TLast,
      s_axis_TDest => s_axis_TDest,
      m0_axis_TData => m0_axis_TData,
      m0_axis_TKeep => m0_axis_TKeep,
      m0_axis_TValid => m0_axis_TValid,
      m0_axis_TReady => m0_axis_TReady,
      m0_axis_TLast => m0_axis_TLast,
      m0_axis_TDest => m0_axis_TDest,
      m1_axis_TData => m1_axis_TData,
      m1_axis_TKeep => m1_axis_TKeep,
      m1_axis_TValid => m1_axis_TValid,
      m1_axis_TReady => m1_axis_TReady,
      m1_axis_TLast => m1_axis_TLast,
      m1_axis_TDest => m1_axis_TDest,
      fifo_prog_full => fifo_prog_full
    );
END ipsec_bd_mac_traffic_control_0_0_arch;
