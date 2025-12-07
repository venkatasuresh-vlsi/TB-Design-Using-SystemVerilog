interface mux_intf(input clk, rst);
     logic [3:0] a;
	 logic [3:0] b;
	 logic sel;
	 logic [3:0] y;
	 
	 clocking dut_cb @(posedge clk);
	     input rst;
	     input a;
         input b;
		 input sel;
		 output y;
		endclocking 
	 clocking tb_cb @(posedge clk);
	     input rst;
	     output #2 a;
		 output #1 b;
		 output sel;
		 input y;
		endclocking 
	
	 modport dut_mp (clocking dut_cb);
	 modport tb_mp (clocking tb_cb);
	endinterface 