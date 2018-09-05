library ieee;
use ieee.std_logic_1164.all;

entity ex02 is
end entity;

architecture behav of ex02 is
begin
  process
    variable a: std_logic_vector(7 downto 0);
    variable i: integer;
  begin
    a := (others => '0');
    a(4 downto 2) := "111";
    for i in a'left downto 0 loop
      report std_logic'image(a(i));
    end loop;
    wait;
  end process;
end behav;
