/*ex1: A class has a random dynamic array 'arr'. 
There is a random variable called 'len'.
The size of the dynamic array must be equal to length value
and the contents of the array must be in the below pattern depending on the value of len.
Example : 
len = 3 -- arr = '{1,0,2}
len = 4 -- arr = '{1,0,2,0}
len = 8 -- arr = '{1,0,2,0,3,0,4,0}
len = 12 -- arr = '{1,0,2,0,3,0,4,0,5,0,6,0}*/

class ex1;
     rand int arr[];
	 rand int unsigned len;
	 
	 static int da[];
	 static int pre_len;
	 
	 constraint len_c1 {len > pre_len;}
	 constraint arr_c {arr.size() == len;}
	 constraint len_c {len > 1; len < 100;}
	 constraint arr_range {
	                        foreach(arr[i]) {
							                 if (i < da.size())
											     arr[i] == da[i];
											 else
  											     arr[i] inside {[0:100]};
											}
						  }
	 constraint int_zero {
	                       foreach(arr[i]) {
						                     if(i % 2 == 1)
											     arr[i] == 0;
											 else 
											     arr[i] == (i/2) + 1;
											}
						 }
	endclass 

module top;
     ex1 obj;
	 
	 initial begin 
	     obj = new();
		 repeat (5) begin 
		 assert(obj.randomize())
		 else $error("randomization failed");
		 obj.da = obj.arr;
		 obj.pre_len = obj.len;
		 $display("len = %0d -- arr = %p", obj.len, obj.arr);
		 end
		 
		/* assert(obj.randomize() with {len == 10;})
		 else $error("randomization failed");
		 obj.da = obj.arr;
		 obj.pre_len = obj.len;
		 $display("len = %0d -- arr = %p", obj.len, obj.arr);
		 
		 assert(obj.randomize() with {len == 20;})
		 else $error("randomization failed");
		 obj.da = obj.arr;
		 obj.pre_len = obj.len;
		 $display("len = %0d -- arr = %p", obj.len, obj.arr);*/
		 
		end 
	endmodule