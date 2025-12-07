// vsim work.tb -sv_seed random; run -all
class ex1;
     rand bit [7:0] n;

     constraint n_ones {
                         $countones(n) == 2;
                        }
    
	 constraint no_consecutive_ones {
                                 foreach (n[i]) {
                                                 if (i < 7)
                                                 !(n[i] && n[i+1]);
                                                }
                                }
    endclass

module tb;
     ex1 obj;
     initial begin
         obj = new();

         repeat (40) begin
             if (obj.randomize())
                 $display("n = %b", obj.n);
             else
                 $display("Randomization failed");
            end
        end
    endmodule
