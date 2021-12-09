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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/lookup/ttcl/lookup_engine.ttcl#44 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table0_tbl_act START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_table0_tbl_act 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // clocks & resets
    input  logic        resetn,
    input  logic        core_clk,
    // input key
    input  logic        key_clk,
    input  logic        key_valid,
    // output response
    output logic        out_valid,
    output T_TABLE0_RESP0 action0_args,
    output logic        action0_en,
    output logic        hit_miss
);

// dummy table
assign out_valid  = key_valid;
assign hit_miss   = key_valid;
assign action0_args = 0;
assign action0_en   = key_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table0_tbl_act END
//------------------------------------------------------------------------------

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table1_tbl_act_0 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_table1_tbl_act_0 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // clocks & resets
    input  logic        resetn,
    input  logic        core_clk,
    // input key
    input  logic        key_clk,
    input  logic        key_valid,
    // output response
    output logic        out_valid,
    output T_TABLE1_RESP0 action0_args,
    output logic        action0_en,
    output logic        hit_miss
);

// dummy table
assign out_valid  = key_valid;
assign hit_miss   = key_valid;
assign action0_args = 0;
assign action0_en   = key_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table1_tbl_act_0 END
//------------------------------------------------------------------------------

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table2_tbl_act_1 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_table2_tbl_act_1 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // clocks & resets
    input  logic        resetn,
    input  logic        core_clk,
    // input key
    input  logic        key_clk,
    input  logic        key_valid,
    // output response
    output logic        out_valid,
    output T_TABLE2_RESP0 action0_args,
    output logic        action0_en,
    output logic        hit_miss
);

// dummy table
assign out_valid  = key_valid;
assign hit_miss   = key_valid;
assign action0_args = 0;
assign action0_en   = key_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table2_tbl_act_1 END
//------------------------------------------------------------------------------

`include "reset_macros.sv"

//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table3_tbl_act_2 START
//------------------------------------------------------------------------------
module ipsec_bd_sdnet_0_3_table3_tbl_act_2 
import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
(
    // clocks & resets
    input  logic        resetn,
    input  logic        core_clk,
    // input key
    input  logic        key_clk,
    input  logic        key_valid,
    // output response
    output logic        out_valid,
    output T_TABLE3_RESP0 action0_args,
    output logic        action0_en,
    output logic        hit_miss
);

// dummy table
assign out_valid  = key_valid;
assign hit_miss   = key_valid;
assign action0_args = 0;
assign action0_en   = key_valid;

endmodule
//------------------------------------------------------------------------------
// MODULE ipsec_bd_sdnet_0_3_table3_tbl_act_2 END
//------------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
