library ieee;
use ieee.std_logic_1164.all;

entity test_tb_clk_gen is
end entity test_tb_clk_gen;

architecture tb of test_tb_clk_gen is
  component tb_clk_gen is
    port (
      en  : in  std_logic;
      clk : out std_logic
    );
  end component tb_clk_gen;
  signal clk_en : std_logic;
begin
  i_tb_clk_gen : tb_clk_gen
    port map (
      en  => clk_en,
      clk => open
    );

  process
  begin
    clk_en <= '0';
    for i in 0 to 1 loop
      wait for 5 us;
      clk_en <= '1';
      wait for 5 us;
      clk_en <= '0';
    end loop;
    wait;
  end process;
end architecture tb;
