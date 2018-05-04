library verilog;
use verilog.vl_types.all;
entity guess_the_circuit is
    port(
        clk             : in     vl_logic;
        y               : out    vl_logic
    );
end guess_the_circuit;
