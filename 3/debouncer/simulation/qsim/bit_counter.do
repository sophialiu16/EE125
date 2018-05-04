onerror {exit -code 1}
vlib work
vcom -work work bit_counter.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax debouncer_vhd_vec_tst/i1=bit_counter_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.debouncer_vhd_vec_tst
vcd file -direction bit_counter.msim.vcd
vcd add -internal debouncer_vhd_vec_tst/*
vcd add -internal debouncer_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

