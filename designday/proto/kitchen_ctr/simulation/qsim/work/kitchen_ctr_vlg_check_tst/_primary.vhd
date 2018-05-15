library verilog;
use verilog.vl_types.all;
entity kitchen_ctr_vlg_check_tst is
    port(
        led_out         : in     vl_logic;
        q               : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end kitchen_ctr_vlg_check_tst;
