`uvm_analysis_imp_decl(_CM_input)
`uvm_analysis_imp_decl(_CM_output)
`uvm_analysis_imp_decl(_CONF)

class CM_coverage extends uvm_component;
  `uvm_component_utils(CM_coverage);
  
  uvm_analysis_imp_CM_input  #(CM_input_item,  CM_coverage) an_port_CM_input;
  uvm_analysis_imp_CM_output #(CM_output_item, CM_coverage) an_port_CM_output;
  uvm_analysis_imp_CONF      #(CONF_item,      CM_coverage) an_port_CONF;
   
  CM_input_item  CM_input_t; 
  CM_output_item CM_output_t;
  CONF_item      CONF_t;

  CM_input_covergroup  CM_input_cvg;
  CM_output_covergroup CM_output_cvg;
  CONF_covergroup      CONF_cvg;
    
  function new(string name = "CM_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_CM_input  = new("an_port_CM_input",  this);
    an_port_CM_output = new("an_port_CM_output", this);
    an_port_CONF      = new("an_port_CONF", this);
    
    CM_input_t  = new("CM_input_t");
    CM_output_t = new("CM_output_t");
    CONF_t      = new("CONF_t");

    CM_input_cvg  = new(CM_input_t);
    CM_output_cvg = new(CM_output_t);
    CONF_cvg      = new(CONF_t);      
  endfunction : new
  
  extern function void write_CM_input(CM_input_item t);      
  extern function void write_CM_output(CM_output_item t);  
  extern function void write_CONF(CONF_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : CM_coverage

    
    
function void CM_coverage::write_CM_input(CM_input_item t);
  CM_input_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CM_input_t.convert2string), UVM_FULL);
  CM_input_cvg.sample();
endfunction : write_CM_input
    
function void CM_coverage::write_CM_output(CM_output_item t);
  CM_output_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CM_output_t.convert2string), UVM_FULL);
  CM_output_cvg.sample();
endfunction : write_CM_output
    
function void CM_coverage::write_CONF(CONF_item t);
  CONF_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CONF_t.convert2string), UVM_FULL);
  CONF_cvg.sample();
endfunction : write_CONF

function void CM_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("Input CM coverage:  %.2f%%", CM_input_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(),$sformatf("Output CM coverage: %.2f%%", CM_output_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(),$sformatf("CONF coverage: %.2f%%", CONF_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase
