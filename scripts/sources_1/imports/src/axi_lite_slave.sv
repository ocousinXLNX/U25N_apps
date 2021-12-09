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
//       Revision:       $Id: //IP5/projects/xilinx-2000/smartNIC-3110/HEAD/proj/myhdl/cam_cs_v1_0/proj/hw/src/axi_lite_slave.sv#5 $
//                       $Author: mcrowley $
//                       $DateTime: 2020/12/07 06:25:03 $
//                       $Change: 3076144 $
//       Description:
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"
module axi_lite_slave
#(
   parameter int G_ADDR_W           = 10,             // AXI-Lite Read/Write Address width
   parameter int G_DATA_W           = 32,             // AXI-Lite Read/Write Data width
   parameter int G_STRB_W           = G_DATA_W/8,     // AXI-Lite Write Strobe width
   parameter int G_RESP_W           = 2,              // AXI-Lite Read/Write Response width
   parameter int G_PROT_W           = 3,              // AXI-Lite Read/Write Protect width
   parameter bit G_CDC_EN           = 1,              // Clock domain crossing enable - 1 to enable, 0 to disable
   parameter int G_NUM_OT           = 32,             // Number of outstanding transactions supported (Min = 32)
   parameter bit G_WR_STRB_EN       = 0,              // Write strobe support enable  - 1 to enable, 0 to disable
   parameter bit G_WR_PROT_EN       = 0,              // Write protect support enable - 1 to enable, 0 to disable
   parameter bit G_RD_PROT_EN       = 0,              // Read protect support enable  - 1 to enable, 0 to disable
   parameter bit G_REG_SYS_OUTPUTS  = 1,              // Register system output for timing, can result in AXI request throttling - 1 to enable, 0 to disable
   parameter bit G_WR_RD_ORDER_EN   = 1,              // Maintain Read/Write access order - 1 to enable, 0 to disable
   parameter bit G_SYS_BUSY_EN      = 0               // Support ability to force deassert of AXI Ready signals if system not ready - 1 to enable, 0 to disable

) (
   // AXI-Lite Interface Signals
   input  logic                        aclk,
   input  logic                        aresetn,
   // Write Address Channel
   input  logic                        awvalid,
   output logic                        awready,
   input  logic [G_ADDR_W-1:0]         awaddr,
   input  logic [G_PROT_W-1:0]         awprot,
   // Write Data Channel
   input  logic                        wvalid,
   output logic                        wready,
   input  logic [G_DATA_W-1:0]         wdata,
   input  logic [G_STRB_W-1:0]         wstrb,
   // Write Response Channel
   output logic                        bvalid,
   input  logic                        bready,
   output logic [G_RESP_W-1:0]         bresp,
   // Read Address Channel
   input  logic                        arvalid,
   output logic                        arready,
   input  logic [G_ADDR_W-1:0]         araddr,
   input  logic [G_PROT_W-1:0]         arprot,
   // Read Data Channel
   output logic                        rvalid,
   input  logic                        rready,
   output logic [G_DATA_W-1:0]         rdata,
   output logic [G_RESP_W-1:0]         rresp,

   // System signals
   input  logic                        sys_clk,
   input  logic                        sys_areset,
   input  logic                        sys_busy,

   // Write access signals
   output logic [G_ADDR_W-1:0]         wr_addr,          // Write address
   output logic [G_DATA_W-1:0]         wr_data,          // Write data
   output logic                        wr_valid,         // Write valid
   output logic [G_STRB_W-1:0]         wr_strb,          // Write strobe
   output logic [G_PROT_W-1:0]         wr_prot,          // Write protection
   input  logic                        wr_ack,           // Write acknowledge
   input  logic                        wr_resp_valid,    // Write response valid
   input  logic                        wr_err,           // Write error

   // Read accesss signals
   output logic [G_ADDR_W-1:0]         rd_addr,          // Read address
   output logic                        rd_valid,         // Read valid
   output logic [G_PROT_W-1:0]         rd_prot,          // Read protection
   input  logic                        rd_ack,           // Read acknowledge
   input  logic [G_DATA_W-1:0]         rd_data,          // Read data
   input  logic                        rd_resp_valid,    // Read response valid
   input  logic                        rd_err            // Read error

);

// Set input buffer to shallest depth supported by XPM
localparam int INPUT_BUFFER_FIFO_DEPTH = 16;
// Size depth of WR/RD order FIFO such that both Write/Read input buffers can go completely full
// Require *4 insead of *2 due to FWFT storing depth + 1 entries
localparam int WR_RD_ORDER_FIFO_DEPTH  = INPUT_BUFFER_FIFO_DEPTH * 4;
localparam int OT_FIFO_DEPTH           = 1 << $clog2(G_NUM_OT - INPUT_BUFFER_FIFO_DEPTH);

logic axi_aclk;
logic sys_aclk;
logic axi_arst;
logic sys_arst;
logic axi_busy;
logic sys_busy_cdc;
// Assign clocks
if (G_CDC_EN) begin
   assign axi_aclk = aclk;
   assign sys_aclk = sys_clk;
   assign axi_arst = !aresetn;
   assign sys_arst = sys_areset;
   if (G_SYS_BUSY_EN)
      assign axi_busy = sys_busy_cdc;
   else
      assign axi_busy = 1'b0;
end
else begin
   assign axi_aclk = aclk;
   assign sys_aclk = aclk;
   assign axi_arst = !aresetn;
   assign sys_arst = !aresetn;
   if (G_SYS_BUSY_EN)
      assign axi_busy = sys_busy;
   else
      assign axi_busy = 1'b0;
end

logic axi_arstn;
assign axi_arstn = !axi_arst;
logic sys_arstn;
assign sys_arstn = !sys_arst;

generate
   if (G_CDC_EN && G_SYS_BUSY_EN) begin : BUSY_CDC_ENABLED
      `ifdef RESET_MACROS_ASIC_NOT_FPGA
         xpm_cdc_single_keystone #(
      `else
         xpm_cdc_single #(
      `endif
            .DEST_SYNC_FF(4),
            .INIT_SYNC_FF(0),
            .SIM_ASSERT_CHK(0),
            .SRC_INPUT_REG(1)
         )
         xpm_cdc_single_inst (
            .dest_out(sys_busy_cdc),
            .dest_clk(aclk),
      `ifdef RESET_MACROS_ASIC_NOT_FPGA
            .dest_rstn (axi_arstn),
            .src_rstn  (sys_arstn),
      `endif
            .src_clk(sys_clk),
            .src_in(sys_busy)
         );
   end : BUSY_CDC_ENABLED
endgenerate

////////////////////////////////
// AXI-Lite write address logic
////////////////////////////////

localparam int WR_ADDR_FIFO_W = G_ADDR_W + ((G_WR_PROT_EN) ? G_PROT_W : 0);

logic [WR_ADDR_FIFO_W-1:0] wr_addr_din, wr_addr_dout, wr_addr_reg;
logic wr_addr_almost_full;
logic wr_addr_rst_busy;
logic wr_addr_wr_en;
logic wr_addr_valid;
logic wr_addr_data_rd_en;

if (G_WR_PROT_EN) begin
   assign wr_addr_din   = {awprot, awaddr};
   assign wr_addr       = wr_addr_reg[G_ADDR_W-1:0];
   assign wr_prot       = wr_addr_reg[G_ADDR_W+G_PROT_W-1:G_ADDR_W];
end
else begin
   assign wr_addr_din   = awaddr;
   assign wr_addr       = wr_addr_reg[G_ADDR_W-1:0];
   assign wr_prot       = {G_PROT_W{1'b0}};
end

// Generate write address ready signal
`CLOCKED_NORESET(axi_aclk, axi_arstn)
   awready <= 1'b0;
else
   awready <= !wr_addr_rst_busy && !wr_addr_almost_full && !axi_busy;

assign wr_addr_wr_en = awvalid && awready;

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (WR_ADDR_FIFO_W),
   .G_DEPTH    (INPUT_BUFFER_FIFO_DEPTH)
) wr_addr_fifo (
   .wr_clk        (axi_aclk),
   .rst           (axi_arst),
   .rstn          (axi_arstn),
   .wr_en         (wr_addr_wr_en),
   .din           (wr_addr_din),
   .almost_full   (wr_addr_almost_full),
   .full          (),
   .rst_busy      (wr_addr_rst_busy),
   .rd_clk        (sys_aclk),
   .rst_rd        (sys_arst),
   .rstn_rd       (sys_arstn),
   .rd_en         (wr_addr_data_rd_en),
   .dout          (wr_addr_dout),
   .data_valid    (wr_addr_valid)
);

////////////////////////////////
// AXI-Lite write data logic
////////////////////////////////

localparam int WR_DATA_FIFO_W = G_DATA_W + ((G_WR_STRB_EN) ? G_STRB_W : 0);

logic [WR_DATA_FIFO_W-1:0] wr_data_din, wr_data_dout, wr_data_reg;
logic wr_data_almost_full;
logic wr_data_rst_busy;
logic wr_data_wr_en;
logic wr_data_valid;

if (G_WR_STRB_EN) begin
   assign wr_data_din   = {wstrb, wdata};
   assign wr_data       = wr_data_reg[G_DATA_W-1:0];
   assign wr_strb       = wr_data_reg[G_DATA_W+G_STRB_W-1:G_DATA_W];
end
else begin
   assign wr_data_din   = wdata;
   assign wr_data       = wr_data_reg[G_DATA_W-1:0];
   assign wr_strb       = {G_STRB_W{1'b1}};
end

// Generate write data ready signal
`CLOCKED_NORESET(axi_aclk, axi_arstn)
   wready <= 1'b0;
else
   wready <= !wr_data_rst_busy && !wr_data_almost_full && !axi_busy;

assign wr_data_wr_en = wvalid && wready;

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (WR_DATA_FIFO_W),
   .G_DEPTH    (INPUT_BUFFER_FIFO_DEPTH)
) wr_data_fifo (
   .wr_clk        (axi_aclk),
   .rst           (axi_arst),
   .rstn          (axi_arstn),
   .wr_en         (wr_data_wr_en),
   .din           (wr_data_din),
   .almost_full   (wr_data_almost_full),
   .full          (),
   .rst_busy      (wr_data_rst_busy),
   .rd_clk        (sys_aclk),
   .rst_rd        (sys_arst),
   .rstn_rd       (sys_arstn),
   .rd_en         (wr_addr_data_rd_en),
   .dout          (wr_data_dout),
   .data_valid    (wr_data_valid)
);

////////////////////////////////
// AXI-Lite write response logic
////////////////////////////////

logic wr_resp_dout;
logic wr_resp_data_valid;
logic wr_resp_rd_en;
assign bresp  = {wr_resp_dout, 1'b0};
assign bvalid = wr_resp_data_valid;
assign wr_resp_rd_en = wr_resp_data_valid && bready;

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (1),
   .G_DEPTH    (OT_FIFO_DEPTH)
) wr_resp_fifo (
   .wr_clk        (sys_aclk),
   .rst           (sys_arst),
   .rstn          (sys_arstn),
   .wr_en         (wr_resp_valid),
   .din           (wr_err),
   .almost_full   (),
   .full          (),
   .rst_busy      (),
   .rd_clk        (axi_aclk),
   .rst_rd        (axi_arst),
   .rstn_rd       (axi_arstn),
   .rd_en         (wr_resp_rd_en),
   .dout          (wr_resp_dout),
   .data_valid    (wr_resp_data_valid)
);


////////////////////////////////////////////////
// AXI-Lite write outstanding transaction logic
////////////////////////////////////////////////

logic wr_valid_i;
logic wr_ack_i;
logic new_wr;
logic wr_ot_full;
if (G_REG_SYS_OUTPUTS) begin
   always_ff @(posedge sys_aclk, negedge sys_arstn) begin
      if (!sys_arstn) begin
         wr_valid_i  <= 1'b0;
         new_wr      <= 1'b1;
         wr_addr_data_rd_en <= 1'b0;
         wr_data_reg <= 'h0;
         wr_addr_reg <= 'h0;
      end else begin
         wr_addr_data_rd_en <= 1'b0;
         if (wr_valid_i && wr_ack_i) begin
            wr_valid_i  <= 1'b0;
            new_wr      <= 1'b1;
         end else begin
            // Only send a valid write if OT FIFO is not full
            if (new_wr && wr_addr_valid && wr_data_valid && !wr_ot_full) begin
               wr_valid_i  <= 1'b1;
               wr_data_reg <= wr_data_dout;
               wr_addr_reg <= wr_addr_dout;
               new_wr  <= 1'b0;
               wr_addr_data_rd_en <= 1'b1;
            end
         end
      end
   end
end else begin
   // Generate write data ready signal
   always_ff @(posedge sys_aclk, negedge sys_arstn) begin
      if (!sys_arstn) begin
         wr_valid_i  <= 1'b0;
         wr_data_reg <= 'h0;
         wr_addr_reg <= 'h0;
      end else begin
         if (!wr_valid_i || wr_ack_i) begin
            // Only send a valid write if OT FIFO is not full
            wr_valid_i  <= wr_addr_valid && wr_data_valid && !wr_ot_full;
            wr_data_reg <= wr_data_dout;
            wr_addr_reg <= wr_addr_dout;
         end
      end
   end
   // Common write channel read enable
   assign wr_addr_data_rd_en = wr_addr_valid && wr_data_valid && !wr_ot_full && (!wr_valid_i || wr_ack_i);
end

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (1),
   .G_DEPTH    (OT_FIFO_DEPTH)
) wr_ot_fifo (
   .wr_clk        (sys_aclk),
   .rst           (sys_arst),
   .rstn          (sys_arstn),
   .wr_en         (wr_addr_data_rd_en),
   .din           (1'b0),
   .almost_full   (),
   .full          (wr_ot_full),
   .rst_busy      (),
   .rd_clk        (axi_aclk),
   .rst_rd        (axi_arst),
   .rstn_rd       (axi_arstn),
   .rd_en         (wr_resp_rd_en),
   .dout          (),
   .data_valid    ()
);


////////////////////////////////
// AXI-Lite read address logic
////////////////////////////////

localparam int RD_ADDR_FIFO_W = G_ADDR_W + ((G_RD_PROT_EN) ? G_PROT_W : 0);

logic [RD_ADDR_FIFO_W-1:0] rd_addr_din, rd_addr_dout, rd_addr_reg;
logic rd_addr_almost_full;
logic rd_addr_rst_busy;
logic rd_addr_wr_en;
logic rd_addr_valid;
logic rd_addr_rd_en;

if (G_RD_PROT_EN) begin
   assign rd_addr_din   = {arprot, araddr};
   assign rd_addr       = rd_addr_reg[G_ADDR_W-1:0];
   assign rd_prot       = rd_addr_reg[G_ADDR_W+G_PROT_W-1:G_ADDR_W];
end
else begin
   assign rd_addr_din   = araddr;
   assign rd_addr       = rd_addr_reg[G_ADDR_W-1:0];
   assign rd_prot       = {G_PROT_W{1'b0}};
end

// Generate write address ready signal
`CLOCKED_NORESET(axi_aclk, axi_arstn)
   arready <= 1'b0;
else
   arready <= !rd_addr_rst_busy && !rd_addr_almost_full && !axi_busy;

assign rd_addr_wr_en = arvalid && arready;

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (RD_ADDR_FIFO_W),
   .G_DEPTH    (INPUT_BUFFER_FIFO_DEPTH)
) rd_addr_fifo (
   .wr_clk        (axi_aclk),
   .rst           (axi_arst),
   .rstn          (axi_arstn),
   .wr_en         (rd_addr_wr_en),
   .din           (rd_addr_din),
   .almost_full   (rd_addr_almost_full),
   .full          (),
   .rst_busy      (rd_addr_rst_busy),
   .rd_clk        (sys_aclk),
   .rst_rd        (sys_arst),
   .rstn_rd       (sys_arstn),
   .rd_en         (rd_addr_rd_en),
   .dout          (rd_addr_dout),
   .data_valid    (rd_addr_valid)
);


////////////////////////////////
// AXI-Lite read response logic
////////////////////////////////

localparam int RD_RESP_FIFO_W = G_DATA_W + 1;

logic [RD_RESP_FIFO_W-1:0] rd_resp_din, rd_resp_dout;
logic rd_resp_data_valid;
logic rd_resp_rd_en;

assign rd_resp_din = {rd_err, rd_data};
assign rdata = rd_resp_dout[G_DATA_W-1:0];
assign rresp = {rd_resp_dout[G_DATA_W], 1'b0};
assign rvalid = rd_resp_data_valid;
assign rd_resp_rd_en = rd_resp_data_valid && rready;

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (RD_RESP_FIFO_W),
   .G_DEPTH    (OT_FIFO_DEPTH)
) rd_resp_fifo (
   .wr_clk        (sys_aclk),
   .rst           (sys_arst),
   .rstn          (sys_arstn),
   .wr_en         (rd_resp_valid),
   .din           (rd_resp_din),
   .almost_full   (),
   .full          (),
   .rst_busy      (),
   .rd_clk        (axi_aclk),
   .rst_rd        (axi_arst),
   .rstn_rd       (axi_arstn),
   .rd_en         (rd_resp_rd_en),
   .dout          (rd_resp_dout),
   .data_valid    (rd_resp_data_valid)
);


////////////////////////////////////////////////
// AXI-Lite read outstanding transaction logic
////////////////////////////////////////////////

logic rd_valid_i;
logic rd_ack_i;
logic new_rd;
logic rd_ot_full;
if (G_REG_SYS_OUTPUTS) begin
   always_ff @(posedge sys_aclk, negedge sys_arstn) begin
      if (!sys_arstn) begin
         rd_valid_i     <= 1'b0;
         new_rd         <= 1'b1;
         rd_addr_rd_en  <= 1'b0;
         rd_addr_reg <= 'h0;
      end else begin
         rd_addr_rd_en  <= 1'b0;
         if (rd_valid_i && rd_ack_i) begin
            rd_valid_i  <= 1'b0;
            new_rd      <= 1'b1;
         end else begin
            // Only send a valid read if OT FIFO is not full
            if (new_rd && rd_addr_valid && !rd_ot_full) begin
               rd_valid_i     <= 1'b1;
               rd_addr_reg <= rd_addr_dout;
               new_rd  <= 1'b0;
               rd_addr_rd_en <= 1'b1;
            end
         end
      end
   end
end else begin
   // Generate read data ready signal
   always_ff @(posedge sys_aclk, negedge sys_arstn) begin
      if (!sys_arstn) begin
         rd_valid_i  <= 1'b0;
         rd_addr_reg <= 'h0;
      end else begin
         if (!rd_valid_i || rd_ack_i) begin
            // Only send a valid read if OT FIFO is not full
            rd_valid_i     <= rd_addr_valid && !rd_ot_full;
            rd_addr_reg <= rd_addr_dout;
         end
      end
   end
   // Read channel read enable
   assign rd_addr_rd_en = rd_addr_valid && !rd_ot_full && (!rd_valid_i || rd_ack_i);
end

axi_lite_slave_fifo_wrapper #(
   .G_CDC_EN   (G_CDC_EN),
   .G_DATA_W   (1),
   .G_DEPTH    (OT_FIFO_DEPTH)
) rd_ot_fifo (
   .wr_clk        (sys_aclk),
   .rst           (sys_arst),
   .rstn          (sys_arstn),
   .wr_en         (rd_addr_rd_en),
   .din           (1'b0),
   .almost_full   (),
   .full          (rd_ot_full),
   .rst_busy      (),
   .rd_clk        (axi_aclk),
   .rst_rd        (axi_arst),
   .rstn_rd       (axi_arstn),
   .rd_en         (rd_resp_rd_en),
   .dout          (),
   .data_valid    ()
);

////////////////////////////////
// Write/Read order logic
////////////////////////////////

logic wr_rd_order_wr_en;
logic wr_rd_order_rd_en;
logic wr_rd_order_rd_en_reg;
logic sel_valid;
logic wr_rd_order_data_valid;
logic wr_done;
logic [1:0] wr_rd_order_din, wr_rd_order_dout;
assign wr_rd_order_wr_en = (awvalid && awready) || (arvalid && arready);
assign wr_rd_order_din   = {(awvalid && awready), (arvalid && arready)};

generate
if (G_WR_RD_ORDER_EN) begin : WRITE_READ_ORDER_ENABLED
   axi_lite_slave_fifo_wrapper #(
      .G_CDC_EN   (G_CDC_EN),
      .G_DATA_W   (2),
      .G_DEPTH    (WR_RD_ORDER_FIFO_DEPTH)
   ) wr_rd_order_fifo (
      .wr_clk        (axi_aclk),
      .rst           (axi_arst),
      .rstn          (axi_arstn),
      .wr_en         (wr_rd_order_wr_en),
      .din           (wr_rd_order_din),
      .almost_full   (),
      .full          (),
      .rst_busy      (),
      .rd_clk        (sys_aclk),
      .rst_rd        (sys_arst),
      .rstn_rd       (sys_arstn),
      .rd_en         (wr_rd_order_rd_en_reg),
      .dout          (wr_rd_order_dout),
      .data_valid    (wr_rd_order_data_valid)
   );

always_ff @(posedge sys_aclk, negedge sys_arstn) begin
   if (!sys_arstn) begin
      wr_rd_order_rd_en_reg <= 1'b0;
      sel_valid <= 1'b0;
   end else begin
      if (wr_rd_order_rd_en) begin
         wr_rd_order_rd_en_reg <= 1'b1;
         sel_valid <= 1'b0;
      end else begin
         wr_rd_order_rd_en_reg <= 1'b0;
         sel_valid <= 1'b1;
      end
   end
end

always_ff @(posedge sys_aclk, negedge sys_arstn) begin
   if (!sys_arstn) begin
      wr_done <= 1'b0;
   end else begin
      if (wr_rd_order_dout == 2'b11 && wr_valid_i && sel_valid && wr_ack_i)
         wr_done <= 1'b1;
      else if (rd_valid && rd_ack_i)
         wr_done <= 1'b0;
   end
end

assign wr_valid = wr_rd_order_dout[1] && wr_valid_i && sel_valid && (~wr_done || ~wr_rd_order_dout[0]);
assign wr_ack_i = wr_rd_order_dout[1] && wr_ack && sel_valid && (~wr_done || ~wr_rd_order_dout[0]);

assign rd_valid = wr_rd_order_dout[0] && rd_valid_i && sel_valid && (wr_done || ~wr_rd_order_dout[1]);
assign rd_ack_i = wr_rd_order_dout[0] && rd_ack && sel_valid && (wr_done || ~wr_rd_order_dout[1]);

assign wr_rd_order_rd_en = ((wr_rd_order_dout == 2'b10 && wr_valid_i && wr_ack) ||
                            (wr_rd_order_dout == 2'b01 && rd_valid_i && rd_ack) ||
                            (wr_rd_order_dout == 2'b11 && rd_valid_i && rd_ack && wr_done));

end : WRITE_READ_ORDER_ENABLED
else begin : WRITE_READ_ORDER_DISABLED
   assign wr_valid = wr_valid_i;
   assign rd_valid = rd_valid_i;
   assign wr_ack_i = wr_ack;
   assign rd_ack_i = rd_ack;
end : WRITE_READ_ORDER_DISABLED

endgenerate
endmodule
