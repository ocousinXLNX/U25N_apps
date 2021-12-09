-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:10:08 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_flow_control_0_0/ipsec_bd_mac_flow_control_0_0_sim_netlist.vhdl
-- Design      : ipsec_bd_mac_flow_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mac_flow_control_0_0_mac_flow_control is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ipsec_bd_mac_flow_control_0_0_mac_flow_control : entity is "mac_flow_control";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ipsec_bd_mac_flow_control_0_0_mac_flow_control : entity is "soft";
end ipsec_bd_mac_flow_control_0_0_mac_flow_control;

architecture STRUCTURE of ipsec_bd_mac_flow_control_0_0_mac_flow_control is
  signal counter_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of counter_value : signal is std.standard.true;
  signal \counter_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value[4]_i_2_n_0\ : STD_LOGIC;
  signal \ctl_tx_pause_req_s[8]_i_1_n_0\ : STD_LOGIC;
  signal ctl_tx_resend_pause_s_i_1_n_0 : STD_LOGIC;
  signal enable_counter : STD_LOGIC;
  attribute MARK_DEBUG of enable_counter : signal is std.standard.true;
  signal enable_counter_i_1_n_0 : STD_LOGIC;
  signal fifo_full_d1 : STD_LOGIC;
  signal fifo_full_d2_i_1_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o_ctl_tx_pause_req\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute MARK_DEBUG of \^o_ctl_tx_pause_req\ : signal is std.standard.true;
  signal \^o_ctl_tx_resend_pause\ : STD_LOGIC;
  attribute MARK_DEBUG of o_ctl_tx_resend_pause : signal is std.standard.true;
  signal \^o_fifo_full_ila\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001";
  attribute KEEP : string;
  attribute KEEP of \counter_value_reg[0]\ : label is "yes";
  attribute KEEP of \counter_value_reg[1]\ : label is "yes";
  attribute KEEP of \counter_value_reg[2]\ : label is "yes";
  attribute KEEP of \counter_value_reg[3]\ : label is "yes";
  attribute KEEP of \counter_value_reg[4]\ : label is "yes";
  attribute SOFT_HLUTNM of \ctl_tx_pause_req_s[8]_i_1\ : label is "soft_lutpair1";
  attribute KEEP of enable_counter_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of i_fifo_full : signal is "true";
  attribute mark_debug_string of o_ctl_tx_resend_pause : signal is "true";
  attribute mark_debug_string of i_stat_tx_pause_valid : signal is "true";
  attribute mark_debug_string of o_ctl_tx_pause_req : signal is "true";
begin
  o_ctl_tx_pause_req(8 downto 0) <= \^o_ctl_tx_pause_req\(8 downto 0);
  o_ctl_tx_resend_pause <= \^o_ctl_tx_resend_pause\;
  o_fifo_full_ila <= \^o_fifo_full_ila\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1040FFFA"
    )
        port map (
      I0 => state(2),
      I1 => \^o_ctl_tx_pause_req\(8),
      I2 => state(1),
      I3 => \^o_fifo_full_ila\,
      I4 => state(0),
      O => next_state(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => next_state(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44000A0A"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \^o_fifo_full_ila\,
      I3 => \^o_ctl_tx_pause_req\(8),
      I4 => state(0),
      O => next_state(2)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => next_state(0),
      Q => state(0),
      R => fifo_full_d2_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => next_state(1),
      Q => state(1),
      R => fifo_full_d2_i_1_n_0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => next_state(2),
      Q => state(2),
      R => fifo_full_d2_i_1_n_0
    );
\counter_value[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1204"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => counter_value(0),
      O => \counter_value[0]_i_1_n_0\
    );
\counter_value[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"051A0040"
    )
        port map (
      I0 => state(0),
      I1 => counter_value(0),
      I2 => state(1),
      I3 => state(2),
      I4 => counter_value(1),
      O => \counter_value[1]_i_1_n_0\
    );
\counter_value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005515AA00004000"
    )
        port map (
      I0 => state(0),
      I1 => counter_value(1),
      I2 => counter_value(0),
      I3 => state(1),
      I4 => state(2),
      I5 => counter_value(2),
      O => \counter_value[2]_i_1_n_0\
    );
\counter_value[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"051A0040"
    )
        port map (
      I0 => state(0),
      I1 => \counter_value[4]_i_2_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => counter_value(3),
      O => \counter_value[3]_i_1_n_0\
    );
\counter_value[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005515AA00004000"
    )
        port map (
      I0 => state(0),
      I1 => counter_value(3),
      I2 => \counter_value[4]_i_2_n_0\,
      I3 => state(1),
      I4 => state(2),
      I5 => counter_value(4),
      O => \counter_value[4]_i_1_n_0\
    );
\counter_value[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter_value(2),
      I1 => counter_value(0),
      I2 => counter_value(1),
      O => \counter_value[4]_i_2_n_0\
    );
\counter_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \counter_value[0]_i_1_n_0\,
      Q => counter_value(0),
      R => fifo_full_d2_i_1_n_0
    );
\counter_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \counter_value[1]_i_1_n_0\,
      Q => counter_value(1),
      R => fifo_full_d2_i_1_n_0
    );
\counter_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \counter_value[2]_i_1_n_0\,
      Q => counter_value(2),
      R => fifo_full_d2_i_1_n_0
    );
\counter_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \counter_value[3]_i_1_n_0\,
      Q => counter_value(3),
      R => fifo_full_d2_i_1_n_0
    );
\counter_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \counter_value[4]_i_1_n_0\,
      Q => counter_value(4),
      R => fifo_full_d2_i_1_n_0
    );
\ctl_tx_pause_req_s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F604"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \^o_ctl_tx_pause_req\(8),
      O => \ctl_tx_pause_req_s[8]_i_1_n_0\
    );
\ctl_tx_pause_req_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \ctl_tx_pause_req_s[8]_i_1_n_0\,
      Q => \^o_ctl_tx_pause_req\(8),
      R => fifo_full_d2_i_1_n_0
    );
ctl_tx_resend_pause_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE04"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \^o_ctl_tx_resend_pause\,
      O => ctl_tx_resend_pause_s_i_1_n_0
    );
ctl_tx_resend_pause_s_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => ctl_tx_resend_pause_s_i_1_n_0,
      Q => \^o_ctl_tx_resend_pause\,
      R => fifo_full_d2_i_1_n_0
    );
enable_counter_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04EA"
    )
        port map (
      I0 => state(0),
      I1 => enable_counter,
      I2 => state(2),
      I3 => state(1),
      O => enable_counter_i_1_n_0
    );
enable_counter_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => enable_counter_i_1_n_0,
      Q => enable_counter,
      R => fifo_full_d2_i_1_n_0
    );
fifo_full_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => i_fifo_full,
      Q => fifo_full_d1,
      R => fifo_full_d2_i_1_n_0
    );
fifo_full_d2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => fifo_full_d2_i_1_n_0
    );
fifo_full_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => fifo_full_d1,
      Q => \^o_fifo_full_ila\,
      R => fifo_full_d2_i_1_n_0
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(7)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(6)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(5)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(4)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(3)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(2)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(1)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \^o_ctl_tx_pause_req\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_mac_flow_control_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ipsec_bd_mac_flow_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ipsec_bd_mac_flow_control_0_0 : entity is "ipsec_bd_mac_flow_control_0_0,mac_flow_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ipsec_bd_mac_flow_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ipsec_bd_mac_flow_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ipsec_bd_mac_flow_control_0_0 : entity is "mac_flow_control,Vivado 2020.1_AR75245";
end ipsec_bd_mac_flow_control_0_0;

architecture STRUCTURE of ipsec_bd_mac_flow_control_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axi_aclk : signal is "XIL_INTERFACENAME m00_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.ipsec_bd_mac_flow_control_0_0_mac_flow_control
     port map (
      i_fifo_full => i_fifo_full,
      i_stat_tx_pause_valid(8 downto 0) => i_stat_tx_pause_valid(8 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      o_ctl_tx_pause_req(8 downto 0) => o_ctl_tx_pause_req(8 downto 0),
      o_ctl_tx_resend_pause => o_ctl_tx_resend_pause,
      o_fifo_full_ila => o_fifo_full_ila,
      s00_axi_aclk => '0',
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
