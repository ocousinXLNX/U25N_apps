/////////////////////////////////////////////////////////////////////////////
//
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2018 Xilinx, Inc. All rights reserved.
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
`include "reset_macros.sv"

interface axi_lite_if import axil_slave_pkg::*;
#(
   parameter int G_ADD_WD = 32,
   parameter int G_DATA_WD = 32,
   parameter int G_STRB_WD = 4
) (
   input logic aclk,
   input logic aresetn
);

   // Write Address Channel
   logic                         awvalid;
   logic                         awready;
   logic [(G_ADD_WD - 1) : 0]    awaddr;
   logic [2 : 0]                 awprot;
   // Write Data Channel
   logic                         wvalid;
   logic                         wready;
   logic [(G_DATA_WD - 1) : 0]   wdata;
   logic [(G_STRB_WD - 1) : 0]   wstrb;
   // Write Response Channel
   logic                         bvalid;
   logic                         bready;
   axil_resp_t                   bresp;
   // Read Address Channel
   logic                         arvalid;
   logic                         arready;
   logic [(G_ADD_WD - 1) : 0]    araddr;
   logic [2 : 0]                 arprot;
   // Read Data Channel
   logic                         rvalid;
   logic                         rready;
   logic [(G_DATA_WD - 1) : 0]   rdata;
   axil_resp_t                   rresp;

   modport slave (
      // Write Address Channel
      input    awvalid,
      input    awaddr,
      input    awprot,
      output   awready,
      // Write Data Channel
      input    wvalid,
      input    wdata,
      input    wstrb,
      output   wready,
      // Write Response Channel
      output   bvalid,
      input    bready,
      output   bresp,
      // Read Address Channel
      input    arvalid,
      input    araddr,
      input    arprot,
      output   arready,
      // Read Data Channel
      output   rvalid,
      input    rready,
      output   rdata,
      output   rresp
   );

   modport master (
      // Write Address Channel
      output   awvalid,
      output   awaddr,
      output   awprot,
      input    awready,
      // Write Data Channel
      output   wvalid,
      output   wdata,
      output   wstrb,
      input    wready,
      // Write Response Channel
      input    bvalid,
      output   bready,
      input    bresp,
      // Read Address Channel
      output   arvalid,
      output   araddr,
      output   arprot,
      input    arready,
      // Read Data Channel
      input    rvalid,
      output   rready,
      input    rdata,
      input    rresp
   );

endinterface : axi_lite_if
