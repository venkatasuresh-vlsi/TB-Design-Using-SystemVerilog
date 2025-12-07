module tb;
     string sentence;
     string out_sentence;
 
     function  bit vowels(input byte ch);
         if (ch == "a" || ch == "e" || ch == "i" || ch == "o" || ch == "u" ||
             ch == "A" || ch == "E" || ch == "I" || ch == "O" || ch == "U")
            return 1;
         else
            return 0;
        endfunction
	 
     function automatic string remove_vowels(string s);
		 int n;
	     string result;
		 string word;
		 string temp_word;
		 s = {s, " "};
		 n = s.len();
		 
		 for (int i = 0; i < n; i++)begin
		     if (s[i] != " ") 
			     word = {word, s[i]}; 
			 else begin 
			     temp_word = "";
			     if (word.len() == 1) temp_word = {temp_word, word[0]};
				 
				 else if (word.len() == 2 && 
				           vowels(word[0]) && 
						     !vowels(word[1])) temp_word = {temp_word, word[0], word[1]};
							 
				 else if (word.len() == 3 && vowels(word[0]) &&
         				    vowels(word[1]) && !vowels(word[2])) temp_word = {temp_word, word[0], word[1], word[2]};
							
				 else if (word.len() == 4 && 
				         !vowels(word[0]) && 
				          vowels(word[1]) &&
						  vowels(word[2]) && 
						 !vowels(word[3]) &&
				          vowels(word[1]) == vowels(word[2])) temp_word = {temp_word, word[0], word[1], word[2], word[3]};
						  
				 else if (word.len() == 4 &&
     				      vowels(word[0]) && 
						 !vowels(word[1]) && 
						  vowels(word[2]) && 
						    vowels(word[3])) temp_word = {temp_word, word[0], word[1]};
							
				 else begin
				     for (int i = 0; i < word.len(); i++) begin 
					     if (!vowels(word[i]))
						     temp_word = {temp_word, word[i]};
					    end
					end
					 result = {result, temp_word, " "};
					 word = "";
				end
			
			end
		 return result;
		endfunction
	
	 initial begin
	     sentence = "LucidVLSI is the best";
	     $display("Original sentence = %s", sentence);
		 out_sentence = remove_vowels(sentence);
		 $display("modified sentence = %s",out_sentence);
		 sentence = "I am good";
	     $display("Original sentence = %s", sentence);
		 out_sentence = remove_vowels(sentence);
		 $display("modified sentence = %s",out_sentence);
		  sentence = "I am good around our area";
	     $display("Original sentence = %s", sentence);
		 out_sentence = remove_vowels(sentence);
		 $display("modified sentence = %s",out_sentence);
		end 
    endmodule  