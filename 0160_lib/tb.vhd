library ieee;
use ieee.std_logic_1164.all;

library lib1;
use lib1.all;

entity tb is
end entity;

architecture behav of tb is
  component inv1 is
    port (
      din  : in  std_logic;
      dout : out std_logic );
  end component;
  signal din  : std_logic := '0';
  signal dout : std_logic;
begin
  u_inv1 : inv1 port map (
    din  => din,
    dout => dout
  );
end behav;
