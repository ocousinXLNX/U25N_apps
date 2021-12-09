-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:10:08 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_flow_control_0_0/ipsec_bd_mac_flow_control_0_0_stub.vhdl
-- Design      : ipsec_bd_mac_flow_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_mac_flow_control_0_0 is
  Port ( 
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC;
    i_stat_tx_pause_valid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    o_fifo_full_ila : out STD_LOGIC;
    o_ctl_tx_pause_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    o_ctl_tx_resend_pause : out STD_LOGIC
  );

end ipsec_bd_mac_flow_control_0_0;

architecture stub of ipsec_bd_mac_flow_control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axi_aclk,m00_axi_aclk,s00_axi_aresetn,i_fifo_full,i_stat_tx_pause_valid[8:0],o_fifo_full_ila,o_ctl_tx_pause_req[8:0],o_ctl_tx_resend_pause";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mac_flow_control,Vivado 2020.1_AR75245";
begin
end;
