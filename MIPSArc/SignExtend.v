module SignExtend(in, out);
  input [15:0] in;
  output [31:0] out;
  assign out[31:0] = {{16{in[15]}}, in[15:0]};
endmodule
