class packet;
     static int packet_count = 0;   
     int packet_id;                 

     byte preamble[7];
     byte sfd = 8'b10101011;
     byte dest_addr[6];
     byte src_addr[6];
     byte length[2];             
     byte payload[];            
     byte fcs[4];
     byte Qb[$];                 
    
	 function void store_in_Qb();
         Qb = {}; 
         foreach (preamble[i]) Qb.push_back(preamble[i]);
         Qb.push_back(sfd);
         foreach (dest_addr[i]) Qb.push_back(dest_addr[i]);
         foreach (src_addr[i]) Qb.push_back(src_addr[i]);
         foreach (length[i]) Qb.push_back(length[i]);
         foreach (payload[i]) Qb.push_back(payload[i]);
         foreach (fcs[i]) Qb.push_back(fcs[i]);
        endfunction
		
     function new();
         packet_count++;
         packet_id = packet_count;

         foreach (preamble[i])
             preamble[i] = $urandom_range(0, 255);

         foreach (dest_addr[i])
             dest_addr[i] = $urandom_range(0, 255);

         foreach (src_addr[i])
             src_addr[i] = $urandom_range(0, 255);

         length = {0, $urandom_range(4, 15)};

         payload = new[length[1]];
         foreach (payload[i])
             payload[i] = $urandom_range(0, 255);

         foreach (fcs[i])
             fcs[i] = $urandom_range(0, 255);

         store_in_Qb(); 
        endfunction
    
     function packet copy();
         packet temp = new();
         temp.preamble = this.preamble;
         temp.sfd = this.sfd;
         temp.dest_addr = this.dest_addr;
         temp.src_addr = this.src_addr;
         temp.length = this.length;
         temp.payload = new[this.payload.size()];
         temp.payload = this.payload;
         temp.fcs = this.fcs;
         temp.store_in_Qb();
         return temp;
        endfunction

     function int compare(packet pkt);
         if ((this.preamble   != pkt.preamble)  ||
            (this.sfd        != pkt.sfd)       ||
            (this.dest_addr  != pkt.dest_addr) ||
            (this.src_addr   != pkt.src_addr)  ||
            (this.length     != pkt.length)    ||
            (this.payload    != pkt.payload)   ||
            (this.fcs        != pkt.fcs))
            return 1; 
         else
            return 0; 
        endfunction

     function void display();
         int len_val = {length[0], length[1]};
         $display("------------------------------------");
         $display("Packet ID : %0d", packet_id);
         $display("Packet Info:");
         $display("------------------------------------");
         $display("Preamble : %p", preamble);
         $display("SFD      : %0d", sfd);
         $display("Dest Addr: %p", dest_addr);
         $display("Src Addr : %p", src_addr);
         $display("Length   : %p  Value = %0d", length, length[1]);
         $display("Payload  : %p", payload);
         $display("FCS      : %p", fcs);
         $display("Qb       : %p", Qb);
         $display("Qb Size  : %0d bytes", Qb.size());
         $display("------------------------------------");
        endfunction
endclass


module tb;
     packet pkt1, pkt2, p, p1;
     int result;

     initial begin
         pkt1 = new();
         pkt2 = new();

         $display("===== Packet 1 =====");
         pkt1.display();

         $display("===== Packet 2 =====");
         pkt2.display();

         result = pkt1.compare(pkt2);
         if (result == 0)
            $display("Result : pkt1 and pkt2 are SAME");
         else
            $display("Result : pkt1 and pkt2 are DIFFERENT");

         pkt2 = pkt1.copy();
         result = pkt1.compare(pkt2);
         if (result == 0)
            $display("After copy : pkt1 and pkt2 are SAME");
         else
            $display("After copy : pkt1 and pkt2 are DIFFERENT");

         repeat(10) p = new();
         
         p1 = new();
         $display("Total Packets Created = %0d", p1.packet_id);
     end
endmodule
