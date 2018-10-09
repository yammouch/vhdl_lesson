architecture t0020 of sub1 is
begin
  process
  begin
    wait until pulse'event and pulse = '1';
    report "t0020";
  end process;
end t0020;
