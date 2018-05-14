onerror {exit -code 1}
vlib work
vlog -work work synch_counter.vo
vlog -work work synch_counter.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.synch_counter_vlg_vec_tst -voptargs="+acc"
vcd file -direction synch_counter.msim.vcd
vcd add -internal synch_counter_vlg_vec_tst/*
vcd add -internal synch_counter_vlg_vec_tst/i1/*
run -all
quit -f
