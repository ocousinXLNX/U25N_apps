-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep 14 08:03:05 2021
-- Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/kestera/projects/DFX/U25N_DFX/dynamic/heater/heater.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_reset_latch_dyn_0_0/dynamic_design_top_reset_latch_dyn_0_0_sim_netlist.vhdl
-- Design      : dynamic_design_top_reset_latch_dyn_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn is
  port (
    rstn_100M : out STD_LOGIC;
    rstn_200M : out STD_LOGIC;
    rstn_250M : out STD_LOGIC;
    rstn_400M : out STD_LOGIC;
    resetn_in : in STD_LOGIC;
    clk_100M_in : in STD_LOGIC;
    clk_200M_in : in STD_LOGIC;
    clk_250M_in : in STD_LOGIC;
    clk_400M_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn : entity is "reset_latch_dyn";
end dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn;

architecture STRUCTURE of dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn is
begin
rstn_100M_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_100M_in,
      CE => '1',
      D => resetn_in,
      Q => rstn_100M,
      R => '0'
    );
rstn_200M_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_200M_in,
      CE => '1',
      D => resetn_in,
      Q => rstn_200M,
      R => '0'
    );
rstn_250M_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_250M_in,
      CE => '1',
      D => resetn_in,
      Q => rstn_250M,
      R => '0'
    );
rstn_400M_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_400M_in,
      CE => '1',
      D => resetn_in,
      Q => rstn_400M,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_design_top_reset_latch_dyn_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dynamic_design_top_reset_latch_dyn_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dynamic_design_top_reset_latch_dyn_0_0 : entity is "dynamic_design_top_reset_latch_dyn_0_0,reset_latch_dyn,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dynamic_design_top_reset_latch_dyn_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dynamic_design_top_reset_latch_dyn_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dynamic_design_top_reset_latch_dyn_0_0 : entity is "reset_latch_dyn,Vivado 2020.1";
end dynamic_design_top_reset_latch_dyn_0_0;

architecture STRUCTURE of dynamic_design_top_reset_latch_dyn_0_0 is
begin
inst: entity work.dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn
     port map (
      clk_100M_in => clk_100M_in,
      clk_200M_in => clk_200M_in,
      clk_250M_in => clk_250M_in,
      clk_400M_in => clk_400M_in,
      resetn_in => resetn_in,
      rstn_100M => rstn_100M,
      rstn_200M => rstn_200M,
      rstn_250M => rstn_250M,
      rstn_400M => rstn_400M
    );
end STRUCTURE;
