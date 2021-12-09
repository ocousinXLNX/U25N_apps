// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:10:08 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_flow_control_0_0/ipsec_bd_mac_flow_control_0_0_sim_netlist.v
// Design      : ipsec_bd_mac_flow_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_mac_flow_control_0_0,mac_flow_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mac_flow_control,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_mac_flow_control_0_0
   (s00_axi_aclk,
    m00_axi_aclk,
    s00_axi_aresetn,
    i_fifo_full,
    i_stat_tx_pause_valid,
    o_fifo_full_ila,
    o_ctl_tx_pause_req,
    o_ctl_tx_resend_pause);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m00_axi_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  input i_fifo_full;
  input [8:0]i_stat_tx_pause_valid;
  output o_fifo_full_ila;
  output [8:0]o_ctl_tx_pause_req;
  output o_ctl_tx_resend_pause;

  wire i_fifo_full;
  wire [8:0]i_stat_tx_pause_valid;
  wire m00_axi_aclk;
  wire [8:0]o_ctl_tx_pause_req;
  wire o_ctl_tx_resend_pause;
  wire o_fifo_full_ila;
  wire s00_axi_aresetn;

  (* KEEP_HIERARCHY = "soft" *) 
  ipsec_bd_mac_flow_control_0_0_mac_flow_control U0
       (.i_fifo_full(i_fifo_full),
        .i_stat_tx_pause_valid(i_stat_tx_pause_valid),
        .m00_axi_aclk(m00_axi_aclk),
        .o_ctl_tx_pause_req(o_ctl_tx_pause_req),
        .o_ctl_tx_resend_pause(o_ctl_tx_resend_pause),
        .o_fifo_full_ila(o_fifo_full_ila),
        .s00_axi_aclk(1'b0),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "mac_flow_control" *) (* keep_hierarchy = "soft" *) 
module ipsec_bd_mac_flow_control_0_0_mac_flow_control
   (s00_axi_aclk,
    m00_axi_aclk,
    s00_axi_aresetn,
    i_fifo_full,
    i_stat_tx_pause_valid,
    o_fifo_full_ila,
    o_ctl_tx_pause_req,
    o_ctl_tx_resend_pause);
  input s00_axi_aclk;
  input m00_axi_aclk;
  input s00_axi_aresetn;
  (* mark_debug = "true" *) input i_fifo_full;
  (* mark_debug = "true" *) input [8:0]i_stat_tx_pause_valid;
  output o_fifo_full_ila;
  (* mark_debug = "true" *) output [8:0]o_ctl_tx_pause_req;
  (* mark_debug = "true" *) output o_ctl_tx_resend_pause;

  (* MARK_DEBUG *) wire [4:0]counter_value;
  wire \counter_value[0]_i_1_n_0 ;
  wire \counter_value[1]_i_1_n_0 ;
  wire \counter_value[2]_i_1_n_0 ;
  wire \counter_value[3]_i_1_n_0 ;
  wire \counter_value[4]_i_1_n_0 ;
  wire \counter_value[4]_i_2_n_0 ;
  wire \ctl_tx_pause_req_s[8]_i_1_n_0 ;
  wire ctl_tx_resend_pause_s_i_1_n_0;
  (* MARK_DEBUG *) wire enable_counter;
  wire enable_counter_i_1_n_0;
  wire fifo_full_d1;
  wire fifo_full_d2_i_1_n_0;
  (* MARK_DEBUG *) wire i_fifo_full;
  (* MARK_DEBUG *) wire [8:0]i_stat_tx_pause_valid;
  wire m00_axi_aclk;
  wire [2:0]next_state;
  (* MARK_DEBUG *) wire [8:0]o_ctl_tx_pause_req;
  (* MARK_DEBUG *) wire o_ctl_tx_resend_pause;
  wire o_fifo_full_ila;
  wire s00_axi_aresetn;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1040FFFA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(o_ctl_tx_pause_req[8]),
        .I2(state[1]),
        .I3(o_fifo_full_ila),
        .I4(state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44000A0A)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(o_fifo_full_ila),
        .I3(o_ctl_tx_pause_req[8]),
        .I4(state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(fifo_full_d2_i_1_n_0));
  (* FSM_ENCODED_STATES = "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(fifo_full_d2_i_1_n_0));
  (* FSM_ENCODED_STATES = "count_5bit:010,check_fifo_full:011,resend_pause:100,init:000,fifo_empty:101,enable_pause:001" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(state[2]),
        .R(fifo_full_d2_i_1_n_0));
  LUT4 #(
    .INIT(16'h1204)) 
    \counter_value[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(counter_value[0]),
        .O(\counter_value[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h051A0040)) 
    \counter_value[1]_i_1 
       (.I0(state[0]),
        .I1(counter_value[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(counter_value[1]),
        .O(\counter_value[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h005515AA00004000)) 
    \counter_value[2]_i_1 
       (.I0(state[0]),
        .I1(counter_value[1]),
        .I2(counter_value[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(counter_value[2]),
        .O(\counter_value[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h051A0040)) 
    \counter_value[3]_i_1 
       (.I0(state[0]),
        .I1(\counter_value[4]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(counter_value[3]),
        .O(\counter_value[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h005515AA00004000)) 
    \counter_value[4]_i_1 
       (.I0(state[0]),
        .I1(counter_value[3]),
        .I2(\counter_value[4]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(counter_value[4]),
        .O(\counter_value[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \counter_value[4]_i_2 
       (.I0(counter_value[2]),
        .I1(counter_value[0]),
        .I2(counter_value[1]),
        .O(\counter_value[4]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \counter_value_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\counter_value[0]_i_1_n_0 ),
        .Q(counter_value[0]),
        .R(fifo_full_d2_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \counter_value_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\counter_value[1]_i_1_n_0 ),
        .Q(counter_value[1]),
        .R(fifo_full_d2_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \counter_value_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\counter_value[2]_i_1_n_0 ),
        .Q(counter_value[2]),
        .R(fifo_full_d2_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \counter_value_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\counter_value[3]_i_1_n_0 ),
        .Q(counter_value[3]),
        .R(fifo_full_d2_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE \counter_value_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\counter_value[4]_i_1_n_0 ),
        .Q(counter_value[4]),
        .R(fifo_full_d2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF604)) 
    \ctl_tx_pause_req_s[8]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(o_ctl_tx_pause_req[8]),
        .O(\ctl_tx_pause_req_s[8]_i_1_n_0 ));
  FDRE \ctl_tx_pause_req_s_reg[8] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\ctl_tx_pause_req_s[8]_i_1_n_0 ),
        .Q(o_ctl_tx_pause_req[8]),
        .R(fifo_full_d2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBE04)) 
    ctl_tx_resend_pause_s_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(o_ctl_tx_resend_pause),
        .O(ctl_tx_resend_pause_s_i_1_n_0));
  FDRE ctl_tx_resend_pause_s_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(ctl_tx_resend_pause_s_i_1_n_0),
        .Q(o_ctl_tx_resend_pause),
        .R(fifo_full_d2_i_1_n_0));
  LUT4 #(
    .INIT(16'h04EA)) 
    enable_counter_i_1
       (.I0(state[0]),
        .I1(enable_counter),
        .I2(state[2]),
        .I3(state[1]),
        .O(enable_counter_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE enable_counter_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(enable_counter_i_1_n_0),
        .Q(enable_counter),
        .R(fifo_full_d2_i_1_n_0));
  FDRE fifo_full_d1_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(i_fifo_full),
        .Q(fifo_full_d1),
        .R(fifo_full_d2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_full_d2_i_1
       (.I0(s00_axi_aresetn),
        .O(fifo_full_d2_i_1_n_0));
  FDRE fifo_full_d2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_d1),
        .Q(o_fifo_full_ila),
        .R(fifo_full_d2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(o_ctl_tx_pause_req[0]));
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
