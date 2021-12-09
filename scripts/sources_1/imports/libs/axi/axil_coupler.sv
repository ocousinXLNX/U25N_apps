// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

`include "axil_interface.svh"

module axil_coupler (
    axil_interface.slave axil_master,
    axil_interface.master axil_slave
);

// -----------------------------------------------------------------------------
// Definitions
// -----------------------------------------------------------------------------

logic axil_clk = 1'b0;
logic axil_rstn = 1'b1;
axil_interface axil(axil_clk, axil_rstn);

// -----------------------------------------------------------------------------
// Master Port Assignments
// -----------------------------------------------------------------------------

assign axil.awvalid = axil_master.awvalid;
assign axil_master.awready = axil.awready;
assign axil.awaddr = axil_master.awaddr;
assign axil.wvalid = axil_master.wvalid;
assign axil_master.wready = axil.wready;
assign axil.wdata = axil_master.wdata;
assign axil.wstrb = axil_master.wstrb;
assign axil_master.bvalid = axil.bvalid;
assign axil.bready = axil_master.bready;
assign axil_master.bresp = axil.bresp;
assign axil.arvalid = axil_master.arvalid;
assign axil_master.arready = axil.arready;
assign axil.araddr = axil_master.araddr;
assign axil_master.rvalid = axil.rvalid;
assign axil.rready = axil_master.rready;
assign axil_master.rdata = axil.rdata;
assign axil_master.rresp = axil.rresp;

// -----------------------------------------------------------------------------
// Slave Port Assignments
// -----------------------------------------------------------------------------

assign axil_slave.awvalid = axil.awvalid;
assign axil.awready = axil_slave.awready;
assign axil_slave.awaddr = axil.awaddr;
assign axil_slave.wvalid = axil.wvalid;
assign axil.wready = axil_slave.wready;
assign axil_slave.wdata = axil.wdata;
assign axil_slave.wstrb = axil.wstrb;
assign axil.bvalid = axil_slave.bvalid;
assign axil_slave.bready = axil.bready;
assign axil.bresp = axil_slave.bresp;
assign axil_slave.arvalid = axil.arvalid;
assign axil.arready = axil_slave.arready;
assign axil_slave.araddr = axil.araddr;
assign axil.rvalid = axil_slave.rvalid;
assign axil_slave.rready = axil.rready;
assign axil.rdata = axil_slave.rdata;
assign axil.rresp = axil_slave.rresp;

endmodule
