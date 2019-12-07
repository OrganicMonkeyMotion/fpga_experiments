LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- simple module that connects the buttons on our Master 21EDA board.
-- based on labs from Altera 
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE2/vhdl/lab1_VHDL.pdf

ENTITY part1 IS
	PORT (BUTTON : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
	      LED    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)); -- our red leds
END part1;


ARCHITECTURE Behavior OF part1 IS
BEGIN
  LED <= BUTTON;
END Behavior;