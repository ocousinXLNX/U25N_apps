// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep 29 19:49:22 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_1A/BD/ipsec_bd/ip/ipsec_bd_demux_logic_0_0/ipsec_bd_demux_logic_0_0_sim_netlist.v
// Design      : ipsec_bd_demux_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_demux_logic_0_0,demux_logic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "demux_logic,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_demux_logic_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    demux_en,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest,
    m0_axis_tvalid,
    m0_axis_tready,
    m0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tkeep,
    m0_axis_tdest,
    m1_axis_tvalid,
    m1_axis_tready,
    m1_axis_tlast,
    m1_axis_tdata,
    m1_axis_tkeep,
    m1_axis_tdest);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 333333333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ipsec_bd_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  input demux_en;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.0, CLK_DOMAIN ipsec_bd_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [15:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [15:0]s_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) output m0_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [127:0]m0_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TKEEP" *) output [15:0]m0_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDEST" *) output [15:0]m0_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 16, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333333333, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m1_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TREADY" *) input m1_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TLAST" *) output m1_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDATA" *) output [127:0]m1_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TKEEP" *) output [15:0]m1_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDEST" *) output [15:0]m1_axis_tdest;

  wire demux_en;
  wire [127:0]m0_axis_tdata;
  wire [15:0]m0_axis_tdest;
  wire [15:0]m0_axis_tkeep;
  wire m0_axis_tlast;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire [127:0]m1_axis_tdata;
  wire [15:0]m1_axis_tdest;
  wire [15:0]m1_axis_tkeep;
  wire m1_axis_tlast;
  wire m1_axis_tready;
  wire m1_axis_tvalid;
  wire s_axis_aclk;
  wire [127:0]s_axis_tdata;
  wire [15:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  ipsec_bd_demux_logic_0_0_demux_logic U0
       (.demux_en(demux_en),
        .m0_axis_tdata(m0_axis_tdata),
        .m0_axis_tdest(m0_axis_tdest),
        .m0_axis_tkeep(m0_axis_tkeep),
        .m0_axis_tlast(m0_axis_tlast),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tready_0(s_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .m1_axis_tdata(m1_axis_tdata),
        .m1_axis_tdest(m1_axis_tdest),
        .m1_axis_tkeep(m1_axis_tkeep),
        .m1_axis_tlast(m1_axis_tlast),
        .m1_axis_tready(m1_axis_tready),
        .m1_axis_tvalid(m1_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "demux_logic" *) 
module ipsec_bd_demux_logic_0_0_demux_logic
   (m0_axis_tvalid,
    m0_axis_tready_0,
    m0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tkeep,
    m0_axis_tdest,
    m1_axis_tvalid,
    m1_axis_tlast,
    m1_axis_tdata,
    m1_axis_tkeep,
    m1_axis_tdest,
    s_axis_tlast,
    demux_en,
    s_axis_tvalid,
    m1_axis_tready,
    m0_axis_tready,
    s_axis_aclk,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tdest);
  output m0_axis_tvalid;
  output m0_axis_tready_0;
  output m0_axis_tlast;
  output [127:0]m0_axis_tdata;
  output [15:0]m0_axis_tkeep;
  output [15:0]m0_axis_tdest;
  output m1_axis_tvalid;
  output m1_axis_tlast;
  output [127:0]m1_axis_tdata;
  output [15:0]m1_axis_tkeep;
  output [15:0]m1_axis_tdest;
  input s_axis_tlast;
  input demux_en;
  input s_axis_tvalid;
  input m1_axis_tready;
  input m0_axis_tready;
  input s_axis_aclk;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input [15:0]s_axis_tdest;

  wire demux_en;
  wire [127:0]m0_axis_tdata;
  wire [15:0]m0_axis_tdest;
  wire [15:0]m0_axis_tkeep;
  wire m0_axis_tlast;
  wire m0_axis_tready;
  wire m0_axis_tready_0;
  wire m0_axis_tvalid;
  wire m0_axis_tvalid_i_1_n_0;
  wire [127:0]m1_axis_tdata;
  wire \m1_axis_tdata[127]_i_1_n_0 ;
  wire [15:0]m1_axis_tdest;
  wire [15:0]m1_axis_tkeep;
  wire m1_axis_tlast;
  wire m1_axis_tlast_i_1_n_0;
  wire m1_axis_tready;
  wire m1_axis_tvalid;
  wire m1_axis_tvalid_i_1_n_0;
  wire s_axis_aclk;
  wire [127:0]s_axis_tdata;
  wire [15:0]s_axis_tdest;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  FDRE \m0_axis_tdata_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[0]),
        .Q(m0_axis_tdata[0]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[100] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[100]),
        .Q(m0_axis_tdata[100]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[101] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[101]),
        .Q(m0_axis_tdata[101]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[102] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[102]),
        .Q(m0_axis_tdata[102]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[103] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[103]),
        .Q(m0_axis_tdata[103]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[104] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[104]),
        .Q(m0_axis_tdata[104]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[105] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[105]),
        .Q(m0_axis_tdata[105]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[106] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[106]),
        .Q(m0_axis_tdata[106]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[107] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[107]),
        .Q(m0_axis_tdata[107]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[108] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[108]),
        .Q(m0_axis_tdata[108]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[109] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[109]),
        .Q(m0_axis_tdata[109]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[10]),
        .Q(m0_axis_tdata[10]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[110] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[110]),
        .Q(m0_axis_tdata[110]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[111] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[111]),
        .Q(m0_axis_tdata[111]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[112] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[112]),
        .Q(m0_axis_tdata[112]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[113] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[113]),
        .Q(m0_axis_tdata[113]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[114] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[114]),
        .Q(m0_axis_tdata[114]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[115] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[115]),
        .Q(m0_axis_tdata[115]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[116] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[116]),
        .Q(m0_axis_tdata[116]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[117] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[117]),
        .Q(m0_axis_tdata[117]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[118] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[118]),
        .Q(m0_axis_tdata[118]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[119] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[119]),
        .Q(m0_axis_tdata[119]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[11]),
        .Q(m0_axis_tdata[11]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[120] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[120]),
        .Q(m0_axis_tdata[120]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[121] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[121]),
        .Q(m0_axis_tdata[121]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[122] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[122]),
        .Q(m0_axis_tdata[122]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[123] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[123]),
        .Q(m0_axis_tdata[123]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[124] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[124]),
        .Q(m0_axis_tdata[124]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[125] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[125]),
        .Q(m0_axis_tdata[125]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[126] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[126]),
        .Q(m0_axis_tdata[126]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[127] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[127]),
        .Q(m0_axis_tdata[127]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[12]),
        .Q(m0_axis_tdata[12]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[13]),
        .Q(m0_axis_tdata[13]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[14]),
        .Q(m0_axis_tdata[14]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[15]),
        .Q(m0_axis_tdata[15]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[16] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[16]),
        .Q(m0_axis_tdata[16]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[17] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[17]),
        .Q(m0_axis_tdata[17]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[18] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[18]),
        .Q(m0_axis_tdata[18]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[19] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[19]),
        .Q(m0_axis_tdata[19]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[1]),
        .Q(m0_axis_tdata[1]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[20] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[20]),
        .Q(m0_axis_tdata[20]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[21] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[21]),
        .Q(m0_axis_tdata[21]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[22] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[22]),
        .Q(m0_axis_tdata[22]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[23] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[23]),
        .Q(m0_axis_tdata[23]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[24] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[24]),
        .Q(m0_axis_tdata[24]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[25] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[25]),
        .Q(m0_axis_tdata[25]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[26] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[26]),
        .Q(m0_axis_tdata[26]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[27] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[27]),
        .Q(m0_axis_tdata[27]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[28] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[28]),
        .Q(m0_axis_tdata[28]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[29] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[29]),
        .Q(m0_axis_tdata[29]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[2]),
        .Q(m0_axis_tdata[2]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[30] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[30]),
        .Q(m0_axis_tdata[30]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[31] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[31]),
        .Q(m0_axis_tdata[31]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[32] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[32]),
        .Q(m0_axis_tdata[32]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[33] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[33]),
        .Q(m0_axis_tdata[33]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[34] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[34]),
        .Q(m0_axis_tdata[34]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[35] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[35]),
        .Q(m0_axis_tdata[35]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[36] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[36]),
        .Q(m0_axis_tdata[36]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[37] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[37]),
        .Q(m0_axis_tdata[37]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[38] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[38]),
        .Q(m0_axis_tdata[38]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[39] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[39]),
        .Q(m0_axis_tdata[39]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[3]),
        .Q(m0_axis_tdata[3]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[40] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[40]),
        .Q(m0_axis_tdata[40]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[41] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[41]),
        .Q(m0_axis_tdata[41]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[42] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[42]),
        .Q(m0_axis_tdata[42]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[43] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[43]),
        .Q(m0_axis_tdata[43]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[44] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[44]),
        .Q(m0_axis_tdata[44]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[45] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[45]),
        .Q(m0_axis_tdata[45]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[46] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[46]),
        .Q(m0_axis_tdata[46]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[47] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[47]),
        .Q(m0_axis_tdata[47]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[48] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[48]),
        .Q(m0_axis_tdata[48]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[49] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[49]),
        .Q(m0_axis_tdata[49]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[4]),
        .Q(m0_axis_tdata[4]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[50] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[50]),
        .Q(m0_axis_tdata[50]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[51] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[51]),
        .Q(m0_axis_tdata[51]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[52] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[52]),
        .Q(m0_axis_tdata[52]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[53] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[53]),
        .Q(m0_axis_tdata[53]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[54] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[54]),
        .Q(m0_axis_tdata[54]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[55] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[55]),
        .Q(m0_axis_tdata[55]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[56] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[56]),
        .Q(m0_axis_tdata[56]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[57] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[57]),
        .Q(m0_axis_tdata[57]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[58] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[58]),
        .Q(m0_axis_tdata[58]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[59] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[59]),
        .Q(m0_axis_tdata[59]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[5]),
        .Q(m0_axis_tdata[5]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[60] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[60]),
        .Q(m0_axis_tdata[60]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[61] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[61]),
        .Q(m0_axis_tdata[61]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[62] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[62]),
        .Q(m0_axis_tdata[62]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[63] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[63]),
        .Q(m0_axis_tdata[63]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[64] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[64]),
        .Q(m0_axis_tdata[64]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[65] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[65]),
        .Q(m0_axis_tdata[65]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[66] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[66]),
        .Q(m0_axis_tdata[66]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[67] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[67]),
        .Q(m0_axis_tdata[67]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[68] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[68]),
        .Q(m0_axis_tdata[68]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[69] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[69]),
        .Q(m0_axis_tdata[69]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[6]),
        .Q(m0_axis_tdata[6]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[70] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[70]),
        .Q(m0_axis_tdata[70]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[71] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[71]),
        .Q(m0_axis_tdata[71]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[72] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[72]),
        .Q(m0_axis_tdata[72]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[73] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[73]),
        .Q(m0_axis_tdata[73]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[74] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[74]),
        .Q(m0_axis_tdata[74]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[75] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[75]),
        .Q(m0_axis_tdata[75]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[76] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[76]),
        .Q(m0_axis_tdata[76]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[77] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[77]),
        .Q(m0_axis_tdata[77]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[78] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[78]),
        .Q(m0_axis_tdata[78]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[79] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[79]),
        .Q(m0_axis_tdata[79]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[7]),
        .Q(m0_axis_tdata[7]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[80] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[80]),
        .Q(m0_axis_tdata[80]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[81] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[81]),
        .Q(m0_axis_tdata[81]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[82] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[82]),
        .Q(m0_axis_tdata[82]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[83] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[83]),
        .Q(m0_axis_tdata[83]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[84] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[84]),
        .Q(m0_axis_tdata[84]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[85] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[85]),
        .Q(m0_axis_tdata[85]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[86] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[86]),
        .Q(m0_axis_tdata[86]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[87] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[87]),
        .Q(m0_axis_tdata[87]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[88] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[88]),
        .Q(m0_axis_tdata[88]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[89] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[89]),
        .Q(m0_axis_tdata[89]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[8]),
        .Q(m0_axis_tdata[8]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[90] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[90]),
        .Q(m0_axis_tdata[90]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[91] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[91]),
        .Q(m0_axis_tdata[91]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[92] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[92]),
        .Q(m0_axis_tdata[92]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[93] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[93]),
        .Q(m0_axis_tdata[93]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[94] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[94]),
        .Q(m0_axis_tdata[94]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[95] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[95]),
        .Q(m0_axis_tdata[95]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[96] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[96]),
        .Q(m0_axis_tdata[96]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[97] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[97]),
        .Q(m0_axis_tdata[97]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[98] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[98]),
        .Q(m0_axis_tdata[98]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[99] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[99]),
        .Q(m0_axis_tdata[99]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdata_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[9]),
        .Q(m0_axis_tdata[9]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[0]),
        .Q(m0_axis_tdest[0]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[10]),
        .Q(m0_axis_tdest[10]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[11]),
        .Q(m0_axis_tdest[11]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[12]),
        .Q(m0_axis_tdest[12]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[13]),
        .Q(m0_axis_tdest[13]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[14]),
        .Q(m0_axis_tdest[14]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[15]),
        .Q(m0_axis_tdest[15]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[1]),
        .Q(m0_axis_tdest[1]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[2]),
        .Q(m0_axis_tdest[2]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[3]),
        .Q(m0_axis_tdest[3]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[4]),
        .Q(m0_axis_tdest[4]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[5]),
        .Q(m0_axis_tdest[5]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[6]),
        .Q(m0_axis_tdest[6]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[7]),
        .Q(m0_axis_tdest[7]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[8]),
        .Q(m0_axis_tdest[8]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tdest_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[9]),
        .Q(m0_axis_tdest[9]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[0]),
        .Q(m0_axis_tkeep[0]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[10]),
        .Q(m0_axis_tkeep[10]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[11]),
        .Q(m0_axis_tkeep[11]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[12]),
        .Q(m0_axis_tkeep[12]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[13]),
        .Q(m0_axis_tkeep[13]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[14]),
        .Q(m0_axis_tkeep[14]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[15]),
        .Q(m0_axis_tkeep[15]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[1]),
        .Q(m0_axis_tkeep[1]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[2]),
        .Q(m0_axis_tkeep[2]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[3]),
        .Q(m0_axis_tkeep[3]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[4]),
        .Q(m0_axis_tkeep[4]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[5]),
        .Q(m0_axis_tkeep[5]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[6]),
        .Q(m0_axis_tkeep[6]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[7]),
        .Q(m0_axis_tkeep[7]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[8]),
        .Q(m0_axis_tkeep[8]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE \m0_axis_tkeep_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[9]),
        .Q(m0_axis_tkeep[9]),
        .R(m0_axis_tvalid_i_1_n_0));
  FDRE m0_axis_tlast_reg
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tlast),
        .Q(m0_axis_tlast),
        .R(m0_axis_tvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    m0_axis_tvalid_i_1
       (.I0(demux_en),
        .I1(m1_axis_tready),
        .O(m0_axis_tvalid_i_1_n_0));
  FDRE m0_axis_tvalid_reg
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tvalid),
        .Q(m0_axis_tvalid),
        .R(m0_axis_tvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \m1_axis_tdata[127]_i_1 
       (.I0(m0_axis_tready),
        .I1(demux_en),
        .O(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[0]),
        .Q(m1_axis_tdata[0]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[100] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[100]),
        .Q(m1_axis_tdata[100]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[101] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[101]),
        .Q(m1_axis_tdata[101]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[102] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[102]),
        .Q(m1_axis_tdata[102]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[103] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[103]),
        .Q(m1_axis_tdata[103]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[104] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[104]),
        .Q(m1_axis_tdata[104]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[105] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[105]),
        .Q(m1_axis_tdata[105]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[106] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[106]),
        .Q(m1_axis_tdata[106]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[107] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[107]),
        .Q(m1_axis_tdata[107]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[108] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[108]),
        .Q(m1_axis_tdata[108]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[109] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[109]),
        .Q(m1_axis_tdata[109]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[10]),
        .Q(m1_axis_tdata[10]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[110] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[110]),
        .Q(m1_axis_tdata[110]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[111] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[111]),
        .Q(m1_axis_tdata[111]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[112] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[112]),
        .Q(m1_axis_tdata[112]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[113] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[113]),
        .Q(m1_axis_tdata[113]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[114] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[114]),
        .Q(m1_axis_tdata[114]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[115] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[115]),
        .Q(m1_axis_tdata[115]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[116] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[116]),
        .Q(m1_axis_tdata[116]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[117] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[117]),
        .Q(m1_axis_tdata[117]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[118] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[118]),
        .Q(m1_axis_tdata[118]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[119] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[119]),
        .Q(m1_axis_tdata[119]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[11]),
        .Q(m1_axis_tdata[11]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[120] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[120]),
        .Q(m1_axis_tdata[120]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[121] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[121]),
        .Q(m1_axis_tdata[121]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[122] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[122]),
        .Q(m1_axis_tdata[122]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[123] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[123]),
        .Q(m1_axis_tdata[123]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[124] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[124]),
        .Q(m1_axis_tdata[124]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[125] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[125]),
        .Q(m1_axis_tdata[125]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[126] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[126]),
        .Q(m1_axis_tdata[126]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[127] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[127]),
        .Q(m1_axis_tdata[127]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[12]),
        .Q(m1_axis_tdata[12]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[13]),
        .Q(m1_axis_tdata[13]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[14]),
        .Q(m1_axis_tdata[14]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[15]),
        .Q(m1_axis_tdata[15]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[16] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[16]),
        .Q(m1_axis_tdata[16]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[17] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[17]),
        .Q(m1_axis_tdata[17]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[18] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[18]),
        .Q(m1_axis_tdata[18]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[19] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[19]),
        .Q(m1_axis_tdata[19]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[1]),
        .Q(m1_axis_tdata[1]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[20] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[20]),
        .Q(m1_axis_tdata[20]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[21] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[21]),
        .Q(m1_axis_tdata[21]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[22] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[22]),
        .Q(m1_axis_tdata[22]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[23] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[23]),
        .Q(m1_axis_tdata[23]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[24] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[24]),
        .Q(m1_axis_tdata[24]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[25] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[25]),
        .Q(m1_axis_tdata[25]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[26] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[26]),
        .Q(m1_axis_tdata[26]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[27] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[27]),
        .Q(m1_axis_tdata[27]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[28] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[28]),
        .Q(m1_axis_tdata[28]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[29] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[29]),
        .Q(m1_axis_tdata[29]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[2]),
        .Q(m1_axis_tdata[2]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[30] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[30]),
        .Q(m1_axis_tdata[30]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[31] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[31]),
        .Q(m1_axis_tdata[31]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[32] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[32]),
        .Q(m1_axis_tdata[32]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[33] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[33]),
        .Q(m1_axis_tdata[33]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[34] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[34]),
        .Q(m1_axis_tdata[34]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[35] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[35]),
        .Q(m1_axis_tdata[35]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[36] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[36]),
        .Q(m1_axis_tdata[36]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[37] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[37]),
        .Q(m1_axis_tdata[37]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[38] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[38]),
        .Q(m1_axis_tdata[38]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[39] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[39]),
        .Q(m1_axis_tdata[39]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[3]),
        .Q(m1_axis_tdata[3]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[40] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[40]),
        .Q(m1_axis_tdata[40]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[41] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[41]),
        .Q(m1_axis_tdata[41]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[42] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[42]),
        .Q(m1_axis_tdata[42]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[43] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[43]),
        .Q(m1_axis_tdata[43]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[44] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[44]),
        .Q(m1_axis_tdata[44]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[45] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[45]),
        .Q(m1_axis_tdata[45]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[46] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[46]),
        .Q(m1_axis_tdata[46]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[47] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[47]),
        .Q(m1_axis_tdata[47]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[48] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[48]),
        .Q(m1_axis_tdata[48]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[49] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[49]),
        .Q(m1_axis_tdata[49]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[4]),
        .Q(m1_axis_tdata[4]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[50] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[50]),
        .Q(m1_axis_tdata[50]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[51] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[51]),
        .Q(m1_axis_tdata[51]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[52] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[52]),
        .Q(m1_axis_tdata[52]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[53] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[53]),
        .Q(m1_axis_tdata[53]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[54] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[54]),
        .Q(m1_axis_tdata[54]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[55] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[55]),
        .Q(m1_axis_tdata[55]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[56] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[56]),
        .Q(m1_axis_tdata[56]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[57] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[57]),
        .Q(m1_axis_tdata[57]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[58] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[58]),
        .Q(m1_axis_tdata[58]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[59] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[59]),
        .Q(m1_axis_tdata[59]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[5]),
        .Q(m1_axis_tdata[5]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[60] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[60]),
        .Q(m1_axis_tdata[60]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[61] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[61]),
        .Q(m1_axis_tdata[61]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[62] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[62]),
        .Q(m1_axis_tdata[62]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[63] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[63]),
        .Q(m1_axis_tdata[63]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[64] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[64]),
        .Q(m1_axis_tdata[64]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[65] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[65]),
        .Q(m1_axis_tdata[65]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[66] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[66]),
        .Q(m1_axis_tdata[66]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[67] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[67]),
        .Q(m1_axis_tdata[67]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[68] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[68]),
        .Q(m1_axis_tdata[68]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[69] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[69]),
        .Q(m1_axis_tdata[69]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[6]),
        .Q(m1_axis_tdata[6]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[70] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[70]),
        .Q(m1_axis_tdata[70]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[71] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[71]),
        .Q(m1_axis_tdata[71]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[72] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[72]),
        .Q(m1_axis_tdata[72]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[73] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[73]),
        .Q(m1_axis_tdata[73]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[74] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[74]),
        .Q(m1_axis_tdata[74]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[75] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[75]),
        .Q(m1_axis_tdata[75]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[76] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[76]),
        .Q(m1_axis_tdata[76]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[77] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[77]),
        .Q(m1_axis_tdata[77]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[78] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[78]),
        .Q(m1_axis_tdata[78]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[79] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[79]),
        .Q(m1_axis_tdata[79]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[7]),
        .Q(m1_axis_tdata[7]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[80] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[80]),
        .Q(m1_axis_tdata[80]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[81] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[81]),
        .Q(m1_axis_tdata[81]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[82] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[82]),
        .Q(m1_axis_tdata[82]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[83] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[83]),
        .Q(m1_axis_tdata[83]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[84] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[84]),
        .Q(m1_axis_tdata[84]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[85] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[85]),
        .Q(m1_axis_tdata[85]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[86] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[86]),
        .Q(m1_axis_tdata[86]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[87] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[87]),
        .Q(m1_axis_tdata[87]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[88] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[88]),
        .Q(m1_axis_tdata[88]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[89] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[89]),
        .Q(m1_axis_tdata[89]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[8]),
        .Q(m1_axis_tdata[8]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[90] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[90]),
        .Q(m1_axis_tdata[90]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[91] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[91]),
        .Q(m1_axis_tdata[91]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[92] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[92]),
        .Q(m1_axis_tdata[92]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[93] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[93]),
        .Q(m1_axis_tdata[93]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[94] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[94]),
        .Q(m1_axis_tdata[94]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[95] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[95]),
        .Q(m1_axis_tdata[95]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[96] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[96]),
        .Q(m1_axis_tdata[96]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[97] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[97]),
        .Q(m1_axis_tdata[97]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[98] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[98]),
        .Q(m1_axis_tdata[98]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[99] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[99]),
        .Q(m1_axis_tdata[99]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdata_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdata[9]),
        .Q(m1_axis_tdata[9]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[0]),
        .Q(m1_axis_tdest[0]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[10]),
        .Q(m1_axis_tdest[10]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[11]),
        .Q(m1_axis_tdest[11]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[12]),
        .Q(m1_axis_tdest[12]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[13]),
        .Q(m1_axis_tdest[13]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[14]),
        .Q(m1_axis_tdest[14]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[15]),
        .Q(m1_axis_tdest[15]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[1]),
        .Q(m1_axis_tdest[1]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[2]),
        .Q(m1_axis_tdest[2]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[3]),
        .Q(m1_axis_tdest[3]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[4]),
        .Q(m1_axis_tdest[4]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[5]),
        .Q(m1_axis_tdest[5]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[6]),
        .Q(m1_axis_tdest[6]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[7]),
        .Q(m1_axis_tdest[7]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[8]),
        .Q(m1_axis_tdest[8]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tdest_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tdest[9]),
        .Q(m1_axis_tdest[9]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[0] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[0]),
        .Q(m1_axis_tkeep[0]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[10] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[10]),
        .Q(m1_axis_tkeep[10]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[11] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[11]),
        .Q(m1_axis_tkeep[11]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[12] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[12]),
        .Q(m1_axis_tkeep[12]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[13] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[13]),
        .Q(m1_axis_tkeep[13]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[14] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[14]),
        .Q(m1_axis_tkeep[14]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[15] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[15]),
        .Q(m1_axis_tkeep[15]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[1] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[1]),
        .Q(m1_axis_tkeep[1]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[2] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[2]),
        .Q(m1_axis_tkeep[2]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[3] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[3]),
        .Q(m1_axis_tkeep[3]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[4] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[4]),
        .Q(m1_axis_tkeep[4]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[5] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[5]),
        .Q(m1_axis_tkeep[5]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[6] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[6]),
        .Q(m1_axis_tkeep[6]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[7] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[7]),
        .Q(m1_axis_tkeep[7]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[8] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[8]),
        .Q(m1_axis_tkeep[8]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  FDRE \m1_axis_tkeep_reg[9] 
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(s_axis_tkeep[9]),
        .Q(m1_axis_tkeep[9]),
        .R(\m1_axis_tdata[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m1_axis_tlast_i_1
       (.I0(s_axis_tlast),
        .I1(demux_en),
        .O(m1_axis_tlast_i_1_n_0));
  FDRE m1_axis_tlast_reg
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(m1_axis_tlast_i_1_n_0),
        .Q(m1_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m1_axis_tvalid_i_1
       (.I0(s_axis_tvalid),
        .I1(demux_en),
        .O(m1_axis_tvalid_i_1_n_0));
  FDRE m1_axis_tvalid_reg
       (.C(s_axis_aclk),
        .CE(m0_axis_tready_0),
        .D(m1_axis_tvalid_i_1_n_0),
        .Q(m1_axis_tvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axis_tready_INST_0
       (.I0(m0_axis_tready),
        .I1(demux_en),
        .I2(m1_axis_tready),
        .O(m0_axis_tready_0));
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
