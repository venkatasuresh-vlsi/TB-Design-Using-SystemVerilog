module tb;
     string q[$];
	 
     task automatic extract_words(input string sentence, output string q[$]);
         string temp;
         byte c;

         for (int i = 0; i < sentence.len(); i++) begin
              c = sentence[i]; 

             if (c != " ") 
                 temp = {temp, c};
             else begin
                 if (temp.len() > 0) begin
                     q.push_back(temp);
                     temp = "";
                    end  
                end
            end

         if (temp.len() > 0)
         q.push_back(temp);
        endtask

     initial begin
	       string s1;
		   string s2;
		   string s3;
          s1 = "Happy Independence Day";
          s2 = "Raja Bandi";
		  s3 = "venkata suresh";

         extract_words(s1, q);
         $display("Input: %s", s1);
         $display("Output Queue: %p", q);

         extract_words(s2, q);
         $display("Input: %s", s2);
         $display("Output Queue: %p", q);
		 
		 extract_words(s3, q);
         $display("Input: %s", s3);
         $display("Output Queue: %p", q);

        end

    endmodule
