# run with
#vivado_hls -f run_hls.tcl

set script_path [ file dirname [ file normalize [ info script ] ] ]

set ProjectName [file tail [pwd]]

set BaseDir $script_path/..

set HlsProjectDir [pwd]

set HlsTop $ProjectName

set HlsSources "$ProjectName.cpp"

set HlsCFLAGS "-Wno-unknown-pragmas"

set HlsCsimFLAGS $HlsCFLAGS

set HlsTbSources "${ProjectName}_test.cpp"

set HlsDescription "HLS IP core $ProjectName"

set HlsIpVersion "0.1"

set IPDir $BaseDir/IP

if { [file exists $HlsProjectDir/hls_projectsettings.tcl] == 1 } {
	source $HlsProjectDir/hls_projectsettings.tcl
}

# default to csynth and export and unzip
set hls_exec 3
if { $::argc > 2 } {
	set hls_exec [lindex $::argv 2]
}

if { $hls_exec == 4 } {
	# don't reset
	open_project $ProjectName
} else {
	open_project -reset $ProjectName
	set_top $HlsTop
	add_files $HlsSources -cflags "$HlsCFLAGS" -csimflags "$HlsCsimFLAGS"
	add_files -tb $HlsTbSources -cflags "$HlsCFLAGS" -csimflags "$HlsCsimFLAGS"
	open_solution "solution1" -flow_target vivado
	set_part {xczu11eg-ffvc1760-2-e}
	create_clock -period 5 -name default
}

proc export {} {
   variable HlsDescription
   variable HlsIpVersion
   variable ProjectName
   export_design -rtl verilog -format ip_catalog -description "$HlsDescription" -vendor "Xilinx" -library "U25N" -version "$HlsIpVersion" -display_name "$ProjectName" -output ./IP/$ProjectName.zip
}

proc install_IP {} {
	variable IPDir
	variable ProjectName
    file mkdir $IPDir/$ProjectName
    puts "exec unzip ./IP/$ProjectName.zip -d $IPDir/$ProjectName/"
    exec unzip -o ./IP/$ProjectName.zip -d $IPDir/$ProjectName/
}

if {$hls_exec == 1} {
   # Run Synthesis and Exit
   csynth_design -clean
   
} elseif {$hls_exec == 2} {
   # Run Synthesis, RTL Simulation and Exit
   csynth_design
   
   cosim_design -trace_level all
} elseif {$hls_exec == 3} { 
   # Run Synthesis, /*RTL Simulation, */RTL implementation and Exit
   csynth_design
   
   #cosim_design
   export
   install_IP
} elseif {$hls_exec == 4} { 
   export
   install_IP
} elseif {$hls_exec == 5} {
   csynth_design
}
# Default is to exit after setup

exit
