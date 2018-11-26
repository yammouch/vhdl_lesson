library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incr is
  port (
    din_0_0  : in    std_ulogic;
    din_0_1  : in    std_ulogic;
    din_0_2  : in    std_ulogic;
    din_0_3  : in    std_ulogic;
    din_1    : in    std_ulogic_vector(3 downto 0);
    dout_0_0 : out   std_ulogic;
    dout_0_1 : out   std_ulogic;
    dout_0_2 : out   std_ulogic;
    dout_0_3 : out   std_ulogic;
    dout_1   : out   std_ulogic_vector(3 downto 0);
    dio_0_0  : inout std_ulogic;
    dio_0_1  : inout std_ulogic;
    dio_0_2  : inout std_ulogic;
    dio_0_3  : inout std_ulogic;
    dio_1    : inout std_ulogic_vector(3 downto 0) );
end entity;

architecture rtl of incr is
  signal din_0    : std_ulogic_vector(3 downto 0);
  signal dout_0   : std_ulogic_vector(3 downto 0);
begin
  din_0 <= ( 3 => din_0_3
           , 2 => din_0_2
           , 1 => din_0_1
           , 0 => din_0_0 );
  dout_0 <= std_ulogic_vector(unsigned(din_0) + 1);
  dout_0_3 <= dout_0(3);
  dout_0_2 <= dout_0(2);
  dout_0_1 <= dout_0(1);
  dout_0_0 <= dout_0(0);
  dout_1 <= std_ulogic_vector(unsigned(din_1) - 1);
end rtl;
