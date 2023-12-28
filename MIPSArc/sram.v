module sram(clk, Address, WriteData, ReadData, WriteEn, ReadEn);
  input [31:0]Address, WriteData;
  input WriteEn, ReadEn, clk;
  output [31:0]ReadData;
  reg [31:0]ReadData;
  parameter [31:0]range = 32'h07ffffff;
  reg [31:0] ram_cell [range:0];
  
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
