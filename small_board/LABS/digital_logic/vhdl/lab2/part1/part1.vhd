LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- simple module that connects the buttons on our Master 21EDA board.
-- based on labs from Altera 
-- ftp://ftp.altera.com/up/pub/Altera_Material/11.1/Laboratory_Exercises/Digital_Logic/DE2/vhdl/lab2_VHDL.pdf
ENTITY part1 IS
	PORT (SW : IN  STD_LOGIC_VECTOR (3 DOWNTO 0); -- (3)=A, (2)=B, (1)=C, (0)=D
	      LEDSEG    : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			ENABLE : OUT STD_LOGIC); -- segments of our displays
END part1;
ARCHITECTURE Behavior OF part1 IS
BEGIN
  ENABLE <= '0';
	
  -- SEG A : F0 = A B C D' + B' C D + A' C'  + A' B' ;
  LEDSEG(0) <= (SW(3) AND SW(2) AND SW(1) AND NOT SW(0)) OR
               (NOT SW(2) AND SW(1) AND SW(0)) OR
					(NOT SW(3) AND NOT SW(1)) OR
					(NOT SW(3) AND NOT SW(2)); 
  -- SEG B : F1 = B' C D' + A' C'  + B' C' D + A' B' ;
  LEDSEG(1) <= (NOT SW(2) AND SW(1) AND NOT SW(0)) OR
               (NOT SW(3) AND NOT SW(1)) OR
					(NOT SW(2) AND NOT SW(1) AND SW (0)) OR
					(NOT SW(3) AND NOT SW(2));
  -- SEG C : F2 = B C' D + A' B'  + A' C' ;
  LEDSEG(2) <= (SW(2) AND NOT SW(1) AND SW(0)) OR
               (NOT SW(3) AND NOT SW(2)) OR
					(NOT SW(3) AND NOT SW(1));
  -- SEG D : F3 = A' D' + B C D' + B' C D + B' C' D' + A' C' ;
  LEDSEG(3) <= (NOT SW(3) AND NOT SW(0)) OR
               (SW(2) AND SW(1) AND NOT SW(0)) OR
					(NOT SW(2) AND SW(1) AND SW(0)) OR
					(NOT SW(2) AND NOT SW(1) AND NOT SW(0)) OR
					(NOT SW(3) AND NOT SW(1)); 
  -- SEG E : F4 = A' C'  + B' C  + D';
  LEDSEG(4) <= (NOT SW(3) AND NOT SW(1)) OR
               (NOT SW(2) AND SW(1)) OR
					(NOT SW(0)); 
  -- SEG F : F5 = A B D' + A' B'  + B C'  + C' D';
  LEDSEG(5) <= (SW(3) AND SW(2) AND NOT SW(0)) OR
               (NOT SW(3) AND NOT SW(2)) OR
					(SW(2) AND NOT SW(1)) OR
					(NOT SW(1) AND NOT SW(0)); 
  -- SED G : A B C  + B' C' D' + A' C'  + A' B' ;
  LEDSEG(6) <= (SW(3) AND SW(2) AND SW(1)) OR
               (NOT SW(2) AND NOT SW(1) AND NOT SW(0)) OR
					(NOT SW(3) AND NOT SW(1)) OR
					(NOT SW(3) AND NOT SW(2)); 
 
END Behavior;