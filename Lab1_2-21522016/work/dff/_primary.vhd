library verilog;
use verilog.vl_types.all;
entity dff is
    port(
        clk             : in     vl_logic;
        pre             : in     vl_logic;
        clr             : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end dff;
