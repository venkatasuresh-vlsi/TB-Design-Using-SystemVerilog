class randc_rand;
    rand bit [2:0] value;         
         bit [2:0] queue_values[$];     

    function new();
        fill_queue();             
    endfunction

    function void fill_queue();
        queue_values.delete();
        for (int i = 0; i < 8; i++)
            queue_values.push_back(i);
    endfunction

    function void randomize_value();
	    int index;
        if (queue_values.size() == 0)
            fill_queue(); 

        index = $urandom_range(0, queue_values.size()-1);
        value = queue_values[index];
        queue_values.delete(index);
    endfunction
endclass


module tb;
    randc_rand obj;

    initial begin
        obj = new();

        repeat (16) begin
            obj.randomize_value();
            $display("Value = %0d", obj.value);
        end
    end
endmodule
