library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        sel             : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(31 downto 0)
    );
end mux;
