transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/circuita.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/part2.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/segseven.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/comparator.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/mplex.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/DE1_disp.vhd}
vcom -93 -work work {C:/Users/rr/Documents/GitHub/fpga_experiments/small_board/LABS/digital_logic/vhdl/lab2/part2/sweep.vhd}

