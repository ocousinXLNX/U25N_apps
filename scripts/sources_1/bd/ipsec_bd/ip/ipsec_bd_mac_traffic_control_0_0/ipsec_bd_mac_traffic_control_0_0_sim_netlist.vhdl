-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:08:25 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_traffic_control_0_0/ipsec_bd_mac_traffic_control_0_0_sim_netlist.vhdl
-- Design      : ipsec_bd_mac_traffic_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mac_traffic_control_0_0_mac_traffic_control is
  port (
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m0_axis_TDest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    m1_axis_TDest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m0_axis_TReady : in STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_TValid : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TDest : in STD_LOGIC_VECTOR ( 10 downto 0 );
    fifo_prog_full : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ipsec_bd_mac_traffic_control_0_0_mac_traffic_control : entity is "mac_traffic_control";
end ipsec_bd_mac_traffic_control_0_0_mac_traffic_control;

architecture STRUCTURE of ipsec_bd_mac_traffic_control_0_0_mac_traffic_control is
  signal data_flag_fifo : STD_LOGIC;
  signal data_flag_fifo_i_1_n_0 : STD_LOGIC;
  signal \m0_axis_TData[63]_i_1_n_0\ : STD_LOGIC;
  signal m0_axis_TValid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal s_axis_TData_dly : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axis_TDest_dly : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_axis_TValid_dly : STD_LOGIC;
  signal s_axis_Tkeep_dly : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_Tlast_dly : STD_LOGIC;
begin
data_flag_fifo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA00000000"
    )
        port map (
      I0 => data_flag_fifo,
      I1 => s_axis_TValid_dly,
      I2 => s_axis_Tlast_dly,
      I3 => m0_axis_TReady,
      I4 => fifo_prog_full,
      I5 => rst_n,
      O => data_flag_fifo_i_1_n_0
    );
data_flag_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_flag_fifo_i_1_n_0,
      Q => data_flag_fifo,
      R => '0'
    );
\m0_axis_TData[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m0_axis_TReady,
      I1 => data_flag_fifo,
      O => \m0_axis_TData[63]_i_1_n_0\
    );
\m0_axis_TData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(0),
      Q => m0_axis_TData(0),
      R => '0'
    );
\m0_axis_TData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(10),
      Q => m0_axis_TData(10),
      R => '0'
    );
\m0_axis_TData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(11),
      Q => m0_axis_TData(11),
      R => '0'
    );
\m0_axis_TData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(12),
      Q => m0_axis_TData(12),
      R => '0'
    );
\m0_axis_TData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(13),
      Q => m0_axis_TData(13),
      R => '0'
    );
\m0_axis_TData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(14),
      Q => m0_axis_TData(14),
      R => '0'
    );
\m0_axis_TData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(15),
      Q => m0_axis_TData(15),
      R => '0'
    );
\m0_axis_TData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(16),
      Q => m0_axis_TData(16),
      R => '0'
    );
\m0_axis_TData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(17),
      Q => m0_axis_TData(17),
      R => '0'
    );
\m0_axis_TData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(18),
      Q => m0_axis_TData(18),
      R => '0'
    );
\m0_axis_TData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(19),
      Q => m0_axis_TData(19),
      R => '0'
    );
\m0_axis_TData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(1),
      Q => m0_axis_TData(1),
      R => '0'
    );
\m0_axis_TData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(20),
      Q => m0_axis_TData(20),
      R => '0'
    );
\m0_axis_TData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(21),
      Q => m0_axis_TData(21),
      R => '0'
    );
\m0_axis_TData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(22),
      Q => m0_axis_TData(22),
      R => '0'
    );
\m0_axis_TData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(23),
      Q => m0_axis_TData(23),
      R => '0'
    );
\m0_axis_TData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(24),
      Q => m0_axis_TData(24),
      R => '0'
    );
\m0_axis_TData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(25),
      Q => m0_axis_TData(25),
      R => '0'
    );
\m0_axis_TData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(26),
      Q => m0_axis_TData(26),
      R => '0'
    );
\m0_axis_TData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(27),
      Q => m0_axis_TData(27),
      R => '0'
    );
\m0_axis_TData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(28),
      Q => m0_axis_TData(28),
      R => '0'
    );
\m0_axis_TData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(29),
      Q => m0_axis_TData(29),
      R => '0'
    );
\m0_axis_TData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(2),
      Q => m0_axis_TData(2),
      R => '0'
    );
\m0_axis_TData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(30),
      Q => m0_axis_TData(30),
      R => '0'
    );
\m0_axis_TData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(31),
      Q => m0_axis_TData(31),
      R => '0'
    );
\m0_axis_TData_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(32),
      Q => m0_axis_TData(32),
      R => '0'
    );
\m0_axis_TData_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(33),
      Q => m0_axis_TData(33),
      R => '0'
    );
\m0_axis_TData_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(34),
      Q => m0_axis_TData(34),
      R => '0'
    );
\m0_axis_TData_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(35),
      Q => m0_axis_TData(35),
      R => '0'
    );
\m0_axis_TData_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(36),
      Q => m0_axis_TData(36),
      R => '0'
    );
\m0_axis_TData_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(37),
      Q => m0_axis_TData(37),
      R => '0'
    );
\m0_axis_TData_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(38),
      Q => m0_axis_TData(38),
      R => '0'
    );
\m0_axis_TData_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(39),
      Q => m0_axis_TData(39),
      R => '0'
    );
\m0_axis_TData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(3),
      Q => m0_axis_TData(3),
      R => '0'
    );
\m0_axis_TData_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(40),
      Q => m0_axis_TData(40),
      R => '0'
    );
\m0_axis_TData_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(41),
      Q => m0_axis_TData(41),
      R => '0'
    );
\m0_axis_TData_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(42),
      Q => m0_axis_TData(42),
      R => '0'
    );
\m0_axis_TData_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(43),
      Q => m0_axis_TData(43),
      R => '0'
    );
\m0_axis_TData_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(44),
      Q => m0_axis_TData(44),
      R => '0'
    );
\m0_axis_TData_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(45),
      Q => m0_axis_TData(45),
      R => '0'
    );
\m0_axis_TData_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(46),
      Q => m0_axis_TData(46),
      R => '0'
    );
\m0_axis_TData_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(47),
      Q => m0_axis_TData(47),
      R => '0'
    );
\m0_axis_TData_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(48),
      Q => m0_axis_TData(48),
      R => '0'
    );
\m0_axis_TData_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(49),
      Q => m0_axis_TData(49),
      R => '0'
    );
\m0_axis_TData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(4),
      Q => m0_axis_TData(4),
      R => '0'
    );
\m0_axis_TData_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(50),
      Q => m0_axis_TData(50),
      R => '0'
    );
\m0_axis_TData_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(51),
      Q => m0_axis_TData(51),
      R => '0'
    );
\m0_axis_TData_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(52),
      Q => m0_axis_TData(52),
      R => '0'
    );
\m0_axis_TData_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(53),
      Q => m0_axis_TData(53),
      R => '0'
    );
\m0_axis_TData_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(54),
      Q => m0_axis_TData(54),
      R => '0'
    );
\m0_axis_TData_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(55),
      Q => m0_axis_TData(55),
      R => '0'
    );
\m0_axis_TData_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(56),
      Q => m0_axis_TData(56),
      R => '0'
    );
\m0_axis_TData_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(57),
      Q => m0_axis_TData(57),
      R => '0'
    );
\m0_axis_TData_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(58),
      Q => m0_axis_TData(58),
      R => '0'
    );
\m0_axis_TData_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(59),
      Q => m0_axis_TData(59),
      R => '0'
    );
\m0_axis_TData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(5),
      Q => m0_axis_TData(5),
      R => '0'
    );
\m0_axis_TData_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(60),
      Q => m0_axis_TData(60),
      R => '0'
    );
\m0_axis_TData_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(61),
      Q => m0_axis_TData(61),
      R => '0'
    );
\m0_axis_TData_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(62),
      Q => m0_axis_TData(62),
      R => '0'
    );
\m0_axis_TData_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(63),
      Q => m0_axis_TData(63),
      R => '0'
    );
\m0_axis_TData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(6),
      Q => m0_axis_TData(6),
      R => '0'
    );
\m0_axis_TData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(7),
      Q => m0_axis_TData(7),
      R => '0'
    );
\m0_axis_TData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(8),
      Q => m0_axis_TData(8),
      R => '0'
    );
\m0_axis_TData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TData_dly(9),
      Q => m0_axis_TData(9),
      R => '0'
    );
\m0_axis_TDest_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(0),
      Q => m0_axis_TDest(0),
      R => '0'
    );
\m0_axis_TDest_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(10),
      Q => m0_axis_TDest(10),
      R => '0'
    );
\m0_axis_TDest_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(1),
      Q => m0_axis_TDest(1),
      R => '0'
    );
\m0_axis_TDest_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(2),
      Q => m0_axis_TDest(2),
      R => '0'
    );
\m0_axis_TDest_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(3),
      Q => m0_axis_TDest(3),
      R => '0'
    );
\m0_axis_TDest_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(4),
      Q => m0_axis_TDest(4),
      R => '0'
    );
\m0_axis_TDest_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(5),
      Q => m0_axis_TDest(5),
      R => '0'
    );
\m0_axis_TDest_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(6),
      Q => m0_axis_TDest(6),
      R => '0'
    );
\m0_axis_TDest_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(7),
      Q => m0_axis_TDest(7),
      R => '0'
    );
\m0_axis_TDest_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(8),
      Q => m0_axis_TDest(8),
      R => '0'
    );
\m0_axis_TDest_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_TDest_dly(9),
      Q => m0_axis_TDest(9),
      R => '0'
    );
\m0_axis_TKeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(0),
      Q => m0_axis_TKeep(0),
      R => '0'
    );
\m0_axis_TKeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(1),
      Q => m0_axis_TKeep(1),
      R => '0'
    );
\m0_axis_TKeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(2),
      Q => m0_axis_TKeep(2),
      R => '0'
    );
\m0_axis_TKeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(3),
      Q => m0_axis_TKeep(3),
      R => '0'
    );
\m0_axis_TKeep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(4),
      Q => m0_axis_TKeep(4),
      R => '0'
    );
\m0_axis_TKeep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(5),
      Q => m0_axis_TKeep(5),
      R => '0'
    );
\m0_axis_TKeep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(6),
      Q => m0_axis_TKeep(6),
      R => '0'
    );
\m0_axis_TKeep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_TData[63]_i_1_n_0\,
      D => s_axis_Tkeep_dly(7),
      Q => m0_axis_TKeep(7),
      R => '0'
    );
m0_axis_TLast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_Tlast_dly,
      Q => m0_axis_TLast,
      R => m0_axis_TValid_i_1_n_0
    );
m0_axis_TValid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m0_axis_TReady,
      I1 => data_flag_fifo,
      O => m0_axis_TValid_i_1_n_0
    );
m0_axis_TValid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TValid_dly,
      Q => m0_axis_TValid,
      R => m0_axis_TValid_i_1_n_0
    );
\m1_axis_TData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(0),
      Q => m1_axis_TData(0),
      R => '0'
    );
\m1_axis_TData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(10),
      Q => m1_axis_TData(10),
      R => '0'
    );
\m1_axis_TData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(11),
      Q => m1_axis_TData(11),
      R => '0'
    );
\m1_axis_TData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(12),
      Q => m1_axis_TData(12),
      R => '0'
    );
\m1_axis_TData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(13),
      Q => m1_axis_TData(13),
      R => '0'
    );
\m1_axis_TData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(14),
      Q => m1_axis_TData(14),
      R => '0'
    );
\m1_axis_TData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(15),
      Q => m1_axis_TData(15),
      R => '0'
    );
\m1_axis_TData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(16),
      Q => m1_axis_TData(16),
      R => '0'
    );
\m1_axis_TData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(17),
      Q => m1_axis_TData(17),
      R => '0'
    );
\m1_axis_TData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(18),
      Q => m1_axis_TData(18),
      R => '0'
    );
\m1_axis_TData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(19),
      Q => m1_axis_TData(19),
      R => '0'
    );
\m1_axis_TData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(1),
      Q => m1_axis_TData(1),
      R => '0'
    );
\m1_axis_TData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(20),
      Q => m1_axis_TData(20),
      R => '0'
    );
\m1_axis_TData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(21),
      Q => m1_axis_TData(21),
      R => '0'
    );
\m1_axis_TData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(22),
      Q => m1_axis_TData(22),
      R => '0'
    );
\m1_axis_TData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(23),
      Q => m1_axis_TData(23),
      R => '0'
    );
\m1_axis_TData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(24),
      Q => m1_axis_TData(24),
      R => '0'
    );
\m1_axis_TData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(25),
      Q => m1_axis_TData(25),
      R => '0'
    );
\m1_axis_TData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(26),
      Q => m1_axis_TData(26),
      R => '0'
    );
\m1_axis_TData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(27),
      Q => m1_axis_TData(27),
      R => '0'
    );
\m1_axis_TData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(28),
      Q => m1_axis_TData(28),
      R => '0'
    );
\m1_axis_TData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(29),
      Q => m1_axis_TData(29),
      R => '0'
    );
\m1_axis_TData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(2),
      Q => m1_axis_TData(2),
      R => '0'
    );
\m1_axis_TData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(30),
      Q => m1_axis_TData(30),
      R => '0'
    );
\m1_axis_TData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(31),
      Q => m1_axis_TData(31),
      R => '0'
    );
\m1_axis_TData_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(32),
      Q => m1_axis_TData(32),
      R => '0'
    );
\m1_axis_TData_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(33),
      Q => m1_axis_TData(33),
      R => '0'
    );
\m1_axis_TData_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(34),
      Q => m1_axis_TData(34),
      R => '0'
    );
\m1_axis_TData_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(35),
      Q => m1_axis_TData(35),
      R => '0'
    );
\m1_axis_TData_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(36),
      Q => m1_axis_TData(36),
      R => '0'
    );
\m1_axis_TData_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(37),
      Q => m1_axis_TData(37),
      R => '0'
    );
\m1_axis_TData_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(38),
      Q => m1_axis_TData(38),
      R => '0'
    );
\m1_axis_TData_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(39),
      Q => m1_axis_TData(39),
      R => '0'
    );
\m1_axis_TData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(3),
      Q => m1_axis_TData(3),
      R => '0'
    );
\m1_axis_TData_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(40),
      Q => m1_axis_TData(40),
      R => '0'
    );
\m1_axis_TData_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(41),
      Q => m1_axis_TData(41),
      R => '0'
    );
\m1_axis_TData_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(42),
      Q => m1_axis_TData(42),
      R => '0'
    );
\m1_axis_TData_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(43),
      Q => m1_axis_TData(43),
      R => '0'
    );
\m1_axis_TData_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(44),
      Q => m1_axis_TData(44),
      R => '0'
    );
\m1_axis_TData_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(45),
      Q => m1_axis_TData(45),
      R => '0'
    );
\m1_axis_TData_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(46),
      Q => m1_axis_TData(46),
      R => '0'
    );
\m1_axis_TData_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(47),
      Q => m1_axis_TData(47),
      R => '0'
    );
\m1_axis_TData_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(48),
      Q => m1_axis_TData(48),
      R => '0'
    );
\m1_axis_TData_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(49),
      Q => m1_axis_TData(49),
      R => '0'
    );
\m1_axis_TData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(4),
      Q => m1_axis_TData(4),
      R => '0'
    );
\m1_axis_TData_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(50),
      Q => m1_axis_TData(50),
      R => '0'
    );
\m1_axis_TData_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(51),
      Q => m1_axis_TData(51),
      R => '0'
    );
\m1_axis_TData_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(52),
      Q => m1_axis_TData(52),
      R => '0'
    );
\m1_axis_TData_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(53),
      Q => m1_axis_TData(53),
      R => '0'
    );
\m1_axis_TData_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(54),
      Q => m1_axis_TData(54),
      R => '0'
    );
\m1_axis_TData_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(55),
      Q => m1_axis_TData(55),
      R => '0'
    );
\m1_axis_TData_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(56),
      Q => m1_axis_TData(56),
      R => '0'
    );
\m1_axis_TData_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(57),
      Q => m1_axis_TData(57),
      R => '0'
    );
\m1_axis_TData_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(58),
      Q => m1_axis_TData(58),
      R => '0'
    );
\m1_axis_TData_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(59),
      Q => m1_axis_TData(59),
      R => '0'
    );
\m1_axis_TData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(5),
      Q => m1_axis_TData(5),
      R => '0'
    );
\m1_axis_TData_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(60),
      Q => m1_axis_TData(60),
      R => '0'
    );
\m1_axis_TData_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(61),
      Q => m1_axis_TData(61),
      R => '0'
    );
\m1_axis_TData_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(62),
      Q => m1_axis_TData(62),
      R => '0'
    );
\m1_axis_TData_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(63),
      Q => m1_axis_TData(63),
      R => '0'
    );
\m1_axis_TData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(6),
      Q => m1_axis_TData(6),
      R => '0'
    );
\m1_axis_TData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(7),
      Q => m1_axis_TData(7),
      R => '0'
    );
\m1_axis_TData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(8),
      Q => m1_axis_TData(8),
      R => '0'
    );
\m1_axis_TData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TData_dly(9),
      Q => m1_axis_TData(9),
      R => '0'
    );
\m1_axis_TDest_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(0),
      Q => m1_axis_TDest(0),
      R => '0'
    );
\m1_axis_TDest_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(10),
      Q => m1_axis_TDest(10),
      R => '0'
    );
\m1_axis_TDest_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(1),
      Q => m1_axis_TDest(1),
      R => '0'
    );
\m1_axis_TDest_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(2),
      Q => m1_axis_TDest(2),
      R => '0'
    );
\m1_axis_TDest_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(3),
      Q => m1_axis_TDest(3),
      R => '0'
    );
\m1_axis_TDest_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(4),
      Q => m1_axis_TDest(4),
      R => '0'
    );
\m1_axis_TDest_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(5),
      Q => m1_axis_TDest(5),
      R => '0'
    );
\m1_axis_TDest_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(6),
      Q => m1_axis_TDest(6),
      R => '0'
    );
\m1_axis_TDest_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(7),
      Q => m1_axis_TDest(7),
      R => '0'
    );
\m1_axis_TDest_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(8),
      Q => m1_axis_TDest(8),
      R => '0'
    );
\m1_axis_TDest_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_TDest_dly(9),
      Q => m1_axis_TDest(9),
      R => '0'
    );
\m1_axis_TKeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(0),
      Q => m1_axis_TKeep(0),
      R => '0'
    );
\m1_axis_TKeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(1),
      Q => m1_axis_TKeep(1),
      R => '0'
    );
\m1_axis_TKeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(2),
      Q => m1_axis_TKeep(2),
      R => '0'
    );
\m1_axis_TKeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(3),
      Q => m1_axis_TKeep(3),
      R => '0'
    );
\m1_axis_TKeep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(4),
      Q => m1_axis_TKeep(4),
      R => '0'
    );
\m1_axis_TKeep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(5),
      Q => m1_axis_TKeep(5),
      R => '0'
    );
\m1_axis_TKeep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(6),
      Q => m1_axis_TKeep(6),
      R => '0'
    );
\m1_axis_TKeep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TValid_i_1_n_0,
      D => s_axis_Tkeep_dly(7),
      Q => m1_axis_TKeep(7),
      R => '0'
    );
m1_axis_TLast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_Tlast_dly,
      Q => m1_axis_TLast,
      R => \m0_axis_TData[63]_i_1_n_0\
    );
m1_axis_TValid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TValid_dly,
      Q => m1_axis_TValid,
      R => \m0_axis_TData[63]_i_1_n_0\
    );
\s_axis_TData_dly_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(0),
      Q => s_axis_TData_dly(0),
      R => p_0_in
    );
\s_axis_TData_dly_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(10),
      Q => s_axis_TData_dly(10),
      R => p_0_in
    );
\s_axis_TData_dly_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(11),
      Q => s_axis_TData_dly(11),
      R => p_0_in
    );
\s_axis_TData_dly_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(12),
      Q => s_axis_TData_dly(12),
      R => p_0_in
    );
\s_axis_TData_dly_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(13),
      Q => s_axis_TData_dly(13),
      R => p_0_in
    );
\s_axis_TData_dly_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(14),
      Q => s_axis_TData_dly(14),
      R => p_0_in
    );
\s_axis_TData_dly_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(15),
      Q => s_axis_TData_dly(15),
      R => p_0_in
    );
\s_axis_TData_dly_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(16),
      Q => s_axis_TData_dly(16),
      R => p_0_in
    );
\s_axis_TData_dly_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(17),
      Q => s_axis_TData_dly(17),
      R => p_0_in
    );
\s_axis_TData_dly_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(18),
      Q => s_axis_TData_dly(18),
      R => p_0_in
    );
\s_axis_TData_dly_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(19),
      Q => s_axis_TData_dly(19),
      R => p_0_in
    );
\s_axis_TData_dly_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(1),
      Q => s_axis_TData_dly(1),
      R => p_0_in
    );
\s_axis_TData_dly_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(20),
      Q => s_axis_TData_dly(20),
      R => p_0_in
    );
\s_axis_TData_dly_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(21),
      Q => s_axis_TData_dly(21),
      R => p_0_in
    );
\s_axis_TData_dly_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(22),
      Q => s_axis_TData_dly(22),
      R => p_0_in
    );
\s_axis_TData_dly_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(23),
      Q => s_axis_TData_dly(23),
      R => p_0_in
    );
\s_axis_TData_dly_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(24),
      Q => s_axis_TData_dly(24),
      R => p_0_in
    );
\s_axis_TData_dly_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(25),
      Q => s_axis_TData_dly(25),
      R => p_0_in
    );
\s_axis_TData_dly_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(26),
      Q => s_axis_TData_dly(26),
      R => p_0_in
    );
\s_axis_TData_dly_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(27),
      Q => s_axis_TData_dly(27),
      R => p_0_in
    );
\s_axis_TData_dly_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(28),
      Q => s_axis_TData_dly(28),
      R => p_0_in
    );
\s_axis_TData_dly_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(29),
      Q => s_axis_TData_dly(29),
      R => p_0_in
    );
\s_axis_TData_dly_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(2),
      Q => s_axis_TData_dly(2),
      R => p_0_in
    );
\s_axis_TData_dly_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(30),
      Q => s_axis_TData_dly(30),
      R => p_0_in
    );
\s_axis_TData_dly_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(31),
      Q => s_axis_TData_dly(31),
      R => p_0_in
    );
\s_axis_TData_dly_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(32),
      Q => s_axis_TData_dly(32),
      R => p_0_in
    );
\s_axis_TData_dly_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(33),
      Q => s_axis_TData_dly(33),
      R => p_0_in
    );
\s_axis_TData_dly_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(34),
      Q => s_axis_TData_dly(34),
      R => p_0_in
    );
\s_axis_TData_dly_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(35),
      Q => s_axis_TData_dly(35),
      R => p_0_in
    );
\s_axis_TData_dly_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(36),
      Q => s_axis_TData_dly(36),
      R => p_0_in
    );
\s_axis_TData_dly_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(37),
      Q => s_axis_TData_dly(37),
      R => p_0_in
    );
\s_axis_TData_dly_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(38),
      Q => s_axis_TData_dly(38),
      R => p_0_in
    );
\s_axis_TData_dly_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(39),
      Q => s_axis_TData_dly(39),
      R => p_0_in
    );
\s_axis_TData_dly_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(3),
      Q => s_axis_TData_dly(3),
      R => p_0_in
    );
\s_axis_TData_dly_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(40),
      Q => s_axis_TData_dly(40),
      R => p_0_in
    );
\s_axis_TData_dly_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(41),
      Q => s_axis_TData_dly(41),
      R => p_0_in
    );
\s_axis_TData_dly_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(42),
      Q => s_axis_TData_dly(42),
      R => p_0_in
    );
\s_axis_TData_dly_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(43),
      Q => s_axis_TData_dly(43),
      R => p_0_in
    );
\s_axis_TData_dly_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(44),
      Q => s_axis_TData_dly(44),
      R => p_0_in
    );
\s_axis_TData_dly_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(45),
      Q => s_axis_TData_dly(45),
      R => p_0_in
    );
\s_axis_TData_dly_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(46),
      Q => s_axis_TData_dly(46),
      R => p_0_in
    );
\s_axis_TData_dly_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(47),
      Q => s_axis_TData_dly(47),
      R => p_0_in
    );
\s_axis_TData_dly_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(48),
      Q => s_axis_TData_dly(48),
      R => p_0_in
    );
\s_axis_TData_dly_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(49),
      Q => s_axis_TData_dly(49),
      R => p_0_in
    );
\s_axis_TData_dly_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(4),
      Q => s_axis_TData_dly(4),
      R => p_0_in
    );
\s_axis_TData_dly_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(50),
      Q => s_axis_TData_dly(50),
      R => p_0_in
    );
\s_axis_TData_dly_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(51),
      Q => s_axis_TData_dly(51),
      R => p_0_in
    );
\s_axis_TData_dly_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(52),
      Q => s_axis_TData_dly(52),
      R => p_0_in
    );
\s_axis_TData_dly_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(53),
      Q => s_axis_TData_dly(53),
      R => p_0_in
    );
\s_axis_TData_dly_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(54),
      Q => s_axis_TData_dly(54),
      R => p_0_in
    );
\s_axis_TData_dly_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(55),
      Q => s_axis_TData_dly(55),
      R => p_0_in
    );
\s_axis_TData_dly_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(56),
      Q => s_axis_TData_dly(56),
      R => p_0_in
    );
\s_axis_TData_dly_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(57),
      Q => s_axis_TData_dly(57),
      R => p_0_in
    );
\s_axis_TData_dly_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(58),
      Q => s_axis_TData_dly(58),
      R => p_0_in
    );
\s_axis_TData_dly_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(59),
      Q => s_axis_TData_dly(59),
      R => p_0_in
    );
\s_axis_TData_dly_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(5),
      Q => s_axis_TData_dly(5),
      R => p_0_in
    );
\s_axis_TData_dly_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(60),
      Q => s_axis_TData_dly(60),
      R => p_0_in
    );
\s_axis_TData_dly_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(61),
      Q => s_axis_TData_dly(61),
      R => p_0_in
    );
\s_axis_TData_dly_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(62),
      Q => s_axis_TData_dly(62),
      R => p_0_in
    );
\s_axis_TData_dly_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(63),
      Q => s_axis_TData_dly(63),
      R => p_0_in
    );
\s_axis_TData_dly_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(6),
      Q => s_axis_TData_dly(6),
      R => p_0_in
    );
\s_axis_TData_dly_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(7),
      Q => s_axis_TData_dly(7),
      R => p_0_in
    );
\s_axis_TData_dly_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(8),
      Q => s_axis_TData_dly(8),
      R => p_0_in
    );
\s_axis_TData_dly_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TData(9),
      Q => s_axis_TData_dly(9),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(0),
      Q => s_axis_TDest_dly(0),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(10),
      Q => s_axis_TDest_dly(10),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(1),
      Q => s_axis_TDest_dly(1),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(2),
      Q => s_axis_TDest_dly(2),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(3),
      Q => s_axis_TDest_dly(3),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(4),
      Q => s_axis_TDest_dly(4),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(5),
      Q => s_axis_TDest_dly(5),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(6),
      Q => s_axis_TDest_dly(6),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(7),
      Q => s_axis_TDest_dly(7),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(8),
      Q => s_axis_TDest_dly(8),
      R => p_0_in
    );
\s_axis_TDest_dly_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TDest(9),
      Q => s_axis_TDest_dly(9),
      R => p_0_in
    );
s_axis_TValid_dly_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TValid,
      Q => s_axis_TValid_dly,
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(0),
      Q => s_axis_Tkeep_dly(0),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(1),
      Q => s_axis_Tkeep_dly(1),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(2),
      Q => s_axis_Tkeep_dly(2),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(3),
      Q => s_axis_Tkeep_dly(3),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(4),
      Q => s_axis_Tkeep_dly(4),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(5),
      Q => s_axis_Tkeep_dly(5),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(6),
      Q => s_axis_Tkeep_dly(6),
      R => p_0_in
    );
\s_axis_Tkeep_dly_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TKeep(7),
      Q => s_axis_Tkeep_dly(7),
      R => p_0_in
    );
s_axis_Tlast_dly_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
s_axis_Tlast_dly_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m0_axis_TReady,
      D => s_axis_TLast,
      Q => s_axis_Tlast_dly,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mac_traffic_control_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_TData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_TKeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_TValid : in STD_LOGIC;
    s_axis_TReady : out STD_LOGIC;
    s_axis_TLast : in STD_LOGIC;
    s_axis_TDest : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m0_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axis_TValid : out STD_LOGIC;
    m0_axis_TReady : in STD_LOGIC;
    m0_axis_TLast : out STD_LOGIC;
    m0_axis_TDest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m1_axis_TData : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m1_axis_TKeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m1_axis_TValid : out STD_LOGIC;
    m1_axis_TReady : in STD_LOGIC;
    m1_axis_TLast : out STD_LOGIC;
    m1_axis_TDest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    fifo_prog_full : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ipsec_bd_mac_traffic_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ipsec_bd_mac_traffic_control_0_0 : entity is "ipsec_bd_mac_traffic_control_0_0,mac_traffic_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ipsec_bd_mac_traffic_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ipsec_bd_mac_traffic_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ipsec_bd_mac_traffic_control_0_0 : entity is "mac_traffic_control,Vivado 2020.1_AR75245";
end ipsec_bd_mac_traffic_control_0_0;

architecture STRUCTURE of ipsec_bd_mac_traffic_control_0_0 is
  signal \^m0_axis_tready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0";
  attribute x_interface_info of m0_axis_TLast : signal is "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  attribute x_interface_info of m0_axis_TReady : signal is "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  attribute x_interface_info of m0_axis_TValid : signal is "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  attribute x_interface_info of m1_axis_TLast : signal is "xilinx.com:interface:axis:1.0 m1_axis TLAST";
  attribute x_interface_info of m1_axis_TReady : signal is "xilinx.com:interface:axis:1.0 m1_axis TREADY";
  attribute x_interface_info of m1_axis_TValid : signal is "xilinx.com:interface:axis:1.0 m1_axis TVALID";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_TLast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_TReady : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_TValid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m0_axis_TData : signal is "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  attribute x_interface_parameter of m0_axis_TData : signal is "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m0_axis_TDest : signal is "xilinx.com:interface:axis:1.0 m0_axis TDEST";
  attribute x_interface_info of m0_axis_TKeep : signal is "xilinx.com:interface:axis:1.0 m0_axis TKEEP";
  attribute x_interface_info of m1_axis_TData : signal is "xilinx.com:interface:axis:1.0 m1_axis TDATA";
  attribute x_interface_parameter of m1_axis_TData : signal is "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m1_axis_TDest : signal is "xilinx.com:interface:axis:1.0 m1_axis TDEST";
  attribute x_interface_info of m1_axis_TKeep : signal is "xilinx.com:interface:axis:1.0 m1_axis TKEEP";
  attribute x_interface_info of s_axis_TData : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_TData : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_TDest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute x_interface_info of s_axis_TKeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  \^m0_axis_tready\ <= m0_axis_TReady;
  s_axis_TReady <= \^m0_axis_tready\;
U0: entity work.ipsec_bd_mac_traffic_control_0_0_mac_traffic_control
     port map (
      clk => clk,
      fifo_prog_full => fifo_prog_full,
      m0_axis_TData(63 downto 0) => m0_axis_TData(63 downto 0),
      m0_axis_TDest(10 downto 0) => m0_axis_TDest(10 downto 0),
      m0_axis_TKeep(7 downto 0) => m0_axis_TKeep(7 downto 0),
      m0_axis_TLast => m0_axis_TLast,
      m0_axis_TReady => \^m0_axis_tready\,
      m0_axis_TValid => m0_axis_TValid,
      m1_axis_TData(63 downto 0) => m1_axis_TData(63 downto 0),
      m1_axis_TDest(10 downto 0) => m1_axis_TDest(10 downto 0),
      m1_axis_TKeep(7 downto 0) => m1_axis_TKeep(7 downto 0),
      m1_axis_TLast => m1_axis_TLast,
      m1_axis_TValid => m1_axis_TValid,
      rst_n => rst_n,
      s_axis_TData(63 downto 0) => s_axis_TData(63 downto 0),
      s_axis_TDest(10 downto 0) => s_axis_TDest(10 downto 0),
      s_axis_TKeep(7 downto 0) => s_axis_TKeep(7 downto 0),
      s_axis_TLast => s_axis_TLast,
      s_axis_TValid => s_axis_TValid
    );
end STRUCTURE;
