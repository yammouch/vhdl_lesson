library ieee;
use ieee.std_logic_1164.all;

entity ex03 is
  port (
    i0 : in  std_logic;
    i1 : in  std_logic_vector(2 downto 0);
    o0 : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of ex03 is
begin
  o0(0         ) <= i0;
  o0(3 downto 1) <= i1;
end rtl;
