package CS_sequence_pack;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
  
    import CS_item_pack::*;

    `include "testbench/DB/test/sequence/DB_sequence.svh"

    `include "testbench/UART/test/sequence/UART_input_sequence.svh"
    `include "testbench/UART/test/sequence/UART_valid_sequence.svh"
  endpackage : CS_sequence_pack