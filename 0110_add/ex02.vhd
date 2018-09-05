library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex02 is
end entity;

architecture behav of ex02 is
  signal a : std_logic_vector(3 downto 0);
  signal b : std_logic_vector(3 downto 0);
  signal c : std_logic_vector(3 downto 0);
begin
  process
  begin
    a <= "0010";
    b <= "0011";
    wait for 1 ms;
    c <= std_logic_vector(unsigned(a) + unsigned(b));
    wait for 1 ms;
    assert false report natural'image(to_integer(unsigned(c))) severity note;
    wait;
  end process;
end behav;
