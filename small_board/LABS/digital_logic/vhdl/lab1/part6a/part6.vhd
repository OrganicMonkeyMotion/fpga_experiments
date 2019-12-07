LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part6 IS
PORT ( Button : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
       SW   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END part6;

ARCHITECTURE Behavior OF part6 IS
   COMPONENT mux_2bit_4to1
      PORT ( S, U, V, W, X : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
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
                                --     " "            "E"            "d"             "A" 
   M0: mux_2bit_4to1 PORT MAP (Button, SW(7 DOWNTO 6), SW(5 DOWNTO 4), SW(3 DOWNTO 2), SW(1 DOWNTO 0), M);
   H0: char_7seg PORT MAP (M, HEX0);
	
                                --     "E"            "d"            "A"             " " 
	M1: mux_2bit_4to1 PORT MAP (Button, SW(5 DOWNTO 4), SW(3 DOWNTO 2), SW(1 DOWNTO 0), SW(7 DOWNTO 6), N);
   H1: char_7seg PORT MAP (N, HEX1);
	
                                --     "d"            "A"            " "             "E" 	
	M2: mux_2bit_4to1 PORT MAP (Button, SW(3 DOWNTO 2), SW(1 DOWNTO 0), SW(7 DOWNTO 6), SW(5 DOWNTO 4), O);
   H2: char_7seg PORT MAP (O, HEX2);
	
                                --     "A"            " "            "E"             "d" 	
	M3: mux_2bit_4to1 PORT MAP (Button, SW(1 DOWNTO 0), SW(7 DOWNTO 6), SW(5 DOWNTO 4), SW(3 DOWNTO 2), P);
   H3: char_7seg PORT MAP (P, HEX3);
	
END Behavior;