//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2015 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// US ExportControl: EAR 3E001
//
//
//       Owner:
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/action/ttcl/action_engine.ttcl#41 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action0_act_op0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action0_act_op0 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION0_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action0_act_op0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action0_act_op1 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action0_act_op1 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION0_ARGS args,
    // Inputs ports
    input logic [31:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [31:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 32;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action0_act_op1 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action1_act_0_op0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action1_act_0_op0 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION1_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 0
assign op_in_right[0][0:0] = 1'h0;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action1_act_0_op0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action2_act_1_op0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action2_act_1_op0 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION2_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action2_act_1_op0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action2_act_1_op1 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action2_act_1_op1 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION2_ARGS args,
    // Inputs ports
    input logic [111:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [111:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 112;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action2_act_1_op1 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op0 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op1 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op1 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [3:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [3:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 4;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op1 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op2 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op2 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [3:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [3:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 4;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op2 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op3 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op3 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [7:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [7:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 8;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op3 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op4 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op4 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "( ( ( in_0 + 0x34 ) & 0xFFFF ) )";
localparam TOTAL_OP_COUNT = 2;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 17;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (17),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_0 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[0][16:0]),
    .b    (op_in_right[0][15:0]),
    .c    (op_out[0][15:0])
);
assign op_out[0][DATA_WIDTH-1:16] = '0;
// OP 1
adder #(
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (6),
    .WIDTH_S (17),
    .MODE    ("+")
) op_1 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[1][15:0]),
    .b    (op_in_right[1][5:0]),
    .s    (op_out[1][16:0])
);
    
// ////////////////////////////
// left connections
// Connected OP 0 left to OP 1 out
assign op_in_left[0] = op_out[1];
// Connected OP 1 left to input 0, pipeline stage 0
assign op_in_left[1] = in_pipe[0][0];
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 0xFFFF
assign op_in_right[0][15:0] = 16'hffff;
// Connected OP 1 right to constant 0x34
assign op_in_right[1][5:0] = 6'h34;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op4 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op5 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op5 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op5 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op6 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op6 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [2:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [2:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 3;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op6 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op7 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op7 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [12:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [12:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 13;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op7 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op8 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op8 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [7:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [7:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 8;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op8 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op9 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op9 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [7:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 0x32";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 6;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 0x32
assign op_in_right[0][5:0] = 6'h32;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op9 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op10 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op10 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 0x0000";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 0x0000
assign op_in_right[0][0:0] = 1'h0;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op10 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op11 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op11 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op11 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op12 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op12 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op12 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op13 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op13 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op13 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op14 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op14 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op14 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op15 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op15 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op15 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op16 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op16 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [63:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [63:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 64;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op16 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op17 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op17 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op17 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op18 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op18 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [63:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [63:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 64;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op18 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op19 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op19 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic in_valid,
    // Outputs ports
    output logic [0:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = 1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 0;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op19 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op20 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op20 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [127:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [127:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 128;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op20 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op21 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op21 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [3:0] in_0,
    input logic [3:0] in_1,
    input logic [7:0] in_2,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "( ( ( ( ( ( ( ( ( in_0 & 0xFF ) << 0x4 ) & 0xFF ) | ( ( in_1 & 0xFF ) & 0x1F ) ) & 0xFFFF ) << 0x8 ) & 0xFFFF ) | ( ( in_2 & 0xFFFF ) & 0x1FF ) ) )";
localparam TOTAL_OP_COUNT = 12;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 3;
localparam DATA_WIDTH     = 24;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
    in_pipe[0][1] <= in_1;
    in_pipe[0][2] <= in_2;
end


// ////////////////////////////////
// operation instantiation
// OP 0
logicGate #(
    .MODE    ("|"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (9),
    .WIDTH_C (16)
) op_0 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[0][15:0]),
    .b    (op_in_right[0][8:0]),
    .c    (op_out[0][15:0])
);
assign op_out[0][DATA_WIDTH-1:16] = '0;
// OP 1
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (24),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_1 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[1][23:0]),
    .b    (op_in_right[1][15:0]),
    .c    (op_out[1][15:0])
);
assign op_out[1][DATA_WIDTH-1:16] = '0;
// OP 2
shifter #(
    .MODE    ("<<"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (4),
    .WIDTH_F (24)
) op_2 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[2][15:0]),
    .b    (op_in_right[2][3:0]),
    .f    (op_out[2][23:0])
);
// OP 3
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_3 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[3][7:0]),
    .b    (op_in_right[3][15:0]),
    .c    (op_out[3][15:0])
);
assign op_out[3][DATA_WIDTH-1:16] = '0;
// OP 4
logicGate #(
    .MODE    ("|"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (5),
    .WIDTH_C (8)
) op_4 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[4][7:0]),
    .b    (op_in_right[4][4:0]),
    .c    (op_out[4][7:0])
);
assign op_out[4][DATA_WIDTH-1:8] = '0;
// OP 5
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (12),
    .WIDTH_B (8),
    .WIDTH_C (8)
) op_5 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[5][11:0]),
    .b    (op_in_right[5][7:0]),
    .c    (op_out[5][7:0])
);
assign op_out[5][DATA_WIDTH-1:8] = '0;
// OP 6
shifter #(
    .MODE    ("<<"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (3),
    .WIDTH_F (12)
) op_6 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[6][7:0]),
    .b    (op_in_right[6][2:0]),
    .f    (op_out[6][11:0])
);
assign op_out[6][DATA_WIDTH-1:12] = '0;
// OP 7
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (4),
    .WIDTH_B (8),
    .WIDTH_C (8)
) op_7 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[7][3:0]),
    .b    (op_in_right[7][7:0]),
    .c    (op_out[7][7:0])
);
assign op_out[7][DATA_WIDTH-1:8] = '0;
// OP 8
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (5),
    .WIDTH_C (5)
) op_8 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[8][7:0]),
    .b    (op_in_right[8][4:0]),
    .c    (op_out[8][4:0])
);
assign op_out[8][DATA_WIDTH-1:5] = '0;
// OP 9
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (4),
    .WIDTH_B (8),
    .WIDTH_C (8)
) op_9 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[9][3:0]),
    .b    (op_in_right[9][7:0]),
    .c    (op_out[9][7:0])
);
assign op_out[9][DATA_WIDTH-1:8] = '0;
// OP 10
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (9),
    .WIDTH_C (9)
) op_10 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[10][15:0]),
    .b    (op_in_right[10][8:0]),
    .c    (op_out[10][8:0])
);
assign op_out[10][DATA_WIDTH-1:9] = '0;
// OP 11
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_11 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[11][7:0]),
    .b    (op_in_right[11][15:0]),
    .c    (op_out[11][15:0])
);
assign op_out[11][DATA_WIDTH-1:16] = '0;
    
// ////////////////////////////
// left connections
// Connected OP 0 left to OP 1 out
assign op_in_left[0] = op_out[1];
// Connected OP 1 left to OP 2 out
assign op_in_left[1] = op_out[2];
// Connected OP 2 left to OP 3 out
assign op_in_left[2] = op_out[3];
// Connected OP 3 left to OP 4 out
assign op_in_left[3] = op_out[4];
// Connected OP 4 left to OP 5 out
assign op_in_left[4] = op_out[5];
// Connected OP 5 left to OP 6 out
assign op_in_left[5] = op_out[6];
// Connected OP 6 left to OP 7 out
assign op_in_left[6] = op_out[7];
// Connected OP 7 left to input 0, pipeline stage 0
assign op_in_left[7] = in_pipe[0][0];
// Connected OP 8 left to OP 9 out
assign op_in_left[8] = op_out[9];
// Connected OP 9 left to input 1, pipeline stage 0
assign op_in_left[9] = in_pipe[0][1];
// Connected OP 10 left to OP 11 out
assign op_in_left[10] = op_out[11];
// Connected OP 11 left to input 2, pipeline stage 0
assign op_in_left[11] = in_pipe[0][2];
 
// ////////////////////////////
// right connections
// Connected OP 0 right to OP 10 out
assign op_in_right[0] = op_out[10];
// Connected OP 1 right to constant 0xFFFF
assign op_in_right[1][15:0] = 16'hffff;
// Connected OP 2 right to constant 0x8
assign op_in_right[2][3:0] = 4'h8;
// Connected OP 3 right to constant 0xFFFF
assign op_in_right[3][15:0] = 16'hffff;
// Connected OP 4 right to OP 8 out
assign op_in_right[4] = op_out[8];
// Connected OP 5 right to constant 0xFF
assign op_in_right[5][7:0] = 8'hff;
// Connected OP 6 right to constant 0x4
assign op_in_right[6][2:0] = 3'h4;
// Connected OP 7 right to constant 0xFF
assign op_in_right[7][7:0] = 8'hff;
// Connected OP 8 right to constant 0x1F
assign op_in_right[8][4:0] = 5'h1f;
// Connected OP 9 right to constant 0xFF
assign op_in_right[9][7:0] = 8'hff;
// Connected OP 10 right to constant 0x1FF
assign op_in_right[10][8:0] = 9'h1ff;
// Connected OP 11 right to constant 0xFFFF
assign op_in_right[11][15:0] = 16'hffff;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op21 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op22 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op22 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op22 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op23 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op23 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op23 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op24 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op24 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [2:0] in_0,
    input logic [12:0] in_1,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "( ( ( ( ( in_0 & 0xFFFF ) << 0xD ) & 0xFFFF ) | ( ( in_1 & 0xFFFF ) & 0x3FFF ) ) )";
localparam TOTAL_OP_COUNT = 6;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 2;
localparam DATA_WIDTH     = 29;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
    in_pipe[0][1] <= in_1;
end


// ////////////////////////////////
// operation instantiation
// OP 0
logicGate #(
    .MODE    ("|"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (14),
    .WIDTH_C (16)
) op_0 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[0][15:0]),
    .b    (op_in_right[0][13:0]),
    .c    (op_out[0][15:0])
);
assign op_out[0][DATA_WIDTH-1:16] = '0;
// OP 1
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (29),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_1 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[1][28:0]),
    .b    (op_in_right[1][15:0]),
    .c    (op_out[1][15:0])
);
assign op_out[1][DATA_WIDTH-1:16] = '0;
// OP 2
shifter #(
    .MODE    ("<<"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (4),
    .WIDTH_F (29)
) op_2 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[2][15:0]),
    .b    (op_in_right[2][3:0]),
    .f    (op_out[2][28:0])
);
// OP 3
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (3),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_3 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[3][2:0]),
    .b    (op_in_right[3][15:0]),
    .c    (op_out[3][15:0])
);
assign op_out[3][DATA_WIDTH-1:16] = '0;
// OP 4
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (14),
    .WIDTH_C (14)
) op_4 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[4][15:0]),
    .b    (op_in_right[4][13:0]),
    .c    (op_out[4][13:0])
);
assign op_out[4][DATA_WIDTH-1:14] = '0;
// OP 5
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (13),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_5 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[5][12:0]),
    .b    (op_in_right[5][15:0]),
    .c    (op_out[5][15:0])
);
assign op_out[5][DATA_WIDTH-1:16] = '0;
    
// ////////////////////////////
// left connections
// Connected OP 0 left to OP 1 out
assign op_in_left[0] = op_out[1];
// Connected OP 1 left to OP 2 out
assign op_in_left[1] = op_out[2];
// Connected OP 2 left to OP 3 out
assign op_in_left[2] = op_out[3];
// Connected OP 3 left to input 0, pipeline stage 0
assign op_in_left[3] = in_pipe[0][0];
// Connected OP 4 left to OP 5 out
assign op_in_left[4] = op_out[5];
// Connected OP 5 left to input 1, pipeline stage 0
assign op_in_left[5] = in_pipe[0][1];
 
// ////////////////////////////
// right connections
// Connected OP 0 right to OP 4 out
assign op_in_right[0] = op_out[4];
// Connected OP 1 right to constant 0xFFFF
assign op_in_right[1][15:0] = 16'hffff;
// Connected OP 2 right to constant 0xD
assign op_in_right[2][3:0] = 4'hd;
// Connected OP 3 right to constant 0xFFFF
assign op_in_right[3][15:0] = 16'hffff;
// Connected OP 4 right to constant 0x3FFF
assign op_in_right[4][13:0] = 14'h3fff;
// Connected OP 5 right to constant 0xFFFF
assign op_in_right[5][15:0] = 16'hffff;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op24 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op25 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op25 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [7:0] in_0,
    input logic [7:0] in_1,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "( ( ( ( ( in_0 & 0xFFFF ) << 0x8 ) & 0xFFFF ) | ( ( in_1 & 0xFFFF ) & 0x1FF ) ) )";
localparam TOTAL_OP_COUNT = 6;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 2;
localparam DATA_WIDTH     = 24;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
    in_pipe[0][1] <= in_1;
end


// ////////////////////////////////
// operation instantiation
// OP 0
logicGate #(
    .MODE    ("|"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (9),
    .WIDTH_C (16)
) op_0 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[0][15:0]),
    .b    (op_in_right[0][8:0]),
    .c    (op_out[0][15:0])
);
assign op_out[0][DATA_WIDTH-1:16] = '0;
// OP 1
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (24),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_1 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[1][23:0]),
    .b    (op_in_right[1][15:0]),
    .c    (op_out[1][15:0])
);
assign op_out[1][DATA_WIDTH-1:16] = '0;
// OP 2
shifter #(
    .MODE    ("<<"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (4),
    .WIDTH_F (24)
) op_2 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[2][15:0]),
    .b    (op_in_right[2][3:0]),
    .f    (op_out[2][23:0])
);
// OP 3
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_3 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[3][7:0]),
    .b    (op_in_right[3][15:0]),
    .c    (op_out[3][15:0])
);
assign op_out[3][DATA_WIDTH-1:16] = '0;
// OP 4
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (16),
    .WIDTH_B (9),
    .WIDTH_C (9)
) op_4 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[4][15:0]),
    .b    (op_in_right[4][8:0]),
    .c    (op_out[4][8:0])
);
assign op_out[4][DATA_WIDTH-1:9] = '0;
// OP 5
logicGate #(
    .MODE    ("&"),
    .LATENCY (0),
    .WIDTH_A (8),
    .WIDTH_B (16),
    .WIDTH_C (16)
) op_5 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[5][7:0]),
    .b    (op_in_right[5][15:0]),
    .c    (op_out[5][15:0])
);
assign op_out[5][DATA_WIDTH-1:16] = '0;
    
// ////////////////////////////
// left connections
// Connected OP 0 left to OP 1 out
assign op_in_left[0] = op_out[1];
// Connected OP 1 left to OP 2 out
assign op_in_left[1] = op_out[2];
// Connected OP 2 left to OP 3 out
assign op_in_left[2] = op_out[3];
// Connected OP 3 left to input 0, pipeline stage 0
assign op_in_left[3] = in_pipe[0][0];
// Connected OP 4 left to OP 5 out
assign op_in_left[4] = op_out[5];
// Connected OP 5 left to input 1, pipeline stage 0
assign op_in_left[5] = in_pipe[0][1];
 
// ////////////////////////////
// right connections
// Connected OP 0 right to OP 4 out
assign op_in_right[0] = op_out[4];
// Connected OP 1 right to constant 0xFFFF
assign op_in_right[1][15:0] = 16'hffff;
// Connected OP 2 right to constant 0x8
assign op_in_right[2][3:0] = 4'h8;
// Connected OP 3 right to constant 0xFFFF
assign op_in_right[3][15:0] = 16'hffff;
// Connected OP 4 right to constant 0x1FF
assign op_in_right[4][8:0] = 9'h1ff;
// Connected OP 5 right to constant 0xFFFF
assign op_in_right[5][15:0] = 16'hffff;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op25 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op26 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op26 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op26 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op27 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op27 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op27 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op28 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op28 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op28 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op29 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op29 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op29 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op30 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op30 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op30 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op32 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op32 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input logic [15:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "null = in_0";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 16;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
assign op_out[0] = op_in_right[0];
    
// ////////////////////////////
// left connections
// Connected OP 0 left to null
 
// ////////////////////////////
// right connections
// Connected OP 0 right to input 0, pipeline stage 0
assign op_in_right[0] = in_pipe[0][0];
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_0 = op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op32 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_conditional0_node_89 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_conditional0_node_89 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Inputs ports
    input logic [0:0] in_0,
    input  logic in_valid,
    // Outputs ports
    output logic out_true,
    output logic out_false,
    output logic out_valid
);

// local parameters
localparam EXPRESSION     = "in_0 == 0x1";
localparam TOTAL_OP_COUNT = 1;
localparam TOTAL_LATENCY  = 0;
localparam INPUT_PORTS    = 1;
localparam DATA_WIDTH     = 1;
    
// pipelined signal declaration
`INIT(logic [TOTAL_LATENCY:0] [INPUT_PORTS-1:0] [DATA_WIDTH-1:0] in_pipe,       '0)
`INIT(logic [TOTAL_LATENCY:0]                                    in_valid_pipe, '0)
    
// inter operation signal declaration
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_left;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_in_right;
logic [TOTAL_OP_COUNT-1:0] [DATA_WIDTH-1:0] op_out;
    
// pipeline input
always_comb begin
    in_valid_pipe[0] <= in_valid;
    in_pipe[0][0] <= in_0;
end


// ////////////////////////////////
// operation instantiation
// OP 0
booleanFunc #(
    .MODE    ("=="),
    .LATENCY (0),
    .WIDTH_A (1),
    .WIDTH_B (1)
) op_0 (
    .clk  (aclk),
    .rstn (aresetn),
    .a    (op_in_left[0][0:0]),
    .b    (op_in_right[0][0:0]),
    .o    (op_out[0][0:0])
);
    
// ////////////////////////////
// left connections
// Connected OP 0 left to input 0, pipeline stage 0
assign op_in_left[0] = in_pipe[0][0];
 
// ////////////////////////////
// right connections
// Connected OP 0 right to constant 0x1
assign op_in_right[0][0:0] = 1'h1;
 
// ///////////////
// assign output
assign out_valid = in_valid_pipe[TOTAL_LATENCY];
assign out_true  = op_out[0];
assign out_false = ~op_out[0];
    
endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_conditional0_node_89 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op31 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_action3_act_2_op31 (
    // clocks & resets
    input  logic aclk,
    input  logic aresetn,
    // Action Arguments
    input  ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION3_ARGS args,
    // Inputs ports
    input  logic [15:0] in_0,
    input  logic [15:0] in_1,
    input  logic [15:0] in_2,
    input  logic [15:0] in_3,
    input  logic [15:0] in_4,
    input  logic [15:0] in_5,
    input  logic [15:0] in_6,
    input  logic [15:0] in_7,
    input  logic [15:0] in_8,
    input  logic [15:0] in_9,
    input  logic in_valid,
    // Outputs ports
    output logic [15:0] out_0,
    output logic out_valid,
    // User Extern ports
    input  logic [15:0] user_extern_in,
    input  logic user_extern_in_valid,
    output logic [159:0] user_extern_out,
    output logic user_extern_out_valid
);

localparam TOTAL_LATENCY = 7;

bit [TOTAL_LATENCY:0] in_valid_pipe;

// input pipeline
assign in_valid_pipe[0] = in_valid;
`CLOCKED(aclk,aresetn)
begin
    in_valid_pipe[TOTAL_LATENCY:1] <= '0;
end else begin
    in_valid_pipe[TOTAL_LATENCY:1] <= in_valid_pipe[TOTAL_LATENCY-1:0];
end

`CLOCKED_NORESET(aclk,aresetn)
begin
    user_extern_out       <= '0;
    user_extern_out_valid <= '0;
end else begin
    user_extern_out <= {in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9};
    user_extern_out_valid <= in_valid;
end

always_ff @(posedge aclk) begin
    if (user_extern_in_valid) begin
        assert (user_extern_in_valid == in_valid_pipe[TOTAL_LATENCY])
        else $error("Valid signal for User Extern 'calc_checksum' asserted at the wrong time, not matching the specified fixed latency of 7 cycles. \
        Please verify that the fixed latency value for this User Extern in the P4 program is accurate and that the signal is asserted correctly at the input to SDNet.");
    end
    if (in_valid_pipe[TOTAL_LATENCY]) begin
        assert (user_extern_in_valid == in_valid_pipe[TOTAL_LATENCY])
        else $error("Valid signal for User Extern 'calc_checksum' not asserted as expected after specified fixed latency of 7 cycles. \
        Please verify that the fixed latency value for this User Extern in the P4 program is accurate and that the signal is asserted correctly at the input to SDNet.");
    end
end

assign {out_0} = user_extern_in;
assign out_valid = user_extern_in_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_action3_act_2_op31 END
//------------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
