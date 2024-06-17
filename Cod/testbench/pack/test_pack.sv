package test_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
    import sequence_pack::*;
  
    import environment_pack::*;

    `define CLOCK 10
  
    `include "testbench/CD/test/test/CD_test.svh"
    `include "testbench/CD/test/test/CD_test_no_config.svh"

    `include "testbench/CM/test/test/CM_test.svh"

    `include "testbench/DB/test/test/DB_test.svh"

    `include "testbench/LM/test/test/LM_test.svh"

    `include "testbench/UART/test/test/UART_test.svh"

    `include "testbench/VGA/test/test/VGA_test.svh"

    `include "testbench/VGA/test/test/CS_test.svh"
  endpackage : test_pack