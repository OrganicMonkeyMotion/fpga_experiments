LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- simple 3-to-1 multiplexer module
-- based on labs from Altera
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE1/vhdl/lab1_VHDL.pdf

ENTITY part3 IS
	PORT ( S1: IN  STD_LOGIC;
	       S0: IN  STD_LOGIC;
			  U: IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  V: IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  W: IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  M: OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
END part3;


ARCHITECTURE Behavior OF part3 IS
  SIGNAL SEL : STD_LOGIC_VECTOR (1 DOWNTO 0);
BEGIN
	 --SEL(0) <= S0;
	 --SEL(1) <= S1;
	 --WITH SEL SELECT
		--M <= U WHEN "00",
		     --V WHEN "01",
			  --W WHEN "10",
			  --W WHEN OTHERS;
		
	  M(0) <= (S1 AND W(0)) OR ((NOT S1) AND (NOT S0) AND U(0)) OR ((NOT S1) AND S0 AND V(0));
	  M(1) <= (S1 AND W(1)) OR ((NOT S1) AND (NOT S0) AND U(1)) OR ((NOT S1) AND S0 AND V(1));
		
END Behavior;