module strings;
     string str;
	 string rev_str;
	 
	 initial begin
	     str = "VENKATA SURESH";
		 $display("length = %0d", str.len());
		 $display("Original = %s", str);
		 for (int i = str.len() - 1; i >= 0; i--)
		      rev_str = {rev_str, str[i]};
		
		 $display("Reversed = %s", rev_str);
		 
		end 
	endmodule