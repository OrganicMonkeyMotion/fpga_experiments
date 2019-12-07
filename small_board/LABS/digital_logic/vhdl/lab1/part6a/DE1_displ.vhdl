
-- Warning R1: No reset specified 
-- Created by fizzim.pl version $Revision: 5.0 on 2014:07:06 at 21:08:20 (www.fizzim.com)

library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity DE1_disp is
port (
  DISPn : out STD_LOGIC_VECTOR(3 downto 0);
  HEX : out STD_LOGIC_VECTOR(6 downto 0);
  HEX0 : in STD_LOGIC_VECTOR(6 downto 0);
  HEX1 : in STD_LOGIC_VECTOR(6 downto 0);
  HEX2 : in STD_LOGIC_VECTOR(6 downto 0);
  HEX3 : in STD_LOGIC_VECTOR(6 downto 0);
  clk : in STD_LOGIC
);
end DE1_disp;

architecture fizzim of DE1_disp is

-- state bits
subtype state_type is STD_LOGIC_VECTOR(1 downto 0);

constant state0: state_type:="00"; 
constant state1: state_type:="01"; 
constant state2: state_type:="10"; 
constant state3: state_type:="11"; 
 

signal state,nextstate: state_type;
signal DISPn_internal: STD_LOGIC_VECTOR(3 downto 0);
signal HEX_internal: STD_LOGIC_VECTOR(6 downto 0);

-- comb always block
begin
  COMB: process(state,HEX0(6 downto 0),HEX1(6 downto 0),HEX2(6 downto 0),HEX3(6 downto 0),clk,DISPn_internal(3 downto 0),HEX_internal(6 downto 0)) begin
    -- Warning I2: Neither implied_loopback nor default_state_is_x attribute is set on state machine - defaulting to implied_loopback to avoid latches being inferred 
    nextstate <= state; -- default to hold value because implied_loopback is set

    case state is
      when state0 =>
		  DISPn_internal(3 downto 0) <= "1110";
        HEX_internal(6 downto 0) <= HEX0(6 downto 0);
        nextstate <= state1;
      when state1 =>
        DISPn_internal(3 downto 0) <= "1101";
        HEX_internal(6 downto 0) <= HEX1(6 downto 0);
        nextstate <= state2;
      when state2 =>
        DISPn_internal(3 downto 0) <= "1011";
        HEX_internal(6 downto 0) <= HEX2(6 downto 0);
        nextstate <= state3;
      when state3 =>
        DISPn_internal(3 downto 0) <= "0111";
        HEX_internal(6 downto 0) <= HEX3(6 downto 0);
        nextstate <= state0;

      when others =>

    end case;
  end process;

  -- Assign reg'd outputs to state bits

  -- Port renames for vhdl
  DISPn(3 downto 0) <= DISPn_internal(3 downto 0);
  HEX(6 downto 0) <= HEX_internal(6 downto 0);

  -- sequential always block
  FF: process(clk,nextstate) begin 
	    state <= nextstate;
  end process;
end fizzim;

