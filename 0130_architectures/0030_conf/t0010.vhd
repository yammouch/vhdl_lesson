architecture t0010 of sub1 is
begin
  process
  begin
    wait until pulse'event and pulse = '1';
    report "t0010";
  end process;
end t0010;
