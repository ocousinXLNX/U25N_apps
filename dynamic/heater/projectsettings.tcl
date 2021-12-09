
#set ProjectName fpga

proc custom_settings() {} {
	set_property DONT_TOUCH FALSE [get_cells -hierarchical -filter DONT_TOUCH ]
	set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets static_region_design_wrapper_inst/static_region_design_i/clk_wiz_1/inst/clk_250M]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT0}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT1}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 CLKOUT1 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT2}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 CLKOUT1 CLKOUT2 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT3}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 CLKOUT1 CLKOUT2 CLKOUT3 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT4}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 CLKOUT1 CLKOUT2 CLKOUT3 CLKOUT4 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT5}]
	set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {CLKOUT0 CLKOUT1 CLKOUT2 CLKOUT3 CLKOUT4 CLKOUT5 clk_250M_static_region_design_clk_wiz_0_1}] -group [get_clocks -include_generated_clocks {CLKOUT6}]
}

proc custom_opt_design() {} {
	opt_design -hier_fanout_limit 512
}

proc my_custom_proc() {} {
	puts testing
}
