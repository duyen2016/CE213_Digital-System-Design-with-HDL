library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        Op1             : in     vl_logic_vector(31 downto 0);
        Op2             : in     vl_logic_vector(31 downto 0);
        ALUcontrol      : in     vl_logic_vector(3 downto 0);
        ALUresult       : out    vl_logic_vector(31 downto 0);
        isZero          : out    vl_logic
    );
end alu;
