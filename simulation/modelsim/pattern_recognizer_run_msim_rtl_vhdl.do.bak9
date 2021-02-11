transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/NAS/School/Master/Embedded Systems/Design of Digital Systems/Lab/pattern_recognizer/seven_segment_display.vhd}
vcom -93 -work work {D:/NAS/School/Master/Embedded Systems/Design of Digital Systems/Lab/pattern_recognizer/pattern_recognizer.vhd}

vcom -93 -work work {D:/NAS/School/Master/Embedded Systems/Design of Digital Systems/Lab/pattern_recognizer/testbench.vhd}
vcom -93 -work work {D:/NAS/School/Master/Embedded Systems/Design of Digital Systems/Lab/pattern_recognizer/testset.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
