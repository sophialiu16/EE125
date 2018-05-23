library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity light_rotator is 
	generic(		
		T_CLK_SYS: positive := 20; ---period of 50 MHz system clock (20 ns) 
		T_CLK: positive := 1000000); -- period of 1 KHz (10^6 ns)
	port(
		-- dir := 1 cw, 0 ccw rotation
		clk_sys, rst, stp, spd, dir: in std_logic; 
		ssd: out std_logic_vector(6 downto 0); 
		tout : out std_logic_vector(8 downto 0));
end entity;
--------------------------------------------------------------------------------
architecture light_rotator of light_rotator is
	-- ssd FSM 
	type state is (A, AB, B, BC, C, CD, D, DE, E, EF, F, FA); 
	signal pr_state, nx_state: state; 
	attribute enum_encoding: string;
	attribute enum_encoding of state: type is "sequential";

	signal clk: std_logic; 
	signal T1: natural ;   
	constant T2: natural  := 20; -- 20 ms @ 1kHz clock 
	constant TMAX: natural:= 250; 
	signal t: natural range 0 to 250-1; -- max(T1, T2) = 250
	
	-- speed FSM 
	type spd_state is (S1, S2, S3, S4, S5, S6); 
	signal spd_pr_state, spd_nx_state: spd_state; 
	attribute enum_encoding of spd_state: type is "sequential";

	-- debouncing
	constant TDMAX : natural := 20; -- 20 ms debounce time
	signal spd_deb : std_logic; 
	
	begin 
		-- FSM for ssd rotation 
		process(all) 
		begin
			case pr_state is 
				when A => 
					ssd <= "0111111"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= AB; 
						else 
							nx_state <= FA; 
						end if; 
					else 
						nx_state <= A; 
					end if; 
				when AB => 
					ssd <= "0011111"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= B; 
						else 
							nx_state <= A; 
						end if; 
					else 
						nx_state <= AB; 
					end if; 	
				when B => 
					ssd <= "1011111"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= BC; 
						else 
							nx_state <= AB; 
						end if; 
					else 
						nx_state <= B; 
					end if; 
				when BC => 
					ssd <= "1001111"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= C; 
						else 
							nx_state <= B; 
						end if; 
					else 
						nx_state <= BC; 
					end if;				
				when C => 
					ssd <= "1101111"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= CD; 
						else 
							nx_state <= BC; 
						end if; 
					else 
						nx_state <= C; 
					end if; 
				when CD => 
					ssd <= "1100111"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= D; 
						else 
							nx_state <= C; 
						end if; 
					else 
						nx_state <= CD; 
					end if;	
				when D => 
					ssd <= "1110111"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= DE; 
						else 
							nx_state <= CD; 
						end if; 
					else 
						nx_state <= D; 
					end if; 
				when DE => 
					ssd <= "1110011"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= E; 
						else 
							nx_state <= D; 
						end if; 
					else 
						nx_state <= DE; 
					end if;	
				when E => 
					ssd <= "1111011"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= EF; 
						else 
							nx_state <= DE; 
						end if; 
					else 
						nx_state <= E; 
					end if; 
				when EF => 
					ssd <= "1111001"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= F; 
						else 
							nx_state <= E; 
						end if; 
					else 
						nx_state <= EF; 
					end if;	
				when F => 
					ssd <= "1111101"; 
					if t>=T1-1 then 
						if dir = '1' then 
							nx_state <= FA; 
						else 
							nx_state <= EF; 
						end if; 
					else 
						nx_state <= F; 
					end if; 
				when FA => 
					ssd <= "0111101"; 
					if t>=T2-1 then 
						if dir = '1' then 
							nx_state <= A; 
						else 
							nx_state <= F; 
						end if; 
					else 
						nx_state <= FA; 
					end if;	
				when others => 	
					nx_state <= A;  -- if invalid, restart
			end case; 
		end process;
	
		-- FSM for speed changing 
		process(spd_pr_state)
		begin
			case spd_pr_state is  
				when S1 => 
					T1 <= 250; 
						spd_nx_state <= S2; 
				when S2 => 
					T1 <= 180; 
						spd_nx_state <= S3; 
				when S3 => 
					T1 <= 130; 
						spd_nx_state <= S4; 
				when S4 => 
					T1 <= 100; 
						spd_nx_state <= S5; 
				when S5 => 
					T1 <= 70; 
						spd_nx_state <= S6; 
				when S6 => 
					T1 <= 40; 
						spd_nx_state <= S1;
				when others => 
						spd_nx_state <= S1; 
			end case;  
			tout <=  std_logic_vector(to_unsigned(T1, tout'length)); 
		end process;  

		-- debouncer
		process(clk, spd)
		variable pressed: std_logic := '0'; --- '0' if button unpressed, '1' if pressed
		variable counter : integer range 0 to TDMAX := 0; 
		begin
			if (pressed = '0' and rising_edge(clk) and spd = '0' and counter /= TDMAX) then 
				counter := counter + 1; 	
				if counter = TDMAX then 
					pressed := '1';
				end if; 
				
			elsif (pressed = '0' and rising_edge(clk) and spd = '1') then 
				counter := 0; 
			
			elsif (pressed = '1' and rising_edge(clk) and spd = '1' and counter /= TDMAX) then 
				counter := counter + 1; 	
				if counter = TDMAX then 
					pressed := '0'; 
				end if; 
				
			elsif(pressed = '1' and rising_edge(clk) and spd = '0') then 
				counter := 0; 
			end if;
			spd_deb <= not pressed; 
		end process;
		
		-- timer
		process(clk, rst, stp) 
		begin 
			if rst = '0' then
				t <= 0; 
			elsif rising_edge(clk) and stp = '1' then 
				if pr_state /= nx_state then 
					t <= 0; 
				elsif t /= TMAX then 
					t <= t+1; 
				end if; 		
			end if; 
		end process; 
		
		-- ssd state register 
		process (clk, rst)  
		begin 
			if rst = '0' then 
				pr_state <= A;  
			elsif rising_edge(clk) then 
				pr_state <= nx_state; 
			end if; 
		end process; 
		
		-- spd changing state register 
		process (spd_deb, rst)  
		begin 
			if rst = '0' then 
				spd_pr_state <= S1; 
			elsif falling_edge(spd_deb) then 
				spd_pr_state <= spd_nx_state; 
			end if; 
		end process; 
		
		--- generate 1 KHz clock
		process(clk_sys) 
		variable sc_counter : integer range 0 to T_CLK/T_CLK_SYS := 0;
		begin
			if rising_edge(clk_sys) then 
				sc_counter := sc_counter + 1; 
				if sc_counter< T_CLK/T_CLK_SYS then 
					clk <= '0'; 
				else 
					clk <= '1'; 
				end if;  
				
				if sc_counter = T_CLK/T_CLK_SYS then 
					sc_counter := 0; 
				end if; 
			end if;
		end process;	
end architecture;  