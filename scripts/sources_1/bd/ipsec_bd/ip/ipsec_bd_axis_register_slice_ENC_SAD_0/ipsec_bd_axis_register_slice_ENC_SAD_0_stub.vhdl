-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Sep 24 17:11:51 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top ipsec_bd_axis_register_slice_ENC_SAD_0 -prefix
--               ipsec_bd_axis_register_slice_ENC_SAD_0_ ipsec_bd_axis_register_slice_ENC_SAD_0_stub.vhdl
-- Design      : ipsec_bd_axis_register_slice_ENC_SAD_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_axis_register_slice_ENC_SAD_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 580 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 580 downto 0 )
  );

end ipsec_bd_axis_register_slice_ENC_SAD_0;

architecture stub of ipsec_bd_axis_register_slice_ENC_SAD_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tlast,s_axis_tuser[580:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tlast,m_axis_tuser[580:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1_AR75245";
begin
end;
