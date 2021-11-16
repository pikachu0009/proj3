//----------------------------------------------------------------------
// Created with uvmf_gen version 2019.4_2
//----------------------------------------------------------------------
// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//                                          
// DESCRIPTION: This file contains the top level sequence used in register_test.
// It uses the UVM built in register test.  Specific UVM built-in tests can be
// selected in the body task.
//
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//

class register_test_sequence extends lc3_bench_sequence_base;

  `uvm_object_utils( register_test_sequence );


  // pragma uvmf custom class_item_additional begin
  // pragma uvmf custom class_item_additional end

  function new(string name = "" );
    super.new(name);
  endfunction

  // ****************************************************************************
  virtual task body();

    // Reset the DUT
    fork
      control_env_cin_agent_config.wait_for_reset();
      control_env_cout_agent_config.wait_for_reset();
      fetch_env_fin_agent_config.wait_for_reset();
      fetch_env_fout_agent_config.wait_for_reset();
      execute_env_exin_agent_config.wait_for_reset();
      execute_env_exout_agent_config.wait_for_reset();
      decode_env_din_agent_config.wait_for_reset();
      decode_env_dout_agent_config.wait_for_reset();
      memaccess_env_memin_agent_config.wait_for_reset();
      memaccess_env_memout_agent_config.wait_for_reset();
      writeback_env_wbin_agent_config.wait_for_reset();
      writeback_env_wbout_agent_config.wait_for_reset();
      imem_agent_config.wait_for_reset();
      dmem_agent_config.wait_for_reset();
    join

    // Perform your register test

  endtask

endclass

