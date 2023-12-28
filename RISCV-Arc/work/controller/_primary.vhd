library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        ImmSel          : out    vl_logic_vector(1 downto 0);
        RegWEn          : out    vl_logic;
        Bsel            : out    vl_logic;
        ALUSel          : out    vl_logic_vector(3 downto 0);
        MemRW           : out    vl_logic;
        WBSel           : out    vl_logic
    );
end controller;
