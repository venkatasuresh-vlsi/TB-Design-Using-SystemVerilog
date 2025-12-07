// vsim work.tb -sv_seed random +n=100; run -all

class HW28;
     rand int number;
    endclass

module tb;
     HW28 obj;
     int n;

     initial begin
         obj = new();

         if ($value$plusargs("n=%d", n)) begin
		 
             $display("n = %0d", n);

             for (int i = 0; i < n; i++) begin
                 if (i % 2 == 0) begin 
                     if (!obj.randomize() with { number inside {[1:10]}; })
                         $display("Randomization failed");
                    end
                 else begin 
                     if (!obj.randomize() with { number inside {[120:130]}; })
                        $display("Randomization failed");
                    end
                 $display("number = %0d", obj.number);
                end
            end
         else $display("n is not passed");
    end
endmodule
