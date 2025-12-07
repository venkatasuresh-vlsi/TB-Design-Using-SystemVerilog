class environment;
     static mailbox#(mux_connections) mbox;
	 generator gen;
	 driver drv;
	 
	 function new();
	     mbox = new();
		 gen = new();
		 drv = new();
		endfunction 
	 task run();
	     fork 
		     gen.run();
			 drv.run();
			join 
	    endtask 
	endclass 
	