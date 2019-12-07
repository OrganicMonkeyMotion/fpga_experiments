proc ::setup_project {} {

set_global_assignment -name FAMILY "MAX 10 FPGA"	 -tag platfrom
set_global_assignment -name DEVICE 10M08DAF484C8GES	 -tag platfrom
set_global_assignment -name TOP_LEVEL_ENTITY top	 -tag platfrom
set_global_assignment -name ORIGINAL_QUARTUS_VERSION "14.0 SP1.01"	 -tag platfrom
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files	 -tag platfrom
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0	 -tag platfrom
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85	 -tag platfrom
set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA	 -tag platfrom
set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484	 -tag platfrom
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 2	 -tag platfrom
set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"	 -tag platfrom
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation	 -tag platfrom
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top	 -tag platfrom
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top	 -tag platfrom
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top	 -tag platfrom
set_location_assignment PIN_T20 -to SDRAM_A[0]	 -tag platfrom
set_location_assignment PIN_T19 -to SDRAM_A[1]	 -tag platfrom
set_location_assignment PIN_T18 -to SDRAM_A[2]	 -tag platfrom
set_location_assignment PIN_AA21 -to SDRAM_A[3]	 -tag platfrom
set_location_assignment PIN_AA22 -to SDRAM_A[4]	 -tag platfrom
set_location_assignment PIN_U22 -to SDRAM_A[5]	 -tag platfrom
set_location_assignment PIN_T22 -to SDRAM_A[6]	 -tag platfrom
set_location_assignment PIN_R22 -to SDRAM_A[7]	 -tag platfrom
set_location_assignment PIN_P20 -to SDRAM_A[8]	 -tag platfrom
set_location_assignment PIN_P22 -to SDRAM_A[9]	 -tag platfrom
set_location_assignment PIN_U21 -to SDRAM_A[10]	 -tag platfrom
set_location_assignment PIN_P19 -to SDRAM_A[11]	 -tag platfrom
set_location_assignment PIN_N20 -to SDRAM_A[12]	 -tag platfrom
set_location_assignment PIN_R20 -to SDRAM_BA[0]	 -tag platfrom
set_location_assignment PIN_T21 -to SDRAM_BA[1]	 -tag platfrom
set_location_assignment PIN_N21 -to SDRAM_CASn	 -tag platfrom
set_location_assignment PIN_N22 -to SDRAM_CKE	 -tag platfrom
set_location_assignment PIN_M22 -to SDRAM_CLK	 -tag platfrom
set_location_assignment PIN_P21 -to SDRAM_CSn	 -tag platfrom
set_location_assignment PIN_C22 -to SDRAM_DQ[0]	 -tag platfrom
set_location_assignment PIN_D22 -to SDRAM_DQ[1]	 -tag platfrom
set_location_assignment PIN_E22 -to SDRAM_DQ[2]	 -tag platfrom
set_location_assignment PIN_F22 -to SDRAM_DQ[3]	 -tag platfrom
set_location_assignment PIN_G22 -to SDRAM_DQ[4]	 -tag platfrom
set_location_assignment PIN_H22 -to SDRAM_DQ[5]	 -tag platfrom
set_location_assignment PIN_J22 -to SDRAM_DQ[6]	 -tag platfrom
set_location_assignment PIN_K22 -to SDRAM_DQ[7]	 -tag platfrom
set_location_assignment PIN_K21 -to SDRAM_DQ[8]	 -tag platfrom
set_location_assignment PIN_J21 -to SDRAM_DQ[9]	 -tag platfrom
set_location_assignment PIN_H21 -to SDRAM_DQ[10]	 -tag platfrom
set_location_assignment PIN_G20 -to SDRAM_DQ[11]	 -tag platfrom
set_location_assignment PIN_F21 -to SDRAM_DQ[12]	 -tag platfrom
set_location_assignment PIN_E21 -to SDRAM_DQ[13]	 -tag platfrom
set_location_assignment PIN_D21 -to SDRAM_DQ[14]	 -tag platfrom
set_location_assignment PIN_C21 -to SDRAM_DQ[15]	 -tag platfrom
set_location_assignment PIN_M20 -to SDRAM_RASn	 -tag platfrom
set_location_assignment PIN_M21 -to SDRAM_WEn	 -tag platfrom
set_location_assignment PIN_L20 -to SDRAM_DQM[0]	 -tag platfrom
set_location_assignment PIN_L22 -to SDRAM_DQM[1]	 -tag platfrom
#set_location_assignment PIN_P13 -to ADT7420_CT	 -tag platfrom
#set_location_assignment PIN_AB14 -to ADT7420_INT	 -tag platfrom
set_location_assignment PIN_W13 -to ADT7420_SCL	 -tag platfrom
set_location_assignment PIN_R13 -to ADT7420_SDA	 -tag platfrom
set_location_assignment PIN_L14 -to ADXL362_CSn	 -tag platfrom
set_location_assignment PIN_L18 -to ADXL362_MISO	 -tag platfrom
set_location_assignment PIN_L19 -to ADXL362_MOSI	 -tag platfrom
set_location_assignment PIN_M18 -to ADXL362_SCLK	 -tag platfrom
set_location_assignment PIN_M15 -to ADXL362_INT1	 -tag platfrom
set_location_assignment PIN_M14 -to ADXL362_INT2	 -tag platfrom
set_location_assignment PIN_N18 -to AD5681R_LDACn	 -tag platfrom
set_location_assignment PIN_L15 -to AD5681R_RSTn	 -tag platfrom
set_location_assignment PIN_G17 -to AD5681R_SCL	 -tag platfrom
set_location_assignment PIN_H17 -to AD5681R_SDA	 -tag platfrom
set_location_assignment PIN_N19 -to AD5681R_SYNCn	 -tag platfrom
set_location_assignment PIN_C1 -to EG_P1 -disable	 -tag platfrom
set_location_assignment PIN_D2 -to EG_P2 -disable	 -tag platfrom
set_location_assignment PIN_D1 -to EG_P3 -disable	 -tag platfrom
set_location_assignment PIN_D3 -to EG_P4 -disable	 -tag platfrom
set_location_assignment PIN_E1 -to EG_P5 -disable	 -tag platfrom
set_location_assignment PIN_F2 -to EG_P6 -disable	 -tag platfrom
set_location_assignment PIN_F1 -to EG_P7 -disable	 -tag platfrom
set_location_assignment PIN_G1 -to EG_P8 -disable	 -tag platfrom
set_location_assignment PIN_H1 -to EG_P9 -disable	 -tag platfrom
set_location_assignment PIN_J1 -to EG_P10 -disable	 -tag platfrom
set_location_assignment PIN_K2 -to EG_P11 -disable	 -tag platfrom
set_location_assignment PIN_L2 -to EG_P12 -disable	 -tag platfrom
set_location_assignment PIN_N2 -to EG_P13 -disable	 -tag platfrom
set_location_assignment PIN_P3 -to EG_P14 -disable	 -tag platfrom
set_location_assignment PIN_P1 -to EG_P15 -disable	 -tag platfrom
set_location_assignment PIN_R3 -to EG_P16 -disable	 -tag platfrom
set_location_assignment PIN_T2 -to EG_P17 -disable	 -tag platfrom
set_location_assignment PIN_R4 -to EG_P18 -disable	 -tag platfrom
set_location_assignment PIN_T5 -to EG_P19 -disable	 -tag platfrom
set_location_assignment PIN_Y1 -to EG_P20 -disable	 -tag platfrom
set_location_assignment PIN_Y2 -to EG_P21 -disable	 -tag platfrom
set_location_assignment PIN_AA1 -to EG_P22 -disable	 -tag platfrom
set_location_assignment PIN_AA2 -to EG_P23 -disable	 -tag platfrom
set_location_assignment PIN_Y3 -to EG_P24 -disable	 -tag platfrom
set_location_assignment PIN_Y4 -to EG_P25 -disable	 -tag platfrom
set_location_assignment PIN_AB6 -to EG_P26 -disable	 -tag platfrom
set_location_assignment PIN_AB7 -to EG_P27 -disable	 -tag platfrom
set_location_assignment PIN_AA8 -to EG_P28 -disable	 -tag platfrom
set_location_assignment PIN_AB8 -to EG_P29 -disable	 -tag platfrom
set_location_assignment PIN_E11 -to EG_P35 -disable	 -tag platfrom
set_location_assignment PIN_E10 -to EG_P36 -disable	 -tag platfrom
set_location_assignment PIN_D9 -to EG_P37 -disable	 -tag platfrom
set_location_assignment PIN_E9 -to EG_P38 -disable	 -tag platfrom
set_location_assignment PIN_E8 -to EG_P39 -disable	 -tag platfrom
set_location_assignment PIN_D8 -to EG_P40 -disable	 -tag platfrom
set_location_assignment PIN_E6 -to EG_P41 -disable	 -tag platfrom
set_location_assignment PIN_D7 -to EG_P42 -disable	 -tag platfrom
set_location_assignment PIN_C8 -to EG_P43 -disable	 -tag platfrom
set_location_assignment PIN_C7 -to EG_P44 -disable	 -tag platfrom
set_location_assignment PIN_D6 -to EG_P45 -disable	 -tag platfrom
set_location_assignment PIN_C6 -to EG_P46 -disable	 -tag platfrom
set_location_assignment PIN_D5 -to EG_P47 -disable	 -tag platfrom
set_location_assignment PIN_C5 -to EG_P48 -disable	 -tag platfrom
set_location_assignment PIN_C4 -to EG_P49 -disable	 -tag platfrom
set_location_assignment PIN_H11 -to EG_P50 -disable	 -tag platfrom
set_location_assignment PIN_J10 -to EG_P51 -disable	 -tag platfrom
set_location_assignment PIN_M9 -to EG_P52 -disable	 -tag platfrom
set_location_assignment PIN_M8 -to EG_P53 -disable	 -tag platfrom
set_location_assignment PIN_N9 -to EG_P54 -disable	 -tag platfrom
set_location_assignment PIN_N8 -to EG_P55 -disable	 -tag platfrom
set_location_assignment PIN_N5 -to EG_P56 -disable	 -tag platfrom
set_location_assignment PIN_N4 -to EG_P57 -disable	 -tag platfrom
set_location_assignment PIN_N3 -to EG_P58 -disable	 -tag platfrom
set_location_assignment PIN_P5 -to EG_P59 -disable	 -tag platfrom
set_location_assignment PIN_P4 -to EG_P60 -disable	 -tag platfrom
set_location_assignment PIN_K14 -to DIFF_RX_P[0] -disable	 -tag platfrom
set_location_assignment PIN_E16 -to DIFF_RX_P[1] -disable	 -tag platfrom
set_location_assignment PIN_D17 -to DIFF_RX_P[2] -disable	 -tag platfrom
set_location_assignment PIN_H14 -to DIFF_RX_P[3] -disable	 -tag platfrom
set_location_assignment PIN_C14 -to DIFF_RX_P[4] -disable	 -tag platfrom
set_location_assignment PIN_A14 -to DIFF_RX_P[5] -disable	 -tag platfrom
set_location_assignment PIN_D14 -to DIFF_RX_P[6] -disable	 -tag platfrom
set_location_assignment PIN_E12 -to DIFF_RX_P[7] -disable	 -tag platfrom
set_location_assignment PIN_H12 -to DIFF_RX_P[8] -disable	 -tag platfrom
set_location_assignment PIN_B10 -to DIFF_RX_P[9] -disable	 -tag platfrom
set_location_assignment PIN_A9 -to DIFF_RX_P[10] -disable	 -tag platfrom
set_location_assignment PIN_A7 -to DIFF_RX_P[11] -disable	 -tag platfrom
set_location_assignment PIN_B2 -to GPIO_01 -disable	 -tag platfrom
set_location_assignment PIN_B1 -to GPIO_02 -disable	 -tag platfrom
set_location_assignment PIN_C3 -to GPIO_03 -disable	 -tag platfrom
set_location_assignment PIN_A2 -to GPIO_04 -disable	 -tag platfrom
set_location_assignment PIN_B3 -to GPIO_05 -disable	 -tag platfrom
set_location_assignment PIN_A3 -to GPIO_06 -disable	 -tag platfrom
set_location_assignment PIN_B4 -to GPIO_07 -disable	 -tag platfrom
set_location_assignment PIN_A4 -to GPIO_08 -disable	 -tag platfrom
set_location_assignment PIN_B5 -to GPIO_09 -disable	 -tag platfrom
set_location_assignment PIN_A5 -to GPIO_10 -disable	 -tag platfrom
set_location_assignment PIN_B7 -to GPIO_11 -disable	 -tag platfrom
set_location_assignment PIN_A6 -to GPIO_12 -disable	 -tag platfrom
set_location_assignment PIN_AA15 -to GPIO_A -disable	 -tag platfrom
set_location_assignment PIN_Y16 -to GPIO_B -disable	 -tag platfrom
set_location_assignment PIN_AB15 -to I2C_SCL -disable	 -tag platfrom
set_location_assignment PIN_AA14 -to I2C_SDA -disable	 -tag platfrom
set_location_assignment PIN_V17 -to LVDS_TX_P[0] -disable	 -tag platfrom
set_location_assignment PIN_V16 -to LVDS_TX_P[1] -disable	 -tag platfrom
set_location_assignment PIN_W15 -to LVDS_TX_P[2] -disable	 -tag platfrom
set_location_assignment PIN_W14 -to LVDS_TX_P[3] -disable	 -tag platfrom
set_location_assignment PIN_Y14 -to LVDS_TX_P[4] -disable	 -tag platfrom
set_location_assignment PIN_AA10 -to LVDS_TX_P[5] -disable	 -tag platfrom
set_location_assignment PIN_V10 -to LVDS_TX_P[6] -disable	 -tag platfrom
set_location_assignment PIN_AA7 -to LVDS_TX_P[7] -disable	 -tag platfrom
set_location_assignment PIN_W8 -to LVDS_TX_P[8] -disable	 -tag platfrom
set_location_assignment PIN_U7 -to LVDS_TX_P[9] -disable	 -tag platfrom
set_location_assignment PIN_W6 -to LVDS_TX_P[10] -disable	 -tag platfrom
set_location_assignment PIN_W3 -to LVDS_TX_P[11] -disable	 -tag platfrom
set_location_assignment PIN_V5 -to PB[3]	 -tag platfrom
set_location_assignment PIN_AB5 -to PB[4]	 -tag platfrom
set_location_assignment PIN_M1 -to PB[1]	 -tag platfrom
set_location_assignment PIN_R1 -to PB[2]	 -tag platfrom
set_location_assignment PIN_C20 -to PMOD_A[0] -disable	 -tag platfrom
set_location_assignment PIN_D19 -to PMOD_A[1] -disable	 -tag platfrom
set_location_assignment PIN_D18 -to PMOD_A[2] -disable	 -tag platfrom
set_location_assignment PIN_E18 -to PMOD_A[3] -disable	 -tag platfrom
set_location_assignment PIN_E19 -to PMOD_B[0] -disable	 -tag platfrom
set_location_assignment PIN_F18 -to PMOD_B[1] -disable	 -tag platfrom
set_location_assignment PIN_F20 -to PMOD_B[2] -disable	 -tag platfrom
set_location_assignment PIN_G19 -to PMOD_B[3] -disable	 -tag platfrom
set_location_assignment PIN_U18 -to PMOD_C[0] -disable	 -tag platfrom
set_location_assignment PIN_U17 -to PMOD_C[1] -disable	 -tag platfrom
set_location_assignment PIN_R18 -to PMOD_C[2] -disable	 -tag platfrom
set_location_assignment PIN_P18 -to PMOD_C[3] -disable	 -tag platfrom
set_location_assignment PIN_R14 -to PMOD_D[0] -disable	 -tag platfrom
set_location_assignment PIN_R15 -to PMOD_D[1] -disable	 -tag platfrom
set_location_assignment PIN_P15 -to PMOD_D[2] -disable	 -tag platfrom
set_location_assignment PIN_P14 -to PMOD_D[3] -disable	 -tag platfrom
set_location_assignment PIN_C2 -to RESET_EXPnl -disable	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[12]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[11]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[10]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[9]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[8]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[7]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[6]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[5]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[4]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[3]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[2]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_A[0]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_BA[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_BA[0]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CASn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_RASn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CKE	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_CSn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_WEn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[15]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[14]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[13]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[12]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[11]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[10]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[9]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[8]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[7]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[6]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[5]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[4]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[3]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[2]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQ[0]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQM[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDRAM_DQM[0]	 -tag platfrom
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADT7420_CT	 -tag platfrom
#set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADT7420_INT	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADT7420_SCL	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADT7420_SDA	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_CSn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_MISO	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_MOSI	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_SCLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_INT1	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADXL362_INT2	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AD5681R_LDACn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AD5681R_RSTn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AD5681R_SCL	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AD5681R_SDA	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AD5681R_SYNCn	 -tag platfrom
#set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to ADT7420_CT	 -tag platfrom
#set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to ADT7420_INT	 -tag platfrom
set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"	 -tag platfrom
set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON	 -tag platfrom
set_global_assignment -name FITTER_EFFORT "STANDARD FIT"	 -tag platfrom
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"	 -tag platfrom
set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 8	 -tag platfrom
set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to altera_reserved_tck	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to altera_reserved_tdi	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to altera_reserved_tdo	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to altera_reserved_tms	 -tag platfrom
set_global_assignment -name USE_CONFIGURATION_DEVICE OFF	 -tag platfrom
set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF	 -tag platfrom
set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF	 -tag platfrom
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise	 -tag platfrom
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall	 -tag platfrom
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise	 -tag platfrom
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall	 -tag platfrom
set_location_assignment PIN_N14 -to SYS_CLK	 -tag platfrom
set_location_assignment PIN_N15 -to USER_CLK	 -tag platfrom
set_location_assignment PIN_P11 -to SFLASH_DCLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SYS_CLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_CLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SFLASH_DCLK	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PB[4]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PB[3]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PB[2]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PB[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[8]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[7]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[6]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[5]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[4]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[3]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[2]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to USER_LED[1]	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SFLASH_CSn	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SFLASH_DATA	 -tag platfrom
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SFLASH_ASDI	 -tag platfrom
set_location_assignment PIN_M2 -to USER_LED[1]	 -tag platfrom
set_location_assignment PIN_N1 -to USER_LED[2]	 -tag platfrom
set_location_assignment PIN_R2 -to USER_LED[3]	 -tag platfrom
set_location_assignment PIN_T1 -to USER_LED[4]	 -tag platfrom
set_location_assignment PIN_V4 -to USER_LED[5]	 -tag platfrom
set_location_assignment PIN_T6 -to USER_LED[6]	 -tag platfrom
set_location_assignment PIN_AB4 -to USER_LED[7]	 -tag platfrom
set_location_assignment PIN_AA5 -to USER_LED[8]	 -tag platfrom
set_location_assignment PIN_R11 -to SFLASH_ASDI	 -tag platfrom
set_location_assignment PIN_R10 -to SFLASH_CSn	 -tag platfrom
set_location_assignment PIN_P10 -to SFLASH_DATA	 -tag platfrom
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top	 -tag platfrom
set_global_assignment -name QIP_FILE ip/bemicro_max10_serial_flash_controller/bemicro_max10_serial_flash_controller.qip	 -tag platfrom
set_global_assignment -name QIP_FILE ip/i2c_opencores/i2c_opencores.qip	 -tag platfrom
set_global_assignment -name SOURCE_FILE "BeMicro_MAX_10_-_ISSI_IS42S16400J-7TL.qprs"	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/accelerometer_example/accelerometer_example.c	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/adc_example/adc_example.c	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/dac_loopback/dac_loopback_array.c	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/serial_flash_example/serial_flash_example.c	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/temp_sense_example/temp_sense_example.c	 -tag platfrom
set_global_assignment -name SOURCE_FILE software/timer_example/timer_example.c	 -tag platfrom
set_global_assignment -name QIP_FILE platform/nios_system/synthesis/nios_system.qip	 -tag platfrom
set_global_assignment -name VHDL_FILE top.vhd	 -tag platfrom
set_global_assignment -name SDC_FILE top.sdc	 -tag platfrom
set_global_assignment -name ENABLE_OCT_DONE ON
set_global_assignment -name INTERNAL_FLASH_UPDATE_MODE "SINGLE IMAGE WITH ERAM"

qexec "qsys-generate --synthesis=VERILOG --simulation=VERILOG ./nios_system.qsys --output-directory=platform/nios_system"

}
