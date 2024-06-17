`define ASSInfo(msg = "") \
    $info($sformatf("%s: %m: %s", "PASS ASSERTION", msg))

module assertion_CD #(`include "../PARAM/CD_params.v") (
    input clk,
    input rst_n,
    
    input clkinVGA,
    
    input [WIDTH_CONFIG_ADDR-1:0]c_addr,
    input [WIDTH_CONFIG_DATA-1:0]c_data, 
    input  c_valid, 
    output c_ready, 
    
    output clk_VGA,
    output clk_UART,
    output clk_LM,
    output clk_DB
    );