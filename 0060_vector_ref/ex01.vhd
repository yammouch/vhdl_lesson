library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  signal vvv : std_logic_vector(99 downto 0);
begin
  process
  begin
    for i in 0 to 19 loop
      vvv((i+1)*5-1 downto i*5) <= std_logic_vector(to_unsigned(i, 5));
    end loop;
    wait for 1 ms;
    wait;
  end process;
end architecture behav;
