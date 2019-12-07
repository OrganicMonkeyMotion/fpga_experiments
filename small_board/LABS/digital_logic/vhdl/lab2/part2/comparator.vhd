LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator IS
PORT ( INPUT  : IN  STD_LOGIC_VECTOR (3 DOWNTO 0); -- (3)=A, (2)=B, (1)=C, (0)=D
	    OUTPUT : OUT STD_LOGIC -- F0, F1, F2
	  );
END comparator;

ARCHITECTURE Behaviour OF comparator IS
BEGIN
	OUTPUT <= (NOT INPUT(3) AND NOT INPUT(1)) OR (NOT INPUT(3) AND NOT INPUT(2));
END Behaviour;