library ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_adder IS
PORT (b_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      a_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		c_in : IN STD_LOGIC;
		c_out : OUT STD_LOGIC;
		s_out  : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)) ;
END bcd_adder;

ARCHITECTURE Behavior OF bcd_adder IS
SIGNAL cin: STD_LOGIC;
SIGNAL co1, co2, co3, co4, co5, co6: STD_LOGIC;
SIGNAL s0, s1, s2, s3, s4, s5, s6: STD_LOGIC;
SIGNAL a1, a2: STD_LOGIC;
SIGNAL cout: STD_LOGIC;
SIGNAL hold_low: STD_LOGIC;

COMPONENT adder 
PORT (b  : IN STD_LOGIC;
      a  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		co : OUT STD_LOGIC;
		s  : OUT STD_LOGIC) ; END COMPONENT;
BEGIN
   

FA3: adder PORT MAP (b=> b_in(3), a=> a_in(3), ci=>co3, co=>co4, s=>s3);
FA2: adder PORT MAP (b=> b_in(2), a=> a_in(2), ci=>co2, co=>co3, s=>s2);
FA1: adder PORT MAP (b=> b_in(1), a=> a_in(1), ci=>co1, co=>co2, s=>s1);
FA0: adder PORT MAP (b=> b_in(0), a=> a_in(0), ci=>cin, co=>co1, s=>s0);	

hold_low <= '0';
cout <= co4 or a1 or a2;
s6 <= co6 xor s3;
a1 <= s3 and s2;
a2 <= s3 and s1;

FA5: adder PORT MAP (b=> s2, a=> cout, ci=>co5, co=>co6, s=>s5);
FA4: adder PORT MAP (b=> s1, a=> cout, ci=>hold_low, co=>co5, s=>s4);

s_out(0) <= s0;
s_out(1) <= s4;
s_out(2) <= s5;
s_out(3) <= s6;

c_out <= cout;

END Behavior;