LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY char_7seg IS
PORT (       C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
       Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END char_7seg;

ARCHITECTURE Behavior OF char_7seg IS
BEGIN -- Behavior
   Display(0) <= C(0);
	Display(1) <= NOT(C(1)) OR C(0);
	Display(2) <= C(0);
	Display(3) <= C(0);
	Display(4) <= C(1);
	Display(5) <= C(1);
	Display(6) <= NOT(C(1)) OR C(0);
   
END Behavior;