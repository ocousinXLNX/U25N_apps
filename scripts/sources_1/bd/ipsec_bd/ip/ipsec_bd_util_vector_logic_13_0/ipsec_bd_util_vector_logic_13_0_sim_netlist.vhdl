-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Sep 10 11:23:58 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top ipsec_bd_util_vector_logic_13_0 -prefix
--               ipsec_bd_util_vector_logic_13_0_ ipsec_bd_util_vector_logic_1_4_sim_netlist.vhdl
-- Design      : ipsec_bd_util_vector_logic_1_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_util_vector_logic_13_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ipsec_bd_util_vector_logic_13_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ipsec_bd_util_vector_logic_13_0 : entity is "ipsec_bd_util_vector_logic_1_4,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ipsec_bd_util_vector_logic_13_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ipsec_bd_util_vector_logic_13_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1_AR75245";
end ipsec_bd_util_vector_logic_13_0;

architecture STRUCTURE of ipsec_bd_util_vector_logic_13_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
