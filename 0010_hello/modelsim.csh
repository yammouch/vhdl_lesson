# amsenv h

rm -rf foo
vlib foo
vcom -work foo hello.vhd
vsim foo.hello <<!
  run -all
  quit -f
!
