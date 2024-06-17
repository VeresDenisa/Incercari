`uvm_analysis_imp_decl(_UART)
`uvm_analysis_imp_decl(_CONF)

class UART_coverage extends uvm_component;
  `uvm_component_utils(UART_coverage);
  
  uvm_analysis_imp_UART#(UART_output_item, UART_coverage) an_port_UART;
  uvm_analysis_imp_CONF#(CONF_item,        UART_coverage) an_port_CONF;
   
  UART_output_item UART_t; 
  CONF_item        CONF_t;

  UART_covergroup UART_cvg;
  CONF_covergroup CONF_cvg;
    
  function new(string name = "UART_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_UART = new("an_port_UART", this);
    an_port_CONF = new("an_port_CONF", this);
    
    UART_t = new("UART_t");
    CONF_t = new("CONF_t");

    UART_cvg = new(UART_t);
    CONF_cvg = new(CONF_t);      
  endfunction : new
  
  extern function void write_UART(UART_output_item t);    
  extern function void write_CONF(CONF_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : UART_coverage

    
    
function void UART_coverage::write_UART(UART_output_item t);
  UART_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", UART_t.convert2string), UVM_FULL);
  UART_cvg.sample();
endfunction : write_UART
    
function void UART_coverage::write_CONF(CONF_item t);
  CONF_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CONF_t.convert2string), UVM_FULL);
  CONF_cvg.sample();
endfunction : write_CONF

function void UART_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("UART coverage: %.2f%%", UART_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(),$sformatf("CONF coverage: %.2f%%", CONF_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase
