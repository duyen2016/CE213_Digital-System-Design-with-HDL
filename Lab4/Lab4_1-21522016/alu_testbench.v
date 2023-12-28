`timescale 1ns/100ps;
module alu_testbench();
  reg [2:0] sel;
  reg [31:0] a, b, a_temp, b_temp, f_temp;
  wire ovf_flag;
  wire [31:0] f;
  reg [7:0] sign_a, sign_b, sign_f;
  alu f0(a, b, f, sel, ovf_flag);
  
  initial begin
    sel = 2'b000;
    a = 32'h7ffffff0;
    b = 32'h7fffff00;  
    #500 $stop;
  end
  
  initial 
  forever #20 sel = sel + 1;
  
  initial 
  forever begin
      #30 a = a + 1;
      #10 b = b + 5;
    end
  
  always @(*) begin
    a_temp = 32'h0;
    b_temp = 32'h0;
    f_temp = 32'h0;
    sign_a = "";
    sign_b = "";
    sign_f = "";
    #1
    case (sel)
      3'b000: 
        $display("a = %b, Complement a = %b", a, f);      
      3'b001: 
        $display("a = %b, b = %b, a and b = %b", a, b, f);
      3'b010:
        $display("a = %b, b = %b, a xor b = %b", a, b, f);
      3'b011: 
        $display("a = %b, b = %b, a or b = %b", a, b, f);
      3'b100: 
        $display("a = %d, a - 1 = %d", a, f);
      3'b101: begin
        if (a[31]) begin
          a_temp = ~a + 1;
          sign_a = "-";
          end
          else a_temp = a;
        if (b[31]) begin
          b_temp = ~b + 1;
          sign_b = "-";
          end
          else b_temp = b;
        if (f[31]) begin
          f_temp = ~f + 1;
          sign_f = "-";
          end
          else f_temp = f;
        $display("a = %s%d, b = %s%d, a + b = %s%d, overflow = %b", sign_a, a_temp, sign_b, b_temp, sign_f, f_temp, ovf_flag);
      end
      3'b110: begin 
        if (a[31]) begin
          a_temp = ~a + 1;
          sign_a = "-";
          end
          else a_temp = a;
        if (b[31]) begin
          b_temp = ~b + 1;
          sign_b = "-";
          end
          else b_temp = b;
        if (f[31]) begin
          f_temp = ~f + 1;
          sign_f = "-";
          end
          else f_temp = f;
        $display("a = %s%d, b = %s%d, a - b = %s%d, overflow = %b", sign_a, a_temp, sign_b, b_temp, sign_f, f_temp, ovf_flag);
      end
      3'b111:
        $display("a = %d, a + 1 = %d", a, f);
      endcase
    end
endmodule
