LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY circuita IS
-- 
	PORT 	( 
				INPUT  : IN  STD_LOGIC_VECTOR (2 DOWNTO 0); -- (2)=A, (1)=B, (0)=C
				OUTPUT : OUT STD_LOGIC_VECTOR (2 DOWNTO 0) -- F0, F1, F2
			);
END circuita;

ARCHITECTURE Behavior OF circuita IS
BEGIN

   OUTPUT(0) <= INPUT(0);
   OUTPUT(1) <= NOT INPUT(1);
   OUTPUT(2) <= INPUT(2) OR INPUT(1);

END Behavior; 