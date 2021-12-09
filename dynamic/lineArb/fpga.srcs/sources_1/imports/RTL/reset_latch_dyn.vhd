library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reset_latch_dyn is Port ( 
    clk_100M_in : in std_logic; 
    clk_200M_in : in std_logic; 
    clk_400M_in : in std_logic; 
    clk_250M_in : in std_logic; 
    
    resetn_in   : in std_logic;
    
    rstn_100M   : out std_logic;     
    rstn_200M   : out std_logic;     
    rstn_250M   : out std_logic;     
    rstn_400M   : out std_logic
    ); 
end reset_latch_dyn;

architecture Behavioral of reset_latch_dyn is

begin

process(clk_100M_in) begin
    if rising_edge(clk_100M_in) then
        rstn_100M   <= resetn_in;
    end if;
end process;

process(clk_200M_in) begin
    if rising_edge(clk_200M_in) then
        rstn_200M   <= resetn_in;
    end if;
end process;

process(clk_250M_in) begin
    if rising_edge(clk_250M_in) then
        rstn_250M   <= resetn_in;
    end if;
end process;

process(clk_400M_in) begin
    if rising_edge(clk_400M_in) then
        rstn_400M   <= resetn_in;
    end if;
end process;


end Behavioral;
