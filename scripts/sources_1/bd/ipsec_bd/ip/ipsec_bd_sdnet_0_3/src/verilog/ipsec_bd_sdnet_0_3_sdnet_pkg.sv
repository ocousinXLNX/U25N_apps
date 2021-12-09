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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/top/ttcl/sdnet_pkg.ttcl#39 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

package ipsec_bd_sdnet_0_3_sdnet_pkg;

// /////////////////////////////////////////////////////////////////////////////////////////////////
// Common
// /////////////////////////////////////////////////////////////////////////////////////////////////

    localparam integer  TDATA_NUM_BYTES       = 16;
    localparam integer  PACKET_RATE           = 333;
    localparam integer  AXIS_CLK_FREQ_MHZ     = 333;
    localparam logic    OUT_META_FOR_DROP     = 0;
    localparam byte     CLK2RATE_RATIO        = 1;
    
    localparam integer C_AXIS_DATA_WIDTH     = 128;
    localparam integer C_AXIS_DATA_BIT_RANGE = $clog2(C_AXIS_DATA_WIDTH);
    localparam integer C_TKEEP_COUNT_BYTES   = $clog2(TDATA_NUM_BYTES)+1;
    localparam integer C_TKEEP_COUNT_BITS    = C_TKEEP_COUNT_BYTES+3;   

    localparam integer C_USER_META_DATA_WIDTH     = 581;
    localparam integer C_STANDARD_META_DATA_WIDTH = 68;
    localparam integer C_HDR_INFO_DATA_WIDTH      = 306;
    localparam integer C_HDR_FIELDS_DATA_WIDTH    = 720;
    localparam integer C_ACTION_EN_DATA_WIDTH     = 4;
    
    localparam integer C_S_AXI_ADDR_WIDTH      = 1;
    localparam integer C_S_AXI_DATA_WIDTH      = 32;
    localparam integer C_M_AXI_HBM_ADDR_WIDTH  = 33;
    localparam integer C_M_AXI_HBM_DATA_WIDTH  = 256;
    
    typedef logic [C_AXIS_DATA_WIDTH-1:0]   T_AXIS_DATA;
    typedef logic [TDATA_NUM_BYTES-1:0]     T_AXIS_KEEP; 
    typedef logic [C_TKEEP_COUNT_BYTES-1:0] T_AXIS_COUNT; 

 
    // Vector 'user_metadata' signal struct
    typedef struct packed {
        logic metadata_is_vlan;
        logic [111:0] metadata_mac_header;
        logic [31:0] metadata_vlan_header;
        logic [3:0] metadata_version;
        logic [3:0] metadata_hdr_len;
        logic [7:0] metadata_tos;
        logic [15:0] metadata_length;
        logic [15:0] metadata_id;
        logic [2:0] metadata_flags;
        logic [12:0] metadata_offset;
        logic [7:0] metadata_ttl;
        logic [7:0] metadata_protocol;
        logic [15:0] metadata_hdr_chk;
        logic [15:0] metadata_src_1;
        logic [15:0] metadata_src_2;
        logic [15:0] metadata_dst_1;
        logic [15:0] metadata_dst_2;
        logic [63:0] metadata_esp_header;
        logic [63:0] metadata_ext_iv;
        logic [127:0] metadata_tag_header;
        logic [3:0] metadata_egress_port;
        logic [15:0] metadata_len;
    } T_USER_METADATA;
 
    // Vector 'standard_metadata' signal struct
    typedef struct packed {
        logic drop;
        logic [63:0] ingress_timestamp;
        logic [2:0] parser_error;
    } T_STANDARD_METADATA;
 
    // Vector 'hdr_info' signal struct
    typedef struct packed {
        logic payload_extracted;
        logic payload_isvalid;
        logic [15:0] payload_len;
        logic [15:0] payload_off;
        logic tag_extracted;
        logic tag_isvalid;
        logic [15:0] tag_len;
        logic [15:0] tag_off;
        logic ab_extracted;
        logic ab_isvalid;
        logic [15:0] ab_len;
        logic [15:0] ab_off;
        logic ext_iv_extracted;
        logic ext_iv_isvalid;
        logic [15:0] ext_iv_len;
        logic [15:0] ext_iv_off;
        logic esp_extracted;
        logic esp_isvalid;
        logic [15:0] esp_len;
        logic [15:0] esp_off;
        logic outer_ipv4_extracted;
        logic outer_ipv4_isvalid;
        logic [15:0] outer_ipv4_len;
        logic [15:0] outer_ipv4_off;
        logic vlan_extracted;
        logic vlan_isvalid;
        logic [15:0] vlan_len;
        logic [15:0] vlan_off;
        logic outer_eth_extracted;
        logic outer_eth_isvalid;
        logic [15:0] outer_eth_len;
        logic [15:0] outer_eth_off;
        logic ipv4_header_0_extracted;
        logic ipv4_header_0_isvalid;
        logic [15:0] ipv4_header_0_len;
        logic [15:0] ipv4_header_0_off;
    } T_HDR_INFO;
 
    // Vector 'hdr_fields' signal struct
    typedef struct packed {
        logic [31:0] vlan_vlan_header;
        logic [127:0] tag_tag;
        logic [3:0] outer_ipv4_version;
        logic [7:0] outer_ipv4_ttl;
        logic [7:0] outer_ipv4_tos;
        logic [15:0] outer_ipv4_src_2;
        logic [15:0] outer_ipv4_src_1;
        logic [7:0] outer_ipv4_protocol;
        logic [12:0] outer_ipv4_offset;
        logic [15:0] outer_ipv4_length;
        logic [15:0] outer_ipv4_id;
        logic [3:0] outer_ipv4_hdr_len;
        logic [15:0] outer_ipv4_hdr_chk;
        logic [2:0] outer_ipv4_flags;
        logic [15:0] outer_ipv4_dst_2;
        logic [15:0] outer_ipv4_dst_1;
        logic [111:0] outer_eth_mac_header;
        logic [15:0] ipv4_header_0_header_9;
        logic [15:0] ipv4_header_0_header_8;
        logic [15:0] ipv4_header_0_header_7;
        logic [15:0] ipv4_header_0_header_6;
        logic [15:0] ipv4_header_0_header_5;
        logic [15:0] ipv4_header_0_header_4;
        logic [15:0] ipv4_header_0_header_3;
        logic [15:0] ipv4_header_0_header_2;
        logic [15:0] ipv4_header_0_header_1;
        logic [15:0] ipv4_header_0_header_0;
        logic [63:0] ext_iv_ext_iv;
        logic [63:0] esp_esp_header;
    } T_HDR_FIELDS;
 
    // Vector 'action_en' signal struct
    typedef struct packed {
        logic act_2;
        logic act_1;
        logic act_0;
        logic act;
    } T_ACTION_EN;
 
    // Vector 'scalars' signal struct
    typedef struct packed {
        logic [15:0] ipv4_checksum_0;
        logic [31:0] tmp;
    } T_SCALARS;
 
    // Vector 'user_extern_in' signal struct
    typedef struct packed {
        logic [15:0] calc_checksum;
    } T_USER_EXTERN_IN;
 
    // Vector 'user_extern_out' signal struct
    typedef struct packed {
        logic [159:0] calc_checksum;
    } T_USER_EXTERN_OUT;
 
    // Vector 'user_extern_valid' signal struct
    typedef struct packed {
        logic calc_checksum;
    } T_USER_EXTERN_VALID;

// /////////////////////////////////////////////////////////////////////////////////////////////////
// Sync FIFOs
// /////////////////////////////////////////////////////////////////////////////////////////////////
    
    localparam integer C_PKT_FIFO_WIDTH    = TDATA_NUM_BYTES * 8 + C_TKEEP_COUNT_BYTES + 1;
    localparam integer C_VECTOR_FIFO_WIDTH = C_USER_META_DATA_WIDTH     +
                                             C_STANDARD_META_DATA_WIDTH + 
                                             C_HDR_FIELDS_DATA_WIDTH    + 
                                             C_HDR_INFO_DATA_WIDTH      + 
                                             C_ACTION_EN_DATA_WIDTH;

// /////////////////////////////////////////////////////////////////////////////////////////////////
// Parser
// /////////////////////////////////////////////////////////////////////////////////////////////////

    localparam C_PARSER_PIPE_DEPTH   = 4;
    localparam C_PARSER_NUM_LEVELS   = 1;
    localparam C_PARSER_VERIFY_WIDTH = 1;

    typedef enum {
        C_NOERROR,
        C_PACKETTOOSHORT,
        C_NOMATCH,
        C_STACKOUTOFBOUNDS,
        C_HEADERTOOSHORT,
        C_PARSERTIMEOUT,
        C_INVALIDIPPACKET,
        C_INVALIDTCPPACKET
    } E_PARSER_ERROR;

    typedef enum {
        C_PAYLOAD,
        C_START,
        C_NULL
    } E_PARSER_STATE_NAME;

    typedef struct packed {
        logic [C_USER_META_DATA_WIDTH-1:0]     udmeta_data; 
        logic [C_STANDARD_META_DATA_WIDTH-1:0] stmeta_data; 
        logic [C_AXIS_DATA_WIDTH-1:0]          packet_data;
        logic [C_TKEEP_COUNT_BYTES-1:0]        packet_count;
        logic                                  packet_valid;
        logic                                  packet_last;
        logic                                  packet_first;
    } T_PARSER_PIPE;
    
    typedef struct packed {
        logic NoError;
        logic HeaderTooShort;
        logic InvalidIPpacket;
        logic InvalidTCPpacket;
        logic NoMatch;
        logic PacketTooShort;
        logic PacketTooShort0;
        logic ParserTimeout;
        logic StackOutOfBounds;
    } T_PARSER_ERROR_FLAGS;
    
    typedef struct packed {
        logic length;
        logic transition;
        logic verify;
    } T_PARSER_INFO_VALID;
    
    typedef struct packed {
        logic [15:0] frame_word_count;
        logic [15:0] frame_bit_count;
        logic [15:0] extracted_bits;
        logic        end_of_frame;
    } T_PARSER_FRAME_INFO;
    
    typedef struct packed {
        logic [15:0]                      offset;
        logic [15:0]                      length;
        E_PARSER_STATE_NAME               transition; 
        logic [C_PARSER_VERIFY_WIDTH-1:0] verify;
        T_PARSER_ERROR_FLAGS              error;
        T_PARSER_INFO_VALID               valid;
    } T_PARSER_LEVEL_INFO;
        
    typedef T_PARSER_LEVEL_INFO T_PARSER_STATE_INFO;
 
 
    typedef struct packed {
        logic dummy;
    } T_PARSER_HDR_FIELDS;

// /////////////////////////////////////////////////////////////////////////////////////////////////
// Match-Action
// /////////////////////////////////////////////////////////////////////////////////////////////////
    
    // Vector 'zero_latency_signals' signal struct
    typedef struct packed {
        logic [15:0] hdr_fields_ipv4_header_0_header_9;
        logic [15:0] hdr_fields_ipv4_header_0_header_8;
        logic [15:0] hdr_fields_ipv4_header_0_header_7;
        logic [15:0] hdr_fields_ipv4_header_0_header_6;
        logic [15:0] hdr_fields_ipv4_header_0_header_5;
        logic [15:0] hdr_fields_ipv4_header_0_header_4;
        logic [15:0] hdr_fields_ipv4_header_0_header_3;
        logic [15:0] hdr_fields_ipv4_header_0_header_2;
        logic [15:0] hdr_fields_ipv4_header_0_header_1;
        logic [15:0] hdr_fields_ipv4_header_0_header_0;
        logic [15:0] hdr_fields_outer_ipv4_dst_2;
        logic [15:0] hdr_fields_outer_ipv4_dst_1;
        logic [15:0] hdr_fields_outer_ipv4_src_2;
        logic [15:0] hdr_fields_outer_ipv4_src_1;
        logic [15:0] hdr_fields_outer_ipv4_hdr_chk;
        logic [7:0] hdr_fields_outer_ipv4_protocol;
        logic [7:0] hdr_fields_outer_ipv4_ttl;
        logic [12:0] hdr_fields_outer_ipv4_offset;
        logic [2:0] hdr_fields_outer_ipv4_flags;
        logic [15:0] hdr_fields_outer_ipv4_id;
        logic [15:0] hdr_fields_outer_ipv4_length;
        logic [7:0] hdr_fields_outer_ipv4_tos;
        logic [3:0] hdr_fields_outer_ipv4_hdr_len;
        logic [3:0] hdr_fields_outer_ipv4_version;
    } T_ZERO_LATENCY_SIGNALS;
    
    // Vector 'stage_crossing_signals' signal struct
    typedef struct packed {
        logic table3_tbl_act_2_out_valid;
        logic table3_tbl_act_2_action0_en;
        logic table3_tbl_act_2_action0_args;
        logic table3_tbl_act_2_hit_miss;
    } T_STAGE_CROSSING_SIGNALS;
    
    typedef struct packed {
        logic                     enable;
        T_USER_METADATA           user_metadata;
        T_STANDARD_METADATA       standard_metadata;
        T_HDR_INFO                hdr_info;
        T_HDR_FIELDS              hdr_fields;
        T_ACTION_EN               action_en;
        T_SCALARS                 scalars;
        T_STAGE_CROSSING_SIGNALS  stage_crossing_signals;
        T_ZERO_LATENCY_SIGNALS    zero_latency_signals;
    } T_MA_VECTORS_PIPE_SIGNALS;
    
 
    // Action 'act' args format struct
    typedef struct packed {                                                    
        logic dummy;
    } T_ACTION0_ARGS;       
 
    // Action 'act_0' args format struct
    typedef struct packed {                                                    
        logic dummy;
    } T_ACTION1_ARGS;       
 
    // Action 'act_1' args format struct
    typedef struct packed {                                                    
        logic dummy;
    } T_ACTION2_ARGS;       
 
    // Action 'act_2' args format struct
    typedef struct packed {                                                    
        logic dummy;
    } T_ACTION3_ARGS;       

 
    // Table 'tbl_act' response format structs
    typedef T_ACTION2_ARGS T_TABLE0_RESP0;
 
    // Table 'tbl_act_0' response format structs
    typedef T_ACTION0_ARGS T_TABLE1_RESP0;
 
    // Table 'tbl_act_1' response format structs
    typedef T_ACTION1_ARGS T_TABLE2_RESP0;
 
    // Table 'tbl_act_2' response format structs
    typedef T_ACTION3_ARGS T_TABLE3_RESP0;
    
// /////////////////////////////////////////////////////////////////////////////////////////////////
// Deparser
// /////////////////////////////////////////////////////////////////////////////////////////////////
    
    localparam integer HDR_MAX_SIZE     = 160;
    localparam integer DEPARSER_OPS     = 6;
    localparam integer DEPARSER_LATENCY = 8;
    
    localparam integer C_NUM_BITS_INDEX_SIZE     = 1;
    localparam integer C_STARTBIT_POS_INDEX_SIZE = 5;
    localparam integer C_STARTWORD_CNT_SIZE      = 8;
    localparam integer C_ENDBIT_POS_INDEX_SIZE   = 5;
    localparam integer C_ENDWORD_CNT_SIZE        = 8;
    
    localparam integer C_WORD_CNT_MAX  = 97;        
    localparam integer C_WORD_CNT_SIZE = 8;        
    localparam integer C_DROP_INDEX    = 67;
    
    localparam integer C_STATE_BEFORE = 0;
    localparam integer C_STATE_START  = 1;
    localparam integer C_STATE_DURING = 2;
    localparam integer C_STATE_END    = 3;
    localparam integer C_STATE_AFTER  = 4;
    
    typedef struct packed {
        logic                                                    tvalid;
        logic                                                    tvalid_hold;
        logic                                                    tlast;
        logic                                                    tcount_threshold;
        logic [C_TKEEP_COUNT_BYTES-1:0]                          tcount;
        logic [0:TDATA_NUM_BYTES*8-1]                            data;
        T_USER_METADATA                                          user_metadata;
        T_STANDARD_METADATA                                      standard_metadata;
        logic [DEPARSER_OPS-1:0]                                 op_en;
        logic [DEPARSER_OPS-1:0] [C_NUM_BITS_INDEX_SIZE-1:0]     num_bits_index;
        logic [DEPARSER_OPS-1:0] [12:0]                          hdr_length_bytes;
        logic [DEPARSER_OPS-1:0] [C_STARTBIT_POS_INDEX_SIZE-1:0] startbit_pos_index;
        logic [DEPARSER_OPS-1:0] [C_STARTWORD_CNT_SIZE-1:0]      startword_cnt;
        logic [DEPARSER_OPS-1:0] [C_ENDBIT_POS_INDEX_SIZE-1:0]   endbit_pos_index;
        logic [DEPARSER_OPS-1:0] [C_ENDWORD_CNT_SIZE-1:0]        endword_cnt;
//        logic [DEPARSER_OPS-1:0] [0:(TDATA_NUM_BYTES*8)-1]       new_value;
        logic [DEPARSER_OPS-1:0] [0:HDR_MAX_SIZE+(TDATA_NUM_BYTES*8)-1]       new_value;
        
    } T_OP_STAGE;
    
// /////////////////////////////////////////////////////////////////////////////////////////////////
// Functions
// /////////////////////////////////////////////////////////////////////////////////////////////////
    
    function automatic logic[C_TKEEP_COUNT_BYTES-1:0] f_tkeep_to_num_bytes(logic[TDATA_NUM_BYTES-1:0] tkeep);
        case (tkeep)
            16'hffff : return 'd16;
            16'h7fff : return 'd15;
            16'h3fff : return 'd14;
            16'h1fff : return 'd13;
            16'h0fff : return 'd12;
            16'h07ff : return 'd11;
            16'h03ff : return 'd10;
            16'h01ff : return 'd9;
            16'h00ff : return 'd8;
            16'h007f : return 'd7;
            16'h003f : return 'd6;
            16'h001f : return 'd5;
            16'h000f : return 'd4;
            16'h0007 : return 'd3;
            16'h0003 : return 'd2;
            16'h0001 : return 'd1;
            16'h0000 : return 'd0;
            default : begin
`ifndef SYNTHESIS     
//                $display("Error: Unsupported value detected on TKEEP");
`endif
                return 'd0;
            end
        endcase 
    endfunction
   
    function automatic logic[TDATA_NUM_BYTES-1:0] f_num_bytes_to_tkeep(logic[C_TKEEP_COUNT_BYTES-1:0] num_bytes);
        case (num_bytes)
            'd16 : return 16'hffff;
            'd15 : return 16'h7fff;
            'd14 : return 16'h3fff;
            'd13 : return 16'h1fff;
            'd12 : return 16'h0fff;
            'd11 : return 16'h07ff;
            'd10 : return 16'h03ff;
            'd9 : return 16'h01ff;
            'd8 : return 16'h00ff;
            'd7 : return 16'h007f;
            'd6 : return 16'h003f;
            'd5 : return 16'h001f;
            'd4 : return 16'h000f;
            'd3 : return 16'h0007;
            'd2 : return 16'h0003;
            'd1 : return 16'h0001;
            'd0 : return 16'h0000;
        endcase 
    endfunction

endpackage

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
