library ieee;
use ieee.std_logic_1164.all;

entity tb_clk_gen is
  port (
   en  : in std_logic;
   clk : out std_logic
  );
end entity tb_clk_gen;

architecture behav of tb_clk_gen is
  signal clk_i : std_logic := '0';
begin
  process
  begin
    wait until en = '1';
    while en = '1' loop
      clk_i <= '1'; wait for 500 ns;
      clk_i <= '0'; wait for 500 ns;
    end loop;
  end process;
  clk <= clk_i;
end architecture behav;
