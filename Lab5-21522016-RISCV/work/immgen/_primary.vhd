library verilog;
use verilog.vl_types.all;
entity immgen is
    port(
        \in\            : in     vl_logic_vector(24 downto 0);
        immsel          : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end immgen;
