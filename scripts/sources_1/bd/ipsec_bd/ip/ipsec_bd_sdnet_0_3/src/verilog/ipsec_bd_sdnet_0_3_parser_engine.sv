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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/parser/ttcl/parser_engine.ttcl#42 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

module ipsec_bd_sdnet_0_3_parser_engine 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic               aclk,
    input  logic               aresetn,
    // AXI Stream packet in ports                         
    input  T_AXIS_DATA         s_axis_tdata,
    input  T_AXIS_KEEP         s_axis_tkeep,
    input  logic               s_axis_tvalid,
    input  logic               s_axis_tlast,
    output logic               s_axis_tready,
    // AXI Stream packet out ports                        
    output T_AXIS_DATA         m_axis_tdata,
    output T_AXIS_COUNT        m_axis_tcount,
    output logic               m_axis_tvalid,
    output logic               m_axis_tlast,
    input  logic               m_axis_tready,
    // input vectors
    input  logic               vector_in_valid,
    input  T_USER_METADATA     user_metadata_in,
    input  T_STANDARD_METADATA standard_metadata_in,
    // output vectors
    output logic               vector_out_valid,
    output T_USER_METADATA     user_metadata_out,
    output T_STANDARD_METADATA standard_metadata_out,
    output T_HDR_INFO          hdr_info_vector_out,
    output T_HDR_FIELDS        hdr_fields_vector_out
);

// latency = 102 (cycles)
// latency(min) = 7 (cycles)
localparam LATENCY = 102;

// Control signals
`INIT(logic [C_PARSER_PIPE_DEPTH:0] flush_stream_pipe , '0);
`INIT(logic pipe_shift_en, '0);
logic flush_pipe_valid;
logic flush_pipe_ready;

// counter registers
`INIT(logic [15:0] frame_bit_count,  '0)
`INIT(logic [15:0] frame_word_count, '0)
`INIT(logic [7:0]  vector_ifg_cnt,   CLK2RATE_RATIO-1);

// extend input AXIS signals
logic [C_TKEEP_COUNT_BYTES-1:0] s_axis_tcount;
`INIT(logic                     s_axis_tfirst, '1);
logic                           m_axis_tfirst;

// Inter-module connection signals
T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_seq;
T_PARSER_FRAME_INFO [C_PARSER_NUM_LEVELS:0] frame_info_seq;
T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_err;
T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_ext;
T_PARSER_LEVEL_INFO                         level_info_in;
T_PARSER_FRAME_INFO                         frame_info_in;

`INIT(T_PARSER_LEVEL_INFO [C_PARSER_PIPE_DEPTH-1:0] [C_PARSER_NUM_LEVELS:0] level_info_pipe_i, T_PARSER_LEVEL_INFO'(0))
`INIT(T_PARSER_LEVEL_INFO [C_PARSER_PIPE_DEPTH:0]   [C_PARSER_NUM_LEVELS:0] level_info_pipe,   T_PARSER_LEVEL_INFO'(0))

`INIT(T_PARSER_PIPE [C_PARSER_PIPE_DEPTH-1:0] pipe_data_i, '{default:0})
`INIT(T_PARSER_PIPE [C_PARSER_PIPE_DEPTH:0]   pipe_data,   '{default:0})

// Vector output IFG buffer signals
logic [C_VECTOR_FIFO_WIDTH-1:0] vector_ifg_buffer_din;
logic [C_VECTOR_FIFO_WIDTH-1:0] vector_ifg_buffer_dout;
logic                           vector_ifg_buffer_full;
logic                           vector_ifg_buffer_empty;

// vector out internal signals 
T_USER_METADATA     user_metadata_out_i;
T_STANDARD_METADATA standard_metadata_out_i;
T_HDR_INFO          hdr_info_vector_out_i;
T_HDR_FIELDS        hdr_fields_vector_out_i;
logic               vector_out_valid_i;

// tkeep to tcount conversion
assign s_axis_tcount = f_tkeep_to_num_bytes(s_axis_tkeep);

// tfirst generation
`CLOCKED(aclk,aresetn)
begin
    s_axis_tfirst <= '1;
end else begin
    if (s_axis_tvalid & m_axis_tready) begin
        s_axis_tfirst <= s_axis_tlast ? '1 : '0;
    end
end

// register input ports and shift data pipeline 
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    pipe_data_i <= '{default:0};
end else begin
    pipe_data_i[0].stmeta_data <= standard_metadata_in;
    if (vector_in_valid) 
        pipe_data_i[0].udmeta_data <= user_metadata_in;
    pipe_data_i[0].packet_valid <= 0;
    if (s_axis_tvalid & m_axis_tready) begin
        pipe_data_i[0].packet_count <= s_axis_tcount;
        pipe_data_i[0].packet_data  <= s_axis_tdata;
        pipe_data_i[0].packet_valid <= s_axis_tvalid;
        pipe_data_i[0].packet_last  <= s_axis_tlast;
        pipe_data_i[0].packet_first <= s_axis_tfirst; 
    end
    pipe_data_i[C_PARSER_PIPE_DEPTH-1].packet_valid <= '0;
    if (pipe_shift_en) 
        pipe_data_i[C_PARSER_PIPE_DEPTH-1:1] <= pipe_data_i[C_PARSER_PIPE_DEPTH-2:0];
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        for (int i=0; i < C_PARSER_PIPE_DEPTH; i++) 
            pipe_data_i[i].packet_valid <= '0;
    end
`endif
end

always_comb begin
    pipe_data[0].stmeta_data  <= standard_metadata_in;
    pipe_data[0].udmeta_data  <= user_metadata_in;
    pipe_data[0].packet_count <= s_axis_tcount;
    pipe_data[0].packet_data  <= s_axis_tdata;
    pipe_data[0].packet_valid <= s_axis_tvalid;
    pipe_data[0].packet_last  <= s_axis_tlast;
    pipe_data[0].packet_first <= s_axis_tfirst;   
    for (int i=0; i < C_PARSER_PIPE_DEPTH; i++) 
        pipe_data[i+1] <= pipe_data_i[i];
end

// frame bit count process
`CLOCKED(aclk,aresetn)
begin
    frame_bit_count <= '0;
end else begin
    if (s_axis_tvalid & m_axis_tready) begin
        frame_bit_count[C_TKEEP_COUNT_BITS-2:0] <= {s_axis_tcount[C_TKEEP_COUNT_BYTES-2:0], 3'b000}; 
        if (pipe_data[1].packet_last) begin
            frame_bit_count[15:C_TKEEP_COUNT_BITS-1] <= {'0, s_axis_tcount[C_TKEEP_COUNT_BYTES-1]};
        end else if (frame_bit_count < 16'hFFFF - C_AXIS_DATA_WIDTH) begin
            frame_bit_count[15:C_TKEEP_COUNT_BITS-1] <= frame_bit_count[15:C_TKEEP_COUNT_BITS-1] + s_axis_tcount[C_TKEEP_COUNT_BYTES-1];
        end
    end    
end

// frame word count process
`CLOCKED(aclk,aresetn)
begin
    frame_word_count <= '0;
end else begin
    if (s_axis_tvalid & m_axis_tready) begin
        if (s_axis_tfirst) begin
            frame_word_count <= '0;
        end else if (frame_word_count < LATENCY) begin
            frame_word_count <= frame_word_count + 1;
        end
    end
end

// inter-frame gap counters
`CLOCKED(aclk,aresetn)
begin
    vector_ifg_cnt <= CLK2RATE_RATIO-1;
end else begin
    if (vector_out_valid) begin
        vector_ifg_cnt <= CLK2RATE_RATIO-1;
    end else if (vector_ifg_cnt > 0) begin
        vector_ifg_cnt <= vector_ifg_cnt - 1;
    end
end

// pipeline control signals generation
assign flush_pipe_valid = flush_stream_pipe[0];
assign flush_pipe_ready = ~vector_ifg_buffer_full;
`CLOCKED(aclk,aresetn)
begin
    pipe_shift_en     <= '0;
    flush_stream_pipe <= '0;
end else begin
    pipe_shift_en <= ((flush_pipe_valid & flush_pipe_ready) | s_axis_tvalid) & m_axis_tready;
    if (m_axis_tready) begin
        if (s_axis_tvalid) begin
            flush_stream_pipe <= s_axis_tlast ? '1 : '0;
        end else if (flush_pipe_ready) begin
            flush_stream_pipe <= flush_stream_pipe >> 1;
        end
    end
end

// prepare header sequence identifier input signals 
assign level_info_in                  = '{transition:C_START, default:'0};
assign frame_info_in.frame_bit_count  = frame_bit_count;
assign frame_info_in.frame_word_count = frame_word_count;
assign frame_info_in.end_of_frame     = pipe_data[1].packet_last;

// header_sequence_identifier instantiation
ipsec_bd_sdnet_0_3_header_sequence_identifier header_sequence_identifier_inst (
    .aclk           (aclk),
    .aresetn        (aresetn),
    .pipe_shift_en  (pipe_shift_en),
    .pipe_data_in   (pipe_data),
    .level_info_in  (level_info_in),
    .frame_info_in  (frame_info_in),
    .level_info_out (level_info_seq),
    .frame_info_out (frame_info_seq)
);

// error check module instantiation
ipsec_bd_sdnet_0_3_error_check_module error_check_module_inst (
    .aclk           (aclk),  
    .aresetn        (aresetn),
    .pipe_shift_en  (pipe_shift_en),
    .frame_info_in  (frame_info_seq),
    .level_info_in  (level_info_seq),
    .level_info_out (level_info_err)
);

// parse level info realignment pipeline
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    level_info_pipe_i <= T_PARSER_LEVEL_INFO'(0);
end else begin
    if (pipe_shift_en) begin
        for (int i=0; i <= C_PARSER_NUM_LEVELS; i++) 
            level_info_pipe_i[0][i] <= level_info_err[i];
        level_info_pipe_i[C_PARSER_PIPE_DEPTH-1:1] <= level_info_pipe_i[C_PARSER_PIPE_DEPTH-2:0];
    end
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        for (int i=0; i < C_PARSER_PIPE_DEPTH; i++)
            for (int j=0; j <= C_PARSER_NUM_LEVELS; j++) 
                level_info_pipe_i[i][j].valid <= '0;
    end
`endif
end

always_comb begin
    for (int i=0; i <= C_PARSER_NUM_LEVELS; i++) 
        level_info_pipe[0][i] = level_info_err[i];
    for (int i=0; i < C_PARSER_PIPE_DEPTH; i++) 
        level_info_pipe[i+1] = level_info_pipe_i[i];
    level_info_ext[1] = level_info_pipe[0][1];
    level_info_ext[0] = level_info_pipe[0][0];
end

// header_field_extractor instantiation
ipsec_bd_sdnet_0_3_header_field_extractor header_field_extractor_inst (
    .aclk                   (aclk),
    .aresetn                (aresetn),
    .pipe_shift_en          (pipe_shift_en),
    .pipe_data_in           ({pipe_data[C_PARSER_PIPE_DEPTH-1], pipe_data[C_PARSER_PIPE_DEPTH]}),
    .level_info_in          (level_info_ext),
    .frame_info_in          (frame_info_seq[C_PARSER_NUM_LEVELS]),
    .vector_out_valid       (vector_out_valid_i),
    .user_metadata_out      (user_metadata_out_i),
    .standard_metadata_out  (standard_metadata_out_i),
    .hdr_info_vector_out    (hdr_info_vector_out_i),
    .hdr_fields_vector_out  (hdr_fields_vector_out_i)
);

// Vector output IFG buffer
`CLOCKED_NORESET(aclk,aresetn)
begin
    vector_out_valid       <= '0;
    user_metadata_out      <= '0;
    standard_metadata_out  <= '0;
    hdr_info_vector_out    <= '0;
    hdr_fields_vector_out  <= '0;
end else begin
    vector_out_valid       <= vector_out_valid_i;
    user_metadata_out      <= user_metadata_out_i;
    standard_metadata_out  <= standard_metadata_out_i;
    hdr_info_vector_out    <= hdr_info_vector_out_i;
    hdr_fields_vector_out  <= hdr_fields_vector_out_i;
end
assign vector_ifg_buffer_din   = '0;
assign vector_ifg_buffer_dout  = '0;
assign vector_ifg_buffer_full  = '0;
assign vector_ifg_buffer_empty = '1;

// assign outputs
assign s_axis_tready = m_axis_tready;
assign m_axis_tdata  = pipe_data[C_PARSER_PIPE_DEPTH].packet_data;
assign m_axis_tcount = pipe_data[C_PARSER_PIPE_DEPTH].packet_count;
assign m_axis_tvalid = pipe_data[C_PARSER_PIPE_DEPTH].packet_valid;
assign m_axis_tlast  = pipe_data[C_PARSER_PIPE_DEPTH].packet_last;
assign m_axis_tfirst = pipe_data[C_PARSER_PIPE_DEPTH].packet_first;

endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
