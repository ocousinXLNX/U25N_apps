-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Sep  8 14:37:23 2020
-- Host        : newton running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_qdma_0_0/ipsec_bd_qdma_0_0_stub.vhdl
-- Design      : ipsec_bd_qdma_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu25-ffvc1760-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ipsec_bd_qdma_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    sys_clk_gt : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    user_lnk_up : out STD_LOGIC;
    pci_exp_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_aclk : out STD_LOGIC;
    axi_aresetn : out STD_LOGIC;
    usr_irq_in_vld : in STD_LOGIC;
    usr_irq_in_vec : in STD_LOGIC_VECTOR ( 10 downto 0 );
    usr_irq_in_fnc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    usr_irq_out_ack : out STD_LOGIC;
    usr_irq_out_fail : out STD_LOGIC;
    tm_dsc_sts_vld : out STD_LOGIC;
    tm_dsc_sts_port_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tm_dsc_sts_qen : out STD_LOGIC;
    tm_dsc_sts_byp : out STD_LOGIC;
    tm_dsc_sts_dir : out STD_LOGIC;
    tm_dsc_sts_mm : out STD_LOGIC;
    tm_dsc_sts_error : out STD_LOGIC;
    tm_dsc_sts_qid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    tm_dsc_sts_avl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tm_dsc_sts_qinv : out STD_LOGIC;
    tm_dsc_sts_irq_arm : out STD_LOGIC;
    tm_dsc_sts_rdy : in STD_LOGIC;
    tm_dsc_sts_pidx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dsc_crdt_in_crdt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dsc_crdt_in_qid : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dsc_crdt_in_dir : in STD_LOGIC;
    dsc_crdt_in_fence : in STD_LOGIC;
    dsc_crdt_in_vld : in STD_LOGIC;
    dsc_crdt_in_rdy : out STD_LOGIC;
    m_axil_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_awuser : out STD_LOGIC_VECTOR ( 54 downto 0 );
    m_axil_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_awvalid : out STD_LOGIC;
    m_axil_awready : in STD_LOGIC;
    m_axil_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axil_wvalid : out STD_LOGIC;
    m_axil_wready : in STD_LOGIC;
    m_axil_bvalid : in STD_LOGIC;
    m_axil_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_bready : out STD_LOGIC;
    m_axil_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_aruser : out STD_LOGIC_VECTOR ( 54 downto 0 );
    m_axil_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_arvalid : out STD_LOGIC;
    m_axil_arready : in STD_LOGIC;
    m_axil_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_rvalid : in STD_LOGIC;
    m_axil_rready : out STD_LOGIC;
    m_axis_h2c_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_h2c_tcrc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_h2c_tuser_qid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axis_h2c_tuser_port_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_h2c_tuser_err : out STD_LOGIC;
    m_axis_h2c_tuser_mdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_h2c_tuser_mty : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_h2c_tuser_zero_byte : out STD_LOGIC;
    m_axis_h2c_tvalid : out STD_LOGIC;
    m_axis_h2c_tlast : out STD_LOGIC;
    m_axis_h2c_tready : in STD_LOGIC;
    s_axis_c2h_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_c2h_tcrc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_c2h_ctrl_marker : in STD_LOGIC;
    s_axis_c2h_ctrl_port_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_c2h_ctrl_ecc : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_c2h_ctrl_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_c2h_ctrl_qid : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_c2h_ctrl_has_cmpt : in STD_LOGIC;
    s_axis_c2h_mty : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_c2h_tvalid : in STD_LOGIC;
    s_axis_c2h_tlast : in STD_LOGIC;
    s_axis_c2h_tready : out STD_LOGIC;
    s_axis_c2h_cmpt_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_c2h_cmpt_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_c2h_cmpt_dpar : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_c2h_cmpt_tvalid : in STD_LOGIC;
    s_axis_c2h_cmpt_ctrl_qid : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_c2h_cmpt_ctrl_cmpt_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_c2h_cmpt_ctrl_port_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_c2h_cmpt_ctrl_marker : in STD_LOGIC;
    s_axis_c2h_cmpt_ctrl_user_trig : in STD_LOGIC;
    s_axis_c2h_cmpt_ctrl_col_idx : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_c2h_cmpt_ctrl_err_idx : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_c2h_cmpt_tready : out STD_LOGIC;
    axis_c2h_status_drop : out STD_LOGIC;
    axis_c2h_status_valid : out STD_LOGIC;
    axis_c2h_status_cmp : out STD_LOGIC;
    axis_c2h_status_error : out STD_LOGIC;
    axis_c2h_status_last : out STD_LOGIC;
    axis_c2h_status_qid : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_c2h_dmawr_cmp : out STD_LOGIC;
    soft_reset_n : in STD_LOGIC;
    phy_ready : out STD_LOGIC;
    qsts_out_op : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qsts_out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    qsts_out_port_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    qsts_out_qid : out STD_LOGIC_VECTOR ( 12 downto 0 );
    qsts_out_vld : out STD_LOGIC;
    qsts_out_rdy : in STD_LOGIC
  );

end ipsec_bd_qdma_0_0;

architecture stub of ipsec_bd_qdma_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_clk_gt,sys_rst_n,user_lnk_up,pci_exp_txp[7:0],pci_exp_txn[7:0],pci_exp_rxp[7:0],pci_exp_rxn[7:0],axi_aclk,axi_aresetn,usr_irq_in_vld,usr_irq_in_vec[10:0],usr_irq_in_fnc[7:0],usr_irq_out_ack,usr_irq_out_fail,tm_dsc_sts_vld,tm_dsc_sts_port_id[2:0],tm_dsc_sts_qen,tm_dsc_sts_byp,tm_dsc_sts_dir,tm_dsc_sts_mm,tm_dsc_sts_error,tm_dsc_sts_qid[10:0],tm_dsc_sts_avl[15:0],tm_dsc_sts_qinv,tm_dsc_sts_irq_arm,tm_dsc_sts_rdy,tm_dsc_sts_pidx[15:0],dsc_crdt_in_crdt[15:0],dsc_crdt_in_qid[10:0],dsc_crdt_in_dir,dsc_crdt_in_fence,dsc_crdt_in_vld,dsc_crdt_in_rdy,m_axil_awaddr[31:0],m_axil_awuser[54:0],m_axil_awprot[2:0],m_axil_awvalid,m_axil_awready,m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_wvalid,m_axil_wready,m_axil_bvalid,m_axil_bresp[1:0],m_axil_bready,m_axil_araddr[31:0],m_axil_aruser[54:0],m_axil_arprot[2:0],m_axil_arvalid,m_axil_arready,m_axil_rdata[31:0],m_axil_rresp[1:0],m_axil_rvalid,m_axil_rready,m_axis_h2c_tdata[127:0],m_axis_h2c_tcrc[31:0],m_axis_h2c_tuser_qid[10:0],m_axis_h2c_tuser_port_id[2:0],m_axis_h2c_tuser_err,m_axis_h2c_tuser_mdata[31:0],m_axis_h2c_tuser_mty[5:0],m_axis_h2c_tuser_zero_byte,m_axis_h2c_tvalid,m_axis_h2c_tlast,m_axis_h2c_tready,s_axis_c2h_tdata[127:0],s_axis_c2h_tcrc[31:0],s_axis_c2h_ctrl_marker,s_axis_c2h_ctrl_port_id[2:0],s_axis_c2h_ctrl_ecc[6:0],s_axis_c2h_ctrl_len[15:0],s_axis_c2h_ctrl_qid[10:0],s_axis_c2h_ctrl_has_cmpt,s_axis_c2h_mty[5:0],s_axis_c2h_tvalid,s_axis_c2h_tlast,s_axis_c2h_tready,s_axis_c2h_cmpt_tdata[511:0],s_axis_c2h_cmpt_size[1:0],s_axis_c2h_cmpt_dpar[15:0],s_axis_c2h_cmpt_tvalid,s_axis_c2h_cmpt_ctrl_qid[10:0],s_axis_c2h_cmpt_ctrl_cmpt_type[1:0],s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id[15:0],s_axis_c2h_cmpt_ctrl_port_id[2:0],s_axis_c2h_cmpt_ctrl_marker,s_axis_c2h_cmpt_ctrl_user_trig,s_axis_c2h_cmpt_ctrl_col_idx[2:0],s_axis_c2h_cmpt_ctrl_err_idx[2:0],s_axis_c2h_cmpt_tready,axis_c2h_status_drop,axis_c2h_status_valid,axis_c2h_status_cmp,axis_c2h_status_error,axis_c2h_status_last,axis_c2h_status_qid[10:0],axis_c2h_dmawr_cmp,soft_reset_n,phy_ready,qsts_out_op[7:0],qsts_out_data[63:0],qsts_out_port_id[2:0],qsts_out_qid[12:0],qsts_out_vld,qsts_out_rdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ipsec_bd_qdma_0_0_core_top,Vivado 2020.1_AR75245";
begin
end;
