################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name DDR_clk_n -period 10 [get_ports DDR_clk_n]
create_clock -name DDR_clk_p -period 10 [get_ports DDR_clk_p]
create_clock -name clk_100M_in -period 10 [get_ports clk_100M_in]
create_clock -name clk_200M_in -period 5 [get_ports clk_200M_in]
create_clock -name clk_250M_in -period 4 [get_ports clk_250M_in]
create_clock -name clk_400M_in -period 2.500 [get_ports clk_400M_in]

################################################################################