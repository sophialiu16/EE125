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
		MAX_SNAKE_LENGTH: positive:= (GRID_WIDTH - 1) * (GRID_LENGTH - 1); 
		T_CLK_SYS: positive := 20; ---period of 50 MHz system clock (20 ns) 
		T_CLK: positive := 200000000; -- period 2*10^8 ns, game clock 
		
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
		ssd0, ssd1, ssd2: out std_logic_vector(6 downto 0);
      pixel_clk: BUFFER STD_LOGIC;
      Hsync, Vsync: BUFFER STD_LOGIC;
      R, G, B: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      nblanck, nsync : OUT STD_LOGIC);
end entity;
--------------------------------------------------------------------------------
architecture snake of snake is
	type position is array(0 to 1) of natural; --(x, y); (0, 0) is upper left corner
	type pos_array is array(natural range <>) of position;  
	
	signal game_clk: std_logic; 
	signal new_apple: std_logic:= '0'; 
	
	signal score: natural := 0; 
	-- lookup tables for new apple positions 
	type lut is array (natural range <> ) of natural;
   constant grid_y: lut(0 to MAX_SNAKE_LENGTH - 1) := (
        12, 00, 12, 13, 06, 02, 00, 11, 00, 11, 
		  01, 08, 09, 15, 16, 11, 01, 08, 16, 04, 
		  05, 16, 04, 09, 09, 03, 14, 08, 14, 00, 
		  09, 14, 02, 07, 01, 03, 13, 13, 15, 02, 
		  13, 05, 16, 06, 07, 15, 03, 02, 13, 16, 
		  12, 11, 06, 00, 12, 07, 12, 14, 04, 14, 
		  15, 10, 11, 00, 05, 08, 11, 03, 12, 05,
		  09, 11, 12, 13, 11, 00, 03, 07, 16, 07, 
		  03, 10, 01, 05, 16, 10, 11, 05, 06, 06, 
		  07, 02, 07, 00, 06, 08, 01, 04, 06, 00, 
		  04, 03, 06, 00, 08, 01, 01, 12, 16, 03, 
		  09, 07, 16, 08, 01, 08, 04, 06, 07, 14, 
		  02, 12, 05, 10, 09, 15, 03, 15, 16, 13, 
		  01, 01, 10, 16, 12, 16, 12, 04, 02, 14, 
		  16, 09, 07, 13, 11, 11, 08, 07, 06, 13, 
		  07, 15, 12, 16, 13, 10, 07, 11, 09, 03, 
		  12, 01, 12, 09, 15, 02, 00, 05, 00, 05, 
		  12, 09, 05, 01, 00, 06, 01, 01, 06, 08, 
		  09, 07, 02, 03, 12, 02, 13, 06, 04, 15, 
		  12, 00, 16, 02, 04, 12, 04, 05, 11, 13, 
		  02, 06, 13, 02, 02, 06, 11, 16, 13, 14, 
		  08, 15, 15, 13, 14, 09, 14, 04, 02, 03, 
		  03, 01, 03, 04, 05, 01, 08, 15, 14, 00, 
		  01, 04, 11, 05, 03, 16, 11, 15, 14, 04, 
		  07, 16, 14, 15, 10, 06, 01, 13, 12, 05, 
		  13, 05, 05, 14, 06, 10, 07, 14, 07, 06, 
		  15, 11, 12, 06, 04, 05, 14, 04, 00, 03, 
		  15, 02, 12, 07, 05, 14, 13, 13, 03, 09, 
		  16, 07, 11, 01, 15, 10, 11, 15, 01, 09, 
		  15, 06, 08, 15, 15, 00, 10, 05, 11, 05, 
		  06, 14, 04, 05, 05, 05, 13, 00, 09, 08, 
		  09, 13, 05, 10, 11, 12, 00, 16, 08, 15, 
		  13, 02, 14, 04, 13, 04, 01, 16, 06, 06, 
		  09, 06, 13, 05, 06, 10, 14, 11, 03, 11
        );
   constant grid_x: lut(0 to MAX_SNAKE_LENGTH - 1) := (
			03, 08, 07, 05, 11, 02, 15, 16, 16, 16, 
			11, 00, 15, 16, 08, 02, 09, 12, 08, 06, 
			14, 18, 19, 12, 05, 18, 00, 09, 01, 16, 
			11, 04, 01, 12, 05, 01, 11, 19, 11, 05, 
			19, 14, 12, 10, 08, 04, 19, 08, 19, 00, 
			04, 11, 18, 05, 18, 13, 05, 09, 16, 17, 
			14, 08, 04, 06, 14, 13, 16, 04, 13, 16, 
			13, 00, 12, 11, 04, 09, 00, 04, 18, 13, 
			17, 12, 17, 12, 00, 02, 13, 13, 15, 13, 
			17, 11, 12, 11, 04, 10, 06, 03, 07, 11, 
			10, 13, 00, 05, 16, 15, 17, 13, 02, 16, 
			05, 02, 05, 17, 14, 04, 15, 09, 02, 16, 
			00, 00, 13, 09, 06, 08, 10, 01, 01, 11, 
			07, 17, 15, 11, 10, 07, 16, 18, 18, 17, 
			08, 02, 15, 02, 07, 06, 04, 03, 14, 07, 
			02, 08, 01, 02, 11, 04, 12, 19, 00, 06, 
			01, 09, 04, 18, 01, 10, 01, 11, 14, 11, 
			15, 18, 10, 02, 09, 19, 05, 10, 15, 04, 
			10, 17, 13, 15, 02, 09, 00, 13, 00, 04, 
			12, 10, 09, 06, 06, 08, 01, 11, 11, 03, 
			14, 04, 17, 10, 03, 17, 04, 16, 04, 19, 
			14, 03, 18, 19, 12, 03, 07, 11, 07, 12, 
			06, 03, 05, 18, 08, 15, 01, 05, 09, 15, 
			18, 08, 19, 08, 11, 09, 00, 07, 18, 02, 
			05, 04, 11, 16, 09, 14, 17, 17, 17, 19, 
			00, 15, 01, 19, 15, 17, 02, 04, 17, 03, 
			18, 01, 00, 13, 12, 14, 06, 11, 12, 13, 
			10, 00, 13, 16, 13, 18, 18, 03, 06, 03, 
			17, 04, 09, 00, 19, 10, 02, 11, 14, 06, 
			02, 18, 00, 12, 16, 02, 15, 11, 10, 11, 
			14, 15, 17, 16, 09, 05, 09, 05, 17, 06, 
			18, 07, 10, 17, 00, 00, 14, 19, 04, 07, 
			07, 10, 05, 06, 09, 07, 03, 01, 13, 11, 
			11, 06, 19, 15, 17, 17, 19, 02, 06, 13);
	
	-- direction FSM  
	type state is (udir, ddir, ldir, rdir); 
	signal pr_dir_state, nx_dir_state: state; 
	attribute enum_encoding: string;
	attribute enum_encoding of state: type is "sequential";
	
	-- check if position is in array, given head and tail positions
	function in_array (pos_list: pos_array; p1: position; h, t: natural) 
	return std_logic is 
		variable split: std_logic:= '0'; 
	begin 
		if t > h then 
			split:= '1'; 
		else 
			split := '0';
		end if; 
		for i in 0 to MAX_SNAKE_LENGTH - 1 loop 
		    if split = '0' and i >=  t and i <= h then 
				if pos_list(i)(0) = p1(0) and pos_list(i)(1) = p1(1) then 
					return '1'; 
				end if; 
			 elsif split = '1' then 
				if ((i >= 0 and i <= h) or (i >=t and i < MAX_SNAKE_LENGTH)) then 
					if pos_list(i)(0) = p1(0) and pos_list(i)(1) = p1(1) then 
						return '1'; 
					end if; 
				end if;
			 end if; 
		end loop; 
		return '0'; 
	end function in_array; 
	
SIGNAL Hactive, Vactive, dena: STD_LOGIC;
	
begin 
-- display processes 
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

-- main game loop 
	process(all)
		
		variable head: natural := 1; 
		variable tail: natural := 0; 		-- head and tail pointers of snake 
		variable snake_body: pos_array(0 to MAX_SNAKE_LENGTH - 1); -- queue for snake body 
		variable apple: position := (GRID_WIDTH/2, GRID_LENGTH/2);
		variable gridi: natural := 0; 	-- lookup table index
		
	   variable game_end: std_logic:= '0'; 
	
		variable next_head: position := (0, 1); 
		variable next_apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
		variable tmp : std_logic := '0';
		variable i: natural := 0;
		variable v_TIME : time := 0 ns;

		
		VARIABLE row_counter: INTEGER RANGE 0 TO Vc;
      VARIABLE col_counter: INTEGER RANGE 0 TO Hc;
      VARIABLE game_row: INTEGER RANGE 0 TO SCREEN_H / SQ_SIZE;
      VARIABLE game_col: INTEGER RANGE 0 TO SCREEN_W / SQ_SIZE;
      VARIABLE game_row_row: INTEGER RANGE 0 TO SQ_SIZE - 1;
      VARIABLE game_col_col: INTEGER RANGE 0 TO SQ_SIZE - 1;
		
		VARIABLE curr_sq:     std_logic_vector(1 downto 0);
		VARIABLE display_buffer: disp_buf;
		begin 
			if rising_edge(game_clk) and game_end = '0' then 
				if pr_dir_state = ddir then -- get next position based on direction 
					if(snake_body(head)(1) + 1 < GRID_LENGTH) then 
						next_head(0) := snake_body(head)(0);
						next_head(1) := snake_body(head)(1) + 1; 
					else 
						game_end := '1'; 
					end if; 
						
				elsif pr_dir_state = udir then 
					if(snake_body(head)(1) - 1 >= 0) then 
						next_head := (snake_body(head)(0), snake_body(head)(1) - 1); 
					else 
						game_end := '1'; 
					end if; 
					
				elsif pr_dir_state = rdir then 
					if(snake_body(head)(0) + 1 < GRID_WIDTH) then 
						next_head := (snake_body(head)(0) + 1, snake_body(head)(1)); 
					else 
						game_end := '1'; 
					end if; 
					
				elsif pr_dir_state = ldir then 
					if(snake_body(head)(0) - 1 >= 0) then 
						next_head := (snake_body(head)(0) - 1, snake_body(head)(1)); 
					else 
						game_end := '1'; 
					end if; 
				end if; 
				
				-- check if hit snake body 
				if in_array(snake_body, next_head, head, tail) = '1' then  
					game_end := '1'; 
				end if; 
				
				-- move snake to new position 
				head := head + 1; 
				if(head >= MAX_SNAKE_LENGTH) then 
					head := 0;
				end if; -- wrap head pointer around queue 
				
				snake_body(head)(0) := next_head(0);
				snake_body(head)(1) := next_head(1); 	 
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := "10"; --TODO 
				display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := "00";
				
				tail := tail + 1; -- get new tail position 
				if(tail >= MAX_SNAKE_LENGTH) then 
					tail := 0; 
				end if; 
				
				-- check for apple 
				if(next_head(0) = apple(0) and next_head(1) = apple(1)) then 
					-- increment score, make snake longer (if not maxed), new apple
					score <= score + 1; 
					if (head + 1 /= tail) and (head + 1 /= tail + MAX_SNAKE_LENGTH - 1) then 
						if tail = 0 then 
							tail := MAX_SNAKE_LENGTH - 1; 
						else 
							tail := tail - 1; -- bring back old tail 
							display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := "10";
						end if; 
					end if;   
				-- make new apple
				i := 0;
				-- try new positions with timeout 
				while in_array(snake_body, next_apple, head, tail) = '1' and i < 10 loop
					next_apple(0) := grid_x(gridi);
					next_apple(1) := grid_y(gridi);
					gridi := gridi + 1;
					if gridi > MAX_SNAKE_LENGTH then 
						gridi := 0; 
					end if; 
					i := i + 1;
				end loop; 
				apple := (next_apple(0), next_apple(1));
				display_buffer(apple(1))(apple(0)) := "01";
				end if;  	 
			end if; 
			
		  -- display 
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
    
            -- Get the current square [G, R] slv
            game_row := row_counter / SQ_SIZE;          -- Current row, col of 
            game_col := col_counter / SQ_SIZE;          -- game square
            game_row_row := row_counter mod SQ_SIZE;    -- Current row, col
            game_col_col := col_counter mod SQ_SIZE;    -- inside game square
            curr_sq := display_buffer(game_row)(game_col);
            
            -- Clear the outer corners 
            IF( (game_row_row + game_col_col >= 8) AND 
                (game_row_row - game_col_col <= SQ_SIZE - 8) AND 
                (game_col_col - game_row_row <= SQ_SIZE - 8) AND 
                (game_row_row + game_col_col <= 2 * SQ_SIZE - 8) ) THEN 
                R <= (OTHERS => curr_sq(0));
                G <= (OTHERS => curr_sq(1));
            --B <= (OTHERS => '0');
            --B <= (OTHERS => curr_sq(2));
            ELSE 
                R <= (OTHERS => '0');
                G <= (OTHERS => '0');
            END IF;
        -- If screen disabled, turn off the entire screen
        ELSE
            R <= (OTHERS => '0');
            G <= (OTHERS => '0');
            --B <= (OTHERS => '0');
        END IF;
		  B <= (OTHERS => '0');
			
			if rst = '0' then -- reset to initial state 
				game_end := '0'; 
				next_head := (0, 1); 
				score <= 0; 
				head := 3; 
				tail := 0;
				snake_body(3) := (0, 3); 	
				snake_body(2) := (0, 2); 
				snake_body(1) := (0, 1); 
				snake_body(0) := (0, 0); 
				apple := (GRID_WIDTH/2, GRID_LENGTH/2); 
				gridi := 0;
				display_buffer := (others => (others => "00")); 
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := "10";
				display_buffer(snake_body(1)(1))(snake_body(1)(0)) := "10";
				display_buffer(snake_body(2)(1))(snake_body(2)(0)) := "10";
				display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := "10";
				display_buffer(apple(1))(apple(0)) := "01";	
			end if; 
		end process;
	
		-- score output
		with score mod 10 select
        ssd0 <= "0000001" when 0,       --"0" on SSD
                "1001111" when 1,       --"1" on SSD
                "0010010" when 2,       --"2" on SSD
                "0000110" when 3,       --"3" on SSD
                "1001100" when 4,       --"4" on SSD
                "0100100" when 5,       --"5" on SSD
                "0100000" when 6,       --"6" on SSD
                "0001111" when 7,       --"7" on SSD
                "0000000" when 8,       --"8" on SSD
                "0000100" when 9,       --"9" on SSD
                "0110000" when others;  --"E" for error
					 

		with (score / 10) mod 10 select
        ssd1 <= "0000001" when 0,       --"0" on SSD
                "1001111" when 1,       --"1" on SSD
                "0010010" when 2,       --"2" on SSD
                "0000110" when 3,       --"3" on SSD
                "1001100" when 4,       --"4" on SSD
                "0100100" when 5,       --"5" on SSD
                "0100000" when 6,       --"6" on SSD
                "0001111" when 7,       --"7" on SSD
                "0000000" when 8,       --"8" on SSD
                "0000100" when 9,       --"9" on SSD
                "0110000" when others;  --"E" for error	

		with (score / 100) mod 10 select
        ssd2 <= "0000001" when 0,       --"0" on SSD
                "1001111" when 1,       --"1" on SSD
                "0010010" when 2,       --"2" on SSD
                "0000110" when 3,       --"3" on SSD
                "1001100" when 4,       --"4" on SSD
                "0100100" when 5,       --"5" on SSD
                "0100000" when 6,       --"6" on SSD
                "0001111" when 7,       --"7" on SSD
                "0000000" when 8,       --"8" on SSD
                "0000100" when 9,       --"9" on SSD
                "0110000" when others;  --"E" for error	
					 
-- update snake direction 
		process(ukey, dkey, rkey, lkey, clk) 
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

-- generate slow game clock 
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
