LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part6_code IS
	PORT(
		BUTTONS 		: IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
		LED   : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		DISP: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		clk_in : IN STD_LOGIC
	);
END part6_code;

ARCHITECTURE Behaviour of part6_code IS

SIGNAL HEX_0, HEX_1, LED_1, LED_2, LED_3, LED_4: STD_LOGIC_VECTOR (6 DOWNTO 0);

SIGNAL SW_1, SW_2, SW_3, SW_4: STD_LOGIC_VECTOR (3 DOWNTO 0);


COMPONENT segseven PORT ( SW     : IN  STD_LOGIC_VECTOR (3 DOWNTO 0); 
                          LEDSEG : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)); END COMPONENT;

					  
COMPONENT DE1_disp PORT ( HEX0, HEX1, HEX2, HEX3 : IN STD_LOGIC_VECTOR(6 DOWNTO 0); 
                          clk : IN STD_LOGIC; 
                          HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
								  DISPn: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); END COMPONENT;
								  
COMPONENT bin2bcd_12bit Port ( binIN : in  STD_LOGIC_VECTOR (11 downto 0);
           ones : out  STD_LOGIC_VECTOR (3 downto 0);
           tens : out  STD_LOGIC_VECTOR (3 downto 0);
			  hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
			  thousands : out  STD_LOGIC_VECTOR (3 downto 0)
          ); END COMPONENT;
			 
BEGIN
		
	seg1 : segseven PORT MAP (SW=>SW_1, LEDSEG=>LED_1);
	seg2 : segseven PORT MAP (SW=>SW_2, LEDSEG=>LED_2);
	seg3 : segseven PORT MAP (SW=>SW_3, LEDSEG=>LED_3);
	seg4 : segseven PORT MAP (SW=>SW_4, LEDSEG=>LED_4);
	
	convert: bin2bcd_12bit PORT MAP (binIN=> BUTTONS, ones => SW_1, tens =>SW_2, hundreds => SW_3, thousands => SW_4);
	
	DE1: DE1_disp PORT MAP (HEX0=>LED_1, HEX1=>LED_2, HEX2=>LED_3, HEX3=>LED_4, clk=>clk_in, HEX=>LED, DISPn=>DISP);
	
	
END Behaviour;