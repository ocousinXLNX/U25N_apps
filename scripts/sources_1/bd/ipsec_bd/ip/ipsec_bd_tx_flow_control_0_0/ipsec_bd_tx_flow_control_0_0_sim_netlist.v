// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:31:49 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_tx_flow_control_0_0/ipsec_bd_tx_flow_control_0_0_sim_netlist.v
// Design      : ipsec_bd_tx_flow_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_tx_flow_control_0_0,tx_flow_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "tx_flow_control,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_tx_flow_control_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    m_axis_aclk,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    tready_frm_flow_cntrl_ila,
    tready_frm_flow_cntrl);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_M00_AXIS_ACLK_0, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_M00_AXIS_ACLK_0, INSERT_VIP 0" *) input m_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_M00_AXIS_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [7:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_M00_AXIS_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [7:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  output tready_frm_flow_cntrl_ila;
  input tready_frm_flow_cntrl;

  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tready_frm_flow_cntrl;
  wire tready_frm_flow_cntrl_ila;

  assign m_axis_tdata[63:0] = s_axis_tdata;
  assign m_axis_tkeep[7:0] = s_axis_tkeep;
  ipsec_bd_tx_flow_control_0_0_tx_flow_control U0
       (.m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .tready_frm_flow_cntrl(tready_frm_flow_cntrl),
        .tready_frm_flow_cntrl_ila(tready_frm_flow_cntrl_ila));
endmodule

(* ORIG_REF_NAME = "tx_flow_control" *) 
module ipsec_bd_tx_flow_control_0_0_tx_flow_control
   (tready_frm_flow_cntrl_ila,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tready,
    s_axis_aclk,
    tready_frm_flow_cntrl,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_aresetn);
  output tready_frm_flow_cntrl_ila;
  output m_axis_tvalid;
  output m_axis_tlast;
  output s_axis_tready;
  input s_axis_aclk;
  input tready_frm_flow_cntrl;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input s_axis_aresetn;

  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]next_state;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]state;
  wire tready_frm_flow_cntrl;
  wire tready_frm_flow_cntrl_d1;
  wire tready_frm_flow_cntrl_d2_i_1_n_0;
  wire tready_frm_flow_cntrl_ila;

  LUT6 #(
    .INIT(64'h000000001DDDDDDD)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(tready_frm_flow_cntrl_ila),
        .I1(state[0]),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .I5(state[1]),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h0000800000FF8000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(state[0]),
        .I4(state[1]),
        .I5(tready_frm_flow_cntrl_ila),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "wt_tlast:01,check_rx_pause:10,init:00" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(tready_frm_flow_cntrl_d2_i_1_n_0));
  (* FSM_ENCODED_STATES = "wt_tlast:01,check_rx_pause:10,init:00" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(tready_frm_flow_cntrl_d2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    m_axis_tlast_INST_0
       (.I0(s_axis_tlast),
        .I1(state[1]),
        .I2(state[0]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    m_axis_tvalid_INST_0
       (.I0(s_axis_tvalid),
        .I1(state[1]),
        .I2(state[0]),
        .O(m_axis_tvalid));
  LUT3 #(
    .INIT(8'hA2)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(state[1]),
        .I2(state[0]),
        .O(s_axis_tready));
  FDRE tready_frm_flow_cntrl_d1_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(tready_frm_flow_cntrl),
        .Q(tready_frm_flow_cntrl_d1),
        .R(tready_frm_flow_cntrl_d2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tready_frm_flow_cntrl_d2_i_1
       (.I0(s_axis_aresetn),
        .O(tready_frm_flow_cntrl_d2_i_1_n_0));
  FDRE tready_frm_flow_cntrl_d2_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(tready_frm_flow_cntrl_d1),
        .Q(tready_frm_flow_cntrl_ila),
        .R(tready_frm_flow_cntrl_d2_i_1_n_0));
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
