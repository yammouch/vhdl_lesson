library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity hello is
end entity hello;

architecture spit of hello is
  signal clk : std_logic;
begin

prc2 : process
begin
  clk <= '0'; wait for 1 us;
  clk <= '1'; wait for 1 us;
  clk <= '0'; wait for 1 us;
  clk <= '1'; wait for 1 us;
  clk <= '0'; wait;
end process prc2;

prc1 : process (clk)
begin
  if (clk = '1' and clk'event) then
    assert false report "Hello, world!" severity note;
  end if;
end process prc1;

end architecture spit;
