library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex04_lower is
  port (
    addr : in  std_logic_vector(3 downto 0);
    data : in  std_logic_vector(3 downto 0)
  );
end entity;

architecture behav of ex04_lower is
begin
  process (addr)
  begin
    report "addr " & integer'image(to_integer(unsigned(addr)));
  end process;

  process
  begin
    wait until data'event;
    report "data " & integer'image(to_integer(unsigned(data)));
  end process;
end behav;

library ieee;
use ieee.std_logic_1164.all;

entity ex04 is
end entity;

architecture behav of ex04 is
  type tVec is record
    addr : std_logic_vector(3 downto 0);
    data : std_logic_vector(3 downto 0);
  end record;
  signal vec : tVec;
begin
  dut : entity work.ex04_lower
    port map (
      addr => vec.addr,
      data => vec.data
    );

  process
  begin
    vec <= (addr => "0001", data => "1000");
    wait for 1 us;
    vec.addr <= "0010";
    wait for 1 us;
    vec.data <= "0100";
    wait for 1 us;
    wait;
  end process;
end behav;
