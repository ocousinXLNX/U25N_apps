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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/match_action/ttcl/match_action_engine.ttcl#42 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

module ipsec_bd_sdnet_0_3_match_action_engine 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*; 
(
    // clocks & resets
    input logic                     aclk,
    input logic                     aresetn,
    input logic                     cam_mem_aclk,
    input logic                     cam_mem_aresetn,
    input logic                     s_axi_aclk, 
    input logic                     s_axi_aresetn,
    input logic                     m_axi_hbm_aclk, 
    input logic                     m_axi_hbm_aresetn,
    // input vectors                                            
    input logic                     vector_in_valid,
    input T_USER_METADATA           user_metadata_in,
    input T_STANDARD_METADATA       standard_metadata_in,
    input T_HDR_INFO                hdr_info_vector_in,
    input T_HDR_FIELDS              hdr_fields_vector_in,    
    // output vectors
    output logic                    vector_out_valid,
    output T_USER_METADATA          user_metadata_out,
    output T_STANDARD_METADATA      standard_metadata_out,
    output T_HDR_INFO               hdr_info_vector_out,
    output T_HDR_FIELDS             hdr_fields_vector_out,
    output T_ACTION_EN              action_en_vector_out,    
    // User Externs
    input  T_USER_EXTERN_IN         user_extern_in,
    input  T_USER_EXTERN_VALID      user_extern_in_valid,
    output T_USER_EXTERN_OUT        user_extern_out,
    output T_USER_EXTERN_VALID      user_extern_out_valid,
    // ECC signals
    output logic [1:0]              sync_fifos_injectsbiterr,
    output logic [1:0]              sync_fifos_injectdbiterr,
    input  logic [1:0]              sync_fifos_sbiterr,
    input  logic [1:0]              sync_fifos_dbiterr,
    // AXI4-LITE interface
    input  logic [0:0]             s_axi_awaddr,  
    input  logic                    s_axi_awvalid, 
    output logic                    s_axi_awready, 
    input  logic [31:0]             s_axi_wdata,   
    input  logic [3:0]              s_axi_wstrb,   
    input  logic                    s_axi_wvalid,  
    output logic                    s_axi_wready,  
    output logic [1:0]              s_axi_bresp,   
    output logic                    s_axi_bvalid,  
    input  logic                    s_axi_bready,  
    input  logic [0:0]             s_axi_araddr,  
    input  logic                    s_axi_arvalid, 
    output logic                    s_axi_arready, 
    output logic [31:0]             s_axi_rdata,   
    output logic                    s_axi_rvalid,  
    input  logic                    s_axi_rready,  
    output logic [1:0]              s_axi_rresp,
    // Interrupt request
    output logic                    irq,
    // others 
    output logic [15:0]             max_sof_per_intvl
);

// latency = 8 (cycles)
localparam LATENCY = 8;

// ///////////////////////////////////////
// node signal declaration
// ///////////////////////////////////////
// Node 'conditional0_node_89' (conditional) signal declaration
logic [0:0] conditional0_node_89_in_0;
logic [0:0] conditional0_node_89_in_0_reg;
logic [0:0] conditional0_node_89_out_true;
logic [0:0] conditional0_node_89_out_true_reg;
logic [0:0] conditional0_node_89_out_false;
logic [0:0] conditional0_node_89_out_false_reg;
logic conditional0_node_89_in_valid;
logic conditional0_node_89_out_valid;    
logic conditional0_node_89_in_valid_reg;
logic conditional0_node_89_out_valid_reg;
// Node 'table0_tbl_act' (table) signal declaration
logic [0:0] table0_tbl_act_hit_miss;
logic [0:0] table0_tbl_act_hit_miss_reg;
logic [0:0] table0_tbl_act_action0_args;
logic [0:0] table0_tbl_act_action0_args_reg;
logic [0:0] table0_tbl_act_action0_en;
logic [0:0] table0_tbl_act_action0_en_reg;
logic table0_tbl_act_in_valid;
logic table0_tbl_act_out_valid;    
logic table0_tbl_act_in_valid_reg;
logic table0_tbl_act_out_valid_reg;
// Node 'table1_tbl_act_0' (table) signal declaration
logic [0:0] table1_tbl_act_0_hit_miss;
logic [0:0] table1_tbl_act_0_hit_miss_reg;
logic [0:0] table1_tbl_act_0_action0_args;
logic [0:0] table1_tbl_act_0_action0_args_reg;
logic [0:0] table1_tbl_act_0_action0_en;
logic [0:0] table1_tbl_act_0_action0_en_reg;
logic table1_tbl_act_0_in_valid;
logic table1_tbl_act_0_out_valid;    
logic table1_tbl_act_0_in_valid_reg;
logic table1_tbl_act_0_out_valid_reg;
// Node 'table2_tbl_act_1' (table) signal declaration
logic [0:0] table2_tbl_act_1_hit_miss;
logic [0:0] table2_tbl_act_1_hit_miss_reg;
logic [0:0] table2_tbl_act_1_action0_args;
logic [0:0] table2_tbl_act_1_action0_args_reg;
logic [0:0] table2_tbl_act_1_action0_en;
logic [0:0] table2_tbl_act_1_action0_en_reg;
logic table2_tbl_act_1_in_valid;
logic table2_tbl_act_1_out_valid;    
logic table2_tbl_act_1_in_valid_reg;
logic table2_tbl_act_1_out_valid_reg;
// Node 'table3_tbl_act_2' (table) signal declaration
logic [0:0] table3_tbl_act_2_hit_miss;
logic [0:0] table3_tbl_act_2_hit_miss_reg;
logic [0:0] table3_tbl_act_2_action0_args;
logic [0:0] table3_tbl_act_2_action0_args_reg;
logic [0:0] table3_tbl_act_2_action0_en;
logic [0:0] table3_tbl_act_2_action0_en_reg;
logic table3_tbl_act_2_in_valid;
logic table3_tbl_act_2_out_valid;    
logic table3_tbl_act_2_in_valid_reg;
logic table3_tbl_act_2_out_valid_reg;
// Node 'action0_act_op0' (action) signal declaration
logic [0:0] action0_act_op0_args;
logic [0:0] action0_act_op0_args_reg;
logic [0:0] action0_act_op0_out_0;
logic [0:0] action0_act_op0_out_0_reg;
logic action0_act_op0_in_valid;
logic action0_act_op0_out_valid;    
logic action0_act_op0_in_valid_reg;
logic action0_act_op0_out_valid_reg;
// Node 'action0_act_op1' (action) signal declaration
logic [0:0] action0_act_op1_args;
logic [0:0] action0_act_op1_args_reg;
logic [31:0] action0_act_op1_in_0;
logic [31:0] action0_act_op1_in_0_reg;
logic [31:0] action0_act_op1_out_0;
logic [31:0] action0_act_op1_out_0_reg;
logic action0_act_op1_in_valid;
logic action0_act_op1_out_valid;    
logic action0_act_op1_in_valid_reg;
logic action0_act_op1_out_valid_reg;
// Node 'action1_act_0_op0' (action) signal declaration
logic [0:0] action1_act_0_op0_args;
logic [0:0] action1_act_0_op0_args_reg;
logic [0:0] action1_act_0_op0_out_0;
logic [0:0] action1_act_0_op0_out_0_reg;
logic action1_act_0_op0_in_valid;
logic action1_act_0_op0_out_valid;    
logic action1_act_0_op0_in_valid_reg;
logic action1_act_0_op0_out_valid_reg;
// Node 'action2_act_1_op0' (action) signal declaration
logic [0:0] action2_act_1_op0_args;
logic [0:0] action2_act_1_op0_args_reg;
logic [0:0] action2_act_1_op0_out_0;
logic [0:0] action2_act_1_op0_out_0_reg;
logic action2_act_1_op0_in_valid;
logic action2_act_1_op0_out_valid;    
logic action2_act_1_op0_in_valid_reg;
logic action2_act_1_op0_out_valid_reg;
// Node 'action2_act_1_op1' (action) signal declaration
logic [0:0] action2_act_1_op1_args;
logic [0:0] action2_act_1_op1_args_reg;
logic [111:0] action2_act_1_op1_in_0;
logic [111:0] action2_act_1_op1_in_0_reg;
logic [111:0] action2_act_1_op1_out_0;
logic [111:0] action2_act_1_op1_out_0_reg;
logic action2_act_1_op1_in_valid;
logic action2_act_1_op1_out_valid;    
logic action2_act_1_op1_in_valid_reg;
logic action2_act_1_op1_out_valid_reg;
// Node 'action3_act_2_op0' (action) signal declaration
logic [0:0] action3_act_2_op0_args;
logic [0:0] action3_act_2_op0_args_reg;
logic [0:0] action3_act_2_op0_out_0;
logic [0:0] action3_act_2_op0_out_0_reg;
logic action3_act_2_op0_in_valid;
logic action3_act_2_op0_out_valid;    
logic action3_act_2_op0_in_valid_reg;
logic action3_act_2_op0_out_valid_reg;
// Node 'action3_act_2_op1' (action) signal declaration
logic [0:0] action3_act_2_op1_args;
logic [0:0] action3_act_2_op1_args_reg;
logic [3:0] action3_act_2_op1_in_0;
logic [3:0] action3_act_2_op1_in_0_reg;
logic [3:0] action3_act_2_op1_out_0;
logic [3:0] action3_act_2_op1_out_0_reg;
logic action3_act_2_op1_in_valid;
logic action3_act_2_op1_out_valid;    
logic action3_act_2_op1_in_valid_reg;
logic action3_act_2_op1_out_valid_reg;
// Node 'action3_act_2_op2' (action) signal declaration
logic [0:0] action3_act_2_op2_args;
logic [0:0] action3_act_2_op2_args_reg;
logic [3:0] action3_act_2_op2_in_0;
logic [3:0] action3_act_2_op2_in_0_reg;
logic [3:0] action3_act_2_op2_out_0;
logic [3:0] action3_act_2_op2_out_0_reg;
logic action3_act_2_op2_in_valid;
logic action3_act_2_op2_out_valid;    
logic action3_act_2_op2_in_valid_reg;
logic action3_act_2_op2_out_valid_reg;
// Node 'action3_act_2_op3' (action) signal declaration
logic [0:0] action3_act_2_op3_args;
logic [0:0] action3_act_2_op3_args_reg;
logic [7:0] action3_act_2_op3_in_0;
logic [7:0] action3_act_2_op3_in_0_reg;
logic [7:0] action3_act_2_op3_out_0;
logic [7:0] action3_act_2_op3_out_0_reg;
logic action3_act_2_op3_in_valid;
logic action3_act_2_op3_out_valid;    
logic action3_act_2_op3_in_valid_reg;
logic action3_act_2_op3_out_valid_reg;
// Node 'action3_act_2_op4' (action) signal declaration
logic [0:0] action3_act_2_op4_args;
logic [0:0] action3_act_2_op4_args_reg;
logic [15:0] action3_act_2_op4_in_0;
logic [15:0] action3_act_2_op4_in_0_reg;
logic [15:0] action3_act_2_op4_out_0;
logic [15:0] action3_act_2_op4_out_0_reg;
logic action3_act_2_op4_in_valid;
logic action3_act_2_op4_out_valid;    
logic action3_act_2_op4_in_valid_reg;
logic action3_act_2_op4_out_valid_reg;
// Node 'action3_act_2_op5' (action) signal declaration
logic [0:0] action3_act_2_op5_args;
logic [0:0] action3_act_2_op5_args_reg;
logic [15:0] action3_act_2_op5_in_0;
logic [15:0] action3_act_2_op5_in_0_reg;
logic [15:0] action3_act_2_op5_out_0;
logic [15:0] action3_act_2_op5_out_0_reg;
logic action3_act_2_op5_in_valid;
logic action3_act_2_op5_out_valid;    
logic action3_act_2_op5_in_valid_reg;
logic action3_act_2_op5_out_valid_reg;
// Node 'action3_act_2_op6' (action) signal declaration
logic [0:0] action3_act_2_op6_args;
logic [0:0] action3_act_2_op6_args_reg;
logic [2:0] action3_act_2_op6_in_0;
logic [2:0] action3_act_2_op6_in_0_reg;
logic [2:0] action3_act_2_op6_out_0;
logic [2:0] action3_act_2_op6_out_0_reg;
logic action3_act_2_op6_in_valid;
logic action3_act_2_op6_out_valid;    
logic action3_act_2_op6_in_valid_reg;
logic action3_act_2_op6_out_valid_reg;
// Node 'action3_act_2_op7' (action) signal declaration
logic [0:0] action3_act_2_op7_args;
logic [0:0] action3_act_2_op7_args_reg;
logic [12:0] action3_act_2_op7_in_0;
logic [12:0] action3_act_2_op7_in_0_reg;
logic [12:0] action3_act_2_op7_out_0;
logic [12:0] action3_act_2_op7_out_0_reg;
logic action3_act_2_op7_in_valid;
logic action3_act_2_op7_out_valid;    
logic action3_act_2_op7_in_valid_reg;
logic action3_act_2_op7_out_valid_reg;
// Node 'action3_act_2_op8' (action) signal declaration
logic [0:0] action3_act_2_op8_args;
logic [0:0] action3_act_2_op8_args_reg;
logic [7:0] action3_act_2_op8_in_0;
logic [7:0] action3_act_2_op8_in_0_reg;
logic [7:0] action3_act_2_op8_out_0;
logic [7:0] action3_act_2_op8_out_0_reg;
logic action3_act_2_op8_in_valid;
logic action3_act_2_op8_out_valid;    
logic action3_act_2_op8_in_valid_reg;
logic action3_act_2_op8_out_valid_reg;
// Node 'action3_act_2_op9' (action) signal declaration
logic [0:0] action3_act_2_op9_args;
logic [0:0] action3_act_2_op9_args_reg;
logic [7:0] action3_act_2_op9_out_0;
logic [7:0] action3_act_2_op9_out_0_reg;
logic action3_act_2_op9_in_valid;
logic action3_act_2_op9_out_valid;    
logic action3_act_2_op9_in_valid_reg;
logic action3_act_2_op9_out_valid_reg;
// Node 'action3_act_2_op10' (action) signal declaration
logic [0:0] action3_act_2_op10_args;
logic [0:0] action3_act_2_op10_args_reg;
logic [15:0] action3_act_2_op10_out_0;
logic [15:0] action3_act_2_op10_out_0_reg;
logic action3_act_2_op10_in_valid;
logic action3_act_2_op10_out_valid;    
logic action3_act_2_op10_in_valid_reg;
logic action3_act_2_op10_out_valid_reg;
// Node 'action3_act_2_op11' (action) signal declaration
logic [0:0] action3_act_2_op11_args;
logic [0:0] action3_act_2_op11_args_reg;
logic [15:0] action3_act_2_op11_in_0;
logic [15:0] action3_act_2_op11_in_0_reg;
logic [15:0] action3_act_2_op11_out_0;
logic [15:0] action3_act_2_op11_out_0_reg;
logic action3_act_2_op11_in_valid;
logic action3_act_2_op11_out_valid;    
logic action3_act_2_op11_in_valid_reg;
logic action3_act_2_op11_out_valid_reg;
// Node 'action3_act_2_op12' (action) signal declaration
logic [0:0] action3_act_2_op12_args;
logic [0:0] action3_act_2_op12_args_reg;
logic [15:0] action3_act_2_op12_in_0;
logic [15:0] action3_act_2_op12_in_0_reg;
logic [15:0] action3_act_2_op12_out_0;
logic [15:0] action3_act_2_op12_out_0_reg;
logic action3_act_2_op12_in_valid;
logic action3_act_2_op12_out_valid;    
logic action3_act_2_op12_in_valid_reg;
logic action3_act_2_op12_out_valid_reg;
// Node 'action3_act_2_op13' (action) signal declaration
logic [0:0] action3_act_2_op13_args;
logic [0:0] action3_act_2_op13_args_reg;
logic [15:0] action3_act_2_op13_in_0;
logic [15:0] action3_act_2_op13_in_0_reg;
logic [15:0] action3_act_2_op13_out_0;
logic [15:0] action3_act_2_op13_out_0_reg;
logic action3_act_2_op13_in_valid;
logic action3_act_2_op13_out_valid;    
logic action3_act_2_op13_in_valid_reg;
logic action3_act_2_op13_out_valid_reg;
// Node 'action3_act_2_op14' (action) signal declaration
logic [0:0] action3_act_2_op14_args;
logic [0:0] action3_act_2_op14_args_reg;
logic [15:0] action3_act_2_op14_in_0;
logic [15:0] action3_act_2_op14_in_0_reg;
logic [15:0] action3_act_2_op14_out_0;
logic [15:0] action3_act_2_op14_out_0_reg;
logic action3_act_2_op14_in_valid;
logic action3_act_2_op14_out_valid;    
logic action3_act_2_op14_in_valid_reg;
logic action3_act_2_op14_out_valid_reg;
// Node 'action3_act_2_op15' (action) signal declaration
logic [0:0] action3_act_2_op15_args;
logic [0:0] action3_act_2_op15_args_reg;
logic [0:0] action3_act_2_op15_out_0;
logic [0:0] action3_act_2_op15_out_0_reg;
logic action3_act_2_op15_in_valid;
logic action3_act_2_op15_out_valid;    
logic action3_act_2_op15_in_valid_reg;
logic action3_act_2_op15_out_valid_reg;
// Node 'action3_act_2_op16' (action) signal declaration
logic [0:0] action3_act_2_op16_args;
logic [0:0] action3_act_2_op16_args_reg;
logic [63:0] action3_act_2_op16_in_0;
logic [63:0] action3_act_2_op16_in_0_reg;
logic [63:0] action3_act_2_op16_out_0;
logic [63:0] action3_act_2_op16_out_0_reg;
logic action3_act_2_op16_in_valid;
logic action3_act_2_op16_out_valid;    
logic action3_act_2_op16_in_valid_reg;
logic action3_act_2_op16_out_valid_reg;
// Node 'action3_act_2_op17' (action) signal declaration
logic [0:0] action3_act_2_op17_args;
logic [0:0] action3_act_2_op17_args_reg;
logic [0:0] action3_act_2_op17_out_0;
logic [0:0] action3_act_2_op17_out_0_reg;
logic action3_act_2_op17_in_valid;
logic action3_act_2_op17_out_valid;    
logic action3_act_2_op17_in_valid_reg;
logic action3_act_2_op17_out_valid_reg;
// Node 'action3_act_2_op18' (action) signal declaration
logic [0:0] action3_act_2_op18_args;
logic [0:0] action3_act_2_op18_args_reg;
logic [63:0] action3_act_2_op18_in_0;
logic [63:0] action3_act_2_op18_in_0_reg;
logic [63:0] action3_act_2_op18_out_0;
logic [63:0] action3_act_2_op18_out_0_reg;
logic action3_act_2_op18_in_valid;
logic action3_act_2_op18_out_valid;    
logic action3_act_2_op18_in_valid_reg;
logic action3_act_2_op18_out_valid_reg;
// Node 'action3_act_2_op19' (action) signal declaration
logic [0:0] action3_act_2_op19_args;
logic [0:0] action3_act_2_op19_args_reg;
logic [0:0] action3_act_2_op19_out_0;
logic [0:0] action3_act_2_op19_out_0_reg;
logic action3_act_2_op19_in_valid;
logic action3_act_2_op19_out_valid;    
logic action3_act_2_op19_in_valid_reg;
logic action3_act_2_op19_out_valid_reg;
// Node 'action3_act_2_op20' (action) signal declaration
logic [0:0] action3_act_2_op20_args;
logic [0:0] action3_act_2_op20_args_reg;
logic [127:0] action3_act_2_op20_in_0;
logic [127:0] action3_act_2_op20_in_0_reg;
logic [127:0] action3_act_2_op20_out_0;
logic [127:0] action3_act_2_op20_out_0_reg;
logic action3_act_2_op20_in_valid;
logic action3_act_2_op20_out_valid;    
logic action3_act_2_op20_in_valid_reg;
logic action3_act_2_op20_out_valid_reg;
// Node 'action3_act_2_op21' (action) signal declaration
logic [0:0] action3_act_2_op21_args;
logic [0:0] action3_act_2_op21_args_reg;
logic [3:0] action3_act_2_op21_in_0;
logic [3:0] action3_act_2_op21_in_0_reg;
logic [3:0] action3_act_2_op21_in_1;
logic [3:0] action3_act_2_op21_in_1_reg;
logic [7:0] action3_act_2_op21_in_2;
logic [7:0] action3_act_2_op21_in_2_reg;
logic [15:0] action3_act_2_op21_out_0;
logic [15:0] action3_act_2_op21_out_0_reg;
logic action3_act_2_op21_in_valid;
logic action3_act_2_op21_out_valid;    
logic action3_act_2_op21_in_valid_reg;
logic action3_act_2_op21_out_valid_reg;
// Node 'action3_act_2_op22' (action) signal declaration
logic [0:0] action3_act_2_op22_args;
logic [0:0] action3_act_2_op22_args_reg;
logic [15:0] action3_act_2_op22_in_0;
logic [15:0] action3_act_2_op22_in_0_reg;
logic [15:0] action3_act_2_op22_out_0;
logic [15:0] action3_act_2_op22_out_0_reg;
logic action3_act_2_op22_in_valid;
logic action3_act_2_op22_out_valid;    
logic action3_act_2_op22_in_valid_reg;
logic action3_act_2_op22_out_valid_reg;
// Node 'action3_act_2_op23' (action) signal declaration
logic [0:0] action3_act_2_op23_args;
logic [0:0] action3_act_2_op23_args_reg;
logic [15:0] action3_act_2_op23_in_0;
logic [15:0] action3_act_2_op23_in_0_reg;
logic [15:0] action3_act_2_op23_out_0;
logic [15:0] action3_act_2_op23_out_0_reg;
logic action3_act_2_op23_in_valid;
logic action3_act_2_op23_out_valid;    
logic action3_act_2_op23_in_valid_reg;
logic action3_act_2_op23_out_valid_reg;
// Node 'action3_act_2_op24' (action) signal declaration
logic [0:0] action3_act_2_op24_args;
logic [0:0] action3_act_2_op24_args_reg;
logic [2:0] action3_act_2_op24_in_0;
logic [2:0] action3_act_2_op24_in_0_reg;
logic [12:0] action3_act_2_op24_in_1;
logic [12:0] action3_act_2_op24_in_1_reg;
logic [15:0] action3_act_2_op24_out_0;
logic [15:0] action3_act_2_op24_out_0_reg;
logic action3_act_2_op24_in_valid;
logic action3_act_2_op24_out_valid;    
logic action3_act_2_op24_in_valid_reg;
logic action3_act_2_op24_out_valid_reg;
// Node 'action3_act_2_op25' (action) signal declaration
logic [0:0] action3_act_2_op25_args;
logic [0:0] action3_act_2_op25_args_reg;
logic [7:0] action3_act_2_op25_in_0;
logic [7:0] action3_act_2_op25_in_0_reg;
logic [7:0] action3_act_2_op25_in_1;
logic [7:0] action3_act_2_op25_in_1_reg;
logic [15:0] action3_act_2_op25_out_0;
logic [15:0] action3_act_2_op25_out_0_reg;
logic action3_act_2_op25_in_valid;
logic action3_act_2_op25_out_valid;    
logic action3_act_2_op25_in_valid_reg;
logic action3_act_2_op25_out_valid_reg;
// Node 'action3_act_2_op26' (action) signal declaration
logic [0:0] action3_act_2_op26_args;
logic [0:0] action3_act_2_op26_args_reg;
logic [15:0] action3_act_2_op26_in_0;
logic [15:0] action3_act_2_op26_in_0_reg;
logic [15:0] action3_act_2_op26_out_0;
logic [15:0] action3_act_2_op26_out_0_reg;
logic action3_act_2_op26_in_valid;
logic action3_act_2_op26_out_valid;    
logic action3_act_2_op26_in_valid_reg;
logic action3_act_2_op26_out_valid_reg;
// Node 'action3_act_2_op27' (action) signal declaration
logic [0:0] action3_act_2_op27_args;
logic [0:0] action3_act_2_op27_args_reg;
logic [15:0] action3_act_2_op27_in_0;
logic [15:0] action3_act_2_op27_in_0_reg;
logic [15:0] action3_act_2_op27_out_0;
logic [15:0] action3_act_2_op27_out_0_reg;
logic action3_act_2_op27_in_valid;
logic action3_act_2_op27_out_valid;    
logic action3_act_2_op27_in_valid_reg;
logic action3_act_2_op27_out_valid_reg;
// Node 'action3_act_2_op28' (action) signal declaration
logic [0:0] action3_act_2_op28_args;
logic [0:0] action3_act_2_op28_args_reg;
logic [15:0] action3_act_2_op28_in_0;
logic [15:0] action3_act_2_op28_in_0_reg;
logic [15:0] action3_act_2_op28_out_0;
logic [15:0] action3_act_2_op28_out_0_reg;
logic action3_act_2_op28_in_valid;
logic action3_act_2_op28_out_valid;    
logic action3_act_2_op28_in_valid_reg;
logic action3_act_2_op28_out_valid_reg;
// Node 'action3_act_2_op29' (action) signal declaration
logic [0:0] action3_act_2_op29_args;
logic [0:0] action3_act_2_op29_args_reg;
logic [15:0] action3_act_2_op29_in_0;
logic [15:0] action3_act_2_op29_in_0_reg;
logic [15:0] action3_act_2_op29_out_0;
logic [15:0] action3_act_2_op29_out_0_reg;
logic action3_act_2_op29_in_valid;
logic action3_act_2_op29_out_valid;    
logic action3_act_2_op29_in_valid_reg;
logic action3_act_2_op29_out_valid_reg;
// Node 'action3_act_2_op30' (action) signal declaration
logic [0:0] action3_act_2_op30_args;
logic [0:0] action3_act_2_op30_args_reg;
logic [15:0] action3_act_2_op30_in_0;
logic [15:0] action3_act_2_op30_in_0_reg;
logic [15:0] action3_act_2_op30_out_0;
logic [15:0] action3_act_2_op30_out_0_reg;
logic action3_act_2_op30_in_valid;
logic action3_act_2_op30_out_valid;    
logic action3_act_2_op30_in_valid_reg;
logic action3_act_2_op30_out_valid_reg;
// Node 'action3_act_2_op32' (action) signal declaration
logic [0:0] action3_act_2_op32_args;
logic [0:0] action3_act_2_op32_args_reg;
logic [15:0] action3_act_2_op32_in_0;
logic [15:0] action3_act_2_op32_in_0_reg;
logic [15:0] action3_act_2_op32_out_0;
logic [15:0] action3_act_2_op32_out_0_reg;
logic action3_act_2_op32_in_valid;
logic action3_act_2_op32_out_valid;    
logic action3_act_2_op32_in_valid_reg;
logic action3_act_2_op32_out_valid_reg;
// Node 'action3_act_2_op31' (extern) signal declaration
logic [0:0] action3_act_2_op31_args;
logic [15:0] action3_act_2_op31_in_0;
logic [15:0] action3_act_2_op31_in_1;
logic [15:0] action3_act_2_op31_in_2;
logic [15:0] action3_act_2_op31_in_3;
logic [15:0] action3_act_2_op31_in_4;
logic [15:0] action3_act_2_op31_in_5;
logic [15:0] action3_act_2_op31_in_6;
logic [15:0] action3_act_2_op31_in_7;
logic [15:0] action3_act_2_op31_in_8;
logic [15:0] action3_act_2_op31_in_9;
logic [15:0] action3_act_2_op31_out_0;
logic action3_act_2_op31_in_valid;
logic action3_act_2_op31_out_valid;    
 
// /////////////////////////////////////////////////
// pipeline vectors & signals declaration
// /////////////////////////////////////////////////
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s0, vectors_pipe_reg_s0;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s1, vectors_pipe_reg_s1;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s2, vectors_pipe_reg_s2;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s3, vectors_pipe_reg_s3;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s4, vectors_pipe_reg_s4;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s5, vectors_pipe_reg_s5;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s6, vectors_pipe_reg_s6;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s7, vectors_pipe_reg_s7;
T_MA_VECTORS_PIPE_SIGNALS vectors_pipe_s8, vectors_pipe_reg_s8;

// ///////////////////
// AXI4-lite signals
// //////////////////

// /////////////////////////
// node instantiation
// /////////////////////////
// Node 'conditional0_node_89' (conditional) instantiation
ipsec_bd_sdnet_0_3_conditional0_node_89 conditional0_node_89_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .in_0      (conditional0_node_89_in_0),
    .in_valid  (conditional0_node_89_in_valid),
    .out_true      (conditional0_node_89_out_true),
    .out_false      (conditional0_node_89_out_false),
    .out_valid (conditional0_node_89_out_valid)
);
// Node 'table0_tbl_act' (table) instantiation
ipsec_bd_sdnet_0_3_table0_tbl_act table0_tbl_act_inst (
    .resetn           (aresetn),
    .core_clk         (cam_mem_aclk),
    .key_clk          (aclk),
    .key_valid        (table0_tbl_act_in_valid),
    .hit_miss     (table0_tbl_act_hit_miss),
    .action0_args     (table0_tbl_act_action0_args),
    .action0_en     (table0_tbl_act_action0_en),
    .out_valid        (table0_tbl_act_out_valid)
);
// Node 'table1_tbl_act_0' (table) instantiation
ipsec_bd_sdnet_0_3_table1_tbl_act_0 table1_tbl_act_0_inst (
    .resetn           (aresetn),
    .core_clk         (cam_mem_aclk),
    .key_clk          (aclk),
    .key_valid        (table1_tbl_act_0_in_valid),
    .hit_miss     (table1_tbl_act_0_hit_miss),
    .action0_args     (table1_tbl_act_0_action0_args),
    .action0_en     (table1_tbl_act_0_action0_en),
    .out_valid        (table1_tbl_act_0_out_valid)
);
// Node 'table2_tbl_act_1' (table) instantiation
ipsec_bd_sdnet_0_3_table2_tbl_act_1 table2_tbl_act_1_inst (
    .resetn           (aresetn),
    .core_clk         (cam_mem_aclk),
    .key_clk          (aclk),
    .key_valid        (table2_tbl_act_1_in_valid),
    .hit_miss     (table2_tbl_act_1_hit_miss),
    .action0_args     (table2_tbl_act_1_action0_args),
    .action0_en     (table2_tbl_act_1_action0_en),
    .out_valid        (table2_tbl_act_1_out_valid)
);
// Node 'table3_tbl_act_2' (table) instantiation
ipsec_bd_sdnet_0_3_table3_tbl_act_2 table3_tbl_act_2_inst (
    .resetn           (aresetn),
    .core_clk         (cam_mem_aclk),
    .key_clk          (aclk),
    .key_valid        (table3_tbl_act_2_in_valid),
    .hit_miss     (table3_tbl_act_2_hit_miss),
    .action0_args     (table3_tbl_act_2_action0_args),
    .action0_en     (table3_tbl_act_2_action0_en),
    .out_valid        (table3_tbl_act_2_out_valid)
);
// Node 'action0_act_op0' (action) instantiation
ipsec_bd_sdnet_0_3_action0_act_op0 action0_act_op0_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action0_act_op0_args),
    .in_valid  (action0_act_op0_in_valid),
    .out_0      (action0_act_op0_out_0),
    .out_valid (action0_act_op0_out_valid)
);
// Node 'action0_act_op1' (action) instantiation
ipsec_bd_sdnet_0_3_action0_act_op1 action0_act_op1_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action0_act_op1_args),
    .in_0      (action0_act_op1_in_0),
    .in_valid  (action0_act_op1_in_valid),
    .out_0      (action0_act_op1_out_0),
    .out_valid (action0_act_op1_out_valid)
);
// Node 'action1_act_0_op0' (action) instantiation
ipsec_bd_sdnet_0_3_action1_act_0_op0 action1_act_0_op0_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action1_act_0_op0_args),
    .in_valid  (action1_act_0_op0_in_valid),
    .out_0      (action1_act_0_op0_out_0),
    .out_valid (action1_act_0_op0_out_valid)
);
// Node 'action2_act_1_op0' (action) instantiation
ipsec_bd_sdnet_0_3_action2_act_1_op0 action2_act_1_op0_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action2_act_1_op0_args),
    .in_valid  (action2_act_1_op0_in_valid),
    .out_0      (action2_act_1_op0_out_0),
    .out_valid (action2_act_1_op0_out_valid)
);
// Node 'action2_act_1_op1' (action) instantiation
ipsec_bd_sdnet_0_3_action2_act_1_op1 action2_act_1_op1_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action2_act_1_op1_args),
    .in_0      (action2_act_1_op1_in_0),
    .in_valid  (action2_act_1_op1_in_valid),
    .out_0      (action2_act_1_op1_out_0),
    .out_valid (action2_act_1_op1_out_valid)
);
// Node 'action3_act_2_op0' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op0 action3_act_2_op0_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op0_args),
    .in_valid  (action3_act_2_op0_in_valid),
    .out_0      (action3_act_2_op0_out_0),
    .out_valid (action3_act_2_op0_out_valid)
);
// Node 'action3_act_2_op1' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op1 action3_act_2_op1_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op1_args),
    .in_0      (action3_act_2_op1_in_0),
    .in_valid  (action3_act_2_op1_in_valid),
    .out_0      (action3_act_2_op1_out_0),
    .out_valid (action3_act_2_op1_out_valid)
);
// Node 'action3_act_2_op2' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op2 action3_act_2_op2_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op2_args),
    .in_0      (action3_act_2_op2_in_0),
    .in_valid  (action3_act_2_op2_in_valid),
    .out_0      (action3_act_2_op2_out_0),
    .out_valid (action3_act_2_op2_out_valid)
);
// Node 'action3_act_2_op3' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op3 action3_act_2_op3_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op3_args),
    .in_0      (action3_act_2_op3_in_0),
    .in_valid  (action3_act_2_op3_in_valid),
    .out_0      (action3_act_2_op3_out_0),
    .out_valid (action3_act_2_op3_out_valid)
);
// Node 'action3_act_2_op4' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op4 action3_act_2_op4_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op4_args),
    .in_0      (action3_act_2_op4_in_0),
    .in_valid  (action3_act_2_op4_in_valid),
    .out_0      (action3_act_2_op4_out_0),
    .out_valid (action3_act_2_op4_out_valid)
);
// Node 'action3_act_2_op5' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op5 action3_act_2_op5_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op5_args),
    .in_0      (action3_act_2_op5_in_0),
    .in_valid  (action3_act_2_op5_in_valid),
    .out_0      (action3_act_2_op5_out_0),
    .out_valid (action3_act_2_op5_out_valid)
);
// Node 'action3_act_2_op6' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op6 action3_act_2_op6_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op6_args),
    .in_0      (action3_act_2_op6_in_0),
    .in_valid  (action3_act_2_op6_in_valid),
    .out_0      (action3_act_2_op6_out_0),
    .out_valid (action3_act_2_op6_out_valid)
);
// Node 'action3_act_2_op7' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op7 action3_act_2_op7_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op7_args),
    .in_0      (action3_act_2_op7_in_0),
    .in_valid  (action3_act_2_op7_in_valid),
    .out_0      (action3_act_2_op7_out_0),
    .out_valid (action3_act_2_op7_out_valid)
);
// Node 'action3_act_2_op8' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op8 action3_act_2_op8_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op8_args),
    .in_0      (action3_act_2_op8_in_0),
    .in_valid  (action3_act_2_op8_in_valid),
    .out_0      (action3_act_2_op8_out_0),
    .out_valid (action3_act_2_op8_out_valid)
);
// Node 'action3_act_2_op9' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op9 action3_act_2_op9_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op9_args),
    .in_valid  (action3_act_2_op9_in_valid),
    .out_0      (action3_act_2_op9_out_0),
    .out_valid (action3_act_2_op9_out_valid)
);
// Node 'action3_act_2_op10' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op10 action3_act_2_op10_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op10_args),
    .in_valid  (action3_act_2_op10_in_valid),
    .out_0      (action3_act_2_op10_out_0),
    .out_valid (action3_act_2_op10_out_valid)
);
// Node 'action3_act_2_op11' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op11 action3_act_2_op11_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op11_args),
    .in_0      (action3_act_2_op11_in_0),
    .in_valid  (action3_act_2_op11_in_valid),
    .out_0      (action3_act_2_op11_out_0),
    .out_valid (action3_act_2_op11_out_valid)
);
// Node 'action3_act_2_op12' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op12 action3_act_2_op12_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op12_args),
    .in_0      (action3_act_2_op12_in_0),
    .in_valid  (action3_act_2_op12_in_valid),
    .out_0      (action3_act_2_op12_out_0),
    .out_valid (action3_act_2_op12_out_valid)
);
// Node 'action3_act_2_op13' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op13 action3_act_2_op13_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op13_args),
    .in_0      (action3_act_2_op13_in_0),
    .in_valid  (action3_act_2_op13_in_valid),
    .out_0      (action3_act_2_op13_out_0),
    .out_valid (action3_act_2_op13_out_valid)
);
// Node 'action3_act_2_op14' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op14 action3_act_2_op14_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op14_args),
    .in_0      (action3_act_2_op14_in_0),
    .in_valid  (action3_act_2_op14_in_valid),
    .out_0      (action3_act_2_op14_out_0),
    .out_valid (action3_act_2_op14_out_valid)
);
// Node 'action3_act_2_op15' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op15 action3_act_2_op15_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op15_args),
    .in_valid  (action3_act_2_op15_in_valid),
    .out_0      (action3_act_2_op15_out_0),
    .out_valid (action3_act_2_op15_out_valid)
);
// Node 'action3_act_2_op16' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op16 action3_act_2_op16_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op16_args),
    .in_0      (action3_act_2_op16_in_0),
    .in_valid  (action3_act_2_op16_in_valid),
    .out_0      (action3_act_2_op16_out_0),
    .out_valid (action3_act_2_op16_out_valid)
);
// Node 'action3_act_2_op17' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op17 action3_act_2_op17_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op17_args),
    .in_valid  (action3_act_2_op17_in_valid),
    .out_0      (action3_act_2_op17_out_0),
    .out_valid (action3_act_2_op17_out_valid)
);
// Node 'action3_act_2_op18' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op18 action3_act_2_op18_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op18_args),
    .in_0      (action3_act_2_op18_in_0),
    .in_valid  (action3_act_2_op18_in_valid),
    .out_0      (action3_act_2_op18_out_0),
    .out_valid (action3_act_2_op18_out_valid)
);
// Node 'action3_act_2_op19' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op19 action3_act_2_op19_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op19_args),
    .in_valid  (action3_act_2_op19_in_valid),
    .out_0      (action3_act_2_op19_out_0),
    .out_valid (action3_act_2_op19_out_valid)
);
// Node 'action3_act_2_op20' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op20 action3_act_2_op20_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op20_args),
    .in_0      (action3_act_2_op20_in_0),
    .in_valid  (action3_act_2_op20_in_valid),
    .out_0      (action3_act_2_op20_out_0),
    .out_valid (action3_act_2_op20_out_valid)
);
// Node 'action3_act_2_op21' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op21 action3_act_2_op21_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op21_args),
    .in_0      (action3_act_2_op21_in_0),
    .in_1      (action3_act_2_op21_in_1),
    .in_2      (action3_act_2_op21_in_2),
    .in_valid  (action3_act_2_op21_in_valid),
    .out_0      (action3_act_2_op21_out_0),
    .out_valid (action3_act_2_op21_out_valid)
);
// Node 'action3_act_2_op22' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op22 action3_act_2_op22_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op22_args),
    .in_0      (action3_act_2_op22_in_0),
    .in_valid  (action3_act_2_op22_in_valid),
    .out_0      (action3_act_2_op22_out_0),
    .out_valid (action3_act_2_op22_out_valid)
);
// Node 'action3_act_2_op23' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op23 action3_act_2_op23_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op23_args),
    .in_0      (action3_act_2_op23_in_0),
    .in_valid  (action3_act_2_op23_in_valid),
    .out_0      (action3_act_2_op23_out_0),
    .out_valid (action3_act_2_op23_out_valid)
);
// Node 'action3_act_2_op24' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op24 action3_act_2_op24_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op24_args),
    .in_0      (action3_act_2_op24_in_0),
    .in_1      (action3_act_2_op24_in_1),
    .in_valid  (action3_act_2_op24_in_valid),
    .out_0      (action3_act_2_op24_out_0),
    .out_valid (action3_act_2_op24_out_valid)
);
// Node 'action3_act_2_op25' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op25 action3_act_2_op25_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op25_args),
    .in_0      (action3_act_2_op25_in_0),
    .in_1      (action3_act_2_op25_in_1),
    .in_valid  (action3_act_2_op25_in_valid),
    .out_0      (action3_act_2_op25_out_0),
    .out_valid (action3_act_2_op25_out_valid)
);
// Node 'action3_act_2_op26' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op26 action3_act_2_op26_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op26_args),
    .in_0      (action3_act_2_op26_in_0),
    .in_valid  (action3_act_2_op26_in_valid),
    .out_0      (action3_act_2_op26_out_0),
    .out_valid (action3_act_2_op26_out_valid)
);
// Node 'action3_act_2_op27' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op27 action3_act_2_op27_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op27_args),
    .in_0      (action3_act_2_op27_in_0),
    .in_valid  (action3_act_2_op27_in_valid),
    .out_0      (action3_act_2_op27_out_0),
    .out_valid (action3_act_2_op27_out_valid)
);
// Node 'action3_act_2_op28' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op28 action3_act_2_op28_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op28_args),
    .in_0      (action3_act_2_op28_in_0),
    .in_valid  (action3_act_2_op28_in_valid),
    .out_0      (action3_act_2_op28_out_0),
    .out_valid (action3_act_2_op28_out_valid)
);
// Node 'action3_act_2_op29' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op29 action3_act_2_op29_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op29_args),
    .in_0      (action3_act_2_op29_in_0),
    .in_valid  (action3_act_2_op29_in_valid),
    .out_0      (action3_act_2_op29_out_0),
    .out_valid (action3_act_2_op29_out_valid)
);
// Node 'action3_act_2_op30' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op30 action3_act_2_op30_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op30_args),
    .in_0      (action3_act_2_op30_in_0),
    .in_valid  (action3_act_2_op30_in_valid),
    .out_0      (action3_act_2_op30_out_0),
    .out_valid (action3_act_2_op30_out_valid)
);
// Node 'action3_act_2_op32' (action) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op32 action3_act_2_op32_inst (
    .aclk      (aclk),
    .aresetn   (aresetn),
    .args      (action3_act_2_op32_args),
    .in_0      (action3_act_2_op32_in_0),
    .in_valid  (action3_act_2_op32_in_valid),
    .out_0      (action3_act_2_op32_out_0),
    .out_valid (action3_act_2_op32_out_valid)
);
// Node 'action3_act_2_op31' (extern) instantiation
ipsec_bd_sdnet_0_3_action3_act_2_op31 action3_act_2_op31_inst (
    .aclk                  (aclk),
    .aresetn               (aresetn),
    .user_extern_in        (user_extern_in.calc_checksum),
    .user_extern_in_valid  (user_extern_in_valid.calc_checksum),
    .user_extern_out       (user_extern_out.calc_checksum),
    .user_extern_out_valid (user_extern_out_valid.calc_checksum),
    .args               (action3_act_2_op31_args),
    .in_0               (action3_act_2_op31_in_0),
    .in_1               (action3_act_2_op31_in_1),
    .in_2               (action3_act_2_op31_in_2),
    .in_3               (action3_act_2_op31_in_3),
    .in_4               (action3_act_2_op31_in_4),
    .in_5               (action3_act_2_op31_in_5),
    .in_6               (action3_act_2_op31_in_6),
    .in_7               (action3_act_2_op31_in_7),
    .in_8               (action3_act_2_op31_in_8),
    .in_9               (action3_act_2_op31_in_9),
    .in_valid              (action3_act_2_op31_in_valid),
    .out_0               (action3_act_2_op31_out_0),
    .out_valid             (action3_act_2_op31_out_valid)
);
// ///////////////////////////////////////////////////
// Statistics Gathering
// ///////////////////////////////////////////////////
// not connected
assign max_sof_per_intvl = '1;
assign sync_fifos_injectsbiterr = '0;
assign sync_fifos_injectdbiterr = '0;
// //////////////////////////////////////
// AXI4-LITE Connections
// /////////////////////////////////////
assign s_axi_awready = 0;
assign s_axi_wready  = 0;
assign s_axi_bresp   = 0;
assign s_axi_bvalid  = 0;
assign s_axi_arready = 0;
assign s_axi_rdata   = 0;
assign s_axi_rvalid  = 0;
assign s_axi_rresp   = 0;

// ////////////////////
// node connections
// ////////////////////
// Node 'conditional0_node_89' (extern) connections
assign conditional0_node_89_in_valid = vectors_pipe_s0.enable;
assign conditional0_node_89_in_0 = vectors_pipe_s0.user_metadata.metadata_is_vlan;
`CLOCKED_NORESET(aclk,aresetn)
begin
    conditional0_node_89_out_valid_reg <= '0;
    conditional0_node_89_out_true_reg <= '0;
    conditional0_node_89_out_false_reg <= '0;
end else begin
    conditional0_node_89_out_valid_reg <= conditional0_node_89_out_valid;
    conditional0_node_89_out_true_reg <= conditional0_node_89_out_true;
    conditional0_node_89_out_false_reg <= conditional0_node_89_out_false;
end 
// Node 'table0_tbl_act' (extern) connections
assign table0_tbl_act_in_valid = vectors_pipe_s0.enable;
`CLOCKED_NORESET(aclk,aresetn)
begin
    table0_tbl_act_out_valid_reg <= '0;
    table0_tbl_act_hit_miss_reg <= '0;
    table0_tbl_act_action0_args_reg <= '0;
    table0_tbl_act_action0_en_reg <= '0;
end else begin
    table0_tbl_act_out_valid_reg <= table0_tbl_act_out_valid;
    table0_tbl_act_hit_miss_reg <= table0_tbl_act_hit_miss;
    table0_tbl_act_action0_args_reg <= table0_tbl_act_action0_args;
    table0_tbl_act_action0_en_reg <= table0_tbl_act_action0_en;
end 
// Node 'table1_tbl_act_0' (extern) connections
assign table1_tbl_act_0_in_valid = vectors_pipe_s0.enable & ( (conditional0_node_89_out_true & conditional0_node_89_out_valid));
`CLOCKED_NORESET(aclk,aresetn)
begin
    table1_tbl_act_0_out_valid_reg <= '0;
    table1_tbl_act_0_hit_miss_reg <= '0;
    table1_tbl_act_0_action0_args_reg <= '0;
    table1_tbl_act_0_action0_en_reg <= '0;
end else begin
    table1_tbl_act_0_out_valid_reg <= table1_tbl_act_0_out_valid;
    table1_tbl_act_0_hit_miss_reg <= table1_tbl_act_0_hit_miss;
    table1_tbl_act_0_action0_args_reg <= table1_tbl_act_0_action0_args;
    table1_tbl_act_0_action0_en_reg <= table1_tbl_act_0_action0_en;
end 
// Node 'table2_tbl_act_1' (extern) connections
assign table2_tbl_act_1_in_valid = vectors_pipe_s0.enable & ( (conditional0_node_89_out_false & conditional0_node_89_out_valid));
`CLOCKED_NORESET(aclk,aresetn)
begin
    table2_tbl_act_1_out_valid_reg <= '0;
    table2_tbl_act_1_hit_miss_reg <= '0;
    table2_tbl_act_1_action0_args_reg <= '0;
    table2_tbl_act_1_action0_en_reg <= '0;
end else begin
    table2_tbl_act_1_out_valid_reg <= table2_tbl_act_1_out_valid;
    table2_tbl_act_1_hit_miss_reg <= table2_tbl_act_1_hit_miss;
    table2_tbl_act_1_action0_args_reg <= table2_tbl_act_1_action0_args;
    table2_tbl_act_1_action0_en_reg <= table2_tbl_act_1_action0_en;
end 
// Node 'table3_tbl_act_2' (extern) connections
assign table3_tbl_act_2_in_valid = vectors_pipe_s0.enable;
`CLOCKED_NORESET(aclk,aresetn)
begin
    table3_tbl_act_2_out_valid_reg <= '0;
    table3_tbl_act_2_hit_miss_reg <= '0;
    table3_tbl_act_2_action0_args_reg <= '0;
    table3_tbl_act_2_action0_en_reg <= '0;
end else begin
    table3_tbl_act_2_out_valid_reg <= table3_tbl_act_2_out_valid;
    table3_tbl_act_2_hit_miss_reg <= table3_tbl_act_2_hit_miss;
    table3_tbl_act_2_action0_args_reg <= table3_tbl_act_2_action0_args;
    table3_tbl_act_2_action0_en_reg <= table3_tbl_act_2_action0_en;
end 
// Node 'action0_act_op0' (extern) connections
assign action0_act_op0_in_valid = vectors_pipe_s0.enable & ( (table1_tbl_act_0_action0_en));
assign action0_act_op0_args = table1_tbl_act_0_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action0_act_op0_out_valid_reg <= '0;
    action0_act_op0_out_0_reg <= '0;
end else begin
    action0_act_op0_out_valid_reg <= action0_act_op0_out_valid;
    action0_act_op0_out_0_reg <= action0_act_op0_out_0;
end 
// Node 'action0_act_op1' (extern) connections
assign action0_act_op1_in_valid = vectors_pipe_s0.enable & ( (table1_tbl_act_0_action0_en));
assign action0_act_op1_args = table1_tbl_act_0_action0_args;
assign action0_act_op1_in_0 = vectors_pipe_s0.user_metadata.metadata_vlan_header;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action0_act_op1_out_valid_reg <= '0;
    action0_act_op1_out_0_reg <= '0;
end else begin
    action0_act_op1_out_valid_reg <= action0_act_op1_out_valid;
    action0_act_op1_out_0_reg <= action0_act_op1_out_0;
end 
// Node 'action1_act_0_op0' (extern) connections
assign action1_act_0_op0_in_valid = vectors_pipe_s0.enable & ( (table2_tbl_act_1_action0_en));
assign action1_act_0_op0_args = table2_tbl_act_1_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action1_act_0_op0_out_valid_reg <= '0;
    action1_act_0_op0_out_0_reg <= '0;
end else begin
    action1_act_0_op0_out_valid_reg <= action1_act_0_op0_out_valid;
    action1_act_0_op0_out_0_reg <= action1_act_0_op0_out_0;
end 
// Node 'action2_act_1_op0' (extern) connections
assign action2_act_1_op0_in_valid = vectors_pipe_s0.enable & ( (table0_tbl_act_action0_en));
assign action2_act_1_op0_args = table0_tbl_act_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action2_act_1_op0_out_valid_reg <= '0;
    action2_act_1_op0_out_0_reg <= '0;
end else begin
    action2_act_1_op0_out_valid_reg <= action2_act_1_op0_out_valid;
    action2_act_1_op0_out_0_reg <= action2_act_1_op0_out_0;
end 
// Node 'action2_act_1_op1' (extern) connections
assign action2_act_1_op1_in_valid = vectors_pipe_s0.enable & ( (table0_tbl_act_action0_en));
assign action2_act_1_op1_args = table0_tbl_act_action0_args;
assign action2_act_1_op1_in_0 = vectors_pipe_s0.user_metadata.metadata_mac_header;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action2_act_1_op1_out_valid_reg <= '0;
    action2_act_1_op1_out_0_reg <= '0;
end else begin
    action2_act_1_op1_out_valid_reg <= action2_act_1_op1_out_valid;
    action2_act_1_op1_out_0_reg <= action2_act_1_op1_out_0;
end 
// Node 'action3_act_2_op0' (extern) connections
assign action3_act_2_op0_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op0_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op0_out_valid_reg <= '0;
    action3_act_2_op0_out_0_reg <= '0;
end else begin
    action3_act_2_op0_out_valid_reg <= action3_act_2_op0_out_valid;
    action3_act_2_op0_out_0_reg <= action3_act_2_op0_out_0;
end 
// Node 'action3_act_2_op1' (extern) connections
assign action3_act_2_op1_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op1_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op1_in_0 = vectors_pipe_s0.user_metadata.metadata_version;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op1_out_valid_reg <= '0;
    action3_act_2_op1_out_0_reg <= '0;
end else begin
    action3_act_2_op1_out_valid_reg <= action3_act_2_op1_out_valid;
    action3_act_2_op1_out_0_reg <= action3_act_2_op1_out_0;
end 
// Node 'action3_act_2_op2' (extern) connections
assign action3_act_2_op2_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op2_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op2_in_0 = vectors_pipe_s0.user_metadata.metadata_hdr_len;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op2_out_valid_reg <= '0;
    action3_act_2_op2_out_0_reg <= '0;
end else begin
    action3_act_2_op2_out_valid_reg <= action3_act_2_op2_out_valid;
    action3_act_2_op2_out_0_reg <= action3_act_2_op2_out_0;
end 
// Node 'action3_act_2_op3' (extern) connections
assign action3_act_2_op3_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op3_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op3_in_0 = vectors_pipe_s0.user_metadata.metadata_tos;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op3_out_valid_reg <= '0;
    action3_act_2_op3_out_0_reg <= '0;
end else begin
    action3_act_2_op3_out_valid_reg <= action3_act_2_op3_out_valid;
    action3_act_2_op3_out_0_reg <= action3_act_2_op3_out_0;
end 
// Node 'action3_act_2_op4' (extern) connections
assign action3_act_2_op4_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op4_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op4_in_0 = vectors_pipe_s0.user_metadata.metadata_len;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op4_out_valid_reg <= '0;
    action3_act_2_op4_out_0_reg <= '0;
end else begin
    action3_act_2_op4_out_valid_reg <= action3_act_2_op4_out_valid;
    action3_act_2_op4_out_0_reg <= action3_act_2_op4_out_0;
end 
// Node 'action3_act_2_op5' (extern) connections
assign action3_act_2_op5_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op5_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op5_in_0 = vectors_pipe_s0.user_metadata.metadata_id;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op5_out_valid_reg <= '0;
    action3_act_2_op5_out_0_reg <= '0;
end else begin
    action3_act_2_op5_out_valid_reg <= action3_act_2_op5_out_valid;
    action3_act_2_op5_out_0_reg <= action3_act_2_op5_out_0;
end 
// Node 'action3_act_2_op6' (extern) connections
assign action3_act_2_op6_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op6_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op6_in_0 = vectors_pipe_s0.user_metadata.metadata_flags;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op6_out_valid_reg <= '0;
    action3_act_2_op6_out_0_reg <= '0;
end else begin
    action3_act_2_op6_out_valid_reg <= action3_act_2_op6_out_valid;
    action3_act_2_op6_out_0_reg <= action3_act_2_op6_out_0;
end 
// Node 'action3_act_2_op7' (extern) connections
assign action3_act_2_op7_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op7_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op7_in_0 = vectors_pipe_s0.user_metadata.metadata_offset;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op7_out_valid_reg <= '0;
    action3_act_2_op7_out_0_reg <= '0;
end else begin
    action3_act_2_op7_out_valid_reg <= action3_act_2_op7_out_valid;
    action3_act_2_op7_out_0_reg <= action3_act_2_op7_out_0;
end 
// Node 'action3_act_2_op8' (extern) connections
assign action3_act_2_op8_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op8_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op8_in_0 = vectors_pipe_s0.user_metadata.metadata_ttl;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op8_out_valid_reg <= '0;
    action3_act_2_op8_out_0_reg <= '0;
end else begin
    action3_act_2_op8_out_valid_reg <= action3_act_2_op8_out_valid;
    action3_act_2_op8_out_0_reg <= action3_act_2_op8_out_0;
end 
// Node 'action3_act_2_op9' (extern) connections
assign action3_act_2_op9_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op9_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op9_out_valid_reg <= '0;
    action3_act_2_op9_out_0_reg <= '0;
end else begin
    action3_act_2_op9_out_valid_reg <= action3_act_2_op9_out_valid;
    action3_act_2_op9_out_0_reg <= action3_act_2_op9_out_0;
end 
// Node 'action3_act_2_op10' (extern) connections
assign action3_act_2_op10_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op10_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op10_out_valid_reg <= '0;
    action3_act_2_op10_out_0_reg <= '0;
end else begin
    action3_act_2_op10_out_valid_reg <= action3_act_2_op10_out_valid;
    action3_act_2_op10_out_0_reg <= action3_act_2_op10_out_0;
end 
// Node 'action3_act_2_op11' (extern) connections
assign action3_act_2_op11_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op11_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op11_in_0 = vectors_pipe_s0.user_metadata.metadata_src_1;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op11_out_valid_reg <= '0;
    action3_act_2_op11_out_0_reg <= '0;
end else begin
    action3_act_2_op11_out_valid_reg <= action3_act_2_op11_out_valid;
    action3_act_2_op11_out_0_reg <= action3_act_2_op11_out_0;
end 
// Node 'action3_act_2_op12' (extern) connections
assign action3_act_2_op12_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op12_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op12_in_0 = vectors_pipe_s0.user_metadata.metadata_src_2;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op12_out_valid_reg <= '0;
    action3_act_2_op12_out_0_reg <= '0;
end else begin
    action3_act_2_op12_out_valid_reg <= action3_act_2_op12_out_valid;
    action3_act_2_op12_out_0_reg <= action3_act_2_op12_out_0;
end 
// Node 'action3_act_2_op13' (extern) connections
assign action3_act_2_op13_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op13_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op13_in_0 = vectors_pipe_s0.user_metadata.metadata_dst_1;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op13_out_valid_reg <= '0;
    action3_act_2_op13_out_0_reg <= '0;
end else begin
    action3_act_2_op13_out_valid_reg <= action3_act_2_op13_out_valid;
    action3_act_2_op13_out_0_reg <= action3_act_2_op13_out_0;
end 
// Node 'action3_act_2_op14' (extern) connections
assign action3_act_2_op14_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op14_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op14_in_0 = vectors_pipe_s0.user_metadata.metadata_dst_2;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op14_out_valid_reg <= '0;
    action3_act_2_op14_out_0_reg <= '0;
end else begin
    action3_act_2_op14_out_valid_reg <= action3_act_2_op14_out_valid;
    action3_act_2_op14_out_0_reg <= action3_act_2_op14_out_0;
end 
// Node 'action3_act_2_op15' (extern) connections
assign action3_act_2_op15_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op15_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op15_out_valid_reg <= '0;
    action3_act_2_op15_out_0_reg <= '0;
end else begin
    action3_act_2_op15_out_valid_reg <= action3_act_2_op15_out_valid;
    action3_act_2_op15_out_0_reg <= action3_act_2_op15_out_0;
end 
// Node 'action3_act_2_op16' (extern) connections
assign action3_act_2_op16_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op16_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op16_in_0 = vectors_pipe_s0.user_metadata.metadata_esp_header;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op16_out_valid_reg <= '0;
    action3_act_2_op16_out_0_reg <= '0;
end else begin
    action3_act_2_op16_out_valid_reg <= action3_act_2_op16_out_valid;
    action3_act_2_op16_out_0_reg <= action3_act_2_op16_out_0;
end 
// Node 'action3_act_2_op17' (extern) connections
assign action3_act_2_op17_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op17_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op17_out_valid_reg <= '0;
    action3_act_2_op17_out_0_reg <= '0;
end else begin
    action3_act_2_op17_out_valid_reg <= action3_act_2_op17_out_valid;
    action3_act_2_op17_out_0_reg <= action3_act_2_op17_out_0;
end 
// Node 'action3_act_2_op18' (extern) connections
assign action3_act_2_op18_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op18_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op18_in_0 = vectors_pipe_s0.user_metadata.metadata_ext_iv;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op18_out_valid_reg <= '0;
    action3_act_2_op18_out_0_reg <= '0;
end else begin
    action3_act_2_op18_out_valid_reg <= action3_act_2_op18_out_valid;
    action3_act_2_op18_out_0_reg <= action3_act_2_op18_out_0;
end 
// Node 'action3_act_2_op19' (extern) connections
assign action3_act_2_op19_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op19_args = table3_tbl_act_2_action0_args;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op19_out_valid_reg <= '0;
    action3_act_2_op19_out_0_reg <= '0;
end else begin
    action3_act_2_op19_out_valid_reg <= action3_act_2_op19_out_valid;
    action3_act_2_op19_out_0_reg <= action3_act_2_op19_out_0;
end 
// Node 'action3_act_2_op20' (extern) connections
assign action3_act_2_op20_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op20_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op20_in_0 = vectors_pipe_s0.user_metadata.metadata_tag_header;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op20_out_valid_reg <= '0;
    action3_act_2_op20_out_0_reg <= '0;
end else begin
    action3_act_2_op20_out_valid_reg <= action3_act_2_op20_out_valid;
    action3_act_2_op20_out_0_reg <= action3_act_2_op20_out_0;
end 
// Node 'action3_act_2_op21' (extern) connections
assign action3_act_2_op21_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op21_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op21_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_version;
assign action3_act_2_op21_in_1 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_len;
assign action3_act_2_op21_in_2 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_tos;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op21_out_valid_reg <= '0;
    action3_act_2_op21_out_0_reg <= '0;
end else begin
    action3_act_2_op21_out_valid_reg <= action3_act_2_op21_out_valid;
    action3_act_2_op21_out_0_reg <= action3_act_2_op21_out_0;
end 
// Node 'action3_act_2_op22' (extern) connections
assign action3_act_2_op22_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op22_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op22_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_length;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op22_out_valid_reg <= '0;
    action3_act_2_op22_out_0_reg <= '0;
end else begin
    action3_act_2_op22_out_valid_reg <= action3_act_2_op22_out_valid;
    action3_act_2_op22_out_0_reg <= action3_act_2_op22_out_0;
end 
// Node 'action3_act_2_op23' (extern) connections
assign action3_act_2_op23_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op23_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op23_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_id;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op23_out_valid_reg <= '0;
    action3_act_2_op23_out_0_reg <= '0;
end else begin
    action3_act_2_op23_out_valid_reg <= action3_act_2_op23_out_valid;
    action3_act_2_op23_out_0_reg <= action3_act_2_op23_out_0;
end 
// Node 'action3_act_2_op24' (extern) connections
assign action3_act_2_op24_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op24_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op24_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_flags;
assign action3_act_2_op24_in_1 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_offset;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op24_out_valid_reg <= '0;
    action3_act_2_op24_out_0_reg <= '0;
end else begin
    action3_act_2_op24_out_valid_reg <= action3_act_2_op24_out_valid;
    action3_act_2_op24_out_0_reg <= action3_act_2_op24_out_0;
end 
// Node 'action3_act_2_op25' (extern) connections
assign action3_act_2_op25_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op25_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op25_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_ttl;
assign action3_act_2_op25_in_1 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_protocol;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op25_out_valid_reg <= '0;
    action3_act_2_op25_out_0_reg <= '0;
end else begin
    action3_act_2_op25_out_valid_reg <= action3_act_2_op25_out_valid;
    action3_act_2_op25_out_0_reg <= action3_act_2_op25_out_0;
end 
// Node 'action3_act_2_op26' (extern) connections
assign action3_act_2_op26_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op26_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op26_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_chk;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op26_out_valid_reg <= '0;
    action3_act_2_op26_out_0_reg <= '0;
end else begin
    action3_act_2_op26_out_valid_reg <= action3_act_2_op26_out_valid;
    action3_act_2_op26_out_0_reg <= action3_act_2_op26_out_0;
end 
// Node 'action3_act_2_op27' (extern) connections
assign action3_act_2_op27_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op27_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op27_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_1;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op27_out_valid_reg <= '0;
    action3_act_2_op27_out_0_reg <= '0;
end else begin
    action3_act_2_op27_out_valid_reg <= action3_act_2_op27_out_valid;
    action3_act_2_op27_out_0_reg <= action3_act_2_op27_out_0;
end 
// Node 'action3_act_2_op28' (extern) connections
assign action3_act_2_op28_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op28_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op28_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_2;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op28_out_valid_reg <= '0;
    action3_act_2_op28_out_0_reg <= '0;
end else begin
    action3_act_2_op28_out_valid_reg <= action3_act_2_op28_out_valid;
    action3_act_2_op28_out_0_reg <= action3_act_2_op28_out_0;
end 
// Node 'action3_act_2_op29' (extern) connections
assign action3_act_2_op29_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op29_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op29_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_1;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op29_out_valid_reg <= '0;
    action3_act_2_op29_out_0_reg <= '0;
end else begin
    action3_act_2_op29_out_valid_reg <= action3_act_2_op29_out_valid;
    action3_act_2_op29_out_0_reg <= action3_act_2_op29_out_0;
end 
// Node 'action3_act_2_op30' (extern) connections
assign action3_act_2_op30_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op30_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op30_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_2;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op30_out_valid_reg <= '0;
    action3_act_2_op30_out_0_reg <= '0;
end else begin
    action3_act_2_op30_out_valid_reg <= action3_act_2_op30_out_valid;
    action3_act_2_op30_out_0_reg <= action3_act_2_op30_out_0;
end 
// Node 'action3_act_2_op32' (extern) connections
assign action3_act_2_op32_in_valid = vectors_pipe_s7.enable & ( (vectors_pipe_s7.stage_crossing_signals.table3_tbl_act_2_action0_en));
assign action3_act_2_op32_args = vectors_pipe_s7.stage_crossing_signals.table3_tbl_act_2_action0_args;
assign action3_act_2_op32_in_0 = vectors_pipe_s7.scalars.ipv4_checksum_0;
`CLOCKED_NORESET(aclk,aresetn)
begin
    action3_act_2_op32_out_valid_reg <= '0;
    action3_act_2_op32_out_0_reg <= '0;
end else begin
    action3_act_2_op32_out_valid_reg <= action3_act_2_op32_out_valid;
    action3_act_2_op32_out_0_reg <= action3_act_2_op32_out_0;
end 
// Node 'action3_act_2_op31' (extern) connections
assign action3_act_2_op31_in_valid = vectors_pipe_s0.enable & ( (table3_tbl_act_2_action0_en));
assign action3_act_2_op31_args = table3_tbl_act_2_action0_args;
assign action3_act_2_op31_in_0 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_0;
assign action3_act_2_op31_in_1 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_1;
assign action3_act_2_op31_in_2 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_2;
assign action3_act_2_op31_in_3 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_3;
assign action3_act_2_op31_in_4 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_4;
assign action3_act_2_op31_in_5 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_5;
assign action3_act_2_op31_in_6 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_6;
assign action3_act_2_op31_in_7 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_7;
assign action3_act_2_op31_in_8 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_8;
assign action3_act_2_op31_in_9 = vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_9;

// ///////////////////////////////////////////////////
// vector pipeline connections
// ///////////////////////////////////////////////////
// pipe in
assign vectors_pipe_s0.enable = vector_in_valid;
assign vectors_pipe_s0.user_metadata = user_metadata_in;
assign vectors_pipe_s0.standard_metadata = standard_metadata_in;
assign vectors_pipe_s0.hdr_info = hdr_info_vector_in;
assign vectors_pipe_s0.hdr_fields = hdr_fields_vector_in;
assign vectors_pipe_s0.action_en = '0;
assign vectors_pipe_s0.scalars = '0;
assign vectors_pipe_s0.stage_crossing_signals = '0;
assign vectors_pipe_s0.zero_latency_signals = '0;
// pipe shift
`CLOCKED_NORESET(aclk,aresetn)
begin // async reset
    vectors_pipe_reg_s0 <= '0;
    vectors_pipe_reg_s1 <= '0;
    vectors_pipe_reg_s2 <= '0;
    vectors_pipe_reg_s3 <= '0;
    vectors_pipe_reg_s4 <= '0;
    vectors_pipe_reg_s5 <= '0;
    vectors_pipe_reg_s6 <= '0;
    vectors_pipe_reg_s7 <= '0;
    vectors_pipe_reg_s8 <= '0;
end else begin
    vectors_pipe_reg_s0 <= vectors_pipe_s0;
    vectors_pipe_reg_s1 <= vectors_pipe_s1;
    vectors_pipe_reg_s2 <= vectors_pipe_s2;
    vectors_pipe_reg_s3 <= vectors_pipe_s3;
    vectors_pipe_reg_s4 <= vectors_pipe_s4;
    vectors_pipe_reg_s5 <= vectors_pipe_s5;
    vectors_pipe_reg_s6 <= vectors_pipe_s6;
    vectors_pipe_reg_s7 <= vectors_pipe_s7;
    vectors_pipe_reg_s8 <= vectors_pipe_s8;
`ifndef RESET_MACROS_ASIC_NOT_FPGA
    if (!aresetn) begin // sync reset
        vectors_pipe_reg_s0.enable <= '0;
        vectors_pipe_reg_s1.enable <= '0;
        vectors_pipe_reg_s2.enable <= '0;
        vectors_pipe_reg_s3.enable <= '0;
        vectors_pipe_reg_s4.enable <= '0;
        vectors_pipe_reg_s5.enable <= '0;
        vectors_pipe_reg_s6.enable <= '0;
        vectors_pipe_reg_s7.enable <= '0;
        vectors_pipe_reg_s8.enable <= '0;
    end
`endif
end
// Pipe Stage 1 connections
always_comb begin
    vectors_pipe_s1 <= vectors_pipe_reg_s0;
    case ({action2_act_1_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.outer_eth_isvalid <= vectors_pipe_reg_s0.hdr_info.outer_eth_isvalid;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_info.outer_eth_isvalid <= action2_act_1_op0_out_0_reg;
        end
    endcase
    case ({action1_act_0_op0_out_valid_reg, action0_act_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.vlan_isvalid <= vectors_pipe_reg_s0.hdr_info.vlan_isvalid;
        end
        2'b1: begin
            vectors_pipe_s1.hdr_info.vlan_isvalid <= action0_act_op0_out_0_reg;
        end
        2'b10, 2'b11: begin
            vectors_pipe_s1.hdr_info.vlan_isvalid <= action1_act_0_op0_out_0_reg;
        end
    endcase
    case ({action3_act_2_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.outer_ipv4_isvalid <= vectors_pipe_reg_s0.hdr_info.outer_ipv4_isvalid;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_info.outer_ipv4_isvalid <= action3_act_2_op0_out_0_reg;
        end
    endcase
    case ({action3_act_2_op15_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.esp_isvalid <= vectors_pipe_reg_s0.hdr_info.esp_isvalid;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_info.esp_isvalid <= action3_act_2_op15_out_0_reg;
        end
    endcase
    case ({action3_act_2_op17_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.ext_iv_isvalid <= vectors_pipe_reg_s0.hdr_info.ext_iv_isvalid;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_info.ext_iv_isvalid <= action3_act_2_op17_out_0_reg;
        end
    endcase
    case ({action3_act_2_op19_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_info.tag_isvalid <= vectors_pipe_reg_s0.hdr_info.tag_isvalid;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_info.tag_isvalid <= action3_act_2_op19_out_0_reg;
        end
    endcase
    case ({action3_act_2_op16_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.esp_esp_header <= vectors_pipe_reg_s0.hdr_fields.esp_esp_header;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.esp_esp_header <= action3_act_2_op16_out_0_reg;
        end
    endcase
    case ({action3_act_2_op18_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ext_iv_ext_iv <= vectors_pipe_reg_s0.hdr_fields.ext_iv_ext_iv;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ext_iv_ext_iv <= action3_act_2_op18_out_0_reg;
        end
    endcase
    case ({action3_act_2_op21_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_0 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_0;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_0 <= action3_act_2_op21_out_0_reg;
        end
    endcase
    case ({action3_act_2_op22_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_1 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_1;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_1 <= action3_act_2_op22_out_0_reg;
        end
    endcase
    case ({action3_act_2_op23_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_2 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_2;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_2 <= action3_act_2_op23_out_0_reg;
        end
    endcase
    case ({action3_act_2_op24_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_3 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_3;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_3 <= action3_act_2_op24_out_0_reg;
        end
    endcase
    case ({action3_act_2_op25_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_4 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_4;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_4 <= action3_act_2_op25_out_0_reg;
        end
    endcase
    case ({action3_act_2_op26_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_5 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_5;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_5 <= action3_act_2_op26_out_0_reg;
        end
    endcase
    case ({action3_act_2_op27_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_6 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_6;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_6 <= action3_act_2_op27_out_0_reg;
        end
    endcase
    case ({action3_act_2_op28_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_7 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_7;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_7 <= action3_act_2_op28_out_0_reg;
        end
    endcase
    case ({action3_act_2_op29_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_8 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_8;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_8 <= action3_act_2_op29_out_0_reg;
        end
    endcase
    case ({action3_act_2_op30_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_9 <= vectors_pipe_reg_s0.hdr_fields.ipv4_header_0_header_9;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.ipv4_header_0_header_9 <= action3_act_2_op30_out_0_reg;
        end
    endcase
    case ({action2_act_1_op1_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_eth_mac_header <= vectors_pipe_reg_s0.hdr_fields.outer_eth_mac_header;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_eth_mac_header <= action2_act_1_op1_out_0_reg;
        end
    endcase
    case ({action3_act_2_op13_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_dst_1 <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_dst_1;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_dst_1 <= action3_act_2_op13_out_0_reg;
        end
    endcase
    case ({action3_act_2_op14_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_dst_2 <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_dst_2;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_dst_2 <= action3_act_2_op14_out_0_reg;
        end
    endcase
    case ({action3_act_2_op6_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_flags <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_flags;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_flags <= action3_act_2_op6_out_0_reg;
        end
    endcase
    case ({action3_act_2_op10_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_hdr_chk <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_hdr_chk;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_hdr_chk <= action3_act_2_op10_out_0_reg;
        end
    endcase
    case ({action3_act_2_op2_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_hdr_len <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_hdr_len;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_hdr_len <= action3_act_2_op2_out_0_reg;
        end
    endcase
    case ({action3_act_2_op5_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_id <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_id;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_id <= action3_act_2_op5_out_0_reg;
        end
    endcase
    case ({action3_act_2_op4_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_length <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_length;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_length <= action3_act_2_op4_out_0_reg;
        end
    endcase
    case ({action3_act_2_op7_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_offset <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_offset;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_offset <= action3_act_2_op7_out_0_reg;
        end
    endcase
    case ({action3_act_2_op9_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_protocol <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_protocol;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_protocol <= action3_act_2_op9_out_0_reg;
        end
    endcase
    case ({action3_act_2_op11_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_src_1 <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_src_1;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_src_1 <= action3_act_2_op11_out_0_reg;
        end
    endcase
    case ({action3_act_2_op12_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_src_2 <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_src_2;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_src_2 <= action3_act_2_op12_out_0_reg;
        end
    endcase
    case ({action3_act_2_op3_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_tos <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_tos;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_tos <= action3_act_2_op3_out_0_reg;
        end
    endcase
    case ({action3_act_2_op8_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_ttl <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_ttl;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_ttl <= action3_act_2_op8_out_0_reg;
        end
    endcase
    case ({action3_act_2_op1_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_version <= vectors_pipe_reg_s0.hdr_fields.outer_ipv4_version;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.outer_ipv4_version <= action3_act_2_op1_out_0_reg;
        end
    endcase
    case ({action3_act_2_op20_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.tag_tag <= vectors_pipe_reg_s0.hdr_fields.tag_tag;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.tag_tag <= action3_act_2_op20_out_0_reg;
        end
    endcase
    case ({action0_act_op1_out_valid_reg})
        default: begin
            vectors_pipe_s1.hdr_fields.vlan_vlan_header <= vectors_pipe_reg_s0.hdr_fields.vlan_vlan_header;
        end
        1'b1: begin
            vectors_pipe_s1.hdr_fields.vlan_vlan_header <= action0_act_op1_out_0_reg;
        end
    endcase
    case ({action3_act_2_op1_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_version <= vectors_pipe_s0.hdr_fields.outer_ipv4_version;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_version <= action3_act_2_op1_out_0;
        end
    endcase
    case ({action3_act_2_op2_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_len <= vectors_pipe_s0.hdr_fields.outer_ipv4_hdr_len;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_len <= action3_act_2_op2_out_0;
        end
    endcase
    case ({action3_act_2_op3_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_tos <= vectors_pipe_s0.hdr_fields.outer_ipv4_tos;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_tos <= action3_act_2_op3_out_0;
        end
    endcase
    case ({action3_act_2_op4_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_length <= vectors_pipe_s0.hdr_fields.outer_ipv4_length;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_length <= action3_act_2_op4_out_0;
        end
    endcase
    case ({action3_act_2_op5_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_id <= vectors_pipe_s0.hdr_fields.outer_ipv4_id;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_id <= action3_act_2_op5_out_0;
        end
    endcase
    case ({action3_act_2_op6_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_flags <= vectors_pipe_s0.hdr_fields.outer_ipv4_flags;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_flags <= action3_act_2_op6_out_0;
        end
    endcase
    case ({action3_act_2_op7_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_offset <= vectors_pipe_s0.hdr_fields.outer_ipv4_offset;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_offset <= action3_act_2_op7_out_0;
        end
    endcase
    case ({action3_act_2_op8_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_ttl <= vectors_pipe_s0.hdr_fields.outer_ipv4_ttl;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_ttl <= action3_act_2_op8_out_0;
        end
    endcase
    case ({action3_act_2_op9_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_protocol <= vectors_pipe_s0.hdr_fields.outer_ipv4_protocol;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_protocol <= action3_act_2_op9_out_0;
        end
    endcase
    case ({action3_act_2_op10_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_chk <= vectors_pipe_s0.hdr_fields.outer_ipv4_hdr_chk;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_hdr_chk <= action3_act_2_op10_out_0;
        end
    endcase
    case ({action3_act_2_op11_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_1 <= vectors_pipe_s0.hdr_fields.outer_ipv4_src_1;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_1 <= action3_act_2_op11_out_0;
        end
    endcase
    case ({action3_act_2_op12_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_2 <= vectors_pipe_s0.hdr_fields.outer_ipv4_src_2;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_src_2 <= action3_act_2_op12_out_0;
        end
    endcase
    case ({action3_act_2_op13_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_1 <= vectors_pipe_s0.hdr_fields.outer_ipv4_dst_1;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_1 <= action3_act_2_op13_out_0;
        end
    endcase
    case ({action3_act_2_op14_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_2 <= vectors_pipe_s0.hdr_fields.outer_ipv4_dst_2;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_outer_ipv4_dst_2 <= action3_act_2_op14_out_0;
        end
    endcase
    case ({action3_act_2_op21_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_0 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_0;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_0 <= action3_act_2_op21_out_0;
        end
    endcase
    case ({action3_act_2_op22_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_1 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_1;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_1 <= action3_act_2_op22_out_0;
        end
    endcase
    case ({action3_act_2_op23_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_2 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_2;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_2 <= action3_act_2_op23_out_0;
        end
    endcase
    case ({action3_act_2_op24_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_3 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_3;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_3 <= action3_act_2_op24_out_0;
        end
    endcase
    case ({action3_act_2_op25_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_4 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_4;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_4 <= action3_act_2_op25_out_0;
        end
    endcase
    case ({action3_act_2_op26_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_5 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_5;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_5 <= action3_act_2_op26_out_0;
        end
    endcase
    case ({action3_act_2_op27_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_6 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_6;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_6 <= action3_act_2_op27_out_0;
        end
    endcase
    case ({action3_act_2_op28_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_7 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_7;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_7 <= action3_act_2_op28_out_0;
        end
    endcase
    case ({action3_act_2_op29_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_8 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_8;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_8 <= action3_act_2_op29_out_0;
        end
    endcase
    case ({action3_act_2_op30_out_valid})
        default: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_9 <= vectors_pipe_s0.hdr_fields.ipv4_header_0_header_9;
        end
        1'b1: begin
            vectors_pipe_s1.zero_latency_signals.hdr_fields_ipv4_header_0_header_9 <= action3_act_2_op30_out_0;
        end
    endcase
    case ({table3_tbl_act_2_out_valid_reg})
        default: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_action0_args <= vectors_pipe_reg_s0.stage_crossing_signals.table3_tbl_act_2_action0_args;
        end
        1'b1: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_action0_args <= table3_tbl_act_2_action0_args_reg;
        end
    endcase
    case ({table3_tbl_act_2_out_valid_reg})
        default: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_action0_en <= vectors_pipe_reg_s0.stage_crossing_signals.table3_tbl_act_2_action0_en;
        end
        1'b1: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_action0_en <= table3_tbl_act_2_action0_en_reg;
        end
    endcase
    case ({table3_tbl_act_2_out_valid_reg})
        default: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_out_valid <= vectors_pipe_reg_s0.stage_crossing_signals.table3_tbl_act_2_out_valid;
        end
        1'b1: begin
            vectors_pipe_s1.stage_crossing_signals.table3_tbl_act_2_out_valid <= table3_tbl_act_2_out_valid_reg;
        end
    endcase
    case ({action0_act_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.action_en.act <= vectors_pipe_reg_s0.action_en.act;
        end
        1'b1: begin
            vectors_pipe_s1.action_en.act <= action0_act_op0_out_valid_reg;
        end
    endcase
    case ({action1_act_0_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.action_en.act_0 <= vectors_pipe_reg_s0.action_en.act_0;
        end
        1'b1: begin
            vectors_pipe_s1.action_en.act_0 <= action1_act_0_op0_out_valid_reg;
        end
    endcase
    case ({action2_act_1_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.action_en.act_1 <= vectors_pipe_reg_s0.action_en.act_1;
        end
        1'b1: begin
            vectors_pipe_s1.action_en.act_1 <= action2_act_1_op0_out_valid_reg;
        end
    endcase
    case ({action3_act_2_op0_out_valid_reg})
        default: begin
            vectors_pipe_s1.action_en.act_2 <= vectors_pipe_reg_s0.action_en.act_2;
        end
        1'b1: begin
            vectors_pipe_s1.action_en.act_2 <= action3_act_2_op0_out_valid_reg;
        end
    endcase
end
// Pipe Stage 2 connections
always_comb begin
    vectors_pipe_s2 <= vectors_pipe_reg_s1;
end
// Pipe Stage 3 connections
always_comb begin
    vectors_pipe_s3 <= vectors_pipe_reg_s2;
end
// Pipe Stage 4 connections
always_comb begin
    vectors_pipe_s4 <= vectors_pipe_reg_s3;
end
// Pipe Stage 5 connections
always_comb begin
    vectors_pipe_s5 <= vectors_pipe_reg_s4;
end
// Pipe Stage 6 connections
always_comb begin
    vectors_pipe_s6 <= vectors_pipe_reg_s5;
end
// Pipe Stage 7 connections
always_comb begin
    vectors_pipe_s7 <= vectors_pipe_reg_s6;
    case ({action3_act_2_op31_out_valid})
        default: begin
            vectors_pipe_s7.scalars.ipv4_checksum_0 <= vectors_pipe_reg_s6.scalars.ipv4_checksum_0;
        end
        1'b1: begin
            vectors_pipe_s7.scalars.ipv4_checksum_0 <= action3_act_2_op31_out_0;
        end
    endcase
end
// Pipe Stage 8 connections
always_comb begin
    vectors_pipe_s8 <= vectors_pipe_reg_s7;
    case ({action3_act_2_op32_out_valid_reg})
        default: begin
            vectors_pipe_s8.hdr_fields.outer_ipv4_hdr_chk <= vectors_pipe_reg_s7.hdr_fields.outer_ipv4_hdr_chk;
        end
        1'b1: begin
            vectors_pipe_s8.hdr_fields.outer_ipv4_hdr_chk <= action3_act_2_op32_out_0_reg;
        end
    endcase
end
// pipe out
assign vector_out_valid = vectors_pipe_s8.enable;
assign user_metadata_out = vectors_pipe_s8.user_metadata;
assign standard_metadata_out = vectors_pipe_s8.standard_metadata;
assign hdr_info_vector_out = vectors_pipe_s8.hdr_info;
assign hdr_fields_vector_out = vectors_pipe_s8.hdr_fields;
assign action_en_vector_out = vectors_pipe_s8.action_en;

// Interrupt request port connection
`CLOCKED(aclk,aresetn)
begin
    irq <= '0;
end else begin
    irq <= sync_fifos_sbiterr[0] |
           sync_fifos_sbiterr[0] |
           sync_fifos_sbiterr[1] |
           sync_fifos_sbiterr[1];
end


endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
