################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk_100M_in -period 10 [get_ports clk_100M_in]
create_clock -name rx_aclk_00 -period 10 [get_ports rx_aclk_00]
create_clock -name rx_aclk_01 -period 10 [get_ports rx_aclk_01]
create_clock -name rx_aclk_10 -period 10 [get_ports rx_aclk_10]
create_clock -name rx_aclk_11 -period 10 [get_ports rx_aclk_11]
create_clock -name tx_aclk_00 -period 10 [get_ports tx_aclk_00]
create_clock -name tx_aclk_01 -period 10 [get_ports tx_aclk_01]
create_clock -name tx_aclk_10 -period 10 [get_ports tx_aclk_10]
create_clock -name tx_aclk_11 -period 10 [get_ports tx_aclk_11]

################################################################################