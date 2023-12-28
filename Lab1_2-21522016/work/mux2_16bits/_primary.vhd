library verilog;
use verilog.vl_types.all;
entity mux2_16bits is
    port(
        S               : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        F               : out    vl_logic_vector(15 downto 0)
    );
end mux2_16bits;
