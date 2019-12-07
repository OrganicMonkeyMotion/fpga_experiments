LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- implements a 2-bit wide 4-to-1 multiplexer
ENTITY mux_2bit_4to1 IS
   PORT ( S, U, V, W, X : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   M : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END mux_2bit_4to1;

ARCHITECTURE Behavior OF mux_2bit_4to1 IS
BEGIN -- Behavior
	WITH S SELECT
		M <= U WHEN "00",
		     V WHEN "01",
			  W WHEN "10",
			  X WHEN "11",
			  U WHEN OTHERS;
END Behavior;