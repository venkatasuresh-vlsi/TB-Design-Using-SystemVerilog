class Transaction;
     rand bit [7:0] addr, data;
     bit [7:0] prev_data;

     constraint c_addr {addr % 2 == 0;}

     constraint c_data {data > prev_data;}

     function void update_prev_data();
         if (prev_data > 254)
             prev_data = 0;
        endfunction

     function void display(int iter);
         $display("Iteration %0d : addr = %0d, data = %0d", iter, addr, data);
        endfunction
endclass


module tb;
  Transaction t;
  initial begin
    t = new();
    t.prev_data = 0;

    for (int i = 1; i <= 10; i++) begin
      t.update_prev_data();

      assert(t.randomize())
        else $error("Randomization failed!");

      t.display(i);

      t.prev_data = t.data;
    end
  end
endmodule
