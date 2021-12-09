library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity version_register is
	port (      
        
		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(31 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(31 downto 0);
		s00_axi_wstrb	: in std_logic_vector(3 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(31 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(31 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic		
		
		
	);
end version_register;

architecture arch_imp of version_register is
------------------------------------------
-- Signals for user logic slave model s/w accessible register example
------------------------------------------
signal build_id  : std_logic_vector(31 downto 0) := x"A00D20D0";  --D0 design
signal board     : std_logic_vector(31 downto 0) := x"00000025";
signal version   : std_logic_vector(31 downto 0) := x"00200001";
signal timestamp : std_logic_vector(31 downto 0) := x"6155B4E5"; -- "30-09-2021 14:00:21"

signal wr_data : std_logic_vector(31 downto 0);
signal rd_data : std_logic_vector(31 downto 0);
signal wr_addr : std_logic_vector(29 downto 0);
signal rd_addr : std_logic_vector(29 downto 0);

signal wr_addr_s : integer range 0 to 30;
signal rd_addr_s : integer range 0 to 30;

signal wr_stb  : std_logic;
signal rd_ack  : std_logic;
signal data_wr_s : std_logic;
signal data_rx_s : std_logic_vector(127 downto 0);

component axi_ctrlif is
	generic
	(
		C_NUM_REG		    : integer			:= 16;
		C_S_AXI_DATA_WIDTH	: integer			:= 32;
		C_S_AXI_ADDR_WIDTH	: integer			:= 32;
		C_FAMILY		    : string			:= "virtexusplus"
	);
	port
	(
		-- AXI bus interface
		S_AXI_ACLK		    : in  std_logic;
		S_AXI_ARESETN		: in  std_logic;
		S_AXI_AWADDR		: in  std_logic_vector(C_S_AXI_ADDR_WIDTH -1 downto 0);
		S_AXI_AWVALID		: in  std_logic;
		S_AXI_WDATA		    : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB		    : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID		: in  std_logic;
		S_AXI_BREADY		: in  std_logic;
		S_AXI_ARADDR		: in  std_logic_vector(C_S_AXI_ADDR_WIDTH -1 downto 0);
		S_AXI_ARVALID		: in  std_logic;
		S_AXI_RREADY		: in  std_logic;
		S_AXI_ARREADY		: out std_logic;
		S_AXI_RDATA		    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP		    : out std_logic_vector(1 downto 0);
		S_AXI_RVALID		: out std_logic;
		S_AXI_WREADY		: out std_logic;
		S_AXI_BRESP		    : out std_logic_vector(1 downto 0);
		S_AXI_BVALID		: out std_logic;
		S_AXI_AWREADY		: out std_logic;

		rd_addr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-3 downto 0);
		rd_data : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		rd_ack  : out std_logic;
		rd_stb  : in  std_logic;

		wr_addr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-3 downto 0);
		wr_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		wr_ack  : in  std_logic;
		wr_stb  : out std_logic
	);
end component;

begin

	ctrlif: axi_ctrlif
    generic map (
        C_S_AXI_ADDR_WIDTH => 32,
        C_S_AXI_DATA_WIDTH => 32,
        C_NUM_REG => 16
    )
    port map(
        S_AXI_ACLK           => S00_AXI_ACLK,
        S_AXI_ARESETN        => S00_AXI_ARESETN,
        S_AXI_AWADDR         => S00_AXI_AWADDR,
        S_AXI_AWVALID        => S00_AXI_AWVALID,
        S_AXI_WDATA          => S00_AXI_WDATA,
        S_AXI_WSTRB          => S00_AXI_WSTRB,
        S_AXI_WVALID         => S00_AXI_WVALID,
        S_AXI_BREADY         => S00_AXI_BREADY,
        S_AXI_ARADDR         => S00_AXI_ARADDR,
        S_AXI_ARVALID        => S00_AXI_ARVALID,
        S_AXI_RREADY         => S00_AXI_RREADY,
        S_AXI_ARREADY        => S00_AXI_ARREADY,
        S_AXI_RDATA          => S00_AXI_RDATA,
        S_AXI_RRESP          => S00_AXI_RRESP,
        S_AXI_RVALID         => S00_AXI_RVALID,
        S_AXI_WREADY         => S00_AXI_WREADY,
        S_AXI_BRESP          => S00_AXI_BRESP,
        S_AXI_BVALID         => S00_AXI_BVALID,
        S_AXI_AWREADY        => S00_AXI_AWREADY,

        rd_addr              => rd_addr,
        rd_data              => rd_data,
        rd_ack               => rd_ack,
        rd_stb               => '0',--data_valid,

        wr_addr              => wr_addr,
        wr_data              => wr_data,
        wr_ack               => '1',
        wr_stb               => wr_stb
    );
    
    rd_addr_s <= to_integer(unsigned(rd_addr(7 downto 0))); 
    wr_addr_s <= to_integer(unsigned(wr_addr(7 downto 0)));

    process(rd_addr_s)
    begin
        case rd_addr_s is
            when 0  => rd_data <= build_id;
            when 1  => rd_data <= x"00000000";
            when 2  => rd_data <= board;
            when 3  => rd_data <= version;
            when 4  => rd_data <= timestamp;
            when others => rd_data <= x"DEADBEEF";
        end case;
    end process;
    
     
    
end arch_imp;