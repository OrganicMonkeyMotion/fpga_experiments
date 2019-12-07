library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL; 

ENTITY bcd_adder IS
PORT (b_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      a_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		c_in : IN STD_LOGIC;
		c_out : OUT STD_LOGIC;
		s_out  : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)) ;
END bcd_adder;



ARCHITECTURE Behavior OF bcd_adder IS

signal t: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal z: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal a: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal b: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal c1: STD_LOGIC;

BEGIN
   
	process (a_in, b_in) begin

		t <= STD_LOGIC_VECTOR(unsigned(a_in) + unsigned(b_in) + (c_in & ""));
		
		if (t > "1001")  then
			z <= "1010";
			c1 <= '1';
		else
			z <= "0000";
			c1 <= '0';
		end if;
		
		s_out <= STD_LOGIC_VECTOR(unsigned(t) - unsigned(z));
		
		c_out <= c1;
		
	end process;

END Behavior;