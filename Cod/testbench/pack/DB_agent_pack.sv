package DB_agent_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    
    import DB_item_pack::*;
  
    `include "src/DB/test/environment/DB_agent/DB_config.svh"
  
    `include "src/DB/test/environment/DB_agent/DB_driver.svh"
    `include "src/DB/test/environment/DB_agent/DB_monitor.svh"
    
    `include "src/DB/test/environment/DB_agent/DB_agent.svh"
  endpackage : DB_agent_pack