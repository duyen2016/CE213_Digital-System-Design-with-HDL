library verilog;
use verilog.vl_types.all;
entity fsm_moore is
    generic(
        zero            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        one             : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        two             : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        reset           : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        X               : in     vl_logic;
        Z               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of zero : constant is 1;
    attribute mti_svvh_generic_type of one : constant is 1;
    attribute mti_svvh_generic_type of two : constant is 1;
    attribute mti_svvh_generic_type of reset : constant is 1;
end fsm_moore;
