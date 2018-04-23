library ieee;
use ieee.std_logic_1164.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  signal s0 : std_logic;
  signal s1 : std_logic;
  signal s2 : std_logic;
  signal s3 : std_logic;
begin
  process
  begin
    s0 <= '0';
    s1 <= '1';
    wait for 1 us;
    s2 <= s0 and s1;
    wait for 1 us;
    assert false report std_logic'image(s0) severity note;
    assert false report std_logic'image(s1) severity note;
    assert false report std_logic'image(s2) severity note;
    assert false report std_logic'image(s3) severity note;
    wait;
  end process;
  --s3 <= s0 when to_bit(s1);
  s3 <= s0 and s1;
end architecture behav;
