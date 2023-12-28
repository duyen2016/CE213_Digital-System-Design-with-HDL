library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        reg1            : in     vl_logic_vector(31 downto 0);
        reg2            : in     vl_logic_vector(31 downto 0);
        ALUsel          : in     vl_logic_vector(3 downto 0);
        ALUresult       : out    vl_logic_vector(31 downto 0)
    );
end alu;
