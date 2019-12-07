---------------------------------------------------------------------------------------------------
-- DEEDS (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (6/6/2014, 9:53:06 PM)
--      by the Digital Circuit Simulator(d-DcS)
--      Ver. 1.80.100 (March 21, 2014)
-- Copyright(c)2002-2014 University of Genoa, Italy
--      Web Site:  http://www.esng.dibe.unige.it/deeds
---------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY part2 IS
  PORT( 
    ---------------------------------------------------------------------------------> Inputs:
    iID0032:      IN  std_logic;
    iID0034:      IN  std_logic;
    iID0055:      IN  std_logic;
    iID0057:      IN  std_logic;
    iID0078:      IN  std_logic;
    iID0080:      IN  std_logic;
    iID0101:      IN  std_logic;
    iID0102:      IN  std_logic;
    iID0103:      IN  std_logic;
    ---------------------------------------------------------------------------------> Outputs:
    oID0035:      OUT std_logic;
    oID0058:      OUT std_logic;
    oID0081:      OUT std_logic;
    oID0104:      OUT std_logic 
    ---------------------------------------------------------------------------------
    );
END part2;


ARCHITECTURE structural OF part2 IS 

  ----------------------------------------------------------------------------------> Components:
  COMPONENT NOT_gate IS
    PORT( I: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT AND2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT OR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;

  ----------------------------------------------------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;
  SIGNAL S008: std_logic;
  SIGNAL S009: std_logic;
  SIGNAL S010: std_logic;
  SIGNAL S011: std_logic;
  SIGNAL S012: std_logic;
  SIGNAL S013: std_logic;
  SIGNAL S014: std_logic;
  SIGNAL S015: std_logic;
  SIGNAL S016: std_logic;
  SIGNAL S017: std_logic;
  SIGNAL S018: std_logic;
  SIGNAL S019: std_logic;
  SIGNAL S020: std_logic;
  SIGNAL S021: std_logic;
  SIGNAL S022: std_logic;


BEGIN -- structural

  ----------------------------------------------------------------------------------> Input:
  S001 <= iID0032;
  S002 <= iID0034;
  S006 <= iID0055;
  S007 <= iID0057;
  S011 <= iID0078;
  S012 <= iID0080;
  S016 <= iID0101;
  S022 <= iID0102;
  S017 <= iID0103;

  ----------------------------------------------------------------------------------> Output:
  oID0035 <= S003;
  oID0058 <= S008;
  oID0081 <= S013;
  oID0104 <= S018;

  ----------------------------------------------------------------------------------> Component Mapping:
  C037: OR2_gate PORT MAP ( S005, S004, S003 );
  C038: AND2_gate PORT MAP ( S022, S001, S004 );
  C039: AND2_gate PORT MAP ( S002, S021, S005 );
  C060: OR2_gate PORT MAP ( S010, S009, S008 );
  C061: AND2_gate PORT MAP ( S022, S006, S009 );
  C062: AND2_gate PORT MAP ( S007, S021, S010 );
  C083: OR2_gate PORT MAP ( S015, S014, S013 );
  C084: AND2_gate PORT MAP ( S022, S011, S014 );
  C085: AND2_gate PORT MAP ( S012, S021, S015 );
  C105: NOT_gate PORT MAP ( S022, S021 );
  C106: OR2_gate PORT MAP ( S020, S019, S018 );
  C107: AND2_gate PORT MAP ( S022, S016, S019 );
  C108: AND2_gate PORT MAP ( S017, S021, S020 );

END structural;
