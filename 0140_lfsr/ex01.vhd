library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex01 is
end entity;

architecture behav of ex01 is

  type nar is array (natural range <>) of natural;

  function lfsr (
   din : in std_ulogic_vector;
   pow : in nar )
  return std_ulogic_vector is
    variable retval : std_ulogic_vector(din'range);
  begin
    if din = std_ulogic_vector(to_unsigned(0, din'length)) then
      retval := (0 => '1', others => '0');
    else
      retval := std_ulogic_vector(shift_right(unsigned(din), 1));
      if din(0) = '1' then
        for i in pow'range loop
          retval := retval
                xor std_ulogic_vector(shift_left( to_unsigned(1, din'length)
                                                , pow(i) - 1 ) );
        end loop;
      end if;
    end if;
    return retval;
  end function;

  signal   clk        : std_ulogic := '0';
  signal   shift_reg  : std_ulogic_vector(7 downto 0) := (others => '0');

begin

  process
  begin
    for i in 0 to 260 loop
      wait for 500 ns;
      clk <= '1';
      wait for 500 ns;
      clk <= '0';
    end loop;
    wait;
  end process;

  process
  begin
    wait until clk'event and clk = '0';
    report natural'image(to_integer(unsigned(shift_reg)));
  end process;

  process
  begin
    wait until clk'event and clk = '1';
    shift_reg <= lfsr(shift_reg, (8, 6, 5, 4));
  end process;

end behav;
