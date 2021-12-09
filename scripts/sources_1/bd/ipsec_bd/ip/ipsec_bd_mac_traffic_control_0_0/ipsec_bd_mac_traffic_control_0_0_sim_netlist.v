// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1_AR75245 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Sep  8 14:08:25 2020
// Host        : newton running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/merin.baby/merin/xilu_u25b_ipsec/IPSEC/BD/ipsec_bd/ip/ipsec_bd_mac_traffic_control_0_0/ipsec_bd_mac_traffic_control_0_0_sim_netlist.v
// Design      : ipsec_bd_mac_traffic_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu25-ffvc1760-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ipsec_bd_mac_traffic_control_0_0,mac_traffic_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mac_traffic_control,Vivado 2020.1_AR75245" *) 
(* NotValidForBitStream *)
module ipsec_bd_mac_traffic_control_0_0
   (clk,
    rst_n,
    s_axis_TData,
    s_axis_TKeep,
    s_axis_TValid,
    s_axis_TReady,
    s_axis_TLast,
    s_axis_TDest,
    m0_axis_TData,
    m0_axis_TKeep,
    m0_axis_TValid,
    m0_axis_TReady,
    m0_axis_TLast,
    m0_axis_TDest,
    m1_axis_TData,
    m1_axis_TKeep,
    m1_axis_TValid,
    m1_axis_TReady,
    m1_axis_TLast,
    m1_axis_TDest,
    fifo_prog_full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m0_axis:m1_axis:s_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_TData;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [7:0]s_axis_TKeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_TValid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_TReady;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_TLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [10:0]s_axis_TDest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m0_axis_TData;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TKEEP" *) output [7:0]m0_axis_TKeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_TValid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_TReady;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) output m0_axis_TLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m0_axis TDEST" *) output [10:0]m0_axis_TDest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m1_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 11, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ipsec_bd_s_axis_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m1_axis_TData;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TKEEP" *) output [7:0]m1_axis_TKeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TVALID" *) output m1_axis_TValid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TREADY" *) input m1_axis_TReady;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TLAST" *) output m1_axis_TLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m1_axis TDEST" *) output [10:0]m1_axis_TDest;
  input fifo_prog_full;

  wire clk;
  wire fifo_prog_full;
  wire [63:0]m0_axis_TData;
  wire [10:0]m0_axis_TDest;
  wire [7:0]m0_axis_TKeep;
  wire m0_axis_TLast;
  wire m0_axis_TReady;
  wire m0_axis_TValid;
  wire [63:0]m1_axis_TData;
  wire [10:0]m1_axis_TDest;
  wire [7:0]m1_axis_TKeep;
  wire m1_axis_TLast;
  wire m1_axis_TValid;
  wire rst_n;
  wire [63:0]s_axis_TData;
  wire [10:0]s_axis_TDest;
  wire [7:0]s_axis_TKeep;
  wire s_axis_TLast;
  wire s_axis_TValid;

  assign s_axis_TReady = m0_axis_TReady;
  ipsec_bd_mac_traffic_control_0_0_mac_traffic_control U0
       (.clk(clk),
        .fifo_prog_full(fifo_prog_full),
        .m0_axis_TData(m0_axis_TData),
        .m0_axis_TDest(m0_axis_TDest),
        .m0_axis_TKeep(m0_axis_TKeep),
        .m0_axis_TLast(m0_axis_TLast),
        .m0_axis_TReady(m0_axis_TReady),
        .m0_axis_TValid(m0_axis_TValid),
        .m1_axis_TData(m1_axis_TData),
        .m1_axis_TDest(m1_axis_TDest),
        .m1_axis_TKeep(m1_axis_TKeep),
        .m1_axis_TLast(m1_axis_TLast),
        .m1_axis_TValid(m1_axis_TValid),
        .rst_n(rst_n),
        .s_axis_TData(s_axis_TData),
        .s_axis_TDest(s_axis_TDest),
        .s_axis_TKeep(s_axis_TKeep),
        .s_axis_TLast(s_axis_TLast),
        .s_axis_TValid(s_axis_TValid));
endmodule

(* ORIG_REF_NAME = "mac_traffic_control" *) 
module ipsec_bd_mac_traffic_control_0_0_mac_traffic_control
   (m0_axis_TData,
    m0_axis_TKeep,
    m0_axis_TValid,
    m0_axis_TLast,
    m0_axis_TDest,
    m1_axis_TData,
    m1_axis_TKeep,
    m1_axis_TValid,
    m1_axis_TLast,
    m1_axis_TDest,
    m0_axis_TReady,
    s_axis_TLast,
    clk,
    s_axis_TValid,
    s_axis_TData,
    s_axis_TKeep,
    s_axis_TDest,
    fifo_prog_full,
    rst_n);
  output [63:0]m0_axis_TData;
  output [7:0]m0_axis_TKeep;
  output m0_axis_TValid;
  output m0_axis_TLast;
  output [10:0]m0_axis_TDest;
  output [63:0]m1_axis_TData;
  output [7:0]m1_axis_TKeep;
  output m1_axis_TValid;
  output m1_axis_TLast;
  output [10:0]m1_axis_TDest;
  input m0_axis_TReady;
  input s_axis_TLast;
  input clk;
  input s_axis_TValid;
  input [63:0]s_axis_TData;
  input [7:0]s_axis_TKeep;
  input [10:0]s_axis_TDest;
  input fifo_prog_full;
  input rst_n;

  wire clk;
  wire data_flag_fifo;
  wire data_flag_fifo_i_1_n_0;
  wire fifo_prog_full;
  wire [63:0]m0_axis_TData;
  wire \m0_axis_TData[63]_i_1_n_0 ;
  wire [10:0]m0_axis_TDest;
  wire [7:0]m0_axis_TKeep;
  wire m0_axis_TLast;
  wire m0_axis_TReady;
  wire m0_axis_TValid;
  wire m0_axis_TValid_i_1_n_0;
  wire [63:0]m1_axis_TData;
  wire [10:0]m1_axis_TDest;
  wire [7:0]m1_axis_TKeep;
  wire m1_axis_TLast;
  wire m1_axis_TValid;
  wire p_0_in;
  wire rst_n;
  wire [63:0]s_axis_TData;
  wire [63:0]s_axis_TData_dly;
  wire [10:0]s_axis_TDest;
  wire [10:0]s_axis_TDest_dly;
  wire [7:0]s_axis_TKeep;
  wire s_axis_TLast;
  wire s_axis_TValid;
  wire s_axis_TValid_dly;
  wire [7:0]s_axis_Tkeep_dly;
  wire s_axis_Tlast_dly;

  LUT6 #(
    .INIT(64'hEAAA2AAA00000000)) 
    data_flag_fifo_i_1
       (.I0(data_flag_fifo),
        .I1(s_axis_TValid_dly),
        .I2(s_axis_Tlast_dly),
        .I3(m0_axis_TReady),
        .I4(fifo_prog_full),
        .I5(rst_n),
        .O(data_flag_fifo_i_1_n_0));
  FDRE data_flag_fifo_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_flag_fifo_i_1_n_0),
        .Q(data_flag_fifo),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \m0_axis_TData[63]_i_1 
       (.I0(m0_axis_TReady),
        .I1(data_flag_fifo),
        .O(\m0_axis_TData[63]_i_1_n_0 ));
  FDRE \m0_axis_TData_reg[0] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[0]),
        .Q(m0_axis_TData[0]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[10] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[10]),
        .Q(m0_axis_TData[10]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[11] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[11]),
        .Q(m0_axis_TData[11]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[12] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[12]),
        .Q(m0_axis_TData[12]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[13] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[13]),
        .Q(m0_axis_TData[13]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[14] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[14]),
        .Q(m0_axis_TData[14]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[15] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[15]),
        .Q(m0_axis_TData[15]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[16] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[16]),
        .Q(m0_axis_TData[16]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[17] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[17]),
        .Q(m0_axis_TData[17]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[18] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[18]),
        .Q(m0_axis_TData[18]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[19] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[19]),
        .Q(m0_axis_TData[19]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[1] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[1]),
        .Q(m0_axis_TData[1]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[20] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[20]),
        .Q(m0_axis_TData[20]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[21] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[21]),
        .Q(m0_axis_TData[21]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[22] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[22]),
        .Q(m0_axis_TData[22]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[23] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[23]),
        .Q(m0_axis_TData[23]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[24] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[24]),
        .Q(m0_axis_TData[24]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[25] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[25]),
        .Q(m0_axis_TData[25]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[26] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[26]),
        .Q(m0_axis_TData[26]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[27] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[27]),
        .Q(m0_axis_TData[27]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[28] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[28]),
        .Q(m0_axis_TData[28]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[29] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[29]),
        .Q(m0_axis_TData[29]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[2] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[2]),
        .Q(m0_axis_TData[2]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[30] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[30]),
        .Q(m0_axis_TData[30]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[31] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[31]),
        .Q(m0_axis_TData[31]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[32] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[32]),
        .Q(m0_axis_TData[32]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[33] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[33]),
        .Q(m0_axis_TData[33]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[34] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[34]),
        .Q(m0_axis_TData[34]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[35] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[35]),
        .Q(m0_axis_TData[35]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[36] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[36]),
        .Q(m0_axis_TData[36]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[37] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[37]),
        .Q(m0_axis_TData[37]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[38] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[38]),
        .Q(m0_axis_TData[38]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[39] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[39]),
        .Q(m0_axis_TData[39]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[3] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[3]),
        .Q(m0_axis_TData[3]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[40] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[40]),
        .Q(m0_axis_TData[40]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[41] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[41]),
        .Q(m0_axis_TData[41]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[42] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[42]),
        .Q(m0_axis_TData[42]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[43] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[43]),
        .Q(m0_axis_TData[43]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[44] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[44]),
        .Q(m0_axis_TData[44]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[45] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[45]),
        .Q(m0_axis_TData[45]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[46] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[46]),
        .Q(m0_axis_TData[46]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[47] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[47]),
        .Q(m0_axis_TData[47]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[48] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[48]),
        .Q(m0_axis_TData[48]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[49] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[49]),
        .Q(m0_axis_TData[49]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[4] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[4]),
        .Q(m0_axis_TData[4]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[50] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[50]),
        .Q(m0_axis_TData[50]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[51] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[51]),
        .Q(m0_axis_TData[51]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[52] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[52]),
        .Q(m0_axis_TData[52]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[53] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[53]),
        .Q(m0_axis_TData[53]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[54] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[54]),
        .Q(m0_axis_TData[54]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[55] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[55]),
        .Q(m0_axis_TData[55]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[56] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[56]),
        .Q(m0_axis_TData[56]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[57] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[57]),
        .Q(m0_axis_TData[57]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[58] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[58]),
        .Q(m0_axis_TData[58]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[59] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[59]),
        .Q(m0_axis_TData[59]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[5] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[5]),
        .Q(m0_axis_TData[5]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[60] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[60]),
        .Q(m0_axis_TData[60]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[61] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[61]),
        .Q(m0_axis_TData[61]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[62] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[62]),
        .Q(m0_axis_TData[62]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[63] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[63]),
        .Q(m0_axis_TData[63]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[6] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[6]),
        .Q(m0_axis_TData[6]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[7] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[7]),
        .Q(m0_axis_TData[7]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[8] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[8]),
        .Q(m0_axis_TData[8]),
        .R(1'b0));
  FDRE \m0_axis_TData_reg[9] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TData_dly[9]),
        .Q(m0_axis_TData[9]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[0] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[0]),
        .Q(m0_axis_TDest[0]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[10] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[10]),
        .Q(m0_axis_TDest[10]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[1] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[1]),
        .Q(m0_axis_TDest[1]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[2] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[2]),
        .Q(m0_axis_TDest[2]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[3] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[3]),
        .Q(m0_axis_TDest[3]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[4] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[4]),
        .Q(m0_axis_TDest[4]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[5] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[5]),
        .Q(m0_axis_TDest[5]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[6] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[6]),
        .Q(m0_axis_TDest[6]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[7] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[7]),
        .Q(m0_axis_TDest[7]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[8] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[8]),
        .Q(m0_axis_TDest[8]),
        .R(1'b0));
  FDRE \m0_axis_TDest_reg[9] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_TDest_dly[9]),
        .Q(m0_axis_TDest[9]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[0] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[0]),
        .Q(m0_axis_TKeep[0]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[1] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[1]),
        .Q(m0_axis_TKeep[1]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[2] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[2]),
        .Q(m0_axis_TKeep[2]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[3] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[3]),
        .Q(m0_axis_TKeep[3]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[4] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[4]),
        .Q(m0_axis_TKeep[4]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[5] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[5]),
        .Q(m0_axis_TKeep[5]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[6] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[6]),
        .Q(m0_axis_TKeep[6]),
        .R(1'b0));
  FDRE \m0_axis_TKeep_reg[7] 
       (.C(clk),
        .CE(\m0_axis_TData[63]_i_1_n_0 ),
        .D(s_axis_Tkeep_dly[7]),
        .Q(m0_axis_TKeep[7]),
        .R(1'b0));
  FDRE m0_axis_TLast_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_Tlast_dly),
        .Q(m0_axis_TLast),
        .R(m0_axis_TValid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    m0_axis_TValid_i_1
       (.I0(m0_axis_TReady),
        .I1(data_flag_fifo),
        .O(m0_axis_TValid_i_1_n_0));
  FDRE m0_axis_TValid_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TValid_dly),
        .Q(m0_axis_TValid),
        .R(m0_axis_TValid_i_1_n_0));
  FDRE \m1_axis_TData_reg[0] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[0]),
        .Q(m1_axis_TData[0]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[10] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[10]),
        .Q(m1_axis_TData[10]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[11] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[11]),
        .Q(m1_axis_TData[11]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[12] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[12]),
        .Q(m1_axis_TData[12]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[13] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[13]),
        .Q(m1_axis_TData[13]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[14] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[14]),
        .Q(m1_axis_TData[14]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[15] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[15]),
        .Q(m1_axis_TData[15]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[16] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[16]),
        .Q(m1_axis_TData[16]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[17] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[17]),
        .Q(m1_axis_TData[17]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[18] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[18]),
        .Q(m1_axis_TData[18]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[19] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[19]),
        .Q(m1_axis_TData[19]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[1] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[1]),
        .Q(m1_axis_TData[1]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[20] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[20]),
        .Q(m1_axis_TData[20]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[21] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[21]),
        .Q(m1_axis_TData[21]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[22] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[22]),
        .Q(m1_axis_TData[22]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[23] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[23]),
        .Q(m1_axis_TData[23]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[24] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[24]),
        .Q(m1_axis_TData[24]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[25] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[25]),
        .Q(m1_axis_TData[25]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[26] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[26]),
        .Q(m1_axis_TData[26]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[27] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[27]),
        .Q(m1_axis_TData[27]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[28] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[28]),
        .Q(m1_axis_TData[28]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[29] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[29]),
        .Q(m1_axis_TData[29]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[2] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[2]),
        .Q(m1_axis_TData[2]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[30] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[30]),
        .Q(m1_axis_TData[30]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[31] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[31]),
        .Q(m1_axis_TData[31]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[32] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[32]),
        .Q(m1_axis_TData[32]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[33] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[33]),
        .Q(m1_axis_TData[33]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[34] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[34]),
        .Q(m1_axis_TData[34]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[35] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[35]),
        .Q(m1_axis_TData[35]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[36] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[36]),
        .Q(m1_axis_TData[36]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[37] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[37]),
        .Q(m1_axis_TData[37]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[38] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[38]),
        .Q(m1_axis_TData[38]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[39] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[39]),
        .Q(m1_axis_TData[39]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[3] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[3]),
        .Q(m1_axis_TData[3]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[40] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[40]),
        .Q(m1_axis_TData[40]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[41] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[41]),
        .Q(m1_axis_TData[41]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[42] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[42]),
        .Q(m1_axis_TData[42]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[43] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[43]),
        .Q(m1_axis_TData[43]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[44] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[44]),
        .Q(m1_axis_TData[44]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[45] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[45]),
        .Q(m1_axis_TData[45]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[46] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[46]),
        .Q(m1_axis_TData[46]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[47] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[47]),
        .Q(m1_axis_TData[47]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[48] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[48]),
        .Q(m1_axis_TData[48]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[49] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[49]),
        .Q(m1_axis_TData[49]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[4] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[4]),
        .Q(m1_axis_TData[4]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[50] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[50]),
        .Q(m1_axis_TData[50]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[51] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[51]),
        .Q(m1_axis_TData[51]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[52] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[52]),
        .Q(m1_axis_TData[52]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[53] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[53]),
        .Q(m1_axis_TData[53]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[54] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[54]),
        .Q(m1_axis_TData[54]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[55] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[55]),
        .Q(m1_axis_TData[55]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[56] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[56]),
        .Q(m1_axis_TData[56]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[57] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[57]),
        .Q(m1_axis_TData[57]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[58] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[58]),
        .Q(m1_axis_TData[58]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[59] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[59]),
        .Q(m1_axis_TData[59]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[5] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[5]),
        .Q(m1_axis_TData[5]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[60] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[60]),
        .Q(m1_axis_TData[60]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[61] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[61]),
        .Q(m1_axis_TData[61]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[62] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[62]),
        .Q(m1_axis_TData[62]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[63] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[63]),
        .Q(m1_axis_TData[63]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[6] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[6]),
        .Q(m1_axis_TData[6]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[7] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[7]),
        .Q(m1_axis_TData[7]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[8] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[8]),
        .Q(m1_axis_TData[8]),
        .R(1'b0));
  FDRE \m1_axis_TData_reg[9] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TData_dly[9]),
        .Q(m1_axis_TData[9]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[0] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[0]),
        .Q(m1_axis_TDest[0]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[10] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[10]),
        .Q(m1_axis_TDest[10]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[1] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[1]),
        .Q(m1_axis_TDest[1]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[2] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[2]),
        .Q(m1_axis_TDest[2]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[3] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[3]),
        .Q(m1_axis_TDest[3]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[4] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[4]),
        .Q(m1_axis_TDest[4]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[5] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[5]),
        .Q(m1_axis_TDest[5]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[6] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[6]),
        .Q(m1_axis_TDest[6]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[7] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[7]),
        .Q(m1_axis_TDest[7]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[8] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[8]),
        .Q(m1_axis_TDest[8]),
        .R(1'b0));
  FDRE \m1_axis_TDest_reg[9] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_TDest_dly[9]),
        .Q(m1_axis_TDest[9]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[0] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[0]),
        .Q(m1_axis_TKeep[0]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[1] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[1]),
        .Q(m1_axis_TKeep[1]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[2] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[2]),
        .Q(m1_axis_TKeep[2]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[3] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[3]),
        .Q(m1_axis_TKeep[3]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[4] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[4]),
        .Q(m1_axis_TKeep[4]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[5] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[5]),
        .Q(m1_axis_TKeep[5]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[6] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[6]),
        .Q(m1_axis_TKeep[6]),
        .R(1'b0));
  FDRE \m1_axis_TKeep_reg[7] 
       (.C(clk),
        .CE(m0_axis_TValid_i_1_n_0),
        .D(s_axis_Tkeep_dly[7]),
        .Q(m1_axis_TKeep[7]),
        .R(1'b0));
  FDRE m1_axis_TLast_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_Tlast_dly),
        .Q(m1_axis_TLast),
        .R(\m0_axis_TData[63]_i_1_n_0 ));
  FDRE m1_axis_TValid_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TValid_dly),
        .Q(m1_axis_TValid),
        .R(\m0_axis_TData[63]_i_1_n_0 ));
  FDRE \s_axis_TData_dly_reg[0] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[0]),
        .Q(s_axis_TData_dly[0]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[10] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[10]),
        .Q(s_axis_TData_dly[10]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[11] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[11]),
        .Q(s_axis_TData_dly[11]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[12] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[12]),
        .Q(s_axis_TData_dly[12]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[13] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[13]),
        .Q(s_axis_TData_dly[13]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[14] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[14]),
        .Q(s_axis_TData_dly[14]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[15] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[15]),
        .Q(s_axis_TData_dly[15]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[16] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[16]),
        .Q(s_axis_TData_dly[16]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[17] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[17]),
        .Q(s_axis_TData_dly[17]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[18] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[18]),
        .Q(s_axis_TData_dly[18]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[19] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[19]),
        .Q(s_axis_TData_dly[19]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[1] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[1]),
        .Q(s_axis_TData_dly[1]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[20] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[20]),
        .Q(s_axis_TData_dly[20]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[21] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[21]),
        .Q(s_axis_TData_dly[21]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[22] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[22]),
        .Q(s_axis_TData_dly[22]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[23] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[23]),
        .Q(s_axis_TData_dly[23]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[24] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[24]),
        .Q(s_axis_TData_dly[24]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[25] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[25]),
        .Q(s_axis_TData_dly[25]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[26] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[26]),
        .Q(s_axis_TData_dly[26]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[27] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[27]),
        .Q(s_axis_TData_dly[27]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[28] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[28]),
        .Q(s_axis_TData_dly[28]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[29] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[29]),
        .Q(s_axis_TData_dly[29]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[2] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[2]),
        .Q(s_axis_TData_dly[2]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[30] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[30]),
        .Q(s_axis_TData_dly[30]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[31] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[31]),
        .Q(s_axis_TData_dly[31]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[32] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[32]),
        .Q(s_axis_TData_dly[32]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[33] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[33]),
        .Q(s_axis_TData_dly[33]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[34] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[34]),
        .Q(s_axis_TData_dly[34]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[35] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[35]),
        .Q(s_axis_TData_dly[35]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[36] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[36]),
        .Q(s_axis_TData_dly[36]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[37] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[37]),
        .Q(s_axis_TData_dly[37]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[38] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[38]),
        .Q(s_axis_TData_dly[38]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[39] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[39]),
        .Q(s_axis_TData_dly[39]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[3] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[3]),
        .Q(s_axis_TData_dly[3]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[40] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[40]),
        .Q(s_axis_TData_dly[40]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[41] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[41]),
        .Q(s_axis_TData_dly[41]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[42] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[42]),
        .Q(s_axis_TData_dly[42]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[43] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[43]),
        .Q(s_axis_TData_dly[43]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[44] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[44]),
        .Q(s_axis_TData_dly[44]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[45] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[45]),
        .Q(s_axis_TData_dly[45]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[46] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[46]),
        .Q(s_axis_TData_dly[46]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[47] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[47]),
        .Q(s_axis_TData_dly[47]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[48] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[48]),
        .Q(s_axis_TData_dly[48]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[49] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[49]),
        .Q(s_axis_TData_dly[49]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[4] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[4]),
        .Q(s_axis_TData_dly[4]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[50] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[50]),
        .Q(s_axis_TData_dly[50]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[51] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[51]),
        .Q(s_axis_TData_dly[51]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[52] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[52]),
        .Q(s_axis_TData_dly[52]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[53] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[53]),
        .Q(s_axis_TData_dly[53]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[54] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[54]),
        .Q(s_axis_TData_dly[54]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[55] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[55]),
        .Q(s_axis_TData_dly[55]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[56] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[56]),
        .Q(s_axis_TData_dly[56]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[57] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[57]),
        .Q(s_axis_TData_dly[57]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[58] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[58]),
        .Q(s_axis_TData_dly[58]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[59] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[59]),
        .Q(s_axis_TData_dly[59]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[5] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[5]),
        .Q(s_axis_TData_dly[5]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[60] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[60]),
        .Q(s_axis_TData_dly[60]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[61] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[61]),
        .Q(s_axis_TData_dly[61]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[62] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[62]),
        .Q(s_axis_TData_dly[62]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[63] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[63]),
        .Q(s_axis_TData_dly[63]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[6] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[6]),
        .Q(s_axis_TData_dly[6]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[7] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[7]),
        .Q(s_axis_TData_dly[7]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[8] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[8]),
        .Q(s_axis_TData_dly[8]),
        .R(p_0_in));
  FDRE \s_axis_TData_dly_reg[9] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TData[9]),
        .Q(s_axis_TData_dly[9]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[0] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[0]),
        .Q(s_axis_TDest_dly[0]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[10] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[10]),
        .Q(s_axis_TDest_dly[10]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[1] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[1]),
        .Q(s_axis_TDest_dly[1]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[2] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[2]),
        .Q(s_axis_TDest_dly[2]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[3] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[3]),
        .Q(s_axis_TDest_dly[3]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[4] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[4]),
        .Q(s_axis_TDest_dly[4]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[5] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[5]),
        .Q(s_axis_TDest_dly[5]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[6] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[6]),
        .Q(s_axis_TDest_dly[6]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[7] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[7]),
        .Q(s_axis_TDest_dly[7]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[8] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[8]),
        .Q(s_axis_TDest_dly[8]),
        .R(p_0_in));
  FDRE \s_axis_TDest_dly_reg[9] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TDest[9]),
        .Q(s_axis_TDest_dly[9]),
        .R(p_0_in));
  FDRE s_axis_TValid_dly_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TValid),
        .Q(s_axis_TValid_dly),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[0] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[0]),
        .Q(s_axis_Tkeep_dly[0]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[1] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[1]),
        .Q(s_axis_Tkeep_dly[1]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[2] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[2]),
        .Q(s_axis_Tkeep_dly[2]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[3] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[3]),
        .Q(s_axis_Tkeep_dly[3]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[4] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[4]),
        .Q(s_axis_Tkeep_dly[4]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[5] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[5]),
        .Q(s_axis_Tkeep_dly[5]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[6] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[6]),
        .Q(s_axis_Tkeep_dly[6]),
        .R(p_0_in));
  FDRE \s_axis_Tkeep_dly_reg[7] 
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TKeep[7]),
        .Q(s_axis_Tkeep_dly[7]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_Tlast_dly_i_1
       (.I0(rst_n),
        .O(p_0_in));
  FDRE s_axis_Tlast_dly_reg
       (.C(clk),
        .CE(m0_axis_TReady),
        .D(s_axis_TLast),
        .Q(s_axis_Tlast_dly),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
