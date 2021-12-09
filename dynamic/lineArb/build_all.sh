#! /bin/sh

vivado -mode batch -source update_linearb_IP.tcl

vivado -mode batch -source ../../scripts/u25n_build_all.tcl -tclargs --output_dir ./out/$(date +%Y-%m-%d_%H-%M)
