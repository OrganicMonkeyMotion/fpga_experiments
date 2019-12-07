LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clkdiv is
    Port ( mclk : in  STD_LOGIC;
           selout : out  std_logic_vector(1 downto 0));
end clkdiv;

architecture arch of clkdiv is
signal q: std_logic_vector(9 downto 0);
begin
    --clock divider
    process(mclk)
    begin   
        if q = "1111111111" then
            q <= "0000000000";
        elsif mclk'event and mclk = '1' then
            q <= std_logic_vector(unsigned(q)+1);
        end if;
    end process;
	 
    selout <= q(9)&q(8);

end arch;