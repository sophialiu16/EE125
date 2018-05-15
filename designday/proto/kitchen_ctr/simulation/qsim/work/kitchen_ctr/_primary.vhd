library verilog;
use verilog.vl_types.all;
entity kitchen_ctr is
    port(
        rst             : in     vl_logic;
        down_en         : in     vl_logic;
        clk             : in     vl_logic;
        btn_press       : in     vl_logic;
        led_out         : out    vl_logic;
        q               : out    vl_logic_vector(5 downto 0)
    );
end kitchen_ctr;
