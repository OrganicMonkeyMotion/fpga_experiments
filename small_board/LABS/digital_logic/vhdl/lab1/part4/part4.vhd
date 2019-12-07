LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- simple module that connects the buttons on our Master 21EDA board.
-- based on labs from Altera 
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE2/vhdl/lab1_VHDL.pdf

ENTITY part4 IS
	PORT (LED_EN : OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
	      LED    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- our 7 segment displays
			A : IN STD_LOGIC;
			B : IN STD_LOGIC ); -- our buttons
END part4;


ARCHITECTURE Behavior OF part4 IS
BEGIN                      -- entry from truth table=segment of display
  LED(7) <= '1';           -- F(7)=DP is always off
  LED(6) <= A;             -- F(6)=G
  LED(5) <= (NOT B) OR A ; -- F(5)=F
  LED(4) <= A;             -- F(4)=E
  LED(3) <= A;             -- F(3)=D
  LED(2) <= B;             -- F(2)=C
  LED(1) <= B;             -- F(1)=B 
  LED(0) <= (NOT B) OR A;  -- F(0)=A
  
  LED_EN <= "01111111";
END Behavior;