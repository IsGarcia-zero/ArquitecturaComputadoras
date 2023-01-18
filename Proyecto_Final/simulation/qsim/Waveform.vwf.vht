-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/18/2023 04:10:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY final_vhd_vec_tst IS
END final_vhd_vec_tst;
ARCHITECTURE final_arch OF final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL instrucciones : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL mov : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL p1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL p2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL player : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT final
	PORT (
	A : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk : IN STD_LOGIC;
	instrucciones : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	mov : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	p1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	p2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	player : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	clk => clk,
	instrucciones => instrucciones,
	mov => mov,
	p1 => p1,
	p2 => p2,
	player => player,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 200 ps;
	clk <= '1';
	WAIT FOR 200 ps;
	IF (NOW >= 50000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- player[8]
t_prcs_player_8: PROCESS
BEGIN
	player(8) <= '0';
WAIT;
END PROCESS t_prcs_player_8;
-- player[7]
t_prcs_player_7: PROCESS
BEGIN
	player(7) <= '0';
WAIT;
END PROCESS t_prcs_player_7;
-- player[6]
t_prcs_player_6: PROCESS
BEGIN
	player(6) <= '0';
WAIT;
END PROCESS t_prcs_player_6;
-- player[5]
t_prcs_player_5: PROCESS
BEGIN
	player(5) <= '0';
WAIT;
END PROCESS t_prcs_player_5;
-- player[4]
t_prcs_player_4: PROCESS
BEGIN
	player(4) <= '0';
WAIT;
END PROCESS t_prcs_player_4;
-- player[3]
t_prcs_player_3: PROCESS
BEGIN
	player(3) <= '0';
WAIT;
END PROCESS t_prcs_player_3;
-- player[2]
t_prcs_player_2: PROCESS
BEGIN
	player(2) <= '0';
WAIT;
END PROCESS t_prcs_player_2;
-- player[1]
t_prcs_player_1: PROCESS
BEGIN
	player(1) <= '0';
	WAIT FOR 12000 ps;
	player(1) <= '1';
	WAIT FOR 19000 ps;
	player(1) <= '0';
WAIT;
END PROCESS t_prcs_player_1;
-- player[0]
t_prcs_player_0: PROCESS
BEGIN
	player(0) <= '1';
	WAIT FOR 12000 ps;
	player(0) <= '0';
	WAIT FOR 19000 ps;
	player(0) <= '1';
WAIT;
END PROCESS t_prcs_player_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END final_arch;
