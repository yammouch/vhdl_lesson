-- $ ghdl -a sim_top.vhd
-- $ ghdl -e sim_top
-- $ ghdl -r sim_top
-- > sim2
-- $ ghdl -r sim_top sim1
-- > sim1
library ieee;
use ieee.std_logic_1164.all;

entity sim_top is
end entity;

architecture sim1 of sim_top is
begin
  process
  begin
    report "sim1";
    wait;
  end process;
end sim1;

architecture sim2 of sim_top is
begin
  process
  begin
    report "sim2";
    wait;
  end process;
end sim2;
