entity hello is
end;

architecture spit of hello is begin

prc1 : process
begin
  assert false report "Hello, world!" severity note;
  wait;
end process prc1;

end spit;
