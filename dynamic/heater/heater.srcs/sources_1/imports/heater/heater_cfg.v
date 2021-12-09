`timescale 1ps / 1ps
//`default_nettype none
//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2021 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
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
//////////////////////////////////////////////////////////////////////////////////
// Company:  Xilinx Inc.
// Engineer: Louis Morrison
// Revision: 1.05
// Create Date: 05/27/2020 03:33:15 PM
// Design Name:   heater_cfg
// Module Name:   heater_cfg
// Project Name: 
// Target Devices: 
// Tool Versions: 2020.1
// Description: Generates and array of toggling slices, toggling BRAMs and DSP activity. By
//              default, the design inherit what is in the INITIAL_CONF as the setup.
//              The Configuration register controls three different sections of the heater.
//              The design has an AXI4 Lite interface with 20 GPO and 20 GPI; Currently not used.
//
// Usage:       Config register
//                      _________________________________________________________________________
//                  Bit |   0    |   1    |   2    |   3    |   4    |   5    |   6    |   7    |
//                  Use |  SLC0  | SLC1   | SLC2   | SLC_EN |  BRM0  |  BRM1  |  BRM2  | BRM_EN |
//                      =========================================================================
//                  Bit |   8    |   9    |  10    |  11    |  12    |  13    |  14    |  15    |
//                  Use | DSP_EN | CFG_WR |  TBD   | RSTout | CK_SEL0| CK_SEL1| CK_SEL2| CK_EN  |
//                      =========================================================================
//                  Bit |  16    |  17    |  18    |  19    |  20    |  21    |  22    |  23    |
//                  Use |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |
//                      =========================================================================
//                  Bit |  24    |  25    |  26    |  27    |  28    |  29    |  30    |  31    |
//                  Use |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |  REV   |
//                      =========================================================================
//              SLC[2:0] and BRM[2:0] Toggle rates
//                3'b111:100% Toggle
//                3'b110: 75% Toggle
//                3'b101: 50% Toggle
//                3'b100: 47% Toggle
//                3'b011: 37% Toggle
//                3'b010: 25% Toggle
//                3'b001: 12% Toggle
//                3'b000:  0% Toggle
//              SLC_EN: Active High single bit enable
//              BRM_EN  Active High single bit enable
//              DSP_EN: Active High single bit enable, Multiplies consist of a chain, one feeding the other.
//                      The first stage has a 16bit LSFR generating a number multiplied by the SEED, the result is
//                      fed to the next multiply which again is multiplied by the seed.
//              CK_EN:  Enabled the use of the MMCM if included in the design, if 0 bypasses MMCM. Only available if `define USE_MMCM
//              CK_SEL[2:0]: BUFG MUXES to select clock outputs. only available if `define USE_MMCM
//                3'b000:  clk_in   
//                3'b001:  150.0MHz /10 
//                3'b010:  187.5MHz /8  
//                3'b011:  214.3MHz /7 
//                3'b100:  250.0MHz /6 
//                3'b101:  300.0MHz /5 
//                3'b110:  375.0MHz /4 
//                3'b111:  500.0MHz /3 
//              Example:
//                0x0000_0388 to turn on all the features with the lowest toggle rate and enable the write
//                To set the power to 50% toggle
//                0x0000_03CC
//                To set to 100% toggle rates
//                0x0000_03FF
//
// 
// Dependencies: 
// 
// Revision:1.03
// Revision 0.01 - File Created
//          0.02 - fixed lsfr by removing inv on xnor, changed slice enable
//          0.03 - Added 32-bit control interface
//          0.04 - Added AXI4-Lite interface for future XRT use.
//          1.00 - Released and added initial condition for config register.
//          1.01 - Added MMCM frequency capabilities and VIO
//          1.02 - Remove LUTRAM and VIO (did not buy anything)
//          1.03 - Added Multiply Accumulate to the DSP section 
//          1.04 - Fixed config port syncro, missing source clock input signal.
//          1.05 - Changed GPO bit assignments to have revision as top 16 bits.
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//DEFINES

//`define SIMULATION_MODE  // Define to reduce logit for simulation
//`define AXI4LITE_IF      // Define to enable the AXILITE_IF
`define USE_MMCM 1        // Define to use a MMCM frequency generator.
`define MACC
//MAIN Module
module heater_cfg # (
   //select the board you are using
   `ifdef SIMULATION_MODE
   parameter CARD               = "SIM",
   `else
   parameter CARD               = "U25N",
   `endif //Simulation mode
   
   parameter CLK_PERIOD         = CARD == "U50"  ? 10.000  :
                                  CARD == "U50C" ? 10.000  :
                                  CARD == "U55N" ? 10.000  :
                                  CARD == "U55C" ? 10.000  :
                                  CARD == "U30"  ?  3.333  : 
                                  CARD == "U200" ?  3.333  :   
                                  CARD == "U250" ?  3.333  :
                                  CARD == "U280" ? 10.000  :
                                  CARD == "U258" ? 10.000  :
                                  CARD == "AXI"  ?  4.000  : 
                                  CARD == "U25N"  ?  4.000  : 
                                  CARD == "SIM"  ? 10.000  : 10.0, //simulation uses 100Mhz 
   // clock multiplier to match 1500Mhz     
   parameter CLK_MULT           = CARD == "U50"  ? 15      :
                                  CARD == "U50C" ? 15      :
                                  CARD == "U55N" ? 15      :
                                  CARD == "U55C" ? 15      :
                                  CARD == "U30"  ?  5      :
                                  CARD == "U200" ?  5      :   
                                  CARD == "U250" ?  5      :
                                  CARD == "U280" ? 15      :
                                  CARD == "U258" ? 15      :       
                                  CARD == "AXI"  ?  6      :       
                                  CARD == "U25N"  ?  6      :       
                                  CARD == "SIM"  ? 15      : 5,      
   parameter CLK_PHASE          = 0,              //Clock Phase Adjust
   parameter CFG_ADDR           = 32'h8180_0018,  //Configuration Address created by RTL Kernel Wizard
   parameter CFG_ADDR_SZ        = 32,             //Configuration register Address Size 
   parameter CFG_SZ             = 32,             // configuration register size
   parameter EXTERNAL_MMCM      = 0,              // an external MMCM is the clock source, 1 is true.
   parameter C_S_AXI_ADDR_WIDTH = 6,              //AXI4 Lite address width
   parameter C_S_AXI_DATA_WIDTH = 32,             //AXI4 Lite Data width
   parameter SLR_REGIONS        = 1,              //SLRs in the FPGA (V35P has 2)
   parameter SLC_UTIL           = 2,              //Desired slice utilization is 75% change to >> 1 for 50% or >> 3 for 87.5%
   parameter LUT_PER_SLICE      = 4,
 `ifdef SIMULATION_MODE
   parameter  SLICE_EN          = 1'b1,           //enables the slice heater
   parameter  SLICE_MAX         = 5,              //number of slice chains. 
   parameter  SLICES_PER_ARRAY  = 5,              //number of slices to chain. 
   parameter  SLICE_TOGGLE_RATE = 3'h7,           //Slice toggle rate 8 levels 7 is 100%
   parameter  DSP_EN            = 1'b1,           //enables the DSP heater
   parameter  DSP_MAX           = 2,              //Number of DSPs
   parameter  DSP_SEED          = 16'h8228,       //Number to multiply against first lfsr
   parameter  BRAM_EN           = 1'b1,           //enables the BRAM heater
   parameter  BRAM_TOGGLE_RATE  = 3'h6,           //BRAM Toggle rate 8 levels 7 is 100%
   parameter  BRAM_MAX          = 2               //number of BRAMS
 `else // NOT SIMULATION_MODE
   parameter  SLICE_EN          = 1'b0,           //enables the slice heater
   parameter  SLICE_MAX         = 5,              //number of slice chains. 
   parameter  SLICES_PER_ARRAY  = 500,           //number of slices to chain.   
   parameter  CLOCK_SEL         = 3'h0,
   parameter  CLOCK_SEL_EN      = 1'b0,    
   parameter  SLICE_TOGGLE_RATE = 3'h0,           //Slice toggle rate 8 levels 7 is 100%
   parameter  DSP_EN            = 1'b0,           //enables the DSP heater
   parameter  DSP_MAX           = 700,            //Number of DSPs
   parameter  DSP_SEED          = 16'h8228,       //Number to multiply against first lfsr
   parameter  BRAM_EN           = 1'b0,           //enables the BRAM heater
   parameter  BRAM_TOGGLE_RATE  = 3'h0,           //BRAM Toggle rate 8 levels 7 is 100%
   parameter  BRAM_MAX          = 200             //number of BRAMS
 `endif //SIMULATION_MODE
   
) (
   input  wire                                clock,  
   input  wire                                resetn,                                                   
  `ifndef AXIL4ITE_IF                    
   input  wire                                config_clk,  
   input  wire [CFG_SZ-1:0]                   config_port,
   output wire                                dout        // tie to any pin, this prevents the carry chans from being optimized away
  `else //USE the AXI4LITE_IF
   input  wire                                S_AXI_ACLK   ,
   input  wire                                S_AXI_ARESETN,
   input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR ,
   input  wire [2 : 0]                        S_AXI_AWPROT ,
   input  wire                                S_AXI_AWVALID,
   output wire                                S_AXI_AWREADY,
   input  wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA  ,
   input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB  ,
   input  wire                                S_AXI_WVALID ,
   output wire                                S_AXI_WREADY ,
   output wire [1 : 0]                        S_AXI_BRESP  ,
   output wire                                S_AXI_BVALID ,
   input  wire                                S_AXI_BREADY ,
   input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR ,
   input  wire [2 : 0]                        S_AXI_ARPROT ,
   input  wire                                S_AXI_ARVALID,
   output wire                                S_AXI_ARREADY,
   output wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA  ,
   output wire [1 : 0]                        S_AXI_RRESP  ,
   output wire                                S_AXI_RVALID ,
   input  wire                                S_AXI_RREADY
  `endif //Not AXI4LITE_IF
);
//
// WIRE AND REGISTER DEFINITIONS
//
wire              dsp_en;            
wire              slice_en;           
wire [2:0]        slice_toggle_rate;
wire              bram_en;            
wire [2:0]        bram_toggle_rate;   
wire              cfg_port_we;
wire [2:0]        clk_sel;
wire              clk_sel_en;
wire              test_clock;
wire              mult_out, data_out, cnt_init;
wire              sdout [0:SLICE_MAX]; 
wire              CLKFBOUT, CLKFBIN, mmcm_clock_out;
wire              CLKOUT0, CLKOUT1, CLKOUT2, CLKOUT3, CLKOUT4, CLKOUT5, CLKOUT6;
wire              CLKMUXOUT0, CLKMUXOUT1, CLKMUXOUT2, CLKMUXOUT3, CLKMUXOUT4;
wire              test_resetn;
reg               config_resetn;
wire              config_resetn_int;

wire [CFG_SZ-1:0] config_port_sync;

`ifdef AXILITE_IF
wire              dout;          //not toplevel ports
wire [CFG_SZ-1:0] config_port;   //not toplevel ports
//20 32bit input registers and 20 32bit outputs registers from the AXI interface
wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg00,gpo_reg01,gpo_reg02,gpo_reg03,gpo_reg04,gpo_reg05,gpo_reg06,gpo_reg07;
wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg08,gpo_reg09,gpo_reg10,gpo_reg11,gpo_reg12,gpo_reg13,gpo_reg14,gpo_reg15;
wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg16,gpo_reg17,gpo_reg18,gpo_reg19;
wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg00,gpi_reg01,gpi_reg02,gpi_reg03,gpi_reg04,gpi_reg05,gpi_reg06,gpi_reg07;
wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg08,gpi_reg09,gpi_reg10,gpi_reg11,gpi_reg12,gpi_reg13,gpi_reg14,gpi_reg15;
wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg16,gpi_reg17,gpi_reg18,gpi_reg19;


assign config_port = gpo_reg00; //assign the config port to register 0
assign gpi_reg00   = config_port;
`endif //AXI4LITE_IF
//

//clock to test_clock synchro
sync_cell # ( .C_DW         ( 32),
              .C_SYNC_STAGE (  4)
             ) sync_config_port_i (
  .dest_resetn    (           test_resetn ),
  .src_resetn    (           config_resetn ),
  .src_clk   (       config_clk ),
  .src_data  (      config_port ),
  .dest_data ( config_port_sync ),
  .dest_clk  (            test_clock ) 
);            

   // xpm_cdc_sync_rst: Synchronous Reset Synchronizer
   // Xilinx Parameterized Macro, version 2020.1

   xpm_cdc_sync_rst #(
      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
      .INIT(1),           // DECIMAL; 0=initialize synchronization registers to 0, 1=initialize synchronization
                          // registers to 1
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .SIM_ASSERT_CHK(0)  // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   )
   xpm_cdc_sync_rst_inst (
      .dest_rst(config_resetn_int), // 1-bit output: src_rst synchronized to the destination clock domain. This output
                           // is registered.

      .dest_clk(config_clk), // 1-bit input: Destination clock.
      .src_rst(resetn)    // 1-bit input: Source reset signal.
   );

always @ (posedge config_clk)
    config_resetn <= config_resetn_int;

//
// ASSIGNEMENTS
//
// Heater configuration regiester definitions
//
assign cfg_port_we       = config_port_sync[9];
assign slice_toggle_rate = cfg_port_we ? config_port_sync[2:0]  : SLICE_TOGGLE_RATE;
assign slice_en          = cfg_port_we ? config_port_sync[3]    : SLICE_EN;         
assign bram_toggle_rate  = cfg_port_we ? config_port_sync[6:4]  : BRAM_TOGGLE_RATE; 
assign bram_en           = cfg_port_we ? config_port_sync[7]    : BRAM_EN;          
assign dsp_en            = cfg_port_we ? config_port_sync[8]    : DSP_EN;
assign clk_sel           = cfg_port_we ? config_port_sync[14:12]: CLOCK_SEL;
assign clk_sel_en        = cfg_port_we ? config_port_sync[15]   : CLOCK_SEL_EN;
          
assign sdout[0]          = cnt_init;
assign dout              = sdout[SLICE_MAX];
assign cnt_init          = data_out ^ mult_out;

//
// MODULE INSTANTIATIONS
//

//
//Instantiate the multipliers 
//
mult_array_cfg #(
  .MAX_DSPS       (           DSP_MAX),
  .SEEDA          (          DSP_SEED)
  ) multipliers_i (
  .clock          (        test_clock),
  .dsp_en         (            dsp_en),
  .dout           (          mult_out),
  .resetn         (            test_resetn)
  );

//
//Instantiate the Slice Array of Arrays 
//

slice_array_gen # (
    .SLICES_PER_ARRAY (  SLICES_PER_ARRAY),
    .SLICE_MAX        (         SLICE_MAX)
  ) slices_i (      
    .clock            (        test_clock),
    .slice_en         (          slice_en),
    .slice_toggle_rate( slice_toggle_rate),		 
    .dout             (              dout),
    .cnt_init         (          cnt_init),
    .resetn           (            test_resetn)
  );         
 
//
//Instantiate the BRAMS 
//
 
bram_gen_cfg #(
     .LENGTH         (          BRAM_MAX)
   ) brams_i (       
    .clk             (        test_clock),
    .bram_en         (           bram_en),
    .bram_toggle_rate(  bram_toggle_rate),
    .resetn          (            test_resetn),
    .data_out        (          data_out) 
   );
     
//
//Instantiate the MMCM if no external MMCM used or not
//
generate
if (EXTERNAL_MMCM == 0 && `USE_MMCM == 1) begin 
clock_sel # (
    .CLK_MULT        (      CLK_MULT    ), 
    .CLK_PHASE       (      CLK_PHASE   ), 
    .CLK_PERIOD      (      CLK_PERIOD  ) 
    ) clock_sel_i (       
    .clk_in          (             clock),
    .clk_out         (        test_clock),
    .clk_sel         (           clk_sel),
    .resetn          (            resetn),
    .resetn_out      (       test_resetn),
    .clk_sel_en      (        clk_sel_en) 
   );
end else begin
 assign test_clock = clock;
 assign test_resetn = resetn;
end
endgenerate


//
//Instantiate the AXI-LITE interface with 20 gpo and 20 gpi (32 bit registers)
//
`ifdef AXI4LITE_IF
axi_slave_gpio2by20 axi_slave_gpio2by20_u
          (
          .ACLK      ( ACLK    ),
          .ARESETn   ( ARESETn ),
          .AWADDR    ( AWADDR  ),
          .AWPROT    ( AWPROT  ),
          .AWVALID   ( AWVALID ),
          .AWREADY   ( AWREADY ),
          .WDATA     ( WDATA   ),
          .WSTRB     ( WSTRB   ),
          .WVALID    ( WVALID  ),
          .WREADY    ( WREADY  ),
          .BRESP     ( BRESP   ),
          .BVALID    ( BVALID  ),
          .BREADY    ( BREADY  ),
          .ARADDR    ( ARADDR  ),
          .ARPROT    ( ARPROT  ),
          .ARVALID   ( ARVALID ),
          .ARREADY   ( ARREADY ),
          .RDATA     ( RDATA   ),
          .RRESP     ( RRESP   ),
          .RVALID    ( RVALID  ),
          .RREADY    ( RREADY  ),
           //Master to Slave read only to PL
	   //GPO registers
          .gpo_reg00 (gpo_reg00),
          .gpo_reg01 (gpo_reg01),
          .gpo_reg02 (gpo_reg02),
          .gpo_reg03 (gpo_reg03),
          .gpo_reg04 (gpo_reg04),
          .gpo_reg05 (gpo_reg05),
          .gpo_reg06 (gpo_reg06),
          .gpo_reg07 (gpo_reg07),
          .gpo_reg08 (gpo_reg08),
          .gpo_reg09 (gpo_reg09),
          .gpo_reg10 (gpo_reg10),
          .gpo_reg11 (gpo_reg11),
          .gpo_reg12 (gpo_reg12),
          .gpo_reg13 (gpo_reg13),
          .gpo_reg14 (gpo_reg14),
          .gpo_reg15 (gpo_reg15),
          .gpo_reg16 (gpo_reg16),
          .gpo_reg17 (gpo_reg17),
          .gpo_reg18 (gpo_reg18),
          .gpo_reg19 (gpo_reg19),
           //Slave to Master Read Only to Master read/write to PL
	   //GPI registers
          .gpi_reg00 (gpi_reg00),
          .gpi_reg01 (gpi_reg01),
          .gpi_reg02 (gpi_reg02),
          .gpi_reg03 (gpi_reg03),
          .gpi_reg04 (gpi_reg04),
          .gpi_reg05 (gpi_reg05),
          .gpi_reg06 (gpi_reg06),
          .gpi_reg07 (gpi_reg07),
          .gpi_reg08 (gpi_reg08),
          .gpi_reg09 (gpi_reg09),
          .gpi_reg10 (gpi_reg10),
          .gpi_reg11 (gpi_reg11),
          .gpi_reg12 (gpi_reg12),
          .gpi_reg13 (gpi_reg13),
          .gpi_reg14 (gpi_reg14),
          .gpi_reg15 (gpi_reg15),
          .gpi_reg16 (gpi_reg16),
          .gpi_reg17 (gpi_reg17),
          .gpi_reg18 (gpi_reg18),
          .gpi_reg19 (gpi_reg19)

          );
`endif //AXI4LITE_IF
endmodule //end of heater       
`ifdef USE_MMCM
//
// Clock Mux for selecting MMCM or user clock
//
module clock_sel # (
    parameter CLK_MULT    = 15,
    parameter CLK_PHASE   = 0,
    parameter CLK_PERIOD  = 10
    ) (       
    input   wire       clk_in    ,
    output  wire       clk_out   ,
    input   wire [2:0] clk_sel   ,
    input   wire       resetn    ,
    output  reg        resetn_out,
    input   wire       clk_sel_en
   );

reg  [6:0]        freq_sel;   
wire clk_out_int;
wire resetn_out_int;
   
//BUFGMUX #(
//    .CLK_SEL_TYPE("SYNC")  // ASYNC, SYNC
// )
// BUFGMUX_inst (
//    .O(clk_out),   // 1-bit output: Clock output
//    .I0(clk_in),    // 1-bit input: Clock input (S=0)
//    .I1(mmcm_clock_out), // 1-bit input: Clock input (S=1)
//    .S(clk_sel_en)    // 1-bit input: Clock select
// );
`ifdef BUFG_FEEDBACK	
BUFG BUFG_FBCLK (
      .O(CLKFBIN), // 1-bit output: Clock output
      .I(CLKFBOUT)  // 1-bit input: Clock input
   );
`else //no BUFG on MMCM feedback path
assign CLKFBIN = CLKFBOUT;
`endif



// XPM_CDC instantiation template for Synchronous Reset Synchronizer configurations
// Refer to the targeted device family architecture libraries guide for XPM_CDC documentation
// =======================================================================================================================

// Parameter usage table, organized as follows:
// +---------------------------------------------------------------------------------------------------------------------+
// | Parameter name       | Data type          | Restrictions, if applicable                                             |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | DEST_SYNC_FF         | Integer            | Range: 2 - 10. Default value = 4.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Number of register stages used to synchronize signal in the destination clock domain.                               |
// +---------------------------------------------------------------------------------------------------------------------+
// | INIT                 | Integer            | Allowed values: 1, 0. Default value = 1.                                |
// |---------------------------------------------------------------------------------------------------------------------|
// | 0- Initializes synchronization registers to 0                                                                       |
// | 1- Initializes synchronization registers to 1                                                                       |
// | The option to initialize the synchronization registers means that there is no complete x-propagation behavior       |
// | modeled in this macro. For complete x-propagation modelling, use the xpm_cdc_single macro.                          |
// +---------------------------------------------------------------------------------------------------------------------+
// | INIT_SYNC_FF         | Integer            | Allowed values: 0, 1. Default value = 0.                                |
// |---------------------------------------------------------------------------------------------------------------------|
// | 0- Disable behavioral simulation initialization value(s) on synchronization registers.                              |
// | 1- Enable behavioral simulation initialization value(s) on synchronization registers.                               |
// +---------------------------------------------------------------------------------------------------------------------+
// | SIM_ASSERT_CHK       | Integer            | Allowed values: 0, 1. Default value = 0.                                |
// |---------------------------------------------------------------------------------------------------------------------|
// | 0- Disable simulation message reporting. Messages related to potential misuse will not be reported.                 |
// | 1- Enable simulation message reporting. Messages related to potential misuse will be reported.                      |
// +---------------------------------------------------------------------------------------------------------------------+

// Port usage table, organized as follows:
// +---------------------------------------------------------------------------------------------------------------------+
// | Port name      | Direction | Size, in bits                         | Domain  | Sense       | Handling if unused     |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | dest_clk       | Input     | 1                                     | NA      | Rising edge | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Destination clock.                                                                                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | dest_rst       | Output    | 1                                     | dest_clk| NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | src_rst synchronized to the destination clock domain. This output is registered.                                    |
// +---------------------------------------------------------------------------------------------------------------------+
// | src_rst        | Input     | 1                                     | NA      | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Source reset signal.                                                                                                |
// +---------------------------------------------------------------------------------------------------------------------+


// xpm_cdc_sync_rst : In order to incorporate this function into the design,
//     Verilog      : the following instance declaration needs to be placed
//     instance     : in the body of the design code.  The instance name
//   declaration    : (xpm_cdc_sync_rst_inst) and/or the port declarations within the
//       code       : parenthesis may be changed to properly reference and
//                  : connect this function to the design.  All inputs
//                  : and outputs must be connected.

//  Please reference the appropriate libraries guide for additional information on the XPM modules.

//  <-----Cut code below this line---->

   // xpm_cdc_sync_rst: Synchronous Reset Synchronizer
   // Xilinx Parameterized Macro, version 2020.1

   xpm_cdc_sync_rst #(
      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
      .INIT(1),           // DECIMAL; 0=initialize synchronization registers to 0, 1=initialize synchronization
                          // registers to 1
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .SIM_ASSERT_CHK(0)  // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   )
   xpm_cdc_sync_rst_inst (
      .dest_rst(resetn_out_int), // 1-bit output: src_rst synchronized to the destination clock domain. This output
                           // is registered.

      .dest_clk(clk_out_int), // 1-bit input: Destination clock.
      .src_rst(resetn)    // 1-bit input: Source reset signal.
   );

   // End of xpm_cdc_sync_rst_inst instantiation
always @ (posedge clk_out_int)
    resetn_out <= resetn_out_int;
				
			

assign clk_out = clk_out_int;

//
//Instantiate the MMCM and buffer muxes 
//

   MMCME4_BASE #(
      .BANDWIDTH           ( "OPTIMIZED"  ),  
      .CLKFBOUT_MULT_F     ( CLK_MULT     ),
      .CLKFBOUT_PHASE      ( CLK_PHASE    ),
      .CLKIN1_PERIOD       ( CLK_PERIOD   ),
      .CLKOUT0_DIVIDE_F    ( 10           ),
      .CLKOUT0_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT0_PHASE       ( 0.0          ),
      .CLKOUT1_DIVIDE      ( 8            ),
      .CLKOUT1_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT1_PHASE       ( 0.0          ),
      .CLKOUT2_DIVIDE      ( 7            ),
      .CLKOUT2_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT2_PHASE       ( 0.0          ),
      .CLKOUT3_DIVIDE      ( 6            ),
      .CLKOUT3_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT3_PHASE       ( 0.0          ),
      .CLKOUT4_CASCADE     ( "FALSE"      ),
      .CLKOUT4_DIVIDE      ( 5            ),
      .CLKOUT4_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT4_PHASE       ( 0.0          ),
      .CLKOUT5_DIVIDE      ( 4            ),
      .CLKOUT5_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT5_PHASE       ( 0.0          ),
      .CLKOUT6_DIVIDE      ( 3            ),
      .CLKOUT6_DUTY_CYCLE  ( 0.5          ),
      .CLKOUT6_PHASE       ( 0.0          ),
      .DIVCLK_DIVIDE       ( 1            ),
      .IS_CLKFBIN_INVERTED ( 1'b0         ),
      .IS_CLKIN1_INVERTED  ( 1'b0         ),
      .IS_PWRDWN_INVERTED  ( 1'b0         ),
      .IS_RST_INVERTED     ( 1'b0         ),
      .REF_JITTER1         ( 0.0          ),
      .STARTUP_WAIT        ( "FALSE"      )
   )
   MMCME4_BASE_inst (
      .CLKFBOUT            ( CLKFBOUT    ),
      .CLKFBOUTB           (             ),
      .CLKOUT0             ( CLKOUT0     ),
      .CLKOUT0B            (             ),
      .CLKOUT1             ( CLKOUT1     ),
      .CLKOUT1B            (             ),
      .CLKOUT2             ( CLKOUT2     ),
      .CLKOUT2B            (             ),
      .CLKOUT3             ( CLKOUT3     ),
      .CLKOUT3B            (             ),
      .CLKOUT4             ( CLKOUT4     ),
      .CLKOUT5             ( CLKOUT5     ),
      .CLKOUT6             ( CLKOUT6     ),
      .LOCKED              (             ),
      .CLKFBIN             ( CLKFBIN     ),
      .CLKIN1              ( clk_in      ),
      .PWRDWN              ( 1'b0        ),
      .RST                 ( 1'b0        )
   );

`ifdef BALANCED_CLKMUX
 //three levels of muxes
 // clk_in --|
 // CLKOUT0--|-- CLKMUXOUT0 --|               
 //                           | -- CLKMUXOUT4 --|
 // CLKOUT1--|-- CLKMUXOUT1 --|                 |
 // CLKOUT2--|                                  |
 //                                             |---clk_out
 // CLKOUT3--|                                  |
 // CLKOUT4--|-- CLKMUXOUT2 --|                 |
 //                           | -- CLKMUXOUT5 --|
 // CLKOUT5--|-- CLKMUXOUT3 --| 
 // CLKOUT6--| 
               
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX0_inst (.O(CLKMUXOUT0), .I0(clk_in),     .I1(CLKOUT0),    .S(freq_sel[0]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX1_inst (.O(CLKMUXOUT1), .I0(CLKOUT1),    .I1(CLKOUT2),    .S(freq_sel[1]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX2_inst (.O(CLKMUXOUT2), .I0(CLKOUT3),    .I1(CLKOUT4),    .S(freq_sel[2]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX3_inst (.O(CLKMUXOUT3), .I0(CLKOUT5),    .I1(CLKOUT6),    .S(freq_sel[3]));
 
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX4_inst (.O(CLKMUXOUT4), .I0(CLKMUXOUT0), .I1(CLKMUXOUT1), .S(freq_sel[4]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX5_inst (.O(CLKMUXOUT5), .I0(CLKMUXOUT2), .I1(CLKMUXOUT3), .S(freq_sel[5]));
 
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX6_inst (.O(clk_out_int)   , .I0(CLKMUXOUT4), .I1(CLKMUXOUT5), .S(freq_sel[6]));
//
//Instantiate the clock mux 
//
always @(posedge clk_in)
   if (clk_sel_en)
      case (clk_sel)
         3'b000:  freq_sel[5:0] <= 6'b000_000; //clkin
         3'b001:  freq_sel[5:0] <= 6'b000_001; //CLOCKOUT0 /10
         3'b010:  freq_sel[5:0] <= 6'b000_100; //CLOCKOUT1 /8 
         3'b011:  freq_sel[5:0] <= 6'b000_110; //CLOCKOUT2 /7 
         3'b100:  freq_sel[5:0] <= 6'b100_000; //CLOCKOUT3 /5 
         3'b101:  freq_sel[5:0] <= 6'b101_000; //CLOCKOUT4 /4 
         3'b110:  freq_sel[5:0] <= 6'b110_000; //CLOCKOUT5 /3 
         3'b111:  freq_sel[5:0] <= 6'b111_000; //CLOCKOUT6 /2 
         default: freq_sel[5:0] <= 6'b000_000; //clkin 
      endcase
`else //daisy-chain gives faster timing path for faster clocks.
 //three levels of muxes
 // clk_in --|
 //          |-- CLKMUXOUT0 --|               
 // CLKOUT0--|                | -- CLKMUXOUT1 --|
 // CLKOUT1-------------------|                 |-- CLKMUXOUT2 --|
 // CLKOUT2-------------------------------------|                |-- CLKMUXOUT3 --|              
 // CLKOUT3------------------------------------------------------|                |-- CLKMUXOUT4 --|              
 // CLKOUT4-----------------------------------------------------------------------|                |-- CLKMUXOUT5 --|
 // CLKOUT5----------------------------------------------------------------------------------------|                |-- clk_out 
 // CLKOUT6---------------------------------------------------------------------------------------------------------| 
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX0_inst (.O(CLKMUXOUT0)    , .I0(clk_in)     , .I1(CLKOUT0), .S(freq_sel[0]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX1_inst (.O(CLKMUXOUT1)    , .I0(CLKMUXOUT0), .I1(CLKOUT1), .S(freq_sel[1]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX2_inst (.O(CLKMUXOUT2)    , .I0(CLKMUXOUT1), .I1(CLKOUT2), .S(freq_sel[2]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX3_inst (.O(CLKMUXOUT3)    , .I0(CLKMUXOUT2), .I1(CLKOUT3), .S(freq_sel[3]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX4_inst (.O(CLKMUXOUT4)    , .I0(CLKMUXOUT3), .I1(CLKOUT4), .S(freq_sel[4]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX5_inst (.O(CLKMUXOUT5)    , .I0(CLKMUXOUT4), .I1(CLKOUT5), .S(freq_sel[5]));
 BUFGMUX #(.CLK_SEL_TYPE("SYNC")) BUFGMUX6_inst (.O(clk_out_int)       , .I0(CLKMUXOUT5), .I1(CLKOUT6), .S(freq_sel[6]));
 //
//Instantiate the clock mux 
//
always @(posedge clk_in)
   if (clk_sel_en)
      case (clk_sel)
         3'b000:  freq_sel[6:0] <= 7'b0000000; //clk_in
         3'b001:  freq_sel[6:0] <= 7'b0000001; //CLOCKOUT0
         3'b010:  freq_sel[6:0] <= 7'b0000010; //CLOCKOUT1
         3'b011:  freq_sel[6:0] <= 7'b0000100; //CLOCKOUT2
         3'b100:  freq_sel[6:0] <= 7'b0001000; //CLOCKOUT3
         3'b101:  freq_sel[6:0] <= 7'b0010000; //CLOCKOUT4
         3'b110:  freq_sel[6:0] <= 7'b0100000; //CLOCKOUT5
         3'b111:  freq_sel[6:0] <= 7'b1000000; //CLOCKOUT6
         default: freq_sel[6:0] <= 7'b0000000; //clk_in
      endcase

`endif //BALANCED_CLKMUX


endmodule //clock_sel
`endif //USE_MMCM

//-----------------------------------------------------
// Design Name : slice_array_gen
// Function    : Generates and array of toggling arrays of slices
// Coder       : Louis Morrison
//-----------------------------------------------------
(* DONT_TOUCH = "yes" *)
module slice_array_gen # (
   parameter  LUTS_PER          = 4,    //number of LUT5s per slice. 
   parameter  FF_PER            = 8,     //number of FF per slice. 
   parameter  SLICE_MAX         = 5,       //number of slice chains. 
   parameter  SLICES_PER_ARRAY  = 5000,     //number of slices to chain. 
   parameter  FF_SZ             = $clog2(FF_PER)

) (
   input  wire        clock,
   input  wire        slice_en,
   input  wire  [2:0] slice_toggle_rate,
   output wire        dout,
   input  wire        cnt_init,// added to prevent optimization out.
   input  wire        resetn
   );
wire  sdout [0:SLICE_MAX]; 

assign sdout[0]          = cnt_init;
assign dout              = sdout[SLICE_MAX];



 //bug in vivado won't let more than 5000 slices
 genvar index;
  generate
     reg [2:0] slice_toggle_rate_r, slice_toggle_rate_r2;
     always @( posedge clock ) begin : pipeline
        if (~resetn) begin
           slice_toggle_rate_r = 0;
           slice_toggle_rate_r2 = 0;
        end else begin
           slice_toggle_rate_r = slice_toggle_rate;
           slice_toggle_rate_r2 = slice_toggle_rate_r;
        end
     
     end  
     for (index = 0; index < (SLICE_MAX); index = index + 1) begin: slice_array_generate
        slice_array_cfg # (
          .SLICES_PER_ARRAY (  SLICES_PER_ARRAY),
          .SLICE_MAX        (         SLICE_MAX)
        ) slices_i (      
          .clock            (                clock),
          .slice_en         (             slice_en),
          .slice_toggle_rate( slice_toggle_rate_r2),		 
          .dout             (       sdout[index+1]),
          .cnt_init         (         sdout[index]),
          .resetn           (               resetn)
        );  
     end  
  endgenerate  //slice_array_generate
endmodule  //slice_array_gen
//-----------------------------------------------------
// Design Name : slice_array
// Function    : Generates and array of toggling slices
// Coder       : Louis Morrison
//-----------------------------------------------------
(* DONT_TOUCH = "yes" *)
module slice_array_cfg # (
   parameter  LUTS_PER          = 4,    //number of LUT5s per slice. 
   parameter  FF_PER            = 4,     //number of FF per slice. 
   parameter  SLICE_MAX         = 5,       //number of slice chains. 
   parameter  SLICES_PER_ARRAY  = 5000,     //number of slices to chain. 
   parameter  FF_SZ             = $clog2(FF_PER)

) (
   input  wire        clock,
   input  wire        slice_en,
   input  wire  [2:0] slice_toggle_rate,
   output wire        dout,
   input  wire        cnt_init,// added to prevent optimization out.
   input  wire        resetn
   );

 wire [FF_PER-1:0] data [0:SLICES_PER_ARRAY]; 
 reg  [3:0] count;
 reg  [FF_PER-1:0] din;
// (* dont_touch = "yes" *) wire [3:0] dout; // need to keep or will be optimized out

 assign data[0] = din;
 assign dout  = ~^data[SLICES_PER_ARRAY] & cnt_init;
 
 //simple toggle counter
 always @ (posedge clock)
   begin 
      if (~resetn)
         count <= 0;
      else 
         count <= count+1'b1;
   end
 //Parameter defined Toggle rate selector
 always @ (posedge clock)
   begin 
      if (~resetn)
         din <= 0;
      else
         case ( slice_toggle_rate )
           3'b111: din[FF_PER-1:0] <= {count[0], count[0], count[0], count[0],count[0], count[0], count[0], count[0]};  // 100% Toggle
           3'b110: din[FF_PER-1:0] <= {count[1], count[0], count[1], count[0],count[1], count[0], count[1], count[0]};  //  75% Toggle
           3'b101: din[FF_PER-1:0] <= {count[1], count[1], count[1], count[1],count[1], count[1], count[1], count[1]};  //  50% Toggle
           3'b100: din[FF_PER-1:0] <= {count[3], count[2], count[1], count[0],count[3], count[2], count[1], count[0]};  //  47% Toggle
           3'b011: din[FF_PER-1:0] <= {count[2], count[1], count[2], count[1],count[2], count[1], count[2], count[1]};  //  37% Toggle
           3'b010: din[FF_PER-1:0] <= {count[2], count[2], count[2], count[2],count[2], count[2], count[2], count[2]};  //  25% Toggle
           3'b001: din[FF_PER-1:0] <= {count[3], count[3], count[3], count[3],count[3], count[3], count[3], count[3]};  //  12% Toggle
           3'b000: din[FF_PER-1:0] <= 'd0;                                                                              //   0% Toggle
         endcase
    end
 //generate statment for stitcing Slices together
 genvar index;
 generate
    for (index = 0; index < (SLICES_PER_ARRAY); index = index + 1) 
    begin: slice_lut_gen_cfg
       (* DONT_TOUCH = "yes" *)slice_unit #(
          .LUTS_PER(                 LUTS_PER),    //number of LUT5s per slice. 
          .FF_PER  (                   FF_PER)     //number of FF per slice. 
       ) slice_unit_i (
           .clk    (                    clock),
           .din    (  data[index][FF_PER-1:0]),
           .dout   (data[index+1][FF_PER-1:0]),
           .enable (                 slice_en),
           .resetn (                   resetn)
          );
    end
 endgenerate
 
endmodule //slice_array


//-----------------------------------------------------
// Design Name : slice_unit
// Function    : stitches four LUTs and FF together
// Coder       : Louis Morrison
// Desc        : Builds a toggling Slice
//             : UltraScale CLB has 2 Slices with 4 LUTs and 8 FF
//-----------------------------------------------------

(* DONT_TOUCH = "yes" *)
module slice_unit # (
   parameter  LUTS_PER        = 4,    //number of LUT5s per slice. 
   parameter  FF_PER          = 8      //number of FF per slice. 
  ) (
   input  wire               clk,
   input  wire               enable,
   input  wire               resetn,
   input  wire [FF_PER-1:0]  din,
   output wire [FF_PER-1:0]  dout
  );
// 4 Flops get lut outputs and 4 Flops get din values
  wire [3:0] dw;
  wire [FF_PER-1:0] ffdata;
  
  assign dout = ffdata;
  
//SLICEL Units
  LUT4 #(.INIT(16'hFF96)) dl0 (.I0(din[2]),.I1(din[1]),.I2(din[3]),.I3(din[0]),.O(dw[0]));
  LUT4 #(.INIT(16'hFF96)) dl1 (.I0(din[3]),.I1(din[0]),.I2(din[2]),.I3(din[1]),.O(dw[1]));
  LUT4 #(.INIT(16'hFF96)) dl2 (.I0(din[0]),.I1(din[1]),.I2(din[3]),.I3(din[2]),.O(dw[2]));
  LUT4 #(.INIT(16'hFF96)) dl3 (.I0(din[1]),.I1(din[0]),.I2(din[2]),.I3(din[3]),.O(dw[3]));
  // Eight Flops per 
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr0 (.C(clk),.CE(enable),.D( dw[0]),.Q(ffdata[0]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr1 (.C(clk),.CE(enable),.D( dw[1]),.Q(ffdata[1]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr2 (.C(clk),.CE(enable),.D( dw[2]),.Q(ffdata[2]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr3 (.C(clk),.CE(enable),.D( dw[3]),.Q(ffdata[3]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr4 (.C(clk),.CE(enable),.D(din[0]),.Q(ffdata[4]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr5 (.C(clk),.CE(enable),.D(din[1]),.Q(ffdata[5]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr6 (.C(clk),.CE(enable),.D(din[2]),.Q(ffdata[6]),.R(~resetn));
  (* XILINX_LEGACY_PRIM = "FDE" *) FDRE #(.INIT(1'b0)) dr7 (.C(clk),.CE(enable),.D(din[3]),.Q(ffdata[7]),.R(~resetn));

endmodule //slice_unit

//-----------------------------------------------------
// Design Name : mult_array
// Function    : generates and aray of multipliers
// Coder       : Louis Morrison
//-----------------------------------------------------

(* DONT_TOUCH = "yes" *)
module mult_array_cfg # (
   parameter  MAX_DSPS      = 700,
   parameter  SEEDA         = 16'h8228
) (
   input  wire        clock,
   output wire        dout,
   input  wire        dsp_en,          
   input  wire        resetn
   );

 wire [39:0] data [0:MAX_DSPS]; // need to keep or will be optimized out
 wire [15:0] indata, a;
//(* keep = "true" *) wire [47:0] dout; // goes no where, need to keep or will be optimized out

 assign data[0] = {indata, indata}; //first data generated by lsfr
 assign dout    = ~^data[MAX_DSPS];

 //lsfr to generate random numbers
 lfsr16 lfsr16_inst   (
    .lsfr_out (       indata), //output reg  [15:0] lsfr_out ,  // Output of the counter
    .enable   (         1'b1), //input  wire        enable   ,  // Enable  for counter
    .clk      (        clock), //input  wire        clk      ,  // clock input
    .resetn   (       resetn) //input  wire        resetn     // reset input
 );
 
 // generate to stitch multiplies together
 genvar index;
 generate
    for (index = 0; index < (MAX_DSPS); index = index + 1) 
    begin: mult_unit 
       mult16x16  # (
           .SIZEIN (16),
           .SIZEOUT(40)
         )mult_i(
           .clk    (                   clock),
           .dsp_in1(       data[index][15:0]),
           .dsp_in2(                   SEEDA),
           .dsp_out(           data[index+1]),
           .en_dsp (                  dsp_en),
           .resetn (                  resetn)
          );
    end
 endgenerate
 
endmodule //mult_array

//-----------------------------------------------------
// Design Name : mult16x16
// Function    : 16 bit multiplier 48 out for DSP48
// Coder       : Louis Morrison
//-----------------------------------------------------
(* DONT_TOUCH = "yes" *)
(*USE_DSP ="yes"*)
module mult16x16 # (
   parameter  SIZEIN         = 16,
   parameter  SIZEOUT        = 40
)(
   output wire [SIZEOUT-1:0] dsp_out  ,  // Output of result trimmed
   input  wire [SIZEIN-1:0]  dsp_in1, dsp_in2   ,  // input number 1
   input  wire               en_dsp   ,  // Enable  for counter
   input  wire               clk      ,  // clock input
   input  wire               resetn      // reset input
);
`ifndef MACC
   reg [SIZEOUT-1:0] out;
   always @(posedge clk)
   if (~resetn) begin 
     out <= 48'b0 ;
   end else if (en_dsp) begin 
     out <= dsp_in2 * dsp_in1;
   end 
   assign dsp_out = out;
`else // USE MACC
   //  Multiply-accumulate unit
   // Declare registers for intermediate values
   reg signed [SIZEIN-1:0]   dsp_in1_reg, dsp_in2_reg;
   reg                       sload_reg;
   reg signed [2*SIZEIN-1:0] mult_reg;
   reg signed [SIZEOUT-1:0]  adder_out, old_result;
   
   always @(sload_reg or adder_out or resetn)
   begin
    if (~resetn)
       old_result <= 0;
    else
     // 'sload' is now and opens the accumulation loop.
     // The accumulator takes the next multiplier output
     // in the same cycle.
       old_result <= adder_out;
   end
   
   always @(posedge clk)
    if (en_dsp)
     begin
       dsp_in1_reg  <= dsp_in1;
       dsp_in2_reg  <= dsp_in2;
       mult_reg     <= dsp_in1_reg * dsp_in2_reg;
       sload_reg    <= resetn;
       adder_out    <= old_result + mult_reg;
    end
   
   // Output accumulation result
   assign dsp_out = adder_out;

`endif			
				
endmodule //mult16x16

//-----------------------------------------------------
// Design Name : lfsr16
// Function    : 16 bit Linear feedback shift register
// Coder       : Louis Morrison
//-----------------------------------------------------
(* DONT_TOUCH = "yes" *)
module lfsr16   (
output wire [15:0] lsfr_out ,  // Output of the counter
input  wire        enable   ,  // Enable  for counter
input  wire        clk      ,  // clock input
input  wire        resetn     // reset input
);

reg  [16:0] out;
wire        linear_feedback;
//taps: 16 15 13 4 -> feedback polynomial: x^16 + x^15 + x^13 + x^4 + 1
assign linear_feedback = out[16] ^~ out[15] ^~ out[13] ^~ out[4];
assign lsfr_out = out[15:0];

always @(posedge clk)
if (~resetn) begin : lfsr_bitshift
  out <= 17'b0 ;
end else if (enable) begin 
  out <= {out[15:0], linear_feedback};
end 

endmodule //lsfr_16

//-----------------------------------------------------
// Design Name : bram_gen
// Function    : infers data generator and BRAM Block
// Coder       : Louis Morrison
//-----------------------------------------------------
module bram_gen_cfg #(
   parameter  LENGTH         = 200
   )
   (
    input  wire       clk, 
	input  wire       bram_en, 
    input  wire [2:0] bram_toggle_rate, 
    input  wire       resetn,
    output wire       data_out
   );

wire [1:0] pattern_0;
wire [1:0] dout0;

//
// Data pattern generator 2-bits
//
data_gen_cfg data_generator_inst ( 
          .clk         (             clk), 
          .en          (         bram_en), 
          .toggle      (bram_toggle_rate), 
          .resetn      (          resetn),
          .pattern     (  pattern_0[1:0])
          );

//
// Array of BRAMs
//
brams_cfg #(
         .LENGTH    (           LENGTH)
         ) bram_array_inst (
         .clk       (              clk),
         .bram_en   (          bram_en),
         .resetn    (           resetn),
         .din       (   pattern_0[1:0]),
         .dout      (       dout0[1:0])
         );
//
// Output net to prevent trimming
//
assign data_out = dout0[1] & dout0[0];

endmodule //bram_gen

//-----------------------------------------------------
// Design Name : brams
// Function    : Generates BRAMs with toggling read and write
// Coder       : Louis Morrison
//-----------------------------------------------------
module brams_cfg #(
     parameter LENGTH    = 900  // Default
   ) 
   ( 
     input  wire        clk, 
     input  wire        bram_en, 
     input  wire [1:0]  din,
     input  wire        resetn,
     output wire [1:0]  dout
   );

(* keep = "true" *) wire  [1:0] data_w[0:LENGTH];

assign data_w[0] = din;

generate 
  genvar i;
  for (i=0; i<LENGTH; i=i+1) 
  begin : bram_gen_loop
     bram_unit_cfg bram_unit_inst (
        .clk     (        clk),
        .bram_en (    bram_en),
        .resetn  (     resetn),
        .din     (  data_w[i]),
        .dout    (data_w[i+1])
     );
   end
endgenerate 


assign dout = data_w[LENGTH];

endmodule //brams

//-----------------------------------------------------
// Design Name : data_gen_2
// Function    : Selects Data patern for BRAMs (2bits)
// Coder       : Louis Morrison
//-----------------------------------------------------
module data_gen_cfg (
   input  wire        clk,
   input  wire        en,
   input  wire [2:0]  toggle,
   input  wire        resetn,
   output wire [1:0]  pattern
);

   reg    [2:0]  count;
   reg    [1:0]  data;

   always @ ( posedge clk )
   begin 
      if (~resetn || ~en)
         count <= 0;
      else
         count <= count+1'b1;
   end

   always @ (posedge clk)
   begin 
      if (~resetn)
         data <= 0;
      else
         case (toggle)
           3'b111: data[1:0] <= {1'b1,     1'b1    };  // 100% 100%   ??mA
           3'b110: data[1:0] <= {1'b1,     count[0]};  // 100%  50%   ??mA
           3'b101: data[1:0] <= {1'b1,     count[2]};  // 100%  12%   ??mA
           3'b100: data[1:0] <= {count[0], count[0]};  //  50%  50%   ??mA
           3'b011: data[1:0] <= {count[0], count[2]};  //  50%  12%   ??mA
           3'b010: data[1:0] <= {1'b0,     count[0]};  //   0%  50%   ??mA
           3'b001: data[1:0] <= {1'b0,     count[2]};  //   0%  12%   ??mA
           3'b000: data[1:0] <= {1'b0,     1'b0    };  //   0%   0%   ??mA
         endcase
    end
    assign pattern = data;
    
endmodule //data_gen_2

//-----------------------------------------------------
// Design Name : bram_unit
// Function    : creates 1 BRAM 4 registers and a LUT
// Coder       : Louis Morrison
//-----------------------------------------------------

module bram_unit_cfg (
   input  wire       clk,
   input  wire       bram_en,
   input  wire       resetn,
   input  wire [1:0] din,
   output reg  [1:0] dout
  ); 

(* keep = "true" *) reg    [ 9:0] addr_a;
(* keep = "true" *) reg    [ 9:0] addr_b;
(* keep = "true" *) wire   [35:0] data_a;
(* keep = "true" *) wire   [35:0] data_b;
reg   ena, enb;     
reg   toggle_a;     
reg   toggle_b;     
                    
   always @ (posedge clk) begin
     //if (~resetn || ~bram_en) begin
     if (~resetn ) begin
        dout[1:0] <= 'd0;
        toggle_a  <= 'd0;
        toggle_b  <= 'd0;
        addr_a    <= 'd0;
        addr_b    <= 'd0;
        ena       <= 'd0;
        enb       <= 'd0;   
     end            
     else if (bram_en) begin     
        dout[1:0] <= (data_a[1] == data_a[0]) ? din[1:0]  : {din[0], din[1]};
        toggle_a  <= toggle_a ^ din[0];
        toggle_b  <= toggle_b ^ din[1];
        addr_a    <= { toggle_a, 3'b0, toggle_a, 3'b0, toggle_a};
        addr_b    <= { toggle_b, 3'b0, toggle_b, 3'b0, toggle_b};
        ena <= din[0];
        enb <= din[1];
     end            
   end              
//BRAM Instance     
   us_bram bram_i ( 
    .clka (         clk),      
    .clkb (         clk),
    .ena  (         ena), 
    .enb  (         enb),
    .wea  (        1'b0),        
    .web  (        1'b0),
    .addra( addr_a[9:0]),      
    .addrb( addr_b[9:0]),
    .dina (data_b[35:0]),      
    .dinb (data_a[35:0]),
    .douta(data_a[35:0]),      
    .doutb(data_b[35:0])
    );              
	
endmodule //bram_unit

`ifdef AXI4LITE_IF
//-----------------------------------------------------
// Design Name : axi_slave_gpio2by20
// Function    : creates AXI4LITE Slave GPIO
//                1) 20 GPO, read/write registers by master and read only by slave
//                   Address Range: 0x00-0x13
//                1) 20 GPI, read/write registers by slave and read only by master
//                   Address Range: 0x14-0x27
// Coder       : Louis Morrison
//-----------------------------------------------------
                    
module axi_slave_gpio2by20 #
(
        // Width of S_AXI data bus
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        // Width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH    = 8
)
(
        //Master to Slave side Read/Write to Master read only to PL
		//GPI registers
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg00,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg01,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg02,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg03,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg04,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg05,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg06,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg07,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg08,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg09,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg10,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg11,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg12,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg13,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg14,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg15,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg16,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg17,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg18,
        output wire [C_S_AXI_DATA_WIDTH-1:0]    gpo_reg19,
        //Slave to Master Read Only to Master read/write to PL
		//GPO registers
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg00,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg01,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg02,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg03,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg04,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg05,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg06,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg07,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg08,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg09,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg10,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg11,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg12,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg13,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg14,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg15,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg16,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg17,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg18,
        input  wire [C_S_AXI_DATA_WIDTH-1:0]    gpi_reg19,

        // User ports ends
        // Do not modify the ports beyond this line

        // Global Clock Signal
        input wire  S_AXI_ACLK,
        // Global Reset Signal. This Signal is Active LOW
        input wire  S_AXI_ARESETN,
        // Write address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_AWPROT,
        // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
        input wire  S_AXI_AWVALID,
        // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
        output wire  S_AXI_AWREADY,
        // Write data (issued by master, acceped by Slave) 
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
        // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.    
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
        // Write valid. This signal indicates that valid write
        // data and strobes are available.
        input wire  S_AXI_WVALID,
        // Write ready. This signal indicates that the slave
        // can accept the write data.
        output wire  S_AXI_WREADY,
        // Write response. This signal indicates the status
        // of the write transaction.
        output wire [1 : 0] S_AXI_BRESP,
        // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
        output wire  S_AXI_BVALID,
        // Response ready. This signal indicates that the master
        // can accept a write response.
        input wire  S_AXI_BREADY,
        // Read address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
        // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_ARPROT,
        // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
        input wire  S_AXI_ARVALID,
        // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
        output wire  S_AXI_ARREADY,
        // Read data (issued by slave)
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
        // Read response. This signal indicates the status of the
        // read transfer.
        output wire [1 : 0] S_AXI_RRESP,
        // Read valid. This signal indicates that the channel is
        // signaling the required read data.
        output wire  S_AXI_RVALID,
        // Read ready. This signal indicates that the master can
        // accept the read data and response information.
        input wire  S_AXI_RREADY
);

// AXI4LITE signals
reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_awaddr;
reg     axi_awready;
reg     axi_wready;
reg [1 : 0]     axi_bresp;
reg     axi_bvalid;
reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_araddr;
reg     axi_arready;
reg [C_S_AXI_DATA_WIDTH-1 : 0]  axi_rdata;
reg [1 : 0]     axi_rresp;
reg     axi_rvalid;

localparam integer ADDR_LSB = 2;
localparam integer OPT_MEM_ADDR_BITS = 6;
//----------------------------------------------
//-- Signals for user logic register space example
//------------------------------------------------
//-- Number of Slave Registers 32
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg00;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg01;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg02;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg03;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg04;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg05;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg06;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg07;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg08;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg09;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg10;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg11;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg12;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg13;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg14;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg15;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg16;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg17;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg18;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg19;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg20;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg21;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg22;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg23;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg24;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg25;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg26;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg27;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg28;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg29;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg30;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg31;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg32;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg33;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg34;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg35;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg36;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg37;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg38;
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg39;

wire     slv_reg_rden;
wire     slv_reg_wren;
reg [C_S_AXI_DATA_WIDTH-1:0]     reg_data_out;
integer  byte_index;

// I/O Connections assignments

assign S_AXI_AWREADY    = axi_awready;
assign S_AXI_WREADY     = axi_wready;
assign S_AXI_BRESP      = axi_bresp;
assign S_AXI_BVALID     = axi_bvalid;
assign S_AXI_ARREADY    = axi_arready;
assign S_AXI_RDATA      = axi_rdata;
assign S_AXI_RRESP      = axi_rresp;
assign S_AXI_RVALID     = axi_rvalid;


// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awready <= 1'b0;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
        begin
          // slave is ready to accept write address when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_awready <= 1'b1;
        end
      else           
        begin
          axi_awready <= 1'b0;
        end
    end 
end       

// Implement axi_awaddr latching
// This process is used to latch the address when both 
// S_AXI_AWVALID and S_AXI_WVALID are valid. 

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_awaddr <= 0;
    end 
  else
    begin    
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
        begin
          // Write Address latching 
          axi_awaddr <= S_AXI_AWADDR;
        end
    end 
end       

// Implement axi_wready generation
// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
// de-asserted when reset is low. 

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_wready <= 1'b0;
    end 
  else
    begin    
      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
        begin
          // slave is ready to accept write data when 
          // there is a valid write address and write data
          // on the write address and data bus. This design 
          // expects no outstanding transactions. 
          axi_wready <= 1'b1;
        end
      else
        begin
          axi_wready <= 1'b0;
        end
    end 
end       

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      slv_reg00 <= 0;
      slv_reg01 <= 0;
      slv_reg02 <= 0;
      slv_reg03 <= 0;
      slv_reg04 <= 0;
      slv_reg05 <= 0;
      slv_reg06 <= 0;
      slv_reg07 <= 0;
      slv_reg08 <= 0;
      slv_reg09 <= 0;
      slv_reg10 <= 0;
      slv_reg11 <= 0;
      slv_reg12 <= 0;
      slv_reg13 <= 0;
      slv_reg14 <= 0;
      slv_reg15 <= 0;
      slv_reg16 <= 0;
      slv_reg17 <= 0;
      slv_reg18 <= 0;
      slv_reg19 <= 0;
      slv_reg20 <= gpi_reg00;
      slv_reg21 <= gpi_reg01;
      slv_reg22 <= gpi_reg02;
      slv_reg23 <= gpi_reg03;
      slv_reg24 <= gpi_reg04;
      slv_reg25 <= gpi_reg05;
      slv_reg26 <= gpi_reg06;
      slv_reg27 <= gpi_reg07;
      slv_reg28 <= gpi_reg08;
      slv_reg29 <= gpi_reg09;
      slv_reg30 <= gpi_reg10;
      slv_reg31 <= gpi_reg11;
      slv_reg32 <= gpi_reg12;
      slv_reg33 <= gpi_reg13;
      slv_reg34 <= gpi_reg14;
      slv_reg35 <= gpi_reg15;
      slv_reg36 <= gpi_reg16;
      slv_reg37 <= gpi_reg17;
      slv_reg38 <= gpi_reg18;
      slv_reg39 <= gpi_reg19;
    end 
  else begin
    if (slv_reg_wren)
      begin
        case ( axi_awaddr )//case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS-1:ADDR_LSB] )
          8'b0000_0000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 0
                slv_reg00[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0000_0100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 1
                slv_reg01[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0000_1000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 2
                slv_reg02[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0000_1100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 3
                slv_reg03[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0001_0000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 4
                slv_reg04[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0001_0100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 5
                slv_reg05[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0001_1000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 6
                slv_reg06[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0001_1100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 7
                slv_reg07[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0010_0000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 8
                slv_reg08[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0010_0100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 9
                slv_reg09[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0010_1000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 10
                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0010_1100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 11
                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0011_0000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 12
                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0011_0100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 13
                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0011_1000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 14
                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0011_1100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 15
                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0100_0000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 16
                slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0100_0100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 17
                slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0100_1000:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 18
                slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          8'b0100_1100:
            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                // Respective byte enables are asserted as per write strobes 
                // Slave register 19
                slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
              end  
          default : begin
                      slv_reg00 <= slv_reg00;
                      slv_reg01 <= slv_reg01;
                      slv_reg02 <= slv_reg02;
                      slv_reg03 <= slv_reg03;
                      slv_reg04 <= slv_reg04;
                      slv_reg05 <= slv_reg05;
                      slv_reg06 <= slv_reg06;
                      slv_reg07 <= slv_reg07;
                      slv_reg08 <= slv_reg08;
                      slv_reg09 <= slv_reg09;
                      slv_reg10 <= slv_reg10;
                      slv_reg11 <= slv_reg11;
                      slv_reg12 <= slv_reg12;
                      slv_reg13 <= slv_reg13;
                      slv_reg14 <= slv_reg14;
                      slv_reg15 <= slv_reg15;
                      slv_reg16 <= slv_reg16;
                      slv_reg17 <= slv_reg17;
                      slv_reg18 <= slv_reg18;
                      slv_reg19 <= slv_reg19;
                      slv_reg20 <= gpi_reg00;
                      slv_reg21 <= gpi_reg01;
                      slv_reg22 <= gpi_reg02;
                      slv_reg23 <= gpi_reg03;
                      slv_reg24 <= gpi_reg04;
                      slv_reg25 <= gpi_reg05;
                      slv_reg26 <= gpi_reg06;
                      slv_reg27 <= gpi_reg07;
                      slv_reg28 <= gpi_reg08;
                      slv_reg29 <= gpi_reg09;
                      slv_reg30 <= gpi_reg10;
                      slv_reg31 <= gpi_reg11;
                      slv_reg32 <= gpi_reg12;
                      slv_reg33 <= gpi_reg13;
                      slv_reg34 <= gpi_reg14;
                      slv_reg35 <= gpi_reg15;
                      slv_reg36 <= gpi_reg16;
                      slv_reg37 <= gpi_reg17;
                      slv_reg38 <= gpi_reg18;
                      slv_reg39 <= gpi_reg19;
                    end
        endcase
      end
  end
end    

// Implement write response logic generation
// The write response and response valid signals are asserted by the slave 
// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_bvalid  <= 0;
      axi_bresp   <= 2'b0;
    end 
  else
    begin    
      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
        begin
          // indicates a valid write response is available
          axi_bvalid <= 1'b1;
          axi_bresp  <= 2'b0; // 'OKAY' response 
        end                   // work error responses in future
      else
        begin
          if (S_AXI_BREADY && axi_bvalid) 
            //check if bready is asserted while bvalid is high) 
            //(there is a possibility that bready is always asserted high)   
            begin
              axi_bvalid <= 1'b0; 
            end  
        end
    end
end   

// Implement axi_arready generation
// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. axi_awready is 
// de-asserted when reset (active low) is asserted. 
// The read address is also latched when S_AXI_ARVALID is 
// asserted. axi_araddr is reset to zero on reset assertion.

always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_arready <= 1'b0;
      axi_araddr  <= 32'b0;
    end 
  else
    begin    
      if (~axi_arready && S_AXI_ARVALID)
        begin
          // indicates that the slave has acceped the valid read address
          axi_arready <= 1'b1;
          // Read address latching
          axi_araddr  <= S_AXI_ARADDR;
        end
      else
        begin
          axi_arready <= 1'b0;
        end
    end 
end       

// Implement axi_arvalid generation
// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset (active low). axi_rresp and axi_rdata are 
// cleared to zero on reset (active low).  
always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rvalid <= 0;
      axi_rresp  <= 0;
    end 
  else
    begin    
      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
        begin
          // Valid read data is available at the read data bus
          axi_rvalid <= 1'b1;
          axi_rresp  <= 2'b0; // 'OKAY' response
        end   
      else if (axi_rvalid && S_AXI_RREADY)
        begin
          // Read data is accepted by the master
          axi_rvalid <= 1'b0;
        end                
    end
end    

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
always @( * )
begin
      // Address decoding for reading registers
      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
        6'h00   : reg_data_out <= slv_reg00;
        6'h01   : reg_data_out <= slv_reg01;
        6'h02   : reg_data_out <= slv_reg02;
        6'h03   : reg_data_out <= slv_reg03;
        6'h04   : reg_data_out <= slv_reg04;
        6'h05   : reg_data_out <= slv_reg05;
        6'h06   : reg_data_out <= slv_reg06;
        6'h07   : reg_data_out <= slv_reg07;
        6'h08   : reg_data_out <= slv_reg08;
        6'h09   : reg_data_out <= slv_reg09;
        6'h0A   : reg_data_out <= slv_reg10;
        6'h0B   : reg_data_out <= slv_reg11;
        6'h0C   : reg_data_out <= slv_reg12;
        6'h0D   : reg_data_out <= slv_reg13;
        6'h0E   : reg_data_out <= slv_reg14;
        6'h0F   : reg_data_out <= slv_reg15;
        6'h10   : reg_data_out <= slv_reg16;
        6'h11   : reg_data_out <= slv_reg17;
        6'h12   : reg_data_out <= slv_reg18;
        6'h13   : reg_data_out <= slv_reg19;
        6'h14   : reg_data_out <= slv_reg20;
        6'h15   : reg_data_out <= slv_reg21;
        6'h16   : reg_data_out <= slv_reg22;
        6'h17   : reg_data_out <= slv_reg23;
        6'h18   : reg_data_out <= slv_reg24;
        6'h19   : reg_data_out <= slv_reg25;
        6'h1A   : reg_data_out <= slv_reg26;
        6'h1B   : reg_data_out <= slv_reg27;
        6'h1C   : reg_data_out <= slv_reg28;
        6'h1D   : reg_data_out <= slv_reg29;
        6'h1E   : reg_data_out <= slv_reg30;
        6'h1F   : reg_data_out <= slv_reg31;
        6'h20   : reg_data_out <= slv_reg32;
        6'h21   : reg_data_out <= slv_reg33;
        6'h22   : reg_data_out <= slv_reg34;
        6'h23   : reg_data_out <= slv_reg35;
        6'h24   : reg_data_out <= slv_reg36;
        6'h25   : reg_data_out <= slv_reg37;
        6'h26   : reg_data_out <= slv_reg38;
        6'h27   : reg_data_out <= slv_reg39;
        default : reg_data_out <= 0;
      endcase
end

// Output register or memory read data
always @( posedge S_AXI_ACLK )
begin
  if ( S_AXI_ARESETN == 1'b0 )
    begin
      axi_rdata  <= 0;
    end 
  else
    begin    
      // When there is a valid read address (S_AXI_ARVALID) with 
      // acceptance of read address by the slave (axi_arready), 
      // output the read dada 
      if (slv_reg_rden)
        begin
          axi_rdata <= reg_data_out;     // register read data
        end   
    end
end    

assign gpo_reg00[31:0] = slv_reg00 ;
assign gpo_reg01[31:0] = slv_reg01 ;
assign gpo_reg02[31:0] = slv_reg02 ;
assign gpo_reg03[31:0] = slv_reg03 ;
assign gpo_reg04[31:0] = slv_reg04 ;
assign gpo_reg05[31:0] = slv_reg05 ;
assign gpo_reg06[31:0] = slv_reg06 ;
assign gpo_reg07[31:0] = slv_reg07 ;
assign gpo_reg08[31:0] = slv_reg08 ;
assign gpo_reg09[31:0] = slv_reg09 ;
assign gpo_reg10[31:0] = slv_reg10;
assign gpo_reg11[31:0] = slv_reg11;
assign gpo_reg12[31:0] = slv_reg12;
assign gpo_reg13[31:0] = slv_reg13;
assign gpo_reg14[31:0] = slv_reg14;
assign gpo_reg15[31:0] = slv_reg15;

endmodule      //axi_slave_gpio2by20              
`endif //AXI4LITE_IF     
              
//-----------------------------------------------------
// Design Name : us_bram
// Function    : creates dual port UltraScale BRAM with pre-init data pattern
// Coder       : Louis Morrison
//-----------------------------------------------------
module us_bram      
   (                
    input  wire        clka  ,
    input  wire        ena   ,
    input  wire        wea   ,
    input  wire  [9:0] addra ,
    input  wire [35:0] dina  ,
    output wire [35:0] douta ,
    input  wire        clkb  ,
    input  wire        enb   ,
    input  wire        web   ,
    input  wire  [9:0] addrb ,
    input  wire [35:0] dinb  ,
    output wire [35:0] doutb 
   );               
                    
wire [14:0] addrb_i ;
wire [31:0] dinb_i  ;
wire  [3:0] dinpb_i ;
wire [31:0] doutb_i ;
wire  [3:0] doutpb_i;
wire [14:0] addra_i ;
wire [31:0] dina_i  ;
wire  [3:0] dinpa_i ;
wire [31:0] douta_i ;
wire  [3:0] doutpa_i;
wire  [3:0] wea_i   ;
wire  [7:0] web_i   ;
                    
assign addra_i = {addra,5'b00000};
assign dina_i  = {dina[34:27],dina[25:18],dina[16:9],dina[7:0]};
assign dinpa_i = {dina[35],dina[26],dina[17],dina[8]};
assign douta   = {doutpa_i[3],douta_i[31:24],doutpa_i[2],douta_i[23:16],doutpa_i[1],douta_i[15:8],doutpa_i[0],douta_i[7:0]};
assign wea_i   = {4{wea}};
                    
assign addrb_i  = {addrb,5'b00000};
assign dinb_i   = {dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]};
assign dinpb_i  = {dinb[35],dinb[26],dinb[17],dinb[8]};
assign doutb    = {doutpb_i[3],doutb_i[31:24],doutpb_i[2],doutb_i[23:16],doutpb_i[1],doutb_i[15:8],doutpb_i[0],doutb_i[7:0]};
assign web_i    = {4{web}};
                    
                    
   RAMB36E2 #(
      // CASCADE_ORDER_A, CASCADE_ORDER_B: "FIRST", "MIDDLE", "LAST", "NONE" 
      .CASCADE_ORDER_A("NONE"),
      .CASCADE_ORDER_B("NONE"),
      // CLOCK_DOMAINS: "COMMON", "INDEPENDENT" 
      .CLOCK_DOMAINS("INDEPENDENT"),
      // Collision check: "ALL", "GENERATE_X_ONLY", "NONE", "WARNING_ONLY" 
      .SIM_COLLISION_CHECK("ALL"),
      // DOA_REG, DOB_REG: Optional output register (0, 1)
      .DOA_REG(1),
      .DOB_REG(1),
      // ENADDRENA/ENADDRENB: Address enable pin enable, "TRUE", "FALSE" 
      .ENADDRENA("FALSE"),
      .ENADDRENB("FALSE"),
      // EN_ECC_PIPE: ECC pipeline register, "TRUE"/"FALSE" 
      .EN_ECC_PIPE("FALSE"),
      // EN_ECC_READ: Enable ECC decoder, "TRUE"/"FALSE" 
      .EN_ECC_READ("FALSE"),
      // EN_ECC_WRITE: Enable ECC encoder, "TRUE"/"FALSE" 
      .EN_ECC_WRITE("FALSE"),
      // INITP_00 to INITP_0F: Initial contents of parity memory array
      .INITP_00(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_01(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_02(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_03(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_04(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_05(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_06(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_07(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_08(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_09(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0A(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0B(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0C(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0D(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0E(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      .INITP_0F(256'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0),
      // INIT_00 to INIT_7F: Initial contents of data memory array
      .INIT_00(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_01(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_02(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_03(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_04(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_05(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_06(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_07(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_08(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_09(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_0F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_10(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_11(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_12(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_13(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_14(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_15(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_16(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_17(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_18(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_19(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_1F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_20(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_21(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_22(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_23(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_24(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_25(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_26(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_27(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_28(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_29(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_2F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_30(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_31(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_32(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_33(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_34(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_35(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_36(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_37(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_38(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_39(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_3F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_40(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_41(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_42(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_43(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_44(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_45(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_46(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_47(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_48(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_49(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_4F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_50(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_51(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_52(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_53(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_54(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_55(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_56(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_57(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_58(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_59(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_5F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_60(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_61(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_62(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_63(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_64(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_65(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_66(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_67(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_68(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_69(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_6F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_70(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_71(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_72(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_73(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_74(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_75(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_76(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_77(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_78(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_79(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7A(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7B(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7C(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7D(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7E(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      .INIT_7F(256'hFFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000),
      // INIT_A, INIT_B: Initial values on output ports
      .INIT_A(36'h000000000),
      .INIT_B(36'h000000000),
      // Initialization File: RAM initialization file
      .INIT_FILE("NONE"),
      // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
      .IS_CLKARDCLK_INVERTED(1'b0),
      .IS_CLKBWRCLK_INVERTED(1'b0),
      .IS_ENARDEN_INVERTED(1'b0),
      .IS_ENBWREN_INVERTED(1'b0),
      .IS_RSTRAMARSTRAM_INVERTED(1'b0),
      .IS_RSTRAMB_INVERTED(1'b0),
      .IS_RSTREGARSTREG_INVERTED(1'b0),
      .IS_RSTREGB_INVERTED(1'b0),
      // RDADDRCHANGE: Disable memory access when output value does not change ("TRUE", "FALSE")
      .RDADDRCHANGEA("FALSE"),
      .RDADDRCHANGEB("FALSE"),
      // READ_WIDTH_A/B, WRITE_WIDTH_A/B: Read/write width per port
      .READ_WIDTH_A(36),                                                                 // 0-9
      .READ_WIDTH_B(36),                                                                 // 0-9
      .WRITE_WIDTH_A(36),                                                                // 0-9
      .WRITE_WIDTH_B(36),                                                                // 0-9
      // RSTREG_PRIORITY_A, RSTREG_PRIORITY_B: Reset or enable priority ("RSTREG", "REGCE")
      .RSTREG_PRIORITY_A("RSTREG"),
      .RSTREG_PRIORITY_B("RSTREG"),
      // SRVAL_A, SRVAL_B: Set/reset value for output
      .SRVAL_A(36'h000000000),
      .SRVAL_B(36'h000000000),
      // Sleep Async: Sleep function asynchronous or synchronous ("TRUE", "FALSE")
      .SLEEP_ASYNC("FALSE"),
      // WriteMode: "WRITE_FIRST", "NO_CHANGE", "READ_FIRST" 
      .WRITE_MODE_A("NO_CHANGE"),
      .WRITE_MODE_B("NO_CHANGE") 
   )
   RAMB36E2_inst (  
      // Cascade Signals outputs: Multi-BRAM cascade signals
      .CASDOUTA( ),               // 32-bit output: Port A cascade output data
      .CASDOUTB( ),               // 32-bit output: Port B cascade output data
      .CASDOUTPA( ),             // 4-bit output: Port A cascade output parity data
      .CASDOUTPB( ),             // 4-bit output: Port B cascade output parity data
      .CASOUTDBITERR( ),     // 1-bit output: DBITERR cascade output
      .CASOUTSBITERR( ),     // 1-bit output: SBITERR cascade output
      // ECC Signals outputs: Error Correction Circuitry ports
      .DBITERR( ),                 // 1-bit output: Double bit error status
      .ECCPARITY( ),             // 8-bit output: Generated error correction parity
      .RDADDRECC( ),             // 9-bit output: ECC Read Address
      .SBITERR( ),                 // 1-bit output: Single bit error status
      // Port A data outputs: Port A data
      .DOUTADOUT(douta_i),             // 32-bit output: Port A Data/LSB data
      .DOUTPADOUTP(doutpa_i),         // 4-bit output: Port A parity/LSB parity
      // Port B data outputs: Port B data
      .DOUTBDOUT(doutb_i),             // 32-bit output: Port B data/MSB data
      .DOUTPBDOUTP(doutpb_i),         // 4-bit output: Port B parity/MSB parity
      // Cascade Signals inputs: Multi-BRAM cascade signals
      .CASDIMUXA('d0),             // 1-bit input: Port A input data (0=DINA, 1=CASDINA)
      .CASDIMUXB('d0),             // 1-bit input: Port B input data (0=DINB, 1=CASDINB)
      .CASDINA('d0),                 // 32-bit input: Port A cascade input data
      .CASDINB('d0),                 // 32-bit input: Port B cascade input data
      .CASDINPA('d0),               // 4-bit input: Port A cascade input parity data
      .CASDINPB('d0),               // 4-bit input: Port B cascade input parity data
      .CASDOMUXA('d0),             // 1-bit input: Port A unregistered data (0=BRAM data, 1=CASDINA)
      .CASDOMUXB('d0),             // 1-bit input: Port B unregistered data (0=BRAM data, 1=CASDINB)
      .CASDOMUXEN_A('d0),       // 1-bit input: Port A unregistered output data enable
      .CASDOMUXEN_B('d0),       // 1-bit input: Port B unregistered output data enable
      .CASINDBITERR('d0),       // 1-bit input: DBITERR cascade input
      .CASINSBITERR('d0),       // 1-bit input: SBITERR cascade input
      .CASOREGIMUXA('d0),       // 1-bit input: Port A registered data (0=BRAM data, 1=CASDINA)
      .CASOREGIMUXB('d0),       // 1-bit input: Port B registered data (0=BRAM data, 1=CASDINB)
      .CASOREGIMUXEN_A('d0), // 1-bit input: Port A registered output data enable
      .CASOREGIMUXEN_B('d0), // 1-bit input: Port B registered output data enable
      // ECC Signals inputs: Error Correction Circuitry ports
      .ECCPIPECE('d0),             // 1-bit input: ECC Pipeline Register Enable
      .INJECTDBITERR('d0),     // 1-bit input: Inject a double bit error
      .INJECTSBITERR('d0),
      // Port A Address/Control Signals inputs: Port A address and control signals
      .ADDRARDADDR(addra_i),         // 15-bit input: A/Read port address
      .ADDRENA('d0),                 // 1-bit input: Active-High A/Read port address enable
      .CLKARDCLK(clka),             // 1-bit input: A/Read port clock
      .ENARDEN(ena),                 // 1-bit input: Port A enable/Read enable
      .REGCEAREGCE('d1),         // 1-bit input: Port A register enable/Register enable
      .RSTRAMARSTRAM('d0),     // 1-bit input: Port A set/reset
      .RSTREGARSTREG('d0),     // 1-bit input: Port A register set/reset
      .SLEEP('d0),                     // 1-bit input: Sleep Mode
      .WEA(wea_i),                         // 4-bit input: Port A write enable
      // Port A data inputs: Port A data
      .DINADIN(dina_i),                 // 32-bit input: Port A data/LSB data
      .DINPADINP(dinpa_i),             // 4-bit input: Port A parity/LSB parity
      // Port B address/Control Signals inputs: Port B address and control signals
      .ADDRBWRADDR(addrb_i),         // 15-bit input: B/Write port address
      .ADDRENB('d0),                 // 1-bit input: Active-High B/Write port address enable
      .CLKBWRCLK(clkb),             // 1-bit input: B/Write port clock
      .ENBWREN(enb),                 // 1-bit input: Port B enable/Write enable
      .REGCEB('d1),                   // 1-bit input: Port B register enable
      .RSTRAMB('d0),                 // 1-bit input: Port B set/reset
      .RSTREGB('d0),                 // 1-bit input: Port B register set/reset
      .WEBWE(web_i),                     // 8-bit input: Port B write enable/Write enable
      // Port B data inputs: Port B data
      .DINBDIN(dinb_i),                 // 32-bit input: Port B data/MSB data
      .DINPBDINP(dinpb_i)              // 4-bit input: Port B pbrity/MSB pbrity
   );               
                    
   // End of RAMB36E2_inst instantiation
endmodule //us_bram 

////////////////////////////
////////Synchro/////////////
////////////////////////////

module sync_cell     
#(                                                  
    parameter   C_SYNC_STAGE        = 2,            
    parameter   C_DW                = 4//,            
    //parameter   pTCQ                = 2           
)                                                   
(                                                   
  input  wire                             src_resetn, 
  input  wire                             src_clk,
  input  wire  [C_DW-1:0]                 src_data, 
                                                    
  input  wire                             dest_resetn, 
  input  wire                             dest_clk, 
  output wire  [C_DW-1:0]                 dest_data 
);                    

reg [C_DW-1:0] src_data_r;
                              
always @ ( posedge src_clk ) begin                                               
   if ( ~src_resetn ) begin 
      src_data_r <= 0;                
   end
   else begin
      src_data_r <= src_data;                   
   end
end
                                                                                         
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_0;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_1;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_2;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_3;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_4;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_5;
(* async_reg = "true" *) reg [C_DW-1:0] sync_flop_6;
                                                    
always @ ( posedge dest_clk ) begin                                               
   if ( ~dest_resetn ) begin 
      sync_flop_0 <= 0;                
      sync_flop_1 <= 0;                
      sync_flop_2 <= 0;                
      sync_flop_3 <= 0;                
      sync_flop_4 <= 0;                
      sync_flop_5 <= 0;                
      sync_flop_6 <= 0;                
   end
   else begin
      sync_flop_0 <= src_data;//_r;                   
      sync_flop_1 <= sync_flop_0;                
      sync_flop_2 <= sync_flop_1;                
      sync_flop_3 <= sync_flop_2;                
      sync_flop_4 <= sync_flop_3;                
      sync_flop_5 <= sync_flop_4;                
      sync_flop_6 <= sync_flop_5;                
   end
end                                                 
                                                    
generate if ( C_SYNC_STAGE == 2 )                   
begin:sync2                                         
   assign dest_data = sync_flop_1;                  
end                                                 
else if ( C_SYNC_STAGE == 3 )                       
begin:sync3                                         
   assign dest_data = sync_flop_2;                  
end                                                 
else if ( C_SYNC_STAGE == 4 )                       
begin:sync4                                         
   assign dest_data = sync_flop_3;                  
end                                                 
else if ( C_SYNC_STAGE == 5 )                       
begin:sync5                                         
   assign dest_data = sync_flop_4;                  
end                                                 
else if ( C_SYNC_STAGE == 6 )                       
begin:sync6                                         
   assign dest_data = sync_flop_5;                  
end                                                 
else if ( C_SYNC_STAGE == 7 )                       
begin:sync7                                         
   assign dest_data = sync_flop_6;                  
end                                                 
endgenerate                                         
                                                    
endmodule                                           
