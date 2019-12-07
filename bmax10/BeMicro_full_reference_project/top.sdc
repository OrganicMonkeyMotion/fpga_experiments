## Generated SDC file "top.out.sdc"

## Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus II License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 14.0.1 Build 205 08/13/2014 Patches 1.01 SJ Full Version"

## DATE    "Wed Sep 03 16:24:01 2014"

##
## DEVICE  "10M08DAF484C8GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

#create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name altera_internal_jtag~TCKUTAP -period 100.000 altera_internal_jtag~TCKUTAP
create_clock -name {SYS_CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {SYS_CLK}]
create_clock -name {USER_CLK} -period 41.667 -waveform { 0.000 20.803 } [get_ports {USER_CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks
#create_generated_clock -name {u0|sdram_pll|sd1|pll7|clk[0]} -source [get_pins {u0|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -master_clock {SYS_CLK} [get_pins {u0|sdram_pll|sd1|pll7|clk[0]}] 
#create_generated_clock -name {u0|sdram_pll|sd1|pll7|clk[1]} -source [get_pins {u0|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -phase -90.000 -master_clock {SYS_CLK} [get_pins {u0|sdram_pll|sd1|pll7|clk[1]}] 
#create_generated_clock -name {u0|adc_pll|sd1|pll7|clk[0]} -source [get_pins {u0|adc_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 5 -master_clock {SYS_CLK} [get_pins {u0|adc_pll|sd1|pll7|clk[0]}] 

#AP Added
create_generated_clock -name SDRAM_CLK -source [get_pins {u0|sdram_pll|sd1|pll7|clk[1]}] -master_clock {u0|sdram_pll|sd1|pll7|clk[1]} [get_ports {SDRAM_CLK}]
create_generated_clock -name VIRTUAL_SDRAM_CLK -source SDRAM_CLK 

create_generated_clock -name AD5681R_CL_reg -source [get_pins {u0|sdram_pll|sd1|pll7|clk[0]}] -divide_by 10 [get_registers {nios_system:u0|nios_system_spi_AD5681:spi_ad5681|SCLK_reg}]
create_generated_clock -name AD5681R_SCL -source [get_registers {nios_system:u0|nios_system_spi_AD5681:spi_ad5681|SCLK_reg}] [get_ports {AD5681R_SCL}]
create_generated_clock -name VIRTUAL_AD5681R_SCL -source AD5681R_SCL

create_generated_clock -name ADXL362_SCLK_reg -source [get_pins {u0|sdram_pll|sd1|pll7|clk[0]}] -divide_by 20 [get_registers {nios_system:u0|nios_system_spi_accelerometer:spi_accelerometer|SCLK_reg}]
create_generated_clock -name ADXL362_SCLK -source [get_registers {nios_system:u0|nios_system_spi_accelerometer:spi_accelerometer|SCLK_reg}] [get_ports {ADXL362_SCLK}]
create_generated_clock -name VIRTUAL_ADXL362_SCLK -source ADXL362_SCLK

create_generated_clock -name SFLASH_CLK_ref -source [get_pins {u0|sdram_pll|sd1|pll7|clk[0]}] -divide_by 2 -multiply_by 3 [get_registers {nios_system:u0|nios_system_BeMicro_Max10_serial_flash_controller_0:bemicro_max10_serial_flash_controller_0|nios_system_BeMicro_Max10_serial_flash_controller_0_sub:the_nios_system_BeMicro_Max10_serial_flash_controller_0_sub|SCLK_reg}]
create_generated_clock -name SFLASH_DCLK -source [get_registers {nios_system:u0|nios_system_BeMicro_Max10_serial_flash_controller_0:bemicro_max10_serial_flash_controller_0|nios_system_BeMicro_Max10_serial_flash_controller_0_sub:the_nios_system_BeMicro_Max10_serial_flash_controller_0_sub|SCLK_reg}] [get_ports {SFLASH_DCLK}]
create_generated_clock -name {VIRTUAL_SFLASH_DCLK} -source SFLASH_DCLK

create_generated_clock -name ADT7420_SCL_reg -source [get_pins {u0|sdram_pll|sd1|pll7|clk[0]}] -divide_by 125 [get_registers {nios_system:u0|i2c_opencores:i2c_adt7420|i2c_master_top:i2c_master_top_inst|i2c_master_byte_ctrl:byte_controller|i2c_master_bit_ctrl:bit_controller|scl_oen}]
create_generated_clock -name ADT7420_SCL -source [get_registers {nios_system:u0|i2c_opencores:i2c_adt7420|i2c_master_top:i2c_master_top_inst|i2c_master_byte_ctrl:byte_controller|i2c_master_bit_ctrl:bit_controller|scl_oen}] [get_ports {ADT7420_SCL}]
create_generated_clock -name {VIRTUAL_ADT7420_SCL} -source ADT7420_SCL


#**************************************************************
# Set Clock Latencycreate_clock -name { SFLASH_DCLK1} -period 13.3 -waveform { 0 6.67 }
#**************************************************************



#**************************************************************
# Derive Clock Uncertainty
#**************************************************************
derive_clock_uncertainty


#SDRAM Constraints - Get values from Data Sheet
#**************************************************************
# Set Input and Output Delay
#**************************************************************
set_multicycle_path -from SDRAM_CLK -to [get_ports {SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15]}]  -start -setup 2
set_multicycle_path -from SDRAM_CLK -to [get_ports {SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15]}]  -start -hold 1


set_input_delay -clock SDRAM_CLK -clock_fall -max 5.4 [get_ports {SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15]}]
set_input_delay -clock SDRAM_CLK -clock_fall -min 2.7 [get_ports {SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15]}]

set_output_delay -clock SDRAM_CLK -max 1.5  [get_ports {SDRAM_A[0] SDRAM_A[1] SDRAM_A[2] SDRAM_A[3] SDRAM_A[4] SDRAM_A[5] SDRAM_A[6] SDRAM_A[7] SDRAM_A[8] SDRAM_A[9] SDRAM_A[10] SDRAM_A[11] SDRAM_A[12] SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15] SDRAM_RASN SDRAM_DQM[1] SDRAM_CKE SDRAM_CSN SDRAM_DQM[0] SDRAM_WEN SDRAM_BA[0] SDRAM_BA[1] SDRAM_CASN }]
set_output_delay -clock SDRAM_CLK -min -0.8    [get_ports {SDRAM_A[0] SDRAM_A[1] SDRAM_A[2] SDRAM_A[3] SDRAM_A[4] SDRAM_A[5] SDRAM_A[6] SDRAM_A[7] SDRAM_A[8] SDRAM_A[9] SDRAM_A[10] SDRAM_A[11] SDRAM_A[12] SDRAM_DQ[0] SDRAM_DQ[1] SDRAM_DQ[2] SDRAM_DQ[3] SDRAM_DQ[4] SDRAM_DQ[5] SDRAM_DQ[6] SDRAM_DQ[7] SDRAM_DQ[8] SDRAM_DQ[9] SDRAM_DQ[10] SDRAM_DQ[11] SDRAM_DQ[12] SDRAM_DQ[13] SDRAM_DQ[14] SDRAM_DQ[15] SDRAM_RASN SDRAM_DQM[1] SDRAM_CKE SDRAM_CSN SDRAM_DQM[0] SDRAM_WEN SDRAM_BA[0] SDRAM_BA[1] SDRAM_CASN }]

# Only here for removal of unconstrained path on the output pin
set_output_delay -clock {VIRTUAL_SDRAM_CLK}  0  [get_ports {SDRAM_CLK}] 


#**************************************************************
# AD5681R Constraints 
#**************************************************************
set_multicycle_path -to [get_ports {AD5681R_SDA  AD5681R_SYNCn}] -setup 10 -start
set_multicycle_path -to [get_ports {AD5681R_SDA  AD5681R_SYNCn}] -hold 9 -start

set_output_delay -clock { AD5681R_SCL } -clock_fall -max 5 [get_ports {AD5681R_SDA }]
set_output_delay -clock { AD5681R_SCL } -clock_fall -min -5 [get_ports {AD5681R_SDA }]
set_output_delay -clock { AD5681R_SCL } -clock_fall -max 15 [get_ports {AD5681R_SYNCn}]
set_output_delay -clock { AD5681R_SCL } -clock_fall -min 0 [get_ports {AD5681R_SYNCn}]

# Only here for removal of unconstrained path on the output pin
set_output_delay -clock {VIRTUAL_AD5681R_SCL}  0  [get_ports {AD5681R_SCL}] 


#**************************************************************
# ADXL362 Constraints 
#**************************************************************
set_input_delay -clock { ADXL362_SCLK } -clock_fall -max 0 [get_ports {ADXL362_MISO ADXL362_INT1 ADXL362_INT2}]
set_input_delay -clock { ADXL362_SCLK } -clock_fall -min 0 [get_ports {ADXL362_MISO ADXL362_INT1 ADXL362_INT2}]

set_multicycle_path -to [get_ports {ADXL362_MOSI  ADXL362_CSn}] -setup 20 -start
set_multicycle_path -to [get_ports {ADXL362_MOSI  ADXL362_CSn}] -hold 19 -start

#Center aligned system . Giving False Paths
#set_output_delay -clock { ADXL362_SCLK } -clock_fall -max 100 [get_ports {ADXL362_CSn}]
#set_output_delay -clock { ADXL362_SCLK } -clock_fall -min -100 [get_ports {ADXL362_CSn}]
#set_output_delay -clock { ADXL362_SCLK } -clock_fall -max 50 [get_ports {ADXL362_MOSI}]
#set_output_delay -clock { ADXL362_SCLK } -clock_fall -min -50 [get_ports {ADXL362_MOSI}]

# Only here for removal of unconstrained path on the output pin
set_output_delay -clock {VIRTUAL_ADXL362_SCLK}  0  [get_ports {ADXL362_SCLK}] 



#**************************************************************
# ADT7420 Constraints 
#**************************************************************
set_multicycle_path -to [get_ports {ADT7420_SDA  }] -setup 125 -start
set_multicycle_path -to [get_ports {ADT7420_SDA  }] -hold 124 -start 

set_output_delay -clock { ADT7420_SCL } -clock_fall -max 20 [get_ports {ADT7420_SDA}]
set_output_delay -clock { ADT7420_SCL } -clock_fall -min -30 [get_ports {ADT7420_SDA}]
set_output_delay -clock { ADT7420_SCL }  -max 20 [get_ports {ADT7420_SDA}] -add_delay
set_output_delay -clock { ADT7420_SCL }  -min -30 [get_ports {ADT7420_SDA}] -add_delay
 
# Only here for removal of unconstrained path on the output pin
set_output_delay -clock {VIRTUAL_ADT7420_SCL}  0  [get_ports {ADT7420_SCL}] 


#**************************************************************
# SFLASH Constraints
#**************************************************************

#Center aligned system . Giving False Paths
#set_input_delay -clock { SFLASH_DCLK} -clock_fall -max 8 [get_ports {SFLASH_DATA}]
#set_input_delay -clock { SFLASH_DCLK} -clock_fall -min 0 [get_ports {SFLASH_DATA}]
#set_output_delay -clock { SFLASH_DCLK} -max 2 [get_ports {SFLASH_CSn SFLASH_ASDI}]
#set_output_delay -clock { SFLASH_DCLK} -min -5 [get_ports {SFLASH_CSn SFLASH_ASDI}]

# Only here for removal of unconstrained path on the output pin
set_output_delay -clock {VIRTUAL_SFLASH_DCLK}  0  [get_ports {SFLASH_DCLK}] 


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]
set_false_path -from {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_block:altera_onchip_flash_block|drdout*} -to {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_block:altera_onchip_flash_block|drdout*}
set_false_path -from {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_block:altera_onchip_flash_block|ufm_block~ADDRESS_DFF} -to {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_block:altera_onchip_flash_block|ufm_block~ADDRESS_DFF}
set_false_path -from [get_ports {PB[1] PB[2] PB[3] PB[4] ADT7420_SDA SFLASH_DATA}]
set_false_path -to [get_ports {USER_LED[8] USER_LED[1] USER_LED[2] USER_LED[3] USER_LED[4] USER_LED[5] USER_LED[6] USER_LED[7] AD5681R_RSTn ADXL362_CSn ADXL362_MOSI SFLASH_CSn SFLASH_ASDI}]
set_false_path -from [get_registers {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_avmm_data_controller:avmm_data_controller|flash_busy_reg}]
set_false_path -to [get_registers {nios_system:u0|altera_onchip_flash:ufm_flash|altera_onchip_flash_avmm_data_controller:avmm_data_controller|flash_busy_reg}]
#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#JTAG Signal Constraints - Needed to contrain JTAG pins
#cut all paths to and from altera_reserved_tck
set_clock_groups -exclusive -group [get_clocks altera_reserved_tck]
#constrain the TDI port
set_input_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tdi]
#constrain the TMS port
set_input_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tms]
#constrain the TDO port
set_output_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tdo]


