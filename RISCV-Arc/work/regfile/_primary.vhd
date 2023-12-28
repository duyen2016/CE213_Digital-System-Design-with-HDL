library verilog;
use verilog.vl_types.all;
entity regfile is
    port(
        WriteData       : in     vl_logic_vector(31 downto 0);
        WriteAddress    : in     vl_logic_vector(4 downto 0);
        RegWriteEn      : in     vl_logic;
        ReadAddress1    : in     vl_logic_vector(4 downto 0);
        ReadAddress2    : in     vl_logic_vector(4 downto 0);
        ReadData1       : out    vl_logic_vector(31 downto 0);
        ReadData2       : out    vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic
    );
end regfile;
