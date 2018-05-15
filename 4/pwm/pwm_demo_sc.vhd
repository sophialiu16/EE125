library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---use ieee.math_real.all;
--------------------------------------------------------------------------------
entity pwm_demo_sc is --- demo from system clock 
	generic(
		T_CLK: positive := 20; ---50 MHz clock has period of 20 ns
		T_CLK_PWM: positive := 120; --- 120 ns 
		BITS_DUTY: positive := 3);
	port(
		duty: in std_logic_vector(BITS_DUTY-1 downto 0);
		clk_sys: in std_logic; 
		clk_pwm_out, pwm: out std_logic;
		count: out std_logic_vector(BITS_DUTY-1 downto 0)); 
end entity;
--------------------------------------------------------------------------------
architecture pwm_demo_sc of pwm_demo_sc is
	signal clk_pwm: std_logic;
begin 
	process(clk_sys) --- generate pwm clock
	variable sc_counter : integer range 0 to T_CLK_PWM/T_CLK + 1 := 0;
	begin
		if(sc_counter< T_CLK_PWM/T_CLK) then 
			clk_pwm <= '0'; 
		else 
			clk_pwm <= '1';  
		end if; 
		clk_pwm_out <= clk_pwm; ---for testing
		
		if(rising_edge(clk_sys)) then 
			sc_counter := sc_counter + 1; 
			if(sc_counter > T_CLK_PWM/T_CLK) then 
				sc_counter := 0; 
			end if; 
		end if;
		count <= std_logic_vector(to_unsigned(sc_counter, count'length));
	end process;
	
	process(clk_pwm)
	variable pwm_counter : integer range 0 to 2**BITS_DUTY - 1 := 0;
	begin 
		---count <= std_logic_vector(to_unsigned(pwm_counter, count'length));
		if(pwm_counter< to_integer(unsigned(duty))) then 
			pwm <= '1'; 
		else 
			pwm <= '0'; 
		end if; 
		
		if(rising_edge(clk_pwm)) then 
			pwm_counter := pwm_counter + 1; 
			if(pwm_counter = 2**BITS_DUTY - 1) then 
				pwm_counter := 0; 
			end if;
		end if;
	end process; 
end architecture; 
			