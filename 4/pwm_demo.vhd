library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---use ieee.math_real.all;
--------------------------------------------------------------------------------
entity pwm_demo is 
	generic(
		---F_CLK: positive := 50000000;
		T_CLK: positive := 20; ---50 MHz clock has period of 20 ns
		T_CLK_PWM: positive := 120; --- 120 ns
		BITS_DUTY: positive := 3);
	port(
		duty: in std_logic_vector(BITS_DUTY-1 downto 0);
		clk_pwm: in std_logic;
		count: out std_logic_vector(BITS_DUTY-1 downto 0);
		pwm: out std_logic); 
end entity;
--------------------------------------------------------------------------------
architecture pwm_demo of pwm_demo is
begin 
	process(clk_pwm)
	variable counter : integer range 0 to 2**BITS_DUTY - 2 := 0;
	begin 
		count <= std_logic_vector(to_unsigned(counter, count'length));
		if(counter< to_integer(unsigned(duty))) then 
			pwm <= '1'; 
		else 
			pwm <= '0'; 
		end if; 
		
		if(rising_edge(clk_pwm)) then 
			counter := counter + 1; 
			if(counter = 2**BITS_DUTY - 1) then 
				counter := 0; 
			end if;  
		end if;
	end process; 
end architecture; 
			