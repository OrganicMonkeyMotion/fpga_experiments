library ieee;
USE ieee.std_logic_1164.all;

ENTITY ripple_adder IS
PORT (b_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      a_in  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		c_in : IN STD_LOGIC;
		c_out : OUT STD_LOGIC;
		s_out  : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)) ;
END ripple_adder;

ARCHITECTURE Behavior OF ripple_adder IS
SIGNAL c1, c2, c3: STD_LOGIC;

COMPONENT adder 
PORT (b  : IN STD_LOGIC;
      a  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		co : OUT STD_LOGIC;
		s  : OUT STD_LOGIC) ; END COMPONENT;
BEGIN
   
FA3: adder PORT MAP (b=> b_in(3), a=> a_in(3), ci=>c3, co=>c_out, s=>s_out(3));
FA2: adder PORT MAP (b=> b_in(2), a=> a_in(2), ci=>c2, co=>c3, s=>s_out(2));
FA1: adder PORT MAP (b=> b_in(1), a=> a_in(1), ci=>c1, co=>c2, s=>s_out(1));
FA0: adder PORT MAP (b=> b_in(0), a=> a_in(0), ci=>c_in, co=>c1, s=>s_out(0));	

END Behavior;