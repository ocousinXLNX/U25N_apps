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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/match_action/ttcl/statistics_registers.ttcl#23 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

module ipsec_bd_sdnet_0_3_statistics_registers #(
   // AXI interface parameters
    parameter integer                        C_S_AXI_DATA_WIDTH = 32,
    parameter integer                        C_S_AXI_ADDR_WIDTH = 9
) (
    // clocks & resets
    input  logic                             aclk,
    input  logic                             aresetn,
    input  logic                             s_axi_aclk, 
    input  logic                             s_axi_aresetn,
    // interrupt register group ports
    input  logic                             packet_sync_fifo_sbiterr,
    input  logic                             packet_sync_fifo_dbiterr,
    input  logic                             vector_sync_fifo_sbiterr,
    input  logic                             vector_sync_fifo_dbiterr,
    // TODO: Frame register group ports
    // TODO: Traffic register group ports
    // TODO: Error register group ports
    // TODO: Debug register group ports
    output logic                             packet_sync_fifo_injectsbiterr,
    output logic                             packet_sync_fifo_injectdbiterr,
    output logic                             vector_sync_fifo_injectsbiterr,
    output logic                             vector_sync_fifo_injectdbiterr,
    output logic [15:0]                      max_sof_per_intvl,
    output logic                             sync_reset_parser,
    output logic                             sync_reset_match_action,
    output logic                             sync_reset_sync_fifos,
    output logic                             sync_reset_deparser,
    output logic                             sync_reset_all,
    // AXI4-LITE interface
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]    s_axi_awaddr,  
    input  logic                             s_axi_awvalid, 
    output logic                             s_axi_awready, 
    input  logic [C_S_AXI_DATA_WIDTH-1:0]    s_axi_wdata,   
    input  logic [C_S_AXI_DATA_WIDTH/8-1:0]  s_axi_wstrb,   
    input  logic                             s_axi_wvalid,  
    output logic                             s_axi_wready,  
    output logic [1:0]                       s_axi_bresp,   
    output logic                             s_axi_bvalid,  
    input  logic                             s_axi_bready,  
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]    s_axi_araddr,  
    input  logic                             s_axi_arvalid, 
    output logic                             s_axi_arready, 
    output logic [C_S_AXI_DATA_WIDTH-1:0]    s_axi_rdata,   
    output logic                             s_axi_rvalid,  
    input  logic                             s_axi_rready,  
    output logic [1:0]                       s_axi_rresp
);
    
    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //
    // Signals and Parameters declaration
    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //

    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB          = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 6;
    
    // CDC sync signals
    logic [C_S_AXI_ADDR_WIDTH-1 : 0]  sync_axi_araddr;
    logic [C_S_AXI_ADDR_WIDTH-1 : 0]  sync_axi_awaddr;
    logic [C_S_AXI_DATA_WIDTH-1 : 0]  sync_axi_wdata;   
    logic [C_S_AXI_DATA_WIDTH/8-1:0]  sync_axi_wstrb;
    logic [C_S_AXI_DATA_WIDTH-1 : 0]  sync_reg_data;
    logic                             sync_reg_data_valid;
    logic                             sync_reg_rden;           
    logic                             sync_reg_wren; 
    
    // Signals for memory mapped registers
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_SDNV, 'h00000000) // SDNet version
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_SDNC, 'h00000000) // SDNet instance configuration
    `INIT(logic [9*C_S_AXI_DATA_WIDTH-1:0] reg_ISR, 'h000000000000000000000000000000000000000000000000000000000000000000000000) // Interrupt status register
    `INIT(logic [9*C_S_AXI_DATA_WIDTH-1:0] reg_IER, 'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) // Interrupt enable register
    `INIT(logic [9*C_S_AXI_DATA_WIDTH-1:0] reg_ICR, 'h000000000000000000000000000000000000000000000000000000000000000000000000) // Interrupt clear register
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_GFC, 'h00000000) // Good frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_BFC, 'h00000000) // Bad frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_PTSC, 'h00000000) // Packet-Too-Short bad frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_NMC, 'h00000000) // No-Match bad frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_OOBC, 'h00000000) // Stack-Out-of-Bounds bad frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_UDC, 'h00000000) // Verify bad frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_DFC, 'h00000000) // Dropped frame count
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_TFC, 'h0000000000000000) // Total frame count
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_FCR, 'h88888888) // Frame count control register
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MIFD, 'h00000000) // Minimum frame time delta
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MAFD, 'h00000000) // Maximum frame time delta
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_ACFD, 'h0000000000000000) // Accumulative frame time delta
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MIL, 'h00000000) // Minimum first-in first-out latency
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MAL, 'h00000000) // Maximum first-in first-out latency
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_ACL, 'h0000000000000000) // Accumulative first-in first-out latency
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MIFL, 'h00000000) // Minimum frame length
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_MAFL, 'h00000000) // Maximum frame length
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_ACFL, 'h0000000000000000) // Accumulative frame length
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_TCR, 'h00000888) // Traffic control register
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_FEFT, 'h0000000000000000) // First bad frame timestamp
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_FEFI, 'h00000000) // First bad frame index
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_FEFH, 'h0000000000000000) // Fist bad frame valid headers
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_ECR, 'h00000004) // Error control register
    `INIT(logic [9*C_S_AXI_DATA_WIDTH-1:0] reg_IEBE, 'h000000000000000000000000000000000000000000000000000000000000000000000000) // Inject single/double bit ECC error
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_PRLM, 'h0000FFFF) // Packet rate limit margin
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_SRE, 'h00000000) // Soft reset engine
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_LFVH, 'h0000000000000000) // Last frame parser’s valid headers
    `INIT(logic [8*C_S_AXI_DATA_WIDTH-1:0] reg_LFST, 'h0000000000000000000000000000000000000000000000000000000000000000) // Last frame M/A’s searched tables
    `INIT(logic [8*C_S_AXI_DATA_WIDTH-1:0] reg_LFEE, 'h0000000000000000000000000000000000000000000000000000000000000000) // Last frame M/A’s enabled externs
    `INIT(logic [8*C_S_AXI_DATA_WIDTH-1:0] reg_LFTA, 'h0000000000000000000000000000000000000000000000000000000000000000) // Last frame M/A’s triggered actions
    `INIT(logic [2*C_S_AXI_DATA_WIDTH-1:0] reg_LFDO, 'h0000000000000000) // Last frame deparser’s operations
    `INIT(logic [1*C_S_AXI_DATA_WIDTH-1:0] reg_DCR, 'h00000008) // Debug control register
   
    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //
    // AXI Register Map Interface
    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //
    
    // Indirect addressing for direct tables.
    // This requires a Register Interface and clock crossing block
    // To facilitate the use of URAMs it is necessary to transfer the AXI register interface
    // outputs to the system clock domain.
    // Register map is generated using the create AXI4 Peripheral tool in Vivado.
    // Clock crossing module used the XPM CDC module.
    
    // AXI4Lite register Interface
    axilite_slave_ipif # (
       .C_S_AXI_DATA_WIDTH  (C_S_AXI_DATA_WIDTH),
       .C_S_AXI_ADDR_WIDTH  (C_S_AXI_ADDR_WIDTH)
    ) axilite_slave_ipif_inst (
       .reg_clk             (aclk),
       .reg_resetn          (aresetn),
       .reg_rdata           (sync_reg_data),
       .reg_rdata_valid     (sync_reg_data_valid),
       .reg_wren            (sync_reg_wren),
       .reg_rden            (sync_reg_rden),
       .reg_awaddr          (sync_axi_awaddr),
       .reg_araddr          (sync_axi_araddr),
       .reg_wdata           (sync_axi_wdata),
       .reg_wstrb           (sync_axi_wstrb),      
       .s_axi_aclk          (s_axi_aclk),
       .s_axi_aresetn       (s_axi_aresetn),
       .s_axi_awaddr        (s_axi_awaddr),
       .s_axi_awvalid       (s_axi_awvalid),
       .s_axi_awready       (s_axi_awready),
       .s_axi_wdata         (s_axi_wdata),
       .s_axi_wstrb         (s_axi_wstrb),
       .s_axi_wvalid        (s_axi_wvalid),
       .s_axi_wready        (s_axi_wready),
       .s_axi_bresp         (s_axi_bresp),
       .s_axi_bvalid        (s_axi_bvalid),
       .s_axi_bready        (s_axi_bready),
       .s_axi_araddr        (s_axi_araddr),
       .s_axi_arvalid       (s_axi_arvalid),
       .s_axi_arready       (s_axi_arready),
       .s_axi_rdata         (s_axi_rdata),
       .s_axi_rresp         (s_axi_rresp),
       .s_axi_rvalid        (s_axi_rvalid),
       .s_axi_rready        (s_axi_rready)
    );

    // Implement memory mapped register select and write logic generation
    `CLOCKED(aclk,aresetn)    
    begin
        reg_IER <= 'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        reg_ICR <= 'h000000000000000000000000000000000000000000000000000000000000000000000000;
        reg_FCR <= 'h88888888;
        reg_TCR <= 'h00000888;
        reg_ECR <= 'h00000004;
        reg_IEBE <= 'h000000000000000000000000000000000000000000000000000000000000000000000000;
        reg_PRLM <= 'h0000FFFF;
        reg_SRE <= 'h00000000;
        reg_DCR <= 'h00000008;
    end else begin
        // clear on write registers
        reg_ICR <= 'h000000000000000000000000000000000000000000000000000000000000000000000000;
        reg_FCR <= 'h88888888;
        reg_TCR <= 'h00000888;
        reg_SRE <= 'h00000000;
        reg_DCR <= 'h00000008;
        if (sync_reg_wren) begin
            case ( sync_axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
           // 'd0 : slv_reg_SDNV is a read-only register
           // 'd1 : slv_reg_SDNC is a read-only register
           // 'd2 : slv_reg_ISR is a read-only register
              'd11 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd12 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+4)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd13 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+8)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd14 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+12)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd15 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+16)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd16 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+20)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd17 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+24)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd18 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+28)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd19 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IER[((byte_index+32)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd20 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd21 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+4)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd22 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+8)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd23 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+12)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd24 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+16)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd25 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+20)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd26 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+24)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd27 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+28)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd28 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ICR[((byte_index+32)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
           // 'd29 : slv_reg_GFC is a read-only register
           // 'd30 : slv_reg_BFC is a read-only register
           // 'd31 : slv_reg_PTSC is a read-only register
           // 'd32 : slv_reg_NMC is a read-only register
           // 'd33 : slv_reg_OOBC is a read-only register
           // 'd34 : slv_reg_UDC is a read-only register
           // 'd35 : slv_reg_DFC is a read-only register
           // 'd36 : slv_reg_TFC is a read-only register
              'd38 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_FCR[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
           // 'd39 : slv_reg_MIFD is a read-only register
           // 'd40 : slv_reg_MAFD is a read-only register
           // 'd41 : slv_reg_ACFD is a read-only register
           // 'd43 : slv_reg_MIL is a read-only register
           // 'd44 : slv_reg_MAL is a read-only register
           // 'd45 : slv_reg_ACL is a read-only register
           // 'd47 : slv_reg_MIFL is a read-only register
           // 'd48 : slv_reg_MAFL is a read-only register
           // 'd49 : slv_reg_ACFL is a read-only register
              'd51 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_TCR[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
           // 'd52 : slv_reg_FEFT is a read-only register
           // 'd54 : slv_reg_FEFI is a read-only register
           // 'd55 : slv_reg_FEFH is a read-only register
              'd57 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_ECR[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd58 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd59 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+4)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd60 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+8)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd61 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+12)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd62 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+16)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd63 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+20)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd64 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+24)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd65 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+28)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd66 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_IEBE[((byte_index+32)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd67 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_PRLM[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              'd68 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_SRE[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
           // 'd69 : slv_reg_LFVH is a read-only register
           // 'd71 : slv_reg_LFST is a read-only register
           // 'd79 : slv_reg_LFEE is a read-only register
           // 'd87 : slv_reg_LFTA is a read-only register
           // 'd95 : slv_reg_LFDO is a read-only register
              'd97 : begin
                for ( int byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( sync_axi_wstrb[byte_index] == 1 ) begin
                     reg_DCR[((byte_index+0)*8) +: 8] <= sync_axi_wdata[(byte_index*8) +: 8];
                  end  
                end
              end
              default : begin
                // do nothing
              end
            endcase
        end
    end

    // Implement memory mapped register select and read logic generation
    `CLOCKED_NORESET(aclk,aresetn)    
    begin
      sync_reg_data_valid <= '0;
      sync_reg_data       <= '0;
    end else begin
      sync_reg_data_valid <= sync_reg_rden;
      if (sync_reg_rden) begin
        case ( sync_axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
          'd0 : sync_reg_data <= reg_SDNV[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd1 : sync_reg_data <= reg_SDNC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd2 : sync_reg_data <= reg_ISR[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd3 : sync_reg_data <= reg_ISR[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd4 : sync_reg_data <= reg_ISR[(3*C_S_AXI_DATA_WIDTH)-1:2*C_S_AXI_DATA_WIDTH];
          'd5 : sync_reg_data <= reg_ISR[(4*C_S_AXI_DATA_WIDTH)-1:3*C_S_AXI_DATA_WIDTH];
          'd6 : sync_reg_data <= reg_ISR[(5*C_S_AXI_DATA_WIDTH)-1:4*C_S_AXI_DATA_WIDTH];
          'd7 : sync_reg_data <= reg_ISR[(6*C_S_AXI_DATA_WIDTH)-1:5*C_S_AXI_DATA_WIDTH];
          'd8 : sync_reg_data <= reg_ISR[(7*C_S_AXI_DATA_WIDTH)-1:6*C_S_AXI_DATA_WIDTH];
          'd9 : sync_reg_data <= reg_ISR[(8*C_S_AXI_DATA_WIDTH)-1:7*C_S_AXI_DATA_WIDTH];
          'd10 : sync_reg_data <= reg_ISR[(9*C_S_AXI_DATA_WIDTH)-1:8*C_S_AXI_DATA_WIDTH];
          'd11 : sync_reg_data <= reg_IER[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd12 : sync_reg_data <= reg_IER[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd13 : sync_reg_data <= reg_IER[(3*C_S_AXI_DATA_WIDTH)-1:2*C_S_AXI_DATA_WIDTH];
          'd14 : sync_reg_data <= reg_IER[(4*C_S_AXI_DATA_WIDTH)-1:3*C_S_AXI_DATA_WIDTH];
          'd15 : sync_reg_data <= reg_IER[(5*C_S_AXI_DATA_WIDTH)-1:4*C_S_AXI_DATA_WIDTH];
          'd16 : sync_reg_data <= reg_IER[(6*C_S_AXI_DATA_WIDTH)-1:5*C_S_AXI_DATA_WIDTH];
          'd17 : sync_reg_data <= reg_IER[(7*C_S_AXI_DATA_WIDTH)-1:6*C_S_AXI_DATA_WIDTH];
          'd18 : sync_reg_data <= reg_IER[(8*C_S_AXI_DATA_WIDTH)-1:7*C_S_AXI_DATA_WIDTH];
          'd19 : sync_reg_data <= reg_IER[(9*C_S_AXI_DATA_WIDTH)-1:8*C_S_AXI_DATA_WIDTH];
       // 'd20 : slv_reg_ICR is a write-only register
          'd29 : sync_reg_data <= reg_GFC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd30 : sync_reg_data <= reg_BFC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd31 : sync_reg_data <= reg_PTSC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd32 : sync_reg_data <= reg_NMC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd33 : sync_reg_data <= reg_OOBC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd34 : sync_reg_data <= reg_UDC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd35 : sync_reg_data <= reg_DFC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd36 : sync_reg_data <= reg_TFC[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd37 : sync_reg_data <= reg_TFC[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
       // 'd38 : slv_reg_FCR is a write-only register
          'd39 : sync_reg_data <= reg_MIFD[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd40 : sync_reg_data <= reg_MAFD[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd41 : sync_reg_data <= reg_ACFD[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd42 : sync_reg_data <= reg_ACFD[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd43 : sync_reg_data <= reg_MIL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd44 : sync_reg_data <= reg_MAL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd45 : sync_reg_data <= reg_ACL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd46 : sync_reg_data <= reg_ACL[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd47 : sync_reg_data <= reg_MIFL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd48 : sync_reg_data <= reg_MAFL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd49 : sync_reg_data <= reg_ACFL[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd50 : sync_reg_data <= reg_ACFL[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
       // 'd51 : slv_reg_TCR is a write-only register
          'd52 : sync_reg_data <= reg_FEFT[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd53 : sync_reg_data <= reg_FEFT[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd54 : sync_reg_data <= reg_FEFI[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd55 : sync_reg_data <= reg_FEFH[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd56 : sync_reg_data <= reg_FEFH[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd57 : sync_reg_data <= reg_ECR[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
       // 'd58 : slv_reg_IEBE is a write-only register
          'd67 : sync_reg_data <= reg_PRLM[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
       // 'd68 : slv_reg_SRE is a write-only register
          'd69 : sync_reg_data <= reg_LFVH[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd70 : sync_reg_data <= reg_LFVH[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd71 : sync_reg_data <= reg_LFST[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd72 : sync_reg_data <= reg_LFST[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd73 : sync_reg_data <= reg_LFST[(3*C_S_AXI_DATA_WIDTH)-1:2*C_S_AXI_DATA_WIDTH];
          'd74 : sync_reg_data <= reg_LFST[(4*C_S_AXI_DATA_WIDTH)-1:3*C_S_AXI_DATA_WIDTH];
          'd75 : sync_reg_data <= reg_LFST[(5*C_S_AXI_DATA_WIDTH)-1:4*C_S_AXI_DATA_WIDTH];
          'd76 : sync_reg_data <= reg_LFST[(6*C_S_AXI_DATA_WIDTH)-1:5*C_S_AXI_DATA_WIDTH];
          'd77 : sync_reg_data <= reg_LFST[(7*C_S_AXI_DATA_WIDTH)-1:6*C_S_AXI_DATA_WIDTH];
          'd78 : sync_reg_data <= reg_LFST[(8*C_S_AXI_DATA_WIDTH)-1:7*C_S_AXI_DATA_WIDTH];
          'd79 : sync_reg_data <= reg_LFEE[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd80 : sync_reg_data <= reg_LFEE[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd81 : sync_reg_data <= reg_LFEE[(3*C_S_AXI_DATA_WIDTH)-1:2*C_S_AXI_DATA_WIDTH];
          'd82 : sync_reg_data <= reg_LFEE[(4*C_S_AXI_DATA_WIDTH)-1:3*C_S_AXI_DATA_WIDTH];
          'd83 : sync_reg_data <= reg_LFEE[(5*C_S_AXI_DATA_WIDTH)-1:4*C_S_AXI_DATA_WIDTH];
          'd84 : sync_reg_data <= reg_LFEE[(6*C_S_AXI_DATA_WIDTH)-1:5*C_S_AXI_DATA_WIDTH];
          'd85 : sync_reg_data <= reg_LFEE[(7*C_S_AXI_DATA_WIDTH)-1:6*C_S_AXI_DATA_WIDTH];
          'd86 : sync_reg_data <= reg_LFEE[(8*C_S_AXI_DATA_WIDTH)-1:7*C_S_AXI_DATA_WIDTH];
          'd87 : sync_reg_data <= reg_LFTA[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd88 : sync_reg_data <= reg_LFTA[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
          'd89 : sync_reg_data <= reg_LFTA[(3*C_S_AXI_DATA_WIDTH)-1:2*C_S_AXI_DATA_WIDTH];
          'd90 : sync_reg_data <= reg_LFTA[(4*C_S_AXI_DATA_WIDTH)-1:3*C_S_AXI_DATA_WIDTH];
          'd91 : sync_reg_data <= reg_LFTA[(5*C_S_AXI_DATA_WIDTH)-1:4*C_S_AXI_DATA_WIDTH];
          'd92 : sync_reg_data <= reg_LFTA[(6*C_S_AXI_DATA_WIDTH)-1:5*C_S_AXI_DATA_WIDTH];
          'd93 : sync_reg_data <= reg_LFTA[(7*C_S_AXI_DATA_WIDTH)-1:6*C_S_AXI_DATA_WIDTH];
          'd94 : sync_reg_data <= reg_LFTA[(8*C_S_AXI_DATA_WIDTH)-1:7*C_S_AXI_DATA_WIDTH];
          'd95 : sync_reg_data <= reg_LFDO[(1*C_S_AXI_DATA_WIDTH)-1:0*C_S_AXI_DATA_WIDTH];
          'd96 : sync_reg_data <= reg_LFDO[(2*C_S_AXI_DATA_WIDTH)-1:1*C_S_AXI_DATA_WIDTH];
       // 'd97 : slv_reg_DCR is a write-only register
            default : sync_reg_data <= '0;
        endcase
      end
    end

    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //
    // Statistics Gathering Core
    // ////////////////////////////////////////////////////////////////////////////////////////////////////// //

    // Configuration register group
    `CLOCKED_NORESET(aclk,aresetn)
    begin
        reg_SDNV <= 'h00000000;
        reg_SDNC <= 'h00000000;
    end else begin
            
        // SDNet version (SDNV)
        reg_SDNV[31:24] <= 'd0; // Reserved : Unused bits
        reg_SDNV[23:16] <= 'd0; // Revision : SDNet IP Core revision number
        reg_SDNV[15: 8] <= 'd2; // Minor : SDNet IP Core minor version number
        reg_SDNV[ 7: 0] <= 'd2; // Major : SDNet IP Core major version number
        
        // SDNet instance configuration (SDNC)
        reg_SDNC[31:30] <= 'd0; // Reserved : Unused bits
        reg_SDNC[29:20] <= 'd333; // AxisClk : AXI Stream clock in MHz
        reg_SDNC[19:10] <= 'd333; // CAMmemClk : CAM memory clock in MHz
        reg_SDNC[ 9: 0] <= 'd333; // PacketRate : Packet rate in Mp/s
        
    end
    
    // interrupt register group 
    `CLOCKED(aclk,aresetn)
    begin
        reg_ISR <= 'h000000000000000000000000000000000000000000000000000000000000000000000000;
    end else begin

        // packet Sync FIFO single bit error
        if (reg_IER[0] && packet_sync_fifo_sbiterr) begin
            reg_ISR[0] <= 1;
        end else if (reg_ICR[0]) begin
            reg_ISR[0] <= 0;
        end

        // packet Sync FIFO double bit error
        if (reg_IER[1] && packet_sync_fifo_dbiterr) begin
            reg_ISR[1] <= 1;
        end else if (reg_ICR[1]) begin
            reg_ISR[1] <= 0;
        end

        // vector Sync FIFO single bit error
        if (reg_IER[2] && vector_sync_fifo_sbiterr) begin
            reg_ISR[2] <= 1;
        end else if (reg_ICR[2]) begin
            reg_ISR[2] <= 0;
        end

        // vector Sync FIFO double bit error
        if (reg_IER[3] && vector_sync_fifo_dbiterr) begin
            reg_ISR[3] <= 1;
        end else if (reg_ICR[3]) begin
            reg_ISR[3] <= 0;
        end
    
    end
    
    // TODO: Frame register group    
    // TODO: Traffic register group    
    // TODO: Error register group    
    
    // TODO: Debug register group (not completed)
    assign packet_sync_fifo_injectsbiterr = reg_IEBE[0];
    assign packet_sync_fifo_injectdbiterr = reg_IEBE[1];
    assign vector_sync_fifo_injectsbiterr = reg_IEBE[2];
    assign vector_sync_fifo_injectdbiterr = reg_IEBE[3];
    assign max_sof_per_intvl = reg_PRLM[15:0];
    
endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
