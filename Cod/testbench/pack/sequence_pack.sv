package sequence_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import item_pack::*;
  
    `include "testbench/CM/test/sequence/CM_input_sequence.svh"

    `include "testbench/CONF/test/sequence/CONF_input_sequence.svh"
    `include "testbench/CONF/test/sequence/CONF_output_sequence.svh"

    `include "testbench/DB/test/sequence/DB_sequence.svh"

    `include "testbench/UART/test/sequence/UART_input_sequence.svh"
    `include "testbench/UART/test/sequence/UART_valid_sequence.svh"
    `include "testbench/UART/test/sequence/UART_output_sequence.svh"

    `include "testbench/VGA/test/sequence/VGA_input_sequence.svh"
  endpackage : sequence_pack