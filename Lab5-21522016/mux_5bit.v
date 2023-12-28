module mux5bit(sel, a, b, s);
  input sel;
  input [4:0] a, b;
  output [4:0] s;
    assign s = (sel) ? b : a;
endmodule

