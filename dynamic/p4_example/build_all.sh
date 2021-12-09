#! /bin/sh

vivado -mode batch -source ../../scripts/u25n_build_all.tcl
#vivado -mode batch -source ../../scripts/u25n_build_all.tcl -tclargs --output_dir ./out/$(date +%Y-%m-%d_%T)

