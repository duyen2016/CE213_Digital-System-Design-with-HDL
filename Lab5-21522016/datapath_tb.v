//add $1, $2, $3
//lw $1, 0($2)
//sw $1, 0($2)
`timescale 1ns/100ps
module datapath_tb();
  reg [31:0] inst;
  reg RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, clk;
  reg [3:0]ALUcontrol;
  datapath f(inst, RegDst, RegWrite, ALUSrc, ALUcontrol, MemWrite, MemRead, MemToReg, clk);
  initial begin
    #10
    clk = 1'b1; 
    /*inst = 32'b00000000010000110000100000100000;
    RegDst = 1'b1;
    RegWrite = 1'b1;
    ALUSrc = 1'b0;
    ALUcontrol = 4'b0010;
    MemWrite = 1'b0;
    MemRead = 1'b0;
    MemToReg = 1'b0;*/
    //lw $1, 0, ($s2)
    /*inst = 32'b10001100010000010000000000000000;
    RegDst = 1'b0;
    RegWrite = 1'b1;
    ALUSrc = 1'b1;
    ALUcontrol = 4'b0010;
    MemWrite = 1'b0;
    MemRead = 1'b1;
    MemToReg = 1'b1;*/
    //sw $1, (0)$2
    inst = 32'b10101100010000010000000000000000;
    RegDst = 1'b0;
    RegWrite = 1'b0;
    ALUSrc = 1'b1;
    ALUcontrol = 4'b0010;
    MemWrite = 1'b1;
    MemRead = 1'b0;
    MemToReg = 1'b0;
    #800 $stop;
  end
  initial forever #10 clk = ~clk;
endmodule