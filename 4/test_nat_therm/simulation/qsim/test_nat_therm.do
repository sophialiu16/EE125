onerror {exit -code 1}
vlib work
vlog -work work test_nat_therm.vo
vlog -work work test_nat_therm.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.test_nat_therm_vlg_vec_tst -voptargs="+acc"
vcd file -direction test_nat_therm.msim.vcd
vcd add -internal test_nat_therm_vlg_vec_tst/*
vcd add -internal test_nat_therm_vlg_vec_tst/i1/*
run -all
quit -f
