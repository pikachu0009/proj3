
class alu_test extends test_top;

  `uvm_component_utils( alu_test );

  function new( string name = "", uvm_component parent = null );
    super.new( name, parent );
  endfunction

  virtual function void build_phase(uvm_phase phase);
    // The factory override below is an example of how to replace the lc3_bench_sequence_base 
    // sequence with the example_derived_test_sequence.
     set_type_override_by_type(lc3_bench_sequence_base::get_type(), alu_test_sequence::get_type());
    // Execute the build_phase of test_top AFTER all factory overrides have been created.
    super.build_phase(phase);
  endfunction

endclass