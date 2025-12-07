class OddEven;
    rand int unsigned arr[10];

    constraint OddEven_below_500 {foreach (arr[i]) arr[i] < 500;}
    constraint oddeven_at_index {foreach (arr[i]) {
                                     if (i % 2 == 0)
                                         arr[i] % 2 == 1;
                                     else
                                         arr[i] % 2 == 0; 
                                    }
                                }

    function void display();
        $display("arr = %p", arr);
    endfunction
endclass

module tb;
    OddEven obj;
    initial begin
	     obj = new();
		 if (obj.randomize) $display("arr = %p", obj.arr);
		 else $error("Randomization is Failed");
		end
	endmodule