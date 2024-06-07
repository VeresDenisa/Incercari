class LM_input_item extends uvm_sequence_item;
    `uvm_object_utils(LM_input_item);

    rand logic UART_data_debug_switch;

    rand logic [WIDTH_UART_DATA-1:0] UART_data;
    rand logic UART_data_valid;

    rand logic [WIDTH_VGA_ERROR-1:0] CM_errors;
    rand logic CM_errors_valid;

    rand logic [WIDTH_UART_ERROR-1:0] UART_errors;
    rand logic UART_errors_valid;

    rand logic [WIDTH_CONFIGURATION-1:0] config_notification;
    
    function new(string name = "LM_input_item");
        super.new(name);
    endfunction : new
    
    extern function string convert2string(); 

    extern function bit  compare(LM_input_item item);
    extern function void copy(LM_input_item item); 
    extern function void setDefault(); 
    extern function bit  equalDefault(); 
endclass : LM_input_item


function bit LM_input_item::compare(LM_input_item item);
  if(this.UART_data_debug_switch !== item.UART_data_debug_switch)  return 1'b0;
  if(this.UART_data              !== item.UART_data             )  return 1'b0;
  if(this.UART_data_valid        !== item.UART_data_valid       )  return 1'b0;
  if(this.CM_errors              !== item.CM_errors             )  return 1'b0;
  if(this.CM_errors_valid        !== item.CM_errors_valid       )  return 1'b0;
  if(this.UART_errors            !== item.UART_errors           )  return 1'b0;
  if(this.UART_errors_valid      !== item.UART_errors_valid     )  return 1'b0;
  if(this.config_notification    !== item.config_notification   )  return 1'b0;
  return 1'b1;
endfunction : compare

function void LM_input_item::copy(LM_input_item item);
  this.UART_data_debug_switch = item.UART_data_debug_switch;
  this.UART_data              = item.UART_data;             
  this.UART_data_valid        = item.UART_data_valid;       
  this.CM_errors              = item.CM_errors;             
  this.CM_errors_valid        = item.CM_errors_valid;       
  this.UART_errors            = item.UART_errors;           
  this.UART_errors_valid      = item.UART_errors_valid;     
  this.config_notification    = item.config_notification;  
endfunction : copy

function void LM_input_item::setDefault();
  this.UART_data_debug_switch = 1'b0;
  this.UART_data              =  'b0;
  this.UART_data_valid        = 1'b0;
  this.CM_errors              =  'b0;
  this.CM_errors_valid        = 1'b0;
  this.UART_errors            =  'b0;
  this.UART_errors_valid      = 1'b0;
  this.config_notification    =  'b0;
endfunction : setDefault

function bit LM_input_item::equalDefault();
  if(this.UART_data_debug_switch !== 1'b0) return 1'b0;
  if(this.UART_data              !==  'b0) return 1'b0;
  if(this.UART_data_valid        !== 1'b0) return 1'b0;
  if(this.CM_errors              !==  'b0) return 1'b0;
  if(this.CM_errors_valid        !== 1'b0) return 1'b0;
  if(this.UART_errors            !==  'b0) return 1'b0;
  if(this.UART_errors_valid      !== 1'b0) return 1'b0;
  if(this.config_notification    !==  'b0) return 1'b0;
  return 1'b1;
endfunction : equalDefault

function string LM_input_item::convert2string();
    return $sformatf("DEBUG:%0b, UART_DATA:%0h, UART_DATA_V:%0b, CM_ERR:%0h, CM_ERR_V:%0b, UART_ERR:%0h, UART_ERR_V:%0b, CONFIG:%0h", UART_data_debug_switch, UART_data, UART_data_valid, CM_errors, CM_errors_valid, UART_errors, UART_errors_valid, config_notification);
endfunction : convert2string