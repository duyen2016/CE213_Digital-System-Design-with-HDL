module datapath(inst, clk, ImmSel, RegWEn, Bsel, ALUSel, MemRW, WBSel);
  input [31:0] inst;
  input RegWEn, Bsel, MemRW, WBSel, clk;
  input [1:0] ImmSel;
  input [3:0] ALUSel;
  //ImmSel = 00 ~ I
  //ImmSel = 01 ~ S
  //ImmSel = 10 ~ U
  
  wire [4:0] i0, i1, i2;
  wire [24:0] i3;
  wire [31:0] DA, DB, imm, mux_out, alu_res, memread, wb;
  assign i0 = inst[11:7];
  assign i1 = inst[19:15];
  assign i2 = inst[24:20];
  assign i3 = inst[31:7];
  immgen f1 (.in(i3), .immsel(ImmSel), .out(imm));
  regfile f2 (.WriteData(wb), .WriteAddress(i0), .RegWriteEn(RegWEn), .ReadAddress1(i1), 
  .ReadAddress2(i2), .ReadData1(DA), .ReadData2(DB), .Clk(clk));
  mux f3 (.sel(Bsel), .in0(DB), .in1(imm), .s(mux_out));
  alu f4 (.reg1(DA), .reg2(mux_out), .ALUsel(ALUSel), .ALUresult(alu_res));
  dmem f5 (.clk(clk), .Address(alu_res), .WriteData(DB), .ReadData(memread), .MemRW(MemRW));
  mux f6 (.sel(WBSel), .in0(memread), .in1(alu_res), .s(wb));
endmodule


