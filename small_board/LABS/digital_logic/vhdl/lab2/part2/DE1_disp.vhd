LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DE1_disp IS
   PORT ( HEX0, HEX1, HEX2, HEX3: IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			 clk : IN STD_LOGIC;
			 HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 DISPn: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END DE1_disp;

ARCHITECTURE Behavior OF DE1_disp IS
   COMPONENT sweep 
       Port ( mclk      : in  STD_LOGIC;
              sweep_out : out  std_logic_vector(2 downto 0));
   END COMPONENT;

   SIGNAL M : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN -- Behavior
	
	S0: sweep PORT MAP (clk,M); 
	
	HEX <= HEX0 WHEN M = "000" ELSE
	       HEX1 WHEN M = "010" ELSE
			 HEX2 WHEN M = "100" ELSE
			 HEX3 WHEN M = "110" ELSE
			 "1111111";
	DISPn <= "1110" WHEN M = "000" ELSE
	         "1101" WHEN M = "010" ELSE
			   "1011" WHEN M = "100" ELSE
			   "0111" WHEN M = "110" ELSE
			   "1111";
	
END Behavior;