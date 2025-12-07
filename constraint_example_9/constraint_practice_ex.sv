/*Define a SystemVerilog class named EthPacket.
It should have the following properties:
A random 48-bit source address.
A random 48-bit destination address.
A random payload (dynamic array of bytes).
Write the constraints to satisfy these requirements:
The payload size must be between 46 and 1500 bytes (inclusive).
The payload size must be even.
The destination address must not match the source address.
If the destination address is 48'h0, the payload size must be exactly 64 bytes.*/

class eth_packet;
     rand bit [47:0] sour_addr;
	 rand bit [47:0] dest_addr;
	 rand byte unsigned payload[];
	 
	 constraint payload_range {payload.size() > 45; payload.size() < 1501;}
	 constraint payload_even {payload.size() % 2 == 0;}
	 constraint not_eq {sour_addr != dest_addr;}
	 constraint exact_value {(dest_addr == 48'h0) -> (payload.size() == 64);}
	endclass 
	
module tb;
     eth_packet ex1;
	 
	 initial begin 
	     ex1 = new();
		 repeat (10) begin 
			 assert(ex1.randomize())
			 else $error("Randomization Failed");
			 $display("sour = %0d", ex1.sour_addr);
			 $display("dest = %0d", ex1.dest_addr);
			 $display("payload.size = %0d", ex1.payload.size());
			end
		 assert(ex1.randomize() with {dest_addr == 0;})
		 else $error("Randomization Failed");
		 $display("sour = %0d", ex1.sour_addr);
		 $display("dest = %0d", ex1.dest_addr);
		 $display("payload.size = %0d", ex1.payload.size());
	    end 
	endmodule