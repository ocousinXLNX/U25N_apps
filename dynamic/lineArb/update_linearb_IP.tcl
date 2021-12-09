# run with
#vivado -mode batch -source update_linearb_IP.tcl

set ProjectName fpga

open_project $ProjectName.xpr
open_bd_design $ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd

update_ip_catalog -rebuild

delete_bd_objs [get_bd_intf_nets axi_interconnect_M02_AXI] [get_bd_intf_nets axis_data_fifo_from_MAC0_M_AXIS] [get_bd_intf_nets lineArb_0_out_3] [get_bd_intf_nets axis_data_fifo_from_MAC1_M_AXIS] [get_bd_intf_nets INTERC_from_MAC_M00_AXIS] [get_bd_intf_nets INTERC_from_MAC_M01_AXIS] [get_bd_intf_nets lineArb_0_out_2] [get_bd_intf_nets lineArb_0_out_0] [get_bd_intf_nets lineArb_0_out_1] [get_bd_cells lineArb_0]


startgroup
create_bd_cell -type ip -vlnv Xilinx:U25N:lineArb lineArb_0
endgroup
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect/M02_AXI] [get_bd_intf_pins lineArb_0/s_axi_CTRL]
connect_bd_intf_net [get_bd_intf_pins axis_data_fifo_from_MAC0/M_AXIS] [get_bd_intf_pins lineArb_0/in_0]
connect_bd_intf_net [get_bd_intf_pins axis_data_fifo_from_MAC1/M_AXIS] [get_bd_intf_pins lineArb_0/in_1]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins INTERC_from_MAC/M00_AXIS] [get_bd_intf_pins lineArb_0/in_2]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins INTERC_from_MAC/M01_AXIS] [get_bd_intf_pins lineArb_0/in_3]
connect_bd_net [get_bd_ports clk_200M_in] [get_bd_pins lineArb_0/ap_clk]
connect_bd_net [get_bd_pins lineArb_0/ap_rst_n] [get_bd_pins reset_latch_dyn_0/rstn_200M]
connect_bd_intf_net [get_bd_intf_pins lineArb_0/out_0] [get_bd_intf_pins slice_to_MAC2/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins lineArb_0/out_1] [get_bd_intf_pins slice_to_MAC3/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins lineArb_0/out_2] [get_bd_intf_pins slice_to_MAC0/S_AXIS]
connect_bd_intf_net [get_bd_intf_pins lineArb_0/out_3] [get_bd_intf_pins slice_to_MAC1/S_AXIS]
assign_bd_address [get_bd_addr_segs {lineArb_0/s_axi_CTRL/Reg }]
set_property offset 0x00800E0000 [get_bd_addr_segs {S_AXI_Lite/SEG_lineArb_0_Reg}]
validate_bd_design

save_bd_design

