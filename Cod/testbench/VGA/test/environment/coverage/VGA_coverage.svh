`uvm_analysis_imp_decl(_VGA)
`uvm_analysis_imp_decl(_CONF)

class VGA_coverage extends uvm_component;
  `uvm_component_utils(VGA_coverage);
  
  uvm_analysis_imp_VGA #(VGA_output_item, VGA_coverage) an_port_VGA;
  uvm_analysis_imp_CONF#(CONF_item,       VGA_coverage) an_port_CONF;
   
  VGA_output_item VGA_t; 
  CONF_item       CONF_t;

  VGA_covergroup  VGA_cvg;
  CONF_covergroup CONF_cvg;
    
  function new(string name = "VGA_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_VGA  = new("an_port_VGA", this);
    an_port_CONF = new("an_port_CONF", this);
    
    VGA_t  = new("VGA_t");
    CONF_t = new("CONF_t");

    VGA_cvg  = new(VGA_t);
    CONF_cvg = new(CONF_t);      
  endfunction : new
  
  extern function void write_VGA(VGA_output_item t);    
  extern function void write_CONF(CONF_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : VGA_coverage

    
    
function void VGA_coverage::write_VGA(VGA_output_item t);
  VGA_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", VGA_t.convert2string), UVM_FULL);
  VGA_cvg.sample();
endfunction : write_VGA
    
function void VGA_coverage::write_CONF(CONF_item t);
  CONF_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CONF_t.convert2string), UVM_FULL);
  CONF_cvg.sample();
endfunction : write_CONF

function void VGA_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("VGA coverage:  %.2f%%", VGA_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(),$sformatf("CONF coverage: %.2f%%", CONF_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase
