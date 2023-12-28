library verilog;
use verilog.vl_types.all;
entity sram is
    port(
        clk             : in     vl_logic;
        Address         : in     vl_logic_vector(9 downto 0);
        WriteData       : in     vl_logic_vector(31 downto 0);
        ReadData        : out    vl_logic_vector(31 downto 0);
        WriteEn         : in     vl_logic;
        ReadEn          : in     vl_logic
    );
end sram;
