module title_case;
     string name;
     int i;

     initial begin
         name = "venkata suresh";  
		 $display("%0d", name.len());
         $display("Original name: '%s'", name);
 
         for (i = 0; i < name.len()-1; i++) begin
             if (i == 0 || name[i-1] == " ") begin
                 if (name[i] >= "a" && name[i] <= "z") 
                    name[i] = name[i] - 32;
                end
            end

         $display("TitleCase name: '%s'", name);
		 
		 name = "raja bandi sir";  
		 $display("%0d", name.len());
         $display("Original name: '%s'", name);
 
         for (i = 0; i < name.len()-1; i++) begin
             if (i == 0 || name[i-1] == " ") begin
                 if (name[i] >= "a" && name[i] <= "z") 
                    name[i] = name[i] - 32;
                end
            end

         $display("TitleCase name: '%s'", name);
        end
    endmodule
