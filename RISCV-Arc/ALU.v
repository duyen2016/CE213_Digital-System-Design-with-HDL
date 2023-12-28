module alu(reg1, reg2, ALUsel, ALUresult);
  input [31:0] reg1, reg2;
  input [3:0] ALUsel;
  output reg [31:0] ALUresult;
  
  always @(*) begin
  case (ALUsel)
    4'b0000:
      ALUresult = reg1 & reg2;
    4'b0001: 
      ALUresult = reg1 | reg2;
    4'b0010:
      ALUresult = reg1 + reg2;
    4'b0011:
      ALUresult = {reg2[19:0], {12{1'b0}}};
    4'b0110:
      ALUresult = reg1 - reg2;
    4'b0111:
      ALUresult = (reg1 < reg2)? 32'h1 : 32'h0;
    4'b1100:
      ALUresult = ~(reg1 | reg2);
      endcase
  end
endmodule

