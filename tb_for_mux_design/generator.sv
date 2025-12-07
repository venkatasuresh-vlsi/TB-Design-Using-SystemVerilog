class generator;
     mux_connections mux_tx;
	 mailbox#(mux_connections) mbox;
	 
	 function new();
	     mbox = environment::mbox;
		endfunction 
	 task run();
	     repeat (10) begin 
		     mux_tx = new();
			 assert(mux_tx.randomize())
			 mbox.put(mux_tx);
			end 
		endtask 
	endclass 
