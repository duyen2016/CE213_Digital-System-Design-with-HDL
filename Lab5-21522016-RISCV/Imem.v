module imem(Address, InstCode);
  input [31:0]Address;
  output reg [31:0]InstCode;
  parameter [31:0]range = 32'h07ffffff;
  reg [7:0] imem_cell [range:0];
  
  always @(*) begin
      InstCode = {imem_cell[Address+3], imem_cell[Address+2],
       imem_cell[Address+1], imem_cell[Address]};
    end
endmodule

