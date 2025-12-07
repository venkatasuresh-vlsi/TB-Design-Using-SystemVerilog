typedef class generator;
typedef class driver;
typedef class environment;
typedef class mux_connections;
typedef class top_intf;
`include "interface.sv"
`include "driver.sv"
`include "generator.sv"
`include "environment.sv"
`include "mux.sv"
`include "mux_connections.sv"

program testbench();
     environment env;
	 
	 initial begin 
	     env = new();
		 env.run();
		end 
	endprogram 
	
class top_intf;
     static virtual mux_intf driver_intf;
	endclass 

module top;
     logic clk, rst;
	 
	 always #5 clk = !clk;
	 mux_intf cable(clk, rst);
	 mux Suresh(cable);
	 testbench tb();
	 
	 initial begin 
	     rst = 1;
		 clk = 0;
		 #2;
		 rst = 0;
		 #150; 
		 $stop;
		end 
	
	 initial top_intf::driver_intf = cable;
	endmodule