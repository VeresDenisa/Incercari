`uvm_analysis_imp_decl(_CD)
`uvm_analysis_imp_decl(_CONF)

class CD_coverage extends uvm_component;
  `uvm_component_utils(CD_coverage);
  
  uvm_analysis_imp_CD  #(CD_item,   CD_coverage) an_port_CD;
  uvm_analysis_imp_CONF#(CONF_item, CD_coverage) an_port_CONF;
   
  CD_item   CD_t; 
  CONF_item CONF_t;

  CD_covergroup   CD_cvg;
  CONF_covergroup CONF_cvg;
    
  function new(string name = "CD_coverage", uvm_component parent = null);
    super.new(name, parent);

    an_port_CD   = new("an_port_CD",   this);
    an_port_CONF = new("an_port_CONF", this);
    
    CD_t   = new("CD_t");
    CONF_t = new("CONF_t");

    CD_cvg   = new(CD_t);
    CONF_cvg = new(CONF_t);      
  endfunction : new
  
  extern function void write_CD(CD_item t);    
  extern function void write_CONF(CONF_item t);  
    
  extern function void report_phase(uvm_phase phase);
endclass : CD_coverage

    
    
function void CD_coverage::write_CD(CD_item t);
  CD_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CD_t.convert2string), UVM_FULL);
  CD_cvg.sample();
endfunction : write_CD
    
function void CD_coverage::write_CONF(CONF_item t);
  CONF_t.copy(t);
  `uvm_info(get_name(), $sformatf("Coverage item: %s", CONF_t.convert2string), UVM_FULL);
  CONF_cvg.sample();
endfunction : write_CONF

function void CD_coverage::report_phase(uvm_phase phase);
  `uvm_info(get_name(), $sformatf("---> EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
  `uvm_info(get_name(),$sformatf("CD coverage:   %.2f%%", CD_cvg.get_coverage()),  UVM_LOW);
  `uvm_info(get_name(),$sformatf("CONF coverage: %.2f%%", CONF_cvg.get_coverage()), UVM_LOW);
  `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> REPORT <--"), UVM_DEBUG);
endfunction : report_phase
