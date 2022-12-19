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
-- Generated on "12/11/2022 23:52:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pila
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pila_vhd_vec_tst IS
END pila_vhd_vec_tst;
ARCHITECTURE pila_arch OF pila_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL enter : STD_LOGIC;
SIGNAL ENTRADA : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL I_LC_ES : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL S_LLENO : STD_LOGIC;
SIGNAL S_VACIO : STD_LOGIC;
SIGNAL SALIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT pila
	PORT (
	enter : IN STD_LOGIC;
	ENTRADA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	I_LC_ES : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	S_LLENO : OUT STD_LOGIC;
	S_VACIO : OUT STD_LOGIC;
	SALIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pila
	PORT MAP (
-- list connections between master ports and signals
	enter => enter,
	ENTRADA => ENTRADA,
	I_LC_ES => I_LC_ES,
	rst => rst,
	S_LLENO => S_LLENO,
	S_VACIO => S_VACIO,
	SALIDA => SALIDA
	);

-- enter
t_prcs_enter: PROCESS
BEGIN
LOOP
	enter <= '0';
	WAIT FOR 500 ps;
	enter <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 30000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enter;
-- ENTRADA[4]
t_prcs_ENTRADA_4: PROCESS
BEGIN
	ENTRADA(4) <= '0';
	WAIT FOR 3000 ps;
	ENTRADA(4) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(4) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA(4) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(4) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(4) <= '1';
	WAIT FOR 3000 ps;
	ENTRADA(4) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_4;
-- ENTRADA[3]
t_prcs_ENTRADA_3: PROCESS
BEGIN
	ENTRADA(3) <= '0';
	WAIT FOR 3000 ps;
	ENTRADA(3) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(3) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA(3) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(3) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(3) <= '1';
	WAIT FOR 3000 ps;
	ENTRADA(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_3;
-- ENTRADA[2]
t_prcs_ENTRADA_2: PROCESS
BEGIN
	ENTRADA(2) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(2) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(2) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(2) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA(2) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(2) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(2) <= '1';
	WAIT FOR 3000 ps;
	ENTRADA(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_2;
-- ENTRADA[1]
t_prcs_ENTRADA_1: PROCESS
BEGIN
	ENTRADA(1) <= '0';
	WAIT FOR 3000 ps;
	ENTRADA(1) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(1) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA(1) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(1) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(1) <= '1';
	WAIT FOR 3000 ps;
	ENTRADA(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_1;
-- ENTRADA[0]
t_prcs_ENTRADA_0: PROCESS
BEGIN
	ENTRADA(0) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(0) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(0) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(0) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA(0) <= '1';
	WAIT FOR 2000 ps;
	ENTRADA(0) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA(0) <= '1';
	WAIT FOR 3000 ps;
	ENTRADA(0) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_0;

-- I_LC_ES
t_prcs_I_LC_ES: PROCESS
BEGIN
	I_LC_ES <= '0';
WAIT;
END PROCESS t_prcs_I_LC_ES;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END pila_arch;
