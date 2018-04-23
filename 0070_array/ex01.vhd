library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  type aarray is array(0 to 15) of std_logic_vector(33 downto 0);
  signal ar : aarray;
begin
  process
  --variable vec : std_logic_vector(33 downto 0);
  begin
    for i in 0 to 15 loop
      ar(i) <= std_logic_vector(to_unsigned(i, 34));
    end loop;
    for i in 0 to 15 loop
      --vec := ar(i);
      assert false report
       --integer'image(to_integer(unsigned(ar(i), 34)))
       integer'image(to_integer(unsigned(ar(i))))
       --integer'image(to_integer(unsigned(vec, 34)))
       --integer'image(to_integer(unsigned(vec)))
       severity note;
    end loop;
    wait;
  end process;
end architecture behav;
