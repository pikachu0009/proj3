onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider control_env_cin_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/control_env/cin_agent/cin_agent_monitor/txn_stream
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/clock
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/reset
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/complete_data
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/complete_instr
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/IR
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/psr
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/IR_Exec
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/IMem_dout
add wave -noupdate -group control_env_cin_agent_bus /hdl_top/control_env_cin_agent_bus/NZP
add wave -noupdate -divider control_env_cout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/control_env/cout_agent/cout_agent_monitor/txn_stream
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/clock
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/reset
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/enable_updatePC
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/enable_fetch
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/enable_decode
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/enable_execute
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/enable_writeback
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/bypass_alu_1
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/bypass_alu_2
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/bypass_mem_1
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/bypass_mem_2
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/mem_state
add wave -noupdate -group control_env_cout_agent_bus /hdl_top/control_env_cout_agent_bus/br_taken
add wave -noupdate -divider fetch_env_fin_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/fetch_env/fin_agent/fin_agent_monitor/txn_stream
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/clock
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/reset
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/enable_updatePC
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/enable_fetch
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/taddr
add wave -noupdate -group fetch_env_fin_agent_bus /hdl_top/fetch_env_fin_agent_bus/br_taken
add wave -noupdate -divider fetch_env_fout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/fetch_env/fout_agent/fout_agent_monitor/txn_stream
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/clock
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/reset
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/npc
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/pc
add wave -noupdate -group fetch_env_fout_agent_bus /hdl_top/fetch_env_fout_agent_bus/instrmem_rd
add wave -noupdate -divider execute_env_exin_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/execute_env/exin_agent/exin_agent_monitor/txn_stream
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/clock
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/reset
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/enable_execute
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/E_control
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/bypass_alu_1
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/bypass_alu_2
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/bypass_mem_1
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/bypass_mem_2
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/IR
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/npc_in
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/Mem_Control_in
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/W_Control_in
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/VSR1
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/VSR2
add wave -noupdate -group execute_env_exin_agent_bus /hdl_top/execute_env_exin_agent_bus/Mem_Bypass_Val
add wave -noupdate -divider execute_env_exout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/execute_env/exout_agent/exout_agent_monitor/txn_stream
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/clock
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/reset
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/aluout
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/W_Control_out
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/Mem_Control_out
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/M_Data
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/dr
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/sr1
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/sr2
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/pcout
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/NZP
add wave -noupdate -group execute_env_exout_agent_bus /hdl_top/execute_env_exout_agent_bus/IR_Exec
add wave -noupdate -divider decode_env_din_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/decode_env/din_agent/din_agent_monitor/txn_stream
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/clock
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/reset
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/enable_decode
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/dout
add wave -noupdate -group decode_env_din_agent_bus /hdl_top/decode_env_din_agent_bus/npc_in
add wave -noupdate -divider decode_env_dout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/decode_env/dout_agent/dout_agent_monitor/txn_stream
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/clock
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/reset
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/IR
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/npc_out
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/E_Control
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/W_Control
add wave -noupdate -group decode_env_dout_agent_bus /hdl_top/decode_env_dout_agent_bus/Mem_Control
add wave -noupdate -divider memaccess_env_memin_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/memaccess_env/memin_agent/memin_agent_monitor/txn_stream
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/clock
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/reset
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/M_Data
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/M_Addr
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/M_Control
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/mem_state
add wave -noupdate -group memaccess_env_memin_agent_bus /hdl_top/memaccess_env_memin_agent_bus/DMem_dout
add wave -noupdate -divider memaccess_env_memout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/memaccess_env/memout_agent/memout_agent_monitor/txn_stream
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/clock
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/reset
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/DMem_din
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/memout
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/DMem_rd
add wave -noupdate -group memaccess_env_memout_agent_bus /hdl_top/memaccess_env_memout_agent_bus/DMem_addr
add wave -noupdate -divider writeback_env_wbin_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/writeback_env/wbin_agent/wbin_agent_monitor/txn_stream
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/clock
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/reset
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/aluout
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/W_Control
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/npc
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/pcout
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/memout
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/enable_writeback
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/sr1
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/sr2
add wave -noupdate -group writeback_env_wbin_agent_bus /hdl_top/writeback_env_wbin_agent_bus/dr
add wave -noupdate -divider writeback_env_wbout_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/writeback_env/wbout_agent/wbout_agent_monitor/txn_stream
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/clock
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/reset
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/vsr1
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/vsr2
add wave -noupdate -group writeback_env_wbout_agent_bus /hdl_top/writeback_env_wbout_agent_bus/psr
add wave -noupdate -divider imem_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/imem_agent/imem_agent_monitor/txn_stream
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/clock
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/reset
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/PC
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/instrmem_rd
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/complete_instr
add wave -noupdate -group imem_agent_bus /hdl_top/imem_agent_bus/Instr_dout
add wave -noupdate -divider dmem_agent
add wave -noupdate /uvm_root/uvm_test_top/environment/dmem_agent/dmem_agent_monitor/txn_stream
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/clock
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/reset
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/complete_data
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/Data_dout
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/Data_din
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/Data_rd
add wave -noupdate -group dmem_agent_bus /hdl_top/dmem_agent_bus/Data_addr
add wave -noupdate /hdl_top/dut_lc3/clock
add wave -noupdate /hdl_top/dut_lc3/reset
add wave -noupdate /hdl_top/dut_lc3/complete_instr
add wave -noupdate /hdl_top/dut_lc3/complete_data
add wave -noupdate /hdl_top/dut_lc3/pc
add wave -noupdate /hdl_top/dut_lc3/Data_addr
add wave -noupdate /hdl_top/dut_lc3/instrmem_rd
add wave -noupdate /hdl_top/dut_lc3/Data_rd
add wave -noupdate /hdl_top/dut_lc3/Instr_dout
add wave -noupdate /hdl_top/dut_lc3/Data_dout
add wave -noupdate /hdl_top/dut_lc3/Data_din
add wave -noupdate /hdl_top/dut_lc3/enable_updatePC
add wave -noupdate /hdl_top/dut_lc3/br_taken
add wave -noupdate /hdl_top/dut_lc3/enable_decode
add wave -noupdate /hdl_top/dut_lc3/enable_execute
add wave -noupdate /hdl_top/dut_lc3/enable_writeback
add wave -noupdate /hdl_top/dut_lc3/enable_fetch
add wave -noupdate /hdl_top/dut_lc3/npc_out_fetch
add wave -noupdate /hdl_top/dut_lc3/taddr
add wave -noupdate /hdl_top/dut_lc3/IR
add wave -noupdate /hdl_top/dut_lc3/IR_Exec
add wave -noupdate /hdl_top/dut_lc3/npc_out_dec
add wave -noupdate /hdl_top/dut_lc3/E_Control
add wave -noupdate /hdl_top/dut_lc3/W_Control
add wave -noupdate /hdl_top/dut_lc3/Mem_Control
add wave -noupdate /hdl_top/dut_lc3/bypass_alu_1
add wave -noupdate /hdl_top/dut_lc3/bypass_alu_2
add wave -noupdate /hdl_top/dut_lc3/bypass_mem_1
add wave -noupdate /hdl_top/dut_lc3/bypass_mem_2
add wave -noupdate /hdl_top/dut_lc3/VSR1
add wave -noupdate /hdl_top/dut_lc3/VSR2
add wave -noupdate /hdl_top/dut_lc3/aluout
add wave -noupdate /hdl_top/dut_lc3/pcout
add wave -noupdate /hdl_top/dut_lc3/psr
add wave -noupdate /hdl_top/dut_lc3/W_Control_out
add wave -noupdate /hdl_top/dut_lc3/Mem_Control_out
add wave -noupdate /hdl_top/dut_lc3/sr1
add wave -noupdate /hdl_top/dut_lc3/sr2
add wave -noupdate /hdl_top/dut_lc3/dr
add wave -noupdate /hdl_top/dut_lc3/NZP
add wave -noupdate /hdl_top/dut_lc3/mem_state
add wave -noupdate /hdl_top/dut_lc3/M_Control
add wave -noupdate /hdl_top/dut_lc3/M_Data
add wave -noupdate /hdl_top/dut_lc3/memout
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/fetch_in_monitor_struct
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/initiator_responder
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/clock_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/reset_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/enable_updatePC_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/enable_fetch_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/taddr_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/br_taken_i
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/count
add wave -noupdate /hdl_top/fetch_env_fin_agent_mon_bfm/go
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/fetch_out_monitor_struct
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/initiator_responder
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/clock_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/reset_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/npc_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/pc_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/instrmem_rd_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/temp_npc_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/temp_instr_re_i
add wave -noupdate /hdl_top/fetch_env_fout_agent_mon_bfm/go
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {104 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 435
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
WaveRestoreZoom {6 ns} {138 ns}
