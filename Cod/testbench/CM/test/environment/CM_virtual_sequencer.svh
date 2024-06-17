class CM_virtual_sequencer extends uvm_sequencer;
    `uvm_component_utils(CM_virtual_sequencer);
    
    CONF_output_sequencer CONF_output_seqr;
    
    function new (string name = "CM_virtual_sequencer", uvm_component parent = null);
      super.new(name, parent);
    endfunction : new
    
  endclass : CM_virtual_sequencer