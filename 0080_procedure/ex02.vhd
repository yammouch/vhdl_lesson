-- does not pass compile

library ieee;
use ieee.std_logic_1164.all;

entity ex02 is
end entity ex02;

architecture behav of ex02 is
  signal sig : std_logic;

  procedure p01 is
  begin
    sig <= '1'; -- does not pass compile
  end procedure p01;

begin

  process
  begin
    sig <= '0';
    wait for 1 us;
    assert false report std_logic'image(sig) severity note;
    p01;
    wait for 1 us;
    assert false report std_logic'image(sig) severity note;
  end

end architecture behav;
