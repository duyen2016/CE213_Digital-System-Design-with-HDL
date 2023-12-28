module dmem(clk, Address, WriteData, ReadData, MemRW);
  input [31:0]Address, WriteData;
  input MemRW, clk;
  output [31:0]ReadData;
  reg [31:0]ReadData;
  parameter [31:0]range = 32'h07ffffff;
  reg [31:0] dmem_cell [range:0];
  //Write = 0; Read = 1
  always @(posedge clk) begin
    if (~MemRW) begin 
      dmem_cell[Address] <= WriteData;
    end
  end
  
  always @(*) begin
    if (MemRW) begin
      ReadData = dmem_cell[Address];
    end
    end
endmodule

