-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"

-- DATE "08/29/2015 12:32:18"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part3 IS
    PORT (
	c_out : OUT std_logic;
	s_out : OUT std_logic_vector(3 DOWNTO 0);
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	a : IN std_logic_vector(3 DOWNTO 0)
	);
END part3;

-- Design Ports Information
-- c_out	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_out[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_out[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_out[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_out[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_s_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|clr_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][5]~regout\ : std_logic;
SIGNAL \auto_hub|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~8_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~26_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~27_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~28_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~30_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~33_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~35_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][5]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~37_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[8]~12_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~28_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~30_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[5]~32_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[5]~33_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[5]~34_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~25_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~26_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~27_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~29_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~32_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~34_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~36_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~8_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~7\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~10_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~14\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~16\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[4]~18\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[5]~19_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|tdo~7_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|clr_reg~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[7]~11_combout\ : std_logic;
SIGNAL \auto_hub|Decoder0~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][0]~10_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][0]~11_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][0]~regout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~24_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~7_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[0]~10_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~8_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~29_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[5]~35_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[5]~36_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~25_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~26_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~27_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~31_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~28_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][0]~24_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~29_combout\ : std_logic;
SIGNAL \auto_hub|Decoder0~3_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][0]~25_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][4]~regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~23_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[4][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~24_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[4][0]~regout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~30_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][0]~31_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~31_combout\ : std_logic;
SIGNAL \auto_hub|Decoder0~4_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][0]~32_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][0]~regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~35_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~36_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][4]~regout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~33_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[5][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~34_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[5][2]~regout\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~12_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~13_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~4_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~5_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[5]~reg0_regout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \auto_hub|Decoder0~2_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~8_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~9_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[3]~reg0_regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][0]~17_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][0]~18_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][2]~regout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][0]~regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[3][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~22_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[3][4]~regout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~20_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~21_combout\ : std_logic;
SIGNAL \auto_hub|Equal3~1_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][1]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~4_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|Decoder0~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~7_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|tdo~6_combout\ : std_logic;
SIGNAL \auto_hub|hub_tdo_mux_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~9_combout\ : std_logic;
SIGNAL \auto_hub|tdo~regout\ : std_logic;
SIGNAL \auto_hub|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|irsr_reg[8]~13_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[8]~14_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[8]~15_combout\ : std_logic;
SIGNAL \auto_hub|Equal9~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[2][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[2][2]~regout\ : std_logic;
SIGNAL \auto_hub|node_ena~6_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~7_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[2]~reg0_regout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~10_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~11_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[4]~reg0_regout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\ : std_logic;
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\ : std_logic;
SIGNAL \inst3|FA0|s~1_cout\ : std_logic;
SIGNAL \inst3|FA0|s~3\ : std_logic;
SIGNAL \inst3|FA0|s~5\ : std_logic;
SIGNAL \inst3|FA0|s~7\ : std_logic;
SIGNAL \inst3|FA0|s~9\ : std_logic;
SIGNAL \inst3|FA0|s~10_combout\ : std_logic;
SIGNAL \inst3|FA0|s~8_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\ : std_logic;
SIGNAL \inst3|FA0|s~6_combout\ : std_logic;
SIGNAL \inst3|FA0|s~4_combout\ : std_logic;
SIGNAL \inst3|FA0|s~2_combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|hub_info_reg|word_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ : std_logic;

BEGIN

c_out <= ww_c_out;
s_out <= ww_s_out;
ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_a <= a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\auto_hub|clr_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|clr_reg~regout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \altera_internal_jtag~TCKUTAP\);

\auto_hub|shadow_jsm|state[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|shadow_jsm|state\(0));
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|virtual_ir_scan_reg~regout\;
\auto_hub|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|shadow_jsm|state\(3);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ <= NOT \auto_hub|shadow_jsm|state[0]~clkctrl_outclk\;

-- Location: LCFF_X13_Y12_N9
\inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCFF_X12_Y10_N1
\inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCFF_X15_Y9_N25
\I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCFF_X9_Y11_N17
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCFF_X19_Y10_N9
\I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X17_Y10_N8
\I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datab => \auto_hub|irf_reg[2][1]~regout\,
	datac => \auto_hub|irf_reg[2][2]~regout\,
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X15_Y11_N2
\I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[2][0]~regout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCFF_X14_Y13_N17
\I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCFF_X17_Y9_N9
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCFF_X15_Y11_N5
\I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X15_Y11_N16
\I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[3][1]~regout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|irf_reg[3][2]~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X15_Y11_N18
\I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	datab => \auto_hub|irf_reg[3][0]~regout\,
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCFF_X19_Y12_N9
\I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCFF_X20_Y11_N9
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCFF_X19_Y11_N3
\I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X19_Y11_N22
\I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[4][2]~regout\,
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \auto_hub|irf_reg[4][1]~regout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X15_Y11_N28
\I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datab => \auto_hub|irf_reg[4][0]~regout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCFF_X10_Y9_N25
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCFF_X19_Y10_N27
\I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X15_Y11_N30
\I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datab => \auto_hub|irf_reg[5][2]~regout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|irf_reg[5][1]~regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[5][0]~regout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCCOMB_X15_Y11_N10
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(5),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|node_ena[3]~reg0_regout\,
	datad => \auto_hub|irf_reg[3][2]~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(5),
	datab => \auto_hub|node_ena[4]~reg0_regout\,
	datac => \auto_hub|irf_reg[4][2]~regout\,
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][4]~regout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irf_reg[1][0]~regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][2]~regout\,
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|irf_reg[1][1]~regout\,
	datad => \auto_hub|node_ena[1]~reg0_regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X12_Y10_N0
\inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][4]~regout\,
	datad => \auto_hub|irf_reg[1][0]~regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X19_Y13_N11
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCCOMB_X19_Y13_N4
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|irf_reg[2][2]~regout\,
	datac => \auto_hub|node_ena[2]~reg0_regout\,
	datad => \auto_hub|irf_reg[2][1]~regout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X15_Y9_N24
\I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[2][4]~regout\,
	datad => \auto_hub|irf_reg[2][0]~regout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X9_Y11_N27
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCFF_X10_Y11_N1
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCFF_X10_Y11_N11
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCFF_X10_Y11_N13
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X10_Y11_N30
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCFF_X10_Y11_N25
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X10_Y11_N18
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X10_Y11_N4
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X9_Y11_N16
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X10_Y11_N22
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X10_Y11_N8
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\);

-- Location: LCCOMB_X19_Y10_N8
\I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|node_ena[2]~reg0_regout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[2][1]~regout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\);

-- Location: LCCOMB_X14_Y13_N16
\I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][0]~regout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irf_reg[3][4]~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCFF_X17_Y9_N27
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCFF_X18_Y9_N1
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCFF_X18_Y9_N11
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCFF_X18_Y9_N21
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X18_Y9_N30
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCFF_X18_Y9_N25
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X18_Y9_N18
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X18_Y9_N14
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X18_Y9_N8
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\);

-- Location: LCCOMB_X15_Y11_N4
\I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena[3]~reg0_regout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[4][1]~regout\,
	datab => \auto_hub|node_ena[4]~reg0_regout\,
	datac => \auto_hub|irf_reg[4][2]~regout\,
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X18_Y12_N16
\I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[4][4]~regout\,
	datad => \auto_hub|irf_reg[4][0]~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X20_Y11_N19
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCFF_X21_Y11_N25
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCFF_X21_Y11_N3
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCFF_X20_Y11_N21
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X20_Y11_N22
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCFF_X21_Y11_N5
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X20_Y11_N0
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X20_Y11_N2
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X20_Y11_N8
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X20_Y11_N12
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X20_Y11_N14
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\);

-- Location: LCCOMB_X19_Y11_N2
\I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|node_ena[4]~reg0_regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCFF_X10_Y9_N27
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCFF_X12_Y9_N1
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCFF_X12_Y9_N27
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCFF_X12_Y9_N29
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X12_Y9_N6
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCFF_X12_Y9_N17
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X12_Y9_N10
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X12_Y9_N4
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X10_Y9_N24
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X12_Y9_N22
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X12_Y9_N8
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\);

-- Location: LCCOMB_X19_Y10_N26
\I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|node_ena[5]~reg0_regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCCOMB_X18_Y11_N0
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCCOMB_X18_Y11_N26
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \auto_hub|irf_reg[5][1]~regout\,
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\);

-- Location: LCFF_X19_Y13_N3
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X19_Y13_N20
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datac => \auto_hub|shadow_jsm|state\(4),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X10_Y11_N2
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCFF_X9_Y11_N29
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X9_Y11_N26
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X10_Y11_N28
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\);

-- Location: LCCOMB_X10_Y11_N14
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X10_Y11_N16
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\);

-- Location: LCCOMB_X10_Y11_N12
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\);

-- Location: LCCOMB_X10_Y11_N26
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X18_Y9_N2
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCFF_X17_Y9_N29
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X17_Y9_N26
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X18_Y9_N28
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\);

-- Location: LCCOMB_X18_Y9_N16
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\);

-- Location: LCCOMB_X18_Y9_N20
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\);

-- Location: LCCOMB_X18_Y9_N26
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X20_Y11_N24
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCFF_X20_Y11_N11
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X20_Y11_N18
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X20_Y11_N28
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X20_Y11_N6
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\);

-- Location: LCCOMB_X21_Y11_N30
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\);

-- Location: LCCOMB_X20_Y11_N20
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\);

-- Location: LCCOMB_X20_Y11_N16
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X12_Y9_N2
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCFF_X10_Y9_N29
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X10_Y9_N26
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X12_Y9_N20
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X12_Y9_N30
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\);

-- Location: LCCOMB_X12_Y9_N24
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\);

-- Location: LCCOMB_X12_Y9_N28
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\);

-- Location: LCCOMB_X12_Y9_N18
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCFF_X18_Y13_N29
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X18_Y13_N14
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datac => \auto_hub|shadow_jsm|state\(4),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X10_Y11_N20
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCFF_X9_Y11_N31
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	ena => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X9_Y11_N28
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X18_Y9_N12
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCFF_X17_Y9_N31
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	ena => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X17_Y9_N28
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X20_Y11_N26
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCFF_X20_Y11_N5
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	ena => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X20_Y11_N10
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X12_Y9_N12
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCFF_X10_Y9_N31
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	ena => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X10_Y9_N28
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X10_Y11_N6
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X9_Y11_N30
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X18_Y9_N22
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X17_Y9_N30
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X20_Y11_N30
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X20_Y11_N4
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X12_Y9_N14
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X10_Y9_N30
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: LCCOMB_X10_Y11_N0
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCCOMB_X10_Y11_N10
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCCOMB_X10_Y11_N24
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: LCCOMB_X18_Y9_N0
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCCOMB_X18_Y9_N10
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCCOMB_X18_Y9_N24
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: LCCOMB_X21_Y11_N24
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCCOMB_X21_Y11_N2
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCCOMB_X21_Y11_N4
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: LCCOMB_X12_Y9_N0
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCCOMB_X12_Y9_N26
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCCOMB_X12_Y9_N16
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]~6_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: JTAG_X1_Y7_N0
altera_internal_jtag : cycloneii_jtag
PORT MAP (
	tms => \altera_reserved_tms~combout\,
	tck => \altera_reserved_tck~combout\,
	tdi => \altera_reserved_tdi~combout\,
	tdouser => \auto_hub|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCFF_X20_Y10_N19
\auto_hub|shadow_jsm|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(6));

-- Location: LCFF_X13_Y9_N21
\auto_hub|hub_info_reg|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[3]~15_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X13_Y9_N20
\auto_hub|hub_info_reg|word_counter[3]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[2]~14\,
	combout => \auto_hub|hub_info_reg|word_counter[3]~15_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[3]~16\);

-- Location: LCFF_X13_Y12_N25
\auto_hub|irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~6_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][2]~regout\);

-- Location: LCFF_X13_Y12_N3
\auto_hub|irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~7_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][3]~regout\);

-- Location: LCFF_X13_Y12_N29
\auto_hub|irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~8_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][4]~regout\);

-- Location: LCFF_X13_Y12_N15
\auto_hub|irf_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~9_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][5]~regout\);

-- Location: LCFF_X17_Y10_N29
\auto_hub|irf_reg[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~12_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][1]~regout\);

-- Location: LCFF_X17_Y12_N9
\auto_hub|irf_reg[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~14_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][3]~regout\);

-- Location: LCFF_X17_Y11_N13
\auto_hub|irf_reg[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~15_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][4]~regout\);

-- Location: LCFF_X17_Y12_N27
\auto_hub|irf_reg[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~16_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][5]~regout\);

-- Location: LCFF_X14_Y11_N13
\auto_hub|irf_reg[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~19_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][1]~regout\);

-- Location: LCFF_X14_Y11_N25
\auto_hub|irf_reg[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~21_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][3]~regout\);

-- Location: LCFF_X14_Y11_N29
\auto_hub|irf_reg[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~23_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][5]~regout\);

-- Location: LCFF_X18_Y12_N13
\auto_hub|irf_reg[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~26_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][1]~regout\);

-- Location: LCFF_X18_Y12_N7
\auto_hub|irf_reg[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~27_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][2]~regout\);

-- Location: LCFF_X18_Y12_N25
\auto_hub|irf_reg[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~28_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][3]~regout\);

-- Location: LCFF_X18_Y12_N29
\auto_hub|irf_reg[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~30_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][5]~regout\);

-- Location: LCFF_X13_Y11_N13
\auto_hub|irf_reg[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~33_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][1]~regout\);

-- Location: LCFF_X13_Y11_N9
\auto_hub|irf_reg[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~35_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][3]~regout\);

-- Location: LCFF_X13_Y11_N5
\auto_hub|irf_reg[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~37_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][5]~regout\);

-- Location: LCCOMB_X15_Y11_N20
\auto_hub|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|tdo~3_combout\);

-- Location: LCCOMB_X15_Y11_N6
\auto_hub|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|tdo~4_combout\);

-- Location: LCCOMB_X18_Y11_N28
\auto_hub|tdo~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|tdo~4_combout\,
	datac => \auto_hub|irsr_reg\(7),
	datad => \auto_hub|tdo~3_combout\,
	combout => \auto_hub|tdo~5_combout\);

-- Location: LCCOMB_X17_Y10_N24
\auto_hub|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(0),
	datab => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|Equal3~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\auto_hub|tdo~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal9~0_combout\,
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|tdo~8_combout\);

-- Location: LCFF_X14_Y12_N21
\auto_hub|shadow_irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~5_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][2]~regout\);

-- Location: LCCOMB_X13_Y12_N24
\auto_hub|irf_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[1][2]~regout\,
	datac => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|irf_reg~6_combout\);

-- Location: LCFF_X14_Y12_N31
\auto_hub|shadow_irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~6_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][3]~regout\);

-- Location: LCCOMB_X13_Y12_N2
\auto_hub|irf_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|shadow_irf_reg[1][3]~regout\,
	combout => \auto_hub|irf_reg~7_combout\);

-- Location: LCFF_X14_Y12_N29
\auto_hub|shadow_irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~7_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][4]~regout\);

-- Location: LCCOMB_X13_Y12_N28
\auto_hub|irf_reg~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[1][4]~regout\,
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irf_reg~8_combout\);

-- Location: LCFF_X14_Y12_N19
\auto_hub|shadow_irf_reg[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~8_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][5]~regout\);

-- Location: LCCOMB_X13_Y12_N14
\auto_hub|irf_reg~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[1][5]~regout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irf_reg~9_combout\);

-- Location: LCFF_X17_Y10_N3
\auto_hub|shadow_irf_reg[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~11_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][1]~regout\);

-- Location: LCCOMB_X17_Y10_N28
\auto_hub|irf_reg~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_irf_reg[2][1]~regout\,
	combout => \auto_hub|irf_reg~12_combout\);

-- Location: LCFF_X17_Y12_N11
\auto_hub|shadow_irf_reg[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~13_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][3]~regout\);

-- Location: LCCOMB_X17_Y12_N8
\auto_hub|irf_reg~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[2][3]~regout\,
	datab => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|irf_reg~14_combout\);

-- Location: LCFF_X17_Y11_N23
\auto_hub|shadow_irf_reg[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~14_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][4]~regout\);

-- Location: LCCOMB_X17_Y11_N12
\auto_hub|irf_reg~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(4),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_irf_reg[2][4]~regout\,
	combout => \auto_hub|irf_reg~15_combout\);

-- Location: LCFF_X17_Y12_N21
\auto_hub|shadow_irf_reg[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~15_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][5]~regout\);

-- Location: LCCOMB_X17_Y12_N26
\auto_hub|irf_reg~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|shadow_irf_reg[2][5]~regout\,
	datad => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg~16_combout\);

-- Location: LCFF_X14_Y11_N9
\auto_hub|shadow_irf_reg[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~18_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][1]~regout\);

-- Location: LCCOMB_X14_Y11_N12
\auto_hub|irf_reg~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[3][1]~regout\,
	datac => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|irf_reg~19_combout\);

-- Location: LCFF_X14_Y11_N21
\auto_hub|shadow_irf_reg[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~20_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][3]~regout\);

-- Location: LCCOMB_X14_Y11_N24
\auto_hub|irf_reg~21\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_irf_reg[3][3]~regout\,
	combout => \auto_hub|irf_reg~21_combout\);

-- Location: LCFF_X14_Y11_N17
\auto_hub|shadow_irf_reg[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~22_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][5]~regout\);

-- Location: LCCOMB_X14_Y11_N28
\auto_hub|irf_reg~23\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|shadow_irf_reg[3][5]~regout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irf_reg~23_combout\);

-- Location: LCFF_X18_Y12_N1
\auto_hub|shadow_irf_reg[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~25_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][1]~regout\);

-- Location: LCCOMB_X18_Y12_N12
\auto_hub|irf_reg~26\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|shadow_irf_reg[4][1]~regout\,
	combout => \auto_hub|irf_reg~26_combout\);

-- Location: LCFF_X18_Y12_N27
\auto_hub|shadow_irf_reg[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~26_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][2]~regout\);

-- Location: LCCOMB_X18_Y12_N6
\auto_hub|irf_reg~27\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(2),
	datab => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_irf_reg[4][2]~regout\,
	combout => \auto_hub|irf_reg~27_combout\);

-- Location: LCFF_X18_Y12_N5
\auto_hub|shadow_irf_reg[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~27_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][3]~regout\);

-- Location: LCCOMB_X18_Y12_N24
\auto_hub|irf_reg~28\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|shadow_irf_reg[4][3]~regout\,
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|irf_reg~28_combout\);

-- Location: LCFF_X18_Y12_N9
\auto_hub|shadow_irf_reg[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~29_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][5]~regout\);

-- Location: LCCOMB_X18_Y12_N28
\auto_hub|irf_reg~30\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|shadow_irf_reg[4][5]~regout\,
	combout => \auto_hub|irf_reg~30_combout\);

-- Location: LCFF_X13_Y11_N17
\auto_hub|shadow_irf_reg[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~32_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][1]~regout\);

-- Location: LCCOMB_X13_Y11_N12
\auto_hub|irf_reg~33\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|shadow_irf_reg[5][1]~regout\,
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|irf_reg~33_combout\);

-- Location: LCFF_X13_Y11_N29
\auto_hub|shadow_irf_reg[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~34_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][3]~regout\);

-- Location: LCCOMB_X13_Y11_N8
\auto_hub|irf_reg~35\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[5][3]~regout\,
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|irf_reg~35_combout\);

-- Location: LCFF_X13_Y11_N1
\auto_hub|shadow_irf_reg[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~36_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][5]~regout\);

-- Location: LCCOMB_X13_Y11_N4
\auto_hub|irf_reg~37\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[5][5]~regout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irf_reg~37_combout\);

-- Location: LCFF_X15_Y13_N15
\auto_hub|jtag_ir_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[0]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X20_Y10_N18
\auto_hub|shadow_jsm|state~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(6),
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \auto_hub|shadow_jsm|state~6_combout\);

-- Location: LCCOMB_X18_Y11_N12
\auto_hub|irsr_reg[8]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|irsr_reg[8]~12_combout\);

-- Location: LCCOMB_X14_Y9_N2
\auto_hub|hub_info_reg|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~1_combout\);

-- Location: LCFF_X14_Y9_N13
\auto_hub|hub_info_reg|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X15_Y12_N24
\auto_hub|irsr_reg~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[2]~2_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg~16_combout\);

-- Location: LCCOMB_X15_Y12_N10
\auto_hub|irsr_reg~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~2_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg~16_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg~17_combout\);

-- Location: LCCOMB_X14_Y12_N12
\auto_hub|irsr_reg~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datac => \auto_hub|irsr_reg[2]~2_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	combout => \auto_hub|irsr_reg~19_combout\);

-- Location: LCCOMB_X17_Y10_N4
\auto_hub|hub_mode_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X14_Y12_N20
\auto_hub|shadow_irf_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][2]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|shadow_irf_reg~5_combout\);

-- Location: LCCOMB_X14_Y12_N30
\auto_hub|shadow_irf_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][3]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|shadow_irf_reg~6_combout\);

-- Location: LCCOMB_X14_Y12_N28
\auto_hub|shadow_irf_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irf_reg[1][4]~regout\,
	datac => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|shadow_irf_reg~7_combout\);

-- Location: LCCOMB_X17_Y12_N12
\auto_hub|irsr_reg[4]~28\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg[2]~7_combout\,
	combout => \auto_hub|irsr_reg[4]~28_combout\);

-- Location: LCCOMB_X15_Y12_N6
\auto_hub|irsr_reg[4]~30\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \~GND~combout\,
	datad => \auto_hub|irsr_reg[4]~29_combout\,
	combout => \auto_hub|irsr_reg[4]~30_combout\);

-- Location: LCCOMB_X14_Y12_N18
\auto_hub|shadow_irf_reg~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][5]~regout\,
	datab => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~8_combout\);

-- Location: LCCOMB_X15_Y12_N8
\auto_hub|irsr_reg[5]~32\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[2]~2_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[5]~32_combout\);

-- Location: LCCOMB_X15_Y12_N2
\auto_hub|irsr_reg[5]~33\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[5]~32_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[5]~33_combout\);

-- Location: LCCOMB_X15_Y12_N20
\auto_hub|irsr_reg[5]~34\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irsr_reg[5]~33_combout\,
	datac => \auto_hub|irsr_reg\(6),
	datad => \auto_hub|irsr_reg[2]~5_combout\,
	combout => \auto_hub|irsr_reg[5]~34_combout\);

-- Location: LCCOMB_X17_Y10_N2
\auto_hub|shadow_irf_reg~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irf_reg[2][1]~regout\,
	combout => \auto_hub|shadow_irf_reg~11_combout\);

-- Location: LCCOMB_X17_Y12_N10
\auto_hub|shadow_irf_reg~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|irf_reg[2][3]~regout\,
	combout => \auto_hub|shadow_irf_reg~13_combout\);

-- Location: LCCOMB_X17_Y11_N22
\auto_hub|shadow_irf_reg~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(4),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[2][4]~regout\,
	combout => \auto_hub|shadow_irf_reg~14_combout\);

-- Location: LCCOMB_X17_Y12_N20
\auto_hub|shadow_irf_reg~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[2][5]~regout\,
	combout => \auto_hub|shadow_irf_reg~15_combout\);

-- Location: LCCOMB_X14_Y11_N8
\auto_hub|shadow_irf_reg~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[3][1]~regout\,
	combout => \auto_hub|shadow_irf_reg~18_combout\);

-- Location: LCCOMB_X14_Y11_N20
\auto_hub|shadow_irf_reg~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[3][3]~regout\,
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~20_combout\);

-- Location: LCCOMB_X14_Y11_N16
\auto_hub|shadow_irf_reg~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][5]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|shadow_irf_reg~22_combout\);

-- Location: LCCOMB_X18_Y12_N0
\auto_hub|shadow_irf_reg~25\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irf_reg[4][1]~regout\,
	combout => \auto_hub|shadow_irf_reg~25_combout\);

-- Location: LCCOMB_X18_Y12_N26
\auto_hub|shadow_irf_reg~26\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(2),
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[4][2]~regout\,
	combout => \auto_hub|shadow_irf_reg~26_combout\);

-- Location: LCCOMB_X18_Y12_N4
\auto_hub|shadow_irf_reg~27\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|irf_reg[4][3]~regout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~27_combout\);

-- Location: LCCOMB_X18_Y12_N8
\auto_hub|shadow_irf_reg~29\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[4][5]~regout\,
	combout => \auto_hub|shadow_irf_reg~29_combout\);

-- Location: LCCOMB_X13_Y11_N16
\auto_hub|shadow_irf_reg~32\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[5][1]~regout\,
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~32_combout\);

-- Location: LCCOMB_X13_Y11_N28
\auto_hub|shadow_irf_reg~34\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[5][3]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|shadow_irf_reg~34_combout\);

-- Location: LCCOMB_X13_Y11_N0
\auto_hub|shadow_irf_reg~36\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irf_reg[5][5]~regout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|shadow_irf_reg~36_combout\);

-- Location: LCCOMB_X17_Y10_N30
\auto_hub|hub_mode_reg[2]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(0),
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|hub_mode_reg[2]~3_combout\);

-- Location: LCCOMB_X13_Y9_N6
\auto_hub|hub_info_reg|word_counter[2]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|word_counter[2]~8_combout\);

-- Location: LCFF_X14_Y9_N29
\auto_hub|hub_info_reg|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X13_Y9_N10
\auto_hub|hub_info_reg|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|hub_info_reg|word_counter\(5),
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X13_Y9_N12
\auto_hub|hub_info_reg|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X14_Y9_N12
\auto_hub|hub_info_reg|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X13_Y9_N26
\auto_hub|hub_info_reg|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|hub_info_reg|word_counter\(5),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X13_Y9_N4
\auto_hub|hub_info_reg|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~1_combout\,
	datab => \auto_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCFF_X14_Y9_N31
\auto_hub|hub_info_reg|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~13_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X14_Y9_N28
\auto_hub|hub_info_reg|WORD_SR~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X13_Y9_N30
\auto_hub|hub_info_reg|WORD_SR~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X14_Y9_N30
\auto_hub|hub_info_reg|WORD_SR~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~12_combout\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: CLKCTRL_G0
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X15_Y13_N14
\auto_hub|jtag_ir_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_ir_reg[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tck~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tck,
	combout => \altera_reserved_tck~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tdi~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tdi,
	combout => \altera_reserved_tdi~combout\);

-- Location: LCCOMB_X13_Y9_N14
\auto_hub|hub_info_reg|word_counter[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|hub_info_reg|word_counter[0]~6_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[0]~7\);

-- Location: LCCOMB_X13_Y9_N16
\auto_hub|hub_info_reg|word_counter[1]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[0]~7\,
	combout => \auto_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X13_Y9_N18
\auto_hub|hub_info_reg|word_counter[2]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|hub_info_reg|word_counter[2]~13_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[2]~14\);

-- Location: LCCOMB_X15_Y10_N24
\auto_hub|shadow_jsm|state~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(9),
	combout => \auto_hub|shadow_jsm|state~8_combout\);

-- Location: LCFF_X15_Y10_N25
\auto_hub|shadow_jsm|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X20_Y10_N20
\auto_hub|shadow_jsm|state~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(13),
	datad => \auto_hub|shadow_jsm|state\(12),
	combout => \auto_hub|shadow_jsm|state~11_combout\);

-- Location: LCFF_X20_Y10_N21
\auto_hub|shadow_jsm|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X18_Y10_N8
\auto_hub|shadow_jsm|state~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(13),
	combout => \auto_hub|shadow_jsm|state~12_combout\);

-- Location: LCFF_X18_Y10_N9
\auto_hub|shadow_jsm|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X15_Y10_N18
\auto_hub|shadow_jsm|state~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(10),
	datac => \auto_hub|shadow_jsm|state\(11),
	datad => \auto_hub|shadow_jsm|state\(14),
	combout => \auto_hub|shadow_jsm|state~9_combout\);

-- Location: LCFF_X15_Y10_N19
\auto_hub|shadow_jsm|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X15_Y10_N2
\auto_hub|shadow_jsm|state~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(10),
	datad => \auto_hub|shadow_jsm|state\(11),
	combout => \auto_hub|shadow_jsm|state~10_combout\);

-- Location: LCFF_X15_Y10_N3
\auto_hub|shadow_jsm|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X15_Y10_N28
\auto_hub|virtual_ir_dr_scan_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|shadow_jsm|state\(12),
	datad => \auto_hub|shadow_jsm|state\(14),
	combout => \auto_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCFF_X15_Y10_N29
\auto_hub|shadow_jsm|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X15_Y10_N8
\auto_hub|shadow_jsm|state~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|shadow_jsm|state\(15),
	datac => \auto_hub|shadow_jsm|state\(1),
	datad => \auto_hub|shadow_jsm|state\(0),
	combout => \auto_hub|shadow_jsm|state~1_combout\);

-- Location: LCFF_X15_Y10_N9
\auto_hub|shadow_jsm|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X18_Y10_N30
\auto_hub|shadow_jsm|state~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|shadow_jsm|state~7_combout\);

-- Location: LCFF_X18_Y10_N31
\auto_hub|shadow_jsm|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X19_Y11_N16
\auto_hub|irf_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|irf_proc~0_combout\);

-- Location: LCFF_X19_Y11_N17
\auto_hub|shadow_jsm|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X15_Y10_N10
\auto_hub|shadow_jsm|state~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|shadow_jsm|state\(1),
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|shadow_jsm|state\(15),
	combout => \auto_hub|shadow_jsm|state~2_combout\);

-- Location: LCFF_X15_Y10_N11
\auto_hub|shadow_jsm|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X15_Y10_N30
\auto_hub|node_ena_proc~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena_proc~1_combout\);

-- Location: LCFF_X15_Y10_N31
\auto_hub|shadow_jsm|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X18_Y10_N6
\auto_hub|shadow_jsm|tms_cnt~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: LCFF_X18_Y10_N7
\auto_hub|shadow_jsm|tms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X18_Y10_N18
\auto_hub|shadow_jsm|tms_cnt~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: LCFF_X18_Y10_N19
\auto_hub|shadow_jsm|tms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X18_Y10_N24
\auto_hub|shadow_jsm|tms_cnt~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: LCFF_X18_Y10_N25
\auto_hub|shadow_jsm|tms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X15_Y10_N0
\auto_hub|shadow_jsm|state~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|shadow_jsm|state\(9),
	datac => \auto_hub|shadow_jsm|state\(0),
	datad => \auto_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|shadow_jsm|state~0_combout\);

-- Location: LCFF_X15_Y10_N1
\auto_hub|shadow_jsm|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(0));

-- Location: CLKCTRL_G5
\auto_hub|shadow_jsm|state[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|shadow_jsm|state[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|shadow_jsm|state[0]~clkctrl_outclk\);

-- Location: LCFF_X15_Y13_N23
\auto_hub|jtag_ir_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(9));

-- Location: LCCOMB_X15_Y13_N24
\auto_hub|jtag_ir_reg[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_ir_reg[8]~feeder_combout\);

-- Location: LCFF_X15_Y13_N25
\auto_hub|jtag_ir_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[8]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(8));

-- Location: LCFF_X15_Y13_N11
\auto_hub|jtag_ir_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(8),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X15_Y13_N12
\auto_hub|jtag_ir_reg[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: LCFF_X15_Y13_N13
\auto_hub|jtag_ir_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[6]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(6));

-- Location: LCCOMB_X15_Y13_N18
\auto_hub|jtag_ir_reg[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(6),
	combout => \auto_hub|jtag_ir_reg[5]~feeder_combout\);

-- Location: LCFF_X15_Y13_N19
\auto_hub|jtag_ir_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[5]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X15_Y13_N20
\auto_hub|jtag_ir_reg[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: LCFF_X15_Y13_N21
\auto_hub|jtag_ir_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[4]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(4));

-- Location: LCFF_X15_Y13_N31
\auto_hub|jtag_ir_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(4),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(3));

-- Location: LCFF_X15_Y13_N17
\auto_hub|jtag_ir_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(3),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X15_Y13_N30
\auto_hub|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_ir_reg\(5),
	datac => \auto_hub|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_ir_reg\(2),
	combout => \auto_hub|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y13_N22
\auto_hub|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_ir_reg\(8),
	datac => \auto_hub|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_ir_reg\(6),
	combout => \auto_hub|Equal0~0_combout\);

-- Location: LCFF_X15_Y13_N29
\auto_hub|jtag_ir_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(2),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X15_Y13_N8
\auto_hub|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(0),
	datab => \auto_hub|Equal0~1_combout\,
	datac => \auto_hub|Equal0~0_combout\,
	datad => \auto_hub|jtag_ir_reg\(1),
	combout => \auto_hub|Equal1~0_combout\);

-- Location: LCFF_X15_Y13_N9
\auto_hub|virtual_ir_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|Equal1~0_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|virtual_ir_scan_reg~regout\);

-- Location: LCCOMB_X14_Y9_N22
\auto_hub|hub_info_reg|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X15_Y13_N26
\auto_hub|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(0),
	datab => \auto_hub|Equal0~1_combout\,
	datac => \auto_hub|Equal0~0_combout\,
	datad => \auto_hub|jtag_ir_reg\(1),
	combout => \auto_hub|Equal0~2_combout\);

-- Location: LCFF_X15_Y13_N27
\auto_hub|virtual_dr_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|Equal0~2_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|virtual_dr_scan_reg~regout\);

-- Location: LCCOMB_X20_Y10_N16
\auto_hub|shadow_jsm|state~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|shadow_jsm|state~4_combout\);

-- Location: LCFF_X20_Y10_N17
\auto_hub|shadow_jsm|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X14_Y9_N18
\auto_hub|hub_info_reg|word_counter[2]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|word_counter[2]~10_combout\);

-- Location: LCFF_X13_Y9_N19
\auto_hub|hub_info_reg|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[2]~13_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X13_Y9_N22
\auto_hub|hub_info_reg|word_counter[4]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(4),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[3]~16\,
	combout => \auto_hub|hub_info_reg|word_counter[4]~17_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[4]~18\);

-- Location: LCFF_X13_Y9_N23
\auto_hub|hub_info_reg|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[4]~17_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X13_Y9_N24
\auto_hub|hub_info_reg|word_counter[5]~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(5),
	cin => \auto_hub|hub_info_reg|word_counter[4]~18\,
	combout => \auto_hub|hub_info_reg|word_counter[5]~19_combout\);

-- Location: LCFF_X13_Y9_N25
\auto_hub|hub_info_reg|word_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[5]~19_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(5));

-- Location: LCCOMB_X13_Y9_N8
\auto_hub|hub_info_reg|word_counter[2]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter[2]~8_combout\,
	datab => \auto_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|hub_info_reg|word_counter\(5),
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|word_counter[2]~9_combout\);

-- Location: LCFF_X13_Y9_N15
\auto_hub|hub_info_reg|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[0]~6_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X13_Y9_N2
\auto_hub|hub_info_reg|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~2_combout\);

-- Location: LCFF_X13_Y9_N17
\auto_hub|hub_info_reg|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[2]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X13_Y9_N0
\auto_hub|hub_info_reg|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|hub_info_reg|word_counter\(5),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\auto_hub|hub_info_reg|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~1_combout\,
	datab => \auto_hub|hub_info_reg|WORD_SR~2_combout\,
	datac => \auto_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|hub_info_reg|WORD_SR~0_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~3_combout\);

-- Location: LCCOMB_X14_Y9_N0
\auto_hub|hub_info_reg|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|hub_info_reg|WORD_SR~3_combout\,
	datac => \auto_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X14_Y9_N16
\auto_hub|hub_info_reg|WORD_SR[1]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\);

-- Location: LCFF_X14_Y9_N1
\auto_hub|hub_info_reg|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X14_Y10_N8
\auto_hub|tdo_bypass_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|tdo_bypass_reg~regout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|tdo_bypass_reg~0_combout\);

-- Location: LCFF_X14_Y10_N9
\auto_hub|tdo_bypass_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|tdo_bypass_reg~regout\);

-- Location: LCCOMB_X14_Y10_N18
\auto_hub|tdo~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal3~0_combout\,
	datab => \auto_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|tdo_bypass_reg~regout\,
	combout => \auto_hub|tdo~7_combout\);

-- Location: LCCOMB_X15_Y10_N20
\auto_hub|shadow_jsm|state~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|shadow_jsm|state~3_combout\);

-- Location: LCFF_X15_Y10_N21
\auto_hub|shadow_jsm|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X14_Y12_N24
\auto_hub|shadow_irf_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(0),
	datab => \auto_hub|irf_reg[1][0]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\auto_hub|reset_ena_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(5),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCFF_X19_Y11_N7
\auto_hub|reset_ena_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|reset_ena_reg~regout\);

-- Location: LCCOMB_X18_Y11_N24
\auto_hub|hub_mode_reg[2]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg[2]~3_combout\,
	datab => \auto_hub|Equal9~0_combout\,
	datac => \auto_hub|hub_mode_reg\(2),
	datad => \auto_hub|reset_ena_reg~regout\,
	combout => \auto_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCFF_X18_Y11_N25
\auto_hub|hub_mode_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[2]~4_combout\,
	aclr => \auto_hub|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X15_Y10_N6
\auto_hub|clr_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(1),
	datad => \auto_hub|hub_mode_reg\(2),
	combout => \auto_hub|clr_reg_proc~0_combout\);

-- Location: LCFF_X15_Y10_N7
\auto_hub|clr_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|clr_reg~regout\);

-- Location: CLKCTRL_G4
\auto_hub|clr_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|clr_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|clr_reg~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y10_N28
\auto_hub|shadow_jsm|state~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|shadow_jsm|state~5_combout\);

-- Location: LCFF_X18_Y10_N29
\auto_hub|shadow_jsm|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X17_Y11_N10
\auto_hub|shadow_irf_reg~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irf_reg[2][0]~regout\,
	combout => \auto_hub|shadow_irf_reg~9_combout\);

-- Location: LCCOMB_X18_Y11_N30
\auto_hub|irsr_reg[7]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|irsr_reg[7]~11_combout\);

-- Location: LCFF_X18_Y11_N15
\auto_hub|irsr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|irsr_reg\(7),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|irsr_reg[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(6));

-- Location: LCCOMB_X18_Y10_N4
\auto_hub|Decoder0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|irsr_reg\(6),
	datad => \auto_hub|irsr_reg\(7),
	combout => \auto_hub|Decoder0~1_combout\);

-- Location: LCCOMB_X17_Y10_N6
\auto_hub|shadow_irf_reg[1][0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|shadow_irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X17_Y11_N16
\auto_hub|shadow_irf_reg[2][0]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|shadow_irf_reg[1][1]~2_combout\,
	datac => \auto_hub|Decoder0~1_combout\,
	datad => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	combout => \auto_hub|shadow_irf_reg[2][0]~10_combout\);

-- Location: LCFF_X17_Y11_N11
\auto_hub|shadow_irf_reg[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~9_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][0]~regout\);

-- Location: LCCOMB_X17_Y11_N18
\auto_hub|irf_reg~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|shadow_irf_reg[2][0]~regout\,
	combout => \auto_hub|irf_reg~10_combout\);

-- Location: LCCOMB_X17_Y11_N30
\auto_hub|irf_reg[1][0]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|irf_reg[1][0]~3_combout\);

-- Location: LCCOMB_X17_Y11_N20
\auto_hub|irf_reg[2][0]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~2_combout\,
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|Decoder0~1_combout\,
	datad => \auto_hub|irf_reg[1][0]~3_combout\,
	combout => \auto_hub|irf_reg[2][0]~11_combout\);

-- Location: LCFF_X17_Y11_N19
\auto_hub|irf_reg[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~10_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][0]~regout\);

-- Location: LCCOMB_X13_Y13_N16
\I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[2][4]~regout\,
	datab => \auto_hub|irf_reg[2][0]~regout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCFF_X13_Y13_N17
\I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCCOMB_X17_Y12_N4
\auto_hub|irsr_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|irsr_reg[0]~0_combout\);

-- Location: LCCOMB_X15_Y12_N4
\auto_hub|irsr_reg~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[2]~2_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg~22_combout\);

-- Location: LCCOMB_X15_Y12_N30
\auto_hub|irsr_reg~23\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~2_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg~22_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg~23_combout\);

-- Location: LCCOMB_X14_Y12_N26
\auto_hub|irsr_reg~24\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|irsr_reg~23_combout\,
	datad => \auto_hub|irsr_reg[2]~5_combout\,
	combout => \auto_hub|irsr_reg~24_combout\);

-- Location: LCCOMB_X17_Y12_N28
\auto_hub|irsr_reg[2]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|irsr_reg[2]~7_combout\);

-- Location: LCCOMB_X17_Y12_N2
\auto_hub|irsr_reg[0]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~9_combout\,
	datab => \auto_hub|irsr_reg[0]~0_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg[2]~7_combout\,
	combout => \auto_hub|irsr_reg[0]~10_combout\);

-- Location: LCFF_X14_Y12_N27
\auto_hub|irsr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~24_combout\,
	sdata => \auto_hub|irsr_reg\(4),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|irsr_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(3));

-- Location: LCCOMB_X17_Y12_N22
\auto_hub|irsr_reg[2]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datab => \auto_hub|hub_mode_reg\(0),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irsr_reg[2]~8_combout\);

-- Location: LCCOMB_X17_Y12_N24
\auto_hub|irsr_reg[2]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|irsr_reg[2]~8_combout\,
	combout => \auto_hub|irsr_reg[2]~9_combout\);

-- Location: LCCOMB_X17_Y12_N6
\auto_hub|irsr_reg[4]~29\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[4]~28_combout\,
	datab => \auto_hub|irsr_reg[0]~0_combout\,
	datac => \auto_hub|irsr_reg[2]~9_combout\,
	datad => \auto_hub|irsr_reg[2]~5_combout\,
	combout => \auto_hub|irsr_reg[4]~29_combout\);

-- Location: LCCOMB_X15_Y12_N14
\auto_hub|irsr_reg[5]~35\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \~GND~combout\,
	datad => \auto_hub|irsr_reg[4]~29_combout\,
	combout => \auto_hub|irsr_reg[5]~35_combout\);

-- Location: LCCOMB_X15_Y12_N12
\auto_hub|irsr_reg[5]~36\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[5]~34_combout\,
	datab => \auto_hub|irsr_reg[5]~35_combout\,
	datac => \auto_hub|irsr_reg\(5),
	datad => \auto_hub|irsr_reg[0]~10_combout\,
	combout => \auto_hub|irsr_reg[5]~36_combout\);

-- Location: LCFF_X15_Y12_N13
\auto_hub|irsr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg[5]~36_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(5));

-- Location: LCCOMB_X15_Y12_N16
\auto_hub|irsr_reg[4]~25\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[2]~2_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[4]~25_combout\);

-- Location: LCCOMB_X15_Y12_N18
\auto_hub|irsr_reg[4]~26\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~2_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|irsr_reg[4]~25_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[4]~26_combout\);

-- Location: LCCOMB_X15_Y12_N28
\auto_hub|irsr_reg[4]~27\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|irsr_reg[2]~5_combout\,
	datad => \auto_hub|irsr_reg[4]~26_combout\,
	combout => \auto_hub|irsr_reg[4]~27_combout\);

-- Location: LCCOMB_X15_Y12_N26
\auto_hub|irsr_reg[4]~31\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[4]~30_combout\,
	datab => \auto_hub|irsr_reg[4]~27_combout\,
	datac => \auto_hub|irsr_reg\(4),
	datad => \auto_hub|irsr_reg[0]~10_combout\,
	combout => \auto_hub|irsr_reg[4]~31_combout\);

-- Location: LCFF_X15_Y12_N27
\auto_hub|irsr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg[4]~31_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(4));

-- Location: LCCOMB_X18_Y12_N30
\auto_hub|shadow_irf_reg~28\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(4),
	datad => \auto_hub|irf_reg[4][4]~regout\,
	combout => \auto_hub|shadow_irf_reg~28_combout\);

-- Location: LCCOMB_X17_Y11_N28
\auto_hub|shadow_irf_reg[4][0]~24\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Decoder0~3_combout\,
	datab => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|shadow_irf_reg[1][1]~2_combout\,
	combout => \auto_hub|shadow_irf_reg[4][0]~24_combout\);

-- Location: LCFF_X18_Y12_N31
\auto_hub|shadow_irf_reg[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~28_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][4]~regout\);

-- Location: LCCOMB_X18_Y12_N10
\auto_hub|irf_reg~29\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(4),
	datad => \auto_hub|shadow_irf_reg[4][4]~regout\,
	combout => \auto_hub|irf_reg~29_combout\);

-- Location: LCCOMB_X18_Y11_N16
\auto_hub|Decoder0~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|Decoder0~3_combout\);

-- Location: LCCOMB_X17_Y11_N2
\auto_hub|irf_reg[4][0]~25\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~2_combout\,
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|Decoder0~3_combout\,
	datad => \auto_hub|irf_reg[1][0]~3_combout\,
	combout => \auto_hub|irf_reg[4][0]~25_combout\);

-- Location: LCFF_X18_Y12_N11
\auto_hub|irf_reg[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~29_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][4]~regout\);

-- Location: LCCOMB_X18_Y12_N22
\auto_hub|shadow_irf_reg~23\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irf_reg[4][0]~regout\,
	combout => \auto_hub|shadow_irf_reg~23_combout\);

-- Location: LCFF_X18_Y12_N23
\auto_hub|shadow_irf_reg[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~23_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[4][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[4][0]~regout\);

-- Location: LCCOMB_X18_Y12_N2
\auto_hub|irf_reg~24\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|shadow_irf_reg[4][0]~regout\,
	combout => \auto_hub|irf_reg~24_combout\);

-- Location: LCFF_X18_Y12_N3
\auto_hub|irf_reg[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~24_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[4][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[4][0]~regout\);

-- Location: LCCOMB_X17_Y13_N16
\I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[4][4]~regout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irf_reg[4][0]~regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCFF_X17_Y13_N17
\I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCCOMB_X14_Y12_N6
\auto_hub|irsr_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \auto_hub|irsr_reg[2]~2_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	combout => \auto_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X13_Y11_N30
\auto_hub|shadow_irf_reg~30\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[5][0]~regout\,
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|shadow_irf_reg~30_combout\);

-- Location: LCCOMB_X17_Y11_N6
\auto_hub|shadow_irf_reg[5][0]~31\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Decoder0~4_combout\,
	datab => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|shadow_irf_reg[1][1]~2_combout\,
	combout => \auto_hub|shadow_irf_reg[5][0]~31_combout\);

-- Location: LCFF_X13_Y11_N31
\auto_hub|shadow_irf_reg[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~30_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][0]~regout\);

-- Location: LCCOMB_X13_Y11_N10
\auto_hub|irf_reg~31\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[5][0]~regout\,
	datac => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|irf_reg~31_combout\);

-- Location: LCCOMB_X18_Y11_N6
\auto_hub|Decoder0~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|Decoder0~4_combout\);

-- Location: LCCOMB_X17_Y11_N4
\auto_hub|irf_reg[5][0]~32\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~2_combout\,
	datab => \auto_hub|irf_reg[1][0]~3_combout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|Decoder0~4_combout\,
	combout => \auto_hub|irf_reg[5][0]~32_combout\);

-- Location: LCFF_X13_Y11_N11
\auto_hub|irf_reg[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~31_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][0]~regout\);

-- Location: LCCOMB_X13_Y11_N22
\auto_hub|shadow_irf_reg~35\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[5][4]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|shadow_irf_reg~35_combout\);

-- Location: LCFF_X13_Y11_N23
\auto_hub|shadow_irf_reg[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~35_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][4]~regout\);

-- Location: LCCOMB_X13_Y11_N26
\auto_hub|irf_reg~36\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[5][4]~regout\,
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irf_reg~36_combout\);

-- Location: LCFF_X13_Y11_N27
\auto_hub|irf_reg[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~36_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][4]~regout\);

-- Location: LCCOMB_X12_Y12_N8
\I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[5][0]~regout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irf_reg[5][4]~regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCFF_X12_Y12_N9
\I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCCOMB_X17_Y12_N14
\auto_hub|irsr_reg[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X14_Y12_N22
\auto_hub|irsr_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datab => \auto_hub|irsr_reg~3_combout\,
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irsr_reg[2]~1_combout\,
	combout => \auto_hub|irsr_reg~4_combout\);

-- Location: LCCOMB_X14_Y12_N16
\auto_hub|irsr_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datab => \auto_hub|irsr_reg~4_combout\,
	datad => \auto_hub|irsr_reg[2]~5_combout\,
	combout => \auto_hub|irsr_reg~6_combout\);

-- Location: LCCOMB_X13_Y11_N2
\auto_hub|shadow_irf_reg~33\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[5][2]~regout\,
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|shadow_irf_reg~33_combout\);

-- Location: LCFF_X13_Y11_N3
\auto_hub|shadow_irf_reg[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~33_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[5][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[5][2]~regout\);

-- Location: LCCOMB_X13_Y11_N6
\auto_hub|irf_reg~34\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[5][2]~regout\,
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|irf_reg~34_combout\);

-- Location: LCFF_X13_Y11_N7
\auto_hub|irf_reg[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~34_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[5][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[5][2]~regout\);

-- Location: LCCOMB_X18_Y10_N16
\auto_hub|node_ena_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X18_Y11_N2
\auto_hub|node_ena~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|node_ena~12_combout\);

-- Location: LCCOMB_X19_Y10_N28
\auto_hub|node_ena~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena~1_combout\,
	datab => \auto_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|Decoder0~4_combout\,
	datad => \auto_hub|node_ena~12_combout\,
	combout => \auto_hub|node_ena~13_combout\);

-- Location: LCCOMB_X15_Y10_N26
\auto_hub|node_ena~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(15),
	combout => \auto_hub|node_ena~4_combout\);

-- Location: LCCOMB_X15_Y10_N16
\auto_hub|node_ena~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(15),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|node_ena~3_combout\);

-- Location: LCCOMB_X15_Y10_N4
\auto_hub|node_ena~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|node_ena~4_combout\,
	datac => \auto_hub|node_ena~3_combout\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena~5_combout\);

-- Location: LCFF_X19_Y10_N29
\auto_hub|node_ena[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~13_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|node_ena~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[5]~reg0_regout\);

-- Location: LCCOMB_X19_Y11_N20
\I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[5][1]~regout\,
	datab => \auto_hub|irf_reg[5][2]~regout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena[5]~reg0_regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X12_Y11_N0
\I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[5][4]~regout\,
	datad => \auto_hub|irf_reg[5][0]~regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X12_Y11_N1
\I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \I0|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X18_Y11_N8
\auto_hub|Decoder0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|Decoder0~2_combout\);

-- Location: LCCOMB_X18_Y10_N20
\auto_hub|node_ena~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|node_ena~8_combout\);

-- Location: LCCOMB_X15_Y10_N14
\auto_hub|node_ena~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena~1_combout\);

-- Location: LCCOMB_X18_Y10_N0
\auto_hub|node_ena~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena_proc~0_combout\,
	datab => \auto_hub|Decoder0~2_combout\,
	datac => \auto_hub|node_ena~8_combout\,
	datad => \auto_hub|node_ena~1_combout\,
	combout => \auto_hub|node_ena~9_combout\);

-- Location: LCFF_X18_Y10_N1
\auto_hub|node_ena[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~9_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|node_ena~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[3]~reg0_regout\);

-- Location: LCCOMB_X14_Y11_N10
\auto_hub|shadow_irf_reg~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][2]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|shadow_irf_reg~19_combout\);

-- Location: LCCOMB_X17_Y11_N26
\auto_hub|shadow_irf_reg[3][0]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|shadow_irf_reg[1][1]~2_combout\,
	datac => \auto_hub|Decoder0~2_combout\,
	datad => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	combout => \auto_hub|shadow_irf_reg[3][0]~17_combout\);

-- Location: LCFF_X14_Y11_N11
\auto_hub|shadow_irf_reg[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~19_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][2]~regout\);

-- Location: LCCOMB_X14_Y11_N14
\auto_hub|irf_reg~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datad => \auto_hub|shadow_irf_reg[3][2]~regout\,
	combout => \auto_hub|irf_reg~20_combout\);

-- Location: LCCOMB_X17_Y11_N8
\auto_hub|irf_reg[3][0]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~2_combout\,
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|Decoder0~2_combout\,
	datad => \auto_hub|irf_reg[1][0]~3_combout\,
	combout => \auto_hub|irf_reg[3][0]~18_combout\);

-- Location: LCFF_X14_Y11_N15
\auto_hub|irf_reg[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~20_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][2]~regout\);

-- Location: LCCOMB_X15_Y11_N12
\I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[3][1]~regout\,
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|node_ena[3]~reg0_regout\,
	datad => \auto_hub|irf_reg[3][2]~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X10_Y12_N24
\I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\auto_hub|shadow_irf_reg~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][0]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|shadow_irf_reg~16_combout\);

-- Location: LCFF_X14_Y11_N23
\auto_hub|shadow_irf_reg[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~16_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][0]~regout\);

-- Location: LCCOMB_X14_Y11_N18
\auto_hub|irf_reg~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|shadow_irf_reg[3][0]~regout\,
	combout => \auto_hub|irf_reg~17_combout\);

-- Location: LCFF_X14_Y11_N19
\auto_hub|irf_reg[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~17_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][0]~regout\);

-- Location: LCCOMB_X14_Y11_N30
\auto_hub|shadow_irf_reg~21\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][4]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|shadow_irf_reg~21_combout\);

-- Location: LCFF_X14_Y11_N31
\auto_hub|shadow_irf_reg[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~21_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[3][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[3][4]~regout\);

-- Location: LCCOMB_X14_Y11_N2
\auto_hub|irf_reg~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[3][4]~regout\,
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irf_reg~22_combout\);

-- Location: LCFF_X14_Y11_N3
\auto_hub|irf_reg[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~22_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[3][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[3][4]~regout\);

-- Location: LCCOMB_X14_Y11_N0
\I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[3][0]~regout\,
	datad => \auto_hub|irf_reg[3][4]~regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X10_Y12_N25
\I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \I2|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X14_Y12_N10
\auto_hub|irsr_reg~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg~19_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \auto_hub|irsr_reg[2]~1_combout\,
	combout => \auto_hub|irsr_reg~20_combout\);

-- Location: LCCOMB_X14_Y12_N4
\auto_hub|irsr_reg~21\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datab => \auto_hub|irsr_reg[2]~5_combout\,
	datad => \auto_hub|irsr_reg~20_combout\,
	combout => \auto_hub|irsr_reg~21_combout\);

-- Location: LCFF_X14_Y12_N5
\auto_hub|irsr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~21_combout\,
	sdata => \auto_hub|irsr_reg\(2),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|irsr_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(1));

-- Location: LCFF_X14_Y12_N17
\auto_hub|irsr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~6_combout\,
	sdata => \auto_hub|irsr_reg\(1),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|irsr_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(0));

-- Location: LCCOMB_X17_Y10_N10
\auto_hub|Equal3~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(0),
	datab => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|Equal3~1_combout\);

-- Location: LCCOMB_X14_Y10_N6
\auto_hub|hub_mode_reg[1]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal3~0_combout\,
	datab => \auto_hub|Equal3~1_combout\,
	datac => \auto_hub|Equal9~0_combout\,
	datad => \auto_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X13_Y10_N16
\auto_hub|hub_mode_reg[1]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|irsr_reg\(0),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|hub_mode_reg[1]~0_combout\,
	combout => \auto_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCFF_X13_Y10_N17
\auto_hub|hub_mode_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[1]~2_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X17_Y10_N0
\auto_hub|shadow_irf_reg[1][1]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|shadow_jsm|state\(5),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|shadow_irf_reg[1][1]~2_combout\);

-- Location: LCCOMB_X17_Y11_N14
\auto_hub|shadow_irf_reg[1][0]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Decoder0~0_combout\,
	datab => \auto_hub|shadow_irf_reg[1][1]~2_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	combout => \auto_hub|shadow_irf_reg[1][0]~3_combout\);

-- Location: LCFF_X14_Y12_N25
\auto_hub|shadow_irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][0]~regout\);

-- Location: LCCOMB_X13_Y12_N12
\auto_hub|irf_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_irf_reg[1][0]~regout\,
	datac => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|irf_reg~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\auto_hub|irf_reg[1][0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X19_Y11_N12
\auto_hub|irf_reg[1][0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|irf_reg[1][0]~1_combout\,
	datac => \auto_hub|irf_proc~0_combout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|irf_reg[1][0]~2_combout\);

-- Location: LCCOMB_X17_Y11_N0
\auto_hub|irf_reg[1][0]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Decoder0~0_combout\,
	datab => \auto_hub|irf_reg[1][0]~3_combout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irf_reg[1][0]~2_combout\,
	combout => \auto_hub|irf_reg[1][0]~4_combout\);

-- Location: LCFF_X13_Y12_N13
\auto_hub|irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][0]~regout\);

-- Location: LCCOMB_X14_Y12_N8
\auto_hub|shadow_irf_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irf_reg[1][1]~regout\,
	datac => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|shadow_irf_reg~4_combout\);

-- Location: LCFF_X14_Y12_N9
\auto_hub|shadow_irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~4_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][1]~regout\);

-- Location: LCCOMB_X13_Y12_N22
\auto_hub|irf_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|shadow_irf_reg[1][1]~regout\,
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|irf_reg~5_combout\);

-- Location: LCFF_X13_Y12_N23
\auto_hub|irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~5_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][1]~regout\);

-- Location: LCCOMB_X18_Y10_N22
\auto_hub|node_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|node_ena~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\auto_hub|Decoder0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|irsr_reg\(6),
	datad => \auto_hub|irsr_reg\(7),
	combout => \auto_hub|Decoder0~0_combout\);

-- Location: LCCOMB_X18_Y10_N12
\auto_hub|node_ena~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena~1_combout\,
	datab => \auto_hub|node_ena~0_combout\,
	datac => \auto_hub|node_ena_proc~0_combout\,
	datad => \auto_hub|Decoder0~0_combout\,
	combout => \auto_hub|node_ena~2_combout\);

-- Location: LCFF_X18_Y10_N13
\auto_hub|node_ena[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~2_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|node_ena~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[1]~reg0_regout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena[1]~reg0_regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	datab => \auto_hub|irf_reg[1][1]~regout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X14_Y10_N21
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCCOMB_X14_Y10_N10
\inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|node_ena[1]~reg0_regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCFF_X14_Y10_N11
\inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X14_Y10_N14
\inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][2]~regout\,
	datab => \auto_hub|irf_reg[1][1]~regout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~7_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\);

-- Location: LCFF_X19_Y13_N13
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~7_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X19_Y13_N26
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCFF_X19_Y13_N23
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X19_Y13_N28
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~6_combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCFF_X19_Y13_N1
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X19_Y13_N8
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\);

-- Location: LCFF_X19_Y13_N25
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X18_Y13_N16
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCFF_X18_Y13_N17
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	ena => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X14_Y10_N16
\inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][0]~regout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	datad => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCCOMB_X18_Y11_N14
\auto_hub|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	datac => \auto_hub|irsr_reg\(6),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|tdo~2_combout\);

-- Location: LCCOMB_X14_Y10_N28
\auto_hub|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|tdo~1_combout\);

-- Location: LCCOMB_X14_Y10_N30
\auto_hub|tdo~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~5_combout\,
	datab => \auto_hub|tdo~2_combout\,
	datac => \auto_hub|Equal9~0_combout\,
	datad => \auto_hub|tdo~1_combout\,
	combout => \auto_hub|tdo~6_combout\);

-- Location: LCCOMB_X17_Y12_N30
\auto_hub|hub_tdo_mux_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_tdo_mux_proc~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\auto_hub|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~regout\,
	datab => \auto_hub|irsr_reg[0]~0_combout\,
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|hub_tdo_mux_proc~0_combout\,
	combout => \auto_hub|tdo~0_combout\);

-- Location: LCCOMB_X15_Y10_N12
\auto_hub|tdo~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~8_combout\,
	datab => \auto_hub|tdo~7_combout\,
	datac => \auto_hub|tdo~6_combout\,
	datad => \auto_hub|tdo~0_combout\,
	combout => \auto_hub|tdo~9_combout\);

-- Location: LCFF_X15_Y10_N13
\auto_hub|tdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|tdo~9_combout\,
	aclr => \auto_hub|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|tdo~regout\);

-- Location: LCCOMB_X15_Y10_N22
\auto_hub|tdo~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|tdo~regout\,
	combout => \auto_hub|tdo~_wirecell_combout\);

-- Location: LCCOMB_X15_Y12_N22
\auto_hub|irsr_reg[8]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \~GND~combout\,
	datac => \~GND~combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[8]~13_combout\);

-- Location: LCCOMB_X18_Y11_N4
\auto_hub|irsr_reg[8]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|irsr_reg[8]~13_combout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|irsr_reg[8]~14_combout\);

-- Location: LCCOMB_X18_Y11_N20
\auto_hub|irsr_reg[8]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[8]~12_combout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|irsr_reg[8]~14_combout\,
	datad => \auto_hub|irsr_reg[7]~11_combout\,
	combout => \auto_hub|irsr_reg[8]~15_combout\);

-- Location: LCFF_X18_Y11_N21
\auto_hub|irsr_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg[8]~15_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(8));

-- Location: LCFF_X18_Y11_N29
\auto_hub|irsr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|irsr_reg\(8),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|irsr_reg[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(7));

-- Location: LCCOMB_X18_Y11_N22
\auto_hub|Equal9~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|Equal9~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\auto_hub|hub_mode_reg[0]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal3~1_combout\,
	datab => \auto_hub|Equal9~0_combout\,
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|hub_mode_reg[0]~5_combout\);

-- Location: LCFF_X18_Y11_N11
\auto_hub|hub_mode_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[0]~5_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X17_Y12_N0
\auto_hub|irsr_reg[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|irsr_reg[2]~2_combout\);

-- Location: LCCOMB_X17_Y12_N18
\auto_hub|irsr_reg[2]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datab => \auto_hub|irsr_reg[2]~2_combout\,
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irsr_reg[2]~5_combout\);

-- Location: LCCOMB_X14_Y12_N14
\auto_hub|irsr_reg~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg~17_combout\,
	datab => \~GND~combout\,
	datad => \auto_hub|irsr_reg[2]~5_combout\,
	combout => \auto_hub|irsr_reg~18_combout\);

-- Location: LCFF_X14_Y12_N15
\auto_hub|irsr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~18_combout\,
	sdata => \auto_hub|irsr_reg\(3),
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|irsr_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(2));

-- Location: LCCOMB_X17_Y10_N12
\auto_hub|shadow_irf_reg~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irf_reg[2][2]~regout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~12_combout\);

-- Location: LCFF_X17_Y10_N13
\auto_hub|shadow_irf_reg[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~12_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[2][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[2][2]~regout\);

-- Location: LCCOMB_X17_Y10_N14
\auto_hub|irf_reg~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_irf_reg[2][2]~regout\,
	combout => \auto_hub|irf_reg~13_combout\);

-- Location: LCFF_X17_Y10_N15
\auto_hub|irf_reg[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~13_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[2][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[2][2]~regout\);

-- Location: LCCOMB_X18_Y10_N26
\auto_hub|node_ena~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|node_ena~6_combout\);

-- Location: LCCOMB_X18_Y10_N14
\auto_hub|node_ena~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena~1_combout\,
	datab => \auto_hub|Decoder0~1_combout\,
	datac => \auto_hub|node_ena_proc~0_combout\,
	datad => \auto_hub|node_ena~6_combout\,
	combout => \auto_hub|node_ena~7_combout\);

-- Location: LCFF_X18_Y10_N15
\auto_hub|node_ena[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~7_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|node_ena~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[2]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N26
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|irf_reg[2][2]~regout\,
	datac => \auto_hub|node_ena[2]~reg0_regout\,
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|node_ena[2]~reg0_regout\,
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\);

-- Location: LCCOMB_X21_Y10_N26
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\,
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X21_Y10_N27
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCCOMB_X21_Y10_N16
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\,
	datac => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\);

-- Location: LCFF_X21_Y10_N17
\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X18_Y11_N18
\auto_hub|node_ena~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|node_ena~10_combout\);

-- Location: LCCOMB_X18_Y10_N2
\auto_hub|node_ena~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena_proc~0_combout\,
	datab => \auto_hub|node_ena~10_combout\,
	datac => \auto_hub|Decoder0~3_combout\,
	datad => \auto_hub|node_ena~1_combout\,
	combout => \auto_hub|node_ena~11_combout\);

-- Location: LCFF_X18_Y10_N3
\auto_hub|node_ena[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~11_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|node_ena~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[4]~reg0_regout\);

-- Location: LCCOMB_X19_Y11_N14
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena[4]~reg0_regout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[4][1]~regout\,
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\,
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X19_Y11_N29
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCCOMB_X19_Y11_N0
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\,
	datac => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	combout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\);

-- Location: LCFF_X19_Y11_N1
\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: LCCOMB_X19_Y11_N30
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena[5]~reg0_regout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\);

-- Location: LCCOMB_X19_Y9_N26
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\,
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X19_Y9_N27
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCCOMB_X19_Y11_N10
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|node_ena[5]~reg0_regout\,
	datac => \auto_hub|irf_reg[5][2]~regout\,
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\,
	combout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\);

-- Location: LCFF_X19_Y9_N17
\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: LCCOMB_X14_Y10_N26
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][2]~regout\,
	datab => \auto_hub|shadow_jsm|state\(5),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena[1]~reg0_regout\,
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\,
	datac => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\);

-- Location: LCFF_X14_Y10_N1
\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: LCCOMB_X15_Y4_N4
\inst3|FA0|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~1_cout\ = CARRY(\inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => VCC,
	cout => \inst3|FA0|s~1_cout\);

-- Location: LCCOMB_X15_Y4_N6
\inst3|FA0|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~2_combout\ = (\a~combout\(0) & ((\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & (\inst3|FA0|s~1_cout\ & VCC)) # (!\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & (!\inst3|FA0|s~1_cout\)))) # 
-- (!\a~combout\(0) & ((\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & (!\inst3|FA0|s~1_cout\)) # (!\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & ((\inst3|FA0|s~1_cout\) # (GND)))))
-- \inst3|FA0|s~3\ = CARRY((\a~combout\(0) & (!\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & !\inst3|FA0|s~1_cout\)) # (!\a~combout\(0) & ((!\inst3|FA0|s~1_cout\) # (!\I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \I0|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => VCC,
	cin => \inst3|FA0|s~1_cout\,
	combout => \inst3|FA0|s~2_combout\,
	cout => \inst3|FA0|s~3\);

-- Location: LCCOMB_X15_Y4_N8
\inst3|FA0|s~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~4_combout\ = ((\a~combout\(1) $ (\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) $ (!\inst3|FA0|s~3\)))) # (GND)
-- \inst3|FA0|s~5\ = CARRY((\a~combout\(1) & ((\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0)) # (!\inst3|FA0|s~3\))) # (!\a~combout\(1) & (\I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & !\inst3|FA0|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \I1|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => VCC,
	cin => \inst3|FA0|s~3\,
	combout => \inst3|FA0|s~4_combout\,
	cout => \inst3|FA0|s~5\);

-- Location: LCCOMB_X15_Y4_N10
\inst3|FA0|s~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~6_combout\ = (\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & ((\a~combout\(2) & (\inst3|FA0|s~5\ & VCC)) # (!\a~combout\(2) & (!\inst3|FA0|s~5\)))) # (!\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & 
-- ((\a~combout\(2) & (!\inst3|FA0|s~5\)) # (!\a~combout\(2) & ((\inst3|FA0|s~5\) # (GND)))))
-- \inst3|FA0|s~7\ = CARRY((\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & (!\a~combout\(2) & !\inst3|FA0|s~5\)) # (!\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & ((!\inst3|FA0|s~5\) # (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datab => \a~combout\(2),
	datad => VCC,
	cin => \inst3|FA0|s~5\,
	combout => \inst3|FA0|s~6_combout\,
	cout => \inst3|FA0|s~7\);

-- Location: LCCOMB_X15_Y4_N12
\inst3|FA0|s~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~8_combout\ = ((\a~combout\(3) $ (\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) $ (!\inst3|FA0|s~7\)))) # (GND)
-- \inst3|FA0|s~9\ = CARRY((\a~combout\(3) & ((\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0)) # (!\inst3|FA0|s~7\))) # (!\a~combout\(3) & (\I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0) & !\inst3|FA0|s~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \I3|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => VCC,
	cin => \inst3|FA0|s~7\,
	combout => \inst3|FA0|s~8_combout\,
	cout => \inst3|FA0|s~9\);

-- Location: LCCOMB_X15_Y4_N14
\inst3|FA0|s~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|FA0|s~10_combout\ = \inst3|FA0|s~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|FA0|s~9\,
	combout => \inst3|FA0|s~10_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X15_Y11_N24
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCCOMB_X15_Y11_N22
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|node_ena[3]~reg0_regout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\);

-- Location: LCCOMB_X15_Y11_N26
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[3][1]~regout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	datad => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\);

-- Location: LCCOMB_X15_Y11_N14
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~1_combout\,
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~2_combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X15_Y11_N15
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCCOMB_X15_Y11_N0
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~0_combout\,
	datab => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datac => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\);

-- Location: LCFF_X15_Y11_N1
\I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I2|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tms~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tms,
	combout => \altera_reserved_tms~combout\);

-- Location: LCCOMB_X15_Y8_N0
\auto_hub|clr_reg~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|clr_reg~regout\,
	combout => \auto_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X27_Y7_N0
\auto_hub|shadow_jsm|state[0]~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|shadow_jsm|state\(0),
	combout => \auto_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|FA0|s~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_out);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|FA0|s~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_out(3));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|FA0|s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_out(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|FA0|s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_out(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|FA0|s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_out(0));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altera_reserved_tdo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \altera_internal_jtag~TDO\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altera_reserved_tdo);
END structure;


