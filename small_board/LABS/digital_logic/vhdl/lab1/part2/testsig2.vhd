LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- simple mulitplexer module
-- based on labs from Altera
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE1/vhdl/lab1_VHDL.pdf

ENTITY testsig2 IS
	PORT ( 
			 M: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END testsig2;

ARCHITECTURE Behavior OF testsig2 IS
BEGIN
	M<="0101";
	
END Behavior;