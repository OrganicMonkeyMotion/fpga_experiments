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

   SIGNAL M0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL M1 : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN -- Behavior
	
	S0: sweep PORT MAP (clk,M0); 
	
	DISPProcess: process (M0) is
	begin
	  
		   CASE M0 IS
	          WHEN "00" => DISPn <= "1110";
		       WHEN "01" => DISPn <= "1101";
			    WHEN "10" => DISPn <= "1011";
			    WHEN "11" => DISPn <= "0111";
			    WHEN OTHERS => NULL;
			END CASE;
			
	end process DISPProcess;
	
	HEXProcess: process (M1) is
	begin
	   
		   CASE M1 IS
	          WHEN "00" => HEX <= HEX0;
		       WHEN "01" => HEX <= HEX1 ;
			    WHEN "10" => HEX <= HEX2 ;
			    WHEN "11" => HEX <= HEX3 ;
			    WHEN OTHERS => NULL;
			END CASE;
			
	end process HEXProcess;
	
	CLKProcess: process (clk) is
	begin
      if falling_edge(clk) then
		      M1 <= M0 after 25ps;
		end if;
		
	end process CLKProcess;
END Behavior;