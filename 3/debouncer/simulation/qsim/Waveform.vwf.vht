-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/03/2018 16:35:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          debouncer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY debouncer_vhd_vec_tst IS
END debouncer_vhd_vec_tst;
ARCHITECTURE debouncer_arch OF debouncer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL debounced_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL x : STD_LOGIC;
SIGNAL x_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT debouncer
	PORT (
	clk : IN STD_LOGIC;
	debounced_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	x : IN STD_LOGIC;
	x_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : debouncer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	debounced_count => debounced_count,
	x => x,
	x_count => x_count
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 35
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- x
t_prcs_x: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		x <= '0';
		WAIT FOR 20000 ps;
		x <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	x <= '0';
	WAIT FOR 150000 ps;
	x <= '1';
	WAIT FOR 10000 ps;
	x <= '0';
	WAIT FOR 20000 ps;
	x <= '1';
	WAIT FOR 70000 ps;
	x <= '0';
	WAIT FOR 100000 ps;
	x <= '1';
	WAIT FOR 30000 ps;
	x <= '0';
WAIT;
END PROCESS t_prcs_x;
END debouncer_arch;
