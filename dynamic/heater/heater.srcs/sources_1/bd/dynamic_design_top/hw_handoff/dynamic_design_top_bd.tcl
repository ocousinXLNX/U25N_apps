
################################################################
# This is a generated script based on design: dynamic_design_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dynamic_design_top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Register_interface, reset_latch_dyn, version_register

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu25-ffvc1760-2LV-e
   set_property BOARD_PART xilinx.com:au25:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name dynamic_design_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS_MAC0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MAC0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $M_AXIS_MAC0

  set M_AXIS_MAC1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MAC1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $M_AXIS_MAC1

  set M_AXIS_MAC2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MAC2 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $M_AXIS_MAC2

  set M_AXIS_MAC3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MAC3 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $M_AXIS_MAC3

  set S_AXIS_MAC0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_MAC0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_MAC0

  set S_AXIS_MAC1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_MAC1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_MAC1

  set S_AXIS_MAC2_MAC3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_MAC2_MAC3 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_MAC2_MAC3

  set S_AXI_Lite [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_Lite ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_Lite


  # Create ports
  set DDR_clk_n [ create_bd_port -dir I -type clk -freq_hz 100000000 DDR_clk_n ]
  set DDR_clk_p [ create_bd_port -dir I -type clk -freq_hz 100000000 DDR_clk_p ]
  set clk_100M_in [ create_bd_port -dir I -type clk -freq_hz 100000000 clk_100M_in ]
  set clk_200M_in [ create_bd_port -dir I -type clk -freq_hz 200000000 clk_200M_in ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXIS_MAC0:S_AXIS_MAC1:S_AXIS_MAC2_MAC3:M_AXIS_MAC0:M_AXIS_MAC1:M_AXIS_MAC2:M_AXIS_MAC3} \
 ] $clk_200M_in
  set clk_250M_in [ create_bd_port -dir I -type clk -freq_hz 250000000 clk_250M_in ]
  set clk_400M_in [ create_bd_port -dir I -type clk -freq_hz 400000000 clk_400M_in ]
  set gpio2_io_i_0 [ create_bd_port -dir I -from 0 -to 0 gpio2_io_i_0 ]
  set gpio_io_o_0 [ create_bd_port -dir O -from 31 -to 0 gpio_io_o_0 ]
  set resetn [ create_bd_port -dir I -type rst resetn ]
  set rstn_250M_0 [ create_bd_port -dir O rstn_250M_0 ]

  # Create instance: INTERC_from_MAC, and set properties
  set INTERC_from_MAC [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 INTERC_from_MAC ]
  set_property -dict [ list \
   CONFIG.ARB_ON_TLAST {1} \
   CONFIG.M00_AXIS_BASETDEST {0x00000002} \
   CONFIG.M00_AXIS_HIGHTDEST {0x00000002} \
   CONFIG.M00_FIFO_DEPTH {64} \
   CONFIG.M00_FIFO_MODE {1} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.M01_AXIS_BASETDEST {0x00000003} \
   CONFIG.M01_AXIS_HIGHTDEST {0x00000003} \
   CONFIG.M01_FIFO_DEPTH {64} \
   CONFIG.M01_FIFO_MODE {1} \
   CONFIG.M01_HAS_REGSLICE {0} \
   CONFIG.M02_FIFO_DEPTH {32} \
   CONFIG.M02_FIFO_MODE {1} \
   CONFIG.M02_HAS_REGSLICE {1} \
   CONFIG.M03_FIFO_DEPTH {32} \
   CONFIG.M03_FIFO_MODE {1} \
   CONFIG.M03_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.S00_FIFO_DEPTH {128} \
   CONFIG.S00_FIFO_MODE {1} \
   CONFIG.S00_HAS_REGSLICE {0} \
 ] $INTERC_from_MAC

  # Create instance: Register_interface, and set properties
  set block_name Register_interface
  set block_cell_name Register_interface
  if { [catch {set Register_interface [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_interface eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_interconnect, and set properties
  set axi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {4} \
   CONFIG.M01_HAS_REGSLICE {4} \
   CONFIG.M02_HAS_REGSLICE {4} \
   CONFIG.M03_HAS_REGSLICE {4} \
   CONFIG.M04_HAS_REGSLICE {4} \
   CONFIG.M05_HAS_REGSLICE {4} \
   CONFIG.M06_HAS_REGSLICE {4} \
   CONFIG.M07_HAS_REGSLICE {4} \
   CONFIG.M08_HAS_REGSLICE {4} \
   CONFIG.M09_HAS_REGSLICE {4} \
   CONFIG.M10_HAS_REGSLICE {4} \
   CONFIG.M11_HAS_REGSLICE {4} \
   CONFIG.M12_HAS_REGSLICE {4} \
   CONFIG.M13_HAS_REGSLICE {4} \
   CONFIG.M14_HAS_REGSLICE {4} \
   CONFIG.M15_HAS_REGSLICE {4} \
   CONFIG.M16_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {3} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect

  # Create instance: axis_data_fifo_from_Internal, and set properties
  set axis_data_fifo_from_Internal [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_from_Internal ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {64} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.FIFO_MODE {2} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $axis_data_fifo_from_Internal

  # Create instance: axis_data_fifo_from_MAC0, and set properties
  set axis_data_fifo_from_MAC0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_from_MAC0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {64} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.FIFO_MODE {2} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $axis_data_fifo_from_MAC0

  # Create instance: axis_data_fifo_from_MAC1, and set properties
  set axis_data_fifo_from_MAC1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_from_MAC1 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {64} \
   CONFIG.FIFO_MEMORY_TYPE {auto} \
   CONFIG.FIFO_MODE {2} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $axis_data_fifo_from_MAC1

  # Create instance: reset_latch_dyn_0, and set properties
  set block_name reset_latch_dyn
  set block_cell_name reset_latch_dyn_0
  if { [catch {set reset_latch_dyn_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reset_latch_dyn_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: slice_to_MAC0, and set properties
  set slice_to_MAC0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 slice_to_MAC0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $slice_to_MAC0

  # Create instance: slice_to_MAC1, and set properties
  set slice_to_MAC1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 slice_to_MAC1 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $slice_to_MAC1

  # Create instance: slice_to_MAC2, and set properties
  set slice_to_MAC2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 slice_to_MAC2 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $slice_to_MAC2

  # Create instance: slice_to_MAC3, and set properties
  set slice_to_MAC3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 slice_to_MAC3 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.TDATA_NUM_BYTES {64} \
   CONFIG.TDEST_WIDTH {2} \
 ] $slice_to_MAC3

  # Create instance: version_register_0, and set properties
  set block_name version_register
  set block_cell_name version_register_0
  if { [catch {set version_register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $version_register_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net INTERC_from_MAC_M00_AXIS [get_bd_intf_pins INTERC_from_MAC/M00_AXIS] [get_bd_intf_pins slice_to_MAC0/S_AXIS]
  connect_bd_intf_net -intf_net INTERC_from_MAC_M01_AXIS [get_bd_intf_pins INTERC_from_MAC/M01_AXIS] [get_bd_intf_pins slice_to_MAC1/S_AXIS]
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_ports S_AXI_Lite] [get_bd_intf_pins axi_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net S_AXIS_MAC0_1 [get_bd_intf_ports S_AXIS_MAC0] [get_bd_intf_pins axis_data_fifo_from_MAC0/S_AXIS]
  connect_bd_intf_net -intf_net S_AXIS_MAC1_1 [get_bd_intf_ports S_AXIS_MAC1] [get_bd_intf_pins axis_data_fifo_from_MAC1/S_AXIS]
  connect_bd_intf_net -intf_net S_AXIS_MAC2_MAC3_1 [get_bd_intf_ports S_AXIS_MAC2_MAC3] [get_bd_intf_pins axis_data_fifo_from_Internal/S_AXIS]
  connect_bd_intf_net -intf_net axi_interconnect_M00_AXI [get_bd_intf_pins axi_interconnect/M00_AXI] [get_bd_intf_pins version_register_0/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_M01_AXI [get_bd_intf_pins Register_interface/s00_axi] [get_bd_intf_pins axi_interconnect/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_M02_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect/M02_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_from_Internal_M_AXIS [get_bd_intf_pins INTERC_from_MAC/S00_AXIS] [get_bd_intf_pins axis_data_fifo_from_Internal/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_from_MAC0_M_AXIS [get_bd_intf_pins axis_data_fifo_from_MAC0/M_AXIS] [get_bd_intf_pins slice_to_MAC2/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_from_MAC1_M_AXIS [get_bd_intf_pins axis_data_fifo_from_MAC1/M_AXIS] [get_bd_intf_pins slice_to_MAC3/S_AXIS]
  connect_bd_intf_net -intf_net dynamic_M_AXIS_MAC0 [get_bd_intf_ports M_AXIS_MAC0] [get_bd_intf_pins slice_to_MAC0/M_AXIS]
  connect_bd_intf_net -intf_net dynamic_M_AXIS_MAC1 [get_bd_intf_ports M_AXIS_MAC1] [get_bd_intf_pins slice_to_MAC1/M_AXIS]
  connect_bd_intf_net -intf_net dynamic_M_AXIS_MAC2 [get_bd_intf_ports M_AXIS_MAC2] [get_bd_intf_pins slice_to_MAC2/M_AXIS]
  connect_bd_intf_net -intf_net dynamic_M_AXIS_MAC3 [get_bd_intf_ports M_AXIS_MAC3] [get_bd_intf_pins slice_to_MAC3/M_AXIS]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins INTERC_from_MAC/ARESETN] [get_bd_pins INTERC_from_MAC/M00_AXIS_ARESETN] [get_bd_pins INTERC_from_MAC/M01_AXIS_ARESETN] [get_bd_pins INTERC_from_MAC/S00_AXIS_ARESETN] [get_bd_pins Register_interface/s00_axi_aresetn] [get_bd_pins axis_data_fifo_from_Internal/s_axis_aresetn] [get_bd_pins axis_data_fifo_from_MAC0/s_axis_aresetn] [get_bd_pins axis_data_fifo_from_MAC1/s_axis_aresetn] [get_bd_pins reset_latch_dyn_0/rstn_200M] [get_bd_pins slice_to_MAC0/aresetn] [get_bd_pins slice_to_MAC1/aresetn] [get_bd_pins slice_to_MAC2/aresetn] [get_bd_pins slice_to_MAC3/aresetn]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_ports gpio_io_o_0] [get_bd_pins axi_gpio_0/gpio_io_o]
  connect_bd_net -net clk_100M_in_1 [get_bd_ports clk_100M_in] [get_bd_pins Register_interface/s00_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins reset_latch_dyn_0/clk_100M_in] [get_bd_pins version_register_0/s00_axi_aclk]
  connect_bd_net -net clk_200M_in_1 [get_bd_ports clk_200M_in] [get_bd_pins INTERC_from_MAC/ACLK] [get_bd_pins INTERC_from_MAC/M00_AXIS_ACLK] [get_bd_pins INTERC_from_MAC/M01_AXIS_ACLK] [get_bd_pins INTERC_from_MAC/S00_AXIS_ACLK] [get_bd_pins axis_data_fifo_from_Internal/s_axis_aclk] [get_bd_pins axis_data_fifo_from_MAC0/s_axis_aclk] [get_bd_pins axis_data_fifo_from_MAC1/s_axis_aclk] [get_bd_pins reset_latch_dyn_0/clk_200M_in] [get_bd_pins slice_to_MAC0/aclk] [get_bd_pins slice_to_MAC1/aclk] [get_bd_pins slice_to_MAC2/aclk] [get_bd_pins slice_to_MAC3/aclk]
  connect_bd_net -net clk_250M_in_1 [get_bd_ports clk_250M_in] [get_bd_pins reset_latch_dyn_0/clk_250M_in]
  connect_bd_net -net clk_400M_in_1 [get_bd_ports clk_400M_in] [get_bd_pins reset_latch_dyn_0/clk_400M_in]
  connect_bd_net -net gpio2_io_i_0_1 [get_bd_ports gpio2_io_i_0] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net reset_latch_dyn_0_rstn_100M1 [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/M01_ARESETN] [get_bd_pins axi_interconnect/M02_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins reset_latch_dyn_0/rstn_100M] [get_bd_pins version_register_0/s00_axi_aresetn]
  connect_bd_net -net reset_latch_dyn_0_rstn_250M [get_bd_ports rstn_250M_0] [get_bd_pins reset_latch_dyn_0/rstn_250M]
  connect_bd_net -net resetn_1 [get_bd_ports resetn] [get_bd_pins reset_latch_dyn_0/resetn_in]

  # Create address segments
  assign_bd_address -offset 0x800D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S_AXI_Lite] [get_bd_addr_segs Register_interface/s00_axi/reg0] -force
  assign_bd_address -offset 0x800E0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S_AXI_Lite] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x800C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S_AXI_Lite] [get_bd_addr_segs version_register_0/s00_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


