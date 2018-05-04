onerror {exit -code 1}
vlib work
vlog -work work bit_counter.vo
vlog -work work leading_ones_counter.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bit_counter_vlg_vec_tst -voptargs="+acc"
vcd file -direction bit_counter.msim.vcd
vcd add -internal bit_counter_vlg_vec_tst/*
vcd add -internal bit_counter_vlg_vec_tst/i1/*
run -all
quit -f
