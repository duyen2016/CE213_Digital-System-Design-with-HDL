`timescale 1ns/1ps
module processor_testbench();
  reg clk;
  initial forever #10 clk = ~clk;
  processor f(clk);
  initial begin
    #0 clk = 1'b0;
    #500 $stop;
  end
  always@(posedge clk) begin
    #5
    $display("pc = %h", f.PC);
    $display("inst = %h", f.inst);
    $display("control signal: ", f.clk, f.ImmSel, f.RegWEn, f.Bsel, f.ALUSel, f.MemRW, f.WBSel);
    $display("data A = %h", f.f1.DA);
    $display("data B = %h", f.f1.DB);
    $display("imm_gen output = %h", f.f1.imm);
    $display("mux_out = %h", f.f1.mux_out);
    $display("alu_res = %h", f.f1.alu_res);
    $display("read mem = %h", f.f1.memread);
    $display("wb = %h", f.f1.wb);
    $stop;
    end
  
  initial begin
  $readmemh("E:/CE213-Lab/Lab5-21522016-RISCV/inst_file.txt", f.f0.imem_cell);
  //$readmemh("E:/CE213-Lab/Lab5-21522016-RISCV/reg_file.txt", f.f1.f2.register);
  //$readmemh("E:/CE213-Lab/Lab5-21522016-RISCV/data_file.txt", f.f1.f5.dmem_cell);
  end
endmodule
