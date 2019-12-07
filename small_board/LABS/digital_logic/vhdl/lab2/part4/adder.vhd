library ieee;
USE ieee.std_logic_1164.all;

ENTITY adder IS
PORT (b  : IN STD_LOGIC;
      a  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		co : OUT STD_LOGIC;
		s  : OUT STD_LOGIC) ;
END adder;

ARCHITECTURE Behavior OF adder IS
BEGIN
   
	s <= (ci AND NOT a AND NOT b) OR (NOT ci AND a AND NOT b) OR (NOT ci AND NOT a AND b) OR (ci AND a AND b);
	co <= (ci AND a) OR (ci AND b) OR (a AND b) ;
END Behavior;