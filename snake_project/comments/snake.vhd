--------------------------------------------------------------------------------
--                                                                            --
--                            VHDL VGA SNAKE GAME                             --
--                                                                            --
--                           Sophia Liu     Ray Sun                           --
--                                  EE 125                                    --
--                                                                            --
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; 
use work.vga_disp_buf.all;  
--------------------------------------------------------------------------------
entity snake is 
	generic(	
        -- Game constants:
		GRID_WIDTH: positive := SCREEN_W/SQ_SIZE;   -- Grid dimensions
		GRID_LENGTH: positive := SCREEN_H/SQ_SIZE; 
		MAX_SNAKE_LENGTH: positive:= GRID_WIDTH * GRID_LENGTH;  -- Max length
        -- Clock constants:
		T_CLK_SYS: positive := 20;      -- period of 50 MHz system clock (20 ns) 
		T_CLK: positive := 200000000;   -- period of 10 Hz (10^8 ns)
		-- VGA constants:
		Ha: integer := 96;              -- Hpulse
        Hb: integer := 144;             -- Hpulse + HBP
        Hc: integer := 784;             -- Hpulse + HBP + Hactive
        Hd: integer := 800;             -- Hpulse + HBP + Hactive + HFP
        Va: integer := 2;               -- Vpulse                   
        Vb: integer := 35;              -- Vpulse + VBP             
        Vc: integer := 515;             -- Vpulse + VBP + Vactive   
        Vd: integer := 525);            -- Vpulse + VBP + Vactive + VFP
	port(
        -- Clock, reset switch, D-pad pushbuttons inputs:
		clk, rst, ukey, dkey, lkey, rkey: in std_logic; 
        -- Score display SSD outputs:
		ssd0, ssd1, ssd2: out   std_logic_vector(6 downto 0);
        -- VGA output signals:
        pixel_clk:      buffer  std_logic;
        Hsync, Vsync:   buffer  std_logic;
        R, G, B:        out     std_logic_vector(3 DOWNTO 0);
        nblanck, nsync: out     std_logic);
end entity;
--------------------------------------------------------------------------------
architecture snake of snake is
    -- position (x, y); (0, 0) upper left corner
	type position is array(0 to 1) of natural; 
    -- one-dimensional array of positions
	type pos_array is array(natural range <>) of position;  
    -- lookup table type - array of naturals
    type lut is array (natural range <> ) of natural;
	
	signal game_clk:    std_logic; 
	signal new_apple:   std_logic:= '0';    -- New apple flag
	signal score:       natural := 0;       -- Score counter

    -- lookup tables for new apple positions
    constant grid_y:   lut(0 to 339) := (      
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
    constant grid_x:   lut(0 to 339) := (
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
	type state is (udir, ddir, ldir, rdir);         -- direction states
	signal pr_dir_state, nx_dir_state: state;       -- previous and next states
	attribute enum_encoding: string;
	attribute enum_encoding of state: type is "sequential";

	-- function to check if a position is in an array 
	function in_array (pos_list: pos_array; p1: position; h, t: natural) 
	return std_logic is 
		variable arr_i, arr_max, arr_min:   natural; 
		variable split:                     std_logic:= '0'; 
	begin 
		if t > h then 
			arr_max := MAX_SNAKE_LENGTH; 
			arr_min := 0; 
			split   := '1'; 
		else 
			arr_max := h; 
			arr_min := t;
			split   := '0';
		end if; 
		for i in 0 to MAX_SNAKE_LENGTH - 1 loop     --pos_list'length loop
		    if split = '0' and i >=  arr_min and i <= arr_max then 
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
	-- VGA display internal signals
	SIGNAL Hactive, Vactive, dena: std_logic;
begin
    -------------------------------------------------------
    -- VGA CONTROL GENERATOR
    -------------------------------------------------------
    -- Static signals for DACs:
    nblanck <= '1';     -- No direct blanking
    nsync <= '0';       -- No sync on green
    -- Create pixel clock (50MHz->25MHz):
    process (clk)
    BEGIN
        if (clk'event AND clk='1') then
            pixel_clk <= NOT pixel_clk;
        end if;
    end process;
    -- Horizontal signals generation:
    process (pixel_clk)
        variable Hcount: integer range 0 to Hd;
    BEGIN
        if (pixel_clk'event AND pixel_clk='1') then
            Hcount := Hcount + 1;
            if (Hcount=Ha) then
                Hsync <= '1';
            elsif (Hcount=Hb) then
                Hactive <= '1';
            elsif (Hcount=Hc) then
                Hactive <= '0';
            elsif (Hcount=Hd) then
                Hsync <= '0';
                Hcount := 0;
            end if;
        end if;
    end process;
    -- Vertical signals generation:
    process (Hsync)
        variable Vcount: integer range 0 to Vd;
    begin
    if (Hsync'event and Hsync='0') then
        Vcount := Vcount + 1;
        if (Vcount=Va) then
            Vsync <= '1';
        elsif (Vcount=Vb) then
            Vactive <= '1';
        elsif (Vcount=Vc) then
            Vactive <= '0';
        elsif (Vcount=Vd) then
            Vsync <= '0';
            Vcount := 0;
        end if;
    end if;
    end process;
    -- Display enable generation:
    dena <= Hactive AND Vactive;

    -------------------------------------------------------
    -- MAIN GAME LOOP
    -------------------------------------------------------
	process(all)	
        -- head and tail pointers of snake 
		variable head: natural := 1; 
		variable tail: natural := 0;
        -- Queue of positions for snake body 
		variable snake_body: pos_array(0 to MAX_SNAKE_LENGTH - 1);
        -- Initial apple position at ~ middle of screen
		variable apple: position := (GRID_WIDTH/2, GRID_LENGTH/2);
		variable gridi: natural := 0;
	    variable game_end: std_logic:= '0';     -- Flag for game end 
	
		variable next_head: position := (0, 1); 
		variable next_apple: position := (GRID_WIDTH/2, GRID_LENGTH/2); 
		variable tmp:           std_logic := '0';
		variable i:             natural := 0;
		variable v_TIME :       time := 0 ns;

        -- VGA display image generation variables
		variable row_counter:   integer range 0 to Vc;
        variable col_counter:   integer range 0 to Hc;
        variable game_row:      integer range 0 to SCREEN_H / SQ_SIZE;
        variable game_col:      integer range 0 to SCREEN_W / SQ_SIZE;
        variable game_row_row:  integer range 0 to SQ_SIZE - 1;
        variable game_col_col:  integer range 0 to SQ_SIZE - 1;
		variable curr_sq:     std_logic_vector(1 downto 0);
		variable display_buffer: disp_buf;
 
		begin 
			if rising_edge(game_clk) and game_end = '0' then 
                -- get next snake head position based on direction: 
				if pr_dir_state = ddir then             -- DOWN 
					if(snake_body(head)(1) + 1 < GRID_LENGTH) then 
						next_head(0) := snake_body(head)(0);
						next_head(1) := snake_body(head)(1) + 1; 
					else 
						game_end := '1'; 
					end if; 	
				elsif pr_dir_state = udir then          -- UP
					if(snake_body(head)(1) - 1 >= 0) then 
						next_head := (snake_body(head)(0), 
                            snake_body(head)(1) - 1); 
					else 
						game_end := '1'; 
					end if; 
				elsif pr_dir_state = rdir then          -- LEFT
					if(snake_body(head)(0) + 1 < GRID_WIDTH) then 
						next_head := (snake_body(head)(0) + 1, 
                            snake_body(head)(1)); 
					else 
						game_end := '1'; 
					end if; 
				elsif pr_dir_state = ldir then          -- RIGHT
					if(snake_body(head)(0) - 1 >= 0) then 
						next_head := (snake_body(head)(0) - 1, 
                            snake_body(head)(1)); 
					else 
						game_end := '1'; 
					end if; 
				end if; 
				
				-- check if hit snake body
				if in_array(snake_body, next_head, head, tail) = '1' then  
					game_end := '1'; 
				end if; 
				
				-- move snake to new position 
                -- update the head
				head := head + 1; 
				if(head >= MAX_SNAKE_LENGTH) then 
					head := 0;
				end if; 
                
                -- wrap head pointer around queue
				snake_body(head)(0) := next_head(0);
				snake_body(head)(1) := next_head(1);	 
				display_buffer(snake_body(head)(1))(snake_body(head)(0)) := "10";
				display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := "00";
				
                -- update the tail
				tail := tail + 1; 
				if(tail >= MAX_SNAKE_LENGTH) then 
					tail := 0; 
				end if; 
				
				-- check for apple 
				if(next_head(0) = apple(0) and next_head(1) = apple(1)) then 
					-- increment score, make snake longer, new apple
					score <= score + 1; 
					if (head + 1 /= tail) and 
                        (head + 1 /= tail + MAX_SNAKE_LENGTH) then
						if tail = 0 then 
							tail := MAX_SNAKE_LENGTH - 1; 
						else 
                            -- bring back old tail - snake grows from the tail
							tail := tail - 1;
							display_buffer(snake_body(tail)(1))
                                (snake_body(tail)(0)) := "10";
						end if; 
					end if;   
 					-- make new apple
				i := 0;
				while in_array(snake_body, next_apple, head, tail) = '1' and 
                    i < 5 loop
					v_TIME := V_TIME - now;
					next_apple(0) := grid_x(gridi);
					next_apple(1) := grid_y(gridi);
					gridi := gridi + 1;
					if gridi > MAX_SNAKE_LENGTH then 
						gridi = 0; 
					end if; 
					i := i + 1;
				end loop; 
				apple := (next_apple(0), next_apple(1));
                -- Set the apple grid position as red in display buffer
				display_buffer(apple(1))(apple(0)) := "01";
				end if;  	 
			end if; 
			
        -------------------------------------------------------
        -- VGA IMAGE GENERATION
        -------------------------------------------------------
        -- Reset row counter if Vsync is low
        if (Vsync='0') then
            row_counter := 0;
        -- Otherwise increment row counter if Hsync rising edge and Vactive 
        -- is high
        elsif rising_edge(Hsync) then
            if (Vactive='1') then
                row_counter := row_counter + 1;
            end if;
        end if;
        -- Reset column counter if Hsync is low
        if (Hsync='0') then
            col_counter := 0;
        -- Otherwise increment column counter if pixel_clk rising edge and 
        -- Hactive is high
        elsif rising_edge(pixel_clk) then
            if (Hactive='1') then
                col_counter := col_counter + 1;
            end if;
        end if;
		-- If screen enabled
        if (dena='1') then
		    -- Plot the screen here
    
            -- Get the current square [G, R] slv
            game_row := row_counter / SQ_SIZE;          -- Current row, col of 
            game_col := col_counter / SQ_SIZE;          -- game square
            game_row_row := row_counter mod SQ_SIZE;    -- Current row, col
            game_col_col := col_counter mod SQ_SIZE;    -- inside game square
            curr_sq := display_buffer(game_row)(game_col);
            
            -- Clear the outer corners to make grid squares' rounded shape
            if( (game_row_row + game_col_col >= 8) AND 
                (game_row_row - game_col_col <= SQ_SIZE - 8) AND 
                (game_col_col - game_row_row <= SQ_SIZE - 8) AND 
                (game_row_row + game_col_col <= 2 * SQ_SIZE - 8) ) then 
                R <= (OTHERS => curr_sq(0));
                G <= (OTHERS => curr_sq(1));
            else 
                R <= (OTHERS => '0');
                G <= (OTHERS => '0');
            end if;
        -- If screen disabled, turn off the entire screen
        else
            R <= (OTHERS => '0');
            G <= (OTHERS => '0');
            --B <= (OTHERS => '0');
        end if;
		B <= (OTHERS => '0');
			
        -- If game is reset, assert initial conditions - snake of length 4
        -- in upper left corner traveling downward, with the apple in the 
        -- center of the grid.
        if rst = '0' then 
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
            display_buffer := (others => (others => "00")); 
            display_buffer(snake_body(head)(1))(snake_body(head)(0)) := "10";
            display_buffer(snake_body(1)(1))(snake_body(1)(0)) := "10";
            display_buffer(snake_body(2)(1))(snake_body(2)(0)) := "10";
            display_buffer(snake_body(tail)(1))(snake_body(tail)(0)) := "10";
            display_buffer(apple(1))(apple(0)) := "01";	
        end if; 
    end process;
	
    -- Output the score on SSDs
    with score mod 10 select
    ssd0 <= "0000001" when 0,       -- "0" on SSD
            "1001111" when 1,       -- "1" on SSD
            "0010010" when 2,       -- "2" on SSD
            "0000110" when 3,       -- "3" on SSD
            "1001100" when 4,       -- "4" on SSD
            "0100100" when 5,       -- "5" on SSD
            "0100000" when 6,       -- "6" on SSD
            "0001111" when 7,       -- "7" on SSD
            "0000000" when 8,       -- "8" on SSD
            "0000100" when 9,       -- "9" on SSD
            "0110000" when others;  -- "E" for error
    with (score / 10) mod 10 select    
    ssd1 <= "0000001" when 0,       -- "0" on SSD
            "1001111" when 1,       -- "1" on SSD
            "0010010" when 2,       -- "2" on SSD
            "0000110" when 3,       -- "3" on SSD
            "1001100" when 4,       -- "4" on SSD
            "0100100" when 5,       -- "5" on SSD
            "0100000" when 6,       -- "6" on SSD
            "0001111" when 7,       -- "7" on SSD
            "0000000" when 8,       -- "8" on SSD
            "0000100" when 9,       -- "9" on SSD
            "0110000" when others;  -- "E" for error	
    with (score / 100) mod 10 select   
    ssd2 <= "0000001" when 0,       -- "0" on SSD
            "1001111" when 1,       -- "1" on SSD
            "0010010" when 2,       -- "2" on SSD
            "0000110" when 3,       -- "3" on SSD
            "1001100" when 4,       -- "4" on SSD
            "0100100" when 5,       -- "5" on SSD
            "0100000" when 6,       -- "6" on SSD
            "0001111" when 7,       -- "7" on SSD
            "0000000" when 8,       -- "8" on SSD
            "0000100" when 9,       -- "9" on SSD
            "0110000" when others;  -- "E" for error	
            
    -- update snake direction (Moore FSM)
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
