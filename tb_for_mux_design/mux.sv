module mux(mux_intf.dut_mp connector);
     
	 always @(connector.dut_cb) begin 
	     if (connector.dut_cb.rst)
    		 connector.dut_cb.y <= 0;
		 else if (connector.dut_cb.sel)
		     connector.dut_cb.y <= connector.dut_cb.b;
		 else 
		     connector.dut_cb.y <= connector.dut_cb.a;
		end
	endmodule
	
