ghdl -a incr.vhd
ghdl -a sim_top.vhd
ghdl -e sim_top
ghdl -r sim_top --vcd=sim_top.vcd
