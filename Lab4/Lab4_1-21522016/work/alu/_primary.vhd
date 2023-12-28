library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        f               : out    vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        ovf_flag        : out    vl_logic
    );
end alu;
