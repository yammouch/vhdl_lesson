library ieee;
use ieee.std_logic_1164.all;

entity ex03 is
end entity;

architecture behav of ex03 is
begin
  process
    variable x : std_logic_vector(7 downto 0);
    variable i : integer;
  begin
    --x := (7 => '1', 5 downto 4 => '1', 3 downto 1 => "101", others => '0');
    x := (7 => '1', 5 downto 4 => '1', 2 downto 1 => '1', others => '0');
    for i in x'left downto 0 loop
      report std_logic'image(x(i));
    end loop;
    wait;
  end process;
end behav;
