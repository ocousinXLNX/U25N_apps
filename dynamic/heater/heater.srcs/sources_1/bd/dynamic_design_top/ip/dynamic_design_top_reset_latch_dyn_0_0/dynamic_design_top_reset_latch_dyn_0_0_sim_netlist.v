// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep 14 08:03:04 2021
// Host        : xiremeasae02 running 64-bit Ubuntu 20.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /scratch/kestera/projects/DFX/U25N_DFX/dynamic/heater/heater.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_reset_latch_dyn_0_0/dynamic_design_top_reset_latch_dyn_0_0_sim_netlist.v
// Design      : dynamic_design_top_reset_latch_dyn_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dynamic_design_top_reset_latch_dyn_0_0,reset_latch_dyn,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "reset_latch_dyn,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module dynamic_design_top_reset_latch_dyn_0_0
   (clk_100M_in,
    clk_200M_in,
    clk_400M_in,
    clk_250M_in,
    resetn_in,
    rstn_100M,
    rstn_200M,
    rstn_250M,
    rstn_400M);
  input clk_100M_in;
  input clk_200M_in;
  input clk_400M_in;
  input clk_250M_in;
  input resetn_in;
  output rstn_100M;
  output rstn_200M;
  output rstn_250M;
  output rstn_400M;

  wire clk_100M_in;
  wire clk_200M_in;
  wire clk_250M_in;
  wire clk_400M_in;
  wire resetn_in;
  wire rstn_100M;
  wire rstn_200M;
  wire rstn_250M;
  wire rstn_400M;

  dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn inst
       (.clk_100M_in(clk_100M_in),
        .clk_200M_in(clk_200M_in),
        .clk_250M_in(clk_250M_in),
        .clk_400M_in(clk_400M_in),
        .resetn_in(resetn_in),
        .rstn_100M(rstn_100M),
        .rstn_200M(rstn_200M),
        .rstn_250M(rstn_250M),
        .rstn_400M(rstn_400M));
endmodule

(* ORIG_REF_NAME = "reset_latch_dyn" *) 
module dynamic_design_top_reset_latch_dyn_0_0_reset_latch_dyn
   (rstn_100M,
    rstn_200M,
    rstn_250M,
    rstn_400M,
    resetn_in,
    clk_100M_in,
    clk_200M_in,
    clk_250M_in,
    clk_400M_in);
  output rstn_100M;
  output rstn_200M;
  output rstn_250M;
  output rstn_400M;
  input resetn_in;
  input clk_100M_in;
  input clk_200M_in;
  input clk_250M_in;
  input clk_400M_in;

  wire clk_100M_in;
  wire clk_200M_in;
  wire clk_250M_in;
  wire clk_400M_in;
  wire resetn_in;
  wire rstn_100M;
  wire rstn_200M;
  wire rstn_250M;
  wire rstn_400M;

  FDRE rstn_100M_reg
       (.C(clk_100M_in),
        .CE(1'b1),
        .D(resetn_in),
        .Q(rstn_100M),
        .R(1'b0));
  FDRE rstn_200M_reg
       (.C(clk_200M_in),
        .CE(1'b1),
        .D(resetn_in),
        .Q(rstn_200M),
        .R(1'b0));
  FDRE rstn_250M_reg
       (.C(clk_250M_in),
        .CE(1'b1),
        .D(resetn_in),
        .Q(rstn_250M),
        .R(1'b0));
  FDRE rstn_400M_reg
       (.C(clk_400M_in),
        .CE(1'b1),
        .D(resetn_in),
        .Q(rstn_400M),
        .R(1'b0));
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
