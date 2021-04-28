------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (27/04/2021, 14:24:15)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.40.330 (Jan 07, 2021)
-- Copyright (c) 2002-2020 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY latchD IS
  PORT( 
    --------------------------------------> Inputs:
    iB:           IN  std_logic;
    iA:           IN  std_logic;
    --------------------------------------> Outputs:
    oL0:          OUT std_logic;
    oL1:          OUT std_logic 
    ------------------------------------------------------
    );
END latchD;


ARCHITECTURE structural OF latchD IS 

  ----------------------------------------> Components:
  COMPONENT NOT_gate IS
    PORT( I: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT NAND2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;

  ----------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;


BEGIN -- structural

  ----------------------------------------> Input:
  S001 <= iB;
  S007 <= iA;

  ----------------------------------------> Output:
  oL0 <= S002;
  oL1 <= S003;

  ----------------------------------------> Component Mapping:
  C001: NAND2_gate PORT MAP ( S007, S001, S004 );
  C002: NAND2_gate PORT MAP ( S001, S006, S005 );
  C004: NAND2_gate PORT MAP ( S004, S003, S002 );
  C005: NAND2_gate PORT MAP ( S002, S005, S003 );
  C028: NOT_gate PORT MAP ( S007, S006 );
END structural;
