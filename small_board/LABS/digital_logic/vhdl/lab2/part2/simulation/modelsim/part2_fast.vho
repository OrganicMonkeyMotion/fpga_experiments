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

-- DATE "07/18/2015 13:21:29"

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

ENTITY 	part2 IS
    PORT (
	LED : OUT std_logic_vector(6 DOWNTO 0);
	DISP : OUT std_logic_vector(3 DOWNTO 0);
	BUTTONS : IN std_logic_vector(3 DOWNTO 0);
	clk_in : IN std_logic
	);
END part2;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[4]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[6]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DISP[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BUTTONS[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTONS[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTONS[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTONS[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BUTTONS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk_in : std_logic;
SIGNAL \clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DE1|S0|q[1]~11_combout\ : std_logic;
SIGNAL \DE1|S0|q[6]~21_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \DE1|S0|q[0]~33_combout\ : std_logic;
SIGNAL \DE1|S0|q[8]~25_combout\ : std_logic;
SIGNAL \DE1|S0|q[5]~19_combout\ : std_logic;
SIGNAL \DE1|S0|Equal0~2_combout\ : std_logic;
SIGNAL \DE1|S0|q[10]~29_combout\ : std_logic;
SIGNAL \DE1|S0|Equal0~0_combout\ : std_logic;
SIGNAL \DE1|S0|q[3]~15_combout\ : std_logic;
SIGNAL \DE1|S0|Equal0~1_combout\ : std_logic;
SIGNAL \DE1|S0|Equal0~3_combout\ : std_logic;
SIGNAL \DE1|S0|q[1]~12\ : std_logic;
SIGNAL \DE1|S0|q[2]~13_combout\ : std_logic;
SIGNAL \DE1|S0|q[2]~14\ : std_logic;
SIGNAL \DE1|S0|q[3]~16\ : std_logic;
SIGNAL \DE1|S0|q[4]~17_combout\ : std_logic;
SIGNAL \DE1|S0|q[4]~18\ : std_logic;
SIGNAL \DE1|S0|q[5]~20\ : std_logic;
SIGNAL \DE1|S0|q[6]~22\ : std_logic;
SIGNAL \DE1|S0|q[7]~23_combout\ : std_logic;
SIGNAL \DE1|S0|q[7]~24\ : std_logic;
SIGNAL \DE1|S0|q[8]~26\ : std_logic;
SIGNAL \DE1|S0|q[9]~27_combout\ : std_logic;
SIGNAL \DE1|S0|q[9]~28\ : std_logic;
SIGNAL \DE1|S0|q[10]~30\ : std_logic;
SIGNAL \DE1|S0|q[11]~31_combout\ : std_logic;
SIGNAL \DE1|Equal2~0_combout\ : std_logic;
SIGNAL \DE1|HEX[0]~5_combout\ : std_logic;
SIGNAL \DE1|HEX[0]~4_combout\ : std_logic;
SIGNAL \DE1|HEX[0]~6_combout\ : std_logic;
SIGNAL \DE1|HEX[1]~7_combout\ : std_logic;
SIGNAL \DE1|HEX[1]~8_combout\ : std_logic;
SIGNAL \DE1|HEX[2]~9_combout\ : std_logic;
SIGNAL \DE1|HEX[2]~19_combout\ : std_logic;
SIGNAL \DE1|HEX[3]~12_combout\ : std_logic;
SIGNAL \DE1|HEX[3]~11_combout\ : std_logic;
SIGNAL \DE1|HEX[3]~10_combout\ : std_logic;
SIGNAL \DE1|HEX[3]~13_combout\ : std_logic;
SIGNAL \DE1|HEX[4]~14_combout\ : std_logic;
SIGNAL \DE1|HEX[4]~15_combout\ : std_logic;
SIGNAL \DE1|HEX[5]~16_combout\ : std_logic;
SIGNAL \DE1|HEX[5]~17_combout\ : std_logic;
SIGNAL \DE1|HEX[6]~18_combout\ : std_logic;
SIGNAL \DE1|HEX[6]~20_combout\ : std_logic;
SIGNAL \DE1|Equal3~0_combout\ : std_logic;
SIGNAL \DE1|Equal2~1_combout\ : std_logic;
SIGNAL \DE1|DISPn[2]~0_combout\ : std_logic;
SIGNAL \DE1|DISPn[3]~1_combout\ : std_logic;
SIGNAL \BUTTONS~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DE1|S0|q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DE1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \DE1|ALT_INV_Equal2~1_combout\ : std_logic;

BEGIN

LED <= ww_LED;
DISP <= ww_DISP;
ww_BUTTONS <= BUTTONS;
ww_clk_in <= clk_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_in~combout\);
\DE1|ALT_INV_Equal3~0_combout\ <= NOT \DE1|Equal3~0_combout\;
\DE1|ALT_INV_Equal2~1_combout\ <= NOT \DE1|Equal2~1_combout\;

-- Location: LCFF_X21_Y6_N13
\DE1|S0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[6]~21_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(6));

-- Location: LCFF_X21_Y6_N3
\DE1|S0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[1]~11_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(1));

-- Location: LCCOMB_X21_Y6_N2
\DE1|S0|q[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[1]~11_combout\ = (\DE1|S0|q\(1) & (\DE1|S0|q\(0) $ (VCC))) # (!\DE1|S0|q\(1) & (\DE1|S0|q\(0) & VCC))
-- \DE1|S0|q[1]~12\ = CARRY((\DE1|S0|q\(1) & \DE1|S0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(1),
	datab => \DE1|S0|q\(0),
	datad => VCC,
	combout => \DE1|S0|q[1]~11_combout\,
	cout => \DE1|S0|q[1]~12\);

-- Location: LCCOMB_X21_Y6_N12
\DE1|S0|q[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[6]~21_combout\ = (\DE1|S0|q\(6) & (!\DE1|S0|q[5]~20\)) # (!\DE1|S0|q\(6) & ((\DE1|S0|q[5]~20\) # (GND)))
-- \DE1|S0|q[6]~22\ = CARRY((!\DE1|S0|q[5]~20\) # (!\DE1|S0|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(6),
	datad => VCC,
	cin => \DE1|S0|q[5]~20\,
	combout => \DE1|S0|q[6]~21_combout\,
	cout => \DE1|S0|q[6]~22\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cycloneii_io
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
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: CLKCTRL_G2
\clk_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y6_N0
\DE1|S0|q[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[0]~33_combout\ = !\DE1|S0|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE1|S0|q\(0),
	combout => \DE1|S0|q[0]~33_combout\);

-- Location: LCCOMB_X21_Y6_N16
\DE1|S0|q[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[8]~25_combout\ = (\DE1|S0|q\(8) & (!\DE1|S0|q[7]~24\)) # (!\DE1|S0|q\(8) & ((\DE1|S0|q[7]~24\) # (GND)))
-- \DE1|S0|q[8]~26\ = CARRY((!\DE1|S0|q[7]~24\) # (!\DE1|S0|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(8),
	datad => VCC,
	cin => \DE1|S0|q[7]~24\,
	combout => \DE1|S0|q[8]~25_combout\,
	cout => \DE1|S0|q[8]~26\);

-- Location: LCFF_X21_Y6_N17
\DE1|S0|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[8]~25_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(8));

-- Location: LCCOMB_X21_Y6_N10
\DE1|S0|q[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[5]~19_combout\ = (\DE1|S0|q\(5) & (\DE1|S0|q[4]~18\ $ (GND))) # (!\DE1|S0|q\(5) & (!\DE1|S0|q[4]~18\ & VCC))
-- \DE1|S0|q[5]~20\ = CARRY((\DE1|S0|q\(5) & !\DE1|S0|q[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(5),
	datad => VCC,
	cin => \DE1|S0|q[4]~18\,
	combout => \DE1|S0|q[5]~19_combout\,
	cout => \DE1|S0|q[5]~20\);

-- Location: LCFF_X21_Y6_N11
\DE1|S0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[5]~19_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(5));

-- Location: LCCOMB_X21_Y6_N28
\DE1|S0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|Equal0~2_combout\ = (\DE1|S0|q\(6) & (\DE1|S0|q\(7) & (\DE1|S0|q\(8) & \DE1|S0|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(6),
	datab => \DE1|S0|q\(7),
	datac => \DE1|S0|q\(8),
	datad => \DE1|S0|q\(5),
	combout => \DE1|S0|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y6_N20
\DE1|S0|q[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[10]~29_combout\ = (\DE1|S0|q\(10) & (!\DE1|S0|q[9]~28\)) # (!\DE1|S0|q\(10) & ((\DE1|S0|q[9]~28\) # (GND)))
-- \DE1|S0|q[10]~30\ = CARRY((!\DE1|S0|q[9]~28\) # (!\DE1|S0|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(10),
	datad => VCC,
	cin => \DE1|S0|q[9]~28\,
	combout => \DE1|S0|q[10]~29_combout\,
	cout => \DE1|S0|q[10]~30\);

-- Location: LCFF_X21_Y6_N21
\DE1|S0|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[10]~29_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(10));

-- Location: LCCOMB_X21_Y6_N24
\DE1|S0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|Equal0~0_combout\ = (\DE1|S0|q\(9) & (\DE1|S0|q\(0) & (\DE1|S0|q\(10) & \DE1|S0|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(0),
	datac => \DE1|S0|q\(10),
	datad => \DE1|S0|q\(11),
	combout => \DE1|S0|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y6_N6
\DE1|S0|q[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[3]~15_combout\ = (\DE1|S0|q\(3) & (\DE1|S0|q[2]~14\ $ (GND))) # (!\DE1|S0|q\(3) & (!\DE1|S0|q[2]~14\ & VCC))
-- \DE1|S0|q[3]~16\ = CARRY((\DE1|S0|q\(3) & !\DE1|S0|q[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(3),
	datad => VCC,
	cin => \DE1|S0|q[2]~14\,
	combout => \DE1|S0|q[3]~15_combout\,
	cout => \DE1|S0|q[3]~16\);

-- Location: LCFF_X21_Y6_N7
\DE1|S0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[3]~15_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(3));

-- Location: LCCOMB_X21_Y6_N26
\DE1|S0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|Equal0~1_combout\ = (\DE1|S0|q\(1) & (\DE1|S0|q\(4) & (\DE1|S0|q\(2) & \DE1|S0|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(1),
	datab => \DE1|S0|q\(4),
	datac => \DE1|S0|q\(2),
	datad => \DE1|S0|q\(3),
	combout => \DE1|S0|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y6_N30
\DE1|S0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|Equal0~3_combout\ = (\DE1|S0|Equal0~2_combout\ & (\DE1|S0|Equal0~0_combout\ & \DE1|S0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|Equal0~2_combout\,
	datac => \DE1|S0|Equal0~0_combout\,
	datad => \DE1|S0|Equal0~1_combout\,
	combout => \DE1|S0|Equal0~3_combout\);

-- Location: LCFF_X21_Y6_N1
\DE1|S0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[0]~33_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(0));

-- Location: LCCOMB_X21_Y6_N4
\DE1|S0|q[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[2]~13_combout\ = (\DE1|S0|q\(2) & (!\DE1|S0|q[1]~12\)) # (!\DE1|S0|q\(2) & ((\DE1|S0|q[1]~12\) # (GND)))
-- \DE1|S0|q[2]~14\ = CARRY((!\DE1|S0|q[1]~12\) # (!\DE1|S0|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|q\(2),
	datad => VCC,
	cin => \DE1|S0|q[1]~12\,
	combout => \DE1|S0|q[2]~13_combout\,
	cout => \DE1|S0|q[2]~14\);

-- Location: LCFF_X21_Y6_N5
\DE1|S0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[2]~13_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(2));

-- Location: LCCOMB_X21_Y6_N8
\DE1|S0|q[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[4]~17_combout\ = (\DE1|S0|q\(4) & (!\DE1|S0|q[3]~16\)) # (!\DE1|S0|q\(4) & ((\DE1|S0|q[3]~16\) # (GND)))
-- \DE1|S0|q[4]~18\ = CARRY((!\DE1|S0|q[3]~16\) # (!\DE1|S0|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|q\(4),
	datad => VCC,
	cin => \DE1|S0|q[3]~16\,
	combout => \DE1|S0|q[4]~17_combout\,
	cout => \DE1|S0|q[4]~18\);

-- Location: LCFF_X21_Y6_N9
\DE1|S0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[4]~17_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(4));

-- Location: LCCOMB_X21_Y6_N14
\DE1|S0|q[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[7]~23_combout\ = (\DE1|S0|q\(7) & (\DE1|S0|q[6]~22\ $ (GND))) # (!\DE1|S0|q\(7) & (!\DE1|S0|q[6]~22\ & VCC))
-- \DE1|S0|q[7]~24\ = CARRY((\DE1|S0|q\(7) & !\DE1|S0|q[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|q\(7),
	datad => VCC,
	cin => \DE1|S0|q[6]~22\,
	combout => \DE1|S0|q[7]~23_combout\,
	cout => \DE1|S0|q[7]~24\);

-- Location: LCFF_X21_Y6_N15
\DE1|S0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[7]~23_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(7));

-- Location: LCCOMB_X21_Y6_N18
\DE1|S0|q[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[9]~27_combout\ = (\DE1|S0|q\(9) & (\DE1|S0|q[8]~26\ $ (GND))) # (!\DE1|S0|q\(9) & (!\DE1|S0|q[8]~26\ & VCC))
-- \DE1|S0|q[9]~28\ = CARRY((\DE1|S0|q\(9) & !\DE1|S0|q[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|q\(9),
	datad => VCC,
	cin => \DE1|S0|q[8]~26\,
	combout => \DE1|S0|q[9]~27_combout\,
	cout => \DE1|S0|q[9]~28\);

-- Location: LCFF_X21_Y6_N19
\DE1|S0|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[9]~27_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(9));

-- Location: LCCOMB_X21_Y6_N22
\DE1|S0|q[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|S0|q[11]~31_combout\ = \DE1|S0|q\(11) $ (!\DE1|S0|q[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(11),
	cin => \DE1|S0|q[10]~30\,
	combout => \DE1|S0|q[11]~31_combout\);

-- Location: LCFF_X21_Y6_N23
\DE1|S0|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \DE1|S0|q[11]~31_combout\,
	aclr => \DE1|S0|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DE1|S0|q\(11));

-- Location: LCCOMB_X14_Y6_N10
\DE1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|Equal2~0_combout\ = (!\DE1|S0|q\(11) & !\DE1|S0|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE1|S0|q\(11),
	datac => \DE1|S0|q\(9),
	combout => \DE1|Equal2~0_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTONS[3]~I\ : cycloneii_io
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
	padio => ww_BUTTONS(3),
	combout => \BUTTONS~combout\(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTONS[0]~I\ : cycloneii_io
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
	padio => ww_BUTTONS(0),
	combout => \BUTTONS~combout\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTONS[1]~I\ : cycloneii_io
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
	padio => ww_BUTTONS(1),
	combout => \BUTTONS~combout\(1));

-- Location: LCCOMB_X14_Y6_N20
\DE1|HEX[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[0]~5_combout\ = (\BUTTONS~combout\(3) & (\BUTTONS~combout\(1) & (\BUTTONS~combout\(2) $ (\BUTTONS~combout\(0))))) # (!\BUTTONS~combout\(3) & (!\BUTTONS~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \BUTTONS~combout\(3),
	datac => \BUTTONS~combout\(0),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[0]~5_combout\);

-- Location: LCCOMB_X14_Y6_N0
\DE1|HEX[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[0]~4_combout\ = (\DE1|S0|q\(10) & (!\BUTTONS~combout\(3) & ((!\BUTTONS~combout\(1)) # (!\BUTTONS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \DE1|S0|q\(10),
	datac => \BUTTONS~combout\(3),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[0]~4_combout\);

-- Location: LCCOMB_X14_Y6_N22
\DE1|HEX[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[0]~6_combout\ = ((\DE1|HEX[0]~4_combout\) # ((!\DE1|S0|q\(10) & \DE1|HEX[0]~5_combout\))) # (!\DE1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|Equal2~0_combout\,
	datab => \DE1|S0|q\(10),
	datac => \DE1|HEX[0]~5_combout\,
	datad => \DE1|HEX[0]~4_combout\,
	combout => \DE1|HEX[0]~6_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTONS[2]~I\ : cycloneii_io
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
	padio => ww_BUTTONS(2),
	combout => \BUTTONS~combout\(2));

-- Location: LCCOMB_X14_Y6_N16
\DE1|HEX[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[1]~7_combout\ = (\BUTTONS~combout\(0) $ (\BUTTONS~combout\(1))) # (!\BUTTONS~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(0),
	datab => \BUTTONS~combout\(3),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[1]~7_combout\);

-- Location: LCCOMB_X14_Y6_N18
\DE1|HEX[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[1]~8_combout\ = ((!\BUTTONS~combout\(2) & (!\DE1|S0|q\(10) & \DE1|HEX[1]~7_combout\))) # (!\DE1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \DE1|S0|q\(10),
	datac => \DE1|HEX[1]~7_combout\,
	datad => \DE1|Equal2~0_combout\,
	combout => \DE1|HEX[1]~8_combout\);

-- Location: LCCOMB_X14_Y6_N28
\DE1|HEX[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[2]~9_combout\ = (\BUTTONS~combout\(2) & (((\BUTTONS~combout\(1)) # (!\BUTTONS~combout\(0))) # (!\BUTTONS~combout\(3)))) # (!\BUTTONS~combout\(2) & (\BUTTONS~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \BUTTONS~combout\(3),
	datac => \BUTTONS~combout\(0),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[2]~9_combout\);

-- Location: LCCOMB_X14_Y6_N6
\DE1|HEX[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[2]~19_combout\ = (\DE1|S0|q\(11)) # ((\DE1|S0|q\(9)) # ((!\DE1|S0|q\(10) & !\DE1|HEX[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(10),
	datab => \DE1|S0|q\(11),
	datac => \DE1|S0|q\(9),
	datad => \DE1|HEX[2]~9_combout\,
	combout => \DE1|HEX[2]~19_combout\);

-- Location: LCCOMB_X14_Y6_N2
\DE1|HEX[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[3]~12_combout\ = (\DE1|S0|q\(11)) # ((\DE1|S0|q\(9)) # ((!\BUTTONS~combout\(2) & !\BUTTONS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \DE1|S0|q\(11),
	datac => \BUTTONS~combout\(3),
	datad => \DE1|S0|q\(9),
	combout => \DE1|HEX[3]~12_combout\);

-- Location: LCCOMB_X14_Y6_N24
\DE1|HEX[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[3]~11_combout\ = (!\BUTTONS~combout\(3) & (!\BUTTONS~combout\(1) & ((\DE1|S0|q\(10)) # (!\BUTTONS~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(0),
	datab => \DE1|S0|q\(10),
	datac => \BUTTONS~combout\(3),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[3]~11_combout\);

-- Location: LCCOMB_X14_Y6_N14
\DE1|HEX[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[3]~10_combout\ = (!\DE1|S0|q\(10) & ((\BUTTONS~combout\(2) & (!\BUTTONS~combout\(0) & \BUTTONS~combout\(1))) # (!\BUTTONS~combout\(2) & (\BUTTONS~combout\(0) $ (!\BUTTONS~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \DE1|S0|q\(10),
	datac => \BUTTONS~combout\(0),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[3]~10_combout\);

-- Location: LCCOMB_X15_Y6_N0
\DE1|HEX[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[3]~13_combout\ = (\DE1|HEX[3]~12_combout\) # ((\DE1|HEX[3]~11_combout\) # (\DE1|HEX[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|HEX[3]~12_combout\,
	datab => \DE1|HEX[3]~11_combout\,
	datad => \DE1|HEX[3]~10_combout\,
	combout => \DE1|HEX[3]~13_combout\);

-- Location: LCCOMB_X14_Y6_N12
\DE1|HEX[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[4]~14_combout\ = (\BUTTONS~combout\(2) & (\DE1|S0|q\(10) & (!\BUTTONS~combout\(3) & !\BUTTONS~combout\(1)))) # (!\BUTTONS~combout\(2) & (((!\DE1|S0|q\(10) & \BUTTONS~combout\(1))) # (!\BUTTONS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \DE1|S0|q\(10),
	datac => \BUTTONS~combout\(3),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[4]~14_combout\);

-- Location: LCCOMB_X14_Y6_N30
\DE1|HEX[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[4]~15_combout\ = ((\DE1|HEX[4]~14_combout\) # ((!\DE1|S0|q\(10) & !\BUTTONS~combout\(0)))) # (!\DE1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|Equal2~0_combout\,
	datab => \DE1|S0|q\(10),
	datac => \BUTTONS~combout\(0),
	datad => \DE1|HEX[4]~14_combout\,
	combout => \DE1|HEX[4]~15_combout\);

-- Location: LCCOMB_X14_Y6_N8
\DE1|HEX[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[5]~16_combout\ = (\BUTTONS~combout\(2) & (\BUTTONS~combout\(3) & ((!\BUTTONS~combout\(1)) # (!\BUTTONS~combout\(0))))) # (!\BUTTONS~combout\(2) & (((!\BUTTONS~combout\(0) & !\BUTTONS~combout\(1))) # (!\BUTTONS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \BUTTONS~combout\(3),
	datac => \BUTTONS~combout\(0),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[5]~16_combout\);

-- Location: LCCOMB_X14_Y6_N26
\DE1|HEX[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[5]~17_combout\ = ((\DE1|HEX[0]~4_combout\) # ((!\DE1|S0|q\(10) & \DE1|HEX[5]~16_combout\))) # (!\DE1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|Equal2~0_combout\,
	datab => \DE1|S0|q\(10),
	datac => \DE1|HEX[5]~16_combout\,
	datad => \DE1|HEX[0]~4_combout\,
	combout => \DE1|HEX[5]~17_combout\);

-- Location: LCCOMB_X14_Y6_N4
\DE1|HEX[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[6]~18_combout\ = (\BUTTONS~combout\(2) & (\BUTTONS~combout\(3) & ((\BUTTONS~combout\(1))))) # (!\BUTTONS~combout\(2) & (((!\BUTTONS~combout\(0) & !\BUTTONS~combout\(1))) # (!\BUTTONS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTONS~combout\(2),
	datab => \BUTTONS~combout\(3),
	datac => \BUTTONS~combout\(0),
	datad => \BUTTONS~combout\(1),
	combout => \DE1|HEX[6]~18_combout\);

-- Location: LCCOMB_X22_Y8_N8
\DE1|HEX[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|HEX[6]~20_combout\ = (\DE1|S0|q\(9)) # ((\DE1|S0|q\(10)) # ((\DE1|HEX[6]~18_combout\) # (\DE1|S0|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(10),
	datac => \DE1|HEX[6]~18_combout\,
	datad => \DE1|S0|q\(11),
	combout => \DE1|HEX[6]~20_combout\);

-- Location: LCCOMB_X22_Y8_N0
\DE1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|Equal3~0_combout\ = (!\DE1|S0|q\(9) & (!\DE1|S0|q\(10) & !\DE1|S0|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(10),
	datad => \DE1|S0|q\(11),
	combout => \DE1|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
\DE1|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|Equal2~1_combout\ = (!\DE1|S0|q\(9) & (\DE1|S0|q\(10) & !\DE1|S0|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(10),
	datad => \DE1|S0|q\(11),
	combout => \DE1|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y8_N4
\DE1|DISPn[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|DISPn[2]~0_combout\ = (\DE1|S0|q\(9)) # ((\DE1|S0|q\(10)) # (!\DE1|S0|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(10),
	datad => \DE1|S0|q\(11),
	combout => \DE1|DISPn[2]~0_combout\);

-- Location: LCCOMB_X22_Y8_N6
\DE1|DISPn[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DE1|DISPn[3]~1_combout\ = (\DE1|S0|q\(9)) # ((!\DE1|S0|q\(11)) # (!\DE1|S0|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE1|S0|q\(9),
	datab => \DE1|S0|q\(10),
	datad => \DE1|S0|q\(11),
	combout => \DE1|DISPn[3]~1_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[0]~I\ : cycloneii_io
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
	datain => \DE1|HEX[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[1]~I\ : cycloneii_io
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
	datain => \DE1|HEX[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[2]~I\ : cycloneii_io
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
	datain => \DE1|HEX[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[3]~I\ : cycloneii_io
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
	datain => \DE1|HEX[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[4]~I\ : cycloneii_io
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
	datain => \DE1|HEX[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[5]~I\ : cycloneii_io
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
	datain => \DE1|HEX[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(5));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[6]~I\ : cycloneii_io
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
	datain => \DE1|HEX[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(6));

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
	datain => \DE1|ALT_INV_Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(0));

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
	datain => \DE1|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(1));

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
	datain => \DE1|DISPn[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(2));

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
	datain => \DE1|DISPn[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DISP(3));
END structure;


