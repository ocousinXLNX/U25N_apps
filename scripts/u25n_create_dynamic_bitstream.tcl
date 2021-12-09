
# run with
#vivado -mode batch -source u25n_create_dynamic_bitstream.tcl

set script_path [ file dirname [ file normalize [ info script ] ] ]

source $script_path/u25n_settings.tcl

file mkdir $DynamicOutputDir
set files [glob -nocomplain -type f $DynamicOutputDir/*]
if { [llength $files] > 0 } {
	file mkdir $DynamicOutputDir/backup
	foreach f $files {
		file rename -force $f $DynamicOutputDir/backup/
	}
}

open_checkpoint $BaseDir/static/static_route_design.dcp
read_checkpoint -cell dynamic_region_top_inst/par_wrapper_inst $DynamicProjectDir/$ProjectName.dcp

catch { custom_settings() }

opt_design
catch { custom_opt_design() }
write_checkpoint -force $DynamicOutputDir/post_opt.dcp
report_timing_summary -file $DynamicOutputDir/post_opt_timing_summary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $DynamicOutputDir/post_opt_timing.rpt
place_design
write_checkpoint -force $DynamicOutputDir/post_place.dcp
report_timing_summary -file $DynamicOutputDir/post_place_timing_summary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $DynamicOutputDir/post_place_timing.rpt
phys_opt_design -directive AggressiveExplore 
write_checkpoint -force $DynamicOutputDir/post_physopt.dcp
route_design
write_checkpoint -force $DynamicOutputDir/post_route.dcp
report_timing_summary -file $DynamicOutputDir/post_route_timing_summary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $DynamicOutputDir/post_route_timing.rpt
write_bitstream -cell dynamic_region_top_inst/par_wrapper_inst -force $DynamicOutputDir/$ProjectName.bit
