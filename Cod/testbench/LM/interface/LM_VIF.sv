import item_pack::*;

interface LM_VIF(input bit clk);
    logic [WIDTH_LEDS-1:0] leds;

    clocking monitor@(posedge clk);
        input leds;
    endclocking

    function automatic void receive(ref LM_item t);
        t.leds  = monitor.leds;
    endfunction
endinterface : LM_VIF