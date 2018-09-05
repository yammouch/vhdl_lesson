library ieee;
use ieee.std_logic_1164.all;

entity ex03_tb is
end entity;

architecture behav of ex03_tb is
  procedure trans1 (
    signal vec  : out std_logic_vector(3 downto 0);
    signal wen  : in  std_logic;
    signal addr : in  std_logic_vector(2 downto 0)) is
  begin
    vec <= addr & wen;
    wait for 1 us;
  end procedure;
  signal x0 : std_logic_vector(3 downto 0);
begin
  dut : entity work.ex03
    port map (
      i0 => x0(0         ),
      i1 => x0(3 downto 1),
      o0 => open );

  process
  begin
    trans1(x0, '1', "000");
    trans1(x0, '0', "001");
    wait;
  end process;
end behav;
