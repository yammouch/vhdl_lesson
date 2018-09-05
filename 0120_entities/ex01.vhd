library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01_lower is
  port (
    din  : in  std_logic_vector(2 downto 0);
    dout : out std_logic_vector(2 downto 0)
  );
end entity;

architecture rtl of ex01_lower is
begin
  dout <= std_logic_vector(unsigned(din) + 1);
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01 is
end entity;

architecture behav of ex01 is
  signal vec0 : std_logic_vector(2 downto 0);
begin
  dut : entity work.ex01_lower
    port map (
      din  => vec0,
      dout => open
    );

  process
  begin
    for i in 0 to 4 loop
      vec0 <= std_logic_vector(to_unsigned(i, 3));
      wait for 1 us;
    end loop;
    wait;
  end process;
end behav;
