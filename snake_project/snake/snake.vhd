library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; 
--------------------------------------------------------------------------------
entity snake is 
	generic(	
		GRID_WIDTH: positive := 20; 
		GRID_LENGTH: positive := 15; 
		MAX_SNAKE_LENGTH: positive:= 10; 
		T_CLK_SYS: positive := 20; ---period of 50 MHz system clock (20 ns) 
		T_CLK: positive := 100000000); -- period of 10 Hz (10^8 ns)
	port(
		clk_sys, rst, ukey, dkey, lkey, rkey: in std_logic; 
		ssd_score: out std_logic_vector(6 downto 0));
		-- output game grid display 
end entity;
--------------------------------------------------------------------------------
architecture snake of snake is
	type position is array(0 to 1) of natural; -- position (x, y), (0, 0) upper left corner
	type pos_array is array(natural range <>) of position; 
	type grid_row is array(natural range <>) of std_logic_vector;
	type grid is array(natural range <>) of grid_row; -- (0, 0) upper left corner
	signal head: natural := 1; 
	signal tail: natural := 0; -- head and tail pointers of snake 
	signal snake_body: pos_array(0 to MAX_SNAKE_LENGTH); -- queue for snake body 
	signal apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
	
	signal game_grid : grid(0 to GRID_LENGTH)(0 to GRID_WIDTH)(0 to 1) := (others => (others => ('0','0'))); 
	signal clk: std_logic; 
	signal game_end: std_logic:= '0'; 
	signal new_apple: std_logic:= '0'; 
	
	signal score: natural := 0; 
	
	-- direction FSM  
	type state is (udir, ddir, ldir, rdir); 
	signal pr_dir_state, nx_dir_state: state; 
	attribute enum_encoding: string;
	attribute enum_encoding of state: type is "sequential";
	
	
	-- check position is in array 
	function in_array (pos_list: pos_array; p1: position; h, t: natural) 
	return std_logic is 
		variable arr_i, arr_max, arr_min: natural; 
	begin 
		if t > h then -- array full 
			arr_max := MAX_SNAKE_LENGTH; 
			arr_min := 0; 
		else 
			arr_max := h; 
			arr_min := t;
		end if; 
		for i in 0 to MAX_SNAKE_LENGTH loop--pos_list'length loop
		    if i >=  arr_min and i <= arr_max and pos_list(i) = p1 then 
				return '1'; 
			 end if; 
		end loop; 
		return '0'; 
	end function in_array; 
	
begin -- split 
-- TODO init 
-- output score 

-- main game loop 
		process(clk)
		variable next_head: position := (0, 1); 
		variable next_apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
		--variable next_apple_x, next_apple_y: real; 
		--variable seed1, seed2 : positive;
		begin 
			if rising_edge(clk) and game_end = '0' then 
				if pr_dir_state = ddir then 
					if(next_head(1) + 1 < GRID_LENGTH) then 
						next_head := (next_head(0), next_head(1) + 1); 
					else 
						game_end <= '1'; 
					end if; 
						
				elsif pr_dir_state = udir then 
					if(next_head(1) - 1 >= 0) then 
						next_head := (next_head(0), next_head(1) - 1); 
					else 
						game_end <= '1'; 
					end if; 
					
				elsif pr_dir_state = rdir then 
					if(next_head(0) + 1 < GRID_WIDTH) then 
						next_head := (next_head(0) + 1, next_head(1)); 
					else 
						game_end <= '1'; 
					end if; 
					
				elsif pr_dir_state = ldir then 
					if(next_head(0) - 1 >= 0) then 
						next_head := (next_head(0) - 1, next_head(1)); 
					else 
						game_end <= '1'; 
					end if; 
				end if; 
				
				-- check for hitting snake body 
				if in_array(snake_body, next_head, head, tail) = '1' then  
					game_end <= '1'; 
				end if; 
				
				-- move snake to new position 
				head <= head + 1; 
				if(head >= MAX_SNAKE_LENGTH) then 
					head <= 0;
				end if; -- wrap head pointer around queue 
				
				snake_body(head) <= next_head; 	
				game_grid(snake_body(tail)(1))(snake_body(tail)(0)) <= ('0', '0'); 
				game_grid(snake_body(head)(1))(snake_body(head)(0)) <= ('0', '1'); --TODO 
				
				tail <= tail + 1; 
				if(tail >= MAX_SNAKE_LENGTH) then 
					tail <= 0;
				end if; 
				
				-- check for apple 
				if(next_head = apple) then 
					-- increment score, make snake longer (if not maxed), new apple
					score <= score + 1; 
					if (head + 1 /= tail) and (head + 1 /= tail + MAX_SNAKE_LENGTH) then --TODO ew
						if tail = 0 then 
							tail <= MAX_SNAKE_LENGTH - 1; 
						else 
							tail <= tail - 1; -- bring back old tail 
							game_grid(snake_body(tail)(1))(snake_body(tail)(0)) <= ('0', '1');
						end if; 
					end if; 
					new_apple <= '1';  
--					-- make new apple
--					while in_array(snake_body, next_apple, head, tail) = '1' loop
--						uniform(seed1, seed2, next_apple_x); -- 0 to 1 
--						uniform(seed1, seed2, next_apple_y); -- 0 to 1 
--						next_apple := (natural(next_apple_x * real(GRID_WIDTH)), natural(next_apple_y * real(GRID_LENGTH)));
--					end loop; 
--					apple <= next_apple;  
--					game_grid(apple(1))(apple(0)) <= 2;
				end if; 
				
			end if; 
			
			if rst = '0' then 
				game_end <= '0'; 
				next_head := (0, 1); --TODO constants
			end if; 
		
		end process; 
		
--		process(new_apple)
--		variable next_apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
--		variable next_apple_x, next_apple_y: real; 
--		variable seed1, seed2 : positive;	
--		begin 
--			-- make new apple
--			if new_apple = '1' then 
--				while in_array(snake_body, next_apple, head, tail) = '1' loop
--					uniform(seed1, seed2, next_apple_x); -- 0 to 1 
--					uniform(seed1, seed2, next_apple_y); -- 0 to 1 
--					next_apple := (natural(next_apple_x * real(GRID_WIDTH)), natural(next_apple_y * real(GRID_LENGTH)));
--				end loop; 
--				apple <= next_apple;  
--				game_grid(apple(1))(apple(0)) <= ('1', '0');
--				new_apple <= '0'; 
--			end if; 
--		end process; 
		
-- reset 
		process(rst) 
		begin 
			if falling_edge(rst) then 
				-- reset variables 
				score <= 0; 
				head <= 1; 
				tail <= 0; 
				snake_body(head) <= (0, 1); 
				snake_body(tail) <= (0, 0); 
				
				game_grid <= (others => (others => ('0', '0'))); 
				game_grid(snake_body(head)(1))(snake_body(head)(0)) <= ('0', '1'); 
				game_grid(snake_body(tail)(1))(snake_body(tail)(0)) <= ('0', '1'); 
				new_apple <= '0'; 
			end if; 
		end process; 

-- update snake direction 
		process(all) 
		begin
			case pr_dir_state is 
				when udir => 
					if rkey = '0' then 
						nx_dir_state <= rdir; 
					elsif lkey = '0' then 
						nx_dir_state <= ldir; 
					else 
						nx_dir_state <= udir; 
					end if; 
				when rdir =>
					if ukey = '0' then 
						nx_dir_state <= udir;
					elsif dkey = '0' then 
						nx_dir_state <= ddir; 
					else 
						nx_dir_state <= rdir; 
					end if; 
				when ddir => 
					if rkey = '0' then 
						nx_dir_state <= rdir; 
					elsif lkey = '0' then 
						nx_dir_state <= ldir; 
					else 
						nx_dir_state <= ddir; 
					end if; 
				when ldir =>
					if ukey = '0' then 
						nx_dir_state <= udir;
					elsif dkey = '0' then 
						nx_dir_state <= ddir; 
					else 
						nx_dir_state <= ldir;
					end if; 
				when others => 	
					nx_dir_state <= ddir;  -- if invalid, restart
			end case; 
		end process;
	
-- direction state register 
		process (clk, rst)  
		begin 
			if rst = '0' then 
				pr_dir_state <= ddir;  
			elsif rising_edge(clk) then 
				pr_dir_state <= nx_dir_state; 
			end if; 
		end process; 

-- debounce control keys?

-- game clock - generate 10 Hz clock
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
