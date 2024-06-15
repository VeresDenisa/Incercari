package DB_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import DB_item_pack::*;
  
    `include "testbench/DB/test/environment/agent/DB_config.svh"
  
    `include "testbench/DB/test/environment/agent/DB_driver.svh"
    `include "testbench/DB/test/environment/agent/DB_monitor.svh"
    
    `include "testbench/DB/test/environment/agent/DB_agent.svh"
  endpackage : DB_agent_pack