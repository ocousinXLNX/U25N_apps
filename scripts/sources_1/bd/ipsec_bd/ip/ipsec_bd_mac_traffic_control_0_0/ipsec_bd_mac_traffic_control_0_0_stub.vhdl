-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:08:25 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_traffic_control_0_0/ipsec_bd_mac_traffic_control_0_0_stub.vhdl
-- Design      : ipsec_bd_mac_traffic_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_mac_traffic_control_0_0 is
  Port ( 
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

end ipsec_bd_mac_traffic_control_0_0;

architecture stub of ipsec_bd_mac_traffic_control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,s_axis_TData[63:0],s_axis_TKeep[7:0],s_axis_TValid,s_axis_TReady,s_axis_TLast,s_axis_TDest[10:0],m0_axis_TData[63:0],m0_axis_TKeep[7:0],m0_axis_TValid,m0_axis_TReady,m0_axis_TLast,m0_axis_TDest[10:0],m1_axis_TData[63:0],m1_axis_TKeep[7:0],m1_axis_TValid,m1_axis_TReady,m1_axis_TLast,m1_axis_TDest[10:0],fifo_prog_full";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mac_traffic_control,Vivado 2020.1_AR75245";
begin
end;
