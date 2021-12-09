library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity demux_logic is 
generic (   TDEST_SIZE          : integer := 16;
            TDATA_WIDTH          : integer := 128;
            TKEEP_WIDTH          : integer := 16);
Port ( 
           s_axis_aclk          : in  STD_LOGIC;
           s_axis_aresetn       : in  STD_LOGIC;
		   
		   --demux_enable_input
	      demux_en             : in  STD_LOGIC;
           
		   --demux_input
           s_axis_tvalid        : in  STD_LOGIC;
           s_axis_tready        : out STD_LOGIC;
           s_axis_tlast         : in  STD_LOGIC;
           s_axis_tdata         : in  STD_LOGIC_VECTOR(TDATA_WIDTH-1 downto 0);
           s_axis_tkeep         : in  STD_LOGIC_VECTOR(TKEEP_WIDTH-1 downto 0);
           s_axis_tdest         : in  STD_LOGIC_VECTOR(TDEST_SIZE-1 downto 0);
--           s_axis_tuser         : in  STD_LOGIC_VECTOR(15 downto 0);
		             
		   --demux_output0
           m0_axis_tvalid        : out STD_LOGIC;
           m0_axis_tready        : in  STD_LOGIC;
           m0_axis_tlast         : out STD_LOGIC;
           m0_axis_tdata         : out STD_LOGIC_VECTOR(TDATA_WIDTH-1 downto 0);
           m0_axis_tkeep         : out STD_LOGIC_VECTOR(TKEEP_WIDTH-1 downto 0);
           m0_axis_tdest         : out STD_LOGIC_VECTOR(TDEST_SIZE-1 downto 0);
--           m0_axis_tuser         : out STD_LOGIC_VECTOR(15 downto 0);
		   
		   --demux_output1
	   m1_axis_tvalid        : out STD_LOGIC;
           m1_axis_tready        : in  STD_LOGIC;
           m1_axis_tlast         : out STD_LOGIC;
           m1_axis_tdata         : out STD_LOGIC_VECTOR(TDATA_WIDTH-1 downto 0);
           m1_axis_tkeep         : out STD_LOGIC_VECTOR(TKEEP_WIDTH-1 downto 0);
           m1_axis_tdest         : out STD_LOGIC_VECTOR(TDEST_SIZE-1 downto 0)
--           m1_axis_tuser         : out STD_LOGIC_VECTOR(15 downto 0)
        );
end demux_logic;

architecture Behavioral of demux_logic is

signal s_axis_tready_s : std_logic;


begin

s_axis_tready_s <= m1_axis_tready when demux_en ='0' else m0_axis_tready;

s_axis_tready <= s_axis_tready_s;  


process(s_axis_aclk) begin
        if rising_edge(s_axis_aclk) then
                if s_axis_tready_s = '1' then
                       if demux_en = '0' then
                                m1_axis_tdata          <= s_axis_tdata   ;
                                m1_axis_tvalid         <= s_axis_tvalid  ;
                                m1_axis_tlast          <= s_axis_tlast   ;
                                m1_axis_tkeep          <= s_axis_tkeep   ;
                                m1_axis_tdest          <= s_axis_tdest   ;
--                                m1_axis_tuser          <= s_axis_tuser   ;
                                   
                                m0_axis_tdata      	   <= (others => '0');  
                                m0_axis_tvalid     	   <= '0';   
                                m0_axis_tlast      	   <= '0';  
                                m0_axis_tkeep      	   <= (others => '0'); 
                                m0_axis_tdest          <= (others => '0');
--                                m0_axis_tuser          <= (others => '0');
                                                                   
                                   
                        else
                                m0_axis_tdata          <= s_axis_tdata   ;
                                m0_axis_tvalid         <= s_axis_tvalid  ;
                                m0_axis_tlast          <= s_axis_tlast   ;
                                m0_axis_tkeep          <= s_axis_tkeep   ;	
                                m0_axis_tdest          <= s_axis_tdest   ;
--                                m0_axis_tuser          <= s_axis_tuser   ;                       
        
                                m1_axis_tdata      	   <=  (others => '0');  
                                m1_axis_tvalid     	   <= '0';    
                                m1_axis_tlast      	   <= '0'; 
                                m1_axis_tkeep      	   <= (others => '0');
                                m1_axis_tdest          <= (others => '0');
--                                m1_axis_tuser          <= (others => '0');  
                        end if;
              end if;         
        end if;
end process;

end Behavioral;
