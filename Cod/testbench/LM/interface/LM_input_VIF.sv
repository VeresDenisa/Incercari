import LM_item_pack::*;

interface LM_input_VIF(input bit clk);
    logic UART_data_debug_switch;

    logic [WIDTH_UART_DATA-1:0] UART_data;
    logic UART_data_valid;

    logic [WIDTH_VGA_ERROR-1:0] CM_errors;
    logic CM_errors_valid;

    logic [WIDTH_UART_ERROR-1:0] UART_errors;
    logic UART_errors_valid;

    logic [WIDTH_CONFIGURATION-1:0] config_notification;

    clocking driver@(posedge clk);
        output UART_data_debug_switch;
        output UART_data;
        output UART_data_valid;
        output CM_errors;
        output CM_errors_valid;
        output UART_errors;
        output UART_errors_valid;
        output config_notification;  
    endclocking

    clocking monitor@(posedge clk);
        input UART_data_debug_switch;
        input UART_data;
        input UART_data_valid;
        input CM_errors;
        input CM_errors_valid;
        input UART_errors;
        input UART_errors_valid;
        input config_notification;
    endclocking

    task send(LM_input_item t);
        @(driver);
        driver.UART_data_debug_switch <= t.UART_data_debug_switch;
        driver.UART_data              <= t.UART_data;
        driver.UART_data_valid        <= t.UART_data_valid;
        driver.CM_errors              <= t.CM_errors;
        driver.CM_errors_valid        <= t.CM_errors_valid;
        driver.UART_errors            <= t.UART_errors;
        driver.UART_errors_valid      <= t.UART_errors_valid;
        driver.config_notification    <= t.config_notification;
    endtask : send

    function automatic void receive(ref LM_input_item t);
        t.UART_data_debug_switch = monitor.UART_data_debug_switch;
        t.UART_data              = monitor.UART_data;
        t.UART_data_valid        = monitor.UART_data_valid;
        t.CM_errors              = monitor.CM_errors;
        t.CM_errors_valid        = monitor.CM_errors_valid;
        t.UART_errors            = monitor.UART_errors;
        t.UART_errors_valid      = monitor.UART_errors_valid;
        t.config_notification    = monitor.config_notification;
    endfunction
endinterface : LM_input_VIF