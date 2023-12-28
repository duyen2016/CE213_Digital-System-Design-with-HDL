module processor(clk);
  input clk;
  reg [31:0] PC = -4;
  wire [31:0] inst;
  wire [1:0] ImmSel;
  wire RegWEn, Bsel, MemRW, WBSel;
  wire [3:0] ALUSel;
  always @(posedge clk) begin
    PC <= PC + 32'h4;
  end
  imem f0 (.Address(PC), .InstCode(inst));
  datapath f1 (inst, clk, ImmSel, RegWEn, Bsel, ALUSel, MemRW, WBSel);
  controller f2 (inst, ImmSel, RegWEn, Bsel, ALUSel, MemRW, WBSel);
endmodule
