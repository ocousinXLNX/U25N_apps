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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/top/ttcl/sdnet.ttcl#33 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description: 
//
//////////////////////////////////////////////////////////////////////////////

(* check_license = "sdnet_p4@2018.10" *)
(* secure_bitstream = "off" *)
(* secure_config = "protect" *)
(* secure_netlist = "encrypt" *)
(* secure_extras = "A" *)
(* secure_net_editing = "off" *)
module ipsec_bd_sdnet_0_3_sdnet #(
   parameter integer TDATA_NUM_BYTES             = 16,
   parameter integer TDEST_WIDTH                 = 1,
   parameter integer TID_WIDTH                   = 1,
   parameter integer TUSER_WIDTH                 = 1,
   parameter integer USER_META_DATA_WIDTH        = 581,
   parameter integer NUM_USER_EXTERNS            = 1,
   parameter integer USER_EXTERN_IN_WIDTH        = 16,
   parameter integer USER_EXTERN_OUT_WIDTH       = 160,
   parameter integer S_AXI_DATA_WIDTH            = 32,
   parameter integer S_AXI_ADDR_WIDTH            = 1,
   parameter integer M_AXI_HBM_NUM_SLOTS         = 0,
   parameter integer M_AXI_HBM_DATA_WIDTH        = 256,
   parameter integer M_AXI_HBM_ADDR_WIDTH        = 33,
   parameter integer M_AXI_HBM_ID_WIDTH          = 6,
   parameter integer M_AXI_HBM_RESP_WIDTH        = 2
) (
   // clocks & resets
   input  logic                              s_axis_aclk,
   input  logic                              s_axis_aresetn,
   input  logic                              m_axi_hbm_aclk,
   input  logic                              m_axi_hbm_aresetn,
   input  logic                              s_axi_aclk,
   input  logic                              s_axi_aresetn,
   input  logic                              cam_mem_aclk,
   input  logic                              cam_mem_aresetn,
   // Metadata
   input  logic [USER_META_DATA_WIDTH-1:0]   user_metadata_in,
   input  logic                              user_metadata_in_valid,
   output logic [USER_META_DATA_WIDTH-1:0]   user_metadata_out,
   output logic                              user_metadata_out_valid,
   // AXI Master port                        
   output logic [TDATA_NUM_BYTES*8-1:0]      m_axis_tdata,
   output logic [TDATA_NUM_BYTES-1:0]        m_axis_tkeep,
   output logic                              m_axis_tvalid,
   input  logic                              m_axis_tready,
   output logic [TUSER_WIDTH-1:0]            m_axis_tuser,
   output logic [TID_WIDTH-1:0]              m_axis_tid,
   output logic [TDEST_WIDTH-1:0]            m_axis_tdest,
   output logic                              m_axis_tlast,
   // User Externs
   input  logic [USER_EXTERN_IN_WIDTH-1:0]   user_extern_in,
   input  logic [NUM_USER_EXTERNS-1:0]       user_extern_in_valid,
   output logic [USER_EXTERN_OUT_WIDTH-1:0]  user_extern_out,
   output logic [NUM_USER_EXTERNS-1:0]       user_extern_out_valid,
   // AXI Slave port
   input  logic [TDATA_NUM_BYTES*8-1:0]      s_axis_tdata,
   input  logic [TDATA_NUM_BYTES-1:0]        s_axis_tkeep,
   input  logic                              s_axis_tvalid,
   input  logic                              s_axis_tlast,
   input  logic [TUSER_WIDTH-1:0]            s_axis_tuser,
   input  logic [TID_WIDTH-1:0]              s_axis_tid,
   input  logic [TDEST_WIDTH-1:0]            s_axis_tdest,
   output logic                              s_axis_tready,
   // AXI4-lite interface                   
   input  logic [S_AXI_ADDR_WIDTH-1:0]       s_axi_awaddr,
   input  logic                              s_axi_awvalid,
   output logic                              s_axi_awready,
   input  logic [S_AXI_DATA_WIDTH-1:0]       s_axi_wdata,
   input  logic [S_AXI_DATA_WIDTH/8-1:0]     s_axi_wstrb,
   input  logic                              s_axi_wvalid,
   output logic                              s_axi_wready,
   output logic [1:0]                        s_axi_bresp,
   output logic                              s_axi_bvalid,
   input  logic                              s_axi_bready,
   input  logic [S_AXI_ADDR_WIDTH-1:0]       s_axi_araddr,
   input  logic                              s_axi_arvalid,
   output logic                              s_axi_arready,
   output logic [S_AXI_DATA_WIDTH-1:0]       s_axi_rdata,
   output logic                              s_axi_rvalid,
   input  logic                              s_axi_rready,
   output logic [1:0]                        s_axi_rresp,
   // Interrupt request
   output logic irq
);

   import ipsec_bd_sdnet_0_3_sdnet_pkg::*;
   
   logic [TDATA_NUM_BYTES*8-1:0]   parsed_axis_data;
   logic [TDATA_NUM_BYTES-1:0]     parsed_axis_tkeep;
   logic [C_TKEEP_COUNT_BYTES-1:0] parsed_axis_tcount;
   logic                           parsed_axis_tvalid;
   logic                           parsed_axis_tready;
   logic                           parsed_axis_tlast;
   
   logic [TDATA_NUM_BYTES*8-1:0]   sync_axis_data;
   logic [C_TKEEP_COUNT_BYTES-1:0] sync_axis_tcount;
   logic                           sync_axis_tvalid;
   logic                           sync_axis_tready;
   logic                           sync_axis_tlast;

   logic [TDATA_NUM_BYTES*8-1:0] s_axis_data;
   logic [TDATA_NUM_BYTES*8-1:0] m_axis_data;

   logic [C_USER_META_DATA_WIDTH-1:0] parsed_user_metadata;
   logic [C_USER_META_DATA_WIDTH-1:0] action_user_metadata;
   logic [C_USER_META_DATA_WIDTH-1:0] sync_user_metadata;

   logic [C_STANDARD_META_DATA_WIDTH-1:0] parsed_standard_metadata;
   logic [C_STANDARD_META_DATA_WIDTH-1:0] action_standard_metadata;
   logic [C_STANDARD_META_DATA_WIDTH-1:0] sync_standard_metadata;

   logic [C_HDR_INFO_DATA_WIDTH-1:0] parsed_hdr_info_vector;
   logic [C_HDR_INFO_DATA_WIDTH-1:0] action_hdr_info_vector;
   logic [C_HDR_INFO_DATA_WIDTH-1:0] sync_hdr_info_vector;
   
   logic [C_HDR_FIELDS_DATA_WIDTH-1:0] parsed_hdr_fields_vector;
   logic [C_HDR_FIELDS_DATA_WIDTH-1:0] action_hdr_fields_vector;
   logic [C_HDR_FIELDS_DATA_WIDTH-1:0] sync_hdr_fields_vector;
   
   logic [C_ACTION_EN_DATA_WIDTH-1:0] action_action_en_vector;
   logic [C_ACTION_EN_DATA_WIDTH-1:0] sync_action_en_vector;

   T_USER_METADATA user_metadata_in_struct;
   T_USER_METADATA user_metadata_in_masked;
   T_USER_METADATA user_metadata_out_struct;
   T_USER_METADATA user_metadata_out_masked;
   
   T_STANDARD_METADATA standard_metadata_in_struct;
   
   T_USER_EXTERN_IN    user_extern_in_struct;
   T_USER_EXTERN_VALID user_extern_in_valid_struct;
   T_USER_EXTERN_OUT   user_extern_out_struct;
   T_USER_EXTERN_VALID user_extern_out_valid_struct;

   logic [1:0] sync_fifos_injectsbiterr;
   logic [1:0] sync_fifos_injectdbiterr;
   logic [1:0] sync_fifos_sbiterr;
   logic [1:0] sync_fifos_dbiterr;

   logic parsed_vector_valid;
   logic sync_vector_valid;
   logic deparsed_vector_out_valid;   
   logic action_vector_valid;
   
   logic parser_axis_tvalid;
   logic parser_umeta_valid;
   logic sync_backpressure_tready;   
   logic counter_done;

   logic rate_limiter_axis_tvalid;
   logic rate_limiter_axis_tready;
   
   logic [63:0] ingress_timestamp;   
   logic [15:0] max_sof_per_intvl;
   

    logic s_axis_aresetn_i;
`ifdef RESET_MACROS_ASIC_NOT_FPGA
    assign s_axis_aresetn_i = s_axis_aresetn;
`else 
    always_ff @(s_axis_aclk) 
        s_axis_aresetn_i <= s_axis_aresetn;
`endif // ifdef RESET_MACROS_ASIC_NOT_FPGA

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Convert from AXI-Stream format to internal bus format
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   // Re-order bytes on packet bus
   assign s_axis_data = { << 8 {s_axis_tdata} };
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // MetaData TID/TUSER/TDEST handling
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   always_comb begin
      user_metadata_in_struct <= user_metadata_in;
        m_axis_tid <= '0;
         m_axis_tdest <= '0;
         m_axis_tuser <= '0;
   end                                                                                             

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Mask the unused portions of the user metadata input/output vector
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   // Number of Metadata fields: 22
   assign user_metadata_in_masked.metadata_len = user_metadata_in_struct.metadata_len;
   assign user_metadata_out_masked.metadata_len = user_metadata_out_struct.metadata_len;
   assign user_metadata_in_masked.metadata_egress_port = user_metadata_in_struct.metadata_egress_port;
   assign user_metadata_out_masked.metadata_egress_port = user_metadata_out_struct.metadata_egress_port;
   assign user_metadata_in_masked.metadata_tag_header = user_metadata_in_struct.metadata_tag_header;
   assign user_metadata_out_masked.metadata_tag_header = user_metadata_out_struct.metadata_tag_header;
   assign user_metadata_in_masked.metadata_ext_iv = user_metadata_in_struct.metadata_ext_iv;
   assign user_metadata_out_masked.metadata_ext_iv = user_metadata_out_struct.metadata_ext_iv;
   assign user_metadata_in_masked.metadata_esp_header = user_metadata_in_struct.metadata_esp_header;
   assign user_metadata_out_masked.metadata_esp_header = user_metadata_out_struct.metadata_esp_header;
   assign user_metadata_in_masked.metadata_dst_2 = user_metadata_in_struct.metadata_dst_2;
   assign user_metadata_out_masked.metadata_dst_2 = user_metadata_out_struct.metadata_dst_2;
   assign user_metadata_in_masked.metadata_dst_1 = user_metadata_in_struct.metadata_dst_1;
   assign user_metadata_out_masked.metadata_dst_1 = user_metadata_out_struct.metadata_dst_1;
   assign user_metadata_in_masked.metadata_src_2 = user_metadata_in_struct.metadata_src_2;
   assign user_metadata_out_masked.metadata_src_2 = user_metadata_out_struct.metadata_src_2;
   assign user_metadata_in_masked.metadata_src_1 = user_metadata_in_struct.metadata_src_1;
   assign user_metadata_out_masked.metadata_src_1 = user_metadata_out_struct.metadata_src_1;
   assign user_metadata_in_masked.metadata_hdr_chk = user_metadata_in_struct.metadata_hdr_chk;
   assign user_metadata_out_masked.metadata_hdr_chk = user_metadata_out_struct.metadata_hdr_chk;
   assign user_metadata_in_masked.metadata_protocol = user_metadata_in_struct.metadata_protocol;
   assign user_metadata_out_masked.metadata_protocol = user_metadata_out_struct.metadata_protocol;
   assign user_metadata_in_masked.metadata_ttl = user_metadata_in_struct.metadata_ttl;
   assign user_metadata_out_masked.metadata_ttl = user_metadata_out_struct.metadata_ttl;
   assign user_metadata_in_masked.metadata_offset = user_metadata_in_struct.metadata_offset;
   assign user_metadata_out_masked.metadata_offset = user_metadata_out_struct.metadata_offset;
   assign user_metadata_in_masked.metadata_flags = user_metadata_in_struct.metadata_flags;
   assign user_metadata_out_masked.metadata_flags = user_metadata_out_struct.metadata_flags;
   assign user_metadata_in_masked.metadata_id = user_metadata_in_struct.metadata_id;
   assign user_metadata_out_masked.metadata_id = user_metadata_out_struct.metadata_id;
   assign user_metadata_in_masked.metadata_length = user_metadata_in_struct.metadata_length;
   assign user_metadata_out_masked.metadata_length = user_metadata_out_struct.metadata_length;
   assign user_metadata_in_masked.metadata_tos = user_metadata_in_struct.metadata_tos;
   assign user_metadata_out_masked.metadata_tos = user_metadata_out_struct.metadata_tos;
   assign user_metadata_in_masked.metadata_hdr_len = user_metadata_in_struct.metadata_hdr_len;
   assign user_metadata_out_masked.metadata_hdr_len = user_metadata_out_struct.metadata_hdr_len;
   assign user_metadata_in_masked.metadata_version = user_metadata_in_struct.metadata_version;
   assign user_metadata_out_masked.metadata_version = user_metadata_out_struct.metadata_version;
   assign user_metadata_in_masked.metadata_vlan_header = user_metadata_in_struct.metadata_vlan_header;
   assign user_metadata_out_masked.metadata_vlan_header = user_metadata_out_struct.metadata_vlan_header;
   assign user_metadata_in_masked.metadata_mac_header = user_metadata_in_struct.metadata_mac_header;
   assign user_metadata_out_masked.metadata_mac_header = user_metadata_out_struct.metadata_mac_header;
   assign user_metadata_in_masked.metadata_is_vlan = user_metadata_in_struct.metadata_is_vlan;
   assign user_metadata_out_masked.metadata_is_vlan = user_metadata_out_struct.metadata_is_vlan;
   assign user_metadata_out = user_metadata_out_masked;
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Map between the User Externs input/output structures and input/output vectors
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   assign user_extern_in_struct       = user_extern_in;
   assign user_extern_in_valid_struct = user_extern_in_valid;
   assign user_extern_out             = user_extern_out_struct;
   assign user_extern_out_valid       = user_extern_out_valid_struct;
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Externs and other Modules
   /////////////////////////////////////////////////////////////////////////////////////////////////

   assign parser_axis_tvalid       = rate_limiter_axis_tvalid & ~counter_done & sync_backpressure_tready;
   assign parser_umeta_valid       = rate_limiter_axis_tvalid & user_metadata_in_valid & ~counter_done;
   assign rate_limiter_axis_tready = sync_backpressure_tready;
    assign standard_metadata_in_struct = '0;

   // license timeout circuit with period of 48 hours (172800 seconds)   
   ltcc #(
      .ENABLE   (0),
      .GCS_INIT (64'h8000003392214fc0)
   ) ltcc_inst (
      .CLK      (s_axis_aclk),
      .T        (counter_done)
   );
   
   // Packet Rate Limiter, to avoid any errors in the CAMs
   pkt_rate_limiter #(
      .CLK2RATE_RATIO  (CLK2RATE_RATIO),
      .TDATA_NUM_BYTES (TDATA_NUM_BYTES),
      .TUSER_WIDTH     (TUSER_WIDTH)
   ) pkt_rate_limiter_inst (
      // clocks & resets
      .s_axis_aclk       (s_axis_aclk),
      .s_axis_aresetn    (s_axis_aresetn_i),
      // AXIS Slave port
      .s_axis_tdata      (s_axis_tdata),
      .s_axis_tkeep      (s_axis_tkeep),
      .s_axis_tuser      (s_axis_tuser),
      .s_axis_tvalid     (s_axis_tvalid),
      .s_axis_tlast      (s_axis_tlast),
      .s_axis_tready     (s_axis_tready),
      // AXIS Master port
      .m_axis_tdata      (),
      .m_axis_tkeep      (),
      .m_axis_tuser      (),
      .m_axis_tvalid     (rate_limiter_axis_tvalid),
      .m_axis_tlast      (),
      .m_axis_tready     (rate_limiter_axis_tready),
      // config
      .max_sof_per_intvl (max_sof_per_intvl)
   );

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Engines
   /////////////////////////////////////////////////////////////////////////////////////////////////

   ipsec_bd_sdnet_0_3_parser_engine parser_engine_inst (
      // clocks & resets
      .aclk                  (s_axis_aclk),
      .aresetn               (s_axis_aresetn_i),      
      // Slave AXI Stream interface
      .s_axis_tdata          (s_axis_data),
      .s_axis_tkeep          (s_axis_tkeep),
      .s_axis_tvalid         (parser_axis_tvalid),
      .s_axis_tlast          (s_axis_tlast),
      .s_axis_tready         (),      
      // Master AXI Stream Interface
      .m_axis_tdata          (parsed_axis_data),
      .m_axis_tcount         (parsed_axis_tcount),
      .m_axis_tvalid         (parsed_axis_tvalid),
      .m_axis_tlast          (parsed_axis_tlast),
      .m_axis_tready         (1'b1),      
      // input vectors       
      .vector_in_valid       (parser_umeta_valid),
      .user_metadata_in      (user_metadata_in_masked),        
      .standard_metadata_in  (standard_metadata_in_struct),
      // output vectors
      .vector_out_valid      (parsed_vector_valid),
      .user_metadata_out     (parsed_user_metadata),      
      .standard_metadata_out (parsed_standard_metadata),
      .hdr_info_vector_out   (parsed_hdr_info_vector),
      .hdr_fields_vector_out (parsed_hdr_fields_vector)
   );

   ipsec_bd_sdnet_0_3_match_action_engine match_action_engine_inst (
      // clocks & resets
      .aclk                     (s_axis_aclk),
      .aresetn                  (s_axis_aresetn_i),      
      .cam_mem_aclk             (cam_mem_aclk),
      .cam_mem_aresetn          (cam_mem_aresetn),
      .m_axi_hbm_aclk           (m_axi_hbm_aclk),
      .m_axi_hbm_aresetn        (m_axi_hbm_aresetn),
      .s_axi_aclk               (s_axi_aclk),
      .s_axi_aresetn            (s_axi_aresetn),
      // input vectors          
      .vector_in_valid          (parsed_vector_valid),
      .standard_metadata_in     (parsed_standard_metadata),
      .user_metadata_in         (parsed_user_metadata),
      .hdr_info_vector_in       (parsed_hdr_info_vector),
      .hdr_fields_vector_in     (parsed_hdr_fields_vector),      
      // output vectors         
      .vector_out_valid         (action_vector_valid),
      .standard_metadata_out    (action_standard_metadata),
      .user_metadata_out        (action_user_metadata),
      .hdr_info_vector_out      (action_hdr_info_vector),
      .hdr_fields_vector_out    (action_hdr_fields_vector),
      .action_en_vector_out     (action_action_en_vector),   
      // User Externs           
      .user_extern_in           (user_extern_in_struct),
      .user_extern_in_valid     (user_extern_in_valid_struct),
      .user_extern_out          (user_extern_out_struct),
      .user_extern_out_valid    (user_extern_out_valid_struct),
      // ECC signals
      .sync_fifos_injectsbiterr (sync_fifos_injectsbiterr),
      .sync_fifos_injectdbiterr (sync_fifos_injectdbiterr),
      .sync_fifos_sbiterr       (sync_fifos_sbiterr),
      .sync_fifos_dbiterr       (sync_fifos_dbiterr),
      // AXI4-lite interface
      .s_axi_awaddr             (s_axi_awaddr),
      .s_axi_awvalid            (s_axi_awvalid),
      .s_axi_awready            (s_axi_awready),
      .s_axi_wdata              (s_axi_wdata),
      .s_axi_wstrb              (s_axi_wstrb),
      .s_axi_wvalid             (s_axi_wvalid),
      .s_axi_wready             (s_axi_wready),
      .s_axi_bresp              (s_axi_bresp),
      .s_axi_bvalid             (s_axi_bvalid),
      .s_axi_bready             (s_axi_bready),
      .s_axi_araddr             (s_axi_araddr),
      .s_axi_arvalid            (s_axi_arvalid),
      .s_axi_arready            (s_axi_arready),
      .s_axi_rdata              (s_axi_rdata),
      .s_axi_rvalid             (s_axi_rvalid),
      .s_axi_rready             (s_axi_rready),
      .s_axi_rresp              (s_axi_rresp),
      // Interrupt request
      .irq                      (irq),
      // others 
      .max_sof_per_intvl        (max_sof_per_intvl)
   );

   ipsec_bd_sdnet_0_3_sync_fifos sync_fifos_inst (	   
      // clocks & resets
      .s_axis_aclk           (s_axis_aclk),
      .s_axis_aresetn        (s_axis_aresetn_i),   
      // ECC signals
      .injectsbiterr         (sync_fifos_injectsbiterr),
      .injectdbiterr         (sync_fifos_injectdbiterr),
      .sbiterr               (sync_fifos_sbiterr),
      .dbiterr               (sync_fifos_dbiterr),
      // input vectors
      .vector_in_valid       (action_vector_valid),
      .action_en_vector_in   (action_action_en_vector),
      .hdr_info_vector_in    (action_hdr_info_vector),
      .hdr_fields_vector_in  (action_hdr_fields_vector),
      .standard_metadata_in  (action_standard_metadata),
      .user_metadata_in      (action_user_metadata),      
      // output vectors
      .vector_out_valid      (sync_vector_valid),
      .action_en_vector_out  (sync_action_en_vector),
      .hdr_info_vector_out   (sync_hdr_info_vector),
      .hdr_fields_vector_out (sync_hdr_fields_vector),
      .standard_metadata_out (sync_standard_metadata),
      .user_metadata_out     (sync_user_metadata),   
      // Slave AXI Stream interface
      .s_axis_tdata          (parsed_axis_data),
      .s_axis_tcount         (parsed_axis_tcount),
      .s_axis_tvalid         (parsed_axis_tvalid),
      .s_axis_tlast          (parsed_axis_tlast),
      .s_axis_tready         (sync_backpressure_tready),   
      // Master AXI Stream interface
      .m_axis_tdata          (sync_axis_data),
      .m_axis_tcount         (sync_axis_tcount),
      .m_axis_tvalid         (sync_axis_tvalid),
      .m_axis_tready         (sync_axis_tready),
      .m_axis_tlast          (sync_axis_tlast)
   );

   ipsec_bd_sdnet_0_3_deparser_engine deparser_engine_inst (
      // clocks & resets
      .s_axis_aclk           (s_axis_aclk),
      .s_axis_aresetn        (s_axis_aresetn_i),      
      // Input vectors
      .vector_in_valid       (sync_vector_valid),
      .action_en_vector_in   (sync_action_en_vector),
      .hdr_info_vector_in    (sync_hdr_info_vector),
      .hdr_fields_vector_in  (sync_hdr_fields_vector),
      .standard_metadata_in  (sync_standard_metadata),
      .user_metadata_in      (sync_user_metadata),      
      // Output vectors
      .vector_out_valid      (user_metadata_out_valid),
      .user_metadata_out     (user_metadata_out_struct),
      .standard_metadata_out (),
      // Slave AXI Stream interface
      .s_axis_data           (sync_axis_data),
      .s_axis_tcount         (sync_axis_tcount),
      .s_axis_tvalid         (sync_axis_tvalid),
      .s_axis_tlast          (sync_axis_tlast),
      .s_axis_tready         (sync_axis_tready),      
      // Master AXI Stream interface
      .m_axis_data           (m_axis_data),
      .m_axis_tkeep          (m_axis_tkeep),
      .m_axis_tvalid         (m_axis_tvalid),
      .m_axis_tlast          (m_axis_tlast),
      .m_axis_tready         (m_axis_tready)
   );
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Debug
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   // synthesis translate_off
   debug_signal_capture #(
      .C_CAPTURE_ENABLE      (0),
      .C_AXIS_WIDTH          (TDATA_NUM_BYTES*8),
      .C_METADATA_WIDTH      (USER_META_DATA_WIDTH),
      .C_LOG_FILENAME        ("ipsec_bd_sdnet_0_3_stream_in.log")
   ) debug_input_signal_capture_inst (
      // clock & resets
      .aclk                  (s_axis_aclk),
      .aresetn               (s_axis_aresetn_i),
      // metadata
      .user_metadata         (user_metadata_in),
      .user_metadata_valid   (user_metadata_in_valid),
      // AXIS monitor interface
      .mon_axis_tdata        (s_axis_tdata),
      .mon_axis_tkeep        (s_axis_tkeep),
      .mon_axis_tvalid       (s_axis_tvalid),
      .mon_axis_tlast        (s_axis_tlast),
      .mon_axis_tready       (s_axis_tready)
   );
   
   debug_signal_capture #(
      .C_CAPTURE_ENABLE      (0),
      .C_AXIS_WIDTH          (TDATA_NUM_BYTES*8),
      .C_METADATA_WIDTH      (USER_META_DATA_WIDTH),
      .C_LOG_FILENAME        ("ipsec_bd_sdnet_0_3_stream_out.log")
   ) debug_output_signal_capture_inst (
      // clock & resets
      .aclk                  (s_axis_aclk),
      .aresetn               (s_axis_aresetn_i),
      // metadata
      .user_metadata         (user_metadata_out),
      .user_metadata_valid   (user_metadata_out_valid),
      // AXIS monitor interface
      .mon_axis_tdata        (m_axis_tdata),
      .mon_axis_tkeep        (m_axis_tkeep),
      .mon_axis_tvalid       (m_axis_tvalid),
      .mon_axis_tlast        (m_axis_tlast),
      .mon_axis_tready       (m_axis_tready)
   );
   
   // synthesis translate_on

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Convert from internal bus format to AXI-Stream format
   /////////////////////////////////////////////////////////////////////////////////////////////////
   
   // Re-order bytes on packet bus
   assign m_axis_tdata = { << 8 {m_axis_data} };
   
   /////////////////////////////////////////////////////////////////////////////////////////////////
   // AXI-full connections
   /////////////////////////////////////////////////////////////////////////////////////////////////
   

endmodule

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------

