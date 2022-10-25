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
-- Generated on "10/24/2022 09:39:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UAritmetica
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UAritmetica_vhd_vec_tst IS
END UAritmetica_vhd_vec_tst;
ARCHITECTURE UAritmetica_arch OF UAritmetica_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Carry : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Overflow : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL selector : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Sum : STD_LOGIC;
SIGNAL Zero : STD_LOGIC;
COMPONENT UAritmetica
	PORT (
	A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	Carry : BUFFER STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	Overflow : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Sum : BUFFER STD_LOGIC;
	Zero : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UAritmetica
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Carry => Carry,
	Cout => Cout,
	Overflow => Overflow,
	S => S,
	selector => selector,
	Sum => Sum,
	Zero => Zero
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
	A(1) <= '1';
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
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- selector[1]
t_prcs_selector_1: PROCESS
BEGIN
	selector(1) <= '1';
WAIT;
END PROCESS t_prcs_selector_1;
-- selector[0]
t_prcs_selector_0: PROCESS
BEGIN
	selector(0) <= '0';
WAIT;
END PROCESS t_prcs_selector_0;
END UAritmetica_arch;
