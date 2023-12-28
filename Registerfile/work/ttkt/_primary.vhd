library verilog;
use verilog.vl_types.all;
entity ttkt is
    port(
        Q               : in     vl_logic_vector(2 downto 0);
        D               : out    vl_logic_vector(2 downto 0)
    );
end ttkt;
