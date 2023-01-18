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
-- Generated on "01/18/2023 10:24:26"
                                                             
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
SIGNAL der : STD_LOGIC;
SIGNAL down : STD_LOGIC;
SIGNAL instrucciones : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL izq : STD_LOGIC;
SIGNAL mov : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL p1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL p2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL put : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL up : STD_LOGIC;
COMPONENT final
	PORT (
	A : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk : IN STD_LOGIC;
	der : IN STD_LOGIC;
	down : IN STD_LOGIC;
	instrucciones : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	izq : IN STD_LOGIC;
	mov : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	p1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	p2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	put : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	up : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	clk => clk,
	der => der,
	down => down,
	instrucciones => instrucciones,
	izq => izq,
	mov => mov,
	p1 => p1,
	p2 => p2,
	put => put,
	rst => rst,
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
	IF (NOW >= 50000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- up
t_prcs_up: PROCESS
BEGIN
	up <= '0';
WAIT;
END PROCESS t_prcs_up;

-- izq
t_prcs_izq: PROCESS
BEGIN
	izq <= '0';
	WAIT FOR 12000 ps;
	izq <= '1';
	WAIT FOR 1000 ps;
	izq <= '0';
WAIT;
END PROCESS t_prcs_izq;

-- der
t_prcs_der: PROCESS
BEGIN
	der <= '0';
	WAIT FOR 31000 ps;
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

-- put
t_prcs_put: PROCESS
BEGIN
	put <= '0';
WAIT;
END PROCESS t_prcs_put;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END final_arch;
