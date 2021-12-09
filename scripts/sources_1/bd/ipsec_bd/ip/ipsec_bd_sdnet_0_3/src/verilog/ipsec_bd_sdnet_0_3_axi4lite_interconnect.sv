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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/engines/match_action/ttcl/axi4lite_interconnect.ttcl#35 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

`include "reset_macros.sv"

// AXI4-lite Interconnect wrapper module:
//   Data width of 32b and 64b are allowed.
//   Only 1 Slave but multiple Master interfaces are supported.
//   All AXI interfaces work on the same clock domain.
//   All input parameters must be expressed in bits.
module ipsec_bd_sdnet_0_3_axi4lite_interconnect #(
    parameter integer C_S_AXI_ADDR_WIDTH    = 32, // AXI Slave address width
    parameter integer C_S_AXI_DATA_WIDTH    = 32, // AXI Slave data width (32-64)
    parameter integer C_M_AXI_SLOTS         = 0,  // Number of AXI Master interfaces
    parameter bit C_CAPTURE_ENABLE      = 0   // Debug capture enable
)(
    // //////////////////////////////////////////////////////////////////////////////////////////
    // Global Signals
    // //////////////////////////////////////////////////////////////////////////////////////////
    input  logic                                 aclk,
    input  logic                                 aresetn,
    // //////////////////////////////////////////////////////////////////////////////////////////
    // AXI slave IF
    // //////////////////////////////////////////////////////////////////////////////////////////
    // Slave Interface Write Address Ports                         
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]        s_axi_awaddr,
    input  logic                                 s_axi_awvalid,
    output logic                                 s_axi_awready,
    // Slave Interface Write Data Ports         
    input  logic [C_S_AXI_DATA_WIDTH-1:0]        s_axi_wdata,
    input  logic [C_S_AXI_DATA_WIDTH/8-1:0]      s_axi_wstrb,
    input  logic                                 s_axi_wvalid,
    output logic                                 s_axi_wready,
    // Slave Interface Write Response Ports     
    output logic [1:0]                           s_axi_bresp,
    output logic                                 s_axi_bvalid,
    input  logic                                 s_axi_bready,
    // Slave Interface Read Address Ports       
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]        s_axi_araddr,
    input  logic                                 s_axi_arvalid,
    output logic                                 s_axi_arready,
    // Slave Interface Read Data Ports          
    output logic [C_S_AXI_DATA_WIDTH-1:0]        s_axi_rdata,
    output logic [1:0]                           s_axi_rresp,
    output logic                                 s_axi_rvalid,
    input  logic                                 s_axi_rready
);

    typedef integer int_array_t [C_M_AXI_SLOTS-1:0];
    typedef enum { RD_IDLE, RD_REQ_OK, RD_REQ_NOK, RD_RESP, RD_RESP_ACK } state_rd_t;
    typedef enum { WR_IDLE, WR_REQ_OK, WR_REQ_NOK, WR_RESP, WR_RESP_ACK } state_wr_t;
    
    function int_array_t calc_addr_mask_lower(input integer c_m_axi_addr_width [C_M_AXI_SLOTS-1:0]);
        int_array_t mask;
        for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
            mask[i] = integer'('1 << c_m_axi_addr_width[i]);
        end
        return mask;
    endfunction
    
    function int_array_t calc_addr_mask_upper(input integer c_m_axi_addr_width [C_M_AXI_SLOTS-1:0]);
        int_array_t mask;
        for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
            mask[i] = integer'(~('1 << c_m_axi_addr_width[i]));
        end
        return mask;
    endfunction
    
    localparam C_LOG_FILENAME = "ipsec_bd_sdnet_0_3_control_if.log";

    localparam int_array_t C_M_AXI_DATA_WIDTH = {'0};
    localparam int_array_t C_M_AXI_ADDR_WIDTH = {'0};
    localparam int_array_t C_M_AXI_BASE_ADDR  = {'0};

    localparam int_array_t C_M_AXI_ADDR_MASK_LOWER = calc_addr_mask_lower(C_M_AXI_ADDR_WIDTH);
    localparam int_array_t C_M_AXI_ADDR_MASK_UPPER = calc_addr_mask_upper(C_M_AXI_ADDR_WIDTH);
    
    localparam RESP_OKAY   = 2'b00;
    localparam RESP_EXOKAY = 2'b01;
    localparam RESP_SLVERR = 2'b10;
    localparam RESP_DECERR = 2'b11;
    
    `INIT(state_rd_t state_rd, RD_IDLE)
    `INIT(state_wr_t state_wr, WR_IDLE)

    `INIT(integer rd_match_idx, '0)
    `INIT(integer wr_match_idx, '0)

    `INIT(logic [C_M_AXI_SLOTS-1:0] [C_S_AXI_ADDR_WIDTH-1:0]   m_axi_awaddr , '0)
    `INIT(logic [C_M_AXI_SLOTS-1:0]                            m_axi_awvalid, '0)
          logic [C_M_AXI_SLOTS-1:0]                            m_axi_awready;
    `INIT(logic [C_M_AXI_SLOTS-1:0] [C_S_AXI_DATA_WIDTH-1:0]   m_axi_wdata  , '0)
    `INIT(logic [C_M_AXI_SLOTS-1:0] [C_S_AXI_DATA_WIDTH/8-1:0] m_axi_wstrb  , '0)
    `INIT(logic [C_M_AXI_SLOTS-1:0]                            m_axi_wvalid , '0)
          logic [C_M_AXI_SLOTS-1:0]                            m_axi_wready;
          logic [C_M_AXI_SLOTS-1:0] [1:0]                      m_axi_bresp;
          logic [C_M_AXI_SLOTS-1:0]                            m_axi_bvalid;
    `INIT(logic [C_M_AXI_SLOTS-1:0]                            m_axi_bready , '0)
    `INIT(logic [C_M_AXI_SLOTS-1:0] [C_S_AXI_ADDR_WIDTH-1:0]   m_axi_araddr , '0)
    `INIT(logic [C_M_AXI_SLOTS-1:0]                            m_axi_arvalid, '0)
          logic [C_M_AXI_SLOTS-1:0]                            m_axi_arready;
          logic [C_M_AXI_SLOTS-1:0] [C_S_AXI_DATA_WIDTH-1:0]   m_axi_rdata;
          logic [C_M_AXI_SLOTS-1:0] [1:0]                      m_axi_rresp;
          logic [C_M_AXI_SLOTS-1:0]                            m_axi_rvalid;
    `INIT(logic [C_M_AXI_SLOTS-1:0]                            m_axi_rready , '0)
    
// spyglass disable_block ErrorAnalyzeBBox
// spyglass disable_block ClkName
// spyglass disable_block STARC-1.6.6.3
// spyglass disable_block ResetName
// spyglass disable_block SYNTH_78 
`ifndef SYNTHESIS
    
    int fh;
    longint timestamp = '0;
    
    logic s_axi_awvalid_reg = '0;
    logic s_axi_awready_reg = '0;
    logic s_axi_wvalid_reg  = '0;
    logic s_axi_wready_reg  = '0;
    logic s_axi_bvalid_reg  = '0;
    logic s_axi_bready_reg  = '0;
    logic s_axi_arvalid_reg = '0;
    logic s_axi_arready_reg = '0;
    logic s_axi_rvalid_reg  = '0;
    logic s_axi_rready_reg  = '0;

    // Data Width parameter value check
    initial begin
        assert(C_S_AXI_DATA_WIDTH == 32 || C_S_AXI_DATA_WIDTH == 64)
        else $fatal(1, "Invalid parameter C_S_AXI_DATA_WIDTH value. Valid values are 32 or 64.");
        for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
            assert(C_M_AXI_DATA_WIDTH[i] == C_S_AXI_DATA_WIDTH)
            else $fatal(1, "Invalid parameter C_M%0d_AXI_DATA_WIDTH value. Must be equal to C_S_AXI_DATA_WIDTH.", i);
        end
    end
    
    // Address Width parameter value check
    initial begin
        assert(C_S_AXI_ADDR_WIDTH > 0 && C_S_AXI_ADDR_WIDTH < 32)
        else $fatal("Invalid parameter C_S_AXI_ADDR_WIDTH value. Valid values are from 0 to 32.");
        for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
            assert(C_M_AXI_ADDR_WIDTH[i] > 0 && C_M_AXI_ADDR_WIDTH[i] < C_S_AXI_ADDR_WIDTH)
            else $fatal(1, "Invalid parameter C_M%0d_AXI_ADDR_WIDTH value. Must be smaller than C_S_AXI_ADDR_WIDTH.", i);
        end
    end
    
    // Base Address parameter value check
    initial begin
        for (int i = 1; i < C_M_AXI_SLOTS; i=i+1) begin
            assert(C_M_AXI_BASE_ADDR[i] == C_M_AXI_BASE_ADDR[i-1] + (1 << C_M_AXI_ADDR_WIDTH[i-1]))
            else $fatal(1, "Invalid parameter C_M%0d_AXI_BASE_ADDR value. Must not overlap with other address ranges.", i);
        end
    end

    // Debug signal capture
    generate
        if (C_CAPTURE_ENABLE && C_M_AXI_SLOTS > 1) begin : debug_capture_enabled
        
            initial begin
                fh = $fopen(C_LOG_FILENAME, "w");
                if (!fh) begin
                    $fatal(1, "** Warning: Problem creating file '%s'", C_LOG_FILENAME);
                end
            end
            
            always_ff @(posedge aclk) begin
                timestamp <= timestamp + 1;
             end
            
            always_ff @(posedge aclk) begin
                s_axi_awvalid_reg <= s_axi_awvalid;
                s_axi_awready_reg <= s_axi_awready;
                s_axi_wvalid_reg  <= s_axi_wvalid;
                s_axi_wready_reg  <= s_axi_wready;
                s_axi_bvalid_reg  <= s_axi_bvalid;
                s_axi_bready_reg  <= s_axi_bready;
                s_axi_arvalid_reg <= s_axi_arvalid;
                s_axi_arready_reg <= s_axi_arready;
                s_axi_rvalid_reg  <= s_axi_rvalid;
                s_axi_rready_reg  <= s_axi_rready;
            end
            
            always_ff @(posedge aclk) begin
                if (s_axi_awvalid_reg != s_axi_awvalid  ||
                    s_axi_awready_reg != s_axi_awready  ||
                    s_axi_wvalid_reg  != s_axi_wvalid   ||
                    s_axi_wready_reg  != s_axi_wready   ||
                    s_axi_bvalid_reg  != s_axi_bvalid   ||
                    s_axi_bready_reg  != s_axi_bready   ||
                    s_axi_arvalid_reg != s_axi_arvalid  ||
                    s_axi_arready_reg != s_axi_arready  ||
                    s_axi_rvalid_reg  != s_axi_rvalid   ||
                    s_axi_rready_reg  != s_axi_rready) begin
                    $fdisplay(fh, "%h\t%b\t%b\t%h\t%h\t%b\t%b\t%h\t%b\t%b\t%h\t%b\t%b\t%h\t%h\t%b\t%b\t%0d", 
                        s_axi_awaddr,
                        s_axi_awvalid,
                        s_axi_awready,
                        s_axi_wdata,
                        s_axi_wstrb,
                        s_axi_wvalid,
                        s_axi_wready,
                        s_axi_bresp,
                        s_axi_bvalid,
                        s_axi_bready,
                        s_axi_araddr,
                        s_axi_arvalid,
                        s_axi_arready,
                        s_axi_rdata,
                        s_axi_rresp,
                        s_axi_rvalid,
                        s_axi_rready,
                        timestamp
                    );
                end
            end
        
        end
    endgenerate

`endif
// spyglass enable_block ErrorAnalyzeBBox
// spyglass enable_block ClkName
// spyglass enable_block STARC-1.6.6.3
// spyglass enable_block ResetName
// spyglass enable_block SYNTH_78 

    generate 
        if (C_M_AXI_SLOTS > 0) begin : xbar
        
            // Read state machine
            `CLOCKED_NORESET(aclk,aresetn)
            begin // async reset
                state_rd      <= RD_IDLE;
                m_axi_araddr  <= 0;
                m_axi_arvalid <= 0;
                m_axi_rready  <= 0;
                s_axi_arready <= 0;
                s_axi_rvalid  <= 0;
                rd_match_idx  <= 0;
                s_axi_rdata   <= 0;
                s_axi_rresp   <= 0;

            end else begin
                m_axi_araddr[rd_match_idx]  <= s_axi_araddr & C_M_AXI_ADDR_MASK_UPPER[rd_match_idx];
                m_axi_arvalid[rd_match_idx] <= 0;
                m_axi_rready[rd_match_idx]  <= 0;
                s_axi_arready               <= 0;
                s_axi_rvalid                <= 0;  
        
                case (state_rd)
                    default: state_rd <= RD_IDLE;
            
                    RD_IDLE: begin
                        if (s_axi_arvalid) begin
                            state_rd <= RD_REQ_NOK;
                            for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
                                if ((s_axi_araddr & C_M_AXI_ADDR_MASK_LOWER[i]) == C_M_AXI_BASE_ADDR[i]) begin
                                    state_rd     <= RD_REQ_OK;
                                    rd_match_idx <= i;
                                    break;
                                end
                            end
                        end
                    end
        
                    RD_REQ_OK: begin
                        m_axi_arvalid[rd_match_idx] <= s_axi_arvalid;
                        if (m_axi_arready[rd_match_idx] && m_axi_arvalid[rd_match_idx]) begin
                            state_rd <= RD_RESP;
                            s_axi_arready <= 1;
                            m_axi_arvalid[rd_match_idx] <= 0;
                        end
                    end
                    
                    RD_REQ_NOK: begin
                        state_rd      <= RD_RESP_ACK;
                        s_axi_rresp   <= RESP_DECERR;
                        s_axi_rdata   <= 0;
                        s_axi_arready <= 1;
                    end
        
                    RD_RESP: begin
                        m_axi_rready[rd_match_idx] <= 1;
                        s_axi_rdata <= m_axi_rdata[rd_match_idx];
                        s_axi_rresp <= m_axi_rresp[rd_match_idx];
                        if (m_axi_rvalid[rd_match_idx] && m_axi_rready[rd_match_idx]) begin
                            state_rd <= RD_RESP_ACK;
                            m_axi_rready[rd_match_idx] <= 0;
                        end 
                    end

                    RD_RESP_ACK: begin
                        s_axi_rresp  <= s_axi_rresp;
                        s_axi_rdata  <= s_axi_rdata;
                        s_axi_rvalid <= 1;
                        if (s_axi_rvalid && s_axi_rready) begin
                            state_rd     <= RD_IDLE;
                            s_axi_rvalid <= 0;
                        end
                    end
        
                endcase
                
                `ifndef RESET_MACROS_ASIC_NOT_FPGA
                    if (!aresetn) begin // sync reset
                        state_rd      <= RD_IDLE;
                        m_axi_arvalid <= 0;
                        m_axi_rready  <= 0;
                        s_axi_arready <= 0;
                        s_axi_rvalid  <= 0;
                        rd_match_idx  <= 0;
                    end
                `endif
            end
        
            // Write state machine
            `CLOCKED_NORESET(aclk,aresetn)
            begin // async reset
                state_wr      <= WR_IDLE;
                m_axi_awaddr  <= 0;
                m_axi_awvalid <= 0;
                m_axi_wvalid  <= 0;
                m_axi_wdata   <= 0;
                m_axi_wstrb   <= 0;
                m_axi_bready  <= 0;
                s_axi_awready <= 0;
                s_axi_wready  <= 0;
                s_axi_bvalid  <= 0;
                s_axi_bresp   <= 0;
                wr_match_idx  <= 0;

            end else begin        
                m_axi_awaddr[wr_match_idx]  <= s_axi_awaddr & C_M_AXI_ADDR_MASK_UPPER[wr_match_idx];
                m_axi_awvalid[wr_match_idx] <= 0;
                m_axi_wvalid[wr_match_idx]  <= 0;
                m_axi_bready[wr_match_idx]  <= 0;
                s_axi_awready               <= 0;
                s_axi_wready                <= 0;
                s_axi_bvalid                <= 0;
        
                case (state_wr)
                    default: state_wr <= WR_IDLE;
        
                    WR_IDLE: begin
                        if (s_axi_awvalid) begin
                            state_wr <= WR_REQ_NOK;
                            for (int i = 0; i < C_M_AXI_SLOTS; i=i+1) begin
                                if ((s_axi_awaddr & C_M_AXI_ADDR_MASK_LOWER[i]) == C_M_AXI_BASE_ADDR[i]) begin
                                    state_wr     <= WR_REQ_OK;
                                    wr_match_idx <= i;
                                    break;
                                end
                            end
                        end
                    end
        
                    WR_REQ_OK: begin
                        m_axi_wdata[wr_match_idx]   <= s_axi_wdata;
                        m_axi_wstrb[wr_match_idx]   <= s_axi_wstrb;
                        m_axi_awvalid[wr_match_idx] <= s_axi_awvalid;
                        m_axi_wvalid[wr_match_idx]  <= s_axi_wvalid;
                        if (m_axi_awready[wr_match_idx] && m_axi_awvalid[wr_match_idx] &&
                            m_axi_wready[wr_match_idx]  && m_axi_wvalid[wr_match_idx]) begin
                            state_wr <= WR_RESP;
                            s_axi_awready <= 1;
                            s_axi_wready  <= 1;
                            m_axi_awvalid[wr_match_idx] <= 0;
                            m_axi_wvalid[wr_match_idx]  <= 0;
                        end
                    end 
                    
                    WR_REQ_NOK: begin
                        state_wr      <= WR_RESP_ACK;
                        s_axi_bresp   <= RESP_DECERR;
                        s_axi_awready <= 1;
                        s_axi_wready  <= 1;
                    end
        
                    WR_RESP: begin
                        m_axi_bready[wr_match_idx] <= 1;
                        s_axi_bresp <= m_axi_bresp[wr_match_idx];
                        if (m_axi_bvalid[wr_match_idx] && m_axi_bready[wr_match_idx]) begin
                            state_wr <= WR_RESP_ACK;
                            m_axi_bready[wr_match_idx] <= 0;
                        end 
                    end
                    
                    WR_RESP_ACK: begin
                        s_axi_bresp  <= s_axi_bresp;
                        s_axi_bvalid <= 1;
                        if (s_axi_bvalid && s_axi_bready) begin
                            state_wr     <= WR_IDLE;
                            s_axi_bvalid <= 0;
                        end
                    end
        
                endcase
                
                `ifndef RESET_MACROS_ASIC_NOT_FPGA
                    if (!aresetn) begin // sync reset
                        state_wr      <= WR_IDLE;
                        m_axi_awvalid <= 0;
                        m_axi_wvalid  <= 0;
                        m_axi_wstrb   <= 0;
                        m_axi_bready  <= 0;
                        s_axi_awready <= 0;
                        s_axi_wready  <= 0;
                        s_axi_bvalid  <= 0;
                        wr_match_idx  <= 0;
                    end
                `endif
            end
    
        end
    endgenerate


endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
