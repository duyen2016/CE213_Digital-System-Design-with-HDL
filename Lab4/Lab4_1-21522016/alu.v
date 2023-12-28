module alu(a, b, f, sel, ovf_flag);
  input [31:0] a, b;
  input [2:0] sel;
  output reg ovf_flag;
  output reg [31:0] f;
  reg [31:0]b_temp;
  always @(a or b or sel) begin
    ovf_flag = 0;
    case (sel)
      3'b000: f = ~a;
      3'b001: f = a & b;
      3'b010: f = a ^ b;
      3'b011: f = a | b;
      3'b100: f = a - 1;
      3'b101: begin
        f = a + b;
        ovf_flag = (a[31] ^ f[31])&~(a[31]^b[31]);
      end
      3'b110: begin
        f = a - b;
        b_temp = ~b + 1;
        ovf_flag = (a[31] ^ f[31])&~(a[31]^b_temp[31]);
      end
      3'b111: f = a + 1; 
      endcase
  end
endmodule
