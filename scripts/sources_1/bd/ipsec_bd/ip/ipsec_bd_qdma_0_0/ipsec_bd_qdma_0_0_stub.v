// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:37:23 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_qdma_0_0/ipsec_bd_qdma_0_0_stub.v
// Design      : ipsec_bd_qdma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ipsec_bd_qdma_0_0_core_top,Vivado 2020.1_AR75245" *)
module ipsec_bd_qdma_0_0(sys_clk, sys_clk_gt, sys_rst_n, user_lnk_up, 
  pci_exp_txp, pci_exp_txn, pci_exp_rxp, pci_exp_rxn, axi_aclk, axi_aresetn, usr_irq_in_vld, 
  usr_irq_in_vec, usr_irq_in_fnc, usr_irq_out_ack, usr_irq_out_fail, tm_dsc_sts_vld, 
  tm_dsc_sts_port_id, tm_dsc_sts_qen, tm_dsc_sts_byp, tm_dsc_sts_dir, tm_dsc_sts_mm, 
  tm_dsc_sts_error, tm_dsc_sts_qid, tm_dsc_sts_avl, tm_dsc_sts_qinv, tm_dsc_sts_irq_arm, 
  tm_dsc_sts_rdy, tm_dsc_sts_pidx, dsc_crdt_in_crdt, dsc_crdt_in_qid, dsc_crdt_in_dir, 
  dsc_crdt_in_fence, dsc_crdt_in_vld, dsc_crdt_in_rdy, m_axil_awaddr, m_axil_awuser, 
  m_axil_awprot, m_axil_awvalid, m_axil_awready, m_axil_wdata, m_axil_wstrb, m_axil_wvalid, 
  m_axil_wready, m_axil_bvalid, m_axil_bresp, m_axil_bready, m_axil_araddr, m_axil_aruser, 
  m_axil_arprot, m_axil_arvalid, m_axil_arready, m_axil_rdata, m_axil_rresp, m_axil_rvalid, 
  m_axil_rready, m_axis_h2c_tdata, m_axis_h2c_tcrc, m_axis_h2c_tuser_qid, 
  m_axis_h2c_tuser_port_id, m_axis_h2c_tuser_err, m_axis_h2c_tuser_mdata, 
  m_axis_h2c_tuser_mty, m_axis_h2c_tuser_zero_byte, m_axis_h2c_tvalid, m_axis_h2c_tlast, 
  m_axis_h2c_tready, s_axis_c2h_tdata, s_axis_c2h_tcrc, s_axis_c2h_ctrl_marker, 
  s_axis_c2h_ctrl_port_id, s_axis_c2h_ctrl_ecc, s_axis_c2h_ctrl_len, s_axis_c2h_ctrl_qid, 
  s_axis_c2h_ctrl_has_cmpt, s_axis_c2h_mty, s_axis_c2h_tvalid, s_axis_c2h_tlast, 
  s_axis_c2h_tready, s_axis_c2h_cmpt_tdata, s_axis_c2h_cmpt_size, s_axis_c2h_cmpt_dpar, 
  s_axis_c2h_cmpt_tvalid, s_axis_c2h_cmpt_ctrl_qid, s_axis_c2h_cmpt_ctrl_cmpt_type, 
  s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id, s_axis_c2h_cmpt_ctrl_port_id, 
  s_axis_c2h_cmpt_ctrl_marker, s_axis_c2h_cmpt_ctrl_user_trig, 
  s_axis_c2h_cmpt_ctrl_col_idx, s_axis_c2h_cmpt_ctrl_err_idx, s_axis_c2h_cmpt_tready, 
  axis_c2h_status_drop, axis_c2h_status_valid, axis_c2h_status_cmp, 
  axis_c2h_status_error, axis_c2h_status_last, axis_c2h_status_qid, axis_c2h_dmawr_cmp, 
  soft_reset_n, phy_ready, qsts_out_op, qsts_out_data, qsts_out_port_id, qsts_out_qid, 
  qsts_out_vld, qsts_out_rdy)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_clk_gt,sys_rst_n,user_lnk_up,pci_exp_txp[7:0],pci_exp_txn[7:0],pci_exp_rxp[7:0],pci_exp_rxn[7:0],axi_aclk,axi_aresetn,usr_irq_in_vld,usr_irq_in_vec[10:0],usr_irq_in_fnc[7:0],usr_irq_out_ack,usr_irq_out_fail,tm_dsc_sts_vld,tm_dsc_sts_port_id[2:0],tm_dsc_sts_qen,tm_dsc_sts_byp,tm_dsc_sts_dir,tm_dsc_sts_mm,tm_dsc_sts_error,tm_dsc_sts_qid[10:0],tm_dsc_sts_avl[15:0],tm_dsc_sts_qinv,tm_dsc_sts_irq_arm,tm_dsc_sts_rdy,tm_dsc_sts_pidx[15:0],dsc_crdt_in_crdt[15:0],dsc_crdt_in_qid[10:0],dsc_crdt_in_dir,dsc_crdt_in_fence,dsc_crdt_in_vld,dsc_crdt_in_rdy,m_axil_awaddr[31:0],m_axil_awuser[54:0],m_axil_awprot[2:0],m_axil_awvalid,m_axil_awready,m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_wvalid,m_axil_wready,m_axil_bvalid,m_axil_bresp[1:0],m_axil_bready,m_axil_araddr[31:0],m_axil_aruser[54:0],m_axil_arprot[2:0],m_axil_arvalid,m_axil_arready,m_axil_rdata[31:0],m_axil_rresp[1:0],m_axil_rvalid,m_axil_rready,m_axis_h2c_tdata[127:0],m_axis_h2c_tcrc[31:0],m_axis_h2c_tuser_qid[10:0],m_axis_h2c_tuser_port_id[2:0],m_axis_h2c_tuser_err,m_axis_h2c_tuser_mdata[31:0],m_axis_h2c_tuser_mty[5:0],m_axis_h2c_tuser_zero_byte,m_axis_h2c_tvalid,m_axis_h2c_tlast,m_axis_h2c_tready,s_axis_c2h_tdata[127:0],s_axis_c2h_tcrc[31:0],s_axis_c2h_ctrl_marker,s_axis_c2h_ctrl_port_id[2:0],s_axis_c2h_ctrl_ecc[6:0],s_axis_c2h_ctrl_len[15:0],s_axis_c2h_ctrl_qid[10:0],s_axis_c2h_ctrl_has_cmpt,s_axis_c2h_mty[5:0],s_axis_c2h_tvalid,s_axis_c2h_tlast,s_axis_c2h_tready,s_axis_c2h_cmpt_tdata[511:0],s_axis_c2h_cmpt_size[1:0],s_axis_c2h_cmpt_dpar[15:0],s_axis_c2h_cmpt_tvalid,s_axis_c2h_cmpt_ctrl_qid[10:0],s_axis_c2h_cmpt_ctrl_cmpt_type[1:0],s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id[15:0],s_axis_c2h_cmpt_ctrl_port_id[2:0],s_axis_c2h_cmpt_ctrl_marker,s_axis_c2h_cmpt_ctrl_user_trig,s_axis_c2h_cmpt_ctrl_col_idx[2:0],s_axis_c2h_cmpt_ctrl_err_idx[2:0],s_axis_c2h_cmpt_tready,axis_c2h_status_drop,axis_c2h_status_valid,axis_c2h_status_cmp,axis_c2h_status_error,axis_c2h_status_last,axis_c2h_status_qid[10:0],axis_c2h_dmawr_cmp,soft_reset_n,phy_ready,qsts_out_op[7:0],qsts_out_data[63:0],qsts_out_port_id[2:0],qsts_out_qid[12:0],qsts_out_vld,qsts_out_rdy" */;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;
  output user_lnk_up;
  output [7:0]pci_exp_txp;
  output [7:0]pci_exp_txn;
  input [7:0]pci_exp_rxp;
  input [7:0]pci_exp_rxn;
  output axi_aclk;
  output axi_aresetn;
  input usr_irq_in_vld;
  input [10:0]usr_irq_in_vec;
  input [7:0]usr_irq_in_fnc;
  output usr_irq_out_ack;
  output usr_irq_out_fail;
  output tm_dsc_sts_vld;
  output [2:0]tm_dsc_sts_port_id;
  output tm_dsc_sts_qen;
  output tm_dsc_sts_byp;
  output tm_dsc_sts_dir;
  output tm_dsc_sts_mm;
  output tm_dsc_sts_error;
  output [10:0]tm_dsc_sts_qid;
  output [15:0]tm_dsc_sts_avl;
  output tm_dsc_sts_qinv;
  output tm_dsc_sts_irq_arm;
  input tm_dsc_sts_rdy;
  output [15:0]tm_dsc_sts_pidx;
  input [15:0]dsc_crdt_in_crdt;
  input [10:0]dsc_crdt_in_qid;
  input dsc_crdt_in_dir;
  input dsc_crdt_in_fence;
  input dsc_crdt_in_vld;
  output dsc_crdt_in_rdy;
  output [31:0]m_axil_awaddr;
  output [54:0]m_axil_awuser;
  output [2:0]m_axil_awprot;
  output m_axil_awvalid;
  input m_axil_awready;
  output [31:0]m_axil_wdata;
  output [3:0]m_axil_wstrb;
  output m_axil_wvalid;
  input m_axil_wready;
  input m_axil_bvalid;
  input [1:0]m_axil_bresp;
  output m_axil_bready;
  output [31:0]m_axil_araddr;
  output [54:0]m_axil_aruser;
  output [2:0]m_axil_arprot;
  output m_axil_arvalid;
  input m_axil_arready;
  input [31:0]m_axil_rdata;
  input [1:0]m_axil_rresp;
  input m_axil_rvalid;
  output m_axil_rready;
  output [127:0]m_axis_h2c_tdata;
  output [31:0]m_axis_h2c_tcrc;
  output [10:0]m_axis_h2c_tuser_qid;
  output [2:0]m_axis_h2c_tuser_port_id;
  output m_axis_h2c_tuser_err;
  output [31:0]m_axis_h2c_tuser_mdata;
  output [5:0]m_axis_h2c_tuser_mty;
  output m_axis_h2c_tuser_zero_byte;
  output m_axis_h2c_tvalid;
  output m_axis_h2c_tlast;
  input m_axis_h2c_tready;
  input [127:0]s_axis_c2h_tdata;
  input [31:0]s_axis_c2h_tcrc;
  input s_axis_c2h_ctrl_marker;
  input [2:0]s_axis_c2h_ctrl_port_id;
  input [6:0]s_axis_c2h_ctrl_ecc;
  input [15:0]s_axis_c2h_ctrl_len;
  input [10:0]s_axis_c2h_ctrl_qid;
  input s_axis_c2h_ctrl_has_cmpt;
  input [5:0]s_axis_c2h_mty;
  input s_axis_c2h_tvalid;
  input s_axis_c2h_tlast;
  output s_axis_c2h_tready;
  input [511:0]s_axis_c2h_cmpt_tdata;
  input [1:0]s_axis_c2h_cmpt_size;
  input [15:0]s_axis_c2h_cmpt_dpar;
  input s_axis_c2h_cmpt_tvalid;
  input [10:0]s_axis_c2h_cmpt_ctrl_qid;
  input [1:0]s_axis_c2h_cmpt_ctrl_cmpt_type;
  input [15:0]s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id;
  input [2:0]s_axis_c2h_cmpt_ctrl_port_id;
  input s_axis_c2h_cmpt_ctrl_marker;
  input s_axis_c2h_cmpt_ctrl_user_trig;
  input [2:0]s_axis_c2h_cmpt_ctrl_col_idx;
  input [2:0]s_axis_c2h_cmpt_ctrl_err_idx;
  output s_axis_c2h_cmpt_tready;
  output axis_c2h_status_drop;
  output axis_c2h_status_valid;
  output axis_c2h_status_cmp;
  output axis_c2h_status_error;
  output axis_c2h_status_last;
  output [10:0]axis_c2h_status_qid;
  output axis_c2h_dmawr_cmp;
  input soft_reset_n;
  output phy_ready;
  output [7:0]qsts_out_op;
  output [63:0]qsts_out_data;
  output [2:0]qsts_out_port_id;
  output [12:0]qsts_out_qid;
  output qsts_out_vld;
  input qsts_out_rdy;
endmodule
