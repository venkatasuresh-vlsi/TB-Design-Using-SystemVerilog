class Table5;
     rand int unsigned arr[10];
	 
	 constraint table5_5 {foreach(arr[i]) arr[i] == i * 5;}
endclass

module tb;
     Table5 obj;
	 initial begin
	     obj = new();
		 if (obj.randomize) $display("arr = %p", obj.arr);
		 else $error("Randomization is Failed");
		end
	endmodule