import CONF_item_pack::*;

interface CONF_output_VIF(input bit clk);

    logic c_ready;

	logic [C_ADDR_WIDTH-1:0] c_addr;
	logic [C_DATA_WIDTH-1:0] c_data;
	logic c_valid;

    clocking driver@(posedge clk);
        output c_ready;
    endclocking

    clocking monitor@(posedge clk);
        input c_ready;
        input c_addr;
        input c_data;
        input c_valid;
    endclocking

    task send(CONF_item t);
        @(driver);
        driver.c_ready <= t.c_ready;
    endtask : send

    function automatic void receive(ref CONF_item t);
        t.c_ready = monitor.c_ready;
        t.c_addr  = monitor.c_addr;
        t.c_data  = monitor.c_data;
        t.c_valid = monitor.c_valid;
    endfunction
endinterface : CONF_output_VIF