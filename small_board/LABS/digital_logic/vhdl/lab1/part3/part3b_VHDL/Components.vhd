---------------------------------------------------------------------------------------------------
-- DEEDS (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (6/7/2014, 12:04:56 AM)
--      by the Digital Circuit Simulator(d-DcS)
--      Ver. 1.80.100 (March 21, 2014)
-- Copyright(c)2002-2014 University of Genoa, Italy
--      Web Site:  http://www.esng.dibe.unige.it/deeds
---------------------------------------------------------------------------------------------------

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY Multiplexer_2_1 IS

  PORT( I0: IN  std_logic;
        I1: IN  std_logic;
        S0: IN  std_logic;
         Q: OUT std_logic );
END Multiplexer_2_1;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF Multiplexer_2_1 IS
BEGIN
  Q <= I0 when (S0 = '0') else
       I1 when (S0 = '1') else 'X';
END behavioral;


