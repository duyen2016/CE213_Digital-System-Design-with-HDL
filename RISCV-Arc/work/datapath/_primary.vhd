library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        ImmSel          : in     vl_logic_vector(1 downto 0);
        RegWEn          : in     vl_logic;
        Bsel            : in     vl_logic;
        ALUSel          : in     vl_logic_vector(3 downto 0);
        MemRW           : in     vl_logic;
        WBSel           : in     vl_logic
    );
end datapath;
