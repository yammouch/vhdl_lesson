# amsenv h

rm -rf foo
vlib foo
vcom -work foo hello.vhd
vsim foo.hello <<!
  add wave -r /*
  run -all
  quit -f
!
