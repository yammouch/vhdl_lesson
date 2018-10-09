-- 'ghdl -a conf1.vhd' does not pass.
use work.all;

configuration conf1 of sim_top is
  for behav
    --for dut : work.sub1
    for dut --: work.sub1
      --use entity work.sub1(t0010);
      --use entity t0010;
      use t0010;
    end for;
  end for;
end conf1;
