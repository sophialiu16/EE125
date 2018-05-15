--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity kitchen_ctr is
    generic (
        COUNT_TOP:  positive := 60;
        BITS:       positive := 6);
    port (
        -- rst      - asynchronous reset 
        -- down_en  - enable counting down 
        -- clk      - clock for counting down 
        -- btn_press   - button input, active high rising edge
        rst, down_en, clk, btn_press:  in      std_logic;
        -- LED output, active high
        led_out:                    out     std_logic;
        -- Count output
        q:                          out     std_logic_vector(BITS-1 downto 0) );
end entity;
--------------------------------------------------------------------------------
architecture kitchen_ctr of kitchen_ctr is
	 signal clock: std_logic;
	 signal count: natural;
	 signal counted_to_zero: std_logic;
begin
    process(rst, clk, btn_press, down_en, count, counted_to_zero)
    begin
	     clock <= (clk and down_en) or (btn_press and (not down_en));
        -- If resetting, then clear count
        if rst = '1' then
            count <= 0;
				counted_to_zero <= '0';
        -- Else if counting down is enabled, then decrement
        elsif rising_edge(clock) and (down_en = '1') then
				if count = 0 then 
			       counted_to_zero <= '1';
			   else 
				    count <= count - 1;
				end if;
        -- Else if counting down isn't enabled and button pressed, count up
        elsif rising_edge(clock) and (down_en = '0') then
            count <= count + 1;
		  end if;

        -- Ensure counter does not run off [0, COUNT_TOP]
        if count < 0 then 
            count <= 0;
        elsif count > COUNT_TOP and (down_en = '0') then 
            count <= COUNT_TOP;
        end if;
        
        -- Light LED appropriately
        if counted_to_zero = '1' then
            led_out <= '1';
        else
            led_out <= '0';
        end if;
		  q <= std_logic_vector(to_unsigned(count, q'length));
    end process;
end architecture;
--------------------------------------------------------------------------------
