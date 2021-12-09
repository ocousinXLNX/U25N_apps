
# run with
#vivado -mode batch -source u25n_build_all.tcl

set script_path [ file dirname [ file normalize [ info script ] ] ]

source $script_path/u25n_settings.tcl

source $script_path/u25n_create_dynamic_checkpoint.tcl
source $script_path/u25n_create_dynamic_bitstream.tcl

