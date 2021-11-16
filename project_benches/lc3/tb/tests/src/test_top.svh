//----------------------------------------------------------------------
// Created with uvmf_gen version 2019.4_2
//----------------------------------------------------------------------
// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------
// Description: This top level UVM test is the base class for all
//     future tests created for this project.
//
//     This test class contains:
//          Configuration:  The top level configuration for the project.
//          Environment:    The top level environment for the project.
//          Top_level_sequence:  The top level sequence for the project.
//                                        
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//

typedef lc3_env_configuration  lc3_env_configuration_t;
typedef lc3_environment  lc3_environment_t;

class test_top extends uvmf_test_base #(.CONFIG_T(lc3_env_configuration_t), 
                                        .ENV_T(lc3_environment_t), 
                                        .TOP_LEVEL_SEQ_T(lc3_bench_sequence_base));

  `uvm_component_utils( test_top );


  string interface_names[] = {
    control_env_cin_agent_BFM /* control_env_cin_agent     [0] */ , 
    control_env_cout_agent_BFM /* control_env_cout_agent     [1] */ , 
    fetch_env_fin_agent_BFM /* fetch_env_fin_agent     [2] */ , 
    fetch_env_fout_agent_BFM /* fetch_env_fout_agent     [3] */ , 
    execute_env_exin_agent_BFM /* execute_env_exin_agent     [4] */ , 
    execute_env_exout_agent_BFM /* execute_env_exout_agent     [5] */ , 
    decode_env_din_agent_BFM /* decode_env_din_agent     [6] */ , 
    decode_env_dout_agent_BFM /* decode_env_dout_agent     [7] */ , 
    memaccess_env_memin_agent_BFM /* memaccess_env_memin_agent     [8] */ , 
    memaccess_env_memout_agent_BFM /* memaccess_env_memout_agent     [9] */ , 
    writeback_env_wbin_agent_BFM /* writeback_env_wbin_agent     [10] */ , 
    writeback_env_wbout_agent_BFM /* writeback_env_wbout_agent     [11] */ , 
    imem_agent_BFM /* imem_agent     [12] */ , 
    dmem_agent_BFM /* dmem_agent     [13] */ 
};

uvmf_active_passive_t interface_activities[] = { 
    PASSIVE /* control_env_cin_agent     [0] */ , 
    PASSIVE /* control_env_cout_agent     [1] */ , 
    PASSIVE /* fetch_env_fin_agent     [2] */ , 
    PASSIVE /* fetch_env_fout_agent     [3] */ , 
    PASSIVE /* execute_env_exin_agent     [4] */ , 
    PASSIVE /* execute_env_exout_agent     [5] */ , 
    PASSIVE /* decode_env_din_agent     [6] */ , 
    PASSIVE /* decode_env_dout_agent     [7] */ , 
    PASSIVE /* memaccess_env_memin_agent     [8] */ , 
    PASSIVE /* memaccess_env_memout_agent     [9] */ , 
    PASSIVE /* writeback_env_wbin_agent     [10] */ , 
    PASSIVE /* writeback_env_wbout_agent     [11] */ , 
    ACTIVE /* imem_agent     [12] */ , 
    ACTIVE /* dmem_agent     [13] */   };

  // pragma uvmf custom class_item_additional begin
  // pragma uvmf custom class_item_additional end

  // ****************************************************************************
  // FUNCTION: new()
  // This is the standard system verilog constructor.  All components are 
  // constructed in the build_phase to allow factory overriding.
  //
  function new( string name = "", uvm_component parent = null );
     super.new( name ,parent );
  endfunction



  // ****************************************************************************
  // FUNCTION: build_phase()
  // The construction of the configuration and environment classes is done in
  // the build_phase of uvmf_test_base.  Once the configuraton and environment
  // classes are built then the initialize call is made to perform the
  // following: 
  //     Monitor and driver BFM virtual interface handle passing into agents
  //     Set the active/passive state for each agent
  // Once this build_phase completes, the build_phase of the environment is
  // executed which builds the agents.
  //
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // pragma uvmf custom configuration_settings_post_randomize begin
    // pragma uvmf custom configuration_settings_post_randomize end
    configuration.initialize(NA, "uvm_test_top.environment", interface_names, null, interface_activities);
		environment.configuration.imem_agent_config.has_coverage = 1;
  endfunction
  
  virtual function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
	environment.control_env.scoreboard.disable_scoreboard();
	environment.control_env.scoreboard.disable_end_of_test_activity_check();
	//environment.control_env.scoreboard.enable_wait_for_scoreboard_empty();
	environment.fetch_env.scoreboard.enable_wait_for_scoreboard_empty();
	environment.writeback_env.scoreboard.enable_wait_for_scoreboard_empty();
	environment.memaccess_env.scoreboard.enable_wait_for_scoreboard_empty();
	environment.execute_env.scoreboard.enable_wait_for_scoreboard_empty();
	environment.decode_env.scoreboard.enable_wait_for_scoreboard_empty();
	
  endfunction

endclass
