`timescale 1ns/100ps
module regfile_tb();
  reg [31:0] WriteData;
  wire [31:0] ReadData1, ReadData2;
  reg [4:0] WriteAddress, ReadAddress1, ReadAddress2, i;
  reg Clk, ReadWriteEn;
    
  regfile f(WriteData, WriteAddress, ReadWriteEn, ReadAddress1, ReadAddress2, ReadData1, ReadData2, Clk);
  
  initial begin
  forever #10 Clk = ~Clk;
  end
  
  initial begin
  forever 
  #50 ReadWriteEn = ~ ReadWriteEn;
  end
  
  initial begin
    #0 Clk = 1'b0;
    ReadWriteEn = 1'b0;
    WriteData = 32'd0;
    WriteAddress = 5'd0;
    ReadAddress1 = 5'd0;
    ReadAddress2 = 5'd0;
    #840 $stop;   
  end
  
  always @(*) begin
  forever begin 
    for (i = 0 ; i < 32; i = i + 1) begin
        #4 WriteAddress = WriteAddress + 1;
        #8 WriteData = WriteData + 1;    
        #5 ReadAddress1 = ReadAddress1 + 5;   
        #8 ReadAddress2 = ReadAddress2 + 8; 
      end    
    end
  end
    

endmodule
