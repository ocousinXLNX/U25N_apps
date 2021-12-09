# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDEST_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TKEEP_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to update TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to validate TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.TDEST_SIZE { PARAM_VALUE.TDEST_SIZE } {
	# Procedure called to update TDEST_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDEST_SIZE { PARAM_VALUE.TDEST_SIZE } {
	# Procedure called to validate TDEST_SIZE
	return true
}

proc update_PARAM_VALUE.TKEEP_WIDTH { PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to update TKEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TKEEP_WIDTH { PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to validate TKEEP_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.TDEST_SIZE { MODELPARAM_VALUE.TDEST_SIZE PARAM_VALUE.TDEST_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDEST_SIZE}] ${MODELPARAM_VALUE.TDEST_SIZE}
}

proc update_MODELPARAM_VALUE.TDATA_WIDTH { MODELPARAM_VALUE.TDATA_WIDTH PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_WIDTH}] ${MODELPARAM_VALUE.TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.TKEEP_WIDTH { MODELPARAM_VALUE.TKEEP_WIDTH PARAM_VALUE.TKEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TKEEP_WIDTH}] ${MODELPARAM_VALUE.TKEEP_WIDTH}
}

