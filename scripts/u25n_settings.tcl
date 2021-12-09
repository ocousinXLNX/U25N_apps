
set script_path [ file dirname [ file normalize [ info script ] ] ]

set ProjectName [file tail [pwd]]

set BaseDir $script_path/..

#set DynamicProjectDir $BaseDir/dynamic/$ProjectName
set DynamicProjectDir [pwd]
#set DynamicOutputDir $BaseDir/dynamic/$ProjectName/out
set DynamicOutputDir $DynamicProjectDir/out

if { [file exists $DynamicProjectDir/projectsettings.tcl] == 1 } {
	source $DynamicProjectDir/projectsettings.tcl
}

proc print_help {script_file} {
  puts "\nDescription:"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--output_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--output_dir <path>\]  Output of dcp, bit files and timing reports. Default"
  puts "                       output_dir path value is \"./out\"\n"
  puts "\[--project_name <name>\] Custom project name. Default"
  puts "                       name is the current folder name, or what is specified"
  puts "                       in the projectsettings.tcl file.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--project_name" { incr i; set ProjectName [lindex $::argv $i] }
      "--output_dir" { incr i; set DynamicOutputDir [lindex $::argv $i] }
       "--help"         { print_help [ file tail [file normalize [ dict get [info frame -4] file ] ] ] }
     default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

