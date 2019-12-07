LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY segseven IS
	PORT (SW 		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0); -- (3)=A, (2)=B, (1)=C, (0)=D
	      LEDSEG   : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
			);
END segseven;

ARCHITECTURE Behavior OF segseven IS
BEGIN
    -- SEG A : In3' In2' In1' In0 + In2 In1' In0' + In3 In1 + In3 In2;
  LEDSEG(0) <= (NOT SW(3) AND NOT SW(2) AND NOT SW(1) AND SW(0)) OR
               (SW(2) AND NOT SW(1) AND NOT SW(0)) OR
  					(SW(3) AND SW(1)) OR
					(SW(3) AND SW(2)); 
    -- SEG B : In2 In1' In0 + In3 In1 + In2 In1 In0' + In3 In2;
  LEDSEG(1) <= (SW(2) AND NOT SW(1) AND SW(0)) OR
               (SW(3) AND SW(1)) OR
					(SW(2) AND SW(1) AND NOT SW(0)) OR
					(SW(3) AND SW(2));
  -- SEG C : In2' In1 In0' + In3 In2 + In3 In1;
  LEDSEG(2) <= (NOT SW(2) AND SW(1) AND NOT SW(0)) OR
               (SW(3) AND SW(2)) OR
					(SW(3) AND SW(1));
  -- SEG D : In3 In0 + In2 In1' In0' + In2' In1' In0 + In3 In1 + In2 In1 In0;
  LEDSEG(3) <= (SW(3) AND SW(0)) OR
               (SW(2) AND NOT SW(1) AND NOT SW(0)) OR
					(NOT SW(2) AND NOT SW(1) AND SW(0)) OR
					(SW(2) AND SW(1) AND SW(0)) OR
					(SW(3) AND SW(1)); 
  -- SEG E : In2 In1' + In3 In1 + In0;
  LEDSEG(4) <= (SW(3) AND SW(1)) OR
               (SW(2) AND NOT SW(1)) OR
					(SW(0)); 
  -- SEG F : In3 In2 + In3' In2' In0 + In2' In1 + In1 In0;
  LEDSEG(5) <= (NOT SW(3) AND NOT SW(2) AND SW(0)) OR
               (SW(3) AND SW(2)) OR
					(NOT SW(2) AND SW(1)) OR
					(SW(1) AND SW(0)); 
  -- SED G : In3' In2' In1' + In2 In1 In0 + In3 In2 + In3 In1;
  LEDSEG(6) <= (NOT SW(3) AND NOT SW(2) AND NOT SW(1)) OR
               (SW(2) AND SW(1) AND SW(0)) OR
					(SW(3) AND SW(1)) OR
					(SW(3) AND SW(2)); 

  
 
END Behavior;