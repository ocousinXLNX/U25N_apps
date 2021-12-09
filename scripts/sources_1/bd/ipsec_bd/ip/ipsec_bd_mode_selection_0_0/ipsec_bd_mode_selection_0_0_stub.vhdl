-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:27:11 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mode_selection_0_0/ipsec_bd_mode_selection_0_0_stub.vhdl
-- Design      : ipsec_bd_mode_selection_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_mode_selection_0_0 is
  Port ( 
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

end ipsec_bd_mode_selection_0_0;

architecture stub of ipsec_bd_mode_selection_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,mode_select_i,s_axis_tdata[127:0],s_axis_tkeep[15:0],s_axis_tdest[10:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m0_axis_tdata[127:0],m0_axis_tkeep[15:0],m0_axis_tdest[10:0],m0_axis_tvalid,m0_axis_tlast,m0_axis_tready,m1_axis_tdata[127:0],m1_axis_tkeep[15:0],m1_axis_tdest[10:0],m1_axis_tvalid,m1_axis_tlast,m1_axis_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mode_selection,Vivado 2020.1_AR75245";
begin
end;
