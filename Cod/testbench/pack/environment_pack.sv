package environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import sequence_pack::*;
  
    import agent_pack::*;
    import coverage_pack::*;
   
    `include "testbench/environment_config.svh"
    
    `include "testbench/DB/test/environment/DB_environment.svh"
  endpackage : environment_pack