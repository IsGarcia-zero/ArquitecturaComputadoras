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
-- Generated on "01/19/2023 08:57:20"
                                                             
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
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL der : STD_LOGIC;
SIGNAL down : STD_LOGIC;
SIGNAL filas : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL G : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL izq : STD_LOGIC;
SIGNAL put : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL sp1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sp2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sp3 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sp4 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL up : STD_LOGIC;
COMPONENT final
	PORT (
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	der : IN STD_LOGIC;
	down : IN STD_LOGIC;
	filas : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	G : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	izq : IN STD_LOGIC;
	put : IN STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC;
	sp1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	sp2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	sp3 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	sp4 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	up : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	clk => clk,
	der => der,
	down => down,
	filas => filas,
	G => G,
	izq => izq,
	put => put,
	R => R,
	rst => rst,
	sp1 => sp1,
	sp2 => sp2,
	sp3 => sp3,
	sp4 => sp4,
	up => up
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 200 ps;
	clk <= '1';
	WAIT FOR 200 ps;
	IF (NOW >= 150000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- der
t_prcs_der: PROCESS
BEGIN
	der <= '0';
	WAIT FOR 7000 ps;
	der <= '1';
	WAIT FOR 1000 ps;
	der <= '0';
WAIT;
END PROCESS t_prcs_der;

-- down
t_prcs_down: PROCESS
BEGIN
	down <= '0';
WAIT;
END PROCESS t_prcs_down;

-- izq
t_prcs_izq: PROCESS
BEGIN
	izq <= '0';
WAIT;
END PROCESS t_prcs_izq;

-- put
t_prcs_put: PROCESS
BEGIN
	put <= '0';
	WAIT FOR 25000 ps;
	put <= '1';
	WAIT FOR 1000 ps;
	put <= '0';
WAIT;
END PROCESS t_prcs_put;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- up
t_prcs_up: PROCESS
BEGIN
	up <= '0';
WAIT;
END PROCESS t_prcs_up;
END final_arch;
