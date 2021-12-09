
#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets ipsec_decryption_wrapper_inst/ipsec_decryption_i/clk_wiz_1/inst/clk_250M]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets clk_250M]

set_false_path -to [get_pins {heater_cfg_u/sync_config_port_i/sync_flop_0_reg[*]/D}]
set_false_path -from [get_cells {heater_cfg_u/sync_config_port_i/sync_flop_3_reg[*]}]

# start frequency always input clock = 250MHz --> resetn never active when clock is not input clock
set_max_delay -from [get_cells {heater_cfg_u/clock_sel_i/resetn_out_reg}] 4.0
