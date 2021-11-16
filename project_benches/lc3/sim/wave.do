 

onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate -divider control_env_cin_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.control_env/cin_agent/cin_agent_monitor/txn_stream
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/*
add wave -noupdate -divider control_env_cout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.control_env/cout_agent/cout_agent_monitor/txn_stream
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/*
add wave -noupdate -divider fetch_env_fin_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.fetch_env/fin_agent/fin_agent_monitor/txn_stream
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/*
add wave -noupdate -divider fetch_env_fout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.fetch_env/fout_agent/fout_agent_monitor/txn_stream
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/*
add wave -noupdate -divider execute_env_exin_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.execute_env/exin_agent/exin_agent_monitor/txn_stream
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/*
add wave -noupdate -divider execute_env_exout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.execute_env/exout_agent/exout_agent_monitor/txn_stream
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/*
add wave -noupdate -divider decode_env_din_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.decode_env/din_agent/din_agent_monitor/txn_stream
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/*
add wave -noupdate -divider decode_env_dout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.decode_env/dout_agent/dout_agent_monitor/txn_stream
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/*
add wave -noupdate -divider memaccess_env_memin_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.memaccess_env/memin_agent/memin_agent_monitor/txn_stream
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/*
add wave -noupdate -divider memaccess_env_memout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.memaccess_env/memout_agent/memout_agent_monitor/txn_stream
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/*
add wave -noupdate -divider writeback_env_wbin_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.writeback_env/wbin_agent/wbin_agent_monitor/txn_stream
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/*
add wave -noupdate -divider writeback_env_wbout_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment.writeback_env/wbout_agent/wbout_agent_monitor/txn_stream
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/*
add wave -noupdate -divider imem_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment/imem_agent/imem_agent_monitor/txn_stream
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/*
add wave -noupdate -divider dmem_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment/dmem_agent/dmem_agent_monitor/txn_stream
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/*

TreeUpdate [SetDefaultTree]
quietly wave cursor active 0
configure wave -namecolwidth 472
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {27 ns} {168 ns}

