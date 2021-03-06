LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part5 IS
PORT ( SW   : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
       HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		 HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		 HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6));
END part5;

ARCHITECTURE Behavior OF part5 IS
   COMPONENT mux_2bit_3to1
      PORT ( S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
             M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
   END COMPONENT;
	
   COMPONENT char_7seg
      PORT ( C       : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
             Display : OUT STD_LOGIC_VECTOR(0 TO 6));
   END COMPONENT;
	
SIGNAL M : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL N : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
   M0: mux_2bit_3to1 PORT MAP (SW(9 DOWNTO 8), SW(5 DOWNTO 4), SW(3 DOWNTO 2), SW(1 DOWNTO 0), M);
   H0: char_7seg PORT MAP (M, HEX0);
	
	M1: mux_2bit_3to1 PORT MAP (SW(9 DOWNTO 8), SW(3 DOWNTO 2), SW(1 DOWNTO 0), SW(5 DOWNTO 4), N);
   H1: char_7seg PORT MAP (N, HEX1);
	
	M2: mux_2bit_3to1 PORT MAP (SW(9 DOWNTO 8), SW(1 DOWNTO 0), SW(5 DOWNTO 4), SW(3 DOWNTO 2), O);
   H2: char_7seg PORT MAP (O, HEX2);
END Behavior;