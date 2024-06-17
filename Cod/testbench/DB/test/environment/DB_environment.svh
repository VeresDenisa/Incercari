class DB_environment extends uvm_env;
    `uvm_component_utils(DB_environment);
        
    DB_agent DB_agent_input_h;
    DB_agent DB_agent_output_h;

    agent_config DB_config_input_h;
    agent_config DB_config_output_h;
    
    environment_config env_config_h;
    
    DB_coverage cov;
    
    function new (string name = "DB_environment", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new
    
    extern function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
endclass : DB_environment



function void DB_environment::build_phase(uvm_phase phase);
    super.build_phase(phase);  
    `uvm_info(get_name(), $sformatf("---> ENTER PHASE: --> BUILD <--"), UVM_DEBUG);
    
    if(!uvm_config_db #(environment_config)::get(this, "", "DB_config_db", env_config_h))
        `uvm_fatal(this.get_name(), "Failed to get DB environment config");

    DB_config_input_h = new(.is_active(UVM_ACTIVE));
    DB_config_output_h = new(.is_active(UVM_PASSIVE));
        
    uvm_config_db #(agent_config)::set(this, "DB_agent_input_h*",  "DB_config_db", DB_config_input_h);
    uvm_config_db #(agent_config)::set(this, "DB_agent_output_h*", "DB_config_db", DB_config_output_h);
    
    DB_agent_input_h  = DB_agent::type_id::create("DB_agent_input_h",  this);
    DB_agent_output_h = DB_agent::type_id::create("DB_agent_output_h", this);
    
    cov = DB_coverage::type_id::create("cov", this); 
        
    `uvm_info(get_name(), $sformatf("<--- EXIT PHASE: --> BUILD <--"), UVM_DEBUG);
endfunction : build_phase

function void DB_environment::connect_phase(uvm_phase phase);
    DB_agent_output_h.mon.an_port.connect(cov.an_port);
endfunction : connect_phase