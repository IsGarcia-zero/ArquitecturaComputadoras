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
-- Generated on "11/22/2022 22:37:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica2_vhd_vec_tst IS
END practica2_vhd_vec_tst;
ARCHITECTURE practica2_arch OF practica2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL ec : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL resultado : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL rst_clk : STD_LOGIC;
SIGNAL sal_prueb : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT practica2
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	ec : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	pin_name1 : OUT STD_LOGIC;
	resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	rst : IN STD_LOGIC;
	rst_clk : IN STD_LOGIC;
	sal_prueb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : practica2
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	clk => clk,
	d => d,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	e => e,
	ec => ec,
	f => f,
	g => g,
	pin_name1 => pin_name1,
	resultado => resultado,
	rst => rst,
	rst_clk => rst_clk,
	sal_prueb => sal_prueb
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 30000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ec[1]
t_prcs_ec_1: PROCESS
BEGIN
	ec(1) <= '0';
WAIT;
END PROCESS t_prcs_ec_1;
-- ec[0]
t_prcs_ec_0: PROCESS
BEGIN
	ec(0) <= '0';
WAIT;
END PROCESS t_prcs_ec_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- rst_clk
t_prcs_rst_clk: PROCESS
BEGIN
	rst_clk <= '0';
WAIT;
END PROCESS t_prcs_rst_clk;
END practica2_arch;
