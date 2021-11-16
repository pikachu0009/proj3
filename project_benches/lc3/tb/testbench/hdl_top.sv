//----------------------------------------------------------------------
// Created with uvmf_gen version 2019.4_2
//----------------------------------------------------------------------
// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------                     
//               
// Description: This top level module instantiates all synthesizable
//    static content.  This and tb_top.sv are the two top level modules
//    of the simulation.  
//
//    This module instantiates the following:
//        DUT: The Design Under Test
//        Interfaces:  Signal bundles that contain signals connected to DUT
//        Driver BFM's: BFM's that actively drive interface signals
//        Monitor BFM's: BFM's that passively monitor interface signals
//
//----------------------------------------------------------------------

//----------------------------------------------------------------------
//

import lc3_parameters_pkg::*;
import uvmf_base_pkg_hdl::*;

module hdl_top;
  // pragma attribute hdl_top partition_module_xrtl                                            
// pragma uvmf custom clock_generator begin

//  int cycles = 100;
  
  bit clk;
  // Instantiate a clk driver 
  // tbx clkgen
  
   
	wire			complete_instr, complete_data;
	
	wire	[15:0] 	pc, Data_addr;
	wire			instrmem_rd, Data_rd; 
	wire	[15:0]	Instr_dout, Data_dout;
	wire	[15:0]	Data_din;
	
	wire enable_decode_out;
	wire enable_execute_out;
	
	reg e_decode;
	reg e_execute;
	
	always@(posedge clk)
	begin
	  e_decode <= dut_lc3.enable_decode;
	  e_execute <= dut_lc3.enable_execute;
	end
	
	assign enable_decode_out = e_decode;
	assign enable_execute_out = e_execute;

	
  initial begin
    clk = 0;
    #5ns;
    forever begin
      clk = ~clk;
      #5ns;
    end
  end
// pragma uvmf custom clock_generator end

// pragma uvmf custom reset_generator begin
  bit rst;
  // Instantiate a rst driver
  // tbx clkgen
  initial begin
    rst = 1; 
    #54ns;
    rst =  0; 
  end
// pragma uvmf custom reset_generator end

  // pragma uvmf custom module_item_additional begin
  // pragma uvmf custom module_item_additional end

  // Instantiate the signal bundle, monitor bfm and driver bfm for each interface.
  // The signal bundle, _if, contains signals to be connected to the DUT.
  // The monitor, monitor_bfm, observes the bus, _if, and captures transactions.
  // The driver, driver_bfm, drives transactions onto the bus, _if.
  control_in_if  control_env_cin_agent_bus(
     // pragma uvmf custom control_env_cin_agent_bus_connections begin
     .clock(clk), .reset(rst), 
  .complete_data(dut_lc3.complete_data),
  .complete_instr(dut_lc3.complete_instr),
  .IR(dut_lc3.IR),
  .psr(dut_lc3.psr),
  .IR_Exec(dut_lc3.IR_Exec),
  .IMem_dout(dut_lc3.Instr_dout),
  .NZP(dut_lc3.NZP)
     // pragma uvmf custom control_env_cin_agent_bus_connections end
     );
  control_out_if  control_env_cout_agent_bus(
     // pragma uvmf custom control_env_cout_agent_bus_connections begin
     .clock(clk), .reset(rst),.enable_updatePC(dut_lc3.enable_updatePC),
  .enable_fetch(dut_lc3.enable_fetch),
  .enable_decode(dut_lc3.enable_decode),
  .enable_execute(dut_lc3.enable_execute),
  .enable_writeback(dut_lc3.enable_writeback),
  .bypass_alu_1(dut_lc3.bypass_alu_1),
  .bypass_alu_2(dut_lc3.bypass_alu_2),
  .bypass_mem_1(dut_lc3.bypass_mem_1),
  .bypass_mem_2(dut_lc3.bypass_mem_2),
  .mem_state(dut_lc3.mem_state),
  .br_taken(dut_lc3.br_taken)
     // pragma uvmf custom control_env_cout_agent_bus_connections end
     );
  fetch_in_if  fetch_env_fin_agent_bus(
     // pragma uvmf custom fetch_env_fin_agent_bus_connections begin
     .clock(clk), .reset(rst),
  .enable_updatePC(dut_lc3.enable_updatePC),
  .enable_fetch(dut_lc3.enable_fetch),
  .taddr(dut_lc3.pcout),
  .br_taken(dut_lc3.br_taken)
     // pragma uvmf custom fetch_env_fin_agent_bus_connections end
     );
  fetch_out_if  fetch_env_fout_agent_bus(
     // pragma uvmf custom fetch_env_fout_agent_bus_connections begin
     .clock(clk), .reset(rst),
	   .npc(dut_lc3.npc_out_fetch),
  .pc(dut_lc3.pc),
  .instrmem_rd(dut_lc3.instrmem_rd)
     // pragma uvmf custom fetch_env_fout_agent_bus_connections end
     );
  execute_in_if  execute_env_exin_agent_bus(
     // pragma uvmf custom execute_env_exin_agent_bus_connections begin
     .clock(clk), .reset(rst),
	 .enable_execute(dut_lc3.enable_execute),
   .E_control(dut_lc3.E_Control),
   .bypass_alu_1(dut_lc3.bypass_alu_1),
   .bypass_alu_2(dut_lc3.bypass_alu_2),
  .bypass_mem_1(dut_lc3.bypass_mem_1),
   .bypass_mem_2(dut_lc3.bypass_mem_2),
  .IR(dut_lc3.IR),
  .npc_in(dut_lc3.npc_out_dec),
  .Mem_Control_in(dut_lc3.Mem_Control),
  .W_Control_in(dut_lc3.W_Control),
  .VSR1(dut_lc3.VSR1),
  .VSR2(dut_lc3.VSR2),
  .Mem_Bypass_Val(dut_lc3.memout)
	 
     // pragma uvmf custom execute_env_exin_agent_bus_connections end
     );
  execute_out_if  execute_env_exout_agent_bus(
     // pragma uvmf custom execute_env_exout_agent_bus_connections begin
     .clock(clk), .reset(rst), .aluout(dut_lc3.aluout),
  .W_Control_out(dut_lc3.W_Control_out),
  .Mem_Control_out(dut_lc3.Mem_Control_out),
  .M_Data(dut_lc3.M_Data),
  .dr(dut_lc3.dr),
  .sr1(dut_lc3.sr1),
  .sr2(dut_lc3.sr2),
  .pcout(dut_lc3.pcout),
  .NZP(dut_lc3.NZP),
  .IR_Exec(dut_lc3.IR_Exec),
  .enable_execute(enable_execute_out)
     // pragma uvmf custom execute_env_exout_agent_bus_connections end
     );
  decode_in_if  decode_env_din_agent_bus(
     // pragma uvmf custom decode_env_din_agent_bus_connections begin
     .clock(clk), .reset(rst), .enable_decode(dut_lc3.enable_decode),
  .dout(dut_lc3.Instr_dout),
  .npc_in(dut_lc3.npc_out_fetch) 
     // pragma uvmf custom decode_env_din_agent_bus_connections end
     );
  decode_out_if  decode_env_dout_agent_bus(
     // pragma uvmf custom decode_env_dout_agent_bus_connections begin
     .clock(clk), .reset(rst), .IR(dut_lc3.IR),
  .npc_out(dut_lc3.npc_out_dec),
  .E_Control(dut_lc3.E_Control),
  .W_Control(dut_lc3.W_Control),
  .Mem_Control(dut_lc3.Mem_Control),
  .enable_decode(enable_decode_out)
     // pragma uvmf custom decode_env_dout_agent_bus_connections end
     );
  memaccess_in_if  memaccess_env_memin_agent_bus(
     // pragma uvmf custom memaccess_env_memin_agent_bus_connections begin
     .clock(clk), .reset(rst), .M_Data(dut_lc3.M_Data),
  .M_Addr(dut_lc3.pcout),
  .M_Control(dut_lc3.Mem_Control_out),
  .mem_state(dut_lc3.mem_state),
  .DMem_dout(dut_lc3.Data_dout)
     // pragma uvmf custom memaccess_env_memin_agent_bus_connections end
     );
  memaccess_out_if  memaccess_env_memout_agent_bus(
     // pragma uvmf custom memaccess_env_memout_agent_bus_connections begin
     .clock(clk), .reset(rst), .DMem_din(dut_lc3.Data_din),
  .memout(dut_lc3.memout),
  .DMem_rd(dut_lc3.Data_rd),  //************************************************************ DO AGAIN****************************************************************//
  .DMem_addr(dut_lc3.Data_addr)  // pragma uvmf custom memaccess_env_memout_agent_bus_connections end
     );
  writeback_in_if  writeback_env_wbin_agent_bus(
     // pragma uvmf custom writeback_env_wbin_agent_bus_connections begin
     .clock(clk), .reset(rst), .aluout(dut_lc3.aluout),
  .W_Control(dut_lc3.W_Control_out),
  .npc(dut_lc3.npc_out_dec),
  .pcout(dut_lc3.pcout),
  .memout(dut_lc3.memout),
  .enable_writeback(dut_lc3.enable_writeback),
  .sr1(dut_lc3.sr1),
  .sr2(dut_lc3.sr2),
  .dr(dut_lc3.dr)
     // pragma uvmf custom writeback_env_wbin_agent_bus_connections end
     );
  writeback_out_if  writeback_env_wbout_agent_bus(
     // pragma uvmf custom writeback_env_wbout_agent_bus_connections begin
     .clock(clk), .reset(rst), .vsr1(dut_lc3.VSR1),
  .vsr2(dut_lc3.VSR2),
  .psr(dut_lc3.psr)
     // pragma uvmf custom writeback_env_wbout_agent_bus_connections end
     );
  imem_if  imem_agent_bus(
     // pragma uvmf custom imem_agent_bus_connections begin
     .clock(clk), .reset(rst),.PC(pc),
 .instrmem_rd(instrmem_rd),
 //.I_macc(),
  .complete_instr(complete_instr),
  .Instr_dout(Instr_dout)
     // pragma uvmf custom imem_agent_bus_connections end
     );
  dmem_if  dmem_agent_bus(
     // pragma uvmf custom dmem_agent_bus_connections begin
     .clock(clk), .reset(rst), .complete_data(complete_data),
  .Data_dout(Data_dout),
  .Data_din(Data_din),
  .Data_rd(Data_rd),
  .Data_addr(Data_addr)
  //.D_macc()
     // pragma uvmf custom dmem_agent_bus_connections end
     );
	
  control_in_monitor_bfm  control_env_cin_agent_mon_bfm(control_env_cin_agent_bus.monitor_port);
  control_out_monitor_bfm  control_env_cout_agent_mon_bfm(control_env_cout_agent_bus.monitor_port);
  fetch_in_monitor_bfm  fetch_env_fin_agent_mon_bfm(fetch_env_fin_agent_bus.monitor_port);
  fetch_out_monitor_bfm  fetch_env_fout_agent_mon_bfm(fetch_env_fout_agent_bus.monitor_port);
  execute_in_monitor_bfm  execute_env_exin_agent_mon_bfm(execute_env_exin_agent_bus.monitor_port);
  execute_out_monitor_bfm  execute_env_exout_agent_mon_bfm(execute_env_exout_agent_bus.monitor_port);
  decode_in_monitor_bfm  decode_env_din_agent_mon_bfm(decode_env_din_agent_bus.monitor_port);
  decode_out_monitor_bfm  decode_env_dout_agent_mon_bfm(decode_env_dout_agent_bus.monitor_port);
  memaccess_in_monitor_bfm  memaccess_env_memin_agent_mon_bfm(memaccess_env_memin_agent_bus.monitor_port);
  memaccess_out_monitor_bfm  memaccess_env_memout_agent_mon_bfm(memaccess_env_memout_agent_bus.monitor_port);
  writeback_in_monitor_bfm  writeback_env_wbin_agent_mon_bfm(writeback_env_wbin_agent_bus.monitor_port);
  writeback_out_monitor_bfm  writeback_env_wbout_agent_mon_bfm(writeback_env_wbout_agent_bus.monitor_port);
  imem_monitor_bfm  imem_agent_mon_bfm(imem_agent_bus.monitor_port);
  dmem_monitor_bfm  dmem_agent_mon_bfm(dmem_agent_bus.monitor_port);
  imem_driver_bfm  imem_agent_drv_bfm(imem_agent_bus.responder_port);
  dmem_driver_bfm  dmem_agent_drv_bfm(dmem_agent_bus.responder_port);

  // pragma uvmf custom dut_instantiation begin
  // UVMF_CHANGE_ME : Add DUT and connect to signals in _bus interfaces listed above
  // Instantiate your DUT here
  // These DUT's instantiated to show verilog and vhdl instantiation

	
     LC3 dut_lc3(.clock(clk), .reset(rst), .pc(pc), .instrmem_rd(instrmem_rd), .Instr_dout(Instr_dout), .Data_addr(Data_addr), .complete_instr(complete_instr), .complete_data(complete_data),  
				.Data_din(Data_din), .Data_dout(Data_dout), .Data_rd(Data_rd)	);
  // pragma uvmf custom dut_instantiation end

  initial begin      // tbx vif_binding_block 
    import uvm_pkg::uvm_config_db;
	
	//decode_env_din_agent_mon_bfm.cycles = cycles;
	//execute_env_exin_agent_mon_bfm.cycles = cycles;
	//fetch_env_fin_agent_mon_bfm.cycles = cycles;
	//control_env_cin_agent_mon_bfm.cycles = cycles;
	//memaccess_env_memin_agent_mon_bfm.cycles = cycles;
	//writeback_env_wbin_agent_mon_bfm.cycles = cycles;
    // The monitor_bfm and driver_bfm for each interface is placed into the uvm_config_db.
    // They are placed into the uvm_config_db using the string names defined in the parameters package.
    // The string names are passed to the agent configurations by test_top through the top level configuration.
    // They are retrieved by the agents configuration class for use by the agent.
    uvm_config_db #( virtual control_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , control_env_cin_agent_BFM , control_env_cin_agent_mon_bfm ); 
    uvm_config_db #( virtual control_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , control_env_cout_agent_BFM , control_env_cout_agent_mon_bfm ); 
    uvm_config_db #( virtual fetch_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , fetch_env_fin_agent_BFM , fetch_env_fin_agent_mon_bfm ); 
    uvm_config_db #( virtual fetch_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , fetch_env_fout_agent_BFM , fetch_env_fout_agent_mon_bfm ); 
    uvm_config_db #( virtual execute_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , execute_env_exin_agent_BFM , execute_env_exin_agent_mon_bfm ); 
    uvm_config_db #( virtual execute_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , execute_env_exout_agent_BFM , execute_env_exout_agent_mon_bfm ); 
    uvm_config_db #( virtual decode_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , decode_env_din_agent_BFM , decode_env_din_agent_mon_bfm ); 
    uvm_config_db #( virtual decode_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , decode_env_dout_agent_BFM , decode_env_dout_agent_mon_bfm ); 
    uvm_config_db #( virtual memaccess_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , memaccess_env_memin_agent_BFM , memaccess_env_memin_agent_mon_bfm ); 
    uvm_config_db #( virtual memaccess_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , memaccess_env_memout_agent_BFM , memaccess_env_memout_agent_mon_bfm ); 
    uvm_config_db #( virtual writeback_in_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , writeback_env_wbin_agent_BFM , writeback_env_wbin_agent_mon_bfm ); 
    uvm_config_db #( virtual writeback_out_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , writeback_env_wbout_agent_BFM , writeback_env_wbout_agent_mon_bfm ); 
    uvm_config_db #( virtual imem_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , imem_agent_BFM , imem_agent_mon_bfm ); 
    uvm_config_db #( virtual dmem_monitor_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , dmem_agent_BFM , dmem_agent_mon_bfm ); 
    uvm_config_db #( virtual imem_driver_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , imem_agent_BFM , imem_agent_drv_bfm  );
    uvm_config_db #( virtual dmem_driver_bfm  )::set( null , UVMF_VIRTUAL_INTERFACES , dmem_agent_BFM , dmem_agent_drv_bfm  );
  end

endmodule
