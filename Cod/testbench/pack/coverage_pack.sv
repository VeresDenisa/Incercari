package coverage_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
  
    `include "testbench/CD/test/environment/coverage/CD_coverage.svh"
    `include "testbench/CD/test/environment/coverage/CD_covergroup.sv"

    `include "testbench/CM/test/environment/coverage/CM_coverage.svh"
    `include "testbench/CM/test/environment/coverage/CM_input_covergroup.sv"
    `include "testbench/CM/test/environment/coverage/CM_output_covergroup.sv"

    `include "testbench/CONF/test/environment/coverage/CONF_covergroup.sv"

    `include "testbench/DB/test/environment/coverage/DB_coverage.svh"
    `include "testbench/DB/test/environment/coverage/DB_covergroup.sv"

    `include "testbench/LM/test/environment/coverage/LM_coverage.svh"
    `include "testbench/LM/test/environment/coverage/LM_covergroup.sv"

    `include "testbench/UART/test/environment/coverage/UART_coverage.svh"
    `include "testbench/UART/test/environment/coverage/UART_covergroup.sv"
    
    `include "testbench/VGA/test/environment/coverage/VGA_coverage.svh"
    `include "testbench/VGA/test/environment/coverage/VGA_covergroup.sv"
  endpackage : coverage_pack