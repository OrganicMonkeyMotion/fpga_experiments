LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DE1_disp IS
   PORT ( HEX0, HEX1, HEX2, HEX3 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			 clk : IN STD_LOGIC;
			 HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 DISPn: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END DE1_disp;
ARCHITECTURE Behavior OF DE1_disp IS
   COMPONENT sweep 
       Port ( mclk      : in  STD_LOGIC;
              sweep_out : out  std_logic_vector(1 downto 0));
   END COMPONENT;

   SIGNAL M : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN -- Behavior
	
	S0: sweep PORT MAP (clk,M); 
	
	DISPProcess: process (M) is
	begin
		   CASE M IS
	          WHEN "00" => HEX <= HEX0; DISPn <= "1110"; 
		       WHEN "01" => HEX <= HEX1; DISPn <= "1101"; 
			    WHEN "10" => HEX <= HEX2; DISPn <= "1011"; 
			    WHEN "11" => HEX <= HEX3; DISPn <= "0111"; 
			    WHEN OTHERS => NULL;
			END CASE;
	end process DISPProcess;
	
END Behavior;