LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY circuitb IS
	PORT (SW 		: IN  STD_LOGIC; 
	      LEDSEG   : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
			);
END circuitb;
ARCHITECTURE Behavior OF circuitb IS
BEGIN
    -- SEG A : F0 = A B C D' + B' C D + A' C'  + A' B' ;
  LEDSEG(0) <= SW; 
  -- SEG B : F1 = B' C D' + A' C'  + B' C' D + A' B' ;
  LEDSEG(1) <= '0';
  -- SEG C : F2 = B C' D + A' B'  + A' C' ;
  LEDSEG(2) <= '0';
  -- SEG D : F3 = A' D' + B C D' + B' C D + B' C' D' + A' C' ;
  LEDSEG(3) <= SW; 
  -- SEG E : F4 = A' C'  + B' C  + D';
  LEDSEG(4) <= SW; 
  -- SEG F : F5 = A B D' + A' B'  + B C'  + C' D';
  LEDSEG(5) <= SW; 
  -- SED G : A B C  + B' C' D' + A' C'  + A' B' ;
  LEDSEG(6) <= '1'; 
 
END Behavior;