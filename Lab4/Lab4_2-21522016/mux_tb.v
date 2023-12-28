`timescale 1ns/100ps
module mux_tb();
  reg sel;
  reg [31:0] a, b;
  wire [31:0] s;
  mux m0(sel, a, b, s);
  initial 
  forever #30 sel = ~sel;
  initial
  forever begin
    #20 a = a + 9;
    #0 b = b + 12;
    end
    always @(*) begin
      if (sel) begin
        if (s == b) 
          $display("sel = %d, b = %d, s = %d ---> TRUE", sel, b, s);
          else
            $display("sel = %d, b = %d, s = %d ---> FALSE", sel, b, s);
        end
      else begin
          if (s == a)
            $display("sel = %d, a = %d, s = %d ---> TRUE", sel, a, s);
            else
              $display("sel = %d, a = %d, s = %d ---> FALSE", sel, a, s);
        end
    end
    initial begin
      #0 a = 0;
      #0 b = 0;
      #0 sel = 0;
      #800 $stop;
    end
endmodule
