module fsm_moore(clk, rst, X, Z);
  input clk, X, rst;
  output Z;
  reg Z;
  parameter zero = 2'b00,
  one = 2'b01,
  two = 2'b10,
  reset = 2'b11;
  reg [1:0] current_state, next_state;
  
  always @(posedge clk) begin
    if (rst)
      current_state <= reset;
    else
      current_state <= next_state;
  end
  
  always @(X, current_state) begin
    case (current_state)
      reset: if (X == 0)
          next_state = zero;
        else 
          next_state = reset;
      zero: if (X == 1) 
          next_state = one;
          else
            next_state = zero;
      one: if (X == 0)
          next_state = two;
          else
            next_state = reset;
      two: if (X == 1)
            next_state = one;
          else
            next_state = zero;
      default: next_state = reset;
      endcase
  end
  
  always @(current_state) begin
      case (current_state)
        reset: Z = 0;
        zero: Z = 0;
        one: Z = 0;
        two: Z = 1;
        endcase
    end
endmodule
  

