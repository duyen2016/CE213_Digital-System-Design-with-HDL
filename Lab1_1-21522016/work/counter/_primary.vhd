library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        Clk             : in     vl_logic;
        Prs             : in     vl_logic_vector(2 downto 0);
        Clr             : in     vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end counter;
