package test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import sequence_pack::*;
  
    import environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/DB/test/test/DB_test.svh"
  endpackage : test_pack