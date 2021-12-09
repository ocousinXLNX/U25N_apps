-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Sep 30 14:03:06 2021
-- Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/kestera/projects/DFX/U25N_DFX/dynamic/p4_example/p4_example.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_reset_latch_dyn_0_0/dynamic_design_top_reset_latch_dyn_0_0_stub.vhdl
-- Design      : dynamic_design_top_reset_latch_dyn_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dynamic_design_top_reset_latch_dyn_0_0 is
  Port ( 
    clk_100M_in : in STD_LOGIC;
    clk_200M_in : in STD_LOGIC;
    clk_400M_in : in STD_LOGIC;
    clk_250M_in : in STD_LOGIC;
    resetn_in : in STD_LOGIC;
    rstn_100M : out STD_LOGIC;
    rstn_200M : out STD_LOGIC;
    rstn_250M : out STD_LOGIC;
    rstn_400M : out STD_LOGIC
  );

end dynamic_design_top_reset_latch_dyn_0_0;

architecture stub of dynamic_design_top_reset_latch_dyn_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100M_in,clk_200M_in,clk_400M_in,clk_250M_in,resetn_in,rstn_100M,rstn_200M,rstn_250M,rstn_400M";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "reset_latch_dyn,Vivado 2020.1";
begin
end;
