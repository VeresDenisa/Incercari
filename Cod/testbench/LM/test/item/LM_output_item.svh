class LM_output_item extends uvm_sequence_item;
    `uvm_object_utils(LM_output_item);

    logic [WIDTH_LEDS-1:0] leds;
    
    function new(string name = "LM_output_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(LM_output_item item);
    extern function void copy(LM_output_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : LM_output_item


function bit LM_output_item::compare(LM_output_item item);
  if(this.leds !== item.leds)  return 1'b0;
  return 1'b1;
endfunction : compare

function void LM_output_item::copy(LM_output_item item);
  this.leds = item.leds;
endfunction : copy

function void LM_output_item::setDefault();
  this.leds = 'b0;
endfunction : setDefault

function bit LM_output_item::equalDefault();
  if(this.leds !== 'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string LM_output_item::convert2string();
    return $sformatf("LEDS:%0h", leds);
endfunction : convert2string