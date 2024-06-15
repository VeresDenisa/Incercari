import VGA_item_pack::*;

interface VGA_output_VIF(input bit clk);
    logic HSync;
	logic VSync;
	logic [COLOR_WIDTH-1:0] Red;
	logic [COLOR_WIDTH-1:0] Green;
	logic [COLOR_WIDTH-1:0] Blue;

    clocking monitor@(posedge clk);
        input HSync;
        input VSync;
        input Red;
        input Green;
        input Blue;
    endclocking

    function automatic void receive(ref VGA_output_item t);
        t.HSync = monitor.HSync;
        t.VSync = monitor.VSync;
        t.Red   = monitor.Red;
        t.Green = monitor.Green;
        t.Blue  = monitor.Blue;
    endfunction
endinterface : VGA_output_VIF