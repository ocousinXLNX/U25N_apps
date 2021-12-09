-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Sep 22 09:41:17 2021
-- Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/kestera/U25N/u25n_dfx/dynamic/lineArb/fpga.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_Register_interface_0_3/dynamic_design_top_Register_interface_0_3_sim_netlist.vhdl
-- Design      : dynamic_design_top_Register_interface_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_Register_interface_0_3_axi_ctrlif is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    FSM_sequential_rd_state_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dynamic_design_top_Register_interface_0_3_axi_ctrlif : entity is "axi_ctrlif";
end dynamic_design_top_Register_interface_0_3_axi_ctrlif;

architecture STRUCTURE of dynamic_design_top_Register_interface_0_3_axi_ctrlif is
  signal \/i__n_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_wr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal FSM_sequential_rd_state_i_1_n_0 : STD_LOGIC;
  signal \^fsm_sequential_rd_state_reg_0\ : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \rd_addr[5]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[0]\ : label is "idle:001,ack:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[1]\ : label is "idle:001,ack:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[2]\ : label is "idle:001,ack:010,resp:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_rd_state_i_1 : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of FSM_sequential_rd_state_reg : label is "idle:0,resp:1,";
  attribute SOFT_HLUTNM of s00_axi_arready_INST_0 : label is "soft_lutpair0";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  FSM_sequential_rd_state_reg_0 <= \^fsm_sequential_rd_state_reg_0\;
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(0),
      I2 => s00_axi_bready,
      I3 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_awvalid,
      O => \/i__n_0\
    );
\FSM_onehot_wr_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \FSM_onehot_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_wr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      D => \^d\(0),
      Q => \FSM_onehot_wr_state_reg_n_0_[0]\,
      S => \FSM_onehot_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_wr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      D => \FSM_onehot_wr_state_reg_n_0_[0]\,
      Q => \^d\(1),
      R => \FSM_onehot_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_wr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \/i__n_0\,
      D => \^d\(1),
      Q => \^d\(0),
      R => \FSM_onehot_wr_state[1]_i_1_n_0\
    );
FSM_sequential_rd_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7200"
    )
        port map (
      I0 => \^fsm_sequential_rd_state_reg_0\,
      I1 => s00_axi_rready,
      I2 => s00_axi_arvalid,
      I3 => s00_axi_aresetn,
      O => FSM_sequential_rd_state_i_1_n_0
    );
FSM_sequential_rd_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => FSM_sequential_rd_state_i_1_n_0,
      Q => \^fsm_sequential_rd_state_reg_0\,
      R => '0'
    );
\rd_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^fsm_sequential_rd_state_reg_0\,
      I2 => s00_axi_arvalid,
      O => \rd_addr[5]_i_1_n_0\
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rd_addr[5]_i_1_n_0\,
      D => s00_axi_araddr(0),
      Q => rd_addr(1),
      R => '0'
    );
\rd_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rd_addr[5]_i_1_n_0\,
      D => s00_axi_araddr(1),
      Q => rd_addr(2),
      R => '0'
    );
\rd_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rd_addr[5]_i_1_n_0\,
      D => s00_axi_araddr(2),
      Q => rd_addr(3),
      R => '0'
    );
\rd_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rd_addr[5]_i_1_n_0\,
      D => s00_axi_araddr(3),
      Q => rd_addr(4),
      R => '0'
    );
\rd_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rd_addr[5]_i_1_n_0\,
      D => s00_axi_araddr(4),
      Q => rd_addr(5),
      R => '0'
    );
s00_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_rd_state_reg_0\,
      O => s00_axi_arready
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE0"
    )
        port map (
      I0 => rd_addr(1),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(4),
      I4 => rd_addr(5),
      O => s00_axi_rdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_Register_interface_0_3_Register_interface is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    FSM_sequential_rd_state_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dynamic_design_top_Register_interface_0_3_Register_interface : entity is "Register_interface";
end dynamic_design_top_Register_interface_0_3_Register_interface;

architecture STRUCTURE of dynamic_design_top_Register_interface_0_3_Register_interface is
begin
ctrlif: entity work.dynamic_design_top_Register_interface_0_3_axi_ctrlif
     port map (
      D(1 downto 0) => D(1 downto 0),
      FSM_sequential_rd_state_reg_0 => FSM_sequential_rd_state_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_Register_interface_0_3 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dynamic_design_top_Register_interface_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dynamic_design_top_Register_interface_0_3 : entity is "dynamic_design_top_Register_interface_0_3,Register_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dynamic_design_top_Register_interface_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dynamic_design_top_Register_interface_0_3 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dynamic_design_top_Register_interface_0_3 : entity is "Register_interface,Vivado 2020.1";
end dynamic_design_top_Register_interface_0_3;

architecture STRUCTURE of dynamic_design_top_Register_interface_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_100M_in, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_100M_in, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(30) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(27) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(26) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(25) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(18) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(15) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(12) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(11) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(10) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(9) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(6) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(5) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(2) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(1) <= \^s00_axi_rdata\(31);
  s00_axi_rdata(0) <= \^s00_axi_rdata\(31);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_wready <= \^s00_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.dynamic_design_top_Register_interface_0_3_Register_interface
     port map (
      D(1) => \^s00_axi_awready\,
      D(0) => s00_axi_bvalid,
      FSM_sequential_rd_state_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(7 downto 3),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(0) => \^s00_axi_rdata\(31),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
