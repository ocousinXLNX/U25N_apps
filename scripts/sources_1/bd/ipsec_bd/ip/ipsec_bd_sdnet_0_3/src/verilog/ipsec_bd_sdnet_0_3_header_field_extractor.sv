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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/parser/ttcl/header_field_extractor.ttcl#38 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_fld_ext_state_start START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_hdr_fld_ext_state_start 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                  aclk,
    input  logic                  aresetn,
    // inputs
    input logic                   pipe_shift_en,
    input  T_PARSER_PIPE          pipe_data_shifted,
    input  logic                  pipe_data_shifted_valid,
    input  T_PARSER_STATE_INFO    prev_state_info,
    // outputs
    output T_PARSER_HDR_FIELDS    state_hdr_fields,
    output logic                  state_isvalid
);

// Level enable pipeline 
logic [94:0] pipe_data_shifted_valid_i;

// Level enable pipeline
assign pipe_data_shifted_valid_i[0] = pipe_data_shifted_valid;
`CLOCKED(aclk,aresetn)
begin 
    pipe_data_shifted_valid_i[94:1] <= '0;
end else begin
    if (pipe_shift_en) begin
        pipe_data_shifted_valid_i[94:1] <= pipe_data_shifted_valid_i[93:0];
    end
end

// header info
`CLOCKED(aclk,aresetn)
begin
    state_isvalid <= '0;
end else begin
    state_isvalid <= '1;
end

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_fld_ext_state_start END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_fld_ext_level_0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_hdr_fld_ext_level_0 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                  aclk,
    input  logic                  aresetn,
    // inputs
    input  logic                  pipe_shift_en,
    input  T_PARSER_PIPE [1:0]    pipe_data_in,
    input  T_PARSER_LEVEL_INFO    prev_level_info,
    input  T_PARSER_LEVEL_INFO    level_info_in,
    input  T_PARSER_FRAME_INFO    frame_info_in,
    // outputs
    output T_PARSER_HDR_FIELDS    level_hdr_fields,
    output logic [0:0]            level_isvalid
);

// ///////////////////////////////////////
// signal declarations
// ///////////////////////////////////////

// Parse level signals 
T_PARSER_PIPE pipe_data_shifted;
logic         pipe_data_shifted_valid;

// State connections signals 
T_PARSER_HDR_FIELDS start_hdr_fields;
logic start_isvalid;

// //////////////////////////
// Level Barrel Shifter    
// //////////////////////////

assign pipe_data_shifted_valid = (level_info_in.offset[15:C_AXIS_DATA_BIT_RANGE] == frame_info_in.frame_word_count) ? 1 : 0;
always_comb begin
    pipe_data_shifted <= pipe_data_in[0];
    pipe_data_shifted.packet_data <= {pipe_data_in[0].packet_data[127:0]}; // 0
end

// //////////////////////////////////////
// Parser State Instantiation    
// //////////////////////////////////////
 
ipsec_bd_sdnet_0_3_hdr_fld_ext_state_start hdr_fld_ext_state_start_inst (
    .aclk                     (aclk),
    .aresetn                  (aresetn),
    .pipe_shift_en            (pipe_shift_en),
    .pipe_data_shifted        (pipe_data_shifted),
    .pipe_data_shifted_valid  (pipe_data_shifted_valid),
    .prev_state_info          (prev_level_info),
    .state_hdr_fields         (start_hdr_fields),
    .state_isvalid            (start_isvalid)
);

// //////////////////////////
// Output connections    
// //////////////////////////
 
// node start
assign level_isvalid[0] = start_isvalid;

// intra-level signal out
assign pipe_data_shifted_out       = pipe_data_shifted;
assign pipe_data_shifted_valid_out = pipe_data_shifted_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_hdr_fld_ext_level_0 END
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_header_field_extractor START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_header_field_extractor 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // global ports
    input  logic                                       aclk,
    input  logic                                       aresetn,
    // inputs
    input  logic                                       pipe_shift_en,
    input  T_PARSER_PIPE [1:0]                         pipe_data_in,
    input  T_PARSER_LEVEL_INFO [C_PARSER_NUM_LEVELS:0] level_info_in,
    input  T_PARSER_FRAME_INFO                         frame_info_in,
    // outputs
    output logic                                       vector_out_valid,
    output T_USER_METADATA                             user_metadata_out,
    output T_STANDARD_METADATA                         standard_metadata_out,
    output T_HDR_INFO                                  hdr_info_vector_out,
    output T_HDR_FIELDS                                hdr_fields_vector_out
);

// latency = 97 (cycles)
localparam LATENCY = 97;

// metadata signals
T_USER_METADATA     user_metadata;
T_STANDARD_METADATA standard_metadata;

// control signals
`INIT(logic packet_in_parsed_off,     '0)
`INIT(logic packet_in_parsed_off_reg, '0)
`INIT(logic packet_in_parsed_end_reg, '0)

// inter-module connection signals
T_PARSER_HDR_FIELDS [C_PARSER_NUM_LEVELS:0] level_hdr_fields;
T_PARSER_LEVEL_INFO                         level_info_i;

// parser error signals
E_PARSER_ERROR parser_error;
 
// State 'start' info signals
logic                  start_isvalid;
logic [15:0]           start_off;
logic [15:0]           start_len;
T_PARSER_ERROR_FLAGS   start_error;

// Payload info signals 
logic                  payload_isvalid;
logic [15:0]           payload_off;
logic [15:0]           payload_len;
T_PARSER_ERROR_FLAGS   payload_error;

// delay user and standard metadata 
`CLOCKED_NORESET(aclk,aresetn)
begin
    user_metadata     <= '0;
    standard_metadata <= '0;
end else begin
    user_metadata     <= pipe_data_in[0].udmeta_data;
    standard_metadata <= pipe_data_in[0].stmeta_data;
end

// Delay node info signals 
`CLOCKED_NORESET(aclk,aresetn)
begin
    start_off   <= '0;
    start_len   <= '0;
    start_error <= '{NoError:'1,default:'0};
    payload_isvalid <= '1;
    payload_off     <= '0;
    payload_len     <= '0;
    payload_error   <= '{NoError:'1,default:'0};
end else begin
    start_off   <= level_info_in[0].offset;
    start_len   <= level_info_in[0].length;
    start_error <= level_info_in[0].error;
    payload_isvalid <= '1;
    payload_off     <= level_info_in[C_PARSER_NUM_LEVELS].offset;
    payload_len     <= level_info_in[C_PARSER_NUM_LEVELS].length;
    payload_error   <= level_info_in[C_PARSER_NUM_LEVELS].error;
end

// prepare header extraction input signals 
assign level_info_i.offset      = '0;
assign level_info_i.transition  = C_START;

// Level 0 header_field_extractor instantiation
ipsec_bd_sdnet_0_3_hdr_fld_ext_level_0 hdr_fld_ext_level_0_inst (
    .aclk             (aclk),
    .aresetn          (aresetn),
    .pipe_shift_en    (pipe_shift_en),
    .pipe_data_in     (pipe_data_in),
    .prev_level_info  (level_info_i),
    .level_info_in    (level_info_in[0]),
    .frame_info_in    (frame_info_in),
    .level_hdr_fields (level_hdr_fields[0]),
    .level_isvalid    ({start_isvalid})
);

// Parser error encoder
`CLOCKED(aclk,aresetn)
begin
    parser_error <= C_NOERROR;
end else begin
    case (level_info_in[C_PARSER_NUM_LEVELS].error) 
        default: begin
            parser_error <= C_NOERROR;
        end
        9'h1: begin
            parser_error <= C_STACKOUTOFBOUNDS;
        end
        9'h2: begin
            parser_error <= C_PARSERTIMEOUT;
        end
        9'h4: begin
            parser_error <= C_PACKETTOOSHORT;
        end
        9'h8: begin
            parser_error <= C_PACKETTOOSHORT;
        end
        9'h10: begin
            parser_error <= C_NOMATCH;
        end
        9'h20: begin
            parser_error <= C_INVALIDTCPPACKET;
        end
        9'h40: begin
            parser_error <= C_INVALIDIPPACKET;
        end
        9'h80: begin
            parser_error <= C_HEADERTOOSHORT;
        end
        9'h100: begin
            parser_error <= C_NOERROR;
        end
    endcase
end

// Assign user metadata
always_comb begin
    // metadata_len
    user_metadata_out.metadata_len <= user_metadata.metadata_len;
    // metadata_egress_port
    user_metadata_out.metadata_egress_port <= user_metadata.metadata_egress_port;
    // metadata_tag_header
    user_metadata_out.metadata_tag_header <= user_metadata.metadata_tag_header;
    // metadata_ext_iv
    user_metadata_out.metadata_ext_iv <= user_metadata.metadata_ext_iv;
    // metadata_esp_header
    user_metadata_out.metadata_esp_header <= user_metadata.metadata_esp_header;
    // metadata_dst_2
    user_metadata_out.metadata_dst_2 <= user_metadata.metadata_dst_2;
    // metadata_dst_1
    user_metadata_out.metadata_dst_1 <= user_metadata.metadata_dst_1;
    // metadata_src_2
    user_metadata_out.metadata_src_2 <= user_metadata.metadata_src_2;
    // metadata_src_1
    user_metadata_out.metadata_src_1 <= user_metadata.metadata_src_1;
    // metadata_hdr_chk
    user_metadata_out.metadata_hdr_chk <= user_metadata.metadata_hdr_chk;
    // metadata_protocol
    user_metadata_out.metadata_protocol <= user_metadata.metadata_protocol;
    // metadata_ttl
    user_metadata_out.metadata_ttl <= user_metadata.metadata_ttl;
    // metadata_offset
    user_metadata_out.metadata_offset <= user_metadata.metadata_offset;
    // metadata_flags
    user_metadata_out.metadata_flags <= user_metadata.metadata_flags;
    // metadata_id
    user_metadata_out.metadata_id <= user_metadata.metadata_id;
    // metadata_length
    user_metadata_out.metadata_length <= user_metadata.metadata_length;
    // metadata_tos
    user_metadata_out.metadata_tos <= user_metadata.metadata_tos;
    // metadata_hdr_len
    user_metadata_out.metadata_hdr_len <= user_metadata.metadata_hdr_len;
    // metadata_version
    user_metadata_out.metadata_version <= user_metadata.metadata_version;
    // metadata_vlan_header
    user_metadata_out.metadata_vlan_header <= user_metadata.metadata_vlan_header;
    // metadata_mac_header
    user_metadata_out.metadata_mac_header <= user_metadata.metadata_mac_header;
    // metadata_is_vlan
    user_metadata_out.metadata_is_vlan <= user_metadata.metadata_is_vlan;
end

// Assign standard metadata
always_comb begin
    // parser_error
    if (payload_isvalid) begin
        standard_metadata_out.parser_error <= parser_error;
    end
    else begin
        standard_metadata_out.parser_error <= standard_metadata.parser_error;
    end
    // ingress_timestamp
    standard_metadata_out.ingress_timestamp <= standard_metadata.ingress_timestamp;
    // drop
    standard_metadata_out.drop <= standard_metadata.drop;
end


// Assign header fields vector outputs
always_comb begin
    // esp_esp_header
    hdr_fields_vector_out.esp_esp_header <= '0;
    // ext_iv_ext_iv
    hdr_fields_vector_out.ext_iv_ext_iv <= '0;
    // ipv4_header_0_header_0
    hdr_fields_vector_out.ipv4_header_0_header_0 <= '0;
    // ipv4_header_0_header_1
    hdr_fields_vector_out.ipv4_header_0_header_1 <= '0;
    // ipv4_header_0_header_2
    hdr_fields_vector_out.ipv4_header_0_header_2 <= '0;
    // ipv4_header_0_header_3
    hdr_fields_vector_out.ipv4_header_0_header_3 <= '0;
    // ipv4_header_0_header_4
    hdr_fields_vector_out.ipv4_header_0_header_4 <= '0;
    // ipv4_header_0_header_5
    hdr_fields_vector_out.ipv4_header_0_header_5 <= '0;
    // ipv4_header_0_header_6
    hdr_fields_vector_out.ipv4_header_0_header_6 <= '0;
    // ipv4_header_0_header_7
    hdr_fields_vector_out.ipv4_header_0_header_7 <= '0;
    // ipv4_header_0_header_8
    hdr_fields_vector_out.ipv4_header_0_header_8 <= '0;
    // ipv4_header_0_header_9
    hdr_fields_vector_out.ipv4_header_0_header_9 <= '0;
    // outer_eth_mac_header
    hdr_fields_vector_out.outer_eth_mac_header <= '0;
    // outer_ipv4_dst_1
    hdr_fields_vector_out.outer_ipv4_dst_1 <= '0;
    // outer_ipv4_dst_2
    hdr_fields_vector_out.outer_ipv4_dst_2 <= '0;
    // outer_ipv4_flags
    hdr_fields_vector_out.outer_ipv4_flags <= '0;
    // outer_ipv4_hdr_chk
    hdr_fields_vector_out.outer_ipv4_hdr_chk <= '0;
    // outer_ipv4_hdr_len
    hdr_fields_vector_out.outer_ipv4_hdr_len <= '0;
    // outer_ipv4_id
    hdr_fields_vector_out.outer_ipv4_id <= '0;
    // outer_ipv4_length
    hdr_fields_vector_out.outer_ipv4_length <= '0;
    // outer_ipv4_offset
    hdr_fields_vector_out.outer_ipv4_offset <= '0;
    // outer_ipv4_protocol
    hdr_fields_vector_out.outer_ipv4_protocol <= '0;
    // outer_ipv4_src_1
    hdr_fields_vector_out.outer_ipv4_src_1 <= '0;
    // outer_ipv4_src_2
    hdr_fields_vector_out.outer_ipv4_src_2 <= '0;
    // outer_ipv4_tos
    hdr_fields_vector_out.outer_ipv4_tos <= '0;
    // outer_ipv4_ttl
    hdr_fields_vector_out.outer_ipv4_ttl <= '0;
    // outer_ipv4_version
    hdr_fields_vector_out.outer_ipv4_version <= '0;
    // tag_tag
    hdr_fields_vector_out.tag_tag <= '0;
    // vlan_vlan_header
    hdr_fields_vector_out.vlan_vlan_header <= '0;
end

// Assign header info outputs
always_comb begin
    hdr_info_vector_out.ipv4_header_0_off <= 0;
    hdr_info_vector_out.ipv4_header_0_len <= 0;
    hdr_info_vector_out.ipv4_header_0_isvalid <= 0;
    hdr_info_vector_out.ipv4_header_0_extracted <= 0;
    hdr_info_vector_out.outer_eth_off <= 0;
    hdr_info_vector_out.outer_eth_len <= 0;
    hdr_info_vector_out.outer_eth_isvalid <= 0;
    hdr_info_vector_out.outer_eth_extracted <= 0;
    hdr_info_vector_out.vlan_off <= 0;
    hdr_info_vector_out.vlan_len <= 0;
    hdr_info_vector_out.vlan_isvalid <= 0;
    hdr_info_vector_out.vlan_extracted <= 0;
    hdr_info_vector_out.outer_ipv4_off <= 0;
    hdr_info_vector_out.outer_ipv4_len <= 0;
    hdr_info_vector_out.outer_ipv4_isvalid <= 0;
    hdr_info_vector_out.outer_ipv4_extracted <= 0;
    hdr_info_vector_out.esp_off <= 0;
    hdr_info_vector_out.esp_len <= 0;
    hdr_info_vector_out.esp_isvalid <= 0;
    hdr_info_vector_out.esp_extracted <= 0;
    hdr_info_vector_out.ext_iv_off <= 0;
    hdr_info_vector_out.ext_iv_len <= 0;
    hdr_info_vector_out.ext_iv_isvalid <= 0;
    hdr_info_vector_out.ext_iv_extracted <= 0;
    hdr_info_vector_out.ab_off <= start_off;
    hdr_info_vector_out.ab_len <= start_len;
    hdr_info_vector_out.ab_isvalid <= start_isvalid & ~start_error.HeaderTooShort & ~start_error.PacketTooShort0;
    hdr_info_vector_out.ab_extracted <= start_isvalid & ~start_error.HeaderTooShort & ~start_error.PacketTooShort0;
    hdr_info_vector_out.tag_off <= 0;
    hdr_info_vector_out.tag_len <= 0;
    hdr_info_vector_out.tag_isvalid <= 0;
    hdr_info_vector_out.tag_extracted <= 0;
    hdr_info_vector_out.payload_off <= payload_off;
    hdr_info_vector_out.payload_len <= payload_len;
    hdr_info_vector_out.payload_isvalid <= payload_isvalid;
    hdr_info_vector_out.payload_extracted <= payload_isvalid;
end

// vector out valid generation
`CLOCKED(aclk,aresetn)
begin
    packet_in_parsed_off     <= '0;
    packet_in_parsed_off_reg <= '0;
    packet_in_parsed_end_reg <= '0;
end else begin
    if (pipe_data_in[0].packet_valid) begin
        if (pipe_data_in[0].packet_last) begin
            packet_in_parsed_off <= '0;
        end else if (frame_info_in.frame_word_count == LATENCY) begin
            packet_in_parsed_off <= '1;
        end
    end
    packet_in_parsed_off_reg <= packet_in_parsed_off;
    packet_in_parsed_end_reg <= pipe_data_in[0].packet_last & pipe_data_in[0].packet_valid;
end
assign vector_out_valid = (packet_in_parsed_off & ~packet_in_parsed_off_reg) | 
                          (packet_in_parsed_end_reg & ~packet_in_parsed_off_reg);

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_header_field_extractor END
//------------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
