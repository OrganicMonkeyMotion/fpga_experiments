LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY char_7seg IS
PORT (       C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
       Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END char_7seg;

ARCHITECTURE Behavior OF char_7seg IS
BEGIN -- Behavior
   -- from our truth table
   -- B=C(0), A=C(1)
   Display(0) <= C(0);                                           -- SEG A
	Display(1) <= ((NOT C(1)) AND (NOT C(0))) OR (C(1) AND C(0)); -- SEG B
	Display(2) <= ((NOT C(1)) AND (NOT C(0))) OR (C(1) AND C(0)); -- SEG C
	Display(3) <= C(1);                                           -- SEG D
	Display(4) <= C(1) AND C(0);                                  -- SEG E
	Display(5) <= C(0);                                           -- SEG F
	Display(6) <= C(1) AND C(0);                                  -- SEG G
   
END Behavior;