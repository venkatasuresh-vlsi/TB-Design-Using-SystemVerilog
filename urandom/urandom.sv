module tb;
    int a;
    bit select;

    initial begin
        repeat (20) begin
            select = $urandom_range(0, 1);  
            if (select)
                a = $urandom_range(-30, -10);
            else
                a = $urandom_range(10, 30);
            #1;
            $display(a);
        end
    end
endmodule
