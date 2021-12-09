// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Sep 30 14:03:06 2021
// Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /scratch/kestera/projects/DFX/U25N_DFX/dynamic/p4_example/p4_example.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_Register_interface_0/dynamic_design_top_Register_interface_0_sim_netlist.v
// Design      : dynamic_design_top_Register_interface_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dynamic_design_top_Register_interface_0,Register_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Register_interface,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module dynamic_design_top_Register_interface_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_100M_in, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [31:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [31:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN dynamic_design_top_clk_100M_in, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [31:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:31]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[30] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[27] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[26] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[25] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[18] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[15] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[12] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[11] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[10] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[9] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[6] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[5] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[4] = \<const0> ;
  assign s00_axi_rdata[3] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[2] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[1] = \^s00_axi_rdata [31];
  assign s00_axi_rdata[0] = \^s00_axi_rdata [31];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_wready = s00_axi_awready;
  GND GND
       (.G(\<const0> ));
  dynamic_design_top_Register_interface_0_Register_interface inst
       (.D({s00_axi_awready,s00_axi_bvalid}),
        .FSM_sequential_rd_state_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[7:3]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Register_interface" *) 
module dynamic_design_top_Register_interface_0_Register_interface
   (D,
    s00_axi_arready,
    FSM_sequential_rd_state_reg,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_rready);
  output [1:0]D;
  output s00_axi_arready;
  output FSM_sequential_rd_state_reg;
  output [0:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [4:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_rready;

  wire [1:0]D;
  wire FSM_sequential_rd_state_reg;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [0:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_wvalid;

  dynamic_design_top_Register_interface_0_axi_ctrlif ctrlif
       (.D(D),
        .FSM_sequential_rd_state_reg_0(FSM_sequential_rd_state_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_ctrlif" *) 
module dynamic_design_top_Register_interface_0_axi_ctrlif
   (D,
    s00_axi_arready,
    FSM_sequential_rd_state_reg_0,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_rready);
  output [1:0]D;
  output s00_axi_arready;
  output FSM_sequential_rd_state_reg_0;
  output [0:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [4:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_rready;

  wire \/i__n_0 ;
  wire [1:0]D;
  wire \FSM_onehot_wr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_wr_state_reg_n_0_[0] ;
  wire FSM_sequential_rd_state_i_1_n_0;
  wire FSM_sequential_rd_state_reg_0;
  wire [5:1]rd_addr;
  wire \rd_addr[5]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [0:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_wvalid;

  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \/i_ 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(s00_axi_bready),
        .I3(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(\/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wr_state[1]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wr_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .D(D[0]),
        .Q(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .S(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .D(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .Q(D[1]),
        .R(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\/i__n_0 ),
        .D(D[1]),
        .Q(D[0]),
        .R(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7200)) 
    FSM_sequential_rd_state_i_1
       (.I0(FSM_sequential_rd_state_reg_0),
        .I1(s00_axi_rready),
        .I2(s00_axi_arvalid),
        .I3(s00_axi_aresetn),
        .O(FSM_sequential_rd_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "idle:0,resp:1," *) 
  FDRE FSM_sequential_rd_state_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_1_n_0),
        .Q(FSM_sequential_rd_state_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \rd_addr[5]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(FSM_sequential_rd_state_reg_0),
        .I2(s00_axi_arvalid),
        .O(\rd_addr[5]_i_1_n_0 ));
  FDRE \rd_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(rd_addr[1]),
        .R(1'b0));
  FDRE \rd_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(rd_addr[2]),
        .R(1'b0));
  FDRE \rd_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(rd_addr[3]),
        .R(1'b0));
  FDRE \rd_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(rd_addr[4]),
        .R(1'b0));
  FDRE \rd_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rd_addr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[4]),
        .Q(rd_addr[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s00_axi_arready_INST_0
       (.I0(FSM_sequential_rd_state_reg_0),
        .O(s00_axi_arready));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(rd_addr[1]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[4]),
        .I4(rd_addr[5]),
        .O(s00_axi_rdata));
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
