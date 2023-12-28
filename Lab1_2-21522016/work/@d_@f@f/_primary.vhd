library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        Clk             : in     vl_logic;
        D               : in     vl_logic_vector(15 downto 0);
        Q               : out    vl_logic_vector(15 downto 0)
    );
end D_FF;
