//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2017 Xilinx, Inc. All rights reserved.
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
//       Owner:          
//       Revision:       $Id: //IP5/projects/xilinx-2000/smartNIC-3110/HEAD/proj/myhdl/cam_cs_v1_0/proj/hw/src/cas_event_cnt.sv#12 $
//                       $Author: mcrowley $
//                       $DateTime: 2020/12/07 06:25:03 $
//                       $Change: 3076144 $
//       Description:
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"
module cas_event_cnt #(
   parameter int G_CNT_WD = 24
) (
   input logic clk,
   input logic rst_n,
   input logic clr_event_cnt,//Added according to IPDS-4267
   input logic event_in,
   output logic [(G_CNT_WD - 1) : 0] event_cnt_r
);

// Counter increments whenever event_in is asserted
//always_ff @(posedge clk) begin : cnt_proc
//   if(!rst_n) begin
  `CLOCKED(clk,rst_n) begin
      event_cnt_r <= {$bits(event_cnt_r){1'b0}};
   end else
      if (clr_event_cnt) begin
        event_cnt_r <= {$bits(event_cnt_r){1'b0}};
      end else begin
      if(event_in)
         event_cnt_r <= event_cnt_r + 1'b1;
   end
//end : cnt_proc

endmodule
