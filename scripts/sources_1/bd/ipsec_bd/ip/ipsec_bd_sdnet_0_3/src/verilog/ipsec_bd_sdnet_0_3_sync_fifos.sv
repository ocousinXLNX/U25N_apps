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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/top/ttcl/sync_fifos.ttcl#34 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//                       Synchronization FIFOs for alignment of the following categories of data:
//                         - packet data
//                         - "header data" (header fields, header info, action enables, standard metadata)
//                         - user metadata
//                       This module re-aligns all this data before the Deparser Engine.
//                       It will also play a part in back-pressure support, so that the back-pressure signals can
//                       bypass the Parser and Match-Action Engines for reduced risk and improved timing.
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

module ipsec_bd_sdnet_0_3_sync_fifos (
   // clocks & resets
   input  logic                                                s_axis_aclk,
   input  logic                                                s_axis_aresetn,   
   // ECC signals
   input  logic [1:0]                                          injectsbiterr,
   input  logic [1:0]                                          injectdbiterr,
   output logic [1:0]                                          sbiterr,
   output logic [1:0]                                          dbiterr,
   // Input vectors                                            
   input  logic                                                vector_in_valid,
   input ipsec_bd_sdnet_0_3_sdnet_pkg::T_USER_METADATA      user_metadata_in,
   input ipsec_bd_sdnet_0_3_sdnet_pkg::T_STANDARD_METADATA  standard_metadata_in,
   input ipsec_bd_sdnet_0_3_sdnet_pkg::T_HDR_INFO           hdr_info_vector_in,
   input ipsec_bd_sdnet_0_3_sdnet_pkg::T_HDR_FIELDS         hdr_fields_vector_in,
   input ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION_EN          action_en_vector_in,   
   // Output vectors                                     
   output  logic                                               vector_out_valid,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_USER_METADATA     user_metadata_out,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_STANDARD_METADATA standard_metadata_out,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_HDR_INFO          hdr_info_vector_out,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_HDR_FIELDS        hdr_fields_vector_out,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_ACTION_EN         action_en_vector_out,   
   // AXI Slave port
   input  ipsec_bd_sdnet_0_3_sdnet_pkg::T_AXIS_DATA         s_axis_tdata,
   input  ipsec_bd_sdnet_0_3_sdnet_pkg::T_AXIS_COUNT        s_axis_tcount,
   input  logic                                                s_axis_tvalid,
   input  logic                                                s_axis_tlast,
   output logic                                                s_axis_tready,
   // AXI Master port
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_AXIS_DATA         m_axis_tdata,
   output ipsec_bd_sdnet_0_3_sdnet_pkg::T_AXIS_COUNT        m_axis_tcount,
   output logic                                                m_axis_tvalid,
   input  logic                                                m_axis_tready,
   output logic                                                m_axis_tlast
);
    
   import ipsec_bd_sdnet_0_3_sdnet_pkg::*;

   localparam C_SYNC_FIFOS_PKT_WIDTH        = 134;
   localparam C_SYNC_FIFOS_VECTOR_WIDTH     = 1679;

`ifdef RESET_MACROS_ASIC_NOT_FPGA
   localparam C_SYNC_FIFOS_PKT_MEM_WIDTH    = C_SYNC_FIFOS_PKT_WIDTH;
   localparam C_SYNC_FIFOS_VECTOR_MEM_WIDTH = C_SYNC_FIFOS_VECTOR_WIDTH;
`else
   // The memory read/write width will be rounded up to the nearest 64-bit multiple when ECC is enabled (in FPGA-mode)
   localparam C_SYNC_FIFOS_PKT_MEM_WIDTH    = C_SYNC_FIFOS_PKT_WIDTH;
   localparam C_SYNC_FIFOS_VECTOR_MEM_WIDTH = C_SYNC_FIFOS_VECTOR_WIDTH;
`endif

   logic [C_SYNC_FIFOS_PKT_MEM_WIDTH-1:0] pkt_fifo_din;
   logic [C_SYNC_FIFOS_PKT_MEM_WIDTH-1:0] pkt_fifo_dout;
   
   logic pkt_fifo_prog_full;
   logic pkt_fifo_rd_en;
   logic pkt_fifo_empty;
   `INIT(logic pkt_fifo_tfirst, 1'b1)
   logic pkt_fifo_tlast;
   logic pkt_fifo_data_valid;
   
   logic [C_SYNC_FIFOS_VECTOR_MEM_WIDTH-1:0] vector_fifo_din;
   logic [C_SYNC_FIFOS_VECTOR_MEM_WIDTH-1:0] vector_fifo_dout;
   
   logic vector_fifo_prog_full;
   logic vector_fifo_rd_en;
   logic vector_fifo_wr_en;
   logic vector_fifo_empty;
   logic vector_fifo_data_valid;
   
   logic packet_sync_fifo_sbiterr;
   logic packet_sync_fifo_dbiterr;
   logic vector_sync_fifo_sbiterr;
   logic vector_sync_fifo_dbiterr;

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // FIFO READ LOGIC
   /////////////////////////////////////////////////////////////////////////////////////////////////

   // Create a TFIRST signal to be the first valid word following a TLAST
   `CLOCKED(s_axis_aclk,s_axis_aresetn)
      begin
         pkt_fifo_tfirst <= 1'b1;
      end else if (pkt_fifo_rd_en) begin
         pkt_fifo_tfirst <= pkt_fifo_tlast;
      end

   // Always read from the VECTOR FIFO at the end of the packet, so the metadata does not change during the packet
   assign vector_fifo_rd_en = ~vector_fifo_empty && pkt_fifo_tlast && m_axis_tready;

   // Always read from the PKT FIFO when there is header data available or 
   // it is not the first word of a packet and the packet FIFO is not empty
   assign pkt_fifo_rd_en = (~vector_fifo_empty || ~pkt_fifo_tfirst) && ~pkt_fifo_empty && m_axis_tready;
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // PACKET FIFO
   /////////////////////////////////////////////////////////////////////////////////////////////////

   assign pkt_fifo_din = {{C_SYNC_FIFOS_PKT_MEM_WIDTH-C_SYNC_FIFOS_PKT_WIDTH{1'b0}}, s_axis_tlast, s_axis_tcount, s_axis_tdata};   
   assign {m_axis_tlast, m_axis_tcount, m_axis_tdata} = pkt_fifo_dout[C_SYNC_FIFOS_PKT_WIDTH-1:0];

   assign pkt_fifo_tlast = m_axis_tlast;      
   assign s_axis_tready  = ~pkt_fifo_prog_full && ~vector_fifo_prog_full;
   assign m_axis_tvalid  = (~vector_fifo_empty || ~pkt_fifo_tfirst) && ~pkt_fifo_empty;
   
   localparam PKT_MEMORY_PRIMITIVE = "DRAM";
     
   xpm_fifo_sync # (
      // Common module parameters
      .FIFO_MEMORY_TYPE    (PKT_MEMORY_PRIMITIVE == "DRAM"  ? "distributed" :
                            PKT_MEMORY_PRIMITIVE == "LUT"   ? "distributed" :
                            PKT_MEMORY_PRIMITIVE == "BRAM"  ? "block"       :
                            PKT_MEMORY_PRIMITIVE == "BLOCK" ? "block"       :
                            PKT_MEMORY_PRIMITIVE == "URAM"  ? "ultra"       :
                            PKT_MEMORY_PRIMITIVE == "ULTRA" ? "ultra"       :
                            "auto"),
      .ECC_MODE            ("no_ecc"),
      .PROG_FULL_THRESH    (123),
      .FIFO_WRITE_DEPTH    (128),
      .USE_ADV_FEATURES    ("0707"),
      .WRITE_DATA_WIDTH    (C_SYNC_FIFOS_PKT_MEM_WIDTH),
      .READ_DATA_WIDTH     (C_SYNC_FIFOS_PKT_MEM_WIDTH),
      .READ_MODE           ("fwft"),
      .WR_DATA_COUNT_WIDTH (8),
      .RD_DATA_COUNT_WIDTH (8)
   )
   xpm_fifo_sync_pkt (
      // Common module ports
      .sleep         (1'd0),
      .rst           (~s_axis_aresetn),   
      // Write Domain ports
      .wr_clk        (s_axis_aclk),
      .wr_en         (s_axis_tvalid),
      .din           (pkt_fifo_din),
      .full          (),
      .prog_full     (pkt_fifo_prog_full),
      .wr_data_count (),
      .overflow      (),
      .wr_rst_busy   (),
      .almost_full   (),
      .wr_ack        (),   
      // Read Domain ports
      .rd_en         (pkt_fifo_rd_en),
      .dout          (pkt_fifo_dout),
      .empty         (pkt_fifo_empty),
      .prog_empty    (),
      .rd_data_count (),
      .underflow     (),
      .rd_rst_busy   (),
      .almost_empty  (),
      .data_valid    (pkt_fifo_data_valid),   
      // ECC Related ports
      .injectsbiterr (injectsbiterr[0]),
      .injectdbiterr (injectdbiterr[0]),
      .sbiterr       (packet_sync_fifo_sbiterr),
      .dbiterr       (packet_sync_fifo_dbiterr)
   );
   
   `CLOCKED(s_axis_aclk,s_axis_aresetn)
      begin
         sbiterr[0] <= 1'b0;
         dbiterr[0] <= 1'b0;
      end else begin
         sbiterr[0] <= packet_sync_fifo_sbiterr & pkt_fifo_rd_en;
         dbiterr[0] <= packet_sync_fifo_dbiterr & pkt_fifo_rd_en;
      end

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // VECTOR FIFO
   /////////////////////////////////////////////////////////////////////////////////////////////////

   assign vector_fifo_din = {{C_SYNC_FIFOS_VECTOR_MEM_WIDTH-C_SYNC_FIFOS_VECTOR_WIDTH{1'b0}}, user_metadata_in, standard_metadata_in, hdr_fields_vector_in, hdr_info_vector_in, action_en_vector_in};
   assign {user_metadata_out, standard_metadata_out, hdr_fields_vector_out, hdr_info_vector_out, action_en_vector_out} = vector_fifo_dout[C_SYNC_FIFOS_VECTOR_WIDTH-1:0];
   
   assign vector_fifo_wr_en = vector_in_valid;
   assign vector_out_valid  = ~vector_fifo_empty && pkt_fifo_tfirst;
   
   localparam VEC_MEMORY_PRIMITIVE = "DRAM";

   xpm_fifo_sync # (
      // Common module parameters
      .FIFO_MEMORY_TYPE    (VEC_MEMORY_PRIMITIVE == "DRAM"  ? "distributed" :
                            VEC_MEMORY_PRIMITIVE == "LUT"   ? "distributed" :
                            VEC_MEMORY_PRIMITIVE == "BRAM"  ? "block"       :
                            VEC_MEMORY_PRIMITIVE == "BLOCK" ? "block"       :
                            VEC_MEMORY_PRIMITIVE == "URAM"  ? "ultra"       :
                            VEC_MEMORY_PRIMITIVE == "ULTRA" ? "ultra"       :
                            "auto"), 
      .ECC_MODE            ("no_ecc"),
      .PROG_FULL_THRESH    (16),
      .FIFO_WRITE_DEPTH    (32),
      .USE_ADV_FEATURES    ("0707"),
      .WRITE_DATA_WIDTH    (C_SYNC_FIFOS_VECTOR_MEM_WIDTH),
      .READ_DATA_WIDTH     (C_SYNC_FIFOS_VECTOR_MEM_WIDTH),
      .READ_MODE           ("fwft"),
      .WR_DATA_COUNT_WIDTH (6),
      .RD_DATA_COUNT_WIDTH (6)
   ) 
   xpm_fifo_sync_vector (
      // Common module ports
      .sleep         (1'd0),
      .rst           (~s_axis_aresetn),   
      // Write Domain ports
      .wr_clk        (s_axis_aclk),
      .wr_en         (vector_fifo_wr_en),
      .din           (vector_fifo_din),
      .full          (),
      .prog_full     (vector_fifo_prog_full),
      .wr_data_count (),
      .overflow      (),
      .wr_rst_busy   (),
      .almost_full   (),
      .wr_ack        (),   
      // Read Domain ports
      .rd_en         (vector_fifo_rd_en),
      .dout          (vector_fifo_dout),
      .empty         (vector_fifo_empty),
      .prog_empty    (),
      .rd_data_count (),
      .underflow     (),
      .rd_rst_busy   (),
      .almost_empty  (),
      .data_valid    (vector_fifo_data_valid),   
      // ECC Related ports
      .injectsbiterr (injectsbiterr[1]),
      .injectdbiterr (injectdbiterr[1]),
      .sbiterr       (vector_sync_fifo_sbiterr),
      .dbiterr       (vector_sync_fifo_dbiterr)
   );
   
   `CLOCKED(s_axis_aclk,s_axis_aresetn)
      begin
         sbiterr[1] <= 1'b0;
         dbiterr[1] <= 1'b0;
      end else begin
         sbiterr[1] <= vector_sync_fifo_sbiterr & vector_fifo_rd_en;
         dbiterr[1] <= vector_sync_fifo_dbiterr & vector_fifo_rd_en;
      end

endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
