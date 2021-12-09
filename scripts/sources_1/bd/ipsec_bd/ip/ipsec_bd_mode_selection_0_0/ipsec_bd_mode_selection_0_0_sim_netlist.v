// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:27:11 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mode_selection_0_0/ipsec_bd_mode_selection_0_0_sim_netlist.v
// Design      : ipsec_bd_mode_selection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_mode_selection_0_0,mode_selection,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mode_selection,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_mode_selection_0_0
   (clk,
    rst_n,
    mode_select_i,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    m0_axis_tdata,
    m0_axis_tkeep,
    m0_axis_tdest,
    m0_axis_tvalid,
    m0_axis_tlast,
    m0_axis_tready,
    m1_axis_tdata,
    m1_axis_tkeep,
    m1_axis_tdest,
    m1_axis_tvalid,
    m1_axis_tlast,
    m1_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input mode_select_i;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [15:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [10:0]s_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m0_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TKEEP" *) output [15:0]m0_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDEST" *) output [10:0]m0_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) output m0_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m1_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TKEEP" *) output [15:0]m1_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDEST" *) output [10:0]m1_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TVALID" *) output m1_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TLAST" *) output m1_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TREADY" *) input m1_axis_tready;

  wire clk;
  wire [127:0]m0_axis_tdata;
  wire [10:0]m0_axis_tdest;
  wire [15:0]m0_axis_tkeep;
  wire m0_axis_tlast;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire [127:0]m1_axis_tdata;
  wire [10:0]m1_axis_tdest;
  wire [15:0]m1_axis_tkeep;
  wire m1_axis_tlast;
  wire m1_axis_tready;
  wire m1_axis_tvalid;
  wire mode_select_i;
  wire rst_n;
  wire [127:0]s_axis_tdata;
  wire [10:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  ipsec_bd_mode_selection_0_0_mode_selection U0
       (.clk(clk),
        .m0_axis_tdata(m0_axis_tdata),
        .m0_axis_tdest(m0_axis_tdest),
        .m0_axis_tkeep(m0_axis_tkeep),
        .m0_axis_tlast(m0_axis_tlast),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .m1_axis_tdata(m1_axis_tdata),
        .m1_axis_tdest(m1_axis_tdest),
        .m1_axis_tkeep(m1_axis_tkeep),
        .m1_axis_tlast(m1_axis_tlast),
        .m1_axis_tready(m1_axis_tready),
        .m1_axis_tvalid(m1_axis_tvalid),
        .mode_select_i(mode_select_i),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "mode_selection" *) 
module ipsec_bd_mode_selection_0_0_mode_selection
   (m0_axis_tdata,
    m0_axis_tkeep,
    m0_axis_tdest,
    m0_axis_tvalid,
    s_axis_tready,
    m0_axis_tlast,
    m1_axis_tdata,
    m1_axis_tkeep,
    m1_axis_tdest,
    m1_axis_tvalid,
    m1_axis_tlast,
    clk,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tlast,
    m0_axis_tready,
    m1_axis_tready,
    mode_select_i,
    rst_n);
  output [127:0]m0_axis_tdata;
  output [15:0]m0_axis_tkeep;
  output [10:0]m0_axis_tdest;
  output m0_axis_tvalid;
  output s_axis_tready;
  output m0_axis_tlast;
  output [127:0]m1_axis_tdata;
  output [15:0]m1_axis_tkeep;
  output [10:0]m1_axis_tdest;
  output m1_axis_tvalid;
  output m1_axis_tlast;
  input clk;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [10:0]s_axis_tdest;
  input s_axis_tvalid;
  input s_axis_tlast;
  input m0_axis_tready;
  input m1_axis_tready;
  input mode_select_i;
  input rst_n;

  wire \FSM_onehot_mode_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mode_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mode_state[1]_i_2_n_0 ;
  wire \FSM_onehot_mode_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mode_state[2]_i_2_n_0 ;
  wire \FSM_onehot_mode_state[2]_i_3_n_0 ;
  wire \FSM_onehot_mode_state_reg_n_0_[0] ;
  wire \FSM_onehot_mode_state_reg_n_0_[1] ;
  wire clk;
  wire [127:0]m0_axis_tdata;
  wire \m0_axis_tdata[127]_i_1_n_0 ;
  wire [10:0]m0_axis_tdest;
  wire [15:0]m0_axis_tkeep;
  wire m0_axis_tlast;
  wire m0_axis_tlast_i_1_n_0;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire m0_axis_tvalid_i_1_n_0;
  wire [127:0]m1_axis_tdata;
  wire \m1_axis_tdata[127]_i_1_n_0 ;
  wire [10:0]m1_axis_tdest;
  wire [15:0]m1_axis_tkeep;
  wire m1_axis_tlast;
  wire m1_axis_tready;
  wire m1_axis_tvalid;
  wire mode_select;
  wire mode_select__0;
  wire mode_select_i;
  wire rst_n;
  wire [127:0]s_axis_tdata;
  wire [10:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'h01F101FB01F10101)) 
    \FSM_onehot_mode_state[0]_i_1 
       (.I0(\FSM_onehot_mode_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .I2(mode_select__0),
        .I3(mode_select_i),
        .I4(\FSM_onehot_mode_state[1]_i_2_n_0 ),
        .I5(s_axis_tlast),
        .O(\FSM_onehot_mode_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AAFEAA00AAAE)) 
    \FSM_onehot_mode_state[1]_i_1 
       (.I0(\FSM_onehot_mode_state_reg_n_0_[1] ),
        .I1(mode_select__0),
        .I2(mode_select_i),
        .I3(\FSM_onehot_mode_state[1]_i_2_n_0 ),
        .I4(s_axis_tlast),
        .I5(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mode_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h57F7)) 
    \FSM_onehot_mode_state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m0_axis_tready),
        .I2(mode_select__0),
        .I3(m1_axis_tready),
        .O(\FSM_onehot_mode_state[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_mode_state[2]_i_1 
       (.I0(rst_n),
        .O(\FSM_onehot_mode_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEBF)) 
    \FSM_onehot_mode_state[2]_i_2 
       (.I0(\FSM_onehot_mode_state_reg_n_0_[1] ),
        .I1(mode_select__0),
        .I2(mode_select_i),
        .I3(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mode_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FFF80000000)) 
    \FSM_onehot_mode_state[2]_i_3 
       (.I0(\FSM_onehot_mode_state_reg_n_0_[1] ),
        .I1(mode_select_i),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready),
        .I4(s_axis_tlast),
        .I5(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mode_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mode_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_mode_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_mode_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .S(\FSM_onehot_mode_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mode_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_mode_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_mode_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mode_state_reg_n_0_[1] ),
        .R(\FSM_onehot_mode_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,sm_legacy:0001,sm_wait:0010,sm_switchdev:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mode_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_mode_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_mode_state[2]_i_3_n_0 ),
        .Q(mode_select__0),
        .R(\FSM_onehot_mode_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m0_axis_tdata[127]_i_1 
       (.I0(m0_axis_tready),
        .I1(mode_select__0),
        .I2(m1_axis_tready),
        .I3(mode_select),
        .O(\m0_axis_tdata[127]_i_1_n_0 ));
  FDRE \m0_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m0_axis_tdata[0]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[100] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[100]),
        .Q(m0_axis_tdata[100]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[101] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[101]),
        .Q(m0_axis_tdata[101]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[102] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[102]),
        .Q(m0_axis_tdata[102]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[103] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[103]),
        .Q(m0_axis_tdata[103]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[104] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[104]),
        .Q(m0_axis_tdata[104]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[105] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[105]),
        .Q(m0_axis_tdata[105]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[106] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[106]),
        .Q(m0_axis_tdata[106]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[107] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[107]),
        .Q(m0_axis_tdata[107]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[108] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[108]),
        .Q(m0_axis_tdata[108]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[109] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[109]),
        .Q(m0_axis_tdata[109]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m0_axis_tdata[10]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[110] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[110]),
        .Q(m0_axis_tdata[110]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[111] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[111]),
        .Q(m0_axis_tdata[111]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[112] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[112]),
        .Q(m0_axis_tdata[112]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[113] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[113]),
        .Q(m0_axis_tdata[113]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[114] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[114]),
        .Q(m0_axis_tdata[114]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[115] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[115]),
        .Q(m0_axis_tdata[115]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[116] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[116]),
        .Q(m0_axis_tdata[116]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[117] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[117]),
        .Q(m0_axis_tdata[117]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[118] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[118]),
        .Q(m0_axis_tdata[118]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[119] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[119]),
        .Q(m0_axis_tdata[119]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m0_axis_tdata[11]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[120] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[120]),
        .Q(m0_axis_tdata[120]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[121] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[121]),
        .Q(m0_axis_tdata[121]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[122] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[122]),
        .Q(m0_axis_tdata[122]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[123] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[123]),
        .Q(m0_axis_tdata[123]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[124] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[124]),
        .Q(m0_axis_tdata[124]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[125] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[125]),
        .Q(m0_axis_tdata[125]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[126] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[126]),
        .Q(m0_axis_tdata[126]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[127] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[127]),
        .Q(m0_axis_tdata[127]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m0_axis_tdata[12]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m0_axis_tdata[13]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m0_axis_tdata[14]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m0_axis_tdata[15]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m0_axis_tdata[16]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m0_axis_tdata[17]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m0_axis_tdata[18]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m0_axis_tdata[19]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m0_axis_tdata[1]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m0_axis_tdata[20]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m0_axis_tdata[21]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m0_axis_tdata[22]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m0_axis_tdata[23]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m0_axis_tdata[24]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m0_axis_tdata[25]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m0_axis_tdata[26]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m0_axis_tdata[27]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m0_axis_tdata[28]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m0_axis_tdata[29]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m0_axis_tdata[2]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m0_axis_tdata[30]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m0_axis_tdata[31]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[32] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[32]),
        .Q(m0_axis_tdata[32]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[33] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[33]),
        .Q(m0_axis_tdata[33]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[34] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[34]),
        .Q(m0_axis_tdata[34]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[35] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[35]),
        .Q(m0_axis_tdata[35]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[36] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[36]),
        .Q(m0_axis_tdata[36]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[37] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[37]),
        .Q(m0_axis_tdata[37]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[38] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[38]),
        .Q(m0_axis_tdata[38]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[39] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[39]),
        .Q(m0_axis_tdata[39]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m0_axis_tdata[3]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[40] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[40]),
        .Q(m0_axis_tdata[40]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[41] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[41]),
        .Q(m0_axis_tdata[41]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[42] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[42]),
        .Q(m0_axis_tdata[42]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[43] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[43]),
        .Q(m0_axis_tdata[43]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[44] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[44]),
        .Q(m0_axis_tdata[44]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[45] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[45]),
        .Q(m0_axis_tdata[45]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[46] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[46]),
        .Q(m0_axis_tdata[46]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[47] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[47]),
        .Q(m0_axis_tdata[47]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[48] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[48]),
        .Q(m0_axis_tdata[48]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[49] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[49]),
        .Q(m0_axis_tdata[49]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m0_axis_tdata[4]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[50] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[50]),
        .Q(m0_axis_tdata[50]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[51] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[51]),
        .Q(m0_axis_tdata[51]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[52] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[52]),
        .Q(m0_axis_tdata[52]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[53] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[53]),
        .Q(m0_axis_tdata[53]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[54] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[54]),
        .Q(m0_axis_tdata[54]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[55] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[55]),
        .Q(m0_axis_tdata[55]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[56] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[56]),
        .Q(m0_axis_tdata[56]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[57] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[57]),
        .Q(m0_axis_tdata[57]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[58] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[58]),
        .Q(m0_axis_tdata[58]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[59] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[59]),
        .Q(m0_axis_tdata[59]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m0_axis_tdata[5]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[60] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[60]),
        .Q(m0_axis_tdata[60]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[61] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[61]),
        .Q(m0_axis_tdata[61]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[62] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[62]),
        .Q(m0_axis_tdata[62]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[63] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[63]),
        .Q(m0_axis_tdata[63]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[64] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[64]),
        .Q(m0_axis_tdata[64]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[65] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[65]),
        .Q(m0_axis_tdata[65]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[66] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[66]),
        .Q(m0_axis_tdata[66]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[67] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[67]),
        .Q(m0_axis_tdata[67]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[68] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[68]),
        .Q(m0_axis_tdata[68]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[69] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[69]),
        .Q(m0_axis_tdata[69]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m0_axis_tdata[6]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[70] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[70]),
        .Q(m0_axis_tdata[70]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[71] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[71]),
        .Q(m0_axis_tdata[71]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[72] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[72]),
        .Q(m0_axis_tdata[72]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[73] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[73]),
        .Q(m0_axis_tdata[73]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[74] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[74]),
        .Q(m0_axis_tdata[74]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[75] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[75]),
        .Q(m0_axis_tdata[75]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[76] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[76]),
        .Q(m0_axis_tdata[76]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[77] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[77]),
        .Q(m0_axis_tdata[77]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[78] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[78]),
        .Q(m0_axis_tdata[78]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[79] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[79]),
        .Q(m0_axis_tdata[79]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m0_axis_tdata[7]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[80] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[80]),
        .Q(m0_axis_tdata[80]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[81] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[81]),
        .Q(m0_axis_tdata[81]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[82] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[82]),
        .Q(m0_axis_tdata[82]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[83] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[83]),
        .Q(m0_axis_tdata[83]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[84] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[84]),
        .Q(m0_axis_tdata[84]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[85] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[85]),
        .Q(m0_axis_tdata[85]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[86] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[86]),
        .Q(m0_axis_tdata[86]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[87] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[87]),
        .Q(m0_axis_tdata[87]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[88] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[88]),
        .Q(m0_axis_tdata[88]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[89] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[89]),
        .Q(m0_axis_tdata[89]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m0_axis_tdata[8]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[90] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[90]),
        .Q(m0_axis_tdata[90]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[91] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[91]),
        .Q(m0_axis_tdata[91]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[92] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[92]),
        .Q(m0_axis_tdata[92]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[93] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[93]),
        .Q(m0_axis_tdata[93]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[94] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[94]),
        .Q(m0_axis_tdata[94]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[95] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[95]),
        .Q(m0_axis_tdata[95]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[96] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[96]),
        .Q(m0_axis_tdata[96]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[97] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[97]),
        .Q(m0_axis_tdata[97]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[98] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[98]),
        .Q(m0_axis_tdata[98]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[99] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[99]),
        .Q(m0_axis_tdata[99]),
        .R(1'b0));
  FDRE \m0_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m0_axis_tdata[9]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[0] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[0]),
        .Q(m0_axis_tdest[0]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[10] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[10]),
        .Q(m0_axis_tdest[10]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[1] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[1]),
        .Q(m0_axis_tdest[1]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[2] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[2]),
        .Q(m0_axis_tdest[2]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[3] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[3]),
        .Q(m0_axis_tdest[3]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[4] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[4]),
        .Q(m0_axis_tdest[4]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[5] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[5]),
        .Q(m0_axis_tdest[5]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[6] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[6]),
        .Q(m0_axis_tdest[6]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[7] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[7]),
        .Q(m0_axis_tdest[7]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[8] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[8]),
        .Q(m0_axis_tdest[8]),
        .R(1'b0));
  FDRE \m0_axis_tdest_reg[9] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[9]),
        .Q(m0_axis_tdest[9]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[0] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[0]),
        .Q(m0_axis_tkeep[0]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[10] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[10]),
        .Q(m0_axis_tkeep[10]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[11] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[11]),
        .Q(m0_axis_tkeep[11]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[12] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[12]),
        .Q(m0_axis_tkeep[12]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[13] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[13]),
        .Q(m0_axis_tkeep[13]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[14] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[14]),
        .Q(m0_axis_tkeep[14]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[15] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[15]),
        .Q(m0_axis_tkeep[15]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[1] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[1]),
        .Q(m0_axis_tkeep[1]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[2] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[2]),
        .Q(m0_axis_tkeep[2]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[3] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[3]),
        .Q(m0_axis_tkeep[3]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[4] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[4]),
        .Q(m0_axis_tkeep[4]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[5] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[5]),
        .Q(m0_axis_tkeep[5]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[6] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[6]),
        .Q(m0_axis_tkeep[6]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[7] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[7]),
        .Q(m0_axis_tkeep[7]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[8] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[8]),
        .Q(m0_axis_tkeep[8]),
        .R(1'b0));
  FDRE \m0_axis_tkeep_reg[9] 
       (.C(clk),
        .CE(\m0_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[9]),
        .Q(m0_axis_tkeep[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    m0_axis_tlast_i_1
       (.I0(s_axis_tlast),
        .I1(mode_select),
        .O(m0_axis_tlast_i_1_n_0));
  FDRE m0_axis_tlast_reg
       (.C(clk),
        .CE(s_axis_tready),
        .D(m0_axis_tlast_i_1_n_0),
        .Q(m0_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m0_axis_tvalid_i_1
       (.I0(s_axis_tvalid),
        .I1(mode_select),
        .O(m0_axis_tvalid_i_1_n_0));
  FDRE m0_axis_tvalid_reg
       (.C(clk),
        .CE(s_axis_tready),
        .D(m0_axis_tvalid_i_1_n_0),
        .Q(m0_axis_tvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA808)) 
    \m1_axis_tdata[127]_i_1 
       (.I0(mode_select),
        .I1(m0_axis_tready),
        .I2(mode_select__0),
        .I3(m1_axis_tready),
        .O(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m1_axis_tdata[0]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[100] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[100]),
        .Q(m1_axis_tdata[100]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[101] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[101]),
        .Q(m1_axis_tdata[101]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[102] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[102]),
        .Q(m1_axis_tdata[102]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[103] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[103]),
        .Q(m1_axis_tdata[103]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[104] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[104]),
        .Q(m1_axis_tdata[104]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[105] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[105]),
        .Q(m1_axis_tdata[105]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[106] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[106]),
        .Q(m1_axis_tdata[106]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[107] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[107]),
        .Q(m1_axis_tdata[107]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[108] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[108]),
        .Q(m1_axis_tdata[108]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[109] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[109]),
        .Q(m1_axis_tdata[109]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m1_axis_tdata[10]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[110] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[110]),
        .Q(m1_axis_tdata[110]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[111] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[111]),
        .Q(m1_axis_tdata[111]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[112] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[112]),
        .Q(m1_axis_tdata[112]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[113] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[113]),
        .Q(m1_axis_tdata[113]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[114] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[114]),
        .Q(m1_axis_tdata[114]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[115] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[115]),
        .Q(m1_axis_tdata[115]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[116] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[116]),
        .Q(m1_axis_tdata[116]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[117] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[117]),
        .Q(m1_axis_tdata[117]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[118] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[118]),
        .Q(m1_axis_tdata[118]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[119] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[119]),
        .Q(m1_axis_tdata[119]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m1_axis_tdata[11]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[120] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[120]),
        .Q(m1_axis_tdata[120]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[121] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[121]),
        .Q(m1_axis_tdata[121]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[122] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[122]),
        .Q(m1_axis_tdata[122]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[123] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[123]),
        .Q(m1_axis_tdata[123]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[124] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[124]),
        .Q(m1_axis_tdata[124]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[125] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[125]),
        .Q(m1_axis_tdata[125]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[126] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[126]),
        .Q(m1_axis_tdata[126]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[127] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[127]),
        .Q(m1_axis_tdata[127]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m1_axis_tdata[12]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m1_axis_tdata[13]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m1_axis_tdata[14]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m1_axis_tdata[15]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[16] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m1_axis_tdata[16]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[17] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m1_axis_tdata[17]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[18] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m1_axis_tdata[18]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[19] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m1_axis_tdata[19]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m1_axis_tdata[1]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[20] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m1_axis_tdata[20]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[21] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m1_axis_tdata[21]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[22] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m1_axis_tdata[22]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[23] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m1_axis_tdata[23]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[24] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m1_axis_tdata[24]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[25] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m1_axis_tdata[25]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[26] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m1_axis_tdata[26]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[27] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m1_axis_tdata[27]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[28] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m1_axis_tdata[28]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[29] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m1_axis_tdata[29]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m1_axis_tdata[2]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[30] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m1_axis_tdata[30]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[31] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m1_axis_tdata[31]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[32] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[32]),
        .Q(m1_axis_tdata[32]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[33] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[33]),
        .Q(m1_axis_tdata[33]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[34] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[34]),
        .Q(m1_axis_tdata[34]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[35] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[35]),
        .Q(m1_axis_tdata[35]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[36] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[36]),
        .Q(m1_axis_tdata[36]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[37] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[37]),
        .Q(m1_axis_tdata[37]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[38] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[38]),
        .Q(m1_axis_tdata[38]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[39] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[39]),
        .Q(m1_axis_tdata[39]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m1_axis_tdata[3]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[40] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[40]),
        .Q(m1_axis_tdata[40]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[41] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[41]),
        .Q(m1_axis_tdata[41]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[42] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[42]),
        .Q(m1_axis_tdata[42]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[43] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[43]),
        .Q(m1_axis_tdata[43]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[44] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[44]),
        .Q(m1_axis_tdata[44]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[45] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[45]),
        .Q(m1_axis_tdata[45]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[46] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[46]),
        .Q(m1_axis_tdata[46]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[47] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[47]),
        .Q(m1_axis_tdata[47]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[48] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[48]),
        .Q(m1_axis_tdata[48]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[49] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[49]),
        .Q(m1_axis_tdata[49]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m1_axis_tdata[4]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[50] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[50]),
        .Q(m1_axis_tdata[50]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[51] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[51]),
        .Q(m1_axis_tdata[51]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[52] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[52]),
        .Q(m1_axis_tdata[52]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[53] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[53]),
        .Q(m1_axis_tdata[53]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[54] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[54]),
        .Q(m1_axis_tdata[54]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[55] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[55]),
        .Q(m1_axis_tdata[55]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[56] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[56]),
        .Q(m1_axis_tdata[56]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[57] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[57]),
        .Q(m1_axis_tdata[57]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[58] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[58]),
        .Q(m1_axis_tdata[58]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[59] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[59]),
        .Q(m1_axis_tdata[59]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m1_axis_tdata[5]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[60] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[60]),
        .Q(m1_axis_tdata[60]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[61] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[61]),
        .Q(m1_axis_tdata[61]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[62] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[62]),
        .Q(m1_axis_tdata[62]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[63] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[63]),
        .Q(m1_axis_tdata[63]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[64] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[64]),
        .Q(m1_axis_tdata[64]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[65] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[65]),
        .Q(m1_axis_tdata[65]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[66] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[66]),
        .Q(m1_axis_tdata[66]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[67] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[67]),
        .Q(m1_axis_tdata[67]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[68] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[68]),
        .Q(m1_axis_tdata[68]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[69] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[69]),
        .Q(m1_axis_tdata[69]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m1_axis_tdata[6]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[70] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[70]),
        .Q(m1_axis_tdata[70]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[71] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[71]),
        .Q(m1_axis_tdata[71]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[72] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[72]),
        .Q(m1_axis_tdata[72]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[73] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[73]),
        .Q(m1_axis_tdata[73]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[74] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[74]),
        .Q(m1_axis_tdata[74]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[75] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[75]),
        .Q(m1_axis_tdata[75]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[76] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[76]),
        .Q(m1_axis_tdata[76]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[77] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[77]),
        .Q(m1_axis_tdata[77]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[78] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[78]),
        .Q(m1_axis_tdata[78]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[79] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[79]),
        .Q(m1_axis_tdata[79]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m1_axis_tdata[7]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[80] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[80]),
        .Q(m1_axis_tdata[80]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[81] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[81]),
        .Q(m1_axis_tdata[81]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[82] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[82]),
        .Q(m1_axis_tdata[82]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[83] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[83]),
        .Q(m1_axis_tdata[83]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[84] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[84]),
        .Q(m1_axis_tdata[84]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[85] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[85]),
        .Q(m1_axis_tdata[85]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[86] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[86]),
        .Q(m1_axis_tdata[86]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[87] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[87]),
        .Q(m1_axis_tdata[87]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[88] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[88]),
        .Q(m1_axis_tdata[88]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[89] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[89]),
        .Q(m1_axis_tdata[89]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m1_axis_tdata[8]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[90] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[90]),
        .Q(m1_axis_tdata[90]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[91] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[91]),
        .Q(m1_axis_tdata[91]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[92] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[92]),
        .Q(m1_axis_tdata[92]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[93] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[93]),
        .Q(m1_axis_tdata[93]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[94] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[94]),
        .Q(m1_axis_tdata[94]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[95] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[95]),
        .Q(m1_axis_tdata[95]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[96] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[96]),
        .Q(m1_axis_tdata[96]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[97] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[97]),
        .Q(m1_axis_tdata[97]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[98] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[98]),
        .Q(m1_axis_tdata[98]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[99] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[99]),
        .Q(m1_axis_tdata[99]),
        .R(1'b0));
  FDRE \m1_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m1_axis_tdata[9]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[0] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[0]),
        .Q(m1_axis_tdest[0]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[10] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[10]),
        .Q(m1_axis_tdest[10]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[1] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[1]),
        .Q(m1_axis_tdest[1]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[2] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[2]),
        .Q(m1_axis_tdest[2]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[3] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[3]),
        .Q(m1_axis_tdest[3]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[4] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[4]),
        .Q(m1_axis_tdest[4]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[5] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[5]),
        .Q(m1_axis_tdest[5]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[6] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[6]),
        .Q(m1_axis_tdest[6]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[7] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[7]),
        .Q(m1_axis_tdest[7]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[8] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[8]),
        .Q(m1_axis_tdest[8]),
        .R(1'b0));
  FDRE \m1_axis_tdest_reg[9] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tdest[9]),
        .Q(m1_axis_tdest[9]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[0] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[0]),
        .Q(m1_axis_tkeep[0]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[10] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[10]),
        .Q(m1_axis_tkeep[10]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[11] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[11]),
        .Q(m1_axis_tkeep[11]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[12] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[12]),
        .Q(m1_axis_tkeep[12]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[13] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[13]),
        .Q(m1_axis_tkeep[13]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[14] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[14]),
        .Q(m1_axis_tkeep[14]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[15] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[15]),
        .Q(m1_axis_tkeep[15]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[1] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[1]),
        .Q(m1_axis_tkeep[1]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[2] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[2]),
        .Q(m1_axis_tkeep[2]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[3] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[3]),
        .Q(m1_axis_tkeep[3]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[4] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[4]),
        .Q(m1_axis_tkeep[4]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[5] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[5]),
        .Q(m1_axis_tkeep[5]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[6] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[6]),
        .Q(m1_axis_tkeep[6]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[7] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[7]),
        .Q(m1_axis_tkeep[7]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[8] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[8]),
        .Q(m1_axis_tkeep[8]),
        .R(1'b0));
  FDRE \m1_axis_tkeep_reg[9] 
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tkeep[9]),
        .Q(m1_axis_tkeep[9]),
        .R(1'b0));
  FDRE m1_axis_tlast_reg
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tlast),
        .Q(m1_axis_tlast),
        .R(\m0_axis_tdata[127]_i_1_n_0 ));
  FDRE m1_axis_tvalid_reg
       (.C(clk),
        .CE(\m1_axis_tdata[127]_i_1_n_0 ),
        .D(s_axis_tvalid),
        .Q(m1_axis_tvalid),
        .R(\m0_axis_tdata[127]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    mode_select_reg
       (.CLR(\FSM_onehot_mode_state_reg_n_0_[0] ),
        .D(1'b1),
        .G(mode_select__0),
        .GE(1'b1),
        .Q(mode_select));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axis_tready_INST_0
       (.I0(m1_axis_tready),
        .I1(mode_select__0),
        .I2(m0_axis_tready),
        .O(s_axis_tready));
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
