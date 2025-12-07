module tb;
     reg [3:0] a[3:0][3:0];
     reg [3:0] b[3:0][3:0];
	 wire [15:0] y[3:0][3:0];
	
	 
	 matrix_mul Suresh(a, b, y);
	 
	 int i, j;
	 
	 initial begin
	     repeat (5) begin
		      for ( i = 0; i < 4; i = i + 1) begin
                for ( j = 0; j < 4; j = j + 1) begin
                    a[i][j] = $urandom_range(0, 15); 
                    b[i][j] = $urandom_range(0, 15); 
                end
				end
				#10;
			   $display("Matrix A:");
             for (i = 0; i < 4; i = i + 1) begin
                for (j = 0; j < 4; j = j + 1) $write("%d ", a[i][j]);
                $display("");
             end

             $display("Matrix B:");
             for (i = 0; i < 4; i = i + 1) begin
                for (j = 0; j < 4; j = j + 1) $write("%d ", b[i][j]);
                $display("");
             end

             $display("Matrix Y = A * B:");
             for (i = 0; i < 4; i = i + 1) begin
                for (j = 0; j < 4; j = j + 1) $write("%d ", y[i][j]);
                $display("");
             end
            end
		end
	endmodule