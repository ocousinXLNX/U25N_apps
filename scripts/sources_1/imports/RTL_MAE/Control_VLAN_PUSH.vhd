-- =========================================================================================================================================================================
--
-- File Name: Control_VLAN_PUSH.vhd
--  
-- Author	: 	
-- Project	: XILU_U25B 
-- Company 	: VVDN Technologies Pvt. Ltd
--
-- =========================================================================================================================================================================
--
-- Copyright (c) 2019 VVDN Technologies Pvt. Ltd.   http://www.vvdntech.com/ 
-- All rights reserved.
--	
-- This file is owned and controlled by VVDN Technologies Pvt. Ltd. and must be 
-- used solely for design, simulation, implementation and creation of design 
-- files used. devices or technologies.
-- Use in other designs is expressly prohibited and immediately terminates the
-- license to use this file.
--
-- This file is provided without any express or implied warranties, including, but
-- not limited to, the implied warranties of merchantability and fitness for a 
-- particular purpose. It is not intended for use in life support appliances, 
-- devices, or systems. Use in such applications is expressly prohibited.
--
-- VVDN Technologies Pvt. Ltd. make no guarantee or 
-- representation regarding the use of, or the results of the use of, the software
-- and documentation in terms of correctness, accuracy, reliability, currentness, or
-- otherwise; Reliance upon the results, software, or documentation is solely at the
-- users own risk.
--
-- =========================================================================================================================================================================
--
-- $Revision: 1.0 $ $Date: 2020/10/13 2:37 PM $
--
-- Description:
-- This module implements Control VLAN pushing and egress flag setting based on qid
--
-- Target Device	: xcu25-ffvc1760-2LV-e
-- Device Family 	: Xilinx Virtex Ultrascale Plus. 
-- Synthesis Tool	: Xilinx Vivado 2020.1
--
-- Revision : 1
--
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Control_VLAN_PUSH is Port (
         s_axis_aclk      : in  std_logic;
         s_axis_aresetn   : in  std_logic;
         m_axis_aclk      : in  std_logic;
		 
         s_axis_tdata     : in  std_logic_vector(511 downto 0); 
         s_axis_tkeep     : in  std_logic_vector(63 downto 0);  
		 s_axis_tdest     : in  std_logic_vector(3 downto 0);  
         s_axis_tvalid    : in  std_logic;                      
         s_axis_tlast     : in  std_logic;                      
         s_axis_tready    : out std_logic;                      
         
         m_axis_tdata     : out std_logic_vector(511 downto 0); 
         m_axis_tkeep     : out std_logic_vector(63 downto 0);  
		 m_axis_tdest     : out std_logic_vector(3 downto 0);  
         m_axis_tvalid    : out std_logic;                      
         m_axis_tlast     : out std_logic;                      
         m_axis_tready    : in std_logic;
         
         egress_flag      : out std_logic
		 
   );
end Control_VLAN_PUSH;

architecture Behavioral of Control_VLAN_PUSH is

type packet_sm is (SM_IDLE,SM_SC_PKT,SM_MC_PKT_START, SM_WAIT,SM_MC_PKT_LAST, SM_LAST_EXT);
signal fsm_state   			: packet_sm;

signal tready_control_flag  : std_logic := '1';
signal pf                   : std_logic_vector(1 downto 0);

signal s_axis_tready_s		: std_logic;
signal s_axis_tdata_dly     : std_logic_vector(511 downto 0); 
signal s_axis_tkeep_dly     : std_logic_vector(63 downto 0);  
signal s_axis_tdest_dly     : std_logic_vector(3 downto 0);  
signal s_axis_tvalid_dly    : std_logic;  
signal s_axis_tlast_dly     : std_logic;  

signal tdata_ext	     	: std_logic_vector(31 downto 0); 
signal tkeep_ext	     	: std_logic_vector(3 downto 0);  
signal tdest_ext	     	: std_logic_vector(3 downto 0); 


begin

s_axis_tready_s <= m_axis_tready and tready_control_flag;
s_axis_tready   <= s_axis_tready_s;


--============================================================================
process(s_axis_aclk) begin
        if rising_edge(s_axis_aclk) then
               if s_axis_aresetn = '0' then
                    fsm_state 			<= SM_IDLE;
					tready_control_flag <= '1';
               else
                       case  fsm_state is
                              -------------------------------------------------------------------
                                when SM_IDLE => tready_control_flag <= '1';
												
												    if ( s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1') then
															fsm_state <= SM_SC_PKT;
															if s_axis_tkeep(63 downto 60) /= x"0" then
																tready_control_flag <= '0';
															end if;
												    elsif ( s_axis_tvalid = '1' and s_axis_tready_s = '1') then
															 fsm_state <= SM_MC_PKT_START;
												    end if;
												
                              -------------------------------------------------------------------                                                
                                when SM_SC_PKT => 
                                                  if s_axis_tkeep_dly(63 downto 60) = x"0" then  
                                                     if (s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1' ) then
                                                             fsm_state <= SM_SC_PKT;
                                                             if s_axis_tkeep(63 downto 60) /= x"0" then
                                                                 tready_control_flag <= '0';
                                                             end if;																  
                                                     elsif (s_axis_tvalid = '1' and m_axis_tready = '1') then
                                                               fsm_state <= SM_MC_PKT_START;                                                
                                                     elsif m_axis_tready = '1' then
                                                               fsm_state <= SM_IDLE;
                                                     end if;
                                                      
												  else
													 if ( m_axis_tready = '1') then
													 		  fsm_state <= SM_LAST_EXT; 
													 		  tready_control_flag <= '1';
													 end if;
													 
												  end if;
												 	
                              -------------------------------------------------------------------                                
							    when SM_LAST_EXT => 
                                                   if (s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1' ) then
                                                             fsm_state <= SM_SC_PKT;
                                                             if s_axis_tkeep(63 downto 60) /= x"0" then
                                                             tready_control_flag <= '0';
                                                             end if;	         
                                                   elsif (s_axis_tvalid = '1' and m_axis_tready = '1') then
                                                             fsm_state <= SM_MC_PKT_START;                                                
                                                   elsif m_axis_tready = '1' then
                                                             fsm_state <= SM_IDLE;
                                                   end if;		
                                                    		  
							  -------------------------------------------------------------------
                                 when SM_MC_PKT_START => 
													if ( s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1') then
															fsm_state <= SM_MC_PKT_LAST;
															if s_axis_tkeep(63 downto 60) /= x"0" then
																tready_control_flag <= '0';
															end if;
													elsif ( s_axis_tvalid = '1' and m_axis_tready = '1') then
															 fsm_state <= SM_WAIT;
													end if;
                              -------------------------------------------------------------------   
                                 when SM_WAIT  =>  
													if ( s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1') then
															fsm_state <= SM_MC_PKT_LAST;
															if s_axis_tkeep(63 downto 60) /= x"0" then
																tready_control_flag <= '0';
															end if;
													end if;
                              -------------------------------------------------------------------   
                                 when SM_MC_PKT_LAST  => if s_axis_tkeep_dly(63 downto 60) = x"0" then
                                                               
                                                            if ( s_axis_tvalid = '1' and m_axis_tready = '1' and s_axis_tlast = '1' ) then
                                                                    fsm_state <= SM_SC_PKT;
                                                                    if s_axis_tkeep(63 downto 60) /= x"0" then
                                                                        tready_control_flag <= '0';
                                                                    end if;																	  
                                                            elsif ( s_axis_tvalid = '1' and m_axis_tready = '1') then
                                                                      fsm_state <= SM_MC_PKT_START;                                                
                                                            elsif m_axis_tready = '1' then
                                                                      fsm_state <= SM_IDLE;
                                                            end if;
                                                            
														 else
															if ( m_axis_tready = '1') then
																	  fsm_state <= SM_LAST_EXT; 
																	  tready_control_flag <= '1';
															end if;
														 end if;												
                              -------------------------------------------------------------------                                 
                                 when others => fsm_state <= SM_IDLE;
                              -------------------------------------------------------------------                                 
                       end case;  
               end if;    
        end if;
end process;


process(s_axis_aclk) begin
        if rising_edge(s_axis_aclk) then
			if s_axis_tready_s = '1' then
				s_axis_tdata_dly 	<= s_axis_tdata;
				s_axis_tkeep_dly	<= s_axis_tkeep;
				s_axis_tvalid_dly   <= s_axis_tvalid;
				s_axis_tlast_dly    <= s_axis_tlast;
				s_axis_tdest_dly    <= s_axis_tdest;
		------------------------------------------------------------		
			if s_axis_tdest = x"1" then       --<PF#> of VLAN
			  	pf          <= "01";
			elsif s_axis_tdest = x"0" then  	
				pf          <= "00";
			end if;
		---------------------------------------------------------------	
			if s_axis_tdest_dly = x"1" then    -- egress flag 
			    egress_flag          <= '1';
            elsif s_axis_tdest_dly = x"0" then  	
               egress_flag          <= '0';
            end if;
		---------------------------------------------------------------	
		   end if;	
		end if;
end process;


process(s_axis_aclk) begin
        if rising_edge(s_axis_aclk) then
			if m_axis_tready = '1' then
				case  fsm_state is
                     -------------------------------------------------------------------
						when SM_IDLE =>		m_axis_tvalid					<= '0';
											m_axis_tlast					<= '0';											     							
                    
                     -------------------------------------------------------------------                                                
						when SM_SC_PKT =>	m_axis_tdata(95 downto 0) 		<= s_axis_tdata_dly(95 downto 0);
											m_axis_tdata(127 downto 96) 	<= x"fe" & "000001" & pf & x"0081";  ---[8100] <000001><PF#> <0xfe>
											m_axis_tdata(511 downto 128) 	<= s_axis_tdata_dly(479 downto 96);
											tdata_ext						<= s_axis_tdata_dly(511 downto 480);
											m_axis_tkeep					<= s_axis_tkeep_dly(59 downto 0) & x"f";
											tkeep_ext						<= s_axis_tkeep_dly(63 downto 60);
											m_axis_tdest					<= s_axis_tdest_dly;
											tdest_ext						<= s_axis_tdest_dly;
											m_axis_tvalid					<= '1';
											
											if s_axis_tkeep_dly(63 downto 60) = x"0" then 
												m_axis_tlast 	            <= '1';
											else
												m_axis_tlast	            <= '0';
											end if;
											
											
											
                     -------------------------------------------------------------------                                
						when SM_LAST_EXT =>	m_axis_tdata(31 downto 0) 		<= tdata_ext;
											m_axis_tdata(511 downto 32) 	<= (others => '0');
											m_axis_tkeep(3 downto 0)		<= tkeep_ext;
											m_axis_tkeep(63 downto 4)		<= (others => '0');
											m_axis_tdest					<= tdest_ext;
											m_axis_tvalid					<= '1';
											m_axis_tlast 					<= '1';					  
				  -------------------------------------------------------------------
                        when SM_MC_PKT_START => 
											m_axis_tdata(95 downto 0) 		<= s_axis_tdata_dly(95 downto 0);
											m_axis_tdata(127 downto 96) 	<= x"fe" & "000001" & pf & x"0081";  ---[8100] <000001><PF#> <0xfe>
											m_axis_tdata(511 downto 128) 	<= s_axis_tdata_dly(479 downto 96);
											tdata_ext						<= s_axis_tdata_dly(511 downto 480);
											m_axis_tkeep					<= (others => '1');
											m_axis_tdest					<= s_axis_tdest_dly;
											m_axis_tvalid					<= '1';
											m_axis_tlast					<= '0';
							
                     -------------------------------------------------------------------   
                        when SM_WAIT  =>  
											m_axis_tdata(31 downto 0) 		<= tdata_ext;
											m_axis_tdata(511 downto 32) 	<= s_axis_tdata_dly(479 downto 0);
											tdata_ext						<= s_axis_tdata_dly(511 downto 480);
											m_axis_tkeep					<= (others => '1');
											m_axis_tdest					<= s_axis_tdest_dly;
											m_axis_tvalid					<= '1';
											m_axis_tlast					<= '0';
                     -------------------------------------------------------------------   
                        when SM_MC_PKT_LAST  => 
											m_axis_tdata(31 downto 0) 		<= tdata_ext;
											m_axis_tdata(511 downto 32) 	<= s_axis_tdata_dly(479 downto 0);
											tdata_ext						<= s_axis_tdata_dly(511 downto 480);
											m_axis_tkeep					<= s_axis_tkeep_dly(59 downto 0) & x"f";
											tkeep_ext						<= s_axis_tkeep_dly(63 downto 60);
											m_axis_tdest					<= s_axis_tdest_dly;
											tdest_ext						<= s_axis_tdest_dly;
											m_axis_tvalid					<= '1';
											
											if s_axis_tkeep_dly(63 downto 60) = x"0" then 
												m_axis_tlast 	            <= '1';
											else
												m_axis_tlast	            <= '0';
											end if;											
                     -------------------------------------------------------------------                                 
                        when others => null;
                     -------------------------------------------------------------------                                 
				end case;  
             end if;    
        end if;

end process;


end Behavioral;        
        
