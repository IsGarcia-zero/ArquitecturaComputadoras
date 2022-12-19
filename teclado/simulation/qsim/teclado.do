onerror {exit -code 1}
vlib work
<<<<<<< HEAD:teclado/simulation/qsim/teclado.do
vcom -work work teclado.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.teclado_vhd_vec_tst
vcd file -direction teclado.msim.vcd
vcd add -internal teclado_vhd_vec_tst/*
vcd add -internal teclado_vhd_vec_tst/i1/*
=======
vcom -work work practica2.vho
vcom -work work Waveform1.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.practica2_vhd_vec_tst
vcd file -direction practica2.msim.vcd
vcd add -internal practica2_vhd_vec_tst/*
vcd add -internal practica2_vhd_vec_tst/i1/*
>>>>>>> ac2945a8f61efa8137abcaa29c944ed29ab74499:p2/simulation/qsim/practica2.do
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


