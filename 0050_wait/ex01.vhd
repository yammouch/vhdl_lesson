library ieee;
use ieee.std_logic_1164.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  signal s0 : std_logic;
begin
  process
  begin
    wait for 2 us;
    s0 <= '0';
    wait;
  end process;

  process
  begin
    wait for 1 us;
    for i in 0 to 2 loop
      wait until s0 = '0';
      assert false report std_logic'image(s0) severity note;
    end loop;
    wait;
  end process;
end architecture behav;
