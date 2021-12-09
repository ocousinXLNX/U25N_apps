-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep 22 10:59:25 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top ipsec_bd_util_vector_logic_1_5 -prefix
--               ipsec_bd_util_vector_logic_1_5_ ipsec_bd_util_vector_logic_8_0_stub.vhdl
-- Design      : ipsec_bd_util_vector_logic_8_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_util_vector_logic_1_5 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ipsec_bd_util_vector_logic_1_5;

architecture stub of ipsec_bd_util_vector_logic_1_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Op2[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1_AR75245";
begin
end;
