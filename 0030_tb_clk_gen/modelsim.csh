# amsenv h

rm -rf foo
vlib foo
vcom -work foo tb_clk_gen.vhd
vcom -work foo test_tb_clk_gen.vhd
vsim foo.test_tb_clk_gen <<!
  add wave -r /*
  run -all
  quit -f
!
