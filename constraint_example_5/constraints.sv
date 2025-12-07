class len_based_arr;
     rand int len;
     rand int arr[];
	 
	 constraint arr_size_values_msb {foreach(arr[i]) arr[i] < 500;}
	 
	 constraint arr_size_values_lsb {foreach(arr[i]) arr[i] > 0;}

     constraint len_values {len inside {1,4,7,9,11,6,13,14,15,16,43,65,66,19};}

     constraint arr_values {arr.size() == len;}         
	 
     constraint even_odd {foreach(arr[i]) {
                             if (i % 2 == 0)
                                 arr[i] % 2 == 1;      
                             else
                                 arr[i] % 2 == 0;     
                            }
                        }
    endclass

module tb;
     len_based_arr obj;

     initial begin
         obj = new();
		 repeat (5) begin 
             assert (obj.randomize())
                 $display("len=%0d -- arr=%p", obj.len, obj.arr);
             else 
                 $error("Randomization failed!");
            end
	    end
    endmodule
