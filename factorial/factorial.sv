module tb;
     int i;
	 int f;
	 
	 `ifdef FFL
	 function automatic int factorial(int a = 0);
	     int n = 1;
		 if (a < 0) begin
		     $display("factorial not defined for negetive numbers");
		     return 0;
			end
		    for (int i = a; i >= 1; i--)
			     n = n * i;
		 return n;
		endfunction
	 `endif 
	 `ifdef RF
	 function automatic int factorial(int a = 0);
		 if (a < 0) begin
		     $display("factorial not defined for negetive numbers");
		     return 0;
			end
		 else if (a == 0 || a == 1)
		     return 1;              
         else 
              return a * factorial(a-1);	
        endfunction
     `endif		
	 initial begin
         for (i = 0; i < 10; i++) begin
		     f = factorial(i);
		     $display ("%0d : %0d", i, f);
		    end
		end
	
	endmodule
		 