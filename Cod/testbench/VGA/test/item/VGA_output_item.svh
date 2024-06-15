class VGA_output_item extends uvm_sequence_item;
    `uvm_object_utils(VGA_output_item);

    rand logic HSync;
	rand logic VSync;
	rand logic [COLOR_WIDTH-1:0] Red;
	rand logic [COLOR_WIDTH-1:0] Green;
	rand logic [COLOR_WIDTH-1:0] Blue;
    
    function new(string name = "VGA_output_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(VGA_output_item item);
    extern function void copy(VGA_output_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : VGA_output_item


function bit VGA_output_item::compare(VGA_output_item item);
    if(this.HSync !== item.HSync) return 1'b0;
    if(this.VSync !== item.VSync) return 1'b0;
    if(this.Red   !== item.Red)   return 1'b0;
    if(this.Green !== item.Green) return 1'b0;
    if(this.Blue  !== item.Blue)  return 1'b0;
    return 1'b1;
endfunction : compare

function void VGA_output_item::copy(VGA_output_item item);
    this.HSync = item.HSync;
    this.VSync = item.VSync;
    this.Red   = item.Red;
    this.Green = item.Green;
    this.Blue  = item.Blue;
endfunction : copy

function void VGA_output_item::setDefault();
    this.HSync = 'b0;
    this.VSync = 'b0;
    this.Red   = 'b0;
    this.Green = 'b0;
    this.Blue  = 'b0;
endfunction : setDefault

function bit VGA_output_item::equalDefault();
    if(this.HSync !== 'b0) return 1'b0;
    if(this.VSync !== 'b0) return 1'b0;
    if(this.Red   !== 'b0) return 1'b0;
    if(this.Green !== 'b0) return 1'b0;
    if(this.Blue  !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string VGA_output_item::convert2string();
    return $sformatf("HSync:%0b, VSync:%0b, Red:%0b, Green:%0b, Blue:%0b", HSync, VSync, Red, Green, Blue);
endfunction : convert2string