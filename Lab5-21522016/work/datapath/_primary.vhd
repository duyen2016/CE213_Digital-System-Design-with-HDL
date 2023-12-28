library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        ALUcontrol      : in     vl_logic_vector(3 downto 0);
        MemWrite        : in     vl_logic;
        MemRead         : in     vl_logic;
        MemToReg        : in     vl_logic;
        clk             : in     vl_logic
    );
end datapath;
