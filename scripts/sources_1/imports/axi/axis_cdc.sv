// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

`include "axis_interface.svh"

module axis_cdc #(
    parameter DATA_WIDTH = 512,
    parameter USER_WIDTH = 1
) (
    input logic axis_load_clk,
    input logic axis_load_rstn,
    axis_interface.slave axis_load,
    input logic axis_unload_clk,
    input logic axis_unload_rstn,
    axis_interface.master axis_unload
);

// -----------------------------------------------------------------------------
// Definitions
// -----------------------------------------------------------------------------

localparam DATA_COUNT = DATA_WIDTH/8;
localparam FIFO_DEPTH = 16;
localparam FIFO_WIDTH = 1+1+USER_WIDTH+DATA_COUNT+DATA_WIDTH;
logic                   fifo_load_strobe;
logic                   fifo_load_full;
logic [FIFO_WIDTH-1:0]  fifo_load_data;
logic                   fifo_unload_strobe;
logic                   fifo_unload_empty;
logic [FIFO_WIDTH-1:0]  fifo_unload_data;

// -----------------------------------------------------------------------------
// fifo_load_logic
// -----------------------------------------------------------------------------

assign fifo_load_strobe = axis_load.tvalid & ~fifo_load_full;
assign axis_load.tready = ~fifo_load_full;
assign fifo_load_data = {axis_load.tlast, axis_load.tuser, axis_load.tkeep, axis_load.tdata};

// -----------------------------------------------------------------------------
// xpm_fifo_sync
// -----------------------------------------------------------------------------

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE ("distributed"),
    .FIFO_WRITE_DEPTH (FIFO_DEPTH),
    .WRITE_DATA_WIDTH (FIFO_WIDTH),
    .READ_MODE        ("FWFT")
) fifo (
    .sleep         (1'b0),
    .rst           (~axis_load_rstn),
    .wr_clk        (axis_load_clk),
    .wr_en         (fifo_load_strobe),
    .din           (fifo_load_data),
    .full          (fifo_load_full),
    .prog_full     (),
    .wr_data_count (),
    .overflow      (),
    .wr_rst_busy   (),
    .almost_full   (),
    .wr_ack        (),
    .rd_clk        (axis_unload_clk),
    .rd_en         (fifo_unload_strobe),
    .dout          (fifo_unload_data),
    .empty         (fifo_unload_empty),
    .prog_empty    (),
    .rd_data_count (),
    .underflow     (),
    .rd_rst_busy   (),
    .almost_empty  (),
    .data_valid    (),
    .injectsbiterr (1'b0),
    .injectdbiterr (1'b0),
    .sbiterr       (),
    .dbiterr       ()
);

// -----------------------------------------------------------------------------
// fifo_unload_logic
// -----------------------------------------------------------------------------

assign fifo_unload_strobe = ~fifo_unload_empty & axis_unload.tready;
assign axis_unload.tvalid = ~fifo_unload_empty;
assign {axis_unload.tlast, axis_unload.tuser, axis_unload.tkeep, axis_unload.tdata} =
    (fifo_unload_empty == 1'b0)? fifo_unload_data : {FIFO_WIDTH{1'b0}};

endmodule
