class ArrayClass;
    rand int unsigned mul4[10];  
	
	constraint lessthan_500 {foreach(mul4[i]) mul4[i] < 500;}
    constraint mult4_4 {foreach (mul4[i]) mul4[i] % 4 == 0;}
endclass

module tb;
    ArrayClass obj;
    initial begin
        obj = new();
        if(obj.randomize())
             $display("mul4 = %p", obj.mul4);
	    else 
             $error("Randomization is Failed");
    end
endmodule
