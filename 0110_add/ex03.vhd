library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex03 is
end entity;

architecture behav of ex03 is
  signal a : std_ulogic_vector(3 downto 0);
  signal b : std_ulogic_vector(3 downto 0);
  signal c : std_ulogic_vector(3 downto 0);
begin
  process
  begin
    a <= "0010";
    b <= "0011";
    wait for 1 ms;
    c <= std_ulogic_vector(unsigned(a) + unsigned(b));
    wait for 1 ms;
    assert false report natural'image(to_integer(unsigned(c))) severity note;
    wait;
  end process;
end behav;
