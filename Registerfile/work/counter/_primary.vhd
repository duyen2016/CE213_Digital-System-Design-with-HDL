library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        pre             : in     vl_logic_vector(2 downto 0);
        clr             : in     vl_logic_vector(2 downto 0);
        D               : in     vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end counter;
