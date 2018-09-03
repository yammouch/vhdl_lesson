library ieee;
use ieee.std_logic_1164.all;

entity upper is
end entity;

architecture tb of upper is
  component lower
    port (
      din  : in  std_ulogic_vector (3 downto 0);
      dout : out std_ulogic_vector (3 downto 0) );
  end component;
begin
  lower_i0 : lower
    port map (
      din  => "0000",
      dout => open );
end tb;
