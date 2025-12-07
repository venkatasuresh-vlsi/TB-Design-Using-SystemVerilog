module tb;
     real r;
     int a;

    initial begin
        repeat (10) begin
             a  = $urandom_range(300, 400);
             r = a / 100.0;
             $display("%0d  | %.2f", a, r);
            end
        end
    endmodule
