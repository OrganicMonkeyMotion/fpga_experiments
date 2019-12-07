LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- implements a 2-bit wide 3-to-1 multiplexer
ENTITY mux_2bit_3to1 IS
   PORT ( S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END mux_2bit_3to1;

ARCHITECTURE Behavior OF mux_2bit_3to1 IS
BEGIN -- Behavior
	WITH S SELECT
		M <= U WHEN "00",
		     V WHEN "01",
			  W WHEN "10",
			  W WHEN OTHERS;
END Behavior;