module tb;
     int suresh[];
	 int q[$];
	 int n;
	 
	 initial begin
	     suresh = new[10];
		 
		 suresh = '{20, 21, 31, 30, 45, 67, 78, 76, 54, 75};
		 
		 n = suresh.size();
		 
		 $display("%0d", n);
		 
		 $display("arr = %p", suresh);
		 
		 
		 for (int i = 0; i < n/2; i++) begin
		     q.push_back(suresh[i]);
		     q.push_back(suresh[n-1-i]);
			end
		 $display("q = %p", q);
		end
		
	endmodule
	 