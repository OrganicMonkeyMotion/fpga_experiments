---------------------------------------------------------------------------------------------------
-- DEEDS (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (6/7/2014, 12:04:56 AM)
--      by the Digital Circuit Simulator(d-DcS)
--      Ver. 1.80.100 (March 21, 2014)
-- Copyright(c)2002-2014 University of Genoa, Italy
--      Web Site:  http://www.esng.dibe.unige.it/deeds
---------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY part3b IS
  PORT( 
    ---------------------------------------------------------------------------------> Inputs:
    iID0003:      IN  std_logic_vector( 3 downto 0 );
    iID0004:      IN  std_logic_vector( 3 downto 0 );
    iID0009:      IN  std_logic;
    ---------------------------------------------------------------------------------> Outputs:
    oID0016:      OUT std_logic;
    oID0017:      OUT std_logic 
    ---------------------------------------------------------------------------------
    );
END part3b;


ARCHITECTURE structural OF part3b IS 

  ----------------------------------------------------------------------------------> Components:
  COMPONENT Multiplexer_2_1 IS
          
    PORT( I0: IN  std_logic;
          I1: IN  std_logic;
          S0: IN  std_logic;
          Q: OUT std_logic );
  END COMPONENT;

  ----------------------------------------------------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;

  ----------------------------------------------------------------------------------> Not Connected Pins:
  SIGNAL nc3p2: std_logic;
  SIGNAL nc3p4: std_logic;
  SIGNAL nc4p2: std_logic;
  SIGNAL nc4p4: std_logic;


BEGIN -- structural

  ----------------------------------------------------------------------------------> Input:
  S001 <= iID0003(0);
  nc3p2 <= iID0003(1);
  S002 <= iID0003(2);
  nc3p4 <= iID0003(3);
  S003 <= iID0004(0);
  nc4p2 <= iID0004(1);
  S004 <= iID0004(2);
  nc4p4 <= iID0004(3);
  S005 <= iID0009;

  ----------------------------------------------------------------------------------> Output:
  oID0016 <= S006;
  oID0017 <= S007;

  ----------------------------------------------------------------------------------> Component Mapping:
  C001: Multiplexer_2_1 PORT MAP ( S001, S002, S005, S006 );
  C002: Multiplexer_2_1 PORT MAP ( S003, S004, S005, S007 );

END structural;
