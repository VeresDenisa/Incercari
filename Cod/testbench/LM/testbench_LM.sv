import uvm_pkg::*;
`include "uvm_macros.svh"
 
import test_pack::*;

`define CLOCK 10

module testbench_LM;  
    bit clk;
    bit rst_n;
    bit switch;
    
    initial begin
        clk = 1'b0;
        forever #(`CLOCK/2) clk = ~clk;
    end

    initial begin
        rst_n = 1'b1;
        #`CLOCK rst_n = 1'b0;
        #`CLOCK rst_n = 1'b1;
    end

    initial begin
        switch = 1'b0;
    end
    
    LM_VIF          LM_i(clk);
    UART_output_VIF UART_output_i(clk);
    CM_output_VIF   CM_output_i(clk);
    
    LM LM_DUT (
        .clk(clk),
        .rst_n(rst_n),
        .UART_data_debug_switch(switch),
        .UART_data(UART_output_i.out),
        .UART_data_valid(UART_output_i.valid_out),
        .CM_errors(CM_output_i.Config_Error),
        .CM_errors_valid(CM_output_i.Error_Valid),
        .UART_errors(UART_output_i.error),
        .UART_errors_valid(UART_output_i.valid_error),
        .config_notification(CM_output_i.Config_Status),
        .leds(LM_i.leds)
        );
        
    initial begin
        uvm_config_db#(virtual LM_VIF)         ::set(null, "uvm_test_top.env.LM_agent_h*",          "LM_VIF",          LM_i);
        uvm_config_db#(virtual CM_output_VIF)  ::set(null, "uvm_test_top.env.CM_output_agent_h*",   "CM_output_VIF",   CM_output_i);
        uvm_config_db#(virtual UART_output_VIF)::set(null, "uvm_test_top.env.UART_output_agent_h*", "UART_output_VIF", UART_output_i);
    end
    
    initial begin
        run_test();
    end
    
    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule : testbench_LM