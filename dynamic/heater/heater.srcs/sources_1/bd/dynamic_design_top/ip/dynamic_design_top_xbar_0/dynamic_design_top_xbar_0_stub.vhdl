-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep 14 08:03:12 2021
-- Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/kestera/projects/DFX/U25N_DFX/dynamic/heater/heater.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_xbar_0/dynamic_design_top_xbar_0_stub.vhdl
-- Design      : dynamic_design_top_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dynamic_design_top_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end dynamic_design_top_xbar_0;

architecture stub of dynamic_design_top_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid[0:0],s_axis_tready[0:0],s_axis_tdata[511:0],s_axis_tkeep[63:0],s_axis_tlast[0:0],s_axis_tdest[1:0],m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[1023:0],m_axis_tkeep[127:0],m_axis_tlast[1:0],m_axis_tdest[3:0],s_decode_err[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_switch_v1_1_21_axis_switch,Vivado 2020.1";
begin
end;
