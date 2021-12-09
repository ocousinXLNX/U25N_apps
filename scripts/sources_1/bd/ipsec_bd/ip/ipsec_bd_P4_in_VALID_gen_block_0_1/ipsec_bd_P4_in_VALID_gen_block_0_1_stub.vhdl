-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep 15 13:05:40 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_0C/BD/ipsec_bd/ip/ipsec_bd_P4_in_VALID_gen_block_0_1/ipsec_bd_P4_in_VALID_gen_block_0_1_stub.vhdl
-- Design      : ipsec_bd_P4_in_VALID_gen_block_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_P4_in_VALID_gen_block_0_1 is
  Port ( 
    s_axis_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 580 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 580 downto 0 );
    Tuser_valid_out : out STD_LOGIC;
    Tdest_valid_out : out STD_LOGIC
  );

end ipsec_bd_P4_in_VALID_gen_block_0_1;

architecture stub of ipsec_bd_P4_in_VALID_gen_block_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_aclk,m_axis_aclk,s_axis_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tdest[580:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tdest[580:0],Tuser_valid_out,Tdest_valid_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "P4_in_VALID_gen_block,Vivado 2020.1_AR75245";
begin
end;
