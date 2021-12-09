############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axiSTnonBlockingExample
set_top axiSTnonBlockingExample
add_files axiSTnonBlockingExample.cpp
add_files -tb axiSTnonBlockingExample_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu11eg-ffvc1760-2-e}
create_clock -period 5 -name default

source "./directives.tcl"
if {$hls_exec == 1} {
   # Run Synthesis and Exit
   csynth_design -clean
   
} elseif {$hls_exec == 2} {
   # Run Synthesis, RTL Simulation and Exit
   csynth_design
   
   cosim_design -trace_level all
} elseif {$hls_exec == 3} { 
   # Run Synthesis, RTL Simulation, RTL implementation and Exit
   csynth_design
   
   cosim_design
   export_design -rtl verilog -format ip_catalog -description "axi ST nonBlocking interface" -vendor "Xilinx" -library "Example" -version "1.1" -display_name "axiSTnonBlocking" -output ./IP/IPexample.zip
} else {
   # Default is to exit after setup
   csynth_design
}

exit
