library verilog;
use verilog.vl_types.all;
entity p1 is
    port(
        rstn            : in     vl_logic;
        clk             : in     vl_logic;
        cnt             : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end p1;
