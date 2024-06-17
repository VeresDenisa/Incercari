class CM_input_sequence extends uvm_sequence #(CM_input_item);
    `uvm_object_utils(CM_input_sequence)
    
    CM_input_item item;

    integer number_of_items = 1;

    function new (string name = "CM_input_sequence");
        super.new(name);
    endfunction : new

    extern task body();
endclass : CM_input_sequence


task CM_input_sequence::body();
    item = CM_input_item::type_id::create("CM_input_item");

    `uvm_info(get_name(), $sformatf("Create CM_input input sequence with %0d items.", number_of_items), UVM_MEDIUM);

    for(int i = 0; i < number_of_items; i++) begin
        start_item(item);
        assert(item.randomize());
        `uvm_info(get_name(), $sformatf("Create CM_input input item: %s", item.convert2string), UVM_FULL);
        finish_item(item);
    end
endtask : body
