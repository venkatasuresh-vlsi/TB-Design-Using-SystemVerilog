class UniqArray;
     rand int da[];  

     constraint size_c {da.size inside {[5:10]};
                       }

     constraint val_c {unique {da};
	                  }
					  
     constraint values_da {foreach (da[i]) 
	                                da[i] inside {[0:100]};
                          }
    endclass

module tb;
     UniqArray obj;

     initial begin
		 obj = new();
		 repeat (5) begin
			 if (obj.randomize())
				 $display("da = %p", obj.da);
			 else
				 $display("Randomization failed");
			end
        end
    endmodule
