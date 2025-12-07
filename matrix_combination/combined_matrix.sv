module tb;
     int top_left[4][4];
     int top_right[4][4];
     int bottom_left[4][4];
     int bottom_right[4][4];
     
     int y[8][8];

     initial begin
         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) begin
                  top_left[i][j] = $urandom_range(0, 99);
                  top_right[i][j] = $urandom_range(0, 99);
                  bottom_left[i][j] = $urandom_range(0, 99);
                  bottom_right[i][j] = $urandom_range(0, 99);
                end
            end

         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) begin
                  y[i][j] = top_left[i][j];
                  y[i][j+4] = top_right[i][j];
                  y[i+4][j] = bottom_left[i][j];
                  y[i+4][j+4] = bottom_right[i][j];
                end
            end

         $display("Top Left Matrix:");
         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) $write("%d", top_left[i][j]);
				$display("");
            end

         $display("Top Right Matrix:");
         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) $write("%d", top_right[i][j]);
				 $display("");
            end

         $display("Bottom Left Matrix:");
         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) $write("%d", bottom_left[i][j]);
				 $display("");
            end

         $display("Bottom Right Matrix:");
         for (int i = 0; i < 4; i++) begin
             for (int j = 0; j < 4; j++) $write("%d", bottom_right[i][j]);
				 $display("");
            end

         $display("Final 8x8 Matrix Y:");
         for (int i = 0; i < 8; i++) begin
             for (int j = 0; j < 8; j++) $write("%d", y[i][j]);
				$display("");
            end
        end
endmodule
