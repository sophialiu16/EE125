onerror {exit -code 1}
vlib work
vlog -work work kitchen_ctr.vo
vlog -work work kitchen_ctr.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.kitchen_ctr_vlg_vec_tst -voptargs="+acc"
vcd file -direction kitchen_ctr.msim.vcd
vcd add -internal kitchen_ctr_vlg_vec_tst/*
vcd add -internal kitchen_ctr_vlg_vec_tst/i1/*
run -all
quit -f
