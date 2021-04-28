------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (27/04/2021, 14:24:15)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.40.330 (Jan 07, 2021)
-- Copyright (c) 2002-2020 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOT_gate IS
  PORT( I: IN std_logic;
  	O: OUT std_logic );
END NOT_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOT_gate IS
BEGIN
  O <= (not I);
END behavioral;



--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NAND2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END NAND2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NAND2_gate IS
BEGIN
  O <= (not (I0 and I1));
END behavioral;



