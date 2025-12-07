module tb;
  int i;

  initial begin
      for (i = 0; i < 1000; i++)
      $display("%0d : %s", i, num_to_word(i));
	
    end

  function string num_to_word(input int n);
    string result;
    int h, t, u;

    h = n / 100;        
    t = (n / 10) % 10;  
    u = n % 10;        

    if (h > 0) begin
      case (h)
        1: result = "One hundred";
        2: result = "Two hundred";
        3: result = "Three hundred";
        4: result = "Four hundred";
        5: result = "Five hundred";
        6: result = "Six hundred";
        7: result = "Seven hundred";
        8: result = "Eight hundred";
        9: result = "Nine hundred";
      endcase
    end

    if (h > 0 && (t > 0 || u > 0)) result = {result, " "};

    if (t == 1) begin
      case (u)
        0: result = {result, "Ten"};
        1: result = {result, "Eleven"};
        2: result = {result, "Twelve"};
        3: result = {result, "Thirteen"};
        4: result = {result, "Fourteen"};
        5: result = {result, "Fifteen"};
        6: result = {result, "Sixteen"};
        7: result = {result, "Seventeen"};
        8: result = {result, "Eighteen"};
        9: result = {result, "Nineteen"};
      endcase
    end
    else begin
      case (t)
        2: result = {result, "Twenty"};
        3: result = {result, "Thirty"};
        4: result = {result, "Forty"};
        5: result = {result, "Fifty"};
        6: result = {result, "Sixty"};
        7: result = {result, "Seventy"};
        8: result = {result, "Eighty"};
        9: result = {result, "Ninety"};
      endcase

      if (t > 1 && u > 0) result = {result, " "};

      case (u)
        1: result = {result, "One"};
        2: result = {result, "Two"};
        3: result = {result, "Three"};
        4: result = {result, "Four"};
        5: result = {result, "Five"};
        6: result = {result, "Six"};
        7: result = {result, "Seven"};
        8: result = {result, "Eight"};
        9: result = {result, "Nine"};
      endcase
    end

      if (n == 0) result = "Zero";
      if (n == 0) result = "Zero";
	  else if (n == 1) result = "One";
	  else if (n == 2) result = "Two";
	  else if (n == 3) result = "Three";
	  else if (n == 4) result = "Four";
	  else if (n == 5) result = "Five";
	  else if (n == 6) result = "Six";
	  else if (n == 7) result = "Seven";
	  else if (n == 8) result = "Eight";
	  else if (n == 9) result = "Nine";
	  else if (n == 10) result = "Ten";
	  else if (n == 11) result = "Eleven";
	  else if (n == 12) result = "Twelve";
	  else if (n == 13) result = "Thirteen";
	  else if (n == 14) result = "Fourteen";
	  else if (n == 15) result = "Fifteen";
	  else if (n == 16) result = "Sixteen";
	  else if (n == 17) result = "Seventeen";
	  else if (n == 18) result = "Eighteen";
	  else if (n == 19) result = "Nineteen";
	  else if (n == 20) result = "Twenty";
	  else if (n == 21) result = "Twenty One";
	  else if (n == 22) result = "Twenty Two";
	  else if (n == 23) result = "Twenty Three";
	  else if (n == 24) result = "Twenty Four";
	  else if (n == 25) result = "Twenty Five";
	  else if (n == 26) result = "Twenty Six";
	  else if (n == 27) result = "Twenty Seven";
	  else if (n == 28) result = "Twenty Eight";
	  else if (n == 29) result = "Twenty Nine";
	  else if (n == 30) result = "Thirty";
	  else if (n == 31) result = "Thirty One";
	  else if (n == 32) result = "Thirty Two";
	  else if (n == 33) result = "Thirty Three";
	  else if (n == 34) result = "Thirty Four";
	  else if (n == 35) result = "Thirty Five";
	  else if (n == 36) result = "Thirty Six";
	  else if (n == 37) result = "Thirty Seven";
	  else if (n == 38) result = "Thirty Eight";
	  else if (n == 39) result = "Thirty Nine";
	  else if (n == 40) result = "Forty";
	  else if (n == 41) result = "Forty One";
	  else if (n == 42) result = "Forty Two";
	  else if (n == 43) result = "Forty Three";
	  else if (n == 44) result = "Forty Four";
	  else if (n == 45) result = "Forty Five";
	  else if (n == 46) result = "Forty Six";
	  else if (n == 47) result = "Forty Seven";
	  else if (n == 48) result = "Forty Eight";
	  else if (n == 49) result = "Forty Nine";
	  else if (n == 50) result = "Fifty";
	  else if (n == 51) result = "Fifty One";
	  else if (n == 52) result = "Fifty Two";
	  else if (n == 53) result = "Fifty Three";
	  else if (n == 54) result = "Fifty Four";
	  else if (n == 55) result = "Fifty Five";
	  else if (n == 56) result = "Fifty Six";
	  else if (n == 57) result = "Fifty Seven";
	  else if (n == 58) result = "Fifty Eight";
	  else if (n == 59) result = "Fifty Nine";
	  else if (n == 60) result = "Sixty";
	  else if (n == 61) result = "Sixty One";
	  else if (n == 62) result = "Sixty Two";
	  else if (n == 63) result = "Sixty Three";
	  else if (n == 64) result = "Sixty Four";
	  else if (n == 65) result = "Sixty Five";
	  else if (n == 66) result = "Sixty Six";
	  else if (n == 67) result = "Sixty Seven";
	  else if (n == 68) result = "Sixty Eight";
	  else if (n == 69) result = "Sixty Nine";
	  else if (n == 70) result = "Seventy";
	  else if (n == 71) result = "Seventy One";
	  else if (n == 72) result = "Seventy Two";
	  else if (n == 73) result = "Seventy Three";
	  else if (n == 74) result = "Seventy Four";
	  else if (n == 75) result = "Seventy Five";
	  else if (n == 76) result = "Seventy Six";
	  else if (n == 77) result = "Seventy Seven";
	  else if (n == 78) result = "Seventy Eight";
	  else if (n == 79) result = "Seventy Nine";
	  else if (n == 80) result = "Eighty";
	  else if (n == 81) result = "Eighty One";
	  else if (n == 82) result = "Eighty Two";
	  else if (n == 83) result = "Eighty Three";
	  else if (n == 84) result = "Eighty Four";
	  else if (n == 85) result = "Eighty Five";
	  else if (n == 86) result = "Eighty Six";
	  else if (n == 87) result = "Eighty Seven";
	  else if (n == 88) result = "Eighty Eight";
	  else if (n == 89) result = "Eighty Nine";
	  else if (n == 90) result = "Ninety";
	  else if (n == 91) result = "Ninety One";
	  else if (n == 92) result = "Ninety Two";
	  else if (n == 93) result = "Ninety Three";
	  else if (n == 94) result = "Ninety Four";
	  else if (n == 95) result = "Ninety Five";
	  else if (n == 96) result = "Ninety Six";
	  else if (n == 97) result = "Ninety Seven";
	  else if (n == 98) result = "Ninety Eight";
	  else if (n == 99) result = "Ninety Nine";
    return result;
  endfunction
endmodule
