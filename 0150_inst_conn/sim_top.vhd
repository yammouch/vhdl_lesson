library ieee;
use ieee.std_logic_1164.all;

entity sim_top is
end entity;

architecture behav of sim_top is

  component incr is
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
  end component;

  signal din_0    : std_ulogic_vector(3 downto 0);
  signal dout_0   : std_ulogic_vector(3 downto 0);
  signal din_1_0  : std_ulogic;
  signal din_1_1  : std_ulogic;
  signal din_1_2  : std_ulogic;
  signal din_1_3  : std_ulogic;
  signal dout_1_0 : std_ulogic;
  signal dout_1_1 : std_ulogic;
  signal dout_1_2 : std_ulogic;
  signal dout_1_3 : std_ulogic;

begin

  dut : incr
    port map (
      din_0_0  => din_0(0),
      din_0_1  => din_0(1),
      din_0_2  => din_0(2),
      din_0_3  => din_0(3),
      --din_1    => ( 0 => din_1_0
      --            , 1 => din_1_1
      --            , 2 => din_1_2
      --            , 3 => din_1_3 ),
      din_1(0) => din_1_0,
      din_1(1) => din_1_1,
      din_1(2) => din_1_2,
      din_1(3) => din_1_3,
      dout_0_0 => dout_0(0),
      dout_0_1 => dout_0(1),
      dout_0_2 => dout_0(2),
      dout_0_3 => dout_0(3),
      --dout_1   => ( 0 => dout_1_0
      --            , 1 => dout_1_1
      --            , 2 => dout_1_2
      --            , 3 => dout_1_3 ),
      dout_1(0) => dout_1_0,
      dout_1(1) => dout_1_1,
      dout_1(2) => dout_1_2,
      dout_1(3) => dout_1_3,
      dio_0_0  => open,
      dio_0_1  => open,
      dio_0_2  => open,
      dio_0_3  => open,
      dio_1    => open );

  process
  begin
    din_0 <= (others => '0');
    din_1_0 <= '0';
    din_1_1 <= '0';
    din_1_2 <= '0';
    din_1_3 <= '0';
    wait for 1 us;
    din_0 <= "0001";
    for i in 0 to 3 loop
      wait for 1 us;
      din_0 <= din_0(2 downto 0) & '0';
    end loop;
    wait for 1 us;
    din_1_0 <= '1';
    for i in 0 to 3 loop
      wait for 1 us;
      din_1_3 <= din_1_2;
      din_1_2 <= din_1_1;
      din_1_1 <= din_1_0;
      din_1_0 <= '0';
    end loop;
    wait;
  end process;

end behav;
