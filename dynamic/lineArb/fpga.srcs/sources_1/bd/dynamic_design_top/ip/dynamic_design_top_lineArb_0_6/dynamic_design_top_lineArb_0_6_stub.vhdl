-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Sep 22 09:47:23 2021
-- Host        : xukengsae01 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/kestera/U25N/u25n_dfx/dynamic/lineArb/fpga.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_lineArb_0_6/dynamic_design_top_lineArb_0_6_stub.vhdl
-- Design      : dynamic_design_top_lineArb_0_6
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dynamic_design_top_lineArb_0_6 is
  Port ( 
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_0_TVALID : in STD_LOGIC;
    in_0_TREADY : out STD_LOGIC;
    in_0_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    in_0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_0_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_0_TSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_1_TVALID : in STD_LOGIC;
    in_1_TREADY : out STD_LOGIC;
    in_1_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    in_1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_1_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_1_TSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_2_TVALID : in STD_LOGIC;
    in_2_TREADY : out STD_LOGIC;
    in_2_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    in_2_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_2_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_2_TSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_3_TVALID : in STD_LOGIC;
    in_3_TREADY : out STD_LOGIC;
    in_3_TDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    in_3_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_3_TKEEP : in STD_LOGIC_VECTOR ( 63 downto 0 );
    in_3_TSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    out_0_TVALID : out STD_LOGIC;
    out_0_TREADY : in STD_LOGIC;
    out_0_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    out_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_0_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_0_TSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_1_TVALID : out STD_LOGIC;
    out_1_TREADY : in STD_LOGIC;
    out_1_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    out_1_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_1_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_1_TSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_2_TVALID : out STD_LOGIC;
    out_2_TREADY : in STD_LOGIC;
    out_2_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    out_2_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_2_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_2_TSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_3_TVALID : out STD_LOGIC;
    out_3_TREADY : in STD_LOGIC;
    out_3_TDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    out_3_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_3_TKEEP : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_3_TSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end dynamic_design_top_lineArb_0_6;

architecture stub of dynamic_design_top_lineArb_0_6 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_AWADDR[11:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[11:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,in_0_TVALID,in_0_TREADY,in_0_TDATA[511:0],in_0_TLAST[0:0],in_0_TKEEP[63:0],in_0_TSTRB[63:0],in_1_TVALID,in_1_TREADY,in_1_TDATA[511:0],in_1_TLAST[0:0],in_1_TKEEP[63:0],in_1_TSTRB[63:0],in_2_TVALID,in_2_TREADY,in_2_TDATA[511:0],in_2_TLAST[0:0],in_2_TKEEP[63:0],in_2_TSTRB[63:0],in_3_TVALID,in_3_TREADY,in_3_TDATA[511:0],in_3_TLAST[0:0],in_3_TKEEP[63:0],in_3_TSTRB[63:0],out_0_TVALID,out_0_TREADY,out_0_TDATA[511:0],out_0_TLAST[0:0],out_0_TKEEP[63:0],out_0_TSTRB[63:0],out_1_TVALID,out_1_TREADY,out_1_TDATA[511:0],out_1_TLAST[0:0],out_1_TKEEP[63:0],out_1_TSTRB[63:0],out_2_TVALID,out_2_TREADY,out_2_TDATA[511:0],out_2_TLAST[0:0],out_2_TKEEP[63:0],out_2_TSTRB[63:0],out_3_TVALID,out_3_TREADY,out_3_TDATA[511:0],out_3_TLAST[0:0],out_3_TKEEP[63:0],out_3_TSTRB[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lineArb,Vivado 2020.1";
begin
end;
