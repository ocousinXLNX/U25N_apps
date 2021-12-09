library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lcs_input_generation is Port ( 
        
        stream_clk_i              : in  std_logic; 
        stream_aresetn_i          : in  std_logic;     
        mae_req_aclk              : in  std_logic;     
        
        maem_metadata_i           : in std_logic_vector(950 downto 0);
        maem_metadata_valid_i     : in std_logic; 
        
       
        --MAE AXI4-S Request interface (MRQI)
        mae_req_tdata             : out std_logic_vector(663 downto 0);
        mae_req_tvalid            : out std_logic; 
        mae_req_tready            : in  std_logic; 
        
        stream_tready_out        :  out std_logic 
        
          
     );
end lcs_input_generation;

architecture Behavioral of lcs_input_generation is

COMPONENT metadata_fifo PORT (
    clk             : IN STD_LOGIC;
    srst            : IN STD_LOGIC;
    din             : IN STD_LOGIC_VECTOR(663 DOWNTO 0);
    wr_en           : IN STD_LOGIC;
    rd_en           : IN STD_LOGIC;
    dout            : OUT STD_LOGIC_VECTOR(663 DOWNTO 0);
    full            : OUT STD_LOGIC;
    empty           : OUT STD_LOGIC;
    wr_rst_busy     : OUT STD_LOGIC;
    rd_rst_busy     : OUT STD_LOGIC
  );
END COMPONENT;

signal fifo_rst         : std_logic;
signal fifo_rden        : std_logic := '0';
signal fifo_full        : std_logic ; 
signal fifo_empty       : std_logic ; 

 

begin

fifo_rst <= not stream_aresetn_i;


metadata_fifo_inst :  metadata_fifo PORT MAP    (
    clk             => stream_clk_i                     ,
    srst            => fifo_rst                         ,
    din             => maem_metadata_i(950 downto 287)  ,
    wr_en           => maem_metadata_valid_i            ,
    rd_en           => fifo_rden                        ,
    dout            => mae_req_tdata                    ,
    full            => fifo_full                        ,
    empty           => fifo_empty                       ,
    wr_rst_busy     => open                             ,
    rd_rst_busy     => open                             
  );


fifo_rden <= '1'when (fifo_empty = '0' and mae_req_tready = '1') else '0';

mae_req_tvalid <= not fifo_empty;

--process(stream_clk_i) begin 
--        if rising_edge(stream_clk_i) then   
--                mae_req_tvalid <= fifo_rden;
--        end if;
--end process;


stream_tready_out <= not fifo_full;


end Behavioral;
