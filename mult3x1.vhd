library ieee;

use ieee.std_logic_1164.all;

entity mult3x1 is

  port (e1, e2, e3: in std_logic;
  	sel: in std_logic_vector(1 downto 0);
	s: out std_logic);

end mult3x1;

architecture arch_mult3x1 of mult3x1 is

signal sel1: std_logic;
signal sel2: std_logic;

begin

  sel1 <= sel(0);
  sel2 <= sel(1);

  s <= e1 when (sel1 = '0' and sel2 = '0') else
       e2 when (sel1 = '0' and sel2 = '1') else
       e3;

end arch_mult3x1;
  
  -- 00 => soma ou subtração
  -- 01 => and
  -- 10 ou 11 => or
