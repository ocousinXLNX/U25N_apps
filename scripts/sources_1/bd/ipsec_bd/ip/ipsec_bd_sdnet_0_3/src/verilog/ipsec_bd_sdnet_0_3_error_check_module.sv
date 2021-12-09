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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/parser/ttcl/error_check_module.ttcl#34 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"
 
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check_state_start START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_parse_error_check_state_start 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // global ports
    input  logic                aclk,
    input  logic                aresetn,
    // inputs
    input  logic                pipe_shift_en,
    input  T_PARSER_FRAME_INFO  frame_info_in,
    input  T_PARSER_STATE_INFO  state_info_in,
    // outputs
    output T_PARSER_STATE_INFO  state_info_out,
    output T_PARSER_ERROR_FLAGS error_flags
);

// signal declaration
T_PARSER_ERROR_FLAGS error_flags_reg;

// error generation
assign error_flags.PacketTooShort0 = ( frame_info_in.end_of_frame ? ( frame_info_in.extracted_bits < state_info_in.length ) : '0 );
assign error_flags.HeaderTooShort = ( state_info_in.valid.length ? ( state_info_in.length > 16'd12160 ) : error_flags_reg.HeaderTooShort ) & ~error_flags.PacketTooShort0;
assign error_flags.PacketTooShort = '0;
assign error_flags.NoMatch = '0;
assign error_flags.StackOutOfBounds = '0;
assign error_flags.ParserTimeout = '0;
assign error_flags.InvalidIPpacket = '0;
assign error_flags.InvalidTCPpacket = '0;
assign error_flags.NoError = ~(error_flags.PacketTooShort | error_flags.NoMatch | error_flags.StackOutOfBounds | error_flags.HeaderTooShort | error_flags.ParserTimeout | error_flags.InvalidIPpacket | error_flags.InvalidTCPpacket | error_flags.PacketTooShort0);

// register internal error signals
`CLOCKED(aclk,aresetn)
begin
    error_flags_reg <= '{NoError:'1,default:'0};
end else begin
    if (pipe_shift_en) begin
        error_flags_reg <= error_flags;
    end
end

// gate state info out
always_comb begin
    state_info_out.error      <= '{NoError:'1,default:'0};
    state_info_out.offset     <= state_info_in.offset;
    state_info_out.verify     <= error_flags.NoError ? state_info_in.verify     : '0;
    state_info_out.valid      <= error_flags.NoError ? state_info_in.valid      : '0;
    state_info_out.transition <= error_flags.NoError ? state_info_in.transition : C_NULL;
    case ({error_flags.PacketTooShort0}) 
        default: begin
            state_info_out.length <= state_info_in.length;
        end
        1'h1: begin
            state_info_out.length <= 16'd0; // error_flags.PacketTooShort0
        end
    endcase
end

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check_state_start END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check_level_0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_parse_error_check_level_0 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // global ports
    input  logic                aclk,
    input  logic                aresetn,
    // inputs
    input  logic                pipe_shift_en,
    input  T_PARSER_LEVEL_INFO  prev_level_info,
    input  T_PARSER_FRAME_INFO  frame_info_in,
    input  T_PARSER_LEVEL_INFO  level_info_in,
    // Outputs
    output T_PARSER_LEVEL_INFO  level_info_out,
    output T_PARSER_ERROR_FLAGS level_error_flags
);

// inter-module signal declaration
T_PARSER_ERROR_FLAGS state_start_error_flags;
T_PARSER_LEVEL_INFO  state_start_state_info;

// Parser State Instantiation  
 
ipsec_bd_sdnet_0_3_parse_error_check_state_start parse_error_check_state_start_inst (
    .aclk           (aclk),
    .aresetn        (aresetn),
    .pipe_shift_en  (pipe_shift_en),
    .frame_info_in  (frame_info_in),
    .state_info_in  (level_info_in),
    .state_info_out (state_start_state_info),
    .error_flags    (state_start_error_flags)
);

// Level error MUX out
always_comb begin
    case (prev_level_info.transition)
        default: begin
            level_error_flags <= '{NoError:'1,default:'0};
        end
        C_START: begin
            level_error_flags <= state_start_error_flags;
        end
    endcase
end

// Level info MUX out
always_comb begin
    case (prev_level_info.transition)
        default: begin
            level_info_out <= level_info_in;
        end
        C_START: begin
            level_info_out <= state_start_state_info;
        end
    endcase
end

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check_level_0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_error_check_module 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // global ports
    input  logic                                       aclk,
    input  logic                                       aresetn,
    // Inputs                                         
    input  logic                                       pipe_shift_en,
    input  T_PARSER_FRAME_INFO [C_PARSER_NUM_LEVELS:0] frame_info_in,
    input  T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_in,
    // outputs
    output T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_out
);

// inter-module signal declaration
T_PARSER_LEVEL_INFO  [3:0] [C_PARSER_NUM_LEVELS:0] level_info_in_pipe;
T_PARSER_LEVEL_INFO  [3:0] [C_PARSER_NUM_LEVELS:0] level_info_out_pipe;
T_PARSER_ERROR_FLAGS       [C_PARSER_NUM_LEVELS:0] level_error_flags;
T_PARSER_LEVEL_INFO        [C_PARSER_NUM_LEVELS:0] level_info_out_i;
T_PARSER_LEVEL_INFO        [C_PARSER_NUM_LEVELS:0] level_info_in_i;

T_PARSER_LEVEL_INFO level_info_in_default;
assign level_info_in_default = '{transition:C_START,default:'0};

// level info in/out pipelines for realignment
assign level_info_in_pipe[0]  = level_info_in;
assign level_info_out_pipe[0] = level_info_out;
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_in_pipe[3:1]  <= '0;
    level_info_out_pipe[3:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        level_info_in_pipe[3:1]  <= level_info_in_pipe[2:0];
        level_info_out_pipe[3:1] <= level_info_out_pipe[2:0];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        for (int i=0; i <= C_PARSER_NUM_LEVELS; i++)  begin
            level_info_in_pipe[1][i].valid  <= '0;
            level_info_in_pipe[2][i].valid  <= '0;
            level_info_in_pipe[3][i].valid  <= '0;
            level_info_out_pipe[1][i].valid <= '0;
            level_info_out_pipe[2][i].valid <= '0;
            level_info_out_pipe[3][i].valid <= '0;
        end
    end
`endif
end
 
// Level 0 error_check_module instantiation
ipsec_bd_sdnet_0_3_parse_error_check_level_0 parse_error_check_level_0_inst (
    .aclk              (aclk),
    .aresetn           (aresetn),
    .pipe_shift_en     (pipe_shift_en),
    .prev_level_info   (level_info_in_default),
    .level_info_in     (level_info_in[0]),
    .frame_info_in     (frame_info_in[0]),  
    .level_info_out    (level_info_in_i[0]),    
    .level_error_flags (level_error_flags[0])
);

// output level info assignment
always_comb begin
    // start level
    level_info_out_i[0].offset     = '0;   
    level_info_out_i[0].length     = level_info_in_i[0].length;     
    level_info_out_i[0].transition = level_info_in_i[0].transition; 
    level_info_out_i[0].verify     = level_info_in_i[0].verify;     
    level_info_out_i[0].valid      = level_info_in_i[0].valid;  
    level_info_out_i[0].error      = level_error_flags[0];
    // mid levels
    // payload level
    level_info_out_i[1].offset      = level_info_out_i[0].offset + level_info_out_i[0].length;
    level_info_out_i[1].length      = '0;
    level_info_out_i[1].transition  = C_NULL;
    level_info_out_i[1].verify      = '0;
    level_info_out_i[1].valid       = '0;
    level_info_out_i[1].error       = level_info_out_i[0].error;
end 

`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    for (int i=0; i <= C_PARSER_NUM_LEVELS; i++) 
        level_info_out[i].valid <= '0;
end else begin
    if (pipe_shift_en) begin
        level_info_out <= level_info_out_i;
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        for (int i=0; i <= C_PARSER_NUM_LEVELS; i++) 
            level_info_out[i].valid <= '0;
    end
`endif
end

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_parse_error_check END
//------------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
