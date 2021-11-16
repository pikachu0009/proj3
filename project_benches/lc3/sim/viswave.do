 

onerror resume
wave tags F0
wave update off

wave spacer -backgroundcolor Salmon { control_env_cin_agent }
wave add uvm_test_top.environment.control_env.cin_agent.cin_agent_monitor.txn_stream -radix string -tag F0
wave group control_env_cin_agent_bus
wave add -group control_env_cin_agent_bus hdl_top.control_env_cin_agent_bus.* -radix hexadecimal -tag F0
wave group control_env_cin_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { control_env_cout_agent }
wave add uvm_test_top.environment.control_env.cout_agent.cout_agent_monitor.txn_stream -radix string -tag F0
wave group control_env_cout_agent_bus
wave add -group control_env_cout_agent_bus hdl_top.control_env_cout_agent_bus.* -radix hexadecimal -tag F0
wave group control_env_cout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { fetch_env_fin_agent }
wave add uvm_test_top.environment.fetch_env.fin_agent.fin_agent_monitor.txn_stream -radix string -tag F0
wave group fetch_env_fin_agent_bus
wave add -group fetch_env_fin_agent_bus hdl_top.fetch_env_fin_agent_bus.* -radix hexadecimal -tag F0
wave group fetch_env_fin_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { fetch_env_fout_agent }
wave add uvm_test_top.environment.fetch_env.fout_agent.fout_agent_monitor.txn_stream -radix string -tag F0
wave group fetch_env_fout_agent_bus
wave add -group fetch_env_fout_agent_bus hdl_top.fetch_env_fout_agent_bus.* -radix hexadecimal -tag F0
wave group fetch_env_fout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { execute_env_exin_agent }
wave add uvm_test_top.environment.execute_env.exin_agent.exin_agent_monitor.txn_stream -radix string -tag F0
wave group execute_env_exin_agent_bus
wave add -group execute_env_exin_agent_bus hdl_top.execute_env_exin_agent_bus.* -radix hexadecimal -tag F0
wave group execute_env_exin_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { execute_env_exout_agent }
wave add uvm_test_top.environment.execute_env.exout_agent.exout_agent_monitor.txn_stream -radix string -tag F0
wave group execute_env_exout_agent_bus
wave add -group execute_env_exout_agent_bus hdl_top.execute_env_exout_agent_bus.* -radix hexadecimal -tag F0
wave group execute_env_exout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { decode_env_din_agent }
wave add uvm_test_top.environment.decode_env.din_agent.din_agent_monitor.txn_stream -radix string -tag F0
wave group decode_env_din_agent_bus
wave add -group decode_env_din_agent_bus hdl_top.decode_env_din_agent_bus.* -radix hexadecimal -tag F0
wave group decode_env_din_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { decode_env_dout_agent }
wave add uvm_test_top.environment.decode_env.dout_agent.dout_agent_monitor.txn_stream -radix string -tag F0
wave group decode_env_dout_agent_bus
wave add -group decode_env_dout_agent_bus hdl_top.decode_env_dout_agent_bus.* -radix hexadecimal -tag F0
wave group decode_env_dout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { memaccess_env_memin_agent }
wave add uvm_test_top.environment.memaccess_env.memin_agent.memin_agent_monitor.txn_stream -radix string -tag F0
wave group memaccess_env_memin_agent_bus
wave add -group memaccess_env_memin_agent_bus hdl_top.memaccess_env_memin_agent_bus.* -radix hexadecimal -tag F0
wave group memaccess_env_memin_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { memaccess_env_memout_agent }
wave add uvm_test_top.environment.memaccess_env.memout_agent.memout_agent_monitor.txn_stream -radix string -tag F0
wave group memaccess_env_memout_agent_bus
wave add -group memaccess_env_memout_agent_bus hdl_top.memaccess_env_memout_agent_bus.* -radix hexadecimal -tag F0
wave group memaccess_env_memout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { writeback_env_wbin_agent }
wave add uvm_test_top.environment.writeback_env.wbin_agent.wbin_agent_monitor.txn_stream -radix string -tag F0
wave group writeback_env_wbin_agent_bus
wave add -group writeback_env_wbin_agent_bus hdl_top.writeback_env_wbin_agent_bus.* -radix hexadecimal -tag F0
wave group writeback_env_wbin_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { writeback_env_wbout_agent }
wave add uvm_test_top.environment.writeback_env.wbout_agent.wbout_agent_monitor.txn_stream -radix string -tag F0
wave group writeback_env_wbout_agent_bus
wave add -group writeback_env_wbout_agent_bus hdl_top.writeback_env_wbout_agent_bus.* -radix hexadecimal -tag F0
wave group writeback_env_wbout_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { imem_agent }
wave add uvm_test_top.environment.imem_agent.imem_agent_monitor.txn_stream -radix string -tag F0
wave group imem_agent_bus
wave add -group imem_agent_bus hdl_top.imem_agent_bus.* -radix hexadecimal -tag F0
wave group imem_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]
wave spacer -backgroundcolor Salmon { dmem_agent }
wave add uvm_test_top.environment.dmem_agent.dmem_agent_monitor.txn_stream -radix string -tag F0
wave group dmem_agent_bus
wave add -group dmem_agent_bus hdl_top.dmem_agent_bus.* -radix hexadecimal -tag F0
wave group dmem_agent_bus -collapse
wave insertion [expr [wave index insertpoint] +1]

wave update on
WaveSetStreamView

