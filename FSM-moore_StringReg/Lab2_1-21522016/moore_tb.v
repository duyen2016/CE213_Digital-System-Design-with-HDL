`timescale 1ns/100ps
module moore_tb();
  reg clk, X, rst;
  wire Z;
  initial begin
  forever
    #10 clk = ~clk;
    end
  initial begin
    forever #20 X = $random;
    end
  fsm_moore f0(clk, rst, X, Z);
  
  initial begin
      #0 clk = 0;
      #0 rst = 1;
      #10 rst = 0;
      #1000 $stop;
    end

endmodule
