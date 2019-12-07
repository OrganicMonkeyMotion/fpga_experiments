LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mplex IS
PORT ( V  : IN  STD_LOGIC_VECTOR (1 DOWNTO 0); -- v3, v2, v1, v0
		 M : OUT STD_LOGIC; -- m3, m2, m1, m0
		 Z : IN  STD_LOGIC
		 );
END mplex;

ARCHITECTURE Behaviour OF mplex IS
BEGIN
	M <= (V(1) AND Z) OR (V(0) AND NOT Z);
END Behaviour;