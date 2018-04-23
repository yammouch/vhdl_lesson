library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01 is
end entity ex01;

architecture behav of ex01 is
  type mem is array(0 to 19) of std_logic_vector(4 downto 0);

  procedure p01 (
   signal ary : in  mem;
   signal vec : out std_logic_vector(99 downto 0)
   ) is
  begin
    for i in 0 to 19 loop
      vec((i+1)*5-1 downto i*5) <= ary(i);
    end loop;
  end procedure p01;

  signal m : mem;
  signal v : std_logic_vector(99 downto 0);

begin

  process
  begin
    for i in 0 to 19 loop
      m(i) <= std_logic_vector(to_unsigned(i, 5));
    end loop;
    wait for 1 us;
    p01(m, v);
    wait for 1 us;
    for i in 0 to 19 loop
      assert false report
       integer'image(to_integer(unsigned(v((i+1)*5-1 downto i*5))))
       severity note;
    end loop;
    wait;
  end process;

end architecture behav;
