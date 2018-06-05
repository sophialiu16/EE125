library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; 
use work.vga_disp_buf.all;  
--------------------------------------------------------------------------------
entity snake is 
	generic(	
		GRID_WIDTH: positive := SCREEN_W/SQ_SIZE; 
		GRID_LENGTH: positive := SCREEN_H/SQ_SIZE; 
		MAX_SNAKE_LENGTH: positive:= 10; 
		T_CLK_SYS: positive := 20; ---period of 50 MHz system clock (20 ns) 
		T_CLK: positive := 100000000; -- period of 10 Hz (10^8 ns)
		
		  Ha: INTEGER := 96; --Hpulse
        Hb: INTEGER := 144; --Hpulse+HBP
        Hc: INTEGER := 784; --Hpulse+HBP+Hactive
        Hd: INTEGER := 800; --Hpulse+HBP+Hactive+HFP
        Va: INTEGER := 2; --Vpulse
        Vb: INTEGER := 35; --Vpulse+VBP
        Vc: INTEGER := 515; --Vpulse+VBP+Vactive
        Vd: INTEGER := 525); --Vpulse+VBP+Vactive+VFP
	port(
		clk, rst, ukey, dkey, lkey, rkey: in std_logic; 
		ssd0: out std_logic_vector(6 downto 0);
		ssd1: out std_logic_vector(6 downto 0);
		
		 -- Display buffer
        --      Pass in from game code
        --display_buffer: IN disp_buf;
        -- VGA signals:
        --clk: IN STD_LOGIC; --50MHz in our board
        pixel_clk: BUFFER STD_LOGIC;
        Hsync, Vsync: BUFFER STD_LOGIC;
        R, G, B: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        nblanck, nsync : OUT STD_LOGIC);
		-- output game grid display 
end entity;
--------------------------------------------------------------------------------
architecture snake of snake is
	type position is array(1 downto 0) of natural; -- position (x, y), (0, 0) upper left corner
	type pos_array is array(natural range <>) of position; 
	--type grid_row is array(natural range <>) of std_logic_vector;
	--type grid is array(natural range <>) of grid_row; -- (0, 0) upper left corner
	signal head: natural := 1; 
	signal tail: natural := 0; -- head and tail pointers of snake 
	signal snake_body: pos_array(0 to MAX_SNAKE_LENGTH); -- queue for snake body 
	signal apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
	
	--signal game_grid : disp_buf:= (others => (others => ('0','0'))); 
	signal game_clk: std_logic; 
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
		if t > h then -- array full?
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
	
	SIGNAL Hactive, Vactive, dena: STD_LOGIC;
	
begin -- split 
-- TODO init 
-- output score 

    -------------------------------------------------------
    --Part 1: CONTROL GENERATOR
    -------------------------------------------------------
    --Static signals for DACs:
    nblanck <= '1'; --no direct blanking
    nsync <= '0'; --no sync on green
    --Create pixel clock (50MHz->25MHz):
    PROCESS (clk)
    BEGIN
        IF (clk'EVENT AND clk='1') THEN
            pixel_clk <= NOT pixel_clk;
        END IF;
    END PROCESS;
    --Horizontal signals generation:
    PROCESS (pixel_clk)
        VARIABLE Hcount: INTEGER RANGE 0 TO Hd;
    BEGIN
        IF (pixel_clk'EVENT AND pixel_clk='1') THEN
            Hcount := Hcount + 1;
            IF (Hcount=Ha) THEN
                Hsync <= '1';
            ELSIF (Hcount=Hb) THEN
                Hactive <= '1';
            ELSIF (Hcount=Hc) THEN
                Hactive <= '0';
            ELSIF (Hcount=Hd) THEN
                Hsync <= '0';
                Hcount := 0;
            END IF;
        END IF;
    END PROCESS;
    --Vertical signals generation:
    PROCESS (Hsync)
        VARIABLE Vcount: INTEGER RANGE 0 TO Vd;
    BEGIN
    IF (Hsync'EVENT AND Hsync='0') THEN
        Vcount := Vcount + 1;
        IF (Vcount=Va) THEN
            Vsync <= '1';
        ELSIF (Vcount=Vb) THEN
            Vactive <= '1';
        ELSIF (Vcount=Vc) THEN
            Vactive <= '0';
        ELSIF (Vcount=Vd) THEN
            Vsync <= '0';
            Vcount := 0;
        END IF;
    END IF;
    END PROCESS;
    ---Display enable generation:
    dena <= Hactive AND Vactive;
--    -------------------------------------------------------
--    --Part 2: IMAGE GENERATOR
--    -------------------------------------------------------
--    PROCESS (Hsync, Vsync, Vactive, dena, pixel_clk)
--        VARIABLE row_counter: INTEGER RANGE 0 TO Vc;
--        VARIABLE col_counter: INTEGER RANGE 0 TO Hc;
--        VARIABLE curr_sq:     std_logic_vector(1 downto 0);
--		  VARIABLE display_buffer: disp_buf;
--    BEGIN
--        -- Initialize display buffer - test image
--
--        -- Reset row counter if Vsync is low
--        IF (Vsync='0') THEN
--            row_counter := 0;
--        -- Otherwise increment row counter if Hsync rising edge and Vactive 
--        -- is high
--        ELSIF rising_edge(Hsync) THEN
--            IF (Vactive='1') THEN
--                row_counter := row_counter + 1;
--            END IF;
--        END IF;
--        -- Reset column counter if Hsync is low
--        IF (Hsync='0') THEN
--            col_counter := 0;
--        -- Otherwise increment column counter if pixel_clk rising edge and 
--        -- Hactive is high
--        ELSIF rising_edge(pixel_clk) THEN
--            IF (Hactive='1') THEN
--                col_counter := col_counter + 1;
--            END IF;
--        END IF;
--		-- If screen enabled
--        IF (dena='1') THEN
--		    -- Plot the screen here
--            
--            -- Get the current square [B, G, R] slv
--            curr_sq := display_buffer
--                (row_counter / SQ_SIZE)(col_counter / SQ_SIZE);
--
--            -- Get RG components of square 
--            R <= (OTHERS => curr_sq(0));
--            G <= (OTHERS => curr_sq(1));
--				B <= (OTHERS => '0');
--            --B <= (OTHERS => curr_sq(2));
--        -- If screen disabled, turn off the entire screen
--        ELSE
--            R <= (OTHERS => '0');
--            G <= (OTHERS => '0');
--            --B <= (OTHERS => '0');
--        END IF;
--		  B <= (OTHERS => '0');
--    END PROCESS;

-- main game loop 
		process(all)
		variable next_head: position := (0, 1); 
		variable next_apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
		
		  VARIABLE row_counter: INTEGER RANGE 0 TO Vc;
        VARIABLE col_counter: INTEGER RANGE 0 TO Hc;
        VARIABLE curr_sq:     std_logic_vector(1 downto 0);
		  VARIABLE display_buffer: disp_buf;
		begin 
			if rising_edge(game_clk) and game_end = '0' then 
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
				display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := ('0', '0'); 
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := ('0', '1'); --TODO 
				
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
							display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := ('0', '1');
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
			
			-- Initialize display buffer - test image
			--		  FOR row IN 0 TO (SCREEN_H / SQ_SIZE) - 1 LOOP 
--		      FOR col IN 0 TO (SCREEN_W / SQ_SIZE) - 1 LOOP
--				    IF ((row mod 2 = 1) AND (col mod 2 = 1)) THEN 
--					     display_buffer(row)(col) := "11";
--					 ELSIF ((row mod 2 = 0) AND (col mod 2 = 0)) THEN 
--					     display_buffer(row)(col) := "00";
--				    ELSIF ((row mod 2 = 0) AND (col mod 2 = 1)) THEN 
--					     display_buffer(row)(col) := "01";
--					 ELSE 
--					     display_buffer(row)(col) := "10";
--					 END IF;
--				END LOOP;
--		  END LOOP;

        -- Reset row counter if Vsync is low
        IF (Vsync='0') THEN
            row_counter := 0;
        -- Otherwise increment row counter if Hsync rising edge and Vactive 
        -- is high
        ELSIF rising_edge(Hsync) THEN
            IF (Vactive='1') THEN
                row_counter := row_counter + 1;
            END IF;
        END IF;
        -- Reset column counter if Hsync is low
        IF (Hsync='0') THEN
            col_counter := 0;
        -- Otherwise increment column counter if pixel_clk rising edge and 
        -- Hactive is high
        ELSIF rising_edge(pixel_clk) THEN
            IF (Hactive='1') THEN
                col_counter := col_counter + 1;
            END IF;
        END IF;
		-- If screen enabled
        IF (dena='1') THEN
		    -- Plot the screen here
            
            -- Get the current square [B, G, R] slv
            curr_sq := display_buffer
                (row_counter / SQ_SIZE)(col_counter / SQ_SIZE);

            -- Get RG components of square 
            R <= (OTHERS => curr_sq(0));
            G <= (OTHERS => curr_sq(1));
				B <= (OTHERS => '0');
            --B <= (OTHERS => curr_sq(2));
        -- If screen disabled, turn off the entire screen
        ELSE
            R <= (OTHERS => '0');
            G <= (OTHERS => '0');
            --B <= (OTHERS => '0');
        END IF;
		  B <= (OTHERS => '0');
			
			if rst = '0' then 
				game_end <= '0'; 
				next_head := (0, 1); --TODO constants
				score <= 0; 
				head <= 1; 
				tail <= 0; 
				snake_body(1) <= (0, 1); 
				snake_body(0) <= (0, 0); 
				apple <= (GRID_WIDTH/2, GRID_LENGTH/2); 
				display_buffer := (others => (others => ('0', '0'))); 
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := ('1', '0');
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := ('0', '1');
				display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := ('0', '1');
				new_apple <= '0'; 	
			end if; 
		end process;
		
		--vga(clk_sys); 
	
		-- score output
--		with score mod 10 select
--        ssd0 <= "0000001" when 0,       --"0" on SSD
--                "1001111" when 1,       --"1" on SSD
--                "0010010" when 2,       --"2" on SSD
--                "0000110" when 3,       --"3" on SSD
--                "1001100" when 4,       --"4" on SSD
--                "0100100" when 5,       --"5" on SSD
--                "0100000" when 6,       --"6" on SSD
--                "0001111" when 7,       --"7" on SSD
--                "0000000" when 8,       --"8" on SSD
--                "0000100" when 9,       --"9" on SSD
--                "0110000" when others;  --"E" for error
--
--		with (score / 10) mod 10 select
--        ssd1 <= "0000001" when 0,       --"0" on SSD
--                "1001111" when 1,       --"1" on SSD
--                "0010010" when 2,       --"2" on SSD
--                "0000110" when 3,       --"3" on SSD
--                "1001100" when 4,       --"4" on SSD
--                "0100100" when 5,       --"5" on SSD
--                "0100000" when 6,       --"6" on SSD
--                "0001111" when 7,       --"7" on SSD
--                "0000000" when 8,       --"8" on SSD
--                "0000100" when 9,       --"9" on SSD
--                "0110000" when others;  --"E" for error	
		
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
--		process(rst) 
--		begin 
--			if rst = '0' then 
--				-- reset variables 
--				score <= 0; 
--				head <= 1; 
--				tail <= 0; 
--				snake_body(head) <= (0, 1); 
--				snake_body(tail) <= (0, 0); 
--				new_apple <= '0'; 
--			end if; 
--		end process; 

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
		process (game_clk, rst)  
		begin 
			if rst = '0' then 
				pr_dir_state <= ddir;  
			elsif rising_edge(game_clk) then 
				pr_dir_state <= nx_dir_state; 
			end if; 
		end process; 

-- debounce control keys?

-- game clock - generate 10 Hz clock
		process(clk) 
		variable sc_counter : integer range 0 to T_CLK/T_CLK_SYS := 0;
		begin
			if rising_edge(clk) then 
				sc_counter := sc_counter + 1; 
				if sc_counter< T_CLK/T_CLK_SYS then 
					game_clk <= '0'; 
				else 
					game_clk <= '1'; 
				end if;  
				
				if sc_counter = T_CLK/T_CLK_SYS then 
					sc_counter := 0; 
				end if; 
			end if;
		end process;
		
end architecture;
