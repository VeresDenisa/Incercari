import uvm_pkg::*;
`include "uvm_macros.svh"
 
import test_pack::*;

`define CLOCK 10

module testbench_DB;  
    bit clk;
    bit rst_n;
    
    initial begin
        clk = 1'b0;
        forever #(`CLOCK/2) clk = ~clk;
    end

    initial begin
        rst_n = 1'b1;
        #`CLOCK rst_n = 1'b0;
        #`CLOCK rst_n = 1'b1;
    end
    
    DB_VIF DB_input_i(clk);
    DB_VIF DB_output_i(clk);
    
    DB DB_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .btnHS(DB_input_i.HS),
        .btnVS(DB_input_i.VS),
        .btnDF_UART(DB_input_i.DF_UART),
        .btnDF_VGA(DB_input_i.DF_VGA),
        .HS(DB_output_i.HS),
        .VS(DB_output_i.VS),
        .DF_UART(DB_output_i.DF_UART),
        .DF_VGA(DB_output_i.DF_VGA)
        );

    /*bind testbench_DB.DB_DUT DB_DUT_ASS (
        .clk(clk),
        .rst_n(rst_n),
        .btnHS(DB_input_i.HS),
        .btnVS(DB_input_i.VS),
        .btnDF_UART(DB_input_i.DF_UART),
        .btnDF_VGA(DB_input_i.DF_VGA),
        .HS(DB_output_i.HS),
        .VS(DB_output_i.VS),
        .DF_UART(DB_output_i.DF_UART),
        .DF_VGA(DB_output_i.DF_VGA)
        );*/
    
    initial begin
        uvm_config_db#(virtual DB_VIF)::set(null, "uvm_test_top.env.DB_agent_input_h*",  "DB_VIF", DB_input_i);
        uvm_config_db#(virtual DB_VIF)::set(null, "uvm_test_top.env.DB_agent_output_h*", "DB_VIF", DB_output_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_DB