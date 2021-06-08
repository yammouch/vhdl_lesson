library ieee;
use ieee.std_logic_1164.all;

library lib1;

entity inv1 is
  port (
    din  : in std_logic;
    dout : out std_logic );
end entity;

architecture rtl of inv1 is
begin
  dout <= not din;
end rtl;
