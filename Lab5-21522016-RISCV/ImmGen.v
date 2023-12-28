module immgen(in, immsel, out);
  //ImmSel = 00 ~ I
  //ImmSel = 01 ~ S
  //ImmSel = 10 ~ U
  input [24:0] in;
  input [1:0] immsel;
  output reg [31:0] out;
  wire [31:0] s, i, u;
  assign s = {{20{in[24]}}, {in[24:18], in[4:0]}};
  assign i = {{20{in[24]}}, {in[24:13]}};
  assign u = {{12{in[24]}}, in[24:5]};
  always @(*) begin
      case (immsel)
        2'b00: out = i;
        2'b01: out = s;
        2'b10: out = u;
        default: out = 32'hz;
        endcase
    end
endmodule


