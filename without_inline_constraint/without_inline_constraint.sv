// vsim work.tb -sv_seed random +n=30; run -all
class HW29;
     rand int number;
     bit number_range_sel; 

     constraint number_range {
							  if (number_range_sel == 0)
								  number inside {[1:10]};
							  else
								  number inside {[120:130]};
							 }
    endclass

module tb;
     HW29 obj;
     int n;

     initial begin
         obj = new();
		 if ($value$plusargs("n=%d", n)) begin
		 
			 $display("n=%0d", n);

			 for (int i = 0; i < n; i++) begin
				 obj.number_range_sel = i % 2; 
				 if(!obj.randomize) $display("randomization is failed");
				 else $display("number = %0d", obj.number);
				end
			end
		 else $display("n is not passed");
		end 
    endmodule
