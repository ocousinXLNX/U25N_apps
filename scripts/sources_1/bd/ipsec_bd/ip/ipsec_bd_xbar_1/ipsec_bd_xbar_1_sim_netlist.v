// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Sep 10 15:32:26 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_0B/BD/ipsec_bd/ip/ipsec_bd_xbar_1/ipsec_bd_xbar_1_sim_netlist.v
// Design      : ipsec_bd_xbar_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_xbar_1,axis_switch_v1_1_21_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_21_axis_switch,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_xbar_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
    s_req_suppress,
    s_decode_err);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]" *) input [1:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]" *) output [1:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [127:0] [127:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [127:0] [255:128]" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [15:0] [15:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [15:0] [31:16]" *) input [31:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]" *) input [1:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [15:0] [15:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [15:0] [31:16]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tdest;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tdest;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_decode_err;
  wire [1:0]s_req_suppress;
  wire NLW_inst_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_ctrl_wready_UNCONNECTED;
  wire [31:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [0:0]NLW_inst_arb_done_UNCONNECTED;
  wire [1:0]NLW_inst_arb_id_UNCONNECTED;
  wire [1:0]NLW_inst_arb_last_UNCONNECTED;
  wire [1:0]NLW_inst_arb_req_UNCONNECTED;
  wire [1:0]NLW_inst_arb_user_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "1" *) 
  (* C_AXIS_SIGNAL_SET = "91" *) 
  (* C_AXIS_TDATA_WIDTH = "128" *) 
  (* C_AXIS_TDEST_WIDTH = "16" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "1" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "16'b0000000000000000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "16'b0000000000000011" *) 
  (* C_NUM_MI_SLOTS = "1" *) 
  (* C_NUM_SI_SLOTS = "2" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "0" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "15" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) 
  (* P_TPAYLOAD_WIDTH = "161" *) 
  ipsec_bd_xbar_1_axis_switch_v1_1_21_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[31:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[0]),
        .arb_gnt({1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[1:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[1:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[1:0]),
        .arb_sel(1'b0),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[1:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[15:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(1'b0),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_aresetn(1'b0),
        .s_axi_ctrl_arready(NLW_inst_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_inst_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_inst_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_inst_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_inst_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_inst_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid({1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0}),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(s_decode_err),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_arb_rr" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_arb_rr
   (m_axis_tvalid,
    Q,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    SR,
    s_axis_tdest_4_sp_1,
    s_axis_tdest_20_sp_1,
    D,
    m_axis_tdest,
    m_axis_tlast,
    m_axis_tkeep,
    m_axis_tdata,
    \port_priority_r_reg[0]_0 ,
    aclken,
    aclk,
    \busy_r_reg[1] ,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_busy_r_reg_0,
    m_axis_tready,
    s_req_suppress,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tkeep,
    s_axis_tdata);
  output [0:0]m_axis_tvalid;
  output [1:0]Q;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output [0:0]SR;
  output s_axis_tdest_4_sp_1;
  output s_axis_tdest_20_sp_1;
  output [1:0]D;
  output [15:0]m_axis_tdest;
  output [0:0]m_axis_tlast;
  output [15:0]m_axis_tkeep;
  output [127:0]m_axis_tdata;
  input \port_priority_r_reg[0]_0 ;
  input aclken;
  input aclk;
  input [1:0]\busy_r_reg[1] ;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input arb_busy_r_reg_0;
  input [0:0]m_axis_tready;
  input [1:0]s_req_suppress;
  input [31:0]s_axis_tdest;
  input [1:0]s_axis_tvalid;
  input [1:0]s_axis_tlast;
  input [31:0]s_axis_tkeep;
  input [255:0]s_axis_tdata;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_i_5_n_0;
  wire arb_busy_r_i_6_n_0;
  wire arb_busy_r_i_7_n_0;
  wire arb_busy_r_i_8_n_0;
  wire arb_busy_r_reg_0;
  wire arb_done_i;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_2_n_0 ;
  wire \arb_gnt_r[1]_i_3_n_0 ;
  wire [1:0]arb_req_rot;
  wire arb_sel_i;
  wire \arb_sel_r[0]_i_10_n_0 ;
  wire \arb_sel_r[0]_i_11_n_0 ;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[0]_i_3_n_0 ;
  wire \arb_sel_r[0]_i_4_n_0 ;
  wire \arb_sel_r[0]_i_5_n_0 ;
  wire \arb_sel_r[0]_i_6_n_0 ;
  wire \arb_sel_r[0]_i_7_n_0 ;
  wire \arb_sel_r[0]_i_8_n_0 ;
  wire \arb_sel_r[0]_i_9_n_0 ;
  wire barrel_cntr;
  wire \barrel_cntr[0]_i_1_n_0 ;
  wire \barrel_cntr_reg_n_0_[0] ;
  wire [1:0]\busy_r_reg[1] ;
  wire f_mux_return;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tdest;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [1:0]port_priority_ns;
  wire \port_priority_r_reg[0]_0 ;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire s_axis_tdest_20_sn_1;
  wire s_axis_tdest_4_sn_1;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire \s_axis_tready[0]_INST_0_i_2_n_0 ;
  wire \s_axis_tready[0]_INST_0_i_3_n_0 ;
  wire \s_axis_tready[0]_INST_0_i_4_n_0 ;
  wire \s_axis_tready[1]_INST_0_i_2_n_0 ;
  wire \s_axis_tready[1]_INST_0_i_3_n_0 ;
  wire \s_axis_tready[1]_INST_0_i_4_n_0 ;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;
  wire sel_i;

  assign s_axis_tdest_20_sp_1 = s_axis_tdest_20_sn_1;
  assign s_axis_tdest_4_sp_1 = s_axis_tdest_4_sn_1;
  LUT4 #(
    .INIT(16'hEEFE)) 
    arb_busy_r_i_1
       (.I0(arb_req_rot[1]),
        .I1(arb_req_rot[0]),
        .I2(arb_busy_r),
        .I3(arb_done_i),
        .O(arb_busy_ns));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    arb_busy_r_i_2
       (.I0(s_axis_tdest_4_sn_1),
        .I1(s_req_suppress[0]),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(arb_busy_r_i_5_n_0),
        .I4(s_axis_tdest_20_sn_1),
        .I5(arb_busy_r_i_6_n_0),
        .O(arb_req_rot[1]));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    arb_busy_r_i_3
       (.I0(s_axis_tdest_20_sn_1),
        .I1(s_req_suppress[1]),
        .I2(\barrel_cntr_reg_n_0_[0] ),
        .I3(arb_busy_r_i_7_n_0),
        .I4(s_axis_tdest_4_sn_1),
        .I5(arb_busy_r_i_8_n_0),
        .O(arb_req_rot[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    arb_busy_r_i_4
       (.I0(m_axis_tready),
        .I1(s_axis_tdest_20_sn_1),
        .I2(arb_sel_i),
        .I3(s_axis_tdest_4_sn_1),
        .I4(arb_busy_r_reg_0),
        .O(arb_done_i));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    arb_busy_r_i_5
       (.I0(Q[0]),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .O(arb_busy_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    arb_busy_r_i_6
       (.I0(s_req_suppress[1]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\gen_tdest_routing.busy_r_reg[0] ),
        .I3(Q[1]),
        .O(arb_busy_r_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    arb_busy_r_i_7
       (.I0(Q[1]),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .O(arb_busy_r_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    arb_busy_r_i_8
       (.I0(s_req_suppress[0]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(Q[0]),
        .O(arb_busy_r_i_8_n_0));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(aclken),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(\port_priority_r_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000040044440400)) 
    \arb_gnt_r[0]_i_1 
       (.I0(\port_priority_r_reg[0]_0 ),
        .I1(\arb_gnt_r[1]_i_3_n_0 ),
        .I2(port_priority_ns[0]),
        .I3(arb_req_rot[1]),
        .I4(arb_req_rot[0]),
        .I5(port_priority_ns[1]),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \arb_gnt_r[1]_i_1 
       (.I0(\port_priority_r_reg[0]_0 ),
        .I1(aclken),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444400000004000)) 
    \arb_gnt_r[1]_i_2 
       (.I0(\port_priority_r_reg[0]_0 ),
        .I1(\arb_gnt_r[1]_i_3_n_0 ),
        .I2(port_priority_ns[0]),
        .I3(arb_req_rot[1]),
        .I4(arb_req_rot[0]),
        .I5(port_priority_ns[1]),
        .O(\arb_gnt_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8080000FFFFFFFF)) 
    \arb_gnt_r[1]_i_3 
       (.I0(arb_busy_r_reg_0),
        .I1(s_axis_tdest_4_sn_1),
        .I2(arb_sel_i),
        .I3(s_axis_tdest_20_sn_1),
        .I4(m_axis_tready),
        .I5(arb_busy_r),
        .O(\arb_gnt_r[1]_i_3_n_0 ));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(\arb_gnt_r[1]_i_1_n_0 ),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(\arb_gnt_r[1]_i_1_n_0 ),
        .D(\arb_gnt_r[1]_i_2_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFBFBF80008080)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i),
        .I1(aclken),
        .I2(\arb_sel_r[0]_i_3_n_0 ),
        .I3(arb_done_i),
        .I4(arb_busy_r),
        .I5(arb_sel_i),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \arb_sel_r[0]_i_10 
       (.I0(s_axis_tdest[20]),
        .I1(s_axis_tdest[19]),
        .I2(s_axis_tdest[18]),
        .O(\arb_sel_r[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \arb_sel_r[0]_i_11 
       (.I0(s_axis_tdest[4]),
        .I1(s_axis_tdest[3]),
        .I2(s_axis_tdest[2]),
        .O(\arb_sel_r[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8A8A8)) 
    \arb_sel_r[0]_i_2 
       (.I0(port_priority_ns[1]),
        .I1(\arb_sel_r[0]_i_4_n_0 ),
        .I2(\arb_sel_r[0]_i_5_n_0 ),
        .I3(\arb_sel_r[0]_i_6_n_0 ),
        .I4(\arb_sel_r[0]_i_7_n_0 ),
        .I5(port_priority_ns[0]),
        .O(sel_i));
  LUT6 #(
    .INIT(64'hFFFFFEAAFC00FC00)) 
    \arb_sel_r[0]_i_3 
       (.I0(arb_busy_r_i_8_n_0),
        .I1(\arb_sel_r[0]_i_8_n_0 ),
        .I2(arb_busy_r_i_6_n_0),
        .I3(s_axis_tdest_20_sn_1),
        .I4(\arb_sel_r[0]_i_9_n_0 ),
        .I5(s_axis_tdest_4_sn_1),
        .O(\arb_sel_r[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \arb_sel_r[0]_i_4 
       (.I0(\arb_sel_r[0]_i_8_n_0 ),
        .I1(\s_axis_tready[1]_INST_0_i_4_n_0 ),
        .I2(\s_axis_tready[1]_INST_0_i_3_n_0 ),
        .I3(\arb_sel_r[0]_i_10_n_0 ),
        .I4(\s_axis_tready[1]_INST_0_i_2_n_0 ),
        .O(\arb_sel_r[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \arb_sel_r[0]_i_5 
       (.I0(arb_busy_r_i_8_n_0),
        .I1(\s_axis_tready[0]_INST_0_i_4_n_0 ),
        .I2(\s_axis_tready[0]_INST_0_i_3_n_0 ),
        .I3(\arb_sel_r[0]_i_11_n_0 ),
        .I4(\s_axis_tready[0]_INST_0_i_2_n_0 ),
        .O(\arb_sel_r[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \arb_sel_r[0]_i_6 
       (.I0(arb_busy_r_i_6_n_0),
        .I1(\s_axis_tready[1]_INST_0_i_4_n_0 ),
        .I2(\s_axis_tready[1]_INST_0_i_3_n_0 ),
        .I3(\arb_sel_r[0]_i_10_n_0 ),
        .I4(\s_axis_tready[1]_INST_0_i_2_n_0 ),
        .O(\arb_sel_r[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \arb_sel_r[0]_i_7 
       (.I0(\arb_sel_r[0]_i_9_n_0 ),
        .I1(\s_axis_tready[0]_INST_0_i_4_n_0 ),
        .I2(\s_axis_tready[0]_INST_0_i_3_n_0 ),
        .I3(\arb_sel_r[0]_i_11_n_0 ),
        .I4(\s_axis_tready[0]_INST_0_i_2_n_0 ),
        .O(\arb_sel_r[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_sel_r[0]_i_8 
       (.I0(s_req_suppress[1]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\gen_tdest_routing.busy_r_reg[0] ),
        .I3(Q[1]),
        .O(\arb_sel_r[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_sel_r[0]_i_9 
       (.I0(s_req_suppress[0]),
        .I1(\barrel_cntr_reg_n_0_[0] ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(Q[0]),
        .O(\arb_sel_r[0]_i_9_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(arb_sel_i),
        .R(\port_priority_r_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h555DAAA2)) 
    \barrel_cntr[0]_i_1 
       (.I0(aclken),
        .I1(arb_busy_r),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\barrel_cntr_reg_n_0_[0] ),
        .O(\barrel_cntr[0]_i_1_n_0 ));
  FDRE \barrel_cntr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\barrel_cntr[0]_i_1_n_0 ),
        .Q(\barrel_cntr_reg_n_0_[0] ),
        .R(\port_priority_r_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1 
       (.I0(Q[0]),
        .I1(\busy_r_reg[1] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_r[1]_i_1 
       (.I0(arb_done_i),
        .I1(aclken),
        .I2(\port_priority_r_reg[0]_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_2 
       (.I0(Q[1]),
        .I1(\busy_r_reg[1] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(Q[1]),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(Q[0]),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[128]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(s_axis_tdata[228]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[100]),
        .O(m_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(s_axis_tdata[229]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[101]),
        .O(m_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(s_axis_tdata[230]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[102]),
        .O(m_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(s_axis_tdata[231]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[103]),
        .O(m_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(s_axis_tdata[232]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[104]),
        .O(m_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(s_axis_tdata[233]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[105]),
        .O(m_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(s_axis_tdata[234]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[106]),
        .O(m_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(s_axis_tdata[235]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[107]),
        .O(m_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(s_axis_tdata[236]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[108]),
        .O(m_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(s_axis_tdata[237]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[109]),
        .O(m_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(s_axis_tdata[138]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[10]),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(s_axis_tdata[238]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[110]),
        .O(m_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(s_axis_tdata[239]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[111]),
        .O(m_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(s_axis_tdata[240]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[112]),
        .O(m_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(s_axis_tdata[241]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[113]),
        .O(m_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(s_axis_tdata[242]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[114]),
        .O(m_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(s_axis_tdata[243]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[115]),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(s_axis_tdata[244]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[116]),
        .O(m_axis_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(s_axis_tdata[245]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[117]),
        .O(m_axis_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(s_axis_tdata[246]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[118]),
        .O(m_axis_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(s_axis_tdata[247]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[119]),
        .O(m_axis_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(s_axis_tdata[139]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[11]),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(s_axis_tdata[248]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[120]),
        .O(m_axis_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(s_axis_tdata[249]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[121]),
        .O(m_axis_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(s_axis_tdata[250]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[122]),
        .O(m_axis_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(s_axis_tdata[251]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[123]),
        .O(m_axis_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(s_axis_tdata[252]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[124]),
        .O(m_axis_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(s_axis_tdata[253]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[125]),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(s_axis_tdata[254]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[126]),
        .O(m_axis_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(s_axis_tdata[255]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[127]),
        .O(m_axis_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[140]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[12]),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[141]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[13]),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(s_axis_tdata[142]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[14]),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[143]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[15]),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[144]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[16]),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(s_axis_tdata[145]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[17]),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(s_axis_tdata[146]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[18]),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(s_axis_tdata[147]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[19]),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[129]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[1]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[148]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[20]),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[149]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[21]),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(s_axis_tdata[150]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[22]),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(s_axis_tdata[151]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[23]),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[152]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[24]),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[153]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[25]),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(s_axis_tdata[154]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[26]),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(s_axis_tdata[155]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[27]),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[156]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[28]),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[157]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[29]),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[130]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[2]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(s_axis_tdata[158]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[30]),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[159]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[31]),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(s_axis_tdata[160]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[32]),
        .O(m_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(s_axis_tdata[161]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[33]),
        .O(m_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(s_axis_tdata[162]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[34]),
        .O(m_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(s_axis_tdata[163]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[35]),
        .O(m_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(s_axis_tdata[164]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[36]),
        .O(m_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(s_axis_tdata[165]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[37]),
        .O(m_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(s_axis_tdata[166]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[38]),
        .O(m_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(s_axis_tdata[167]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[39]),
        .O(m_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[131]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(s_axis_tdata[168]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[40]),
        .O(m_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(s_axis_tdata[169]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[41]),
        .O(m_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(s_axis_tdata[170]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[42]),
        .O(m_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(s_axis_tdata[171]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[43]),
        .O(m_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(s_axis_tdata[172]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[44]),
        .O(m_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(s_axis_tdata[173]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[45]),
        .O(m_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(s_axis_tdata[174]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[46]),
        .O(m_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(s_axis_tdata[175]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[47]),
        .O(m_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(s_axis_tdata[176]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[48]),
        .O(m_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(s_axis_tdata[177]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[49]),
        .O(m_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[132]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[4]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(s_axis_tdata[178]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[50]),
        .O(m_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(s_axis_tdata[179]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[51]),
        .O(m_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(s_axis_tdata[180]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[52]),
        .O(m_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(s_axis_tdata[181]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[53]),
        .O(m_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(s_axis_tdata[182]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[54]),
        .O(m_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(s_axis_tdata[183]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[55]),
        .O(m_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(s_axis_tdata[184]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[56]),
        .O(m_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(s_axis_tdata[185]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[57]),
        .O(m_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(s_axis_tdata[186]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[58]),
        .O(m_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(s_axis_tdata[187]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[59]),
        .O(m_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[133]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[5]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(s_axis_tdata[188]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[60]),
        .O(m_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(s_axis_tdata[189]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[61]),
        .O(m_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(s_axis_tdata[190]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[62]),
        .O(m_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(s_axis_tdata[191]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[63]),
        .O(m_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(s_axis_tdata[192]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[64]),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(s_axis_tdata[193]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[65]),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(s_axis_tdata[194]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[66]),
        .O(m_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(s_axis_tdata[195]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[67]),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(s_axis_tdata[196]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[68]),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(s_axis_tdata[197]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[69]),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[134]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(s_axis_tdata[198]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[70]),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(s_axis_tdata[199]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[71]),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(s_axis_tdata[200]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[72]),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(s_axis_tdata[201]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[73]),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(s_axis_tdata[202]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[74]),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(s_axis_tdata[203]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[75]),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(s_axis_tdata[204]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[76]),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(s_axis_tdata[205]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[77]),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(s_axis_tdata[206]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[78]),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(s_axis_tdata[207]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[79]),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[135]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(s_axis_tdata[208]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[80]),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(s_axis_tdata[209]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[81]),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(s_axis_tdata[210]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[82]),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(s_axis_tdata[211]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[83]),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(s_axis_tdata[212]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[84]),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(s_axis_tdata[213]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[85]),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(s_axis_tdata[214]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[86]),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(s_axis_tdata[215]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[87]),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(s_axis_tdata[216]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[88]),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(s_axis_tdata[217]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[89]),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[136]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[8]),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(s_axis_tdata[218]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[90]),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(s_axis_tdata[219]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[91]),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(s_axis_tdata[220]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[92]),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(s_axis_tdata[221]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[93]),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(s_axis_tdata[222]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[94]),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(s_axis_tdata[223]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[95]),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(s_axis_tdata[224]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[96]),
        .O(m_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(s_axis_tdata[225]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[97]),
        .O(m_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(s_axis_tdata[226]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[98]),
        .O(m_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(s_axis_tdata[227]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[99]),
        .O(m_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[137]),
        .I1(arb_sel_i),
        .I2(s_axis_tdata[9]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(s_axis_tdest[16]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[0]),
        .O(m_axis_tdest[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[10]_INST_0 
       (.I0(s_axis_tdest[26]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[10]),
        .O(m_axis_tdest[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[11]_INST_0 
       (.I0(s_axis_tdest[27]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[11]),
        .O(m_axis_tdest[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[12]_INST_0 
       (.I0(s_axis_tdest[28]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[12]),
        .O(m_axis_tdest[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[13]_INST_0 
       (.I0(s_axis_tdest[29]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[13]),
        .O(m_axis_tdest[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[14]_INST_0 
       (.I0(s_axis_tdest[30]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[14]),
        .O(m_axis_tdest[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[15]_INST_0 
       (.I0(s_axis_tdest[31]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[15]),
        .O(m_axis_tdest[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(s_axis_tdest[17]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[1]),
        .O(m_axis_tdest[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(s_axis_tdest[18]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[2]),
        .O(m_axis_tdest[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(s_axis_tdest[19]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[3]),
        .O(m_axis_tdest[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(s_axis_tdest[20]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[4]),
        .O(m_axis_tdest[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(s_axis_tdest[21]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[5]),
        .O(m_axis_tdest[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(s_axis_tdest[22]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[6]),
        .O(m_axis_tdest[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(s_axis_tdest[23]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[7]),
        .O(m_axis_tdest[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[8]_INST_0 
       (.I0(s_axis_tdest[24]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[8]),
        .O(m_axis_tdest[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[9]_INST_0 
       (.I0(s_axis_tdest[25]),
        .I1(arb_sel_i),
        .I2(s_axis_tdest[9]),
        .O(m_axis_tdest[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(s_axis_tkeep[16]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[0]),
        .O(m_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(s_axis_tkeep[26]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[10]),
        .O(m_axis_tkeep[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(s_axis_tkeep[27]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[11]),
        .O(m_axis_tkeep[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(s_axis_tkeep[28]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[12]),
        .O(m_axis_tkeep[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(s_axis_tkeep[29]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[13]),
        .O(m_axis_tkeep[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(s_axis_tkeep[30]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[14]),
        .O(m_axis_tkeep[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(s_axis_tkeep[31]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[15]),
        .O(m_axis_tkeep[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(s_axis_tkeep[17]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[1]),
        .O(m_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(s_axis_tkeep[18]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[2]),
        .O(m_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(s_axis_tkeep[19]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[3]),
        .O(m_axis_tkeep[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(s_axis_tkeep[20]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[4]),
        .O(m_axis_tkeep[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(s_axis_tkeep[21]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[5]),
        .O(m_axis_tkeep[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(s_axis_tkeep[22]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[6]),
        .O(m_axis_tkeep[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(s_axis_tkeep[23]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[7]),
        .O(m_axis_tkeep[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(s_axis_tkeep[24]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[8]),
        .O(m_axis_tkeep[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(s_axis_tkeep[25]),
        .I1(arb_sel_i),
        .I2(s_axis_tkeep[9]),
        .O(m_axis_tkeep[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[1]),
        .I1(arb_sel_i),
        .I2(s_axis_tlast[0]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(Q[1]),
        .I1(\busy_r_reg[1] [1]),
        .I2(Q[0]),
        .I3(\busy_r_reg[1] [0]),
        .I4(f_mux_return),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(s_axis_tdest_20_sn_1),
        .I1(arb_sel_i),
        .I2(s_axis_tdest_4_sn_1),
        .O(f_mux_return));
  LUT4 #(
    .INIT(16'hEF00)) 
    \port_priority_r[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(arb_busy_r),
        .I3(aclken),
        .O(barrel_cntr));
  FDRE \port_priority_r_reg[0] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[0]),
        .Q(port_priority_ns[1]),
        .R(\port_priority_r_reg[0]_0 ));
  FDSE \port_priority_r_reg[1] 
       (.C(aclk),
        .CE(barrel_cntr),
        .D(port_priority_ns[1]),
        .Q(port_priority_ns[0]),
        .S(\port_priority_r_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \s_axis_tready[0]_INST_0_i_1 
       (.I0(\s_axis_tready[0]_INST_0_i_2_n_0 ),
        .I1(s_axis_tdest[4]),
        .I2(s_axis_tdest[3]),
        .I3(s_axis_tdest[2]),
        .I4(\s_axis_tready[0]_INST_0_i_3_n_0 ),
        .I5(\s_axis_tready[0]_INST_0_i_4_n_0 ),
        .O(s_axis_tdest_4_sn_1));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axis_tready[0]_INST_0_i_2 
       (.I0(s_axis_tdest[8]),
        .I1(s_axis_tdest[7]),
        .I2(s_axis_tdest[6]),
        .I3(s_axis_tdest[5]),
        .O(\s_axis_tready[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axis_tready[0]_INST_0_i_3 
       (.I0(s_axis_tdest[12]),
        .I1(s_axis_tdest[11]),
        .I2(s_axis_tdest[10]),
        .I3(s_axis_tdest[9]),
        .O(\s_axis_tready[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tready[0]_INST_0_i_4 
       (.I0(s_axis_tdest[15]),
        .I1(s_axis_tvalid[0]),
        .I2(s_axis_tdest[14]),
        .I3(s_axis_tdest[13]),
        .O(\s_axis_tready[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \s_axis_tready[1]_INST_0_i_1 
       (.I0(\s_axis_tready[1]_INST_0_i_2_n_0 ),
        .I1(s_axis_tdest[20]),
        .I2(s_axis_tdest[19]),
        .I3(s_axis_tdest[18]),
        .I4(\s_axis_tready[1]_INST_0_i_3_n_0 ),
        .I5(\s_axis_tready[1]_INST_0_i_4_n_0 ),
        .O(s_axis_tdest_20_sn_1));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axis_tready[1]_INST_0_i_2 
       (.I0(s_axis_tdest[24]),
        .I1(s_axis_tdest[23]),
        .I2(s_axis_tdest[22]),
        .I3(s_axis_tdest[21]),
        .O(\s_axis_tready[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axis_tready[1]_INST_0_i_3 
       (.I0(s_axis_tdest[28]),
        .I1(s_axis_tdest[27]),
        .I2(s_axis_tdest[26]),
        .I3(s_axis_tdest[25]),
        .O(\s_axis_tready[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axis_tready[1]_INST_0_i_4 
       (.I0(s_axis_tdest[31]),
        .I1(s_axis_tvalid[1]),
        .I2(s_axis_tdest[30]),
        .I3(s_axis_tdest[29]),
        .O(\s_axis_tready[1]_INST_0_i_4_n_0 ));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "1" *) (* C_AXIS_SIGNAL_SET = "91" *) (* C_AXIS_TDATA_WIDTH = "128" *) 
(* C_AXIS_TDEST_WIDTH = "16" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "0" *) (* C_FAMILY = "zynquplus" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "16'b0000000000000000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "16'b0000000000000011" *) (* C_NUM_MI_SLOTS = "1" *) 
(* C_NUM_SI_SLOTS = "2" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "0" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "15" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_21_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "1'b0" *) (* P_TPAYLOAD_WIDTH = "161" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tstrb;
  input [31:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [1:0]s_axis_tid;
  input [31:0]s_axis_tdest;
  input [1:0]s_axis_tuser;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tid;
  output [15:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [1:0]arb_req;
  output [0:0]arb_done;
  input [1:0]arb_gnt;
  input [0:0]arb_sel;
  output [1:0]arb_last;
  output [1:0]arb_id;
  output [31:0]arb_dest;
  output [1:0]arb_user;
  input [1:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire [1:0]arb_gnt_i;
  wire areset_r;
  wire aresetn;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_10 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_6 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_9 ;
  wire [1:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_4 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tdest;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [1:0]mux_tvalid;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_decode_err;
  wire [1:0]s_req_suppress;

  assign arb_dest[31] = \<const0> ;
  assign arb_dest[30] = \<const0> ;
  assign arb_dest[29] = \<const0> ;
  assign arb_dest[28] = \<const0> ;
  assign arb_dest[27] = \<const0> ;
  assign arb_dest[26] = \<const0> ;
  assign arb_dest[25] = \<const0> ;
  assign arb_dest[24] = \<const0> ;
  assign arb_dest[23] = \<const0> ;
  assign arb_dest[22] = \<const0> ;
  assign arb_dest[21] = \<const0> ;
  assign arb_dest[20] = \<const0> ;
  assign arb_dest[19] = \<const0> ;
  assign arb_dest[18] = \<const0> ;
  assign arb_dest[17] = \<const0> ;
  assign arb_dest[16] = \<const0> ;
  assign arb_dest[15] = \<const0> ;
  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .mux_tvalid(mux_tvalid[0]),
        .s_axis_tvalid(s_axis_tvalid[0]),
        .s_decode_err(s_decode_err[0]));
  ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .mux_tvalid(mux_tvalid[1]),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .s_decode_err(s_decode_err[1]));
  ipsec_bd_xbar_1_axis_switch_v1_1_21_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter 
       (.D({\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_9 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_10 }),
        .Q(arb_gnt_i),
        .SR(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_6 ),
        .aclk(aclk),
        .aclken(aclken),
        .arb_busy_r_reg(\gen_transfer_mux[0].axisc_transfer_mux_0_n_4 ),
        .areset_r(areset_r),
        .aresetn(aresetn),
        .\busy_r_reg[1] (\gen_tdest_router.busy_r ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mux_tvalid(mux_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
  ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.D({\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_9 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_10 }),
        .Q(\gen_tdest_router.busy_r ),
        .SR(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_21_axis_switch_arbiter_n_6 ),
        .aclk(aclk),
        .aclken(aclken),
        .\busy_r_reg[0] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_4 ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid),
        .s_axis_tready(s_axis_tready),
        .\s_axis_tready[1] (arb_gnt_i),
        .s_decode_err(s_decode_err));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_axis_switch_arbiter" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axis_switch_arbiter
   (areset_r,
    m_axis_tvalid,
    Q,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    SR,
    mux_tvalid,
    D,
    m_axis_tdest,
    m_axis_tlast,
    m_axis_tkeep,
    m_axis_tdata,
    aclk,
    aclken,
    \busy_r_reg[1] ,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    arb_busy_r_reg,
    m_axis_tready,
    s_req_suppress,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tkeep,
    s_axis_tdata,
    aresetn);
  output areset_r;
  output [0:0]m_axis_tvalid;
  output [1:0]Q;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output [0:0]SR;
  output [1:0]mux_tvalid;
  output [1:0]D;
  output [15:0]m_axis_tdest;
  output [0:0]m_axis_tlast;
  output [15:0]m_axis_tkeep;
  output [127:0]m_axis_tdata;
  input aclk;
  input aclken;
  input [1:0]\busy_r_reg[1] ;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input arb_busy_r_reg;
  input [0:0]m_axis_tready;
  input [1:0]s_req_suppress;
  input [31:0]s_axis_tdest;
  input [1:0]s_axis_tvalid;
  input [1:0]s_axis_tlast;
  input [31:0]s_axis_tkeep;
  input [255:0]s_axis_tdata;
  input aresetn;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire arb_busy_r_reg;
  wire areset_r;
  wire aresetn;
  wire [1:0]\busy_r_reg[1] ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tdest;
  wire [15:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [1:0]mux_tvalid;
  wire p_0_in;
  wire [255:0]s_axis_tdata;
  wire [31:0]s_axis_tdest;
  wire [31:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  ipsec_bd_xbar_1_axis_switch_v1_1_21_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aclken(aclken),
        .arb_busy_r_reg_0(arb_busy_r_reg),
        .\busy_r_reg[1] (\busy_r_reg[1] ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\port_priority_r_reg[0]_0 (areset_r),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tdest_20_sp_1(mux_tvalid[1]),
        .s_axis_tdest_4_sp_1(mux_tvalid[0]),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_axisc_arb_responder" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_arb_responder
   (s_axis_tready,
    Q,
    \busy_r_reg[0]_0 ,
    mux_tvalid,
    \s_axis_tready[1] ,
    m_axis_tready,
    s_decode_err,
    SR,
    aclken,
    D,
    aclk);
  output [1:0]s_axis_tready;
  output [1:0]Q;
  output \busy_r_reg[0]_0 ;
  input [1:0]mux_tvalid;
  input [1:0]\s_axis_tready[1] ;
  input [0:0]m_axis_tready;
  input [1:0]s_decode_err;
  input [0:0]SR;
  input aclken;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire \busy_r_reg[0]_0 ;
  wire [0:0]m_axis_tready;
  wire [1:0]mux_tvalid;
  wire [1:0]s_axis_tready;
  wire [1:0]\s_axis_tready[1] ;
  wire [1:0]s_decode_err;

  LUT4 #(
    .INIT(16'hFFFE)) 
    arb_busy_r_i_9
       (.I0(Q[0]),
        .I1(\s_axis_tready[1] [0]),
        .I2(Q[1]),
        .I3(\s_axis_tready[1] [1]),
        .O(\busy_r_reg[0]_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \s_axis_tready[0]_INST_0 
       (.I0(mux_tvalid[0]),
        .I1(Q[0]),
        .I2(\s_axis_tready[1] [0]),
        .I3(m_axis_tready),
        .I4(s_decode_err[0]),
        .O(s_axis_tready[0]));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \s_axis_tready[1]_INST_0 
       (.I0(mux_tvalid[1]),
        .I1(Q[1]),
        .I2(\s_axis_tready[1] [1]),
        .I3(m_axis_tready),
        .I4(s_decode_err[1]),
        .O(s_axis_tready[1]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_axisc_decoder" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    s_decode_err,
    areset_r,
    aclken,
    \gen_tdest_routing.busy_ns ,
    aclk,
    s_axis_tvalid,
    mux_tvalid);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output [0:0]s_decode_err;
  input areset_r;
  input aclken;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]s_axis_tvalid;
  input [0:0]mux_tvalid;

  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]mux_tvalid;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_tdest_routing.decode_err_r_i_1__0 
       (.I0(s_decode_err),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(aclken),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_axisc_decoder" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_decoder_0
   (s_decode_err,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r,
    aclken,
    aclk,
    \gen_tdest_routing.busy_ns ,
    s_axis_tvalid,
    mux_tvalid);
  output [0:0]s_decode_err;
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r;
  input aclken;
  input aclk;
  input \gen_tdest_routing.busy_ns ;
  input [0:0]s_axis_tvalid;
  input [0:0]mux_tvalid;

  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire [0:0]mux_tvalid;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_decode_err),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(aclken),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(s_decode_err),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_21_axisc_transfer_mux" *) 
module ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_transfer_mux
   (s_axis_tready,
    Q,
    \busy_r_reg[0] ,
    mux_tvalid,
    \s_axis_tready[1] ,
    m_axis_tready,
    s_decode_err,
    SR,
    aclken,
    D,
    aclk);
  output [1:0]s_axis_tready;
  output [1:0]Q;
  output \busy_r_reg[0] ;
  input [1:0]mux_tvalid;
  input [1:0]\s_axis_tready[1] ;
  input [0:0]m_axis_tready;
  input [1:0]s_decode_err;
  input [0:0]SR;
  input aclken;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire \busy_r_reg[0] ;
  wire [0:0]m_axis_tready;
  wire [1:0]mux_tvalid;
  wire [1:0]s_axis_tready;
  wire [1:0]\s_axis_tready[1] ;
  wire [1:0]s_decode_err;

  ipsec_bd_xbar_1_axis_switch_v1_1_21_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aclken(aclken),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid),
        .s_axis_tready(s_axis_tready),
        .\s_axis_tready[1] (\s_axis_tready[1] ),
        .s_decode_err(s_decode_err));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
