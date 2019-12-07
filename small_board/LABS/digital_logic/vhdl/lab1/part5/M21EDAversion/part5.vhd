LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part5 IS
PORT ( dE1       : IN STD_LOGIC_VECTOR(5 DOWNTO 0); -- chars to display
		 dE1SEL    : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- select one of 'dEl', 'Eld' or 'ldE'
		 CYCDISP   : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- cycle through three displays
       HEX0      : OUT STD_LOGIC_VECTOR(0 TO 6));   -- light segments during cycle n
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
SIGNAL P : STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN
   M0: mux_2bit_3to1 PORT MAP (dE1SEL, dE1(5 DOWNTO 4), dE1(3 DOWNTO 2), dE1(1 DOWNTO 0), M);
	
	M1: mux_2bit_3to1 PORT MAP (dE1SEL, dE1(3 DOWNTO 2), dE1(1 DOWNTO 0), dE1(5 DOWNTO 4), N);
	
	M2: mux_2bit_3to1 PORT MAP (dE1SEL, dE1(1 DOWNTO 0), dE1(5 DOWNTO 4), dE1(3 DOWNTO 2), O);
	
	M3: mux_2bit_3to1 PORT MAP (CYCDISP, M, N, O, P);
	
   H2: char_7seg PORT MAP (P, HEX0);
	
END Behavior;