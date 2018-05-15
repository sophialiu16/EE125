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
-- Generated on "05/13/2018 14:50:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pwm_demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm_demo_vhd_vec_tst IS
END pwm_demo_vhd_vec_tst;
ARCHITECTURE pwm_demo_arch OF pwm_demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_pwm : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL duty : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL pwm : STD_LOGIC;
COMPONENT pwm_demo
	PORT (
	clk_pwm : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	duty : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	pwm : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwm_demo
	PORT MAP (
-- list connections between master ports and signals
	clk_pwm => clk_pwm,
	count => count,
	duty => duty,
	pwm => pwm
	);

-- clk_pwm
t_prcs_clk_pwm: PROCESS
BEGIN
LOOP
	clk_pwm <= '0';
	WAIT FOR 20000 ps;
	clk_pwm <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_pwm;
-- duty[2]
t_prcs_duty_2: PROCESS
BEGIN
	duty(2) <= '0';
WAIT;
END PROCESS t_prcs_duty_2;
-- duty[1]
t_prcs_duty_1: PROCESS
BEGIN
	duty(1) <= '0';
WAIT;
END PROCESS t_prcs_duty_1;
-- duty[0]
t_prcs_duty_0: PROCESS
BEGIN
	duty(0) <= '0';
WAIT;
END PROCESS t_prcs_duty_0;
END pwm_demo_arch;
