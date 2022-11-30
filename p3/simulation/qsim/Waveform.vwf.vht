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
-- Generated on "11/30/2022 08:44:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica3_vhd_vec_tst IS
END practica3_vhd_vec_tst;
ARCHITECTURE practica3_arch OF practica3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c_flag : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ecuacion : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ins : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL ov_flag : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sig_flag : STD_LOGIC;
SIGNAL z_flag : STD_LOGIC;
COMPONENT practica3
	PORT (
	a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	c_flag : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ins : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	ov_flag : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sig_flag : OUT STD_LOGIC;
	z_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c_flag => c_flag,
	clk => clk,
	ecuacion => ecuacion,
	ins => ins,
	ov_flag => ov_flag,
	rst => rst,
	s => s,
	sig_flag => sig_flag,
	z_flag => z_flag
	);
-- ecuacion[1]
t_prcs_ecuacion_1: PROCESS
BEGIN
	ecuacion(1) <= '0';
WAIT;
END PROCESS t_prcs_ecuacion_1;
-- ecuacion[0]
t_prcs_ecuacion_0: PROCESS
BEGIN
	ecuacion(0) <= '1';
WAIT;
END PROCESS t_prcs_ecuacion_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 200 ps;
	clk <= '1';
	WAIT FOR 200 ps;
	IF (NOW >= 40000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END practica3_arch;
