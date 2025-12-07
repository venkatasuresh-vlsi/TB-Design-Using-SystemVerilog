module odd_even;
     int a[20];
	 int y[$];
	 
	 function void divide_odd_even(int arr[20], output int comb[$]);
	     int odd[$];
		 int even[$];
		 
		 
		 for (int i = 0; i < 20; i++) begin
		     if (arr[i] % 2 == 0) 
			     even.push_back(arr[i]);
			 else
			     odd.push_back(arr[i]);
			end
		
		 odd.sort();
		 odd.reverse();
		 even.sort();
		 
		 comb = {even, odd};
		 
		endfunction
		
	 initial begin
	     for(int i = 0; i < 20; i++)
		     a[i] = $urandom_range(0, 99);
			 
		 divide_odd_even(a, y);
		 
		 $display("original array = %p", a);
		 $display("sorted array = %p", y);
		 
		end
	endmodule
		 
		 
			     
			     