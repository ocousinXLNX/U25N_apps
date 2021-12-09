-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:27:11 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mode_selection_0_0/ipsec_bd_mode_selection_0_0_sim_netlist.vhdl
-- Design      : ipsec_bd_mode_selection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mode_selection_0_0_mode_selection is
  port (
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tready : in STD_LOGIC;
    mode_select_i : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ipsec_bd_mode_selection_0_0_mode_selection : entity is "mode_selection";
end ipsec_bd_mode_selection_0_0_mode_selection;

architecture STRUCTURE of ipsec_bd_mode_selection_0_0_mode_selection is
  signal \FSM_onehot_mode_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mode_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_mode_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \m0_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal m0_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m0_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \m1_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal mode_select : STD_LOGIC;
  signal \mode_select__0\ : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_mode_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_mode_state_reg[0]\ : label is "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mode_state_reg[1]\ : label is "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mode_state_reg[2]\ : label is "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100";
  attribute SOFT_HLUTNM of m0_axis_tvalid_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mode_select_reg : label is "LDC";
begin
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_mode_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F101FB01F10101"
    )
        port map (
      I0 => \FSM_onehot_mode_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_mode_state_reg_n_0_[0]\,
      I2 => \mode_select__0\,
      I3 => mode_select_i,
      I4 => \FSM_onehot_mode_state[1]_i_2_n_0\,
      I5 => s_axis_tlast,
      O => \FSM_onehot_mode_state[0]_i_1_n_0\
    );
\FSM_onehot_mode_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AAFEAA00AAAE"
    )
        port map (
      I0 => \FSM_onehot_mode_state_reg_n_0_[1]\,
      I1 => \mode_select__0\,
      I2 => mode_select_i,
      I3 => \FSM_onehot_mode_state[1]_i_2_n_0\,
      I4 => s_axis_tlast,
      I5 => \FSM_onehot_mode_state_reg_n_0_[0]\,
      O => \FSM_onehot_mode_state[1]_i_1_n_0\
    );
\FSM_onehot_mode_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m0_axis_tready,
      I2 => \mode_select__0\,
      I3 => m1_axis_tready,
      O => \FSM_onehot_mode_state[1]_i_2_n_0\
    );
\FSM_onehot_mode_state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \FSM_onehot_mode_state[2]_i_1_n_0\
    );
\FSM_onehot_mode_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEBF"
    )
        port map (
      I0 => \FSM_onehot_mode_state_reg_n_0_[1]\,
      I1 => \mode_select__0\,
      I2 => mode_select_i,
      I3 => \FSM_onehot_mode_state_reg_n_0_[0]\,
      O => \FSM_onehot_mode_state[2]_i_2_n_0\
    );
\FSM_onehot_mode_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3FFF80000000"
    )
        port map (
      I0 => \FSM_onehot_mode_state_reg_n_0_[1]\,
      I1 => mode_select_i,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tlast,
      I5 => \FSM_onehot_mode_state_reg_n_0_[0]\,
      O => \FSM_onehot_mode_state[2]_i_3_n_0\
    );
\FSM_onehot_mode_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_mode_state[2]_i_2_n_0\,
      D => \FSM_onehot_mode_state[0]_i_1_n_0\,
      Q => \FSM_onehot_mode_state_reg_n_0_[0]\,
      S => \FSM_onehot_mode_state[2]_i_1_n_0\
    );
\FSM_onehot_mode_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_mode_state[2]_i_2_n_0\,
      D => \FSM_onehot_mode_state[1]_i_1_n_0\,
      Q => \FSM_onehot_mode_state_reg_n_0_[1]\,
      R => \FSM_onehot_mode_state[2]_i_1_n_0\
    );
\FSM_onehot_mode_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_mode_state[2]_i_2_n_0\,
      D => \FSM_onehot_mode_state[2]_i_3_n_0\,
      Q => \mode_select__0\,
      R => \FSM_onehot_mode_state[2]_i_1_n_0\
    );
\m0_axis_tdata[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => m0_axis_tready,
      I1 => \mode_select__0\,
      I2 => m1_axis_tready,
      I3 => mode_select,
      O => \m0_axis_tdata[127]_i_1_n_0\
    );
\m0_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m0_axis_tdata(0),
      R => '0'
    );
\m0_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(100),
      Q => m0_axis_tdata(100),
      R => '0'
    );
\m0_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(101),
      Q => m0_axis_tdata(101),
      R => '0'
    );
\m0_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(102),
      Q => m0_axis_tdata(102),
      R => '0'
    );
\m0_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(103),
      Q => m0_axis_tdata(103),
      R => '0'
    );
\m0_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(104),
      Q => m0_axis_tdata(104),
      R => '0'
    );
\m0_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(105),
      Q => m0_axis_tdata(105),
      R => '0'
    );
\m0_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(106),
      Q => m0_axis_tdata(106),
      R => '0'
    );
\m0_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(107),
      Q => m0_axis_tdata(107),
      R => '0'
    );
\m0_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(108),
      Q => m0_axis_tdata(108),
      R => '0'
    );
\m0_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(109),
      Q => m0_axis_tdata(109),
      R => '0'
    );
\m0_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m0_axis_tdata(10),
      R => '0'
    );
\m0_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(110),
      Q => m0_axis_tdata(110),
      R => '0'
    );
\m0_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(111),
      Q => m0_axis_tdata(111),
      R => '0'
    );
\m0_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(112),
      Q => m0_axis_tdata(112),
      R => '0'
    );
\m0_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(113),
      Q => m0_axis_tdata(113),
      R => '0'
    );
\m0_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(114),
      Q => m0_axis_tdata(114),
      R => '0'
    );
\m0_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(115),
      Q => m0_axis_tdata(115),
      R => '0'
    );
\m0_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(116),
      Q => m0_axis_tdata(116),
      R => '0'
    );
\m0_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(117),
      Q => m0_axis_tdata(117),
      R => '0'
    );
\m0_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(118),
      Q => m0_axis_tdata(118),
      R => '0'
    );
\m0_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(119),
      Q => m0_axis_tdata(119),
      R => '0'
    );
\m0_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m0_axis_tdata(11),
      R => '0'
    );
\m0_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(120),
      Q => m0_axis_tdata(120),
      R => '0'
    );
\m0_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(121),
      Q => m0_axis_tdata(121),
      R => '0'
    );
\m0_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(122),
      Q => m0_axis_tdata(122),
      R => '0'
    );
\m0_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(123),
      Q => m0_axis_tdata(123),
      R => '0'
    );
\m0_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(124),
      Q => m0_axis_tdata(124),
      R => '0'
    );
\m0_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(125),
      Q => m0_axis_tdata(125),
      R => '0'
    );
\m0_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(126),
      Q => m0_axis_tdata(126),
      R => '0'
    );
\m0_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(127),
      Q => m0_axis_tdata(127),
      R => '0'
    );
\m0_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m0_axis_tdata(12),
      R => '0'
    );
\m0_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m0_axis_tdata(13),
      R => '0'
    );
\m0_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m0_axis_tdata(14),
      R => '0'
    );
\m0_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m0_axis_tdata(15),
      R => '0'
    );
\m0_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m0_axis_tdata(16),
      R => '0'
    );
\m0_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m0_axis_tdata(17),
      R => '0'
    );
\m0_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m0_axis_tdata(18),
      R => '0'
    );
\m0_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m0_axis_tdata(19),
      R => '0'
    );
\m0_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m0_axis_tdata(1),
      R => '0'
    );
\m0_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m0_axis_tdata(20),
      R => '0'
    );
\m0_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => m0_axis_tdata(21),
      R => '0'
    );
\m0_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m0_axis_tdata(22),
      R => '0'
    );
\m0_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m0_axis_tdata(23),
      R => '0'
    );
\m0_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m0_axis_tdata(24),
      R => '0'
    );
\m0_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m0_axis_tdata(25),
      R => '0'
    );
\m0_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => m0_axis_tdata(26),
      R => '0'
    );
\m0_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => m0_axis_tdata(27),
      R => '0'
    );
\m0_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => m0_axis_tdata(28),
      R => '0'
    );
\m0_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => m0_axis_tdata(29),
      R => '0'
    );
\m0_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m0_axis_tdata(2),
      R => '0'
    );
\m0_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => m0_axis_tdata(30),
      R => '0'
    );
\m0_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => m0_axis_tdata(31),
      R => '0'
    );
\m0_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(32),
      Q => m0_axis_tdata(32),
      R => '0'
    );
\m0_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(33),
      Q => m0_axis_tdata(33),
      R => '0'
    );
\m0_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(34),
      Q => m0_axis_tdata(34),
      R => '0'
    );
\m0_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(35),
      Q => m0_axis_tdata(35),
      R => '0'
    );
\m0_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(36),
      Q => m0_axis_tdata(36),
      R => '0'
    );
\m0_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(37),
      Q => m0_axis_tdata(37),
      R => '0'
    );
\m0_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(38),
      Q => m0_axis_tdata(38),
      R => '0'
    );
\m0_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(39),
      Q => m0_axis_tdata(39),
      R => '0'
    );
\m0_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m0_axis_tdata(3),
      R => '0'
    );
\m0_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(40),
      Q => m0_axis_tdata(40),
      R => '0'
    );
\m0_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(41),
      Q => m0_axis_tdata(41),
      R => '0'
    );
\m0_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(42),
      Q => m0_axis_tdata(42),
      R => '0'
    );
\m0_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(43),
      Q => m0_axis_tdata(43),
      R => '0'
    );
\m0_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(44),
      Q => m0_axis_tdata(44),
      R => '0'
    );
\m0_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(45),
      Q => m0_axis_tdata(45),
      R => '0'
    );
\m0_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(46),
      Q => m0_axis_tdata(46),
      R => '0'
    );
\m0_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(47),
      Q => m0_axis_tdata(47),
      R => '0'
    );
\m0_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(48),
      Q => m0_axis_tdata(48),
      R => '0'
    );
\m0_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(49),
      Q => m0_axis_tdata(49),
      R => '0'
    );
\m0_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m0_axis_tdata(4),
      R => '0'
    );
\m0_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(50),
      Q => m0_axis_tdata(50),
      R => '0'
    );
\m0_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(51),
      Q => m0_axis_tdata(51),
      R => '0'
    );
\m0_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(52),
      Q => m0_axis_tdata(52),
      R => '0'
    );
\m0_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(53),
      Q => m0_axis_tdata(53),
      R => '0'
    );
\m0_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(54),
      Q => m0_axis_tdata(54),
      R => '0'
    );
\m0_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(55),
      Q => m0_axis_tdata(55),
      R => '0'
    );
\m0_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(56),
      Q => m0_axis_tdata(56),
      R => '0'
    );
\m0_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(57),
      Q => m0_axis_tdata(57),
      R => '0'
    );
\m0_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(58),
      Q => m0_axis_tdata(58),
      R => '0'
    );
\m0_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(59),
      Q => m0_axis_tdata(59),
      R => '0'
    );
\m0_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m0_axis_tdata(5),
      R => '0'
    );
\m0_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(60),
      Q => m0_axis_tdata(60),
      R => '0'
    );
\m0_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(61),
      Q => m0_axis_tdata(61),
      R => '0'
    );
\m0_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(62),
      Q => m0_axis_tdata(62),
      R => '0'
    );
\m0_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(63),
      Q => m0_axis_tdata(63),
      R => '0'
    );
\m0_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(64),
      Q => m0_axis_tdata(64),
      R => '0'
    );
\m0_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(65),
      Q => m0_axis_tdata(65),
      R => '0'
    );
\m0_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(66),
      Q => m0_axis_tdata(66),
      R => '0'
    );
\m0_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(67),
      Q => m0_axis_tdata(67),
      R => '0'
    );
\m0_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(68),
      Q => m0_axis_tdata(68),
      R => '0'
    );
\m0_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(69),
      Q => m0_axis_tdata(69),
      R => '0'
    );
\m0_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m0_axis_tdata(6),
      R => '0'
    );
\m0_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(70),
      Q => m0_axis_tdata(70),
      R => '0'
    );
\m0_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(71),
      Q => m0_axis_tdata(71),
      R => '0'
    );
\m0_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(72),
      Q => m0_axis_tdata(72),
      R => '0'
    );
\m0_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(73),
      Q => m0_axis_tdata(73),
      R => '0'
    );
\m0_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(74),
      Q => m0_axis_tdata(74),
      R => '0'
    );
\m0_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(75),
      Q => m0_axis_tdata(75),
      R => '0'
    );
\m0_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(76),
      Q => m0_axis_tdata(76),
      R => '0'
    );
\m0_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(77),
      Q => m0_axis_tdata(77),
      R => '0'
    );
\m0_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(78),
      Q => m0_axis_tdata(78),
      R => '0'
    );
\m0_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(79),
      Q => m0_axis_tdata(79),
      R => '0'
    );
\m0_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m0_axis_tdata(7),
      R => '0'
    );
\m0_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(80),
      Q => m0_axis_tdata(80),
      R => '0'
    );
\m0_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(81),
      Q => m0_axis_tdata(81),
      R => '0'
    );
\m0_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(82),
      Q => m0_axis_tdata(82),
      R => '0'
    );
\m0_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(83),
      Q => m0_axis_tdata(83),
      R => '0'
    );
\m0_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(84),
      Q => m0_axis_tdata(84),
      R => '0'
    );
\m0_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(85),
      Q => m0_axis_tdata(85),
      R => '0'
    );
\m0_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(86),
      Q => m0_axis_tdata(86),
      R => '0'
    );
\m0_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(87),
      Q => m0_axis_tdata(87),
      R => '0'
    );
\m0_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(88),
      Q => m0_axis_tdata(88),
      R => '0'
    );
\m0_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(89),
      Q => m0_axis_tdata(89),
      R => '0'
    );
\m0_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m0_axis_tdata(8),
      R => '0'
    );
\m0_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(90),
      Q => m0_axis_tdata(90),
      R => '0'
    );
\m0_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(91),
      Q => m0_axis_tdata(91),
      R => '0'
    );
\m0_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(92),
      Q => m0_axis_tdata(92),
      R => '0'
    );
\m0_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(93),
      Q => m0_axis_tdata(93),
      R => '0'
    );
\m0_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(94),
      Q => m0_axis_tdata(94),
      R => '0'
    );
\m0_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(95),
      Q => m0_axis_tdata(95),
      R => '0'
    );
\m0_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(96),
      Q => m0_axis_tdata(96),
      R => '0'
    );
\m0_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(97),
      Q => m0_axis_tdata(97),
      R => '0'
    );
\m0_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(98),
      Q => m0_axis_tdata(98),
      R => '0'
    );
\m0_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(99),
      Q => m0_axis_tdata(99),
      R => '0'
    );
\m0_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m0_axis_tdata(9),
      R => '0'
    );
\m0_axis_tdest_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(0),
      Q => m0_axis_tdest(0),
      R => '0'
    );
\m0_axis_tdest_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(10),
      Q => m0_axis_tdest(10),
      R => '0'
    );
\m0_axis_tdest_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(1),
      Q => m0_axis_tdest(1),
      R => '0'
    );
\m0_axis_tdest_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(2),
      Q => m0_axis_tdest(2),
      R => '0'
    );
\m0_axis_tdest_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(3),
      Q => m0_axis_tdest(3),
      R => '0'
    );
\m0_axis_tdest_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(4),
      Q => m0_axis_tdest(4),
      R => '0'
    );
\m0_axis_tdest_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(5),
      Q => m0_axis_tdest(5),
      R => '0'
    );
\m0_axis_tdest_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(6),
      Q => m0_axis_tdest(6),
      R => '0'
    );
\m0_axis_tdest_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(7),
      Q => m0_axis_tdest(7),
      R => '0'
    );
\m0_axis_tdest_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(8),
      Q => m0_axis_tdest(8),
      R => '0'
    );
\m0_axis_tdest_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(9),
      Q => m0_axis_tdest(9),
      R => '0'
    );
\m0_axis_tkeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(0),
      Q => m0_axis_tkeep(0),
      R => '0'
    );
\m0_axis_tkeep_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(10),
      Q => m0_axis_tkeep(10),
      R => '0'
    );
\m0_axis_tkeep_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(11),
      Q => m0_axis_tkeep(11),
      R => '0'
    );
\m0_axis_tkeep_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(12),
      Q => m0_axis_tkeep(12),
      R => '0'
    );
\m0_axis_tkeep_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(13),
      Q => m0_axis_tkeep(13),
      R => '0'
    );
\m0_axis_tkeep_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(14),
      Q => m0_axis_tkeep(14),
      R => '0'
    );
\m0_axis_tkeep_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(15),
      Q => m0_axis_tkeep(15),
      R => '0'
    );
\m0_axis_tkeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(1),
      Q => m0_axis_tkeep(1),
      R => '0'
    );
\m0_axis_tkeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(2),
      Q => m0_axis_tkeep(2),
      R => '0'
    );
\m0_axis_tkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(3),
      Q => m0_axis_tkeep(3),
      R => '0'
    );
\m0_axis_tkeep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(4),
      Q => m0_axis_tkeep(4),
      R => '0'
    );
\m0_axis_tkeep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(5),
      Q => m0_axis_tkeep(5),
      R => '0'
    );
\m0_axis_tkeep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(6),
      Q => m0_axis_tkeep(6),
      R => '0'
    );
\m0_axis_tkeep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(7),
      Q => m0_axis_tkeep(7),
      R => '0'
    );
\m0_axis_tkeep_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(8),
      Q => m0_axis_tkeep(8),
      R => '0'
    );
\m0_axis_tkeep_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m0_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(9),
      Q => m0_axis_tkeep(9),
      R => '0'
    );
m0_axis_tlast_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => mode_select,
      O => m0_axis_tlast_i_1_n_0
    );
m0_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^s_axis_tready\,
      D => m0_axis_tlast_i_1_n_0,
      Q => m0_axis_tlast,
      R => '0'
    );
m0_axis_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => mode_select,
      O => m0_axis_tvalid_i_1_n_0
    );
m0_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^s_axis_tready\,
      D => m0_axis_tvalid_i_1_n_0,
      Q => m0_axis_tvalid,
      R => '0'
    );
\m1_axis_tdata[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => mode_select,
      I1 => m0_axis_tready,
      I2 => \mode_select__0\,
      I3 => m1_axis_tready,
      O => \m1_axis_tdata[127]_i_1_n_0\
    );
\m1_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m1_axis_tdata(0),
      R => '0'
    );
\m1_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(100),
      Q => m1_axis_tdata(100),
      R => '0'
    );
\m1_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(101),
      Q => m1_axis_tdata(101),
      R => '0'
    );
\m1_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(102),
      Q => m1_axis_tdata(102),
      R => '0'
    );
\m1_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(103),
      Q => m1_axis_tdata(103),
      R => '0'
    );
\m1_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(104),
      Q => m1_axis_tdata(104),
      R => '0'
    );
\m1_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(105),
      Q => m1_axis_tdata(105),
      R => '0'
    );
\m1_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(106),
      Q => m1_axis_tdata(106),
      R => '0'
    );
\m1_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(107),
      Q => m1_axis_tdata(107),
      R => '0'
    );
\m1_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(108),
      Q => m1_axis_tdata(108),
      R => '0'
    );
\m1_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(109),
      Q => m1_axis_tdata(109),
      R => '0'
    );
\m1_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m1_axis_tdata(10),
      R => '0'
    );
\m1_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(110),
      Q => m1_axis_tdata(110),
      R => '0'
    );
\m1_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(111),
      Q => m1_axis_tdata(111),
      R => '0'
    );
\m1_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(112),
      Q => m1_axis_tdata(112),
      R => '0'
    );
\m1_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(113),
      Q => m1_axis_tdata(113),
      R => '0'
    );
\m1_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(114),
      Q => m1_axis_tdata(114),
      R => '0'
    );
\m1_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(115),
      Q => m1_axis_tdata(115),
      R => '0'
    );
\m1_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(116),
      Q => m1_axis_tdata(116),
      R => '0'
    );
\m1_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(117),
      Q => m1_axis_tdata(117),
      R => '0'
    );
\m1_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(118),
      Q => m1_axis_tdata(118),
      R => '0'
    );
\m1_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(119),
      Q => m1_axis_tdata(119),
      R => '0'
    );
\m1_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m1_axis_tdata(11),
      R => '0'
    );
\m1_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(120),
      Q => m1_axis_tdata(120),
      R => '0'
    );
\m1_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(121),
      Q => m1_axis_tdata(121),
      R => '0'
    );
\m1_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(122),
      Q => m1_axis_tdata(122),
      R => '0'
    );
\m1_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(123),
      Q => m1_axis_tdata(123),
      R => '0'
    );
\m1_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(124),
      Q => m1_axis_tdata(124),
      R => '0'
    );
\m1_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(125),
      Q => m1_axis_tdata(125),
      R => '0'
    );
\m1_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(126),
      Q => m1_axis_tdata(126),
      R => '0'
    );
\m1_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(127),
      Q => m1_axis_tdata(127),
      R => '0'
    );
\m1_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m1_axis_tdata(12),
      R => '0'
    );
\m1_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m1_axis_tdata(13),
      R => '0'
    );
\m1_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m1_axis_tdata(14),
      R => '0'
    );
\m1_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m1_axis_tdata(15),
      R => '0'
    );
\m1_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m1_axis_tdata(16),
      R => '0'
    );
\m1_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m1_axis_tdata(17),
      R => '0'
    );
\m1_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m1_axis_tdata(18),
      R => '0'
    );
\m1_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m1_axis_tdata(19),
      R => '0'
    );
\m1_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m1_axis_tdata(1),
      R => '0'
    );
\m1_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m1_axis_tdata(20),
      R => '0'
    );
\m1_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => m1_axis_tdata(21),
      R => '0'
    );
\m1_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m1_axis_tdata(22),
      R => '0'
    );
\m1_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m1_axis_tdata(23),
      R => '0'
    );
\m1_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m1_axis_tdata(24),
      R => '0'
    );
\m1_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m1_axis_tdata(25),
      R => '0'
    );
\m1_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => m1_axis_tdata(26),
      R => '0'
    );
\m1_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => m1_axis_tdata(27),
      R => '0'
    );
\m1_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => m1_axis_tdata(28),
      R => '0'
    );
\m1_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => m1_axis_tdata(29),
      R => '0'
    );
\m1_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m1_axis_tdata(2),
      R => '0'
    );
\m1_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => m1_axis_tdata(30),
      R => '0'
    );
\m1_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => m1_axis_tdata(31),
      R => '0'
    );
\m1_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(32),
      Q => m1_axis_tdata(32),
      R => '0'
    );
\m1_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(33),
      Q => m1_axis_tdata(33),
      R => '0'
    );
\m1_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(34),
      Q => m1_axis_tdata(34),
      R => '0'
    );
\m1_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(35),
      Q => m1_axis_tdata(35),
      R => '0'
    );
\m1_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(36),
      Q => m1_axis_tdata(36),
      R => '0'
    );
\m1_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(37),
      Q => m1_axis_tdata(37),
      R => '0'
    );
\m1_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(38),
      Q => m1_axis_tdata(38),
      R => '0'
    );
\m1_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(39),
      Q => m1_axis_tdata(39),
      R => '0'
    );
\m1_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m1_axis_tdata(3),
      R => '0'
    );
\m1_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(40),
      Q => m1_axis_tdata(40),
      R => '0'
    );
\m1_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(41),
      Q => m1_axis_tdata(41),
      R => '0'
    );
\m1_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(42),
      Q => m1_axis_tdata(42),
      R => '0'
    );
\m1_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(43),
      Q => m1_axis_tdata(43),
      R => '0'
    );
\m1_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(44),
      Q => m1_axis_tdata(44),
      R => '0'
    );
\m1_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(45),
      Q => m1_axis_tdata(45),
      R => '0'
    );
\m1_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(46),
      Q => m1_axis_tdata(46),
      R => '0'
    );
\m1_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(47),
      Q => m1_axis_tdata(47),
      R => '0'
    );
\m1_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(48),
      Q => m1_axis_tdata(48),
      R => '0'
    );
\m1_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(49),
      Q => m1_axis_tdata(49),
      R => '0'
    );
\m1_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m1_axis_tdata(4),
      R => '0'
    );
\m1_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(50),
      Q => m1_axis_tdata(50),
      R => '0'
    );
\m1_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(51),
      Q => m1_axis_tdata(51),
      R => '0'
    );
\m1_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(52),
      Q => m1_axis_tdata(52),
      R => '0'
    );
\m1_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(53),
      Q => m1_axis_tdata(53),
      R => '0'
    );
\m1_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(54),
      Q => m1_axis_tdata(54),
      R => '0'
    );
\m1_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(55),
      Q => m1_axis_tdata(55),
      R => '0'
    );
\m1_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(56),
      Q => m1_axis_tdata(56),
      R => '0'
    );
\m1_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(57),
      Q => m1_axis_tdata(57),
      R => '0'
    );
\m1_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(58),
      Q => m1_axis_tdata(58),
      R => '0'
    );
\m1_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(59),
      Q => m1_axis_tdata(59),
      R => '0'
    );
\m1_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m1_axis_tdata(5),
      R => '0'
    );
\m1_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(60),
      Q => m1_axis_tdata(60),
      R => '0'
    );
\m1_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(61),
      Q => m1_axis_tdata(61),
      R => '0'
    );
\m1_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(62),
      Q => m1_axis_tdata(62),
      R => '0'
    );
\m1_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(63),
      Q => m1_axis_tdata(63),
      R => '0'
    );
\m1_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(64),
      Q => m1_axis_tdata(64),
      R => '0'
    );
\m1_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(65),
      Q => m1_axis_tdata(65),
      R => '0'
    );
\m1_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(66),
      Q => m1_axis_tdata(66),
      R => '0'
    );
\m1_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(67),
      Q => m1_axis_tdata(67),
      R => '0'
    );
\m1_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(68),
      Q => m1_axis_tdata(68),
      R => '0'
    );
\m1_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(69),
      Q => m1_axis_tdata(69),
      R => '0'
    );
\m1_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m1_axis_tdata(6),
      R => '0'
    );
\m1_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(70),
      Q => m1_axis_tdata(70),
      R => '0'
    );
\m1_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(71),
      Q => m1_axis_tdata(71),
      R => '0'
    );
\m1_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(72),
      Q => m1_axis_tdata(72),
      R => '0'
    );
\m1_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(73),
      Q => m1_axis_tdata(73),
      R => '0'
    );
\m1_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(74),
      Q => m1_axis_tdata(74),
      R => '0'
    );
\m1_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(75),
      Q => m1_axis_tdata(75),
      R => '0'
    );
\m1_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(76),
      Q => m1_axis_tdata(76),
      R => '0'
    );
\m1_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(77),
      Q => m1_axis_tdata(77),
      R => '0'
    );
\m1_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(78),
      Q => m1_axis_tdata(78),
      R => '0'
    );
\m1_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(79),
      Q => m1_axis_tdata(79),
      R => '0'
    );
\m1_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m1_axis_tdata(7),
      R => '0'
    );
\m1_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(80),
      Q => m1_axis_tdata(80),
      R => '0'
    );
\m1_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(81),
      Q => m1_axis_tdata(81),
      R => '0'
    );
\m1_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(82),
      Q => m1_axis_tdata(82),
      R => '0'
    );
\m1_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(83),
      Q => m1_axis_tdata(83),
      R => '0'
    );
\m1_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(84),
      Q => m1_axis_tdata(84),
      R => '0'
    );
\m1_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(85),
      Q => m1_axis_tdata(85),
      R => '0'
    );
\m1_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(86),
      Q => m1_axis_tdata(86),
      R => '0'
    );
\m1_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(87),
      Q => m1_axis_tdata(87),
      R => '0'
    );
\m1_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(88),
      Q => m1_axis_tdata(88),
      R => '0'
    );
\m1_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(89),
      Q => m1_axis_tdata(89),
      R => '0'
    );
\m1_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m1_axis_tdata(8),
      R => '0'
    );
\m1_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(90),
      Q => m1_axis_tdata(90),
      R => '0'
    );
\m1_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(91),
      Q => m1_axis_tdata(91),
      R => '0'
    );
\m1_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(92),
      Q => m1_axis_tdata(92),
      R => '0'
    );
\m1_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(93),
      Q => m1_axis_tdata(93),
      R => '0'
    );
\m1_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(94),
      Q => m1_axis_tdata(94),
      R => '0'
    );
\m1_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(95),
      Q => m1_axis_tdata(95),
      R => '0'
    );
\m1_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(96),
      Q => m1_axis_tdata(96),
      R => '0'
    );
\m1_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(97),
      Q => m1_axis_tdata(97),
      R => '0'
    );
\m1_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(98),
      Q => m1_axis_tdata(98),
      R => '0'
    );
\m1_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(99),
      Q => m1_axis_tdata(99),
      R => '0'
    );
\m1_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m1_axis_tdata(9),
      R => '0'
    );
\m1_axis_tdest_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(0),
      Q => m1_axis_tdest(0),
      R => '0'
    );
\m1_axis_tdest_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(10),
      Q => m1_axis_tdest(10),
      R => '0'
    );
\m1_axis_tdest_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(1),
      Q => m1_axis_tdest(1),
      R => '0'
    );
\m1_axis_tdest_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(2),
      Q => m1_axis_tdest(2),
      R => '0'
    );
\m1_axis_tdest_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(3),
      Q => m1_axis_tdest(3),
      R => '0'
    );
\m1_axis_tdest_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(4),
      Q => m1_axis_tdest(4),
      R => '0'
    );
\m1_axis_tdest_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(5),
      Q => m1_axis_tdest(5),
      R => '0'
    );
\m1_axis_tdest_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(6),
      Q => m1_axis_tdest(6),
      R => '0'
    );
\m1_axis_tdest_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(7),
      Q => m1_axis_tdest(7),
      R => '0'
    );
\m1_axis_tdest_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(8),
      Q => m1_axis_tdest(8),
      R => '0'
    );
\m1_axis_tdest_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tdest(9),
      Q => m1_axis_tdest(9),
      R => '0'
    );
\m1_axis_tkeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(0),
      Q => m1_axis_tkeep(0),
      R => '0'
    );
\m1_axis_tkeep_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(10),
      Q => m1_axis_tkeep(10),
      R => '0'
    );
\m1_axis_tkeep_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(11),
      Q => m1_axis_tkeep(11),
      R => '0'
    );
\m1_axis_tkeep_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(12),
      Q => m1_axis_tkeep(12),
      R => '0'
    );
\m1_axis_tkeep_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(13),
      Q => m1_axis_tkeep(13),
      R => '0'
    );
\m1_axis_tkeep_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(14),
      Q => m1_axis_tkeep(14),
      R => '0'
    );
\m1_axis_tkeep_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(15),
      Q => m1_axis_tkeep(15),
      R => '0'
    );
\m1_axis_tkeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(1),
      Q => m1_axis_tkeep(1),
      R => '0'
    );
\m1_axis_tkeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(2),
      Q => m1_axis_tkeep(2),
      R => '0'
    );
\m1_axis_tkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(3),
      Q => m1_axis_tkeep(3),
      R => '0'
    );
\m1_axis_tkeep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(4),
      Q => m1_axis_tkeep(4),
      R => '0'
    );
\m1_axis_tkeep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(5),
      Q => m1_axis_tkeep(5),
      R => '0'
    );
\m1_axis_tkeep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(6),
      Q => m1_axis_tkeep(6),
      R => '0'
    );
\m1_axis_tkeep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(7),
      Q => m1_axis_tkeep(7),
      R => '0'
    );
\m1_axis_tkeep_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(8),
      Q => m1_axis_tkeep(8),
      R => '0'
    );
\m1_axis_tkeep_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tkeep(9),
      Q => m1_axis_tkeep(9),
      R => '0'
    );
m1_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tlast,
      Q => m1_axis_tlast,
      R => \m0_axis_tdata[127]_i_1_n_0\
    );
m1_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m1_axis_tdata[127]_i_1_n_0\,
      D => s_axis_tvalid,
      Q => m1_axis_tvalid,
      R => \m0_axis_tdata[127]_i_1_n_0\
    );
mode_select_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_mode_state_reg_n_0_[0]\,
      D => '1',
      G => \mode_select__0\,
      GE => '1',
      Q => mode_select
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m1_axis_tready,
      I1 => \mode_select__0\,
      I2 => m0_axis_tready,
      O => \^s_axis_tready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mode_selection_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    mode_select_i : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m0_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m0_axis_tdest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC;
    m0_axis_tready : in STD_LOGIC;
    m1_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m1_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m1_axis_tdest : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m1_axis_tvalid : out STD_LOGIC;
    m1_axis_tlast : out STD_LOGIC;
    m1_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ipsec_bd_mode_selection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ipsec_bd_mode_selection_0_0 : entity is "ipsec_bd_mode_selection_0_0,mode_selection,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ipsec_bd_mode_selection_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ipsec_bd_mode_selection_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ipsec_bd_mode_selection_0_0 : entity is "mode_selection,Vivado 2020.1_AR75245";
end ipsec_bd_mode_selection_0_0;

architecture STRUCTURE of ipsec_bd_mode_selection_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute x_interface_info of m0_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  attribute x_interface_info of m0_axis_tready : signal is "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  attribute x_interface_info of m0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  attribute x_interface_info of m1_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m1_axis TLAST";
  attribute x_interface_info of m1_axis_tready : signal is "xilinx.com:interface:axis:1.0 m1_axis TREADY";
  attribute x_interface_info of m1_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m1_axis TVALID";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  attribute x_interface_parameter of m0_axis_tdata : signal is "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m0_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m0_axis TDEST";
  attribute x_interface_info of m0_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m0_axis TKEEP";
  attribute x_interface_info of m1_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m1_axis TDATA";
  attribute x_interface_parameter of m1_axis_tdata : signal is "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m1_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m1_axis TDEST";
  attribute x_interface_info of m1_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m1_axis TKEEP";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
U0: entity work.ipsec_bd_mode_selection_0_0_mode_selection
     port map (
      clk => clk,
      m0_axis_tdata(127 downto 0) => m0_axis_tdata(127 downto 0),
      m0_axis_tdest(10 downto 0) => m0_axis_tdest(10 downto 0),
      m0_axis_tkeep(15 downto 0) => m0_axis_tkeep(15 downto 0),
      m0_axis_tlast => m0_axis_tlast,
      m0_axis_tready => m0_axis_tready,
      m0_axis_tvalid => m0_axis_tvalid,
      m1_axis_tdata(127 downto 0) => m1_axis_tdata(127 downto 0),
      m1_axis_tdest(10 downto 0) => m1_axis_tdest(10 downto 0),
      m1_axis_tkeep(15 downto 0) => m1_axis_tkeep(15 downto 0),
      m1_axis_tlast => m1_axis_tlast,
      m1_axis_tready => m1_axis_tready,
      m1_axis_tvalid => m1_axis_tvalid,
      mode_select_i => mode_select_i,
      rst_n => rst_n,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tdest(10 downto 0) => s_axis_tdest(10 downto 0),
      s_axis_tkeep(15 downto 0) => s_axis_tkeep(15 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
