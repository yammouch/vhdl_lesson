library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex04 is
end entity;

architecture behav of ex04 is
begin
  process
    variable a : std_logic;
    variable b : std_logic_vector(2 downto 0);
    variable c : std_logic_vector(7 downto 0);
    variable i : integer;
  begin
    a := '1';
    b := std_logic_vector(to_unsigned(2, 3));
    c := std_logic_vector(to_unsigned(4, 4)) & b & a;
    report integer'image(to_integer(unsigned(c)));
    for i in 0 to c'left loop
      report std_logic'image(c(i));
    end loop;
    wait;
  end process;
end behav;
