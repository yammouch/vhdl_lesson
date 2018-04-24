library ieee;
use ieee.std_logic_1164.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  signal sig : std_logic;
begin
  --pr1 : process
  --begin
  --  wait for 500 ns;
  --  sig <= '0';
  --  wait;
  --end process pr1;

  pr2 : process
  begin
    wait for 1 us;
    sig <= '1';
    wait for 1 us;
    sig <= '0';
    wait;
  end process pr2;
end architecture behav;
