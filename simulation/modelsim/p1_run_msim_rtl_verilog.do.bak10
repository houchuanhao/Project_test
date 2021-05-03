transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/VLSI/Project {D:/VLSI/Project/p1.v}

vlog -vlog01compat -work work +incdir+D:/VLSI/Project/simulation/modelsim {D:/VLSI/Project/simulation/modelsim/p1_vlg_tst.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaiigz_hssi_ver -L arriaiigz_pcie_hip_ver -L arriaiigz_ver -L rtl_work -L work -voptargs="+acc"  p1_vlg_tst

add wave *
view structure
view signals
run -all
