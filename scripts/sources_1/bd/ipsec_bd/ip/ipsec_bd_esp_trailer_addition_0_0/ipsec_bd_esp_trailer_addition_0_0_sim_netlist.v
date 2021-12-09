// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:19:40 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_esp_trailer_addition_0_0/ipsec_bd_esp_trailer_addition_0_0_sim_netlist.v
// Design      : ipsec_bd_esp_trailer_addition_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_esp_trailer_addition_0_0,esp_trailer_addition,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "esp_trailer_addition,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_esp_trailer_addition_0_0
   (s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    length_bytes_o,
    length_valid_o,
    s_axis_aclk,
    s_axis_aresetn);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [15:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [15:0]s_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [15:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  output [15:0]length_bytes_o;
  output length_valid_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_qdma_0_0_axi_aclk, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;

  wire \<const1> ;
  wire [15:0]length_bytes_o;
  wire length_valid_o;
  wire [127:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [127:0]s_axis_tdata;
  wire [15:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tkeep[15] = \<const1> ;
  assign m_axis_tkeep[14] = \<const1> ;
  assign m_axis_tkeep[13] = \<const1> ;
  assign m_axis_tkeep[12] = \<const1> ;
  assign m_axis_tkeep[11] = \<const1> ;
  assign m_axis_tkeep[10] = \<const1> ;
  assign m_axis_tkeep[9] = \<const1> ;
  assign m_axis_tkeep[8] = \<const1> ;
  assign m_axis_tkeep[7] = \<const1> ;
  assign m_axis_tkeep[6] = \<const1> ;
  assign m_axis_tkeep[5] = \<const1> ;
  assign m_axis_tkeep[4] = \<const1> ;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  ipsec_bd_esp_trailer_addition_0_0_esp_trailer_addition U0
       (.length_bytes_o(length_bytes_o),
        .length_valid_o(length_valid_o),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "esp_trailer_addition" *) 
module ipsec_bd_esp_trailer_addition_0_0_esp_trailer_addition
   (s_axis_tready,
    length_bytes_o,
    m_axis_tlast,
    length_valid_o,
    m_axis_tvalid,
    m_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    m_axis_tready,
    s_axis_aclk,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_aresetn);
  output s_axis_tready;
  output [15:0]length_bytes_o;
  output m_axis_tlast;
  output length_valid_o;
  output m_axis_tvalid;
  output [127:0]m_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [15:0]s_axis_tdest;
  input m_axis_tready;
  input s_axis_aclk;
  input [127:0]s_axis_tdata;
  input s_axis_tlast;
  input s_axis_tvalid;
  input s_axis_aresetn;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [127:0]data_pad_0;
  wire \data_pad_0[103]_i_1_n_0 ;
  wire \data_pad_0[103]_i_2_n_0 ;
  wire \data_pad_0[103]_i_3_n_0 ;
  wire \data_pad_0[103]_i_4_n_0 ;
  wire \data_pad_0[111]_i_1_n_0 ;
  wire \data_pad_0[111]_i_2_n_0 ;
  wire \data_pad_0[115]_i_2_n_0 ;
  wire \data_pad_0[115]_i_3_n_0 ;
  wire \data_pad_0[115]_i_4_n_0 ;
  wire \data_pad_0[115]_i_5_n_0 ;
  wire \data_pad_0[115]_i_6_n_0 ;
  wire \data_pad_0[119]_i_1_n_0 ;
  wire \data_pad_0[120]_i_1_n_0 ;
  wire \data_pad_0[121]_i_1_n_0 ;
  wire \data_pad_0[122]_i_1_n_0 ;
  wire \data_pad_0[123]_i_1_n_0 ;
  wire \data_pad_0[125]_i_1_n_0 ;
  wire \data_pad_0[125]_i_2_n_0 ;
  wire \data_pad_0[125]_i_3_n_0 ;
  wire \data_pad_0[127]_i_1_n_0 ;
  wire \data_pad_0[127]_i_3_n_0 ;
  wire \data_pad_0[15]_i_1_n_0 ;
  wire \data_pad_0[23]_i_1_n_0 ;
  wire \data_pad_0[31]_i_1_n_0 ;
  wire \data_pad_0[39]_i_1_n_0 ;
  wire \data_pad_0[47]_i_1_n_0 ;
  wire \data_pad_0[47]_i_2_n_0 ;
  wire \data_pad_0[55]_i_1_n_0 ;
  wire \data_pad_0[55]_i_2_n_0 ;
  wire \data_pad_0[63]_i_1_n_0 ;
  wire \data_pad_0[71]_i_1_n_0 ;
  wire \data_pad_0[71]_i_2_n_0 ;
  wire \data_pad_0[71]_i_3_n_0 ;
  wire \data_pad_0[79]_i_1_n_0 ;
  wire \data_pad_0[87]_i_1_n_0 ;
  wire \data_pad_0[95]_i_1_n_0 ;
  wire \data_pad_0[95]_i_2_n_0 ;
  wire [127:112]data_pad_0_0;
  wire [125:125]data_pad_1;
  wire \data_pad_1[115]_i_1_n_0 ;
  wire \data_pad_1_reg_n_0_[112] ;
  wire \data_pad_1_reg_n_0_[113] ;
  wire \data_pad_1_reg_n_0_[114] ;
  wire \data_pad_1_reg_n_0_[115] ;
  wire \data_pad_1_reg_n_0_[125] ;
  wire data_pad_sig;
  wire data_pad_sig_i_1_n_0;
  wire data_pad_sig_i_2_n_0;
  wire data_pad_sig_i_3_n_0;
  wire [15:0]length_bytes_o;
  wire length_valid_o;
  wire [127:0]m_axis_tdata;
  wire \m_axis_tdata[115]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[125]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_0 ;
  wire [127:0]m_axis_tdata_s;
  wire \m_axis_tdata_s[127]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_s;
  wire m_axis_tlast_s_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_s_i_1_n_0;
  wire p_0_in;
  wire p_0_in0_in;
  wire [15:0]plusOp;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire plusOp_carry_i_6_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [127:0]s_axis_tdata;
  wire [15:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]zero_pad_len;
  wire zero_pad_len0;
  wire [3:0]zero_pad_len__0;
  wire \zero_pad_len_reg[0]_i_2_n_0 ;
  wire \zero_pad_len_reg[0]_i_3_n_0 ;
  wire \zero_pad_len_reg[0]_i_4_n_0 ;
  wire \zero_pad_len_reg[0]_i_5_n_0 ;
  wire \zero_pad_len_reg[0]_i_6_n_0 ;
  wire \zero_pad_len_reg[1]_i_2_n_0 ;
  wire \zero_pad_len_reg[1]_i_3_n_0 ;
  wire \zero_pad_len_reg[1]_i_4_n_0 ;
  wire \zero_pad_len_reg[1]_i_5_n_0 ;
  wire \zero_pad_len_reg[1]_i_6_n_0 ;
  wire \zero_pad_len_reg[1]_i_7_n_0 ;
  wire \zero_pad_len_reg[2]_i_2_n_0 ;
  wire \zero_pad_len_reg[2]_i_3_n_0 ;
  wire \zero_pad_len_reg[2]_i_4_n_0 ;
  wire \zero_pad_len_reg[2]_i_5_n_0 ;
  wire \zero_pad_len_reg[2]_i_6_n_0 ;
  wire \zero_pad_len_reg[3]_i_3_n_0 ;
  wire \zero_pad_len_reg[3]_i_4_n_0 ;
  wire \zero_pad_len_reg[3]_i_5_n_0 ;
  wire [7:7]NLW_plusOp_carry__0_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axis_tkeep[14]),
        .I1(s_axis_tkeep[15]),
        .I2(zero_pad_len0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .I5(p_0_in0_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880888088800000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(p_0_in),
        .I3(m_axis_tlast_s),
        .I4(s_axis_tkeep[15]),
        .I5(s_axis_tkeep[14]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0EEE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_0_in),
        .I1(m_axis_tlast_s),
        .I2(s_axis_tlast),
        .I3(s_axis_tvalid),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axis_aresetn),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:1000,len_hdr_pad:0001,data:0100,data_pad:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axis_aclk),
        .CE(m_axis_tready),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:1000,len_hdr_pad:0001,data:0100,data_pad:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axis_aclk),
        .CE(m_axis_tready),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:1000,len_hdr_pad:0001,data:0100,data_pad:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axis_aclk),
        .CE(m_axis_tready),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(m_axis_tlast_s),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:1000,len_hdr_pad:0001,data:0100,data_pad:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axis_aclk),
        .CE(m_axis_tready),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .S(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_pad_0[103]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[103]_i_2_n_0 ),
        .I2(\data_pad_0[103]_i_3_n_0 ),
        .I3(s_axis_tkeep[12]),
        .I4(\data_pad_0[103]_i_4_n_0 ),
        .O(\data_pad_0[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2EFE)) 
    \data_pad_0[103]_i_2 
       (.I0(s_axis_tkeep[11]),
        .I1(s_axis_tkeep[10]),
        .I2(s_axis_tkeep[9]),
        .I3(s_axis_tkeep[8]),
        .O(\data_pad_0[103]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAEFE)) 
    \data_pad_0[103]_i_3 
       (.I0(\data_pad_0[71]_i_3_n_0 ),
        .I1(s_axis_tkeep[8]),
        .I2(s_axis_tkeep[7]),
        .I3(s_axis_tkeep[6]),
        .O(\data_pad_0[103]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \data_pad_0[103]_i_4 
       (.I0(s_axis_tkeep[0]),
        .I1(s_axis_tkeep[14]),
        .I2(s_axis_tkeep[15]),
        .I3(s_axis_tkeep[13]),
        .O(\data_pad_0[103]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \data_pad_0[111]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[0]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[15]),
        .I4(s_axis_tkeep[13]),
        .I5(\data_pad_0[111]_i_2_n_0 ),
        .O(\data_pad_0[111]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF2EFE)) 
    \data_pad_0[111]_i_2 
       (.I0(s_axis_tkeep[11]),
        .I1(s_axis_tkeep[10]),
        .I2(s_axis_tkeep[9]),
        .I3(s_axis_tkeep[8]),
        .I4(s_axis_tkeep[12]),
        .I5(\data_pad_0[103]_i_3_n_0 ),
        .O(\data_pad_0[111]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F888)) 
    \data_pad_0[112]_i_1 
       (.I0(s_axis_tdata[112]),
        .I1(\data_pad_0[115]_i_2_n_0 ),
        .I2(zero_pad_len[0]),
        .I3(\data_pad_0[115]_i_3_n_0 ),
        .I4(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I5(\data_pad_0[115]_i_4_n_0 ),
        .O(data_pad_0_0[112]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F888)) 
    \data_pad_0[113]_i_1 
       (.I0(s_axis_tdata[113]),
        .I1(\data_pad_0[115]_i_2_n_0 ),
        .I2(zero_pad_len[1]),
        .I3(\data_pad_0[115]_i_3_n_0 ),
        .I4(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I5(\data_pad_0[115]_i_4_n_0 ),
        .O(data_pad_0_0[113]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F888)) 
    \data_pad_0[114]_i_1 
       (.I0(s_axis_tdata[114]),
        .I1(\data_pad_0[115]_i_2_n_0 ),
        .I2(zero_pad_len[2]),
        .I3(\data_pad_0[115]_i_3_n_0 ),
        .I4(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I5(\data_pad_0[115]_i_4_n_0 ),
        .O(data_pad_0_0[114]));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F888)) 
    \data_pad_0[115]_i_1 
       (.I0(s_axis_tdata[115]),
        .I1(\data_pad_0[115]_i_2_n_0 ),
        .I2(zero_pad_len[3]),
        .I3(\data_pad_0[115]_i_3_n_0 ),
        .I4(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I5(\data_pad_0[115]_i_4_n_0 ),
        .O(data_pad_0_0[115]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFAE)) 
    \data_pad_0[115]_i_2 
       (.I0(\data_pad_0[103]_i_2_n_0 ),
        .I1(s_axis_tkeep[12]),
        .I2(s_axis_tkeep[11]),
        .I3(\data_pad_0[103]_i_3_n_0 ),
        .I4(s_axis_tkeep[13]),
        .I5(\data_pad_0[115]_i_5_n_0 ),
        .O(\data_pad_0[115]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000023010001)) 
    \data_pad_0[115]_i_3 
       (.I0(s_axis_tkeep[12]),
        .I1(\data_pad_0[115]_i_5_n_0 ),
        .I2(s_axis_tkeep[13]),
        .I3(s_axis_tkeep[11]),
        .I4(s_axis_tkeep[10]),
        .I5(\data_pad_0[115]_i_6_n_0 ),
        .O(\data_pad_0[115]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008B0000)) 
    \data_pad_0[115]_i_4 
       (.I0(s_axis_tkeep[6]),
        .I1(s_axis_tkeep[7]),
        .I2(s_axis_tkeep[8]),
        .I3(\zero_pad_len_reg[3]_i_5_n_0 ),
        .I4(s_axis_tkeep[5]),
        .I5(\data_pad_0[71]_i_2_n_0 ),
        .O(\data_pad_0[115]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_pad_0[115]_i_5 
       (.I0(s_axis_tkeep[15]),
        .I1(s_axis_tkeep[14]),
        .I2(s_axis_tkeep[0]),
        .O(\data_pad_0[115]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \data_pad_0[115]_i_6 
       (.I0(\zero_pad_len_reg[2]_i_4_n_0 ),
        .I1(s_axis_tkeep[7]),
        .I2(s_axis_tkeep[8]),
        .I3(s_axis_tkeep[9]),
        .O(\data_pad_0[115]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_pad_0[119]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[115]_i_2_n_0 ),
        .O(\data_pad_0[119]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pad_0[120]_i_1 
       (.I0(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I1(s_axis_tdata[120]),
        .O(\data_pad_0[120]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pad_0[121]_i_1 
       (.I0(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I1(s_axis_tdata[121]),
        .O(\data_pad_0[121]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pad_0[122]_i_1 
       (.I0(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I1(s_axis_tdata[122]),
        .O(\data_pad_0[122]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pad_0[123]_i_1 
       (.I0(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I1(s_axis_tdata[123]),
        .O(\data_pad_0[123]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFF00000000)) 
    \data_pad_0[124]_i_1 
       (.I0(\data_pad_0[127]_i_3_n_0 ),
        .I1(s_axis_tkeep[15]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[13]),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tdata[124]),
        .O(data_pad_0_0[124]));
  LUT6 #(
    .INIT(64'hEEEEFEEE00000000)) 
    \data_pad_0[125]_i_1 
       (.I0(\data_pad_0[115]_i_4_n_0 ),
        .I1(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I2(\data_pad_0[125]_i_3_n_0 ),
        .I3(s_axis_tkeep[9]),
        .I4(\zero_pad_len_reg[2]_i_6_n_0 ),
        .I5(\data_pad_0[127]_i_1_n_0 ),
        .O(\data_pad_0[125]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_pad_0[125]_i_2 
       (.I0(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I1(s_axis_tdata[125]),
        .O(\data_pad_0[125]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00880000000B0000)) 
    \data_pad_0[125]_i_3 
       (.I0(s_axis_tkeep[10]),
        .I1(s_axis_tkeep[11]),
        .I2(s_axis_tkeep[13]),
        .I3(data_pad_sig_i_3_n_0),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tkeep[12]),
        .O(\data_pad_0[125]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFF00000000)) 
    \data_pad_0[126]_i_1 
       (.I0(\data_pad_0[127]_i_3_n_0 ),
        .I1(s_axis_tkeep[15]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[13]),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tdata[126]),
        .O(data_pad_0_0[126]));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_pad_0[127]_i_1 
       (.I0(m_axis_tlast_s),
        .I1(p_0_in),
        .I2(s_axis_tlast),
        .O(\data_pad_0[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFF00000000)) 
    \data_pad_0[127]_i_2 
       (.I0(\data_pad_0[127]_i_3_n_0 ),
        .I1(s_axis_tkeep[15]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[13]),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tdata[127]),
        .O(data_pad_0_0[127]));
  LUT5 #(
    .INIT(32'hFFFFCFEE)) 
    \data_pad_0[127]_i_3 
       (.I0(s_axis_tkeep[13]),
        .I1(\data_pad_0[103]_i_3_n_0 ),
        .I2(s_axis_tkeep[11]),
        .I3(s_axis_tkeep[12]),
        .I4(\data_pad_0[103]_i_2_n_0 ),
        .O(\data_pad_0[127]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_pad_0[15]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[1]),
        .I2(s_axis_tkeep[3]),
        .I3(\data_pad_0[47]_i_2_n_0 ),
        .I4(s_axis_tkeep[4]),
        .I5(s_axis_tkeep[2]),
        .O(\data_pad_0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_pad_0[23]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[2]),
        .I2(s_axis_tkeep[4]),
        .I3(\data_pad_0[47]_i_2_n_0 ),
        .I4(s_axis_tkeep[3]),
        .O(\data_pad_0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200000002)) 
    \data_pad_0[31]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[4]),
        .I2(\data_pad_0[47]_i_2_n_0 ),
        .I3(s_axis_tkeep[3]),
        .I4(s_axis_tkeep[2]),
        .I5(s_axis_tkeep[1]),
        .O(\data_pad_0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000002000202)) 
    \data_pad_0[39]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[47]_i_2_n_0 ),
        .I2(s_axis_tkeep[4]),
        .I3(s_axis_tkeep[1]),
        .I4(s_axis_tkeep[2]),
        .I5(s_axis_tkeep[3]),
        .O(\data_pad_0[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020002000000022)) 
    \data_pad_0[47]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[47]_i_2_n_0 ),
        .I2(s_axis_tkeep[1]),
        .I3(s_axis_tkeep[4]),
        .I4(s_axis_tkeep[3]),
        .I5(s_axis_tkeep[2]),
        .O(\data_pad_0[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_pad_0[47]_i_2 
       (.I0(s_axis_tkeep[6]),
        .I1(s_axis_tkeep[8]),
        .I2(\data_pad_0[71]_i_2_n_0 ),
        .I3(s_axis_tkeep[7]),
        .I4(s_axis_tkeep[5]),
        .O(\data_pad_0[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0202000200000002)) 
    \data_pad_0[55]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\zero_pad_len_reg[3]_i_4_n_0 ),
        .I2(\data_pad_0[55]_i_2_n_0 ),
        .I3(s_axis_tkeep[4]),
        .I4(s_axis_tkeep[3]),
        .I5(s_axis_tkeep[2]),
        .O(\data_pad_0[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \data_pad_0[55]_i_2 
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[2]),
        .I2(s_axis_tkeep[4]),
        .I3(s_axis_tkeep[5]),
        .O(\data_pad_0[55]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_pad_0[63]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[8]),
        .I2(\data_pad_0[71]_i_2_n_0 ),
        .I3(s_axis_tkeep[7]),
        .I4(\data_pad_0[71]_i_3_n_0 ),
        .O(\data_pad_0[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000202)) 
    \data_pad_0[71]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[71]_i_2_n_0 ),
        .I2(s_axis_tkeep[8]),
        .I3(s_axis_tkeep[6]),
        .I4(s_axis_tkeep[7]),
        .I5(\data_pad_0[71]_i_3_n_0 ),
        .O(\data_pad_0[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_pad_0[71]_i_2 
       (.I0(s_axis_tkeep[10]),
        .I1(\data_pad_0[95]_i_2_n_0 ),
        .I2(s_axis_tkeep[9]),
        .O(\data_pad_0[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5DFCFFFEFFFFFFFE)) 
    \data_pad_0[71]_i_3 
       (.I0(s_axis_tkeep[3]),
        .I1(s_axis_tkeep[6]),
        .I2(s_axis_tkeep[5]),
        .I3(s_axis_tkeep[4]),
        .I4(s_axis_tkeep[2]),
        .I5(s_axis_tkeep[1]),
        .O(\data_pad_0[71]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_pad_0[79]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(s_axis_tkeep[10]),
        .I2(\data_pad_0[95]_i_2_n_0 ),
        .I3(s_axis_tkeep[9]),
        .I4(\data_pad_0[103]_i_3_n_0 ),
        .O(\data_pad_0[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000202)) 
    \data_pad_0[87]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[95]_i_2_n_0 ),
        .I2(s_axis_tkeep[10]),
        .I3(s_axis_tkeep[8]),
        .I4(s_axis_tkeep[9]),
        .I5(\data_pad_0[103]_i_3_n_0 ),
        .O(\data_pad_0[87]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202000200000002)) 
    \data_pad_0[95]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(\data_pad_0[95]_i_2_n_0 ),
        .I2(\data_pad_0[103]_i_3_n_0 ),
        .I3(s_axis_tkeep[10]),
        .I4(s_axis_tkeep[9]),
        .I5(s_axis_tkeep[8]),
        .O(\data_pad_0[95]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \data_pad_0[95]_i_2 
       (.I0(s_axis_tkeep[12]),
        .I1(s_axis_tkeep[0]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[15]),
        .I4(s_axis_tkeep[13]),
        .I5(s_axis_tkeep[11]),
        .O(\data_pad_0[95]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[0] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(data_pad_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[100] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[100]),
        .Q(data_pad_0[100]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[101] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[101]),
        .Q(data_pad_0[101]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[102] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[102]),
        .Q(data_pad_0[102]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[103] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[103]),
        .Q(data_pad_0[103]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[104] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[104]),
        .Q(data_pad_0[104]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[105] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[105]),
        .Q(data_pad_0[105]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[106] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[106]),
        .Q(data_pad_0[106]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[107] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[107]),
        .Q(data_pad_0[107]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[108] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[108]),
        .Q(data_pad_0[108]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[109] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[109]),
        .Q(data_pad_0[109]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[10] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(data_pad_0[10]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[110] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[110]),
        .Q(data_pad_0[110]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[111] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[111]),
        .Q(data_pad_0[111]),
        .R(\data_pad_0[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[112] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[112]),
        .Q(data_pad_0[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[113] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[113]),
        .Q(data_pad_0[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[114] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[114]),
        .Q(data_pad_0[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[115] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[115]),
        .Q(data_pad_0[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[116] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[116]),
        .Q(data_pad_0[116]),
        .R(\data_pad_0[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[117] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[117]),
        .Q(data_pad_0[117]),
        .R(\data_pad_0[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[118] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[118]),
        .Q(data_pad_0[118]),
        .R(\data_pad_0[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[119] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[119]),
        .Q(data_pad_0[119]),
        .R(\data_pad_0[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[11] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(data_pad_0[11]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[120] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(\data_pad_0[120]_i_1_n_0 ),
        .Q(data_pad_0[120]),
        .S(\data_pad_0[125]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[121] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(\data_pad_0[121]_i_1_n_0 ),
        .Q(data_pad_0[121]),
        .S(\data_pad_0[125]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[122] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(\data_pad_0[122]_i_1_n_0 ),
        .Q(data_pad_0[122]),
        .S(\data_pad_0[125]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[123] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(\data_pad_0[123]_i_1_n_0 ),
        .Q(data_pad_0[123]),
        .S(\data_pad_0[125]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[124] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[124]),
        .Q(data_pad_0[124]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[125] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(\data_pad_0[125]_i_2_n_0 ),
        .Q(data_pad_0[125]),
        .S(\data_pad_0[125]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[126] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[126]),
        .Q(data_pad_0[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[127] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_0_0[127]),
        .Q(data_pad_0[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[12] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(data_pad_0[12]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[13] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(data_pad_0[13]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[14] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(data_pad_0[14]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[15] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(data_pad_0[15]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[16] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(data_pad_0[16]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[17] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(data_pad_0[17]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[18] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(data_pad_0[18]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[19] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(data_pad_0[19]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[1] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(data_pad_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[20] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(data_pad_0[20]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[21] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(data_pad_0[21]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[22] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(data_pad_0[22]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[23] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(data_pad_0[23]),
        .R(\data_pad_0[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[24] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(data_pad_0[24]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[25] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(data_pad_0[25]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[26] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(data_pad_0[26]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[27] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(data_pad_0[27]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[28] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(data_pad_0[28]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[29] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(data_pad_0[29]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[2] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(data_pad_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[30] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(data_pad_0[30]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[31] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(data_pad_0[31]),
        .R(\data_pad_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[32] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[32]),
        .Q(data_pad_0[32]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[33] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[33]),
        .Q(data_pad_0[33]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[34] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[34]),
        .Q(data_pad_0[34]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[35] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[35]),
        .Q(data_pad_0[35]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[36] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[36]),
        .Q(data_pad_0[36]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[37] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[37]),
        .Q(data_pad_0[37]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[38] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[38]),
        .Q(data_pad_0[38]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[39] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[39]),
        .Q(data_pad_0[39]),
        .R(\data_pad_0[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[3] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(data_pad_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[40] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[40]),
        .Q(data_pad_0[40]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[41] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[41]),
        .Q(data_pad_0[41]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[42] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[42]),
        .Q(data_pad_0[42]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[43] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[43]),
        .Q(data_pad_0[43]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[44] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[44]),
        .Q(data_pad_0[44]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[45] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[45]),
        .Q(data_pad_0[45]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[46] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[46]),
        .Q(data_pad_0[46]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[47] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[47]),
        .Q(data_pad_0[47]),
        .R(\data_pad_0[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[48] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[48]),
        .Q(data_pad_0[48]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[49] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[49]),
        .Q(data_pad_0[49]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[4] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(data_pad_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[50] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[50]),
        .Q(data_pad_0[50]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[51] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[51]),
        .Q(data_pad_0[51]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[52] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[52]),
        .Q(data_pad_0[52]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[53] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[53]),
        .Q(data_pad_0[53]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[54] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[54]),
        .Q(data_pad_0[54]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[55] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[55]),
        .Q(data_pad_0[55]),
        .R(\data_pad_0[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[56] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[56]),
        .Q(data_pad_0[56]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[57] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[57]),
        .Q(data_pad_0[57]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[58] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[58]),
        .Q(data_pad_0[58]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[59] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[59]),
        .Q(data_pad_0[59]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[5] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(data_pad_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[60] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[60]),
        .Q(data_pad_0[60]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[61] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[61]),
        .Q(data_pad_0[61]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[62] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[62]),
        .Q(data_pad_0[62]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[63] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[63]),
        .Q(data_pad_0[63]),
        .R(\data_pad_0[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[64] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[64]),
        .Q(data_pad_0[64]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[65] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[65]),
        .Q(data_pad_0[65]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[66] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[66]),
        .Q(data_pad_0[66]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[67] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[67]),
        .Q(data_pad_0[67]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[68] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[68]),
        .Q(data_pad_0[68]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[69] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[69]),
        .Q(data_pad_0[69]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[6] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(data_pad_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[70] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[70]),
        .Q(data_pad_0[70]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[71] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[71]),
        .Q(data_pad_0[71]),
        .R(\data_pad_0[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[72] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[72]),
        .Q(data_pad_0[72]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[73] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[73]),
        .Q(data_pad_0[73]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[74] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[74]),
        .Q(data_pad_0[74]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[75] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[75]),
        .Q(data_pad_0[75]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[76] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[76]),
        .Q(data_pad_0[76]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[77] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[77]),
        .Q(data_pad_0[77]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[78] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[78]),
        .Q(data_pad_0[78]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[79] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[79]),
        .Q(data_pad_0[79]),
        .R(\data_pad_0[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[7] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(data_pad_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[80] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[80]),
        .Q(data_pad_0[80]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[81] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[81]),
        .Q(data_pad_0[81]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[82] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[82]),
        .Q(data_pad_0[82]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[83] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[83]),
        .Q(data_pad_0[83]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[84] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[84]),
        .Q(data_pad_0[84]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[85] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[85]),
        .Q(data_pad_0[85]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[86] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[86]),
        .Q(data_pad_0[86]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[87] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[87]),
        .Q(data_pad_0[87]),
        .R(\data_pad_0[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[88] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[88]),
        .Q(data_pad_0[88]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[89] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[89]),
        .Q(data_pad_0[89]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[8] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(data_pad_0[8]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[90] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[90]),
        .Q(data_pad_0[90]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[91] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[91]),
        .Q(data_pad_0[91]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[92] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[92]),
        .Q(data_pad_0[92]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[93] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[93]),
        .Q(data_pad_0[93]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[94] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[94]),
        .Q(data_pad_0[94]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[95] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[95]),
        .Q(data_pad_0[95]),
        .R(\data_pad_0[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[96] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[96]),
        .Q(data_pad_0[96]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[97] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[97]),
        .Q(data_pad_0[97]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[98] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[98]),
        .Q(data_pad_0[98]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[99] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[99]),
        .Q(data_pad_0[99]),
        .R(\data_pad_0[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_0_reg[9] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(data_pad_0[9]),
        .R(\data_pad_0[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_pad_1[115]_i_1 
       (.I0(\data_pad_0[127]_i_1_n_0 ),
        .I1(data_pad_1),
        .O(\data_pad_1[115]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \data_pad_1[125]_i_1 
       (.I0(s_axis_tkeep[14]),
        .I1(s_axis_tkeep[12]),
        .I2(s_axis_tkeep[11]),
        .I3(\zero_pad_len_reg[1]_i_3_n_0 ),
        .I4(s_axis_tkeep[0]),
        .I5(s_axis_tkeep[13]),
        .O(data_pad_1));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_1_reg[112] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(zero_pad_len[0]),
        .Q(\data_pad_1_reg_n_0_[112] ),
        .R(\data_pad_1[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_1_reg[113] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(zero_pad_len[1]),
        .Q(\data_pad_1_reg_n_0_[113] ),
        .R(\data_pad_1[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_1_reg[114] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(zero_pad_len[2]),
        .Q(\data_pad_1_reg_n_0_[114] ),
        .R(\data_pad_1[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_1_reg[115] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(zero_pad_len[3]),
        .Q(\data_pad_1_reg_n_0_[115] ),
        .R(\data_pad_1[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pad_1_reg[125] 
       (.C(s_axis_aclk),
        .CE(\data_pad_0[127]_i_1_n_0 ),
        .D(data_pad_1),
        .Q(\data_pad_1_reg_n_0_[125] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h44EFEFEF44444040)) 
    data_pad_sig_i_1
       (.I0(data_pad_sig_i_2_n_0),
        .I1(data_pad_sig_i_3_n_0),
        .I2(m_axis_tlast_s),
        .I3(m_axis_tready),
        .I4(p_0_in),
        .I5(data_pad_sig),
        .O(data_pad_sig_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_pad_sig_i_2
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .O(data_pad_sig_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    data_pad_sig_i_3
       (.I0(s_axis_tkeep[14]),
        .I1(s_axis_tkeep[15]),
        .O(data_pad_sig_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_pad_sig_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(data_pad_sig_i_1_n_0),
        .Q(data_pad_sig),
        .R(1'b0));
  FDRE \length_bytes_o_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(length_bytes_o[0]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[10] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(length_bytes_o[10]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[11] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(length_bytes_o[11]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[12] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(length_bytes_o[12]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[13] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(length_bytes_o[13]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[14] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(length_bytes_o[14]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[15] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(length_bytes_o[15]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(length_bytes_o[1]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(length_bytes_o[2]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[3] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(length_bytes_o[3]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[4] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(length_bytes_o[4]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[5] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(length_bytes_o[5]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[6] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(length_bytes_o[6]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[7] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(length_bytes_o[7]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[8] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(length_bytes_o[8]),
        .R(1'b0));
  FDRE \length_bytes_o_reg[9] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(length_bytes_o[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    length_valid_o_INST_0
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .I2(m_axis_tlast),
        .O(length_valid_o));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[0]),
        .I2(data_pad_0[0]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[100]),
        .I2(data_pad_0[100]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[100]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[101]),
        .I2(data_pad_0[101]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[101]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[102]),
        .I2(data_pad_0[102]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[102]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[103]),
        .I2(data_pad_0[103]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[103]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[104]),
        .I2(data_pad_0[104]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[104]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[105]),
        .I2(data_pad_0[105]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[105]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[106]),
        .I2(data_pad_0[106]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[106]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[107]),
        .I2(data_pad_0[107]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[107]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[108]),
        .I2(data_pad_0[108]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[108]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[109]),
        .I2(data_pad_0[109]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[109]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[10]),
        .I2(data_pad_0[10]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[110]),
        .I2(data_pad_0[110]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[110]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[111]),
        .I2(data_pad_0[111]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[111]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\m_axis_tdata[115]_INST_0_i_1_n_0 ),
        .I1(\data_pad_1_reg_n_0_[112] ),
        .I2(m_axis_tdata_s[112]),
        .I3(m_axis_tlast_s),
        .I4(data_pad_0[112]),
        .I5(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[112]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(\m_axis_tdata[115]_INST_0_i_1_n_0 ),
        .I1(\data_pad_1_reg_n_0_[113] ),
        .I2(m_axis_tdata_s[113]),
        .I3(m_axis_tlast_s),
        .I4(data_pad_0[113]),
        .I5(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[113]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(\m_axis_tdata[115]_INST_0_i_1_n_0 ),
        .I1(\data_pad_1_reg_n_0_[114] ),
        .I2(m_axis_tdata_s[114]),
        .I3(m_axis_tlast_s),
        .I4(data_pad_0[114]),
        .I5(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[114]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(\m_axis_tdata[115]_INST_0_i_1_n_0 ),
        .I1(\data_pad_1_reg_n_0_[115] ),
        .I2(m_axis_tdata_s[115]),
        .I3(m_axis_tlast_s),
        .I4(data_pad_0[115]),
        .I5(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata[115]_INST_0_i_1 
       (.I0(p_0_in0_in),
        .I1(data_pad_sig),
        .I2(m_axis_tlast_s),
        .I3(p_0_in),
        .O(\m_axis_tdata[115]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[116]),
        .I2(data_pad_0[116]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[116]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[117]),
        .I2(data_pad_0[117]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[117]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[118]),
        .I2(data_pad_0[118]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[118]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[119]),
        .I2(data_pad_0[119]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[119]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[11]),
        .I2(data_pad_0[11]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(m_axis_tdata_s[120]),
        .I2(m_axis_tlast_s),
        .I3(data_pad_0[120]),
        .I4(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[120]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(m_axis_tdata_s[121]),
        .I2(m_axis_tlast_s),
        .I3(data_pad_0[121]),
        .I4(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[121]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(m_axis_tdata_s[122]),
        .I2(m_axis_tlast_s),
        .I3(data_pad_0[122]),
        .I4(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[122]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(m_axis_tdata_s[123]),
        .I2(m_axis_tlast_s),
        .I3(data_pad_0[123]),
        .I4(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[123]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[124]),
        .I2(data_pad_0[124]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[124]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(m_axis_tdata_s[125]),
        .I2(m_axis_tlast_s),
        .I3(data_pad_0[125]),
        .I4(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata[125]_INST_0_i_1 
       (.I0(p_0_in),
        .I1(m_axis_tlast_s),
        .I2(data_pad_sig),
        .I3(p_0_in0_in),
        .I4(\data_pad_1_reg_n_0_[125] ),
        .O(\m_axis_tdata[125]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[126]),
        .I2(data_pad_0[126]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[126]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[127]),
        .I2(data_pad_0[127]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[127]));
  LUT4 #(
    .INIT(16'hFF04)) 
    \m_axis_tdata[127]_INST_0_i_1 
       (.I0(data_pad_sig),
        .I1(p_0_in),
        .I2(m_axis_tlast_s),
        .I3(p_0_in0_in),
        .O(\m_axis_tdata[127]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[12]),
        .I2(data_pad_0[12]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[13]),
        .I2(data_pad_0[13]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[14]),
        .I2(data_pad_0[14]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[15]),
        .I2(data_pad_0[15]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[16]),
        .I2(data_pad_0[16]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[17]),
        .I2(data_pad_0[17]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[18]),
        .I2(data_pad_0[18]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[19]),
        .I2(data_pad_0[19]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[1]),
        .I2(data_pad_0[1]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[20]),
        .I2(data_pad_0[20]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[21]),
        .I2(data_pad_0[21]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[22]),
        .I2(data_pad_0[22]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[23]),
        .I2(data_pad_0[23]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[24]),
        .I2(data_pad_0[24]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[25]),
        .I2(data_pad_0[25]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[26]),
        .I2(data_pad_0[26]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[27]),
        .I2(data_pad_0[27]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[28]),
        .I2(data_pad_0[28]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[29]),
        .I2(data_pad_0[29]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[2]),
        .I2(data_pad_0[2]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[30]),
        .I2(data_pad_0[30]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[31]),
        .I2(data_pad_0[31]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[32]),
        .I2(data_pad_0[32]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[32]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[33]),
        .I2(data_pad_0[33]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[33]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[34]),
        .I2(data_pad_0[34]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[34]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[35]),
        .I2(data_pad_0[35]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[35]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[36]),
        .I2(data_pad_0[36]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[36]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[37]),
        .I2(data_pad_0[37]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[37]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[38]),
        .I2(data_pad_0[38]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[38]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[39]),
        .I2(data_pad_0[39]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[39]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[3]),
        .I2(data_pad_0[3]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[40]),
        .I2(data_pad_0[40]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[41]),
        .I2(data_pad_0[41]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[41]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[42]),
        .I2(data_pad_0[42]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[42]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[43]),
        .I2(data_pad_0[43]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[43]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[44]),
        .I2(data_pad_0[44]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[44]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[45]),
        .I2(data_pad_0[45]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[45]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[46]),
        .I2(data_pad_0[46]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[46]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[47]),
        .I2(data_pad_0[47]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[47]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[48]),
        .I2(data_pad_0[48]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[48]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[49]),
        .I2(data_pad_0[49]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[49]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[4]),
        .I2(data_pad_0[4]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[50]),
        .I2(data_pad_0[50]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[50]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[51]),
        .I2(data_pad_0[51]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[51]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[52]),
        .I2(data_pad_0[52]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[52]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[53]),
        .I2(data_pad_0[53]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[53]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[54]),
        .I2(data_pad_0[54]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[54]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[55]),
        .I2(data_pad_0[55]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[55]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[56]),
        .I2(data_pad_0[56]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[56]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[57]),
        .I2(data_pad_0[57]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[57]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[58]),
        .I2(data_pad_0[58]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[58]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[59]),
        .I2(data_pad_0[59]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[59]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[5]),
        .I2(data_pad_0[5]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[60]),
        .I2(data_pad_0[60]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[60]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[61]),
        .I2(data_pad_0[61]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[61]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[62]),
        .I2(data_pad_0[62]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[62]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[63]),
        .I2(data_pad_0[63]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[63]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[64]),
        .I2(data_pad_0[64]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[64]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[65]),
        .I2(data_pad_0[65]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[65]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[66]),
        .I2(data_pad_0[66]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[66]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[67]),
        .I2(data_pad_0[67]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[67]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[68]),
        .I2(data_pad_0[68]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[68]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[69]),
        .I2(data_pad_0[69]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[69]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[6]),
        .I2(data_pad_0[6]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[70]),
        .I2(data_pad_0[70]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[70]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[71]),
        .I2(data_pad_0[71]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[71]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[72]),
        .I2(data_pad_0[72]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[72]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[73]),
        .I2(data_pad_0[73]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[73]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[74]),
        .I2(data_pad_0[74]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[74]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[75]),
        .I2(data_pad_0[75]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[75]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[76]),
        .I2(data_pad_0[76]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[76]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[77]),
        .I2(data_pad_0[77]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[77]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[78]),
        .I2(data_pad_0[78]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[78]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[79]),
        .I2(data_pad_0[79]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[79]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[7]),
        .I2(data_pad_0[7]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[80]),
        .I2(data_pad_0[80]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[80]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[81]),
        .I2(data_pad_0[81]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[81]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[82]),
        .I2(data_pad_0[82]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[82]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[83]),
        .I2(data_pad_0[83]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[83]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[84]),
        .I2(data_pad_0[84]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[84]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[85]),
        .I2(data_pad_0[85]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[85]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[86]),
        .I2(data_pad_0[86]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[86]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[87]),
        .I2(data_pad_0[87]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[87]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[88]),
        .I2(data_pad_0[88]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[88]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[89]),
        .I2(data_pad_0[89]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[89]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[8]),
        .I2(data_pad_0[8]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[90]),
        .I2(data_pad_0[90]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[90]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[91]),
        .I2(data_pad_0[91]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[91]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[92]),
        .I2(data_pad_0[92]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[92]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[93]),
        .I2(data_pad_0[93]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[93]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[94]),
        .I2(data_pad_0[94]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[94]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[95]),
        .I2(data_pad_0[95]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[95]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[96]),
        .I2(data_pad_0[96]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[96]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[97]),
        .I2(data_pad_0[97]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[97]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[98]),
        .I2(data_pad_0[98]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[98]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[99]),
        .I2(data_pad_0[99]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[99]));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(m_axis_tlast_s),
        .I1(m_axis_tdata_s[9]),
        .I2(data_pad_0[9]),
        .I3(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .O(m_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hFE00AA00)) 
    \m_axis_tdata_s[127]_i_1 
       (.I0(m_axis_tlast_s),
        .I1(p_0_in),
        .I2(p_0_in0_in),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .O(\m_axis_tdata_s[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[0] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[100] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[100]),
        .Q(m_axis_tdata_s[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[101] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[101]),
        .Q(m_axis_tdata_s[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[102] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[102]),
        .Q(m_axis_tdata_s[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[103] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[103]),
        .Q(m_axis_tdata_s[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[104] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[104]),
        .Q(m_axis_tdata_s[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[105] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[105]),
        .Q(m_axis_tdata_s[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[106] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[106]),
        .Q(m_axis_tdata_s[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[107] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[107]),
        .Q(m_axis_tdata_s[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[108] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[108]),
        .Q(m_axis_tdata_s[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[109] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[109]),
        .Q(m_axis_tdata_s[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[10] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata_s[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[110] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[110]),
        .Q(m_axis_tdata_s[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[111] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[111]),
        .Q(m_axis_tdata_s[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[112] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[112]),
        .Q(m_axis_tdata_s[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[113] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[113]),
        .Q(m_axis_tdata_s[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[114] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[114]),
        .Q(m_axis_tdata_s[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[115] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[115]),
        .Q(m_axis_tdata_s[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[116] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[116]),
        .Q(m_axis_tdata_s[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[117] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[117]),
        .Q(m_axis_tdata_s[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[118] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[118]),
        .Q(m_axis_tdata_s[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[119] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[119]),
        .Q(m_axis_tdata_s[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[11] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata_s[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[120] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[120]),
        .Q(m_axis_tdata_s[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[121] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[121]),
        .Q(m_axis_tdata_s[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[122] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[122]),
        .Q(m_axis_tdata_s[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[123] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[123]),
        .Q(m_axis_tdata_s[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[124] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[124]),
        .Q(m_axis_tdata_s[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[125] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[125]),
        .Q(m_axis_tdata_s[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[126] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[126]),
        .Q(m_axis_tdata_s[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[127] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[127]),
        .Q(m_axis_tdata_s[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[12] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata_s[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[13] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata_s[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[14] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata_s[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[15] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata_s[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[16] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata_s[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[17] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata_s[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[18] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata_s[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[19] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata_s[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[1] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[20] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata_s[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[21] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata_s[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[22] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata_s[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[23] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata_s[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[24] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata_s[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[25] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata_s[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[26] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata_s[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[27] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata_s[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[28] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata_s[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[29] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata_s[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[2] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[30] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata_s[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[31] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata_s[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[32] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[32]),
        .Q(m_axis_tdata_s[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[33] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[33]),
        .Q(m_axis_tdata_s[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[34] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[34]),
        .Q(m_axis_tdata_s[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[35] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[35]),
        .Q(m_axis_tdata_s[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[36] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[36]),
        .Q(m_axis_tdata_s[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[37] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[37]),
        .Q(m_axis_tdata_s[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[38] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[38]),
        .Q(m_axis_tdata_s[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[39] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[39]),
        .Q(m_axis_tdata_s[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[3] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[40] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[40]),
        .Q(m_axis_tdata_s[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[41] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[41]),
        .Q(m_axis_tdata_s[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[42] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[42]),
        .Q(m_axis_tdata_s[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[43] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[43]),
        .Q(m_axis_tdata_s[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[44] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[44]),
        .Q(m_axis_tdata_s[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[45] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[45]),
        .Q(m_axis_tdata_s[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[46] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[46]),
        .Q(m_axis_tdata_s[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[47] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[47]),
        .Q(m_axis_tdata_s[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[48] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[48]),
        .Q(m_axis_tdata_s[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[49] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[49]),
        .Q(m_axis_tdata_s[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[4] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[50] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[50]),
        .Q(m_axis_tdata_s[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[51] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[51]),
        .Q(m_axis_tdata_s[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[52] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[52]),
        .Q(m_axis_tdata_s[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[53] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[53]),
        .Q(m_axis_tdata_s[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[54] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[54]),
        .Q(m_axis_tdata_s[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[55] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[55]),
        .Q(m_axis_tdata_s[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[56] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[56]),
        .Q(m_axis_tdata_s[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[57] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[57]),
        .Q(m_axis_tdata_s[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[58] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[58]),
        .Q(m_axis_tdata_s[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[59] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[59]),
        .Q(m_axis_tdata_s[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[5] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[60] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[60]),
        .Q(m_axis_tdata_s[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[61] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[61]),
        .Q(m_axis_tdata_s[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[62] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[62]),
        .Q(m_axis_tdata_s[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[63] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[63]),
        .Q(m_axis_tdata_s[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[64] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[64]),
        .Q(m_axis_tdata_s[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[65] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[65]),
        .Q(m_axis_tdata_s[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[66] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[66]),
        .Q(m_axis_tdata_s[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[67] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[67]),
        .Q(m_axis_tdata_s[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[68] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[68]),
        .Q(m_axis_tdata_s[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[69] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[69]),
        .Q(m_axis_tdata_s[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[6] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[70] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[70]),
        .Q(m_axis_tdata_s[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[71] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[71]),
        .Q(m_axis_tdata_s[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[72] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[72]),
        .Q(m_axis_tdata_s[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[73] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[73]),
        .Q(m_axis_tdata_s[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[74] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[74]),
        .Q(m_axis_tdata_s[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[75] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[75]),
        .Q(m_axis_tdata_s[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[76] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[76]),
        .Q(m_axis_tdata_s[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[77] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[77]),
        .Q(m_axis_tdata_s[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[78] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[78]),
        .Q(m_axis_tdata_s[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[79] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[79]),
        .Q(m_axis_tdata_s[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[7] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata_s[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[80] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[80]),
        .Q(m_axis_tdata_s[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[81] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[81]),
        .Q(m_axis_tdata_s[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[82] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[82]),
        .Q(m_axis_tdata_s[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[83] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[83]),
        .Q(m_axis_tdata_s[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[84] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[84]),
        .Q(m_axis_tdata_s[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[85] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[85]),
        .Q(m_axis_tdata_s[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[86] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[86]),
        .Q(m_axis_tdata_s[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[87] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[87]),
        .Q(m_axis_tdata_s[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[88] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[88]),
        .Q(m_axis_tdata_s[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[89] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[89]),
        .Q(m_axis_tdata_s[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[8] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata_s[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[90] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[90]),
        .Q(m_axis_tdata_s[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[91] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[91]),
        .Q(m_axis_tdata_s[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[92] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[92]),
        .Q(m_axis_tdata_s[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[93] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[93]),
        .Q(m_axis_tdata_s[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[94] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[94]),
        .Q(m_axis_tdata_s[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[95] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[95]),
        .Q(m_axis_tdata_s[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[96] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[96]),
        .Q(m_axis_tdata_s[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[97] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[97]),
        .Q(m_axis_tdata_s[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[98] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[98]),
        .Q(m_axis_tdata_s[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[99] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[99]),
        .Q(m_axis_tdata_s[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_s_reg[9] 
       (.C(s_axis_aclk),
        .CE(\m_axis_tdata_s[127]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata_s[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA00AECC)) 
    m_axis_tlast_s_i_1
       (.I0(\FSM_onehot_state[0]_i_1_n_0 ),
        .I1(m_axis_tlast),
        .I2(p_0_in),
        .I3(m_axis_tready),
        .I4(m_axis_tlast_s),
        .O(m_axis_tlast_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tlast_s_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(m_axis_tlast_s_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBFBFBFBFBF80)) 
    m_axis_tvalid_s_i_1
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(m_axis_tlast_s),
        .I3(p_0_in0_in),
        .I4(p_0_in),
        .I5(m_axis_tvalid),
        .O(m_axis_tvalid_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tvalid_s_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_s_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,s_axis_tdest[4],plusOp_carry_i_1_n_0,zero_pad_len[1],s_axis_tdest[1:0]}),
        .O(plusOp[7:0]),
        .S({s_axis_tdest[7:5],plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0,plusOp_carry_i_5_n_0,plusOp_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7],plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[15:8]),
        .S(s_axis_tdest[15:8]));
  LUT2 #(
    .INIT(4'h8)) 
    plusOp_carry_i_1
       (.I0(zero_pad_len[2]),
        .I1(s_axis_tdest[2]),
        .O(plusOp_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    plusOp_carry_i_2
       (.I0(s_axis_tdest[3]),
        .I1(zero_pad_len[3]),
        .I2(s_axis_tdest[4]),
        .O(plusOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    plusOp_carry_i_3
       (.I0(s_axis_tdest[2]),
        .I1(zero_pad_len[2]),
        .I2(zero_pad_len[3]),
        .I3(s_axis_tdest[3]),
        .O(plusOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    plusOp_carry_i_4
       (.I0(zero_pad_len[1]),
        .I1(zero_pad_len[2]),
        .I2(s_axis_tdest[2]),
        .O(plusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_5
       (.I0(zero_pad_len[1]),
        .I1(s_axis_tdest[1]),
        .O(plusOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_6
       (.I0(s_axis_tdest[0]),
        .I1(zero_pad_len[0]),
        .O(plusOp_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(p_0_in0_in),
        .O(s_axis_tready));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \zero_pad_len_reg[0] 
       (.CLR(1'b0),
        .D(zero_pad_len__0[0]),
        .G(zero_pad_len0),
        .GE(1'b1),
        .Q(zero_pad_len[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEAEFF)) 
    \zero_pad_len_reg[0]_i_1 
       (.I0(\zero_pad_len_reg[0]_i_2_n_0 ),
        .I1(s_axis_tkeep[14]),
        .I2(\zero_pad_len_reg[0]_i_3_n_0 ),
        .I3(\zero_pad_len_reg[2]_i_2_n_0 ),
        .I4(s_axis_tkeep[1]),
        .I5(\zero_pad_len_reg[0]_i_4_n_0 ),
        .O(zero_pad_len__0[0]));
  LUT6 #(
    .INIT(64'h0000400000001001)) 
    \zero_pad_len_reg[0]_i_2 
       (.I0(\zero_pad_len_reg[0]_i_5_n_0 ),
        .I1(s_axis_tkeep[5]),
        .I2(s_axis_tkeep[4]),
        .I3(s_axis_tkeep[3]),
        .I4(\zero_pad_len_reg[0]_i_6_n_0 ),
        .I5(s_axis_tkeep[6]),
        .O(\zero_pad_len_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \zero_pad_len_reg[0]_i_3 
       (.I0(s_axis_tkeep[12]),
        .I1(s_axis_tkeep[11]),
        .I2(\zero_pad_len_reg[1]_i_3_n_0 ),
        .I3(s_axis_tkeep[0]),
        .I4(s_axis_tkeep[13]),
        .I5(s_axis_tkeep[15]),
        .O(\zero_pad_len_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000410000000001)) 
    \zero_pad_len_reg[0]_i_4 
       (.I0(\data_pad_0[103]_i_4_n_0 ),
        .I1(s_axis_tkeep[12]),
        .I2(s_axis_tkeep[11]),
        .I3(s_axis_tkeep[10]),
        .I4(\zero_pad_len_reg[2]_i_6_n_0 ),
        .I5(s_axis_tkeep[9]),
        .O(\zero_pad_len_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \zero_pad_len_reg[0]_i_5 
       (.I0(s_axis_tkeep[8]),
        .I1(s_axis_tkeep[10]),
        .I2(\data_pad_0[95]_i_2_n_0 ),
        .I3(s_axis_tkeep[9]),
        .I4(s_axis_tkeep[7]),
        .O(\zero_pad_len_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \zero_pad_len_reg[0]_i_6 
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[2]),
        .O(\zero_pad_len_reg[0]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \zero_pad_len_reg[1] 
       (.CLR(1'b0),
        .D(zero_pad_len__0[1]),
        .G(zero_pad_len0),
        .GE(1'b1),
        .Q(zero_pad_len[1]));
  LUT6 #(
    .INIT(64'hABFFABABABABABAB)) 
    \zero_pad_len_reg[1]_i_1 
       (.I0(\zero_pad_len_reg[1]_i_2_n_0 ),
        .I1(\zero_pad_len_reg[1]_i_3_n_0 ),
        .I2(\zero_pad_len_reg[1]_i_4_n_0 ),
        .I3(\zero_pad_len_reg[1]_i_5_n_0 ),
        .I4(s_axis_tkeep[1]),
        .I5(s_axis_tkeep[2]),
        .O(zero_pad_len__0[1]));
  LUT6 #(
    .INIT(64'h1111F11111111111)) 
    \zero_pad_len_reg[1]_i_2 
       (.I0(\zero_pad_len_reg[2]_i_3_n_0 ),
        .I1(\zero_pad_len_reg[2]_i_4_n_0 ),
        .I2(s_axis_tkeep[13]),
        .I3(s_axis_tkeep[0]),
        .I4(\zero_pad_len_reg[1]_i_6_n_0 ),
        .I5(s_axis_tkeep[14]),
        .O(\zero_pad_len_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \zero_pad_len_reg[1]_i_3 
       (.I0(s_axis_tkeep[9]),
        .I1(s_axis_tkeep[8]),
        .I2(s_axis_tkeep[7]),
        .I3(\zero_pad_len_reg[2]_i_4_n_0 ),
        .I4(s_axis_tkeep[10]),
        .O(\zero_pad_len_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \zero_pad_len_reg[1]_i_4 
       (.I0(s_axis_tkeep[13]),
        .I1(s_axis_tkeep[15]),
        .I2(s_axis_tkeep[14]),
        .I3(s_axis_tkeep[0]),
        .I4(s_axis_tkeep[12]),
        .O(\zero_pad_len_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \zero_pad_len_reg[1]_i_5 
       (.I0(s_axis_tkeep[5]),
        .I1(s_axis_tkeep[7]),
        .I2(\data_pad_0[71]_i_2_n_0 ),
        .I3(s_axis_tkeep[8]),
        .I4(s_axis_tkeep[6]),
        .I5(s_axis_tkeep[4]),
        .O(\zero_pad_len_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \zero_pad_len_reg[1]_i_6 
       (.I0(s_axis_tkeep[12]),
        .I1(s_axis_tkeep[11]),
        .I2(s_axis_tkeep[10]),
        .I3(\zero_pad_len_reg[2]_i_4_n_0 ),
        .I4(\zero_pad_len_reg[1]_i_7_n_0 ),
        .I5(s_axis_tkeep[9]),
        .O(\zero_pad_len_reg[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \zero_pad_len_reg[1]_i_7 
       (.I0(s_axis_tkeep[7]),
        .I1(s_axis_tkeep[8]),
        .O(\zero_pad_len_reg[1]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \zero_pad_len_reg[2] 
       (.CLR(1'b0),
        .D(zero_pad_len__0[2]),
        .G(zero_pad_len0),
        .GE(1'b1),
        .Q(zero_pad_len[2]));
  LUT6 #(
    .INIT(64'hFF57FF57FF57FFFF)) 
    \zero_pad_len_reg[2]_i_1 
       (.I0(\zero_pad_len_reg[2]_i_2_n_0 ),
        .I1(\zero_pad_len_reg[2]_i_3_n_0 ),
        .I2(\zero_pad_len_reg[2]_i_4_n_0 ),
        .I3(data_pad_1),
        .I4(\zero_pad_len_reg[2]_i_5_n_0 ),
        .I5(\zero_pad_len_reg[2]_i_6_n_0 ),
        .O(zero_pad_len__0[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \zero_pad_len_reg[2]_i_2 
       (.I0(s_axis_tkeep[3]),
        .I1(s_axis_tkeep[5]),
        .I2(\zero_pad_len_reg[3]_i_4_n_0 ),
        .I3(s_axis_tkeep[4]),
        .I4(s_axis_tkeep[2]),
        .O(\zero_pad_len_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \zero_pad_len_reg[2]_i_3 
       (.I0(s_axis_tkeep[9]),
        .I1(\data_pad_0[95]_i_2_n_0 ),
        .I2(s_axis_tkeep[10]),
        .I3(s_axis_tkeep[8]),
        .O(\zero_pad_len_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \zero_pad_len_reg[2]_i_4 
       (.I0(s_axis_tkeep[5]),
        .I1(s_axis_tkeep[4]),
        .I2(s_axis_tkeep[3]),
        .I3(s_axis_tkeep[2]),
        .I4(s_axis_tkeep[1]),
        .I5(s_axis_tkeep[6]),
        .O(\zero_pad_len_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \zero_pad_len_reg[2]_i_5 
       (.I0(s_axis_tkeep[11]),
        .I1(s_axis_tkeep[13]),
        .I2(data_pad_sig_i_3_n_0),
        .I3(s_axis_tkeep[0]),
        .I4(s_axis_tkeep[12]),
        .I5(s_axis_tkeep[10]),
        .O(\zero_pad_len_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \zero_pad_len_reg[2]_i_6 
       (.I0(s_axis_tkeep[8]),
        .I1(s_axis_tkeep[7]),
        .I2(\zero_pad_len_reg[2]_i_4_n_0 ),
        .O(\zero_pad_len_reg[2]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \zero_pad_len_reg[3] 
       (.CLR(1'b0),
        .D(zero_pad_len__0[3]),
        .G(zero_pad_len0),
        .GE(1'b1),
        .Q(zero_pad_len[3]));
  LUT4 #(
    .INIT(16'hEEEF)) 
    \zero_pad_len_reg[3]_i_1 
       (.I0(\zero_pad_len_reg[3]_i_3_n_0 ),
        .I1(data_pad_1),
        .I2(\zero_pad_len_reg[3]_i_4_n_0 ),
        .I3(\zero_pad_len_reg[3]_i_5_n_0 ),
        .O(zero_pad_len__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \zero_pad_len_reg[3]_i_2 
       (.I0(p_0_in),
        .I1(m_axis_tlast_s),
        .O(zero_pad_len0));
  LUT6 #(
    .INIT(64'h000000880000000B)) 
    \zero_pad_len_reg[3]_i_3 
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[2]),
        .I2(s_axis_tkeep[4]),
        .I3(\zero_pad_len_reg[3]_i_4_n_0 ),
        .I4(s_axis_tkeep[5]),
        .I5(s_axis_tkeep[3]),
        .O(\zero_pad_len_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \zero_pad_len_reg[3]_i_4 
       (.I0(s_axis_tkeep[7]),
        .I1(s_axis_tkeep[9]),
        .I2(\data_pad_0[95]_i_2_n_0 ),
        .I3(s_axis_tkeep[10]),
        .I4(s_axis_tkeep[8]),
        .I5(s_axis_tkeep[6]),
        .O(\zero_pad_len_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \zero_pad_len_reg[3]_i_5 
       (.I0(s_axis_tkeep[4]),
        .I1(s_axis_tkeep[3]),
        .I2(s_axis_tkeep[2]),
        .I3(s_axis_tkeep[1]),
        .O(\zero_pad_len_reg[3]_i_5_n_0 ));
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
