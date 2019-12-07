-- top.vhd
--  this VHDL design instatiates a Qsys system with a Nios II processor that has access to the many diffent peripherals
--  on the BeMicro Max 10 board.
--
--  There are many different software examples included in the software folder.


library ieee;
use ieee.std_logic_1164.all;

entity top is
	port 
	(
			SYS_CLK      	: in  std_logic                    := 'X';             -- clk
			USER_CLK			: in std_logic;
			PB			   	: in  std_logic_vector(4 downto 1) := (others => 'X'); -- export
			USER_LED 		: out std_logic_vector(8 downto 1);                     -- export	

			SDRAM_A			: out std_logic_vector(12 downto 0);
			SDRAM_BA			: out std_logic_vector(1 downto 0);
			SDRAM_CASN		: out std_logic;
         SDRAM_CKE		: out std_logic;
         SDRAM_CSN		: out std_logic;
         SDRAM_DQ			: inout std_logic_vector(15 downto 0);
         SDRAM_DQM		: out std_logic_vector(1 downto 0); 
         SDRAM_RASN		: out std_logic;
         SDRAM_WEN		: out std_logic;  
			SDRAM_CLK		: out std_logic;
			
			ADXL362_MISO	: in std_logic;
			ADXL362_MOSI	: out std_logic;
			ADXL362_SCLK	: out std_logic;
			ADXL362_CSn 	: out std_logic;
			ADXL362_INT1	: in std_logic;
			ADXL362_INT2	: in std_logic;
			
			ADT7420_SCL	 	: inout std_logic;
			ADT7420_SDA		: inout std_logic;
			
			SFLASH_DCLK		: out std_logic;
			SFLASH_CSn		: out std_logic;
			SFLASH_DATA		: in std_logic;	   -- input data from spi flash
			SFLASH_ASDI		: out std_logic;		-- this feeds out to the data input of the spi flash
			
			AD5681R_LDACn	: out std_logic;
			AD5681R_RSTn	: out std_logic;
			AD5681R_SCL		: out std_logic;
			AD5681R_SDA		: out std_logic;
			AD5681R_SYNCn	: out std_logic
			
	);

end entity;

architecture rtl of top is
	component nios_system is
		port (
			clk_clk                                                : in    std_logic                     := 'X';             -- clk
			reset_reset_n                                          : in    std_logic                     := 'X';             -- reset_n
			button_pio_export                                      : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			led_pio_export                                         : out   std_logic_vector(7 downto 0);                     -- export
			sdram_wire_addr                                        : out   std_logic_vector(11 downto 0);                    -- addr
			sdram_wire_ba                                          : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                                       : out   std_logic;                                        -- cas_n
			sdram_wire_cke                                         : out   std_logic;                                        -- cke
			sdram_wire_cs_n                                        : out   std_logic;                                        -- cs_n
			sdram_wire_dq                                          : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                                         : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                                       : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                                        : out   std_logic;                                        -- we_n
			spi_accelerometer_out_MISO                             : in    std_logic                     := 'X';             -- MISO
			spi_accelerometer_out_MOSI                             : out   std_logic;                                        -- MOSI
			spi_accelerometer_out_SCLK                             : out   std_logic;                                        -- SCLK
			spi_accelerometer_out_SS_n                             : out   std_logic;                                        -- SS_n
			i2c_adt7420_export_scl_pad_io                          : inout std_logic                     := 'X';             -- scl_pad_io
			i2c_adt7420_export_sda_pad_io                          : inout std_logic                     := 'X';             -- sda_pad_io
			spi_ad5681_out_MISO                                    : in    std_logic                     := 'X';             -- MISO
			spi_ad5681_out_MOSI                                    : out   std_logic;                                        -- MOSI
			spi_ad5681_out_SCLK                                    : out   std_logic;                                        -- SCLK
			spi_ad5681_out_SS_n                                    : out   std_logic;                                        -- SS_n
			sdram_clkout_clk                                       : out   std_logic;                                        -- clk
			sdram_pll_areset_conduit_export                        : in    std_logic                     := 'X';             -- export
			sdram_pll_locked_conduit_export                        : out   std_logic;                                        -- export
			adc_pll_areset_conduit_export                          : in    std_logic                     := 'X';             -- export
			adc_pll_phasedone_conduit_export                       : out   std_logic;                                        -- export
			sdram_pll_phasedone_conduit_export                     : out   std_logic;                                        -- export
			bemicro_max10_serial_flash_controller_0_external_dclk  : out   std_logic;                                        -- dclk
			bemicro_max10_serial_flash_controller_0_external_sce   : out   std_logic;                                        -- sce
			bemicro_max10_serial_flash_controller_0_external_sdo   : out   std_logic;                                        -- sdo
			bemicro_max10_serial_flash_controller_0_external_data0 : in    std_logic;  
			clk_adc_clk                                            : in    std_logic; 
			adc_clk_reset_reset_n                                  : in    std_logic 
		);
	end component nios_system;

	signal async_reset_n		: std_logic;
	signal reset_n 			: std_logic;
	signal pll_areset 		: std_logic;
	signal reset_sync_n		: std_logic_vector(1 downto 0);
	signal led_export 		: std_logic_vector(8 downto 1);


begin

	-- push_buttons are active low
	-- reset the Nios when PB4 and PB1 are pushed simultaneously
	async_reset_n <= '0' when PB(4) = '0' and PB(1) = '0' else '1';
	
	--reset synchronizer
	--  this logic will asynchronously reset the whole system, yet
	--  will synchronously release reset
	process(SYS_CLK)
	begin
	   if(async_reset_n = '0') then
			reset_sync_n <= "00"; -- clear 2-bit reset sync register			
		else
			if rising_edge(SYS_CLK) then
				reset_sync_n(0) <= '1';
				reset_sync_n(1) <= reset_sync_n(0);
			end if;
		end if;
	end process;
	
	reset_n <= reset_sync_n(1);
	pll_areset <= not reset_sync_n(1);
	

	u0 : component nios_system
		port map (
			clk_clk                                                => SYS_CLK,
			reset_reset_n                                          => reset_n,
			
			button_pio_export                                      => PB,
			led_pio_export                                         => led_export,
			
			sdram_wire_addr                                        => SDRAM_A(11 downto 0),
			sdram_wire_ba                                          => SDRAM_BA,
			sdram_wire_cas_n                                       => SDRAM_CASN,
			sdram_wire_cke                                         => SDRAM_CKE,
			sdram_wire_cs_n                                        => SDRAM_CSN,
			sdram_wire_dq                                          => SDRAM_DQ,
			sdram_wire_dqm                                         => SDRAM_DQM,
			sdram_wire_ras_n                                       => SDRAM_RASN,
			sdram_wire_we_n                                        => SDRAM_WEN,
			
			spi_accelerometer_out_MISO         							 => ADXL362_MISO, 
			spi_accelerometer_out_MOSI         							 => ADXL362_MOSI, 
			spi_accelerometer_out_SCLK         							 => ADXL362_SCLK,
			spi_accelerometer_out_SS_n         							 => ADXL362_CSn,	
			
			i2c_adt7420_export_scl_pad_io      							 => ADT7420_SCL,
			i2c_adt7420_export_sda_pad_io      							 => ADT7420_SDA,
			
			spi_ad5681_out_MISO 					 	   					 => '1',
			spi_ad5681_out_MOSI 												 => AD5681R_SDA,
			spi_ad5681_out_SCLK 												 => AD5681R_SCL,
			spi_ad5681_out_SS_n 												 => AD5681R_SYNCn,

			sdram_clkout_clk                                       => SDRAM_CLK,
			sdram_pll_areset_conduit_export                        => pll_areset,
			sdram_pll_locked_conduit_export                        => open,
			
			adc_pll_areset_conduit_export                          => pll_areset,
			adc_pll_phasedone_conduit_export                       => open,
			
			sdram_pll_phasedone_conduit_export                     => open,
			
			bemicro_max10_serial_flash_controller_0_external_dclk  => SFLASH_DCLK,
			bemicro_max10_serial_flash_controller_0_external_sce   => SFLASH_CSn,
			bemicro_max10_serial_flash_controller_0_external_sdo   => SFLASH_ASDI,
			bemicro_max10_serial_flash_controller_0_external_data0 => SFLASH_DATA,
			
			clk_adc_clk                                   			 => SYS_CLK,
			adc_clk_reset_reset_n                                  => reset_n
		);

		SDRAM_a(12) <= '0'; --extra address bit used for larger SDRAM devices
		
		--the leds are active low, need to invert
		USER_LED(8 downto 1) <= not led_export(8 downto 1);
		
		AD5681R_LDACn <= '1'; -- LDAC is used to transfer data from the DAC register to the output generating vout.  this can also be done in sw
		AD5681R_RSTn <= reset_n;
		
		
end rtl;
