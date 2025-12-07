module tb;
     integer i;
	    
		
     initial begin
	     $display("assign y[0][0] =");
	     for (i = 0; i<4; i = i+ 1)
		     $display("(a[0][%0d] * b[%0d][0]) +", i, i);
		 $display("assign y[0][1] =");
	     for (i = 0; i<4; i = i+ 1)
		     $display("(a[0][%0d] * b[%0d][1]) +", i, i);
		 $display("assign y[0][2] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[0][%0d] * b[%0d][2]) +", i, i);
		 $display("assign y[0][3] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[0][%0d] * b[%0d][3]) +", i, i);
			 
		 $display("assign y[1][0] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[1][%0d] * b[%0d][0]) +", i, i);
		 $display("assign y[1][1] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[1][%0d] * b[%0d][1]) +", i, i);
		 $display("assign y[1][2] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[1][%0d] * b[%0d][2]) +", i, i);
		 $display("assign y[1][3] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[1][%0d] * b[%0d][3]) +", i, i);
			 
		 $display("assign y[2][0] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[2][%0d] * b[%0d][0]) +", i, i);
		 $display("assign y[2][1] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[2][%0d] * b[%0d][1]) +", i, i);
		 $display("assign y[2][2] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[2][%0d] * b[%0d][2]) +", i, i);
		 $display("assign y[2][3] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[2][%0d] * b[%0d][3]) +", i, i);
	    
		 $display("assign y[3][0] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[3][%0d] * b[%0d][0]) +", i, i);
		 $display("assign y[3][1] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[3][%0d] * b[%0d][1]) +", i, i);
		 $display("assign y[3][2] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[3][%0d] * b[%0d][2]) +", i, i);
		 $display("assign y[3][3] =");
		 for (i = 0; i<4; i = i+ 1)
		     $display("(a[3][%0d] * b[%0d][3]) +", i, i);
		end 
	endmodule