class driver;
     mux_connections mux_tx;
	 mailbox#(mux_connections) mbox;
	 
	 virtual mux_intf.tb_mp driver_intf;
	 
	 function new();
	     mbox = environment::mbox;
		 driver_intf = top_intf::driver_intf;
		endfunction 
	
	 task run();
	     forever begin 
		     mbox.get(mux_tx);
			 @(driver_intf.tb_cb);
			     driver_intf.tb_cb.a <= mux_tx.a;
			     driver_intf.tb_cb.b <= mux_tx.b;
			     driver_intf.tb_cb.sel <= mux_tx.sel;
			     mux_tx.y <= driver_intf.tb_cb.y;
			end 
		endtask;
	endclass 