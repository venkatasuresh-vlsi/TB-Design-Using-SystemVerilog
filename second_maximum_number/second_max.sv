module tb;
     int q[$];
     int first_max, second_max;

     initial begin
         for (int i = 0; i < 10; i++)
             q.push_back($urandom_range(1,100));
    
         $display("Queue elements: %p", q);

         first_max  = 0;
         second_max = 0;

         for (int i = 0; i < 10; i++) begin
             if (q[i] > first_max) begin
             second_max = first_max;
             first_max  = q[i];
            end
             else if (q[i] > second_max && q[i] < first_max) begin
             second_max = q[i];
            end
        end

         $display("First highest element  = %0d", first_max);
         $display("Second highest element = %0d", second_max);

        end

    endmodule
