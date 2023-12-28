module counter(Clk, Prs, Clr, Q);
  input Clk;
  input [2:0] Prs, Clr;
  output [2:0] Q;
  reg [2:0] next_state;
  reg [2:0] Q;
  always @(Q) begin
  case(Q)
    3'b000: next_state = 3'b110;
    3'b001: next_state = 3'b110;
    3'b010: next_state = 3'b111;
    3'b011: next_state = 3'b000;
    3'b100: next_state = 3'b111;
    3'b101: next_state = 3'b010;
    3'b110: next_state = 3'b100;
    3'b111: next_state = 3'b011;
  endcase 
  end
  always @(Prs || Clr) begin
      if (Prs[2]) begin 
        Q[2] = 1;
  	   end
      if (Prs[1]) begin 
        Q[1] = 1;
      end
      if (Prs[0]) begin 
        Q[0] = 1;
      end
      if (Clr[2]) begin 
        Q[2] = 0;
      end
      if (Clr[1]) begin 
        Q[1] = 0;
      end
      if (Clr[0]) begin 
        Q[0] = 0;
      end
  end
  always @ (posedge Clk)
    if (Prs == 3'b000 & Clr == 3'b000) 
    begin
      Q <= next_state;
    end
endmodule
