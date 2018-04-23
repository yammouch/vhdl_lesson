entity ex02 is
end entity ex02;

architecture behav of ex02 is
  signal s0 : bit;
  signal s1 : bit;
  signal s2 : bit;
  signal s3 : bit;
begin
  process
  begin
    s0 <= '0';
    s1 <= '1';
    wait for 1 us;
    assert false report bit'image(s0) severity note;
    assert false report bit'image(s1) severity note;
    assert false report bit'image(s2) severity note;
    assert false report bit'image(s3) severity note;
    wait;
  end process;
  s3 <= s0 when s1 = '1' and s2 = '0' else '0';
end architecture behav;
