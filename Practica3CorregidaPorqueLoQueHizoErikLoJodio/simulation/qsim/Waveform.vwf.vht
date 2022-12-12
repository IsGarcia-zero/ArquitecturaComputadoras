-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- Generated on "12/12/2022 00:11:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica3correccion
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica3correccion_vhd_vec_tst IS
END practica3correccion_vhd_vec_tst;
ARCHITECTURE practica3correccion_arch OF practica3correccion_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL c_flag : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL ecuacion : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL ov_flag : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL s_flag : STD_LOGIC;
SIGNAL z_flag : STD_LOGIC;
COMPONENT practica3correccion
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	c_flag : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	ov_flag : OUT STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rst : IN STD_LOGIC;
	s_flag : OUT STD_LOGIC;
	z_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica3correccion
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	c_flag => c_flag,
	clk => clk,
	d => d,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	e => e,
	ecuacion => ecuacion,
	f => f,
	g => g,
	ov_flag => ov_flag,
	R => R,
	rst => rst,
	s_flag => s_flag,
	z_flag => z_flag
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100 ps;
	clk <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ecuacion[1]
t_prcs_ecuacion_1: PROCESS
BEGIN
	ecuacion(1) <= '0';
WAIT;
END PROCESS t_prcs_ecuacion_1;
-- ecuacion[0]
t_prcs_ecuacion_0: PROCESS
BEGIN
	ecuacion(0) <= '0';
WAIT;
END PROCESS t_prcs_ecuacion_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END practica3correccion_arch;
