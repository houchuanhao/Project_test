transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {p1_3_900mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+D:/VLSI/Project/simulation/modelsim {D:/VLSI/Project/simulation/modelsim/p1_vlg_tst.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L arriaiigz_hssi_ver -L arriaiigz_pcie_hip_ver -L arriaiigz_ver -L gate_work -L work -voptargs="+acc"  p1_vlg_tst

add wave *
view structure
view signals
run -all
