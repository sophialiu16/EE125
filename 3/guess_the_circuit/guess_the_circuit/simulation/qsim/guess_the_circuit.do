onerror {exit -code 1}
vlib work
vlog -work work guess_the_circuit.vo
vlog -work work guess_the_circuit.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.guess_the_circuit_vlg_vec_tst -voptargs="+acc"
vcd file -direction guess_the_circuit.msim.vcd
vcd add -internal guess_the_circuit_vlg_vec_tst/*
vcd add -internal guess_the_circuit_vlg_vec_tst/i1/*
run -all
quit -f
