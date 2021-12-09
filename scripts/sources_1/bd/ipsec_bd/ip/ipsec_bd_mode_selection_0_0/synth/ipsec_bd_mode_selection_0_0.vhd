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

-- IP VLNV: xilinx.com:module_ref:mode_selection:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ipsec_bd_mode_selection_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    mode_select_i : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axis_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_tdest : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    m0_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m0_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m0_axis_tdest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    m0_axis_tvalid : OUT STD_LOGIC;
    m0_axis_tlast : OUT STD_LOGIC;
    m0_axis_tready : IN STD_LOGIC;
    m1_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m1_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m1_axis_tdest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    m1_axis_tvalid : OUT STD_LOGIC;
    m1_axis_tlast : OUT STD_LOGIC;
    m1_axis_tready : IN STD_LOGIC
  );
END ipsec_bd_mode_selection_0_0;

ARCHITECTURE ipsec_bd_mode_selection_0_0_arch OF ipsec_bd_mode_selection_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ipsec_bd_mode_selection_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mode_selection IS
    PORT (
      clk : IN STD_LOGIC;
      rst_n : IN STD_LOGIC;
      mode_select_i : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axis_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_tdest : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      m0_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m0_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m0_axis_tdest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      m0_axis_tvalid : OUT STD_LOGIC;
      m0_axis_tlast : OUT STD_LOGIC;
      m0_axis_tready : IN STD_LOGIC;
      m1_axis_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m1_axis_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m1_axis_tdest : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      m1_axis_tvalid : OUT STD_LOGIC;
      m1_axis_tlast : OUT STD_LOGIC;
      m1_axis_tready : IN STD_LOGIC
    );
  END COMPONENT mode_selection;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF ipsec_bd_mode_selection_0_0_arch: ARCHITECTURE IS "mode_selection,Vivado 2020.1_AR75245";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF ipsec_bd_mode_selection_0_0_arch : ARCHITECTURE IS "ipsec_bd_mode_selection_0_0,mode_selection,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF ipsec_bd_mode_selection_0_0_arch: ARCHITECTURE IS "ipsec_bd_mode_selection_0_0,mode_selection,{x_ipProduct=Vivado 2020.1_AR75245,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mode_selection,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF ipsec_bd_mode_selection_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m1_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m1_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m1_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m0_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m0_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n: SIGNAL IS "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : mode_selection
    PORT MAP (
      clk => clk,
      rst_n => rst_n,
      mode_select_i => mode_select_i,
      s_axis_tdata => s_axis_tdata,
      s_axis_tkeep => s_axis_tkeep,
      s_axis_tdest => s_axis_tdest,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      m0_axis_tdata => m0_axis_tdata,
      m0_axis_tkeep => m0_axis_tkeep,
      m0_axis_tdest => m0_axis_tdest,
      m0_axis_tvalid => m0_axis_tvalid,
      m0_axis_tlast => m0_axis_tlast,
      m0_axis_tready => m0_axis_tready,
      m1_axis_tdata => m1_axis_tdata,
      m1_axis_tkeep => m1_axis_tkeep,
      m1_axis_tdest => m1_axis_tdest,
      m1_axis_tvalid => m1_axis_tvalid,
      m1_axis_tlast => m1_axis_tlast,
      m1_axis_tready => m1_axis_tready
    );
END ipsec_bd_mode_selection_0_0_arch;
