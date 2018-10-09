-- It does not pass $ ghdl -a conf.vhd.
use work.all;

configuration use_sim1 of sim_top is
  for sim_top
    use entity sim_top(sim1);
  end for;
end use_sim1;
