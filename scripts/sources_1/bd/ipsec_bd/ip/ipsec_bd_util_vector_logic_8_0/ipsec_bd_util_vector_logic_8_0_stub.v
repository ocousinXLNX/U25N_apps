// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep 22 10:59:25 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_0F/BD/ipsec_bd/ip/ipsec_bd_util_vector_logic_8_0/ipsec_bd_util_vector_logic_8_0_stub.v
// Design      : ipsec_bd_util_vector_logic_8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1_AR75245" *)
module ipsec_bd_util_vector_logic_8_0(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Op2[0:0],Res[0:0]" */;
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
endmodule
