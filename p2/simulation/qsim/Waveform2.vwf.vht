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
-- Generated on "11/23/2022 12:06:33"
                                                             
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
SIGNAL OVF : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SF : STD_LOGIC;
SIGNAL ZF : STD_LOGIC;
COMPONENT practica2
	PORT (
	A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	CF : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	OVF : OUT STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	rst : IN STD_LOGIC;
	s1 : IN STD_LOGIC;
	s2 : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SF : OUT STD_LOGIC;
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
	OVF => OVF,
	R => R,
	rst => rst,
	s1 => s1,
	s2 => s2,
	sel => sel,
	SF => SF,
	ZF => ZF
	);
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '0';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[9]
t_prcs_B_9: PROCESS
BEGIN
	B(9) <= '0';
WAIT;
END PROCESS t_prcs_B_9;
-- B[8]
t_prcs_B_8: PROCESS
BEGIN
	B(8) <= '0';
WAIT;
END PROCESS t_prcs_B_8;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
	WAIT FOR 16000 ps;
	B(4) <= '1';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 8000 ps;
	B(3) <= '1';
	WAIT FOR 8000 ps;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B(2) <= '0';
		WAIT FOR 4000 ps;
		B(2) <= '1';
		WAIT FOR 4000 ps;
	END LOOP;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
LOOP
	B(1) <= '0';
	WAIT FOR 2000 ps;
	B(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 1000 ps;
	B(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- s1
t_prcs_s1: PROCESS
BEGIN
	s1 <= '0';
WAIT;
END PROCESS t_prcs_s1;

-- s2
t_prcs_s2: PROCESS
BEGIN
	s2 <= '1';
WAIT;
END PROCESS t_prcs_s2;
-- sel[3]
t_prcs_sel_3: PROCESS
BEGIN
	sel(3) <= '1';
WAIT;
END PROCESS t_prcs_sel_3;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	sel(2) <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END practica2_arch;