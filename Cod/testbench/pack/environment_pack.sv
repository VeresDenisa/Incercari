package environment_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import sequence_pack::*;
  
    import agent_pack::*;
    import coverage_pack::*;
   
    `include "testbench/environment_config.svh"
    
    `include "testbench/CD/test/environment/CD_environment.svh"

    `include "testbench/CM/test/environment/CM_environment.svh"

    `include "testbench/CONF/test/environment/sequencer/CONF_input_virtual_sequencer.svh"
    `include "testbench/CONF/test/environment/sequencer/CONF_output_virtual_sequencer.svh"

    `include "testbench/CONF/test/sequence/CONF_input_virtual_sequence.svh"
    `include "testbench/CONF/test/sequence/CONF_output_virtual_sequence.svh"

    `include "testbench/DB/test/environment/DB_environment.svh"

    `include "testbench/LM/test/environment/LM_environment.svh"

    `include "testbench/UART/test/environment/UART_environment.svh"
    
    `include "testbench/VGA/test/environment/VGA_environment.svh"
  endpackage : environment_pack