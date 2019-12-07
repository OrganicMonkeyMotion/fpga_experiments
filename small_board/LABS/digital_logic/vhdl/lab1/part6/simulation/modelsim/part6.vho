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

-- DATE "07/08/2014 21:45:35"

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

ENTITY 	part6_top IS
    PORT (
	DISP : OUT std_logic_vector(3 DOWNTO 0);
	SEG : OUT std_logic_vector(6 DOWNTO 0);
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	clk : IN std_logic;
	Button : IN std_logic_vector(1 DOWNTO 0)
	);
END part6_top;

-- Design Ports Information
-- DISP[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[6]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[4]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Button[0]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF part6_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DISP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Button : std_logic_vector(1 DOWNTO 0);
SIGNAL \auto_hub|clr_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|S0|q[1]~11_combout\ : std_logic;
SIGNAL \inst1|S0|q[3]~15_combout\ : std_logic;
SIGNAL \inst1|S0|q[4]~17_combout\ : std_logic;
SIGNAL \inst1|S0|q[6]~21_combout\ : std_logic;
SIGNAL \inst1|S0|q[8]~25_combout\ : std_logic;
SIGNAL \part6_inst|M3|Mux1~1_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~8\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~10\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~12\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~16\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~14_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~17_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~19_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|S0|q[0]~33_combout\ : std_logic;
SIGNAL \inst1|S0|q[1]~12\ : std_logic;
SIGNAL \inst1|S0|q[2]~13_combout\ : std_logic;
SIGNAL \inst1|S0|q[2]~14\ : std_logic;
SIGNAL \inst1|S0|q[3]~16\ : std_logic;
SIGNAL \inst1|S0|q[4]~18\ : std_logic;
SIGNAL \inst1|S0|q[5]~19_combout\ : std_logic;
SIGNAL \inst1|S0|q[5]~20\ : std_logic;
SIGNAL \inst1|S0|q[6]~22\ : std_logic;
SIGNAL \inst1|S0|q[7]~23_combout\ : std_logic;
SIGNAL \inst1|S0|q[7]~24\ : std_logic;
SIGNAL \inst1|S0|q[8]~26\ : std_logic;
SIGNAL \inst1|S0|q[9]~27_combout\ : std_logic;
SIGNAL \inst1|S0|q[9]~28\ : std_logic;
SIGNAL \inst1|S0|q[10]~29_combout\ : std_logic;
SIGNAL \inst1|S0|q[10]~30\ : std_logic;
SIGNAL \inst1|S0|q[11]~31_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \auto_hub|tdo~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|Equal6~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|clr_reg~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][4]~regout\ : std_logic;
SIGNAL \auto_hub|irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \auto_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|tdo~regout\ : std_logic;
SIGNAL \auto_hub|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~5_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\ : std_logic;
SIGNAL \part6_inst|M3|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~3_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[7]~1_combout\ : std_logic;
SIGNAL \part6_inst|M3|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[6]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~7_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[5]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~6_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~4_combout\ : std_logic;
SIGNAL \part6_inst|M3|Mux0~1_combout\ : std_logic;
SIGNAL \part6_inst|M2|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~8_combout\ : std_logic;
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[2]~3_combout\ : std_logic;
SIGNAL \part6_inst|M2|Mux1~1_combout\ : std_logic;
SIGNAL \part6_inst|M2|Mux1~0_combout\ : std_logic;
SIGNAL \part6_inst|M0|Mux0~0_combout\ : std_logic;
SIGNAL \part6_inst|M0|Mux1~0_combout\ : std_logic;
SIGNAL \part6_inst|M0|Mux1~1_combout\ : std_logic;
SIGNAL \part6_inst|M1|Mux1~1_combout\ : std_logic;
SIGNAL \part6_inst|M1|Mux0~1_combout\ : std_logic;
SIGNAL \part6_inst|M1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \part6_inst|M1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \part6_inst|M0|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \part6_inst|M2|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \part6_inst|H2|Display[2]~0_combout\ : std_logic;
SIGNAL \part6_inst|H0|Display[2]~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \part6_inst|H1|Display[2]~0_combout\ : std_logic;
SIGNAL \part6_inst|H3|Display[2]~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \Button~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \part6_inst|H0|Display\ : std_logic_vector(0 TO 6);
SIGNAL \inst1|S0|q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \part6_inst|H3|Display\ : std_logic_vector(0 TO 6);
SIGNAL \part6_inst|H2|Display\ : std_logic_vector(0 TO 6);
SIGNAL \part6_inst|H1|Display\ : std_logic_vector(0 TO 6);
SIGNAL \auto_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|irsr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;

BEGIN

DISP <= ww_DISP;
SEG <= ww_SEG;
ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_clk <= clk;
ww_Button <= Button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\auto_hub|clr_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|clr_reg~regout\);

\auto_hub|shadow_jsm|state[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|shadow_jsm|state\(0));

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \altera_internal_jtag~TCKUTAP\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|virtual_ir_scan_reg~regout\;
\auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ <= NOT \auto_hub|shadow_jsm|state[0]~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;

-- Location: LCFF_X9_Y5_N21
\inst1|S0|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(8));

-- Location: LCFF_X9_Y5_N17
\inst1|S0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(6));

-- Location: LCFF_X9_Y5_N13
\inst1|S0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(4));

-- Location: LCFF_X9_Y5_N11
\inst1|S0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(3));

-- Location: LCFF_X9_Y5_N7
\inst1|S0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(1));

-- Location: LCCOMB_X9_Y5_N6
\inst1|S0|q[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[1]~11_combout\ = (\inst1|S0|q\(1) & (\inst1|S0|q\(0) $ (VCC))) # (!\inst1|S0|q\(1) & (\inst1|S0|q\(0) & VCC))
-- \inst1|S0|q[1]~12\ = CARRY((\inst1|S0|q\(1) & \inst1|S0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(1),
	datab => \inst1|S0|q\(0),
	datad => VCC,
	combout => \inst1|S0|q[1]~11_combout\,
	cout => \inst1|S0|q[1]~12\);

-- Location: LCCOMB_X9_Y5_N10
\inst1|S0|q[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[3]~15_combout\ = (\inst1|S0|q\(3) & (\inst1|S0|q[2]~14\ $ (GND))) # (!\inst1|S0|q\(3) & (!\inst1|S0|q[2]~14\ & VCC))
-- \inst1|S0|q[3]~16\ = CARRY((\inst1|S0|q\(3) & !\inst1|S0|q[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(3),
	datad => VCC,
	cin => \inst1|S0|q[2]~14\,
	combout => \inst1|S0|q[3]~15_combout\,
	cout => \inst1|S0|q[3]~16\);

-- Location: LCCOMB_X9_Y5_N12
\inst1|S0|q[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[4]~17_combout\ = (\inst1|S0|q\(4) & (!\inst1|S0|q[3]~16\)) # (!\inst1|S0|q\(4) & ((\inst1|S0|q[3]~16\) # (GND)))
-- \inst1|S0|q[4]~18\ = CARRY((!\inst1|S0|q[3]~16\) # (!\inst1|S0|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(4),
	datad => VCC,
	cin => \inst1|S0|q[3]~16\,
	combout => \inst1|S0|q[4]~17_combout\,
	cout => \inst1|S0|q[4]~18\);

-- Location: LCCOMB_X9_Y5_N16
\inst1|S0|q[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[6]~21_combout\ = (\inst1|S0|q\(6) & (!\inst1|S0|q[5]~20\)) # (!\inst1|S0|q\(6) & ((\inst1|S0|q[5]~20\) # (GND)))
-- \inst1|S0|q[6]~22\ = CARRY((!\inst1|S0|q[5]~20\) # (!\inst1|S0|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(6),
	datad => VCC,
	cin => \inst1|S0|q[5]~20\,
	combout => \inst1|S0|q[6]~21_combout\,
	cout => \inst1|S0|q[6]~22\);

-- Location: LCCOMB_X9_Y5_N20
\inst1|S0|q[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[8]~25_combout\ = (\inst1|S0|q\(8) & (!\inst1|S0|q[7]~24\)) # (!\inst1|S0|q\(8) & ((\inst1|S0|q[7]~24\) # (GND)))
-- \inst1|S0|q[8]~26\ = CARRY((!\inst1|S0|q[7]~24\) # (!\inst1|S0|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(8),
	datad => VCC,
	cin => \inst1|S0|q[7]~24\,
	combout => \inst1|S0|q[8]~25_combout\,
	cout => \inst1|S0|q[8]~26\);

-- Location: LCCOMB_X10_Y4_N14
\part6_inst|M3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M3|Mux1~1_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4)))) # (!\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4),
	combout => \part6_inst|M3|Mux1~1_combout\);

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

-- Location: LCFF_X9_Y7_N25
\auto_hub|shadow_jsm|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(6));

-- Location: LCFF_X12_Y7_N25
\auto_hub|shadow_jsm|tms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCFF_X15_Y9_N5
\auto_hub|hub_info_reg|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[2]~11_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[0]~19_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(2));

-- Location: LCFF_X15_Y9_N1
\auto_hub|hub_info_reg|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[0]~7_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[0]~19_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(0));

-- Location: LCFF_X15_Y9_N7
\auto_hub|hub_info_reg|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[3]~15_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[0]~19_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(3));

-- Location: LCFF_X15_Y9_N9
\auto_hub|hub_info_reg|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[4]~17_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[0]~19_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(4));

-- Location: LCFF_X15_Y9_N3
\auto_hub|hub_info_reg|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|word_counter[1]~9_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[0]~19_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|word_counter\(1));

-- Location: LCFF_X12_Y7_N27
\auto_hub|shadow_jsm|tms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X15_Y9_N0
\auto_hub|hub_info_reg|word_counter[0]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|hub_info_reg|word_counter[0]~7_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[0]~8\);

-- Location: LCCOMB_X15_Y9_N2
\auto_hub|hub_info_reg|word_counter[1]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[0]~8\,
	combout => \auto_hub|hub_info_reg|word_counter[1]~9_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[1]~10\);

-- Location: LCCOMB_X15_Y9_N4
\auto_hub|hub_info_reg|word_counter[2]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[1]~10\,
	combout => \auto_hub|hub_info_reg|word_counter[2]~11_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[2]~12\);

-- Location: LCCOMB_X15_Y9_N6
\auto_hub|hub_info_reg|word_counter[3]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[2]~12\,
	combout => \auto_hub|hub_info_reg|word_counter[3]~15_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[3]~16\);

-- Location: LCCOMB_X15_Y9_N8
\auto_hub|hub_info_reg|word_counter[4]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|hub_info_reg|word_counter[3]~16\,
	combout => \auto_hub|hub_info_reg|word_counter[4]~17_combout\);

-- Location: LCFF_X15_Y8_N29
\auto_hub|irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~6_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][3]~regout\);

-- Location: LCFF_X9_Y7_N17
\auto_hub|shadow_jsm|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(7));

-- Location: LCFF_X9_Y7_N13
\auto_hub|tdo_bypass_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|tdo_bypass_reg~regout\);

-- Location: LCFF_X13_Y10_N19
\auto_hub|hub_info_reg|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~9_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X15_Y8_N0
\auto_hub|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|tdo_bypass_reg~regout\,
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|tdo~0_combout\);

-- Location: LCCOMB_X15_Y8_N10
\auto_hub|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|tdo_bypass_reg~regout\,
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|tdo~1_combout\);

-- Location: LCCOMB_X13_Y10_N20
\auto_hub|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~0_combout\,
	datab => \auto_hub|tdo~1_combout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|tdo~2_combout\);

-- Location: LCCOMB_X14_Y8_N14
\auto_hub|irf_reg[1][0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irsr_reg\(5),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|irf_reg[1][0]~2_combout\);

-- Location: LCFF_X15_Y8_N17
\auto_hub|shadow_irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~3_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][1]~regout\);

-- Location: LCFF_X15_Y8_N21
\auto_hub|shadow_irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~5_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][3]~regout\);

-- Location: LCCOMB_X15_Y8_N28
\auto_hub|irf_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_irf_reg[1][3]~regout\,
	datad => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg~6_combout\);

-- Location: LCFF_X12_Y7_N9
\auto_hub|virtual_dr_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|Equal0~2_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|virtual_dr_scan_reg~regout\);

-- Location: LCCOMB_X14_Y9_N30
\auto_hub|node_ena_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X14_Y9_N24
\auto_hub|node_ena~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(15),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|node_ena~2_combout\);

-- Location: LCCOMB_X10_Y8_N18
\auto_hub|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(2),
	datab => \auto_hub|jtag_ir_reg\(4),
	datac => \auto_hub|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_ir_reg\(5),
	combout => \auto_hub|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y7_N24
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

-- Location: LCCOMB_X9_Y7_N16
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

-- Location: LCCOMB_X9_Y7_N12
\auto_hub|tdo_bypass_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|tdo_bypass_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|tdo_bypass_reg~0_combout\);

-- Location: LCFF_X13_Y10_N9
\auto_hub|hub_info_reg|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~17_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X13_Y10_N10
\auto_hub|hub_info_reg|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X13_Y10_N28
\auto_hub|hub_info_reg|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X13_Y10_N14
\auto_hub|hub_info_reg|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X13_Y10_N18
\auto_hub|hub_info_reg|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|hub_info_reg|WORD_SR~7_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X12_Y7_N10
\auto_hub|hub_info_reg|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	combout => \auto_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X14_Y8_N6
\auto_hub|hub_mode_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal6~0_combout\,
	datac => \auto_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X15_Y8_N16
\auto_hub|shadow_irf_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irf_reg[1][1]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~3_combout\);

-- Location: LCCOMB_X15_Y8_N20
\auto_hub|shadow_irf_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][3]~regout\,
	combout => \auto_hub|shadow_irf_reg~5_combout\);

-- Location: LCCOMB_X14_Y8_N10
\auto_hub|irsr_reg[3]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[2]~1_combout\,
	datab => \auto_hub|irsr_reg\(4),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X14_Y8_N12
\auto_hub|irsr_reg[3]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(0),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X12_Y7_N8
\auto_hub|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal0~1_combout\,
	datab => \auto_hub|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_ir_reg\(1),
	datad => \auto_hub|Equal0~0_combout\,
	combout => \auto_hub|Equal0~2_combout\);

-- Location: LCFF_X12_Y7_N5
\auto_hub|shadow_jsm|tms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X12_Y7_N24
\auto_hub|shadow_jsm|tms_cnt~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: LCFF_X13_Y10_N1
\auto_hub|hub_info_reg|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~13_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X13_Y10_N26
\auto_hub|hub_info_reg|WORD_SR~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X13_Y10_N12
\auto_hub|hub_info_reg|word_counter[0]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|word_counter[0]~13_combout\);

-- Location: LCCOMB_X14_Y9_N18
\auto_hub|hub_info_reg|word_counter[0]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|hub_info_reg|word_counter[0]~14_combout\);

-- Location: LCCOMB_X12_Y7_N4
\auto_hub|shadow_jsm|tms_cnt~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: LCCOMB_X12_Y7_N26
\auto_hub|shadow_jsm|tms_cnt~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: LCCOMB_X13_Y10_N30
\auto_hub|hub_info_reg|WORD_SR~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(4),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X13_Y10_N16
\auto_hub|hub_info_reg|WORD_SR~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCFF_X13_Y10_N3
\auto_hub|hub_info_reg|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_info_reg|WORD_SR~15_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X13_Y10_N0
\auto_hub|hub_info_reg|WORD_SR~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~12_combout\,
	datab => \auto_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|hub_info_reg|WORD_SR~11_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X13_Y10_N4
\auto_hub|hub_info_reg|WORD_SR~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X13_Y10_N2
\auto_hub|hub_info_reg|WORD_SR~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|hub_info_reg|WORD_SR~14_combout\,
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~15_combout\);

-- Location: LCCOMB_X14_Y9_N12
\auto_hub|hub_info_reg|WORD_SR[0]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\);

-- Location: LCCOMB_X13_Y10_N8
\auto_hub|hub_info_reg|WORD_SR~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~17_combout\);

-- Location: LCCOMB_X14_Y9_N14
\auto_hub|hub_info_reg|word_counter[0]~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|hub_info_reg|word_counter[0]~13_combout\,
	combout => \auto_hub|hub_info_reg|word_counter[0]~19_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G1
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

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y5_N0
\inst1|S0|q[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[0]~33_combout\ = !\inst1|S0|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|S0|q\(0),
	combout => \inst1|S0|q[0]~33_combout\);

-- Location: LCFF_X9_Y5_N1
\inst1|S0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(0));

-- Location: LCCOMB_X9_Y5_N8
\inst1|S0|q[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[2]~13_combout\ = (\inst1|S0|q\(2) & (!\inst1|S0|q[1]~12\)) # (!\inst1|S0|q\(2) & ((\inst1|S0|q[1]~12\) # (GND)))
-- \inst1|S0|q[2]~14\ = CARRY((!\inst1|S0|q[1]~12\) # (!\inst1|S0|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(2),
	datad => VCC,
	cin => \inst1|S0|q[1]~12\,
	combout => \inst1|S0|q[2]~13_combout\,
	cout => \inst1|S0|q[2]~14\);

-- Location: LCFF_X9_Y5_N9
\inst1|S0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(2));

-- Location: LCCOMB_X9_Y5_N14
\inst1|S0|q[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[5]~19_combout\ = (\inst1|S0|q\(5) & (\inst1|S0|q[4]~18\ $ (GND))) # (!\inst1|S0|q\(5) & (!\inst1|S0|q[4]~18\ & VCC))
-- \inst1|S0|q[5]~20\ = CARRY((\inst1|S0|q\(5) & !\inst1|S0|q[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(5),
	datad => VCC,
	cin => \inst1|S0|q[4]~18\,
	combout => \inst1|S0|q[5]~19_combout\,
	cout => \inst1|S0|q[5]~20\);

-- Location: LCFF_X9_Y5_N15
\inst1|S0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(5));

-- Location: LCCOMB_X9_Y5_N18
\inst1|S0|q[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[7]~23_combout\ = (\inst1|S0|q\(7) & (\inst1|S0|q[6]~22\ $ (GND))) # (!\inst1|S0|q\(7) & (!\inst1|S0|q[6]~22\ & VCC))
-- \inst1|S0|q[7]~24\ = CARRY((\inst1|S0|q\(7) & !\inst1|S0|q[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(7),
	datad => VCC,
	cin => \inst1|S0|q[6]~22\,
	combout => \inst1|S0|q[7]~23_combout\,
	cout => \inst1|S0|q[7]~24\);

-- Location: LCFF_X9_Y5_N19
\inst1|S0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(7));

-- Location: LCCOMB_X9_Y5_N22
\inst1|S0|q[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[9]~27_combout\ = (\inst1|S0|q\(9) & (\inst1|S0|q[8]~26\ $ (GND))) # (!\inst1|S0|q\(9) & (!\inst1|S0|q[8]~26\ & VCC))
-- \inst1|S0|q[9]~28\ = CARRY((\inst1|S0|q\(9) & !\inst1|S0|q[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(9),
	datad => VCC,
	cin => \inst1|S0|q[8]~26\,
	combout => \inst1|S0|q[9]~27_combout\,
	cout => \inst1|S0|q[9]~28\);

-- Location: LCFF_X9_Y5_N23
\inst1|S0|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(9));

-- Location: LCCOMB_X9_Y5_N24
\inst1|S0|q[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[10]~29_combout\ = (\inst1|S0|q\(10) & (!\inst1|S0|q[9]~28\)) # (!\inst1|S0|q\(10) & ((\inst1|S0|q[9]~28\) # (GND)))
-- \inst1|S0|q[10]~30\ = CARRY((!\inst1|S0|q[9]~28\) # (!\inst1|S0|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(10),
	datad => VCC,
	cin => \inst1|S0|q[9]~28\,
	combout => \inst1|S0|q[10]~29_combout\,
	cout => \inst1|S0|q[10]~30\);

-- Location: LCFF_X9_Y5_N25
\inst1|S0|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(10));

-- Location: LCCOMB_X9_Y5_N26
\inst1|S0|q[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S0|q[11]~31_combout\ = \inst1|S0|q[10]~30\ $ (!\inst1|S0|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|S0|q\(11),
	cin => \inst1|S0|q[10]~30\,
	combout => \inst1|S0|q[11]~31_combout\);

-- Location: LCFF_X9_Y5_N27
\inst1|S0|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|S0|q[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|S0|q\(11));

-- Location: LCCOMB_X9_Y4_N8
\inst1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (!\inst1|S0|q\(11)) # (!\inst1|S0|q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(10),
	datad => \inst1|S0|q\(11),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X9_Y4_N18
\inst1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|S0|q\(10)) # (!\inst1|S0|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(10),
	datad => \inst1|S0|q\(11),
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X9_Y4_N20
\inst1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|S0|q\(11)) # (!\inst1|S0|q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(10),
	datad => \inst1|S0|q\(11),
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X9_Y4_N6
\inst1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst1|S0|q\(10)) # (\inst1|S0|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|S0|q\(10),
	datad => \inst1|S0|q\(11),
	combout => \inst1|Mux7~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[1]~I\ : cycloneii_io
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
	padio => ww_Button(1),
	combout => \Button~combout\(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[0]~I\ : cycloneii_io
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
	padio => ww_Button(0),
	combout => \Button~combout\(0));

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

-- Location: LCCOMB_X13_Y10_N22
\auto_hub|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|tdo~4_combout\);

-- Location: LCCOMB_X12_Y7_N28
\auto_hub|shadow_jsm|state~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_jsm|state~5_combout\);

-- Location: LCFF_X12_Y7_N29
\auto_hub|shadow_jsm|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X9_Y7_N10
\auto_hub|irf_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \auto_hub|irf_proc~0_combout\);

-- Location: LCFF_X9_Y7_N11
\auto_hub|shadow_jsm|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X12_Y7_N16
\auto_hub|shadow_jsm|state~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(9),
	combout => \auto_hub|shadow_jsm|state~8_combout\);

-- Location: LCFF_X12_Y7_N17
\auto_hub|shadow_jsm|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X9_Y7_N20
\auto_hub|shadow_jsm|state~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(12),
	datac => \auto_hub|shadow_jsm|state\(13),
	combout => \auto_hub|shadow_jsm|state~11_combout\);

-- Location: LCFF_X9_Y7_N21
\auto_hub|shadow_jsm|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X12_Y7_N12
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

-- Location: LCFF_X12_Y7_N13
\auto_hub|shadow_jsm|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X9_Y7_N2
\auto_hub|shadow_jsm|state~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(10),
	datac => \auto_hub|shadow_jsm|state\(11),
	datad => \auto_hub|shadow_jsm|state\(14),
	combout => \auto_hub|shadow_jsm|state~9_combout\);

-- Location: LCFF_X9_Y7_N3
\auto_hub|shadow_jsm|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X12_Y7_N18
\auto_hub|shadow_jsm|state~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(10),
	datab => \auto_hub|shadow_jsm|state\(11),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|shadow_jsm|state~10_combout\);

-- Location: LCFF_X12_Y7_N19
\auto_hub|shadow_jsm|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X12_Y7_N22
\auto_hub|virtual_ir_dr_scan_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(14),
	combout => \auto_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCFF_X12_Y7_N23
\auto_hub|shadow_jsm|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X12_Y7_N0
\auto_hub|shadow_jsm|state~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(1),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|shadow_jsm|state\(15),
	combout => \auto_hub|shadow_jsm|state~2_combout\);

-- Location: LCFF_X12_Y7_N1
\auto_hub|shadow_jsm|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X12_Y7_N30
\auto_hub|node_ena_proc~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena_proc~1_combout\);

-- Location: LCFF_X12_Y7_N31
\auto_hub|shadow_jsm|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X12_Y7_N14
\auto_hub|shadow_jsm|state~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(0),
	datad => \auto_hub|shadow_jsm|state\(9),
	combout => \auto_hub|shadow_jsm|state~0_combout\);

-- Location: LCFF_X12_Y7_N15
\auto_hub|shadow_jsm|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(0));

-- Location: CLKCTRL_G3
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

-- Location: LCFF_X10_Y8_N11
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

-- Location: LCCOMB_X10_Y8_N28
\auto_hub|jtag_ir_reg[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_ir_reg[8]~feeder_combout\);

-- Location: LCFF_X10_Y8_N29
\auto_hub|jtag_ir_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[8]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X10_Y8_N6
\auto_hub|jtag_ir_reg[7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: LCFF_X10_Y8_N7
\auto_hub|jtag_ir_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[7]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X10_Y8_N24
\auto_hub|jtag_ir_reg[6]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: LCFF_X10_Y8_N25
\auto_hub|jtag_ir_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[6]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(6));

-- Location: LCFF_X10_Y8_N23
\auto_hub|jtag_ir_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(6),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X10_Y8_N8
\auto_hub|jtag_ir_reg[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: LCFF_X10_Y8_N9
\auto_hub|jtag_ir_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[4]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(4));

-- Location: LCFF_X10_Y8_N19
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

-- Location: LCCOMB_X10_Y8_N12
\auto_hub|jtag_ir_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_ir_reg[2]~feeder_combout\);

-- Location: LCFF_X10_Y8_N13
\auto_hub|jtag_ir_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[2]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X10_Y8_N16
\auto_hub|jtag_ir_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: LCFF_X10_Y8_N17
\auto_hub|jtag_ir_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_ir_reg[1]~feeder_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(1));

-- Location: LCFF_X10_Y8_N27
\auto_hub|jtag_ir_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_ir_reg\(1),
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X10_Y8_N10
\auto_hub|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(6),
	datab => \auto_hub|jtag_ir_reg\(8),
	datac => \auto_hub|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_ir_reg\(7),
	combout => \auto_hub|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y7_N20
\auto_hub|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal0~1_combout\,
	datab => \auto_hub|jtag_ir_reg\(0),
	datac => \auto_hub|jtag_ir_reg\(1),
	datad => \auto_hub|Equal0~0_combout\,
	combout => \auto_hub|Equal1~0_combout\);

-- Location: LCFF_X12_Y7_N21
\auto_hub|virtual_ir_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|Equal1~0_combout\,
	aclr => \auto_hub|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|virtual_ir_scan_reg~regout\);

-- Location: LCCOMB_X14_Y8_N0
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

-- Location: LCCOMB_X14_Y9_N10
\auto_hub|irsr_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|irsr_reg\(5),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X9_Y7_N28
\auto_hub|shadow_jsm|state~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datab => \auto_hub|shadow_jsm|state\(0),
	datac => \auto_hub|shadow_jsm|state\(1),
	datad => \auto_hub|shadow_jsm|state\(15),
	combout => \auto_hub|shadow_jsm|state~1_combout\);

-- Location: LCFF_X9_Y7_N29
\auto_hub|shadow_jsm|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X14_Y8_N30
\auto_hub|irsr_reg[3]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[3]~7_combout\,
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X14_Y8_N8
\auto_hub|irsr_reg[3]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[3]~6_combout\,
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|irsr_reg[3]~8_combout\,
	combout => \auto_hub|irsr_reg[3]~9_combout\);

-- Location: LCFF_X14_Y8_N9
\auto_hub|irsr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg[3]~9_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(3));

-- Location: LCCOMB_X14_Y8_N18
\auto_hub|irsr_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irsr_reg\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X14_Y8_N20
\auto_hub|Equal6~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|Equal6~0_combout\);

-- Location: LCCOMB_X14_Y8_N4
\auto_hub|hub_mode_reg[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|reset_ena_reg_proc~0_combout\,
	datab => \auto_hub|Equal6~0_combout\,
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCFF_X14_Y8_N5
\auto_hub|hub_mode_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[0]~6_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X14_Y8_N22
\auto_hub|irsr_reg[2]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X14_Y8_N16
\auto_hub|irsr_reg[0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irsr_reg[2]~1_combout\,
	combout => \auto_hub|irsr_reg[0]~2_combout\);

-- Location: LCFF_X14_Y8_N19
\auto_hub|irsr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~3_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(2));

-- Location: LCCOMB_X14_Y9_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena[1]~reg0_regout\,
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\);

-- Location: LCCOMB_X15_Y8_N18
\auto_hub|shadow_irf_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][2]~regout\,
	combout => \auto_hub|shadow_irf_reg~4_combout\);

-- Location: LCCOMB_X14_Y9_N28
\auto_hub|shadow_irf_reg[1][0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(7),
	datab => \auto_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|shadow_irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X14_Y9_N22
\auto_hub|shadow_irf_reg[1][0]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|shadow_irf_reg[1][0]~1_combout\,
	combout => \auto_hub|shadow_irf_reg[1][0]~2_combout\);

-- Location: LCFF_X15_Y8_N19
\auto_hub|shadow_irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~4_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][2]~regout\);

-- Location: LCCOMB_X15_Y8_N26
\auto_hub|irf_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datad => \auto_hub|shadow_irf_reg[1][2]~regout\,
	combout => \auto_hub|irf_reg~5_combout\);

-- Location: LCCOMB_X14_Y8_N28
\auto_hub|irf_reg[1][0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X15_Y8_N30
\auto_hub|irf_reg[1][0]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~2_combout\,
	datab => \auto_hub|irf_reg[1][0]~1_combout\,
	datac => \auto_hub|irf_proc~0_combout\,
	datad => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg[1][0]~3_combout\);

-- Location: LCFF_X15_Y8_N27
\auto_hub|irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~5_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][2]~regout\);

-- Location: LCCOMB_X15_Y11_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][1]~regout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	datad => \auto_hub|irf_reg[1][2]~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\);

-- Location: LCCOMB_X15_Y8_N12
\auto_hub|shadow_irf_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|shadow_irf_reg~0_combout\);

-- Location: LCFF_X15_Y8_N13
\auto_hub|shadow_irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][0]~regout\);

-- Location: LCCOMB_X15_Y8_N6
\auto_hub|irf_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|shadow_irf_reg[1][0]~regout\,
	combout => \auto_hub|irf_reg~0_combout\);

-- Location: LCFF_X15_Y8_N7
\auto_hub|irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][0]~regout\);

-- Location: LCCOMB_X15_Y8_N4
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|irf_reg[1][4]~regout\,
	datad => \auto_hub|irf_reg[1][0]~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\);

-- Location: LCFF_X15_Y11_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg[0]~0_combout\,
	aclr => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X15_Y11_N28
\auto_hub|irsr_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|ir_loaded_address_reg\(0),
	combout => \auto_hub|irsr_reg~4_combout\);

-- Location: LCFF_X15_Y11_N29
\auto_hub|irsr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~4_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(1));

-- Location: LCCOMB_X14_Y8_N24
\auto_hub|hub_mode_reg[1]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X14_Y8_N2
\auto_hub|hub_mode_reg[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X14_Y9_N16
\auto_hub|hub_mode_reg[1]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|hub_mode_reg[1]~3_combout\);

-- Location: LCFF_X14_Y9_N17
\auto_hub|hub_mode_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[1]~3_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X14_Y9_N8
\auto_hub|hub_mode_reg[2]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X9_Y7_N22
\auto_hub|reset_ena_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(7),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \auto_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCFF_X9_Y7_N23
\auto_hub|reset_ena_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|reset_ena_reg~regout\);

-- Location: LCCOMB_X14_Y9_N26
\auto_hub|hub_mode_reg[2]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|hub_mode_reg[2]~4_combout\,
	datac => \auto_hub|hub_mode_reg\(2),
	datad => \auto_hub|reset_ena_reg~regout\,
	combout => \auto_hub|hub_mode_reg[2]~5_combout\);

-- Location: LCFF_X14_Y9_N27
\auto_hub|hub_mode_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|hub_mode_reg[2]~5_combout\,
	aclr => \auto_hub|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X9_Y7_N30
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

-- Location: LCFF_X9_Y7_N31
\auto_hub|clr_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|clr_reg~regout\);

-- Location: CLKCTRL_G0
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

-- Location: LCFF_X14_Y9_N11
\auto_hub|irsr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~5_combout\,
	sdata => \~GND~combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|shadow_jsm|state\(3),
	ena => \auto_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(5));

-- Location: LCCOMB_X14_Y8_N26
\auto_hub|irsr_reg~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \~GND~combout\,
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irsr_reg~10_combout\);

-- Location: LCFF_X14_Y8_N27
\auto_hub|irsr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~10_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(4));

-- Location: LCCOMB_X15_Y8_N22
\auto_hub|shadow_irf_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irsr_reg\(4),
	datac => \auto_hub|irf_reg[1][4]~regout\,
	combout => \auto_hub|shadow_irf_reg~6_combout\);

-- Location: LCFF_X15_Y8_N23
\auto_hub|shadow_irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_irf_reg~6_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_irf_reg[1][4]~regout\);

-- Location: LCCOMB_X15_Y8_N14
\auto_hub|irf_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irsr_reg\(4),
	datad => \auto_hub|shadow_irf_reg[1][4]~regout\,
	combout => \auto_hub|irf_reg~7_combout\);

-- Location: LCFF_X15_Y8_N15
\auto_hub|irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~7_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][4]~regout\);

-- Location: LCCOMB_X15_Y10_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][4]~regout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datad => \auto_hub|irf_reg[1][0]~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\);

-- Location: LCFF_X15_Y10_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\);

-- Location: LCCOMB_X15_Y11_N26
\auto_hub|irsr_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|is_in_use_reg~regout\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|irsr_reg~0_combout\);

-- Location: LCFF_X15_Y11_N27
\auto_hub|irsr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irsr_reg~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irsr_reg\(0));

-- Location: LCCOMB_X15_Y8_N8
\auto_hub|irf_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[1][1]~regout\,
	datac => \auto_hub|irsr_reg\(1),
	datad => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg~4_combout\);

-- Location: LCFF_X15_Y8_N9
\auto_hub|irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|irf_reg~4_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|irf_reg[1][1]~regout\);

-- Location: LCCOMB_X14_Y9_N2
\auto_hub|node_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|node_ena~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\auto_hub|node_ena~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|node_ena~0_combout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena~1_combout\);

-- Location: LCCOMB_X14_Y9_N20
\auto_hub|node_ena~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena~2_combout\,
	datab => \auto_hub|node_ena~1_combout\,
	datac => \auto_hub|node_ena[1]~reg0_regout\,
	datad => \auto_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|node_ena~3_combout\);

-- Location: LCFF_X14_Y9_N21
\auto_hub|node_ena[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|node_ena~3_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|node_ena[1]~reg0_regout\);

-- Location: LCCOMB_X9_Y7_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|node_ena[1]~reg0_regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\);

-- Location: LCFF_X9_Y7_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~0_combout\,
	aclr => \auto_hub|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\);

-- Location: LCCOMB_X15_Y8_N24
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	datab => \auto_hub|irf_reg[1][1]~regout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|bypass_reg_out~regout\,
	datad => \auto_hub|irf_reg[1][2]~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\);

-- Location: LCCOMB_X15_Y12_N6
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\);

-- Location: LCCOMB_X9_Y7_N26
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X9_Y12_N22
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\);

-- Location: LCFF_X15_Y12_N7
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~10_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCCOMB_X15_Y12_N14
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\);

-- Location: LCCOMB_X15_Y12_N10
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(8),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~1_combout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\);

-- Location: LCFF_X15_Y12_N11
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~11_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X15_Y12_N26
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X15_Y12_N12
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\,
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\);

-- Location: LCFF_X15_Y12_N13
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~9_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X15_Y12_N28
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\);

-- Location: LCCOMB_X15_Y12_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~6_combout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\);

-- Location: LCFF_X15_Y12_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter~8_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X15_Y12_N2
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X15_Y12_N4
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X15_Y12_N24
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCCOMB_X9_Y12_N2
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\);

-- Location: LCFF_X15_Y12_N25
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X15_Y12_N22
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCFF_X15_Y12_N23
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X15_Y12_N16
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCCOMB_X15_Y12_N18
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCFF_X15_Y12_N19
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X15_Y12_N20
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X15_Y12_N8
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCFF_X15_Y12_N9
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X15_Y8_N2
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][0]~regout\,
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~0_combout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\);

-- Location: LCCOMB_X14_Y9_N6
\auto_hub|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(5),
	datab => \auto_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|irsr_reg\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|tdo~1_combout\,
	combout => \auto_hub|tdo~3_combout\);

-- Location: LCCOMB_X13_Y10_N24
\auto_hub|tdo~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~2_combout\,
	datab => \auto_hub|tdo~4_combout\,
	datac => \auto_hub|tdo~regout\,
	datad => \auto_hub|tdo~3_combout\,
	combout => \auto_hub|tdo~5_combout\);

-- Location: LCFF_X13_Y10_N25
\auto_hub|tdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|tdo~5_combout\,
	aclr => \auto_hub|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|tdo~regout\);

-- Location: LCCOMB_X13_Y10_N6
\auto_hub|tdo~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|tdo~regout\,
	combout => \auto_hub|tdo~_wirecell_combout\);

-- Location: LCCOMB_X12_Y7_N2
\auto_hub|shadow_jsm|state~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|shadow_jsm|state~3_combout\);

-- Location: LCFF_X12_Y7_N3
\auto_hub|shadow_jsm|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X9_Y7_N6
\auto_hub|shadow_jsm|state~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(7),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_jsm|state~4_combout\);

-- Location: LCFF_X9_Y7_N7
\auto_hub|shadow_jsm|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X9_Y12_N16
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|node_ena[1]~reg0_regout\,
	datad => \auto_hub|virtual_ir_scan_reg~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\);

-- Location: LCCOMB_X9_Y12_N26
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|shadow_jsm|state\(5),
	datac => \auto_hub|node_ena[1]~reg0_regout\,
	datad => \auto_hub|irf_reg[1][2]~regout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\);

-- Location: LCFF_X10_Y4_N5
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(1),
	sload => VCC,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1));

-- Location: LCCOMB_X9_Y12_N8
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(2),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~5_combout\);

-- Location: LCCOMB_X9_Y12_N4
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|irf_reg[1][1]~regout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_1~0_combout\,
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\);

-- Location: LCFF_X9_Y12_N9
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~5_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(1));

-- Location: LCCOMB_X9_Y12_N30
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(1),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\);

-- Location: LCFF_X9_Y12_N31
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~0_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0));

-- Location: LCFF_X10_Y4_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(0),
	sload => VCC,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0));

-- Location: LCCOMB_X10_Y4_N28
\part6_inst|M3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M3|Mux1~0_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0)))) # (!\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6),
	datab => \Button~combout\(1),
	datac => \Button~combout\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \part6_inst|M3|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y12_N20
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~3_combout\);

-- Location: LCFF_X9_Y12_N21
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~3_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(7));

-- Location: LCCOMB_X9_Y12_N10
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[7]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(7),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[7]~1_combout\);

-- Location: LCFF_X9_Y12_N11
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[7]~1_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7));

-- Location: LCCOMB_X10_Y4_N24
\part6_inst|M3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M3|Mux0~0_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & (\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1))) # (!\Button~combout\(0) & ((!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7),
	datad => \Button~combout\(1),
	combout => \part6_inst|M3|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y12_N12
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[6]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(6),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[6]~2_combout\);

-- Location: LCFF_X9_Y12_N13
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[6]~2_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6));

-- Location: LCCOMB_X9_Y12_N28
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(7),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~7_combout\);

-- Location: LCFF_X9_Y12_N29
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~7_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(6));

-- Location: LCCOMB_X9_Y12_N0
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[5]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(5),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[5]~0_combout\);

-- Location: LCFF_X9_Y12_N1
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[5]~0_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5));

-- Location: LCCOMB_X9_Y12_N24
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(6),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\);

-- Location: LCFF_X9_Y12_N25
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~2_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(5));

-- Location: LCFF_X10_Y4_N23
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(4),
	sload => VCC,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4));

-- Location: LCCOMB_X9_Y12_N18
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(5),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~6_combout\);

-- Location: LCFF_X9_Y12_N19
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~6_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(4));

-- Location: LCCOMB_X9_Y12_N14
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~4_combout\);

-- Location: LCFF_X9_Y12_N15
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~4_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(3));

-- Location: LCFF_X10_Y4_N3
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(3),
	sload => VCC,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3));

-- Location: LCCOMB_X10_Y4_N10
\part6_inst|M3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M3|Mux0~1_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5))) # (!\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5),
	datab => \Button~combout\(1),
	datac => \Button~combout\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3),
	combout => \part6_inst|M3|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y4_N0
\part6_inst|H3|Display[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H3|Display\(6) = (\part6_inst|M3|Mux1~1_combout\ & (((\part6_inst|M3|Mux0~0_combout\) # (\part6_inst|M3|Mux0~1_combout\)))) # (!\part6_inst|M3|Mux1~1_combout\ & (\part6_inst|M3|Mux1~0_combout\ & ((\part6_inst|M3|Mux0~0_combout\) # 
-- (\part6_inst|M3|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M3|Mux1~1_combout\,
	datab => \part6_inst|M3|Mux1~0_combout\,
	datac => \part6_inst|M3|Mux0~0_combout\,
	datad => \part6_inst|M3|Mux0~1_combout\,
	combout => \part6_inst|H3|Display\(6));

-- Location: LCCOMB_X10_Y4_N8
\part6_inst|M2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M2|Mux0~0_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7))) # (!\Button~combout\(0) & ((!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5),
	combout => \part6_inst|M2|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y12_N6
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|sdr~0_combout\,
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(3),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~8_combout\);

-- Location: LCFF_X9_Y12_N7
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg~8_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(2));

-- Location: LCCOMB_X7_Y12_N8
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[2]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_shift_reg\(2),
	combout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[2]~3_combout\);

-- Location: LCFF_X7_Y12_N9
\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg[2]~3_combout\,
	ena => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2));

-- Location: LCCOMB_X10_Y4_N0
\part6_inst|M2|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M2|Mux1~1_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2))) # (!\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	datad => \Button~combout\(1),
	combout => \part6_inst|M2|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y4_N22
\part6_inst|M2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M2|Mux1~0_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & ((!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6)))) # (!\Button~combout\(0) & (\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6),
	combout => \part6_inst|M2|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y4_N16
\part6_inst|H2|Display[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H2|Display\(6) = (\part6_inst|M2|Mux0~1_combout\ & (((\part6_inst|M2|Mux1~1_combout\) # (\part6_inst|M2|Mux1~0_combout\)))) # (!\part6_inst|M2|Mux0~1_combout\ & (\part6_inst|M2|Mux0~0_combout\ & ((\part6_inst|M2|Mux1~1_combout\) # 
-- (\part6_inst|M2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M2|Mux0~1_combout\,
	datab => \part6_inst|M2|Mux0~0_combout\,
	datac => \part6_inst|M2|Mux1~1_combout\,
	datad => \part6_inst|M2|Mux1~0_combout\,
	combout => \part6_inst|H2|Display\(6));

-- Location: LCCOMB_X10_Y4_N16
\part6_inst|M0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M0|Mux0~0_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7))) # (!\Button~combout\(0) & ((!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5),
	combout => \part6_inst|M0|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y4_N20
\part6_inst|M0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M0|Mux1~0_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6))) # (!\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6),
	datab => \Button~combout\(1),
	datac => \Button~combout\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4),
	combout => \part6_inst|M0|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y4_N6
\part6_inst|M0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M0|Mux1~1_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2))) # (!\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \part6_inst|M0|Mux1~1_combout\);

-- Location: LCCOMB_X8_Y4_N28
\part6_inst|H0|Display[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H0|Display\(6) = (\part6_inst|M0|Mux0~1_combout\ & (((\part6_inst|M0|Mux1~0_combout\) # (\part6_inst|M0|Mux1~1_combout\)))) # (!\part6_inst|M0|Mux0~1_combout\ & (\part6_inst|M0|Mux0~0_combout\ & ((\part6_inst|M0|Mux1~0_combout\) # 
-- (\part6_inst|M0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M0|Mux0~1_combout\,
	datab => \part6_inst|M0|Mux0~0_combout\,
	datac => \part6_inst|M0|Mux1~0_combout\,
	datad => \part6_inst|M0|Mux1~1_combout\,
	combout => \part6_inst|H0|Display\(6));

-- Location: LCCOMB_X10_Y4_N30
\part6_inst|M1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M1|Mux1~1_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4)))) # (!\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(2),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(4),
	combout => \part6_inst|M1|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y4_N18
\part6_inst|M1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M1|Mux0~1_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5))) # (!\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(5),
	datab => \Button~combout\(1),
	datac => \Button~combout\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3),
	combout => \part6_inst|M1|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y4_N4
\part6_inst|M1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M1|Mux0~0_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1)))) # (!\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(7),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1),
	datad => \Button~combout\(1),
	combout => \part6_inst|M1|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y4_N2
\part6_inst|H1|Display[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H1|Display\(6) = (\part6_inst|M1|Mux1~0_combout\ & (((\part6_inst|M1|Mux0~1_combout\) # (\part6_inst|M1|Mux0~0_combout\)))) # (!\part6_inst|M1|Mux1~0_combout\ & (\part6_inst|M1|Mux1~1_combout\ & ((\part6_inst|M1|Mux0~1_combout\) # 
-- (\part6_inst|M1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M1|Mux1~0_combout\,
	datab => \part6_inst|M1|Mux1~1_combout\,
	datac => \part6_inst|M1|Mux0~1_combout\,
	datad => \part6_inst|M1|Mux0~0_combout\,
	combout => \part6_inst|H1|Display\(6));

-- Location: LCCOMB_X8_Y4_N30
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|S0|q\(10) & (((\inst1|S0|q\(11)) # (\part6_inst|H1|Display\(6))))) # (!\inst1|S0|q\(10) & (\part6_inst|H0|Display\(6) & (!\inst1|S0|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(10),
	datab => \part6_inst|H0|Display\(6),
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|H1|Display\(6),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\inst1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\ & ((\part6_inst|H3|Display\(6)) # ((!\inst1|S0|q\(11))))) # (!\inst1|Mux0~0_combout\ & (((\part6_inst|H2|Display\(6) & \inst1|S0|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|H3|Display\(6),
	datab => \part6_inst|H2|Display\(6),
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|S0|q\(11),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y4_N12
\part6_inst|M1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M1|Mux1~0_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0)))) # (!\Button~combout\(0) & (!\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(6),
	datab => \Button~combout\(1),
	datac => \Button~combout\(0),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(0),
	combout => \part6_inst|M1|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\inst1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|S0|q\(10) & (((!\inst1|S0|q\(11) & \part6_inst|M1|Mux1~0_combout\)))) # (!\inst1|S0|q\(10) & (\part6_inst|M2|Mux1~0_combout\ & (\inst1|S0|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(10),
	datab => \part6_inst|M2|Mux1~0_combout\,
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|M1|Mux1~0_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X8_Y4_N18
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|S0|q\(11) & (((\part6_inst|M2|Mux1~1_combout\)))) # (!\inst1|S0|q\(11) & ((\part6_inst|M0|Mux1~0_combout\) # ((\part6_inst|M0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M0|Mux1~0_combout\,
	datab => \part6_inst|M2|Mux1~1_combout\,
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|M0|Mux1~1_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y4_N20
\inst1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|S0|q\(11) & ((\part6_inst|M3|Mux1~1_combout\) # ((\part6_inst|M3|Mux1~0_combout\)))) # (!\inst1|S0|q\(11) & (((\part6_inst|M1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M3|Mux1~1_combout\,
	datab => \part6_inst|M3|Mux1~0_combout\,
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|M1|Mux1~1_combout\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X9_Y4_N2
\inst1|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\inst1|Mux1~2_combout\) # ((\inst1|S0|q\(10) & ((\inst1|Mux1~1_combout\))) # (!\inst1|S0|q\(10) & (\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~2_combout\,
	datab => \inst1|Mux1~0_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|S0|q\(10),
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X10_Y4_N26
\part6_inst|M0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M0|Mux0~1_combout\ = (!\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3)))) # (!\Button~combout\(0) & (\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \Button~combout\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1),
	datad => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3),
	combout => \part6_inst|M0|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y4_N24
\inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|S0|q\(10) & (\part6_inst|M1|Mux0~1_combout\)) # (!\inst1|S0|q\(10) & (((\part6_inst|M0|Mux0~0_combout\) # (\part6_inst|M0|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M1|Mux0~1_combout\,
	datab => \part6_inst|M0|Mux0~0_combout\,
	datac => \part6_inst|M0|Mux0~1_combout\,
	datad => \inst1|S0|q\(10),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\inst1|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst1|S0|q\(10) & (((!\inst1|S0|q\(11) & \part6_inst|M1|Mux0~0_combout\)))) # (!\inst1|S0|q\(10) & (\part6_inst|M2|Mux0~0_combout\ & (\inst1|S0|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(10),
	datab => \part6_inst|M2|Mux0~0_combout\,
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|M1|Mux0~0_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X10_Y4_N2
\part6_inst|M2|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|M2|Mux0~1_combout\ = (\Button~combout\(1) & ((\Button~combout\(0) & ((\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3)))) # (!\Button~combout\(0) & (\inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(0),
	datab => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(1),
	datac => \inst4|LPM_CONSTANT_component|ag|mgl_prim1|constant_update_reg\(3),
	datad => \Button~combout\(1),
	combout => \part6_inst|M2|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y4_N10
\inst1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|S0|q\(10) & ((\part6_inst|M3|Mux0~0_combout\) # ((\part6_inst|M3|Mux0~1_combout\)))) # (!\inst1|S0|q\(10) & (((\part6_inst|M2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M3|Mux0~0_combout\,
	datab => \inst1|S0|q\(10),
	datac => \part6_inst|M3|Mux0~1_combout\,
	datad => \part6_inst|M2|Mux0~1_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X8_Y4_N6
\inst1|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|Mux3~2_combout\) # ((\inst1|S0|q\(11) & ((\inst1|Mux3~1_combout\))) # (!\inst1|S0|q\(11) & (\inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|S0|q\(11),
	datad => \inst1|Mux3~1_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X8_Y4_N8
\part6_inst|H2|Display[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H2|Display[2]~0_combout\ = (\part6_inst|M2|Mux0~1_combout\ & (((!\part6_inst|M2|Mux1~1_combout\ & !\part6_inst|M2|Mux1~0_combout\)))) # (!\part6_inst|M2|Mux0~1_combout\ & (\part6_inst|M2|Mux0~0_combout\ $ (((\part6_inst|M2|Mux1~1_combout\) # 
-- (\part6_inst|M2|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M2|Mux0~1_combout\,
	datab => \part6_inst|M2|Mux0~0_combout\,
	datac => \part6_inst|M2|Mux1~1_combout\,
	datad => \part6_inst|M2|Mux1~0_combout\,
	combout => \part6_inst|H2|Display[2]~0_combout\);

-- Location: LCCOMB_X8_Y4_N26
\part6_inst|H0|Display[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H0|Display[2]~0_combout\ = (\part6_inst|M0|Mux0~1_combout\ & (((!\part6_inst|M0|Mux1~0_combout\ & !\part6_inst|M0|Mux1~1_combout\)))) # (!\part6_inst|M0|Mux0~1_combout\ & (\part6_inst|M0|Mux0~0_combout\ $ (((\part6_inst|M0|Mux1~0_combout\) # 
-- (\part6_inst|M0|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M0|Mux0~1_combout\,
	datab => \part6_inst|M0|Mux0~0_combout\,
	datac => \part6_inst|M0|Mux1~0_combout\,
	datad => \part6_inst|M0|Mux1~1_combout\,
	combout => \part6_inst|H0|Display[2]~0_combout\);

-- Location: LCCOMB_X8_Y4_N12
\inst1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|S0|q\(10) & (((\inst1|S0|q\(11))))) # (!\inst1|S0|q\(10) & ((\inst1|S0|q\(11) & (!\part6_inst|H2|Display[2]~0_combout\)) # (!\inst1|S0|q\(11) & ((!\part6_inst|H0|Display[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|S0|q\(10),
	datab => \part6_inst|H2|Display[2]~0_combout\,
	datac => \inst1|S0|q\(11),
	datad => \part6_inst|H0|Display[2]~0_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\part6_inst|H1|Display[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H1|Display[2]~0_combout\ = (\part6_inst|M1|Mux1~1_combout\ & (!\part6_inst|M1|Mux0~1_combout\ & ((!\part6_inst|M1|Mux0~0_combout\)))) # (!\part6_inst|M1|Mux1~1_combout\ & (\part6_inst|M1|Mux1~0_combout\ $ (((\part6_inst|M1|Mux0~1_combout\) # 
-- (\part6_inst|M1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M1|Mux1~1_combout\,
	datab => \part6_inst|M1|Mux0~1_combout\,
	datac => \part6_inst|M1|Mux1~0_combout\,
	datad => \part6_inst|M1|Mux0~0_combout\,
	combout => \part6_inst|H1|Display[2]~0_combout\);

-- Location: LCCOMB_X8_Y4_N22
\part6_inst|H3|Display[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \part6_inst|H3|Display[2]~0_combout\ = (\part6_inst|M3|Mux1~1_combout\ & (((!\part6_inst|M3|Mux0~0_combout\ & !\part6_inst|M3|Mux0~1_combout\)))) # (!\part6_inst|M3|Mux1~1_combout\ & (\part6_inst|M3|Mux1~0_combout\ $ (((\part6_inst|M3|Mux0~0_combout\) # 
-- (\part6_inst|M3|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \part6_inst|M3|Mux1~1_combout\,
	datab => \part6_inst|M3|Mux1~0_combout\,
	datac => \part6_inst|M3|Mux0~0_combout\,
	datad => \part6_inst|M3|Mux0~1_combout\,
	combout => \part6_inst|H3|Display[2]~0_combout\);

-- Location: LCCOMB_X9_Y4_N30
\inst1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|Mux4~0_combout\ & (((!\inst1|S0|q\(10)) # (!\part6_inst|H3|Display[2]~0_combout\)))) # (!\inst1|Mux4~0_combout\ & (!\part6_inst|H1|Display[2]~0_combout\ & ((\inst1|S0|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~0_combout\,
	datab => \part6_inst|H1|Display[2]~0_combout\,
	datac => \part6_inst|H3|Display[2]~0_combout\,
	datad => \inst1|S0|q\(10),
	combout => \inst1|Mux4~1_combout\);

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

-- Location: LCCOMB_X9_Y7_N4
\auto_hub|clr_reg~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|clr_reg~regout\,
	combout => \auto_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X12_Y7_N6
\auto_hub|shadow_jsm|state[0]~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|shadow_jsm|state\(0),
	combout => \auto_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DISP[3]~I\ : cycloneii_io
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
	datain => \inst1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(3));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DISP[2]~I\ : cycloneii_io
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
	datain => \inst1|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DISP[1]~I\ : cycloneii_io
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
	datain => \inst1|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(1));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DISP[0]~I\ : cycloneii_io
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
	datain => \inst1|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[6]~I\ : cycloneii_io
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
	datain => \inst1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[5]~I\ : cycloneii_io
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
	datain => \inst1|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(5));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[4]~I\ : cycloneii_io
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
	datain => \inst1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(4));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[3]~I\ : cycloneii_io
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
	datain => \inst1|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(3));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[2]~I\ : cycloneii_io
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
	datain => \inst1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(2));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[1]~I\ : cycloneii_io
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
	datain => \inst1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[0]~I\ : cycloneii_io
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
	datain => \inst1|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(0));

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


