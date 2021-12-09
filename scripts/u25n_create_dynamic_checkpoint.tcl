
# run with
#vivado -mode batch -source u25n_create_dynamic_checkpoint.tcl

set script_path [ file dirname [ file normalize [ info script ] ] ]

source $script_path/u25n_settings.tcl

puts $DynamicProjectDir/$ProjectName.xpr

# findFiles
# basedir - the directory to start looking in
# pattern - A pattern, as defined by the glob command, that the files must match
proc findFiles { basedir pattern } {

    # Fix the directory name, this ensures the directory name is in the
    # native format for the platform and contains a final directory seperator
    set basedir [string trimright [file join [file normalize $basedir] { }]]
    set fileList {}

    # Look in the current directory for matching files, -type {f r}
    # means ony readable normal files are looked at, -nocomplain stops
    # an error being thrown if the returned list is empty
    foreach fileName [glob -nocomplain -type {f r} -path $basedir $pattern] {
        lappend fileList $fileName
    }

    # Now look for any sub direcories in the current directory
    foreach dirName [glob -nocomplain -type {d  r} -path $basedir *] {
        # Recusively call the routine on the sub directory and append any
        # new files to the results
        set subDirList [findFiles $dirName $pattern]
        if { [llength $subDirList] > 0 } {
            foreach subDirFile $subDirList {
                lappend fileList $subDirFile
            }
        }
    }
    return $fileList
 }

set version_file [findFiles $DynamicProjectDir/$ProjectName.srcs version_register.vhd]

if { [file exists $version_file] == 1 } {
	#update version_file with current timestamp
	set time [clock seconds]
	set timestamp [format %X $time]
	set time_comment [clock format $time -format {%d-%m-%Y %T}]
	set timestamp_rtl "signal timestamp : std_logic_vector(31 downto 0) := x\"$timestamp\"; -- \"$time_comment\""
	exec sed -i -e "s/signal timestamp :.*/$timestamp_rtl/" $version_file
} else {
	puts "Version file not found, not updating version info"
}



open_project $DynamicProjectDir/$ProjectName.xpr
open_bd_design $DynamicProjectDir/$ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd
make_wrapper -files [get_files $DynamicProjectDir/$ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd] -top
update_compile_order -fileset sources_1
generate_target all [get_files $DynamicProjectDir/$ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd] -force
export_ip_user_files -of_objects [get_files $DynamicProjectDir/$ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd] -no_script -sync -force -quiet
set runs [create_ip_run [get_files -of_objects [get_fileset sources_1] $DynamicProjectDir/$ProjectName.srcs/sources_1/bd/dynamic_design_top/dynamic_design_top.bd]]
launch_runs $runs -jobs 24
foreach run $runs { wait_on_run $run }
synth_design -mode out_of_context -flatten_hierarchy rebuilt -top dynamic_region_top -part xcu25-ffvc1760-2LV-e
write_checkpoint $DynamicProjectDir/$ProjectName.dcp -force
close_project
