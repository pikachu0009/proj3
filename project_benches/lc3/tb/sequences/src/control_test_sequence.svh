class control_test_sequence extends lc3_bench_sequence_base;

  `uvm_object_utils( control_test_sequence );

    typedef imem_CONTROL_responder_sequence  imem_agent_control_responder_seq_t;
  imem_agent_control_responder_seq_t imem_agent_control_responder_seq;

  function new(string name = "" );
    super.new(name);
  endfunction

    virtual task body();
    // pragma uvmf custom body begin


     
    // Construct sequences here
    imem_agent_control_responder_seq  = imem_agent_control_responder_seq_t::type_id::create("imem_agent_control_responder_seq");
    dmem_agent_responder_seq  = dmem_agent_responder_seq_t::type_id::create("dmem_agent_responder_seq");
  
  
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
    // Start RESPONDER sequences here
    fork
      imem_agent_control_responder_seq.start(imem_agent_sequencer);
      dmem_agent_responder_seq.start(dmem_agent_sequencer);
    join_none
    // Start INITIATOR sequences here
    fork
    join
    // UVMF_CHANGE_ME : Extend the simulation XXX number of clocks after 
    // the last sequence to allow for the last sequence item to flow 
    // through the design.
    fork
      control_env_cin_agent_config.wait_for_num_clocks(cycles);
      control_env_cout_agent_config.wait_for_num_clocks(cycles);
      fetch_env_fin_agent_config.wait_for_num_clocks(cycles);
      fetch_env_fout_agent_config.wait_for_num_clocks(cycles);
      execute_env_exin_agent_config.wait_for_num_clocks(cycles);
      execute_env_exout_agent_config.wait_for_num_clocks(cycles);
      decode_env_din_agent_config.wait_for_num_clocks(cycles);
      decode_env_dout_agent_config.wait_for_num_clocks(cycles);
      memaccess_env_memin_agent_config.wait_for_num_clocks(cycles);
      memaccess_env_memout_agent_config.wait_for_num_clocks(cycles);
      writeback_env_wbin_agent_config.wait_for_num_clocks(cycles);
      writeback_env_wbout_agent_config.wait_for_num_clocks(cycles);
      imem_agent_config.wait_for_num_clocks(cycles);
      dmem_agent_config.wait_for_num_clocks(cycles);
    join

    // pragma uvmf custom body end
  endtask

endclass
