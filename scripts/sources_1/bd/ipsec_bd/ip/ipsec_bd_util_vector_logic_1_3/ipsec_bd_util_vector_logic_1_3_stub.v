// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:07:09 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top ipsec_bd_util_vector_logic_1_3 -prefix
//               ipsec_bd_util_vector_logic_1_3_ ipsec_bd_util_vector_logic_0_2_stub.v
// Design      : ipsec_bd_util_vector_logic_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.1_AR75245" *)
module ipsec_bd_util_vector_logic_1_3(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
