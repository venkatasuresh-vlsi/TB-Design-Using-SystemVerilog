class account;
     int balance;
	 int ac_no;
	 string name;
	
	 function void deposit(int amount);
	     balance += amount;
		endfunction 
		
     function void withdraw(int amount);
	     if (amount > balance) $error("request amount is greater than balance");
		 else balance -= amount;
		endfunction
    endclass 

module tb;
     account a1, joint;
	 int deposit_amt = 0;
	 int withdraw_amt = 0;
	 
	 initial begin
	     a1 = new();
	     a1.balance = 1000;
		 a1.name = "Raja";
		 a1.ac_no = 1;
		 $display("---------------------------------------------------");
         $display("Account opened for %s | acc_no: %0d | Balance: %0d", a1.name, a1.ac_no, a1.balance);
         $display("---------------------------------------------------");
		 #100;
		 $display("%0d After 100 days Munna added as joint account holder", $time);
		 joint = a1;
		 
		 joint.name = "Munna";
		 $display("%s  %0d  %0d", a1.name, a1.ac_no, a1.balance);
		 
		 joint.deposit(30000);
		 deposit_amt += 30000;
		 
		 joint.deposit(40000);
		 deposit_amt += 40000;
		 
		 joint.deposit(50000);
		 deposit_amt += 50000;
		 
		 joint.deposit(100000);
		 deposit_amt += 100000;
		 
		 joint.deposit(200000);
		 deposit_amt += 200000;
		 
		 joint.withdraw(4000);
		 withdraw_amt += 4000;
		 
		 joint.withdraw(40000);
		 withdraw_amt += 40000;
		 
		 joint.withdraw(200000);
		 withdraw_amt += 200000;
		 #100;
		 a1.name = "Raja";
		 
		 $display("%0d After another 100 days, Munna removed as joint account holder", $time);
		 
		 $display("Munna total deposited money = %0d", deposit_amt); // 420000
		 $display("Munna total withdraw money = %0d", withdraw_amt); // 244000
		 $display("total balance after withdraw = %0d", a1.balance); // 177000
		 
		 $display("%s  %0d  %0d", a1.name, a1.ac_no, a1.balance);
		end
	endmodule
		 
		 
		 
		 
		 
		 
	 