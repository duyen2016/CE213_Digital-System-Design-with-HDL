`timescale 1ns/100ps
module sram_tb();
  reg clk, WriteEn, ReadEn;
  wire [31:0] ReadData;
  reg [9:0] Address;
  reg [31:0] WriteData;
  initial begin 
  forever #10 clk = ~clk;
  end
  initial begin
    #0 clk = 0;
    #0 WriteEn = 0;
    #40 WriteEn = 1;
    #300 WriteEn = 0;
    end
  initial begin
    #0 ReadEn = 0;
    #300 ReadEn = 1;
    end
  initial begin
    #5 Address = 10'h008;
    #5 WriteData = 32'h00000893;
    #700 $stop;
    end
  sram s0(clk, Address, WriteData, ReadData, WriteEn, ReadEn);
  always @(*)
  begin
  if (WriteData == ReadData) 
    #0 $display("WriteData = %d and ReadData = %d ---> EQUAL", WriteData, ReadData);
    else
    #0 $display("WriteData = %d and ReadData = %d ---> NOTEQUAL", WriteData, ReadData);
  end
endmodule
