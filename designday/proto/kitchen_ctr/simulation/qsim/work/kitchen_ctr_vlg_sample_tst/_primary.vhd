library verilog;
use verilog.vl_types.all;
entity kitchen_ctr_vlg_sample_tst is
    port(
        btn_press       : in     vl_logic;
        clk             : in     vl_logic;
        down_en         : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end kitchen_ctr_vlg_sample_tst;
