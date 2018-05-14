onerror {exit -code 1}
vlib work
vlog -work work calc_ceil_log2.vo
vlog -work work calc_ceil_log2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.calc_ceil_log2_vlg_vec_tst -voptargs="+acc"
vcd file -direction calc_ceil_log2.msim.vcd
vcd add -internal calc_ceil_log2_vlg_vec_tst/*
vcd add -internal calc_ceil_log2_vlg_vec_tst/i1/*
run -all
quit -f
