library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lower is
  port (
    din  : in  std_ulogic_vector (3 downto 0);
    dout : out std_ulogic_vector (3 downto 0) );
end entity;

architecture rtl of lower is
  --signal r_dout : unsigned (3 downto 0);
  signal r_dout : std_ulogic_vector (3 downto 0);
begin
  --r_dout <= to_unsigned(to_integer(din) + 1, 4);
  --r_dout <= to_unsigned(to_stdlogicvector(din) + 1, 4);
  --r_dout <= to_integer(to_unsigned(to_stdlogicvector(din))) + 1;
  --r_dout <= std_logic_vector(din) + to_unsigned(1, 4);
  --r_dout <= std_logic_vector(din) + "0001";
  --dout <= to_stdulogicvector(r_dout);
  r_dout <= din;
  dout <= r_dout;
end rtl;
