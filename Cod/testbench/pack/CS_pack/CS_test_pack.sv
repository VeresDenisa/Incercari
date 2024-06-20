package CS_test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import CS_item_pack::*;
    import CS_sequence_pack::*;
  
    import CS_environment_pack::*;

    `define CLOCK 10

    `include "testbench/CS/test/CS_test.svh"
  endpackage : CS_test_pack