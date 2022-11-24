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
-- Generated on "11/23/2022 17:57:19"
                                                             
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
SIGNAL A : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL CF : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ecuacion : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL OVF : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL resultado : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SF : STD_LOGIC;
SIGNAL sig1 : STD_LOGIC;
SIGNAL sig2 : STD_LOGIC;
SIGNAL ZF : STD_LOGIC;
COMPONENT practica2
	PORT (
	A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	CF : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	OVF : OUT STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	rst : IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SF : OUT STD_LOGIC;
	sig1 : IN STD_LOGIC;
	sig2 : IN STD_LOGIC;
	ZF : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CF => CF,
	clk => clk,
	ecuacion => ecuacion,
	OVF => OVF,
	R => R,
	resultado => resultado,
	rst => rst,
	s => s,
	sel => sel,
	SF => SF,
	sig1 => sig1,
	sig2 => sig2,
	ZF => ZF
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

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
END practica2_arch;
