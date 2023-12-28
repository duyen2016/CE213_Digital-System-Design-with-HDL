module sram(clk, Address, WriteData, ReadData, WriteEn, ReadEn);
  input [9:0]Address;
  input [31:0]WriteData;
  input WriteEn, ReadEn, clk;
  output [31:0]ReadData;
  reg [31:0]ReadData;
  reg [31:0] ram_cell [255:0];
  
  always @(posedge clk) begin
    if (WriteEn) begin 
      ram_cell[Address] <= WriteData;
    end
  end
  
  always @(*) begin
    if (ReadEn) begin
      ReadData = ram_cell[Address];
    end
    end
endmodule
