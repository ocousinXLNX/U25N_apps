-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep 22 10:59:25 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top ipsec_bd_util_vector_logic_8_2 -prefix
--               ipsec_bd_util_vector_logic_8_2_ ipsec_bd_util_vector_logic_8_0_sim_netlist.vhdl
-- Design      : ipsec_bd_util_vector_logic_8_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ipsec_bd_util_vector_logic_8_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ipsec_bd_util_vector_logic_8_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ipsec_bd_util_vector_logic_8_2 : entity is "ipsec_bd_util_vector_logic_8_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ipsec_bd_util_vector_logic_8_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ipsec_bd_util_vector_logic_8_2 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1_AR75245";
end ipsec_bd_util_vector_logic_8_2;

architecture STRUCTURE of ipsec_bd_util_vector_logic_8_2 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
