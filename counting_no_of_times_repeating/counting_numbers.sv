module tb;
    int q[$];
    int count[int];
    int p[$];   

    initial begin
        for (int i = 0; i < 20; i = i + 1) begin
            q.push_back($urandom_range(10, 99));
        end
        
        $display("Queue size = %0d", q.size());
        $display("Queue = %p", q);
        
        for (int i = 0; i < q.size(); i = i + 1) begin
            if (!count.exists(q[i])) begin
                count[q[i]] = 1;
                p.push_back(q[i]);   
            end
            else begin
                count[q[i]] = count[q[i]] + 1;
            end
        end
        
        for (int i = 0; i < p.size(); i = i + 1) begin
            $display("%0d : %0d", p[i], count[p[i]]);
        end
    end
endmodule
