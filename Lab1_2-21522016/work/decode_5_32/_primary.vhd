library verilog;
use verilog.vl_types.all;
entity decode_5_32 is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        D               : out    vl_logic_vector(31 downto 0)
    );
end decode_5_32;
