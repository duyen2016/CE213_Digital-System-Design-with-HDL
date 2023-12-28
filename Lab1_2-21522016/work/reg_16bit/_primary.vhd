library verilog;
use verilog.vl_types.all;
entity reg_16bit is
    port(
        W               : in     vl_logic;
        INPUT           : in     vl_logic_vector(15 downto 0);
        Clk             : in     vl_logic;
        OUTPUT          : out    vl_logic_vector(15 downto 0)
    );
end reg_16bit;
