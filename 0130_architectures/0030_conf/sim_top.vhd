library ieee;
use ieee.std_logic_1164.all;

entity sim_top is
end entity;

architecture behav of sim_top is
  signal pulse : std_ulogic := '0';
begin
  dut : entity work.sub1
    port map (
      pulse => pulse
    );

  process
  begin
    wait for 1 us;
    pulse <= '1';
    wait for 1 us;
    pulse <= '0';
    wait;
  end process;

end behav;
