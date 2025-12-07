/*HW27: 
A class named HW27 has a random 8-bit number called len. It has a random queue
whose size is same as len. The queue must be filled with random numbers such
that the queue contents is as below:

Sample output:
len=4 -- da='{5, 4, 3, 2}
len=6 -- da='{5, 4, 3, 2, 1, 10} 
len=11 -- da='{5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 15}
len=17 -- da='{5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11, 20, 19}
len=32 -- da='{5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 30, 29, 28, 27, 26, 35, 34}*/

class HW27;
     rand bit [7:0] len;  
          bit [7:0] pre_len;	 
     rand int da[$];         

     static int prev_da[$];
	 
     constraint len_c {len > pre_len;}
     constraint c_size {da.size() == len;}
     constraint c_prev {
                         foreach (da[i]) {
										  if (i < prev_da.size())
											da[i] == prev_da[i];       
										  else
											da[i] inside {[1:200]};   
										 }
                       }
    endclass

module top;
     HW27 obj;
	 
     initial begin
         obj = new();
		 assert(obj.randomize() with {len == 4;})
		 else $error("randomization failed");
		 obj.prev_da = obj.da;
		 obj.pre_len = obj.len;
		 $display("len=%0d  da=%p", obj.len, obj.da);
		 
		 assert(obj.randomize() with {len == 6;})
		 else $error("randomization failed");
		 obj.prev_da = obj.da;
		 obj.pre_len = obj.len;
		 $display("len=%0d  da=%p", obj.len, obj.da);
		 
		 assert(obj.randomize() with {len == 10;})
		 else $error("randomization failed");
		 obj.prev_da = obj.da;
		 obj.pre_len = obj.len;
		 $display("len=%0d  da=%p", obj.len, obj.da);
		 
		 assert(obj.randomize() with {len == 32;})
		 else $error("randomization failed");
		 obj.prev_da = obj.da;
		 obj.pre_len = obj.len;
		 $display("len=%0d  da=%p", obj.len, obj.da);
        end
    endmodule

