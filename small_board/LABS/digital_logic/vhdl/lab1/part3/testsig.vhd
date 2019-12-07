LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- simple 3-to-1 multiplexer module
-- based on labs from Altera
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE1/vhdl/lab1_VHDL.pdf

ENTITY testsig IS
	PORT (
			 U: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
			 V: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
			 W: OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
END testsig;

ARCHITECTURE Behavior OF testsig IS
BEGIN
	U <= "00";
	V <= "01";
	W <= "10";
END Behavior;