library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        sel             : in     vl_logic;
        in0             : in     vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(31 downto 0)
    );
end mux;
