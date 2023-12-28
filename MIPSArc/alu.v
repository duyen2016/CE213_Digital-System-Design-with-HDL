module alu(Op1, Op2, ALUcontrol, ALUresult, isZero);
  input [31:0] Op1, Op2;
  input [3:0] ALUcontrol;
  output reg [31:0] ALUresult;
  output reg isZero;
  always @(*) begin
  case (ALUcontrol)
    4'b0000:
      ALUresult = Op1 & Op2;
    4'b0001: 
      ALUresult = Op1 | Op2;
    4'b0010:
      ALUresult = Op1 + Op2;
    4'b0110:
      ALUresult = Op1 - Op2;
    4'b0111:
      ALUresult = (Op1 < Op2)? 32'h1 : 32'h0;
    4'b1100:
      ALUresult = ~(Op1 | Op2);
      endcase
  isZero = (ALUresult == 0)? 1:0;
  end
endmodule