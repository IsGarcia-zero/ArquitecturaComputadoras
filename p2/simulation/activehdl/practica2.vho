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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "11/23/2022 09:02:11"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica2 IS
    PORT (
	ZF : OUT std_logic;
	s1 : IN std_logic;
	s2 : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	SF : OUT std_logic;
	OVF : OUT std_logic;
	CF : OUT std_logic;
	R : OUT std_logic_vector(9 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- ZF	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SF	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVF	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CF	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ZF : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SF : std_logic;
SIGNAL ww_OVF : std_logic;
SIGNAL ww_CF : std_logic;
SIGNAL ww_R : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ZF~output_o\ : std_logic;
SIGNAL \SF~output_o\ : std_logic;
SIGNAL \OVF~output_o\ : std_logic;
SIGNAL \CF~output_o\ : std_logic;
SIGNAL \R[9]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|Sfm~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout2~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout2~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout2~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout2~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout2~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout2~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s8|Cout~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s8|Cout~combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida[8]~31_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[8]~24\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[9]~25_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|Equal1~4_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s8|Suma~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[8]~23_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~5_combout\ : std_logic;
SIGNAL \inst1|Mux1~6_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst1|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|Mux4~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan4~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|Mux6~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Suma~1_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan5~14_combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop[1]~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst1|Mux8~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan6~14_combout\ : std_logic;
SIGNAL \inst1|Mux8~5_combout\ : std_logic;
SIGNAL \inst1|Mux8~6_combout\ : std_logic;
SIGNAL \inst1|Mux9~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~14_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~15_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~16_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~17_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~18_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~19_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|Add6~20_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~1_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~3_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~5_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~7_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~9_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~11_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~13_cout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan7~14_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[0]~27_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~30_combout\ : std_logic;
SIGNAL \inst1|Mux9~4_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|unidad_aritmetica|suma|Yop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst1|unidad_aritmetica|suma|Xop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ZF <= ww_ZF;
ww_s1 <= s1;
ww_s2 <= s2;
ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
SF <= ww_SF;
OVF <= ww_OVF;
CF <= ww_CF;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\ZF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ZF~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\SF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|unidad_aritmetica|mult|Sfm~0_combout\,
	devoe => ww_devoe,
	o => \SF~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\OVF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OVF~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\CF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CF~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux1~6_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux8~6_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOIBUF_X28_Y0_N1
\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\s2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: LCCOMB_X23_Y20_N4
\inst1|unidad_aritmetica|mult|Sfm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|Sfm~0_combout\ = \s1~input_o\ $ (\s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datac => \s2~input_o\,
	combout => \inst1|unidad_aritmetica|mult|Sfm~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: LCCOMB_X25_Y20_N28
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\sel[2]~input_o\ & (\sel[1]~input_o\ & (\sel[0]~input_o\ & !\sel[3]~input_o\))) # (!\sel[2]~input_o\ & (\sel[3]~input_o\ & ((!\sel[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux1~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X24_Y20_N28
\inst1|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(6) = \A[6]~input_o\ $ (\s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \s1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(6));

-- Location: IOIBUF_X28_Y24_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X25_Y18_N28
\inst1|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(4) = \s1~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(4));

-- Location: IOIBUF_X23_Y24_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X28_Y19_N14
\inst1|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(2) = \s1~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(2));

-- Location: IOIBUF_X34_Y17_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X28_Y19_N10
\inst1|unidad_aritmetica|suma|Xop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(1) = \s1~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(1));

-- Location: IOIBUF_X34_Y17_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X28_Y19_N0
\inst1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\s1~input_o\ & (\s2~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \s2~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: IOIBUF_X30_Y24_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X28_Y19_N24
\inst1|unidad_aritmetica|suma|s1|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|Xop\(1) & (\inst1|unidad_aritmetica|suma|s1|Cout~0_combout\ & (\s2~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \s2~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout2~combout\);

-- Location: IOIBUF_X23_Y24_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X29_Y19_N18
\inst1|unidad_aritmetica|suma|s2|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|Xop\(2) & (\inst1|unidad_aritmetica|suma|s1|Cout2~combout\ & (\B[2]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst1|unidad_aritmetica|suma|s1|Cout2~combout\,
	datac => \B[2]~input_o\,
	datad => \s2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s2|Cout2~combout\);

-- Location: IOIBUF_X34_Y17_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y20_N28
\inst1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(3) = \s1~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X29_Y19_N24
\inst1|unidad_aritmetica|suma|s3|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|s2|Cout2~combout\ & (\inst1|unidad_aritmetica|suma|Xop\(3) & (\B[3]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s2|Cout2~combout\,
	datac => \s2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(3),
	combout => \inst1|unidad_aritmetica|suma|s3|Cout2~combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst1|unidad_aritmetica|suma|s4|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|Xop\(4) & (\inst1|unidad_aritmetica|suma|s3|Cout2~combout\ & (\B[4]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(4),
	datab => \B[4]~input_o\,
	datac => \s2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s3|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s4|Cout2~combout\);

-- Location: IOIBUF_X16_Y24_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X23_Y20_N30
\inst1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(5) = \A[5]~input_o\ $ (\s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \s1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(5));

-- Location: IOIBUF_X34_Y20_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X23_Y20_N28
\inst1|unidad_aritmetica|suma|s5|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|s4|Cout2~combout\ & (\inst1|unidad_aritmetica|suma|Xop\(5) & (\s2~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s4|Cout2~combout\,
	datac => \inst1|unidad_aritmetica|suma|Xop\(5),
	datad => \B[5]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s5|Cout2~combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst1|unidad_aritmetica|suma|s6|Cout2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout2~combout\ = (\inst1|unidad_aritmetica|suma|Xop\(6) & (\inst1|unidad_aritmetica|suma|s5|Cout2~combout\ & (\s2~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s5|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s6|Cout2~combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst1|unidad_aritmetica|suma|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout2~combout\ & (\B[7]~input_o\ $ (\s2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \s2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s6|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\A[0]~input_o\ & (((\s2~input_o\) # (\B[0]~input_o\)))) # (!\A[0]~input_o\ & ((\s1~input_o\) # ((\s2~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \s2~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst1|unidad_aritmetica|suma|s1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(1) & ((\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\) # (\s2~input_o\ $ (\B[1]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(1) & 
-- (\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ & (\s2~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \s2~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst1|unidad_aritmetica|suma|s1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout~2_combout\ = (\inst1|unidad_aritmetica|suma|s1|Cout~1_combout\) # (\inst1|unidad_aritmetica|suma|s1|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout~2_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s1|Cout~2_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(2)) # (\B[2]~input_o\ $ (\s2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s1|Cout~2_combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(2) & (\B[2]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s1|Cout~2_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(2),
	datac => \B[2]~input_o\,
	datad => \s2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst1|unidad_aritmetica|suma|s2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s2|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s1|Cout2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s1|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s2|Cout~combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(3) & ((\inst1|unidad_aritmetica|suma|s2|Cout~combout\) # (\s2~input_o\ $ (\B[3]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(3) & 
-- (\inst1|unidad_aritmetica|suma|s2|Cout~combout\ & (\s2~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(3),
	datab => \s2~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s2|Cout~combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst1|unidad_aritmetica|suma|s3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s3|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s2|Cout2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s3|Cout~combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(4) & ((\inst1|unidad_aritmetica|suma|s3|Cout~combout\) # (\B[4]~input_o\ $ (\s2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(4) & 
-- (\inst1|unidad_aritmetica|suma|s3|Cout~combout\ & (\B[4]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(4),
	datab => \B[4]~input_o\,
	datac => \s2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s3|Cout~combout\,
	combout => \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst1|unidad_aritmetica|suma|s4|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s4|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s3|Cout2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s3|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s4|Cout~combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(5) & ((\inst1|unidad_aritmetica|suma|s4|Cout~combout\) # (\s2~input_o\ $ (\B[5]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(5) & 
-- (\inst1|unidad_aritmetica|suma|s4|Cout~combout\ & (\s2~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(5),
	datac => \B[5]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s4|Cout~combout\,
	combout => \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst1|unidad_aritmetica|suma|s5|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s5|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s4|Cout2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s4|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s5|Cout~combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s5|Cout~combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(6)) # (\s2~input_o\ $ (\B[6]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s5|Cout~combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(6) & (\s2~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s5|Cout~combout\,
	datac => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst1|unidad_aritmetica|suma|s6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s5|Cout2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s5|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s6|Cout~combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(7) = \A[7]~input_o\ $ (\s1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \s1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X23_Y20_N18
\inst1|unidad_aritmetica|suma|s7|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout~combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(7)) # (\B[7]~input_o\ $ (\s2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s6|Cout~combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(7) & (\B[7]~input_o\ $ (\s2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s6|Cout~combout\,
	datac => \s2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(7),
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst1|unidad_aritmetica|suma|s7|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout2~combout\) # (\inst1|unidad_aritmetica|suma|s7|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s6|Cout2~combout\,
	datad => \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst1|unidad_aritmetica|suma|s8|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s8|Cout~2_combout\ = (\s2~input_o\ & ((\inst1|unidad_aritmetica|suma|s7|Cout~0_combout\) # ((\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\) # (\s1~input_o\)))) # (!\s2~input_o\ & (\s1~input_o\ & 
-- ((\inst1|unidad_aritmetica|suma|s7|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	datad => \s1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s8|Cout~2_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst1|unidad_aritmetica|suma|s8|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s8|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s8|Cout~2_combout\) # ((\inst1|unidad_aritmetica|suma|s7|Cout~0_combout\ & (\A[7]~input_o\ $ (\s1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s8|Cout~2_combout\,
	datad => \s1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s8|Cout~combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = \sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (!\sel[0]~input_o\ & ((\sel[2]~input_o\ & ((!\sel[3]~input_o\))) # (!\sel[2]~input_o\ & ((\sel[1]~input_o\) # (\sel[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|Mux1~0_combout\ & ((!\inst1|Mux11~0_combout\) # (!\inst1|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux11~0_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X24_Y20_N8
\inst1|barrel_shifters|aux[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[9]~feeder_combout\ = \A[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[8]~input_o\,
	combout => \inst1|barrel_shifters|aux[9]~feeder_combout\);

-- Location: FF_X24_Y20_N9
\inst1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(9));

-- Location: FF_X24_Y20_N7
\inst1|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X24_Y20_N6
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|barrel_shifters|salShifters\(9) & \sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|barrel_shifters|salShifters\(9),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst1|unidad_logica|salida[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida[8]~31_combout\ = (\sel[2]~input_o\ & (!\sel[3]~input_o\ & (!\sel[0]~input_o\))) # (!\sel[2]~input_o\ & (!\sel[1]~input_o\ & ((\sel[3]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \inst1|unidad_logica|salida[8]~31_combout\);

-- Location: IOIBUF_X13_Y24_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X24_Y19_N28
\inst1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~6_combout\ = (\B[9]~input_o\ & ((!\inst1|Mux11~0_combout\) # (!\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst1|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[1]~9_combout\ = (\A[0]~input_o\ & (!\A[1]~input_o\ & VCC)) # (!\A[0]~input_o\ & (\A[1]~input_o\ $ (GND)))
-- \inst1|unidad_logica|aux[1]~10\ = CARRY((!\A[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_logica|aux[1]~9_combout\,
	cout => \inst1|unidad_logica|aux[1]~10\);

-- Location: LCCOMB_X25_Y19_N2
\inst1|unidad_logica|aux[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[2]~11_combout\ = (\A[2]~input_o\ & ((\inst1|unidad_logica|aux[1]~10\) # (GND))) # (!\A[2]~input_o\ & (!\inst1|unidad_logica|aux[1]~10\))
-- \inst1|unidad_logica|aux[2]~12\ = CARRY((\A[2]~input_o\) # (!\inst1|unidad_logica|aux[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[1]~10\,
	combout => \inst1|unidad_logica|aux[2]~11_combout\,
	cout => \inst1|unidad_logica|aux[2]~12\);

-- Location: LCCOMB_X25_Y19_N4
\inst1|unidad_logica|aux[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[3]~13_combout\ = (\A[3]~input_o\ & (!\inst1|unidad_logica|aux[2]~12\ & VCC)) # (!\A[3]~input_o\ & (\inst1|unidad_logica|aux[2]~12\ $ (GND)))
-- \inst1|unidad_logica|aux[3]~14\ = CARRY((!\A[3]~input_o\ & !\inst1|unidad_logica|aux[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[2]~12\,
	combout => \inst1|unidad_logica|aux[3]~13_combout\,
	cout => \inst1|unidad_logica|aux[3]~14\);

-- Location: LCCOMB_X25_Y19_N6
\inst1|unidad_logica|aux[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[4]~15_combout\ = (\A[4]~input_o\ & ((\inst1|unidad_logica|aux[3]~14\) # (GND))) # (!\A[4]~input_o\ & (!\inst1|unidad_logica|aux[3]~14\))
-- \inst1|unidad_logica|aux[4]~16\ = CARRY((\A[4]~input_o\) # (!\inst1|unidad_logica|aux[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[3]~14\,
	combout => \inst1|unidad_logica|aux[4]~15_combout\,
	cout => \inst1|unidad_logica|aux[4]~16\);

-- Location: LCCOMB_X25_Y19_N8
\inst1|unidad_logica|aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[5]~17_combout\ = (\A[5]~input_o\ & (!\inst1|unidad_logica|aux[4]~16\ & VCC)) # (!\A[5]~input_o\ & (\inst1|unidad_logica|aux[4]~16\ $ (GND)))
-- \inst1|unidad_logica|aux[5]~18\ = CARRY((!\A[5]~input_o\ & !\inst1|unidad_logica|aux[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[4]~16\,
	combout => \inst1|unidad_logica|aux[5]~17_combout\,
	cout => \inst1|unidad_logica|aux[5]~18\);

-- Location: LCCOMB_X25_Y19_N10
\inst1|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[6]~19_combout\ = (\A[6]~input_o\ & ((\inst1|unidad_logica|aux[5]~18\) # (GND))) # (!\A[6]~input_o\ & (!\inst1|unidad_logica|aux[5]~18\))
-- \inst1|unidad_logica|aux[6]~20\ = CARRY((\A[6]~input_o\) # (!\inst1|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[5]~18\,
	combout => \inst1|unidad_logica|aux[6]~19_combout\,
	cout => \inst1|unidad_logica|aux[6]~20\);

-- Location: LCCOMB_X25_Y19_N12
\inst1|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[7]~21_combout\ = (\A[7]~input_o\ & (!\inst1|unidad_logica|aux[6]~20\ & VCC)) # (!\A[7]~input_o\ & (\inst1|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst1|unidad_logica|aux[7]~22\ = CARRY((!\A[7]~input_o\ & !\inst1|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[6]~20\,
	combout => \inst1|unidad_logica|aux[7]~21_combout\,
	cout => \inst1|unidad_logica|aux[7]~22\);

-- Location: LCCOMB_X25_Y19_N14
\inst1|unidad_logica|aux[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[8]~23_combout\ = (\A[8]~input_o\ & ((\inst1|unidad_logica|aux[7]~22\) # (GND))) # (!\A[8]~input_o\ & (!\inst1|unidad_logica|aux[7]~22\))
-- \inst1|unidad_logica|aux[8]~24\ = CARRY((\A[8]~input_o\) # (!\inst1|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[7]~22\,
	combout => \inst1|unidad_logica|aux[8]~23_combout\,
	cout => \inst1|unidad_logica|aux[8]~24\);

-- Location: LCCOMB_X25_Y19_N16
\inst1|unidad_logica|aux[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[9]~25_combout\ = \inst1|unidad_logica|aux[8]~24\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A[9]~input_o\,
	cin => \inst1|unidad_logica|aux[8]~24\,
	combout => \inst1|unidad_logica|aux[9]~25_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst1|unidad_logica|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|Equal1~4_combout\ = (!\sel[2]~input_o\ & (!\sel[0]~input_o\ & \sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	combout => \inst1|unidad_logica|Equal1~4_combout\);

-- Location: FF_X24_Y19_N13
\inst1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[9]~25_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(9));

-- Location: LCCOMB_X25_Y20_N8
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (!\sel[2]~input_o\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~5_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(9)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(9),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~7_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & (\A[9]~input_o\ $ (((\inst1|unidad_logica|salida~6_combout\) # (\inst1|unidad_logica|salida~5_combout\))))) # (!\inst1|unidad_logica|salida[8]~31_combout\ & 
-- ((\inst1|unidad_logica|salida~5_combout\) # ((\inst1|unidad_logica|salida~6_combout\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \inst1|unidad_logica|salida~6_combout\,
	datac => \A[9]~input_o\,
	datad => \inst1|unidad_logica|salida~5_combout\,
	combout => \inst1|unidad_logica|salida~7_combout\);

-- Location: FF_X24_Y19_N3
\inst1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(9));

-- Location: LCCOMB_X24_Y20_N14
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux1~1_combout\ & (((\inst1|unidad_logica|salida\(9) & !\inst1|Mux1~0_combout\)))) # (!\inst1|Mux1~1_combout\ & ((\inst1|Mux0~0_combout\) # ((\inst1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|unidad_logica|salida\(9),
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~4_combout\ = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(2) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X28_Y17_N14
\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\inst1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(10) = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X28_Y17_N12
\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|inter\(10) & (\inst1|unidad_logica|salida~4_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(2) $ (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~4_combout\,
	datab => \inst1|unidad_aritmetica|mult|inter\(2),
	datac => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|inter\(10),
	combout => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(3) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X28_Y17_N8
\inst1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|inter\(2)) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \inst1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|inter\(2),
	combout => \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst1|unidad_aritmetica|mult|multi1|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|inter\(3) $ (\inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(3),
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\) # ((\B[2]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\B[2]~input_o\ & (\A[1]~input_o\ & \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|inter\(3) & ((\inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # (!\inst1|unidad_aritmetica|mult|inter\(3) & 
-- (\B[1]~input_o\ & (\inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(3),
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(4) = (\B[0]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X28_Y17_N2
\inst1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(4) $ (((\B[1]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|inter\(4),
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst1|unidad_aritmetica|mult|multi2|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\A[0]~input_o\ & (\inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\) # ((\A[1]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & (\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\A[1]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|inter\(4)) # ((\B[1]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|inter\(4) & (\B[1]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|inter\(4),
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst1|unidad_aritmetica|mult|multi1|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (((\A[2]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X26_Y17_N12
\inst1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (((\A[1]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ & (\B[4]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\) # ((\B[4]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & (\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & (\B[4]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\) # ((\A[2]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & (\A[2]~input_o\ & (\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\B[1]~input_o\ & (\inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\) # ((\B[2]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ & (\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\B[2]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ $ (((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\) # ((\B[4]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & (\B[4]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & (\A[3]~input_o\ & (\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\B[2]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & (\B[2]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\) # ((\B[4]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\B[4]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\) # ((\A[4]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & (\A[4]~input_o\ & (\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|Mux1~2_combout\ & ((\inst1|Mux0~1_combout\ & (\inst1|unidad_aritmetica|suma|s8|Cout~combout\)) # (!\inst1|Mux0~1_combout\ & ((\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))) # (!\inst1|Mux1~2_combout\ & 
-- (((\inst1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s8|Cout~combout\,
	datab => \inst1|Mux1~2_combout\,
	datac => \inst1|Mux0~1_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\inst1|Mux0~2_combout\) # ((!\inst1|Mux1~0_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux1~0_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst1|Mux0~2_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst1|unidad_aritmetica|suma|s8|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s8|Suma~combout\ = \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ $ (\inst1|unidad_aritmetica|mult|Sfm~0_combout\ $ (((\inst1|unidad_aritmetica|suma|Xop\(7) & \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst1|unidad_aritmetica|mult|Sfm~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s8|Suma~combout\);

-- Location: IOIBUF_X0_Y11_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X24_Y19_N22
\inst1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~9_combout\ = (\B[8]~input_o\ & ((!\inst1|Mux11~0_combout\) # (!\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~9_combout\);

-- Location: FF_X24_Y19_N11
\inst1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[8]~23_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(8));

-- Location: LCCOMB_X24_Y19_N10
\inst1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~8_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(8)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(8),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~8_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~10_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & (\A[8]~input_o\ $ (((\inst1|unidad_logica|salida~9_combout\) # (\inst1|unidad_logica|salida~8_combout\))))) # (!\inst1|unidad_logica|salida[8]~31_combout\ & 
-- ((\inst1|unidad_logica|salida~8_combout\) # ((\A[8]~input_o\ & \inst1|unidad_logica|salida~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \A[8]~input_o\,
	datac => \inst1|unidad_logica|salida~9_combout\,
	datad => \inst1|unidad_logica|salida~8_combout\,
	combout => \inst1|unidad_logica|salida~10_combout\);

-- Location: FF_X24_Y19_N1
\inst1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(8));

-- Location: LCCOMB_X21_Y20_N22
\inst1|barrel_shifters|aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[8]~feeder_combout\ = \A[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[7]~input_o\,
	combout => \inst1|barrel_shifters|aux[8]~feeder_combout\);

-- Location: FF_X21_Y20_N23
\inst1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(8));

-- Location: FF_X21_Y20_N21
\inst1|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X21_Y20_N20
\inst1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\inst1|barrel_shifters|salShifters\(8) & \sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|barrel_shifters|salShifters\(8),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (\inst1|Mux1~1_combout\ & (\inst1|unidad_logica|salida\(8) & ((!\inst1|Mux1~0_combout\)))) # (!\inst1|Mux1~1_combout\ & (((\inst1|Mux1~3_combout\) # (\inst1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida\(8),
	datab => \inst1|Mux1~1_combout\,
	datac => \inst1|Mux1~3_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (((\B[4]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~5_combout\ = (\inst1|Mux1~2_combout\ & ((\inst1|Mux1~4_combout\ & (\inst1|unidad_aritmetica|suma|s8|Suma~combout\)) # (!\inst1|Mux1~4_combout\ & ((\inst1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))))) # (!\inst1|Mux1~2_combout\ & 
-- (((\inst1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s8|Suma~combout\,
	datab => \inst1|Mux1~2_combout\,
	datac => \inst1|Mux1~4_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	combout => \inst1|Mux1~5_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~6_combout\ = (\inst1|Mux1~5_combout\) # ((!\inst1|Mux1~0_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux1~0_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst1|Mux1~5_combout\,
	combout => \inst1|Mux1~6_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (!\sel[2]~input_o\ & (\sel[3]~input_o\ & (\sel[1]~input_o\ $ (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = (\inst1|Mux8~0_combout\ & (\inst1|Mux11~0_combout\)) # (!\inst1|Mux8~0_combout\ & ((\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datab => \inst1|Mux11~0_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y22_N24
\inst1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\B[7]~input_o\) # ((\B[6]~input_o\) # ((\B[0]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\B[2]~input_o\) # ((\B[4]~input_o\) # ((\B[3]~input_o\) # (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst1|unidad_aritmetica|divi|LessThan0~0_combout\) # ((\B[1]~input_o\) # (\inst1|unidad_aritmetica|divi|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst1|unidad_aritmetica|suma|Yop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop\(7) = \s2~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datac => \B[7]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop\(7));

-- Location: LCCOMB_X23_Y20_N26
\inst1|unidad_aritmetica|suma|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|s6|Cout2~combout\ $ (\inst1|unidad_aritmetica|suma|Yop\(7) $ (\inst1|unidad_aritmetica|suma|s6|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s6|Cout2~combout\,
	datab => \inst1|unidad_aritmetica|suma|Yop\(7),
	datac => \inst1|unidad_aritmetica|suma|s6|Cout~combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(7),
	combout => \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\);

-- Location: FF_X25_Y20_N9
\inst1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(7));

-- Location: FF_X25_Y20_N1
\inst1|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X25_Y20_N0
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & \inst1|barrel_shifters|salShifters\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(7),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X25_Y21_N8
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|Mux8~0_combout\ & (((\inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\) # (\inst1|Mux8~1_combout\)))) # (!\inst1|Mux8~0_combout\ & (\inst1|Mux2~0_combout\ & ((!\inst1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~0_combout\,
	datab => \inst1|Mux8~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datad => \inst1|Mux8~1_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\inst1|Mux8~1_combout\ & ((\inst1|Mux2~1_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~2_combout\)) # (!\inst1|Mux2~1_combout\ & ((\inst1|unidad_aritmetica|suma|s7|Suma~0_combout\))))) # (!\inst1|Mux8~1_combout\ & 
-- (((\inst1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~1_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datac => \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	datad => \inst1|Mux2~1_combout\,
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~12_combout\ = (\B[7]~input_o\ & ((!\inst1|Mux11~0_combout\) # (!\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~12_combout\);

-- Location: FF_X24_Y19_N25
\inst1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[7]~21_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(7));

-- Location: LCCOMB_X24_Y19_N24
\inst1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~11_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(7)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(7),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~11_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~13_combout\ = (\A[7]~input_o\ & (\inst1|unidad_logica|salida[8]~31_combout\ $ (((\inst1|unidad_logica|salida~12_combout\) # (\inst1|unidad_logica|salida~11_combout\))))) # (!\A[7]~input_o\ & 
-- ((\inst1|unidad_logica|salida~11_combout\) # ((\inst1|unidad_logica|salida~12_combout\ & \inst1|unidad_logica|salida[8]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst1|unidad_logica|salida~12_combout\,
	datac => \inst1|unidad_logica|salida[8]~31_combout\,
	datad => \inst1|unidad_logica|salida~11_combout\,
	combout => \inst1|unidad_logica|salida~13_combout\);

-- Location: FF_X24_Y19_N31
\inst1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(7));

-- Location: LCCOMB_X25_Y20_N14
\inst1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~2_combout\ = (!\sel[3]~input_o\ & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux8~2_combout\);

-- Location: LCCOMB_X26_Y20_N8
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|Mux8~2_combout\ & ((\inst1|unidad_logica|salida\(7)))) # (!\inst1|Mux8~2_combout\ & (\inst1|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~2_combout\,
	datab => \inst1|unidad_logica|salida\(7),
	datad => \inst1|Mux8~2_combout\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~15_combout\ = (\B[6]~input_o\ & ((!\inst1|Mux11~0_combout\) # (!\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~15_combout\);

-- Location: FF_X25_Y19_N19
\inst1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[6]~19_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(6));

-- Location: LCCOMB_X25_Y19_N18
\inst1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~14_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(6)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datac => \inst1|unidad_logica|aux\(6),
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~14_combout\);

-- Location: LCCOMB_X25_Y19_N22
\inst1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~16_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & (\A[6]~input_o\ $ (((\inst1|unidad_logica|salida~15_combout\) # (\inst1|unidad_logica|salida~14_combout\))))) # (!\inst1|unidad_logica|salida[8]~31_combout\ & 
-- ((\inst1|unidad_logica|salida~14_combout\) # ((\inst1|unidad_logica|salida~15_combout\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \inst1|unidad_logica|salida~15_combout\,
	datac => \A[6]~input_o\,
	datad => \inst1|unidad_logica|salida~14_combout\,
	combout => \inst1|unidad_logica|salida~16_combout\);

-- Location: FF_X25_Y19_N23
\inst1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(6));

-- Location: LCCOMB_X23_Y21_N10
\inst1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~0_combout\ = (\A[7]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[7]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add0~1\ = CARRY((\A[7]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X23_Y21_N12
\inst1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~1\))
-- \inst1|unidad_aritmetica|divi|Add0~3\ = CARRY((\B[1]~input_o\) # (!\inst1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X23_Y21_N14
\inst1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~4_combout\ = (\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\B[2]~input_o\ & !\inst1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X23_Y21_N16
\inst1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~6_combout\ = (\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~5\))
-- \inst1|unidad_aritmetica|divi|Add0~7\ = CARRY((\B[3]~input_o\) # (!\inst1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X23_Y21_N18
\inst1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~8_combout\ = (\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\B[4]~input_o\ & !\inst1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X23_Y21_N20
\inst1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~10_combout\ = (\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~9\))
-- \inst1|unidad_aritmetica|divi|Add0~11\ = CARRY((\B[5]~input_o\) # (!\inst1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X23_Y21_N22
\inst1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	cin => \inst1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~14_combout\ = (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~12_combout\ & !\inst1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|Add0~12_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~15_combout\ = (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (\inst1|unidad_aritmetica|divi|Add0~10_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~10_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (\inst1|unidad_aritmetica|divi|Add0~8_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X23_Y21_N8
\inst1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add0~6_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~4_combout\ & !\inst1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|Add0~4_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~19_combout\ = (\inst1|unidad_aritmetica|divi|Add0~2_combout\ & (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~2_combout\,
	datab => \B[1]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\A[7]~input_o\)) # (!\inst1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((!\A[6]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y21_N2
\inst1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~20_combout\ & !\inst1|unidad_aritmetica|divi|LessThan1~1_cout\)) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~20_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y21_N4
\inst1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst1|unidad_aritmetica|divi|Add0~19_combout\))) # (!\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y21_N6
\inst1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~18_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~5_cout\) # (!\B[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y21_N8
\inst1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y21_N10
\inst1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~16_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~9_cout\) # (!\B[5]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add0~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y21_N12
\inst1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~11_cout\) # (!\inst1|unidad_aritmetica|divi|Add0~15_combout\))) # (!\B[6]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~15_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y21_N14
\inst1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add0~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan1~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (((\A[2]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst1|barrel_shifters|aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[6]~feeder_combout\ = \A[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[5]~input_o\,
	combout => \inst1|barrel_shifters|aux[6]~feeder_combout\);

-- Location: FF_X25_Y20_N23
\inst1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(6));

-- Location: FF_X25_Y20_N11
\inst1|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X25_Y20_N10
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & \inst1|barrel_shifters|salShifters\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(6),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst1|unidad_aritmetica|suma|Yop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop\(6) = \B[6]~input_o\ $ (\s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \s2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop\(6));

-- Location: LCCOMB_X23_Y20_N10
\inst1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst1|unidad_aritmetica|suma|Yop\(6) $ (\inst1|unidad_aritmetica|suma|s5|Cout2~combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(6) $ (\inst1|unidad_aritmetica|suma|s5|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop\(6),
	datab => \inst1|unidad_aritmetica|suma|s5|Cout2~combout\,
	datac => \inst1|unidad_aritmetica|suma|Xop\(6),
	datad => \inst1|unidad_aritmetica|suma|s5|Cout~combout\,
	combout => \inst1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X22_Y20_N8
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|Mux8~1_combout\ & (((\inst1|unidad_aritmetica|suma|s6|Suma~combout\) # (\inst1|Mux8~0_combout\)))) # (!\inst1|Mux8~1_combout\ & (\inst1|Mux3~0_combout\ & ((!\inst1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|Mux8~1_combout\,
	datac => \inst1|unidad_aritmetica|suma|s6|Suma~combout\,
	datad => \inst1|Mux8~0_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y20_N10
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst1|Mux3~1_combout\ & (((!\inst1|Mux8~0_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\))) # (!\inst1|Mux3~1_combout\ & (((\inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ & \inst1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datac => \inst1|Mux3~1_combout\,
	datad => \inst1|Mux8~0_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(6))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida\(6),
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux8~2_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~18_combout\ = (\B[5]~input_o\ & ((!\A[5]~input_o\) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst1|unidad_logica|salida~18_combout\);

-- Location: FF_X24_Y19_N7
\inst1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[5]~17_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(5));

-- Location: LCCOMB_X24_Y19_N6
\inst1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~17_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(5)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(5),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~17_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~19_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & (\A[5]~input_o\ $ (((\inst1|unidad_logica|salida~18_combout\) # (\inst1|unidad_logica|salida~17_combout\))))) # (!\inst1|unidad_logica|salida[8]~31_combout\ & 
-- ((\inst1|unidad_logica|salida~17_combout\) # ((\inst1|unidad_logica|salida~18_combout\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \inst1|unidad_logica|salida~18_combout\,
	datac => \A[5]~input_o\,
	datad => \inst1|unidad_logica|salida~17_combout\,
	combout => \inst1|unidad_logica|salida~19_combout\);

-- Location: FF_X24_Y19_N17
\inst1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(5));

-- Location: LCCOMB_X26_Y17_N24
\inst1|unidad_aritmetica|mult|multi4|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (((\B[4]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst1|barrel_shifters|aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[5]~feeder_combout\ = \A[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[4]~input_o\,
	combout => \inst1|barrel_shifters|aux[5]~feeder_combout\);

-- Location: FF_X25_Y20_N27
\inst1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(5));

-- Location: FF_X25_Y20_N21
\inst1|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X25_Y20_N20
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & \inst1|barrel_shifters|salShifters\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(5),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y21_N26
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|Mux8~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\) # ((\inst1|Mux8~1_combout\)))) # (!\inst1|Mux8~0_combout\ & (((\inst1|Mux4~0_combout\ & !\inst1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datab => \inst1|Mux8~0_combout\,
	datac => \inst1|Mux4~0_combout\,
	datad => \inst1|Mux8~1_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X22_Y21_N18
\inst1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~0_combout\ = (\A[6]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[6]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add1~1\ = CARRY((\A[6]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X22_Y21_N20
\inst1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add1~1\)) # (!\inst1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~20_combout\ & (\inst1|unidad_aritmetica|divi|Add1~1\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add1~1\))))
-- \inst1|unidad_aritmetica|divi|Add1~3\ = CARRY((\B[1]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add1~1\) # (!\inst1|unidad_aritmetica|divi|Add0~20_combout\))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X22_Y21_N22
\inst1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~4_combout\ = ((\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add1~5\ = CARRY((\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~19_combout\ & !\inst1|unidad_aritmetica|divi|Add1~3\)) # (!\B[2]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~19_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X22_Y21_N24
\inst1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst1|unidad_aritmetica|divi|Add0~18_combout\ & ((\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~5\)) # (!\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~5\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & ((\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~5\))))
-- \inst1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~18_combout\ & (\B[3]~input_o\ & !\inst1|unidad_aritmetica|divi|Add1~5\)) # (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X22_Y21_N26
\inst1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~8_combout\ = ((\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add0~17_combout\ $ (\inst1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add1~9\ = CARRY((\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst1|unidad_aritmetica|divi|Add1~7\)) # (!\B[4]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~17_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X22_Y21_N28
\inst1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst1|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~9\)) # (!\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~9\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~9\))))
-- \inst1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~16_combout\ & (\B[5]~input_o\ & !\inst1|unidad_aritmetica|divi|Add1~9\)) # (!\inst1|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X22_Y21_N30
\inst1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add0~15_combout\ $ (\inst1|unidad_aritmetica|divi|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~15_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X22_Y20_N6
\inst1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~16_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add1~10_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~8_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~17_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X22_Y19_N10
\inst1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~6_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~18_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add1~4_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~19_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X22_Y21_N16
\inst1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add0~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add1~2_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add0~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\A[6]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~0_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \A[6]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((!\A[5]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y20_N14
\inst1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~20_combout\ & !\inst1|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~20_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y20_N16
\inst1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan2~3_cout\) # (!\inst1|unidad_aritmetica|divi|Add1~19_combout\))) # (!\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~19_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y20_N18
\inst1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~18_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\B[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add1~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y20_N20
\inst1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~17_combout\ & (\B[4]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan2~7_cout\)) # (!\inst1|unidad_aritmetica|divi|Add1~17_combout\ & ((\B[4]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y20_N22
\inst1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan2~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y20_N24
\inst1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan2~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add1~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y20_N26
\inst1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add1~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan2~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add1~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst1|unidad_aritmetica|suma|Yop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop\(5) = \B[5]~input_o\ $ (\s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \s2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop\(5));

-- Location: LCCOMB_X25_Y21_N16
\inst1|unidad_aritmetica|suma|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|Yop\(5) $ (\inst1|unidad_aritmetica|suma|s4|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(5) $ (\inst1|unidad_aritmetica|suma|s4|Cout2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop\(5),
	datab => \inst1|unidad_aritmetica|suma|s4|Cout~combout\,
	datac => \inst1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst1|unidad_aritmetica|suma|s4|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\);

-- Location: LCCOMB_X25_Y21_N0
\inst1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst1|Mux4~1_combout\ & (((!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\)) # (!\inst1|Mux8~1_combout\))) # (!\inst1|Mux4~1_combout\ & (\inst1|Mux8~1_combout\ & ((\inst1|unidad_aritmetica|suma|s5|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~1_combout\,
	datab => \inst1|Mux8~1_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X25_Y21_N2
\inst1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~3_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(5))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida\(5),
	datac => \inst1|Mux8~2_combout\,
	datad => \inst1|Mux4~2_combout\,
	combout => \inst1|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~20_combout\ = (\inst1|Mux10~0_combout\ & (((!\inst1|Mux11~0_combout\)))) # (!\inst1|Mux10~0_combout\ & ((\A[4]~input_o\ & ((\B[4]~input_o\) # (\inst1|Mux11~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- \inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~20_combout\);

-- Location: FF_X25_Y19_N7
\inst1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[4]~15_combout\,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(4));

-- Location: LCCOMB_X25_Y19_N28
\inst1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~21_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|salida~20_combout\ & (!\A[4]~input_o\)) # (!\inst1|unidad_logica|salida~20_combout\ & ((\inst1|unidad_logica|aux\(4)))))) # (!\inst1|Mux10~0_combout\ & 
-- (((\inst1|unidad_logica|salida~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \A[4]~input_o\,
	datac => \inst1|unidad_logica|salida~20_combout\,
	datad => \inst1|unidad_logica|aux\(4),
	combout => \inst1|unidad_logica|salida~21_combout\);

-- Location: FF_X25_Y19_N29
\inst1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(4));

-- Location: LCCOMB_X26_Y17_N2
\inst1|unidad_aritmetica|mult|multi4|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst1|unidad_aritmetica|suma|Yop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop\(4) = \s2~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datac => \B[4]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop\(4));

-- Location: LCCOMB_X25_Y21_N22
\inst1|unidad_aritmetica|suma|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|s3|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|Yop\(4) $ (\inst1|unidad_aritmetica|suma|Xop\(4) $ (\inst1|unidad_aritmetica|suma|s3|Cout2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s3|Cout~combout\,
	datab => \inst1|unidad_aritmetica|suma|Yop\(4),
	datac => \inst1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst1|unidad_aritmetica|suma|s3|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\);

-- Location: FF_X25_Y20_N5
\inst1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(4));

-- Location: FF_X25_Y20_N25
\inst1|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X25_Y20_N24
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & \inst1|barrel_shifters|salShifters\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(4),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y21_N20
\inst1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|Mux8~0_combout\ & (((\inst1|Mux8~1_combout\)))) # (!\inst1|Mux8~0_combout\ & ((\inst1|Mux8~1_combout\ & (\inst1|unidad_aritmetica|suma|s4|Suma~0_combout\)) # (!\inst1|Mux8~1_combout\ & ((\inst1|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datab => \inst1|Mux8~0_combout\,
	datac => \inst1|Mux5~0_combout\,
	datad => \inst1|Mux8~1_combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y19_N14
\inst1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~0_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[5]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add2~1\ = CARRY((\A[5]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X22_Y19_N16
\inst1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add2~1\)) # (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst1|unidad_aritmetica|divi|Add2~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst1|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add2~1\))))
-- \inst1|unidad_aritmetica|divi|Add2~3\ = CARRY((\B[1]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add2~1\) # (!\inst1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X22_Y19_N18
\inst1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~4_combout\ = ((\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add2~5\ = CARRY((\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~19_combout\ & !\inst1|unidad_aritmetica|divi|Add2~3\)) # (!\B[2]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~19_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X22_Y19_N20
\inst1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst1|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~5\)) # (!\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~5\))))
-- \inst1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~18_combout\ & (\B[3]~input_o\ & !\inst1|unidad_aritmetica|divi|Add2~5\)) # (!\inst1|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X22_Y19_N22
\inst1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst1|unidad_aritmetica|divi|Add1~17_combout\ $ (\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~17_combout\ & ((!\inst1|unidad_aritmetica|divi|Add2~7\) # (!\B[4]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add1~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X22_Y19_N24
\inst1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~10_combout\ = (\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add2~9\)) # (!\inst1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst1|unidad_aritmetica|divi|Add2~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~16_combout\ & (\inst1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add2~9\))))
-- \inst1|unidad_aritmetica|divi|Add2~11\ = CARRY((\B[5]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add2~9\) # (!\inst1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X22_Y19_N26
\inst1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~12_combout\ = \inst1|unidad_aritmetica|divi|Add1~15_combout\ $ (\inst1|unidad_aritmetica|divi|Add2~11\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => \B[6]~input_o\,
	cin => \inst1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X22_Y19_N8
\inst1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~15_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add2~10_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X22_Y19_N28
\inst1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add2~6_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add2~4_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~19_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\A[5]~input_o\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((\B[0]~input_o\ & !\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y19_N2
\inst1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y19_N4
\inst1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~19_combout\ & (\B[2]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan3~3_cout\)) # (!\inst1|unidad_aritmetica|divi|Add2~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y19_N6
\inst1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add2~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y19_N8
\inst1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan3~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add2~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add2~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y19_N10
\inst1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add2~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan3~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y19_N12
\inst1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan3~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add2~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y19_N14
\inst1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add2~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan3~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add2~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (\inst1|Mux5~1_combout\ & (((!\inst1|Mux8~0_combout\) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\)))) # (!\inst1|Mux5~1_combout\ & (\inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ & ((\inst1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	datab => \inst1|Mux5~1_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst1|Mux8~0_combout\,
	combout => \inst1|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~3_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(4))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_logica|salida\(4),
	datac => \inst1|Mux8~2_combout\,
	datad => \inst1|Mux5~2_combout\,
	combout => \inst1|Mux5~3_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~23_combout\ = (\B[3]~input_o\ & ((!\A[3]~input_o\) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_logica|salida~23_combout\);

-- Location: FF_X24_Y19_N21
\inst1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[3]~13_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(3));

-- Location: LCCOMB_X24_Y19_N20
\inst1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~22_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(3)) # (!\inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(3),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~22_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~24_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & (\A[3]~input_o\ $ (((\inst1|unidad_logica|salida~23_combout\) # (\inst1|unidad_logica|salida~22_combout\))))) # (!\inst1|unidad_logica|salida[8]~31_combout\ & 
-- ((\inst1|unidad_logica|salida~22_combout\) # ((\A[3]~input_o\ & \inst1|unidad_logica|salida~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \A[3]~input_o\,
	datac => \inst1|unidad_logica|salida~23_combout\,
	datad => \inst1|unidad_logica|salida~22_combout\,
	combout => \inst1|unidad_logica|salida~24_combout\);

-- Location: FF_X24_Y19_N19
\inst1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(3));

-- Location: FF_X29_Y19_N15
\inst1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(3));

-- Location: FF_X29_Y19_N7
\inst1|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X29_Y19_N6
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\sel[3]~input_o\) # ((\inst1|barrel_shifters|salShifters\(3) & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(3),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\inst1|unidad_aritmetica|mult|multi3|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|Mux8~1_combout\ & (((\inst1|Mux8~0_combout\)))) # (!\inst1|Mux8~1_combout\ & ((\inst1|Mux8~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\))) # (!\inst1|Mux8~0_combout\ & (\inst1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~0_combout\,
	datab => \inst1|Mux8~1_combout\,
	datac => \inst1|Mux8~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y18_N4
\inst1|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~0_combout\ = (\A[4]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[4]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add3~1\ = CARRY((\A[4]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X25_Y18_N6
\inst1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add3~1\)) # (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~20_combout\ & (\inst1|unidad_aritmetica|divi|Add3~1\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add3~1\))))
-- \inst1|unidad_aritmetica|divi|Add3~3\ = CARRY((\B[1]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add3~1\) # (!\inst1|unidad_aritmetica|divi|Add2~20_combout\))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X25_Y18_N8
\inst1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~4_combout\ = ((\inst1|unidad_aritmetica|divi|Add2~19_combout\ $ (\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~19_combout\ & ((!\inst1|unidad_aritmetica|divi|Add3~3\) # (!\B[2]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add2~19_combout\ & (!\B[2]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X25_Y18_N10
\inst1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst1|unidad_aritmetica|divi|Add2~18_combout\ & ((\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~5\)) # (!\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~5\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~18_combout\ & ((\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~5\))))
-- \inst1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~18_combout\ & (\B[3]~input_o\ & !\inst1|unidad_aritmetica|divi|Add3~5\)) # (!\inst1|unidad_aritmetica|divi|Add2~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X25_Y18_N12
\inst1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~8_combout\ = ((\inst1|unidad_aritmetica|divi|Add2~17_combout\ $ (\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~17_combout\ & ((!\inst1|unidad_aritmetica|divi|Add3~7\) # (!\B[4]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add2~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst1|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X25_Y18_N14
\inst1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~10_combout\ = (\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add3~9\)) # (!\inst1|unidad_aritmetica|divi|Add2~16_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~16_combout\ & (\inst1|unidad_aritmetica|divi|Add3~9\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add2~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add3~9\))))
-- \inst1|unidad_aritmetica|divi|Add3~11\ = CARRY((\B[5]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add3~9\) # (!\inst1|unidad_aritmetica|divi|Add2~16_combout\))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~16_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst1|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X25_Y18_N16
\inst1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~12_combout\ = \inst1|unidad_aritmetica|divi|Add2~15_combout\ $ (\inst1|unidad_aritmetica|divi|Add3~11\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~15_combout\,
	datad => \B[6]~input_o\,
	cin => \inst1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst1|unidad_aritmetica|divi|Add3~12_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add3~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~14_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst1|unidad_aritmetica|divi|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add2~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add3~10_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~16_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~15_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~17_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst1|unidad_aritmetica|divi|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~18_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~6_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~17_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add3~4_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~20_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add2~20_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\A[4]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~0_combout\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add3~20_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst1|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((!\A[3]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X26_Y18_N2
\inst1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X26_Y18_N4
\inst1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~3_cout\) # (!\inst1|unidad_aritmetica|divi|Add3~19_combout\))) # (!\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~19_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X26_Y18_N6
\inst1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan4~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X26_Y18_N8
\inst1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add3~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X26_Y18_N10
\inst1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~16_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~9_cout\) # (!\B[5]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X26_Y18_N12
\inst1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~11_cout\) # (!\inst1|unidad_aritmetica|divi|Add3~15_combout\))) # (!\B[6]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~15_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~15_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X26_Y18_N14
\inst1|unidad_aritmetica|divi|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan4~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add3~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan4~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add3~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst1|unidad_aritmetica|suma|Yop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop\(3) = \s2~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s2~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop\(3));

-- Location: LCCOMB_X29_Y19_N12
\inst1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst1|unidad_aritmetica|suma|Xop\(3) $ (\inst1|unidad_aritmetica|suma|Yop\(3) $ (\inst1|unidad_aritmetica|suma|s2|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|s2|Cout2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst1|unidad_aritmetica|suma|Yop\(3),
	datac => \inst1|unidad_aritmetica|suma|s2|Cout~combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = (\inst1|Mux6~1_combout\ & (((!\inst1|Mux8~1_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\))) # (!\inst1|Mux6~1_combout\ & (((\inst1|Mux8~1_combout\ & \inst1|unidad_aritmetica|suma|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~1_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|s3|Suma~combout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~3_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(3))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida\(3),
	datab => \inst1|Mux8~2_combout\,
	datad => \inst1|Mux6~2_combout\,
	combout => \inst1|Mux6~3_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~25_combout\ = (\inst1|Mux10~0_combout\ & (((!\inst1|Mux11~0_combout\)))) # (!\inst1|Mux10~0_combout\ & ((\B[2]~input_o\ & ((\A[2]~input_o\) # (\inst1|Mux11~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~25_combout\);

-- Location: FF_X25_Y19_N21
\inst1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[2]~11_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(2));

-- Location: LCCOMB_X25_Y19_N30
\inst1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~26_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|salida~25_combout\ & (!\A[2]~input_o\)) # (!\inst1|unidad_logica|salida~25_combout\ & ((\inst1|unidad_logica|aux\(2)))))) # (!\inst1|Mux10~0_combout\ & 
-- (\inst1|unidad_logica|salida~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \inst1|unidad_logica|salida~25_combout\,
	datac => \A[2]~input_o\,
	datad => \inst1|unidad_logica|aux\(2),
	combout => \inst1|unidad_logica|salida~26_combout\);

-- Location: FF_X25_Y19_N31
\inst1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(2));

-- Location: LCCOMB_X28_Y17_N22
\inst1|unidad_aritmetica|mult|multi2|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ = \inst1|unidad_logica|salida~4_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(2) $ (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~4_combout\,
	datab => \inst1|unidad_aritmetica|mult|inter\(2),
	datac => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|inter\(10),
	combout => \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst1|barrel_shifters|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[2]~feeder_combout\ = \A[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[1]~input_o\,
	combout => \inst1|barrel_shifters|aux[2]~feeder_combout\);

-- Location: FF_X29_Y19_N27
\inst1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(2));

-- Location: FF_X29_Y19_N3
\inst1|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X29_Y19_N2
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\sel[3]~input_o\) # ((\inst1|barrel_shifters|salShifters\(2) & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(2),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst1|unidad_aritmetica|suma|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Suma~0_combout\ = \s1~input_o\ $ (\s2~input_o\ $ (\B[2]~input_o\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \s2~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s2|Suma~0_combout\);

-- Location: LCCOMB_X28_Y19_N18
\inst1|unidad_aritmetica|suma|s2|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Suma~1_combout\ = \inst1|unidad_aritmetica|suma|s2|Suma~0_combout\ $ (\inst1|unidad_aritmetica|suma|s1|Cout2~combout\ $ (((\inst1|unidad_aritmetica|suma|s1|Cout~1_combout\) # 
-- (\inst1|unidad_aritmetica|suma|s1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datab => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s2|Suma~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s1|Cout2~combout\,
	combout => \inst1|unidad_aritmetica|suma|s2|Suma~1_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst1|Mux8~0_combout\ & (((\inst1|Mux8~1_combout\)))) # (!\inst1|Mux8~0_combout\ & ((\inst1|Mux8~1_combout\ & ((\inst1|unidad_aritmetica|suma|s2|Suma~1_combout\))) # (!\inst1|Mux8~1_combout\ & (\inst1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datab => \inst1|Mux7~0_combout\,
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Suma~1_combout\,
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~0_combout\ = (\A[3]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[3]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add4~1\ = CARRY((\A[3]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X26_Y18_N20
\inst1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst1|unidad_aritmetica|divi|Add3~20_combout\ & ((\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~1\)) # (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~1\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & ((\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~1\))))
-- \inst1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~20_combout\ & (\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|Add4~1\)) # (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & ((\B[1]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X26_Y18_N22
\inst1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~4_combout\ = ((\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~19_combout\ $ (\inst1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add4~5\ = CARRY((\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~19_combout\ & !\inst1|unidad_aritmetica|divi|Add4~3\)) # (!\B[2]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~19_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X26_Y18_N24
\inst1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~6_combout\ = (\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~18_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~5\)) # (!\inst1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~18_combout\ & (\inst1|unidad_aritmetica|divi|Add4~5\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add3~18_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~5\))))
-- \inst1|unidad_aritmetica|divi|Add4~7\ = CARRY((\B[3]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add4~5\) # (!\inst1|unidad_aritmetica|divi|Add3~18_combout\))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~18_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X26_Y18_N26
\inst1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~8_combout\ = ((\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~17_combout\ $ (\inst1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add4~9\ = CARRY((\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~17_combout\ & !\inst1|unidad_aritmetica|divi|Add4~7\)) # (!\B[4]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~17_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst1|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X26_Y18_N28
\inst1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~10_combout\ = (\inst1|unidad_aritmetica|divi|Add3~16_combout\ & ((\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~9\)) # (!\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~9\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & ((\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~9\))))
-- \inst1|unidad_aritmetica|divi|Add4~11\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~16_combout\ & (\B[5]~input_o\ & !\inst1|unidad_aritmetica|divi|Add4~9\)) # (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & ((\B[5]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst1|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X26_Y18_N30
\inst1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~15_combout\ $ (\inst1|unidad_aritmetica|divi|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add4~11\,
	combout => \inst1|unidad_aritmetica|divi|Add4~12_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~15_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add4~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~15_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~14_combout\);

-- Location: LCCOMB_X28_Y18_N2
\inst1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add4~10_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~16_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~15_combout\);

-- Location: LCCOMB_X28_Y18_N8
\inst1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~17_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add4~8_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~16_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~18_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add4~6_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~4_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~19_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~18_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~2_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\A[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add4~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add4~20_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst1|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~1_cout\ = CARRY((!\A[2]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~1_cout\);

-- Location: LCCOMB_X28_Y18_N12
\inst1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add4~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X28_Y18_N14
\inst1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~3_cout\) # (!\inst1|unidad_aritmetica|divi|Add4~19_combout\))) # (!\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~19_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X28_Y18_N16
\inst1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan5~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X28_Y18_N18
\inst1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~17_combout\ & (\B[4]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan5~7_cout\)) # (!\inst1|unidad_aritmetica|divi|Add4~17_combout\ & ((\B[4]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X28_Y18_N20
\inst1|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan5~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X28_Y18_N22
\inst1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~11_cout\) # (!\inst1|unidad_aritmetica|divi|Add4~15_combout\))) # (!\B[6]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~15_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X28_Y18_N24
\inst1|unidad_aritmetica|divi|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan5~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add4~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan5~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add4~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\inst1|Mux8~0_combout\ & ((\inst1|Mux7~1_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\))) # (!\inst1|Mux7~1_combout\ & (\inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\)))) # (!\inst1|Mux8~0_combout\ & 
-- (((\inst1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datab => \inst1|Mux8~0_combout\,
	datac => \inst1|Mux7~1_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(2))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida\(2),
	datab => \inst1|Mux7~2_combout\,
	datac => \inst1|Mux8~2_combout\,
	combout => \inst1|Mux7~3_combout\);

-- Location: FF_X28_Y19_N17
\inst1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[1]~9_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(1));

-- Location: LCCOMB_X28_Y19_N16
\inst1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~27_combout\ = (\inst1|Mux10~0_combout\ & (((\inst1|unidad_logica|aux\(1)) # (!\inst1|Mux11~0_combout\)))) # (!\inst1|Mux10~0_combout\ & (\inst1|unidad_logica|salida~4_combout\ & ((!\inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~4_combout\,
	datab => \inst1|Mux10~0_combout\,
	datac => \inst1|unidad_logica|aux\(1),
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|unidad_logica|salida~27_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~28_combout\ = (\inst1|unidad_logica|salida[8]~31_combout\ & ((\A[1]~input_o\ & ((!\inst1|unidad_logica|salida~27_combout\))) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (\inst1|unidad_logica|salida~27_combout\))))) # 
-- (!\inst1|unidad_logica|salida[8]~31_combout\ & (((\inst1|unidad_logica|salida~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[8]~31_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_logica|salida~27_combout\,
	combout => \inst1|unidad_logica|salida~28_combout\);

-- Location: FF_X28_Y19_N21
\inst1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(1));

-- Location: LCCOMB_X28_Y19_N22
\inst1|unidad_aritmetica|suma|Yop[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop[1]~0_combout\ = \s2~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s2~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop[1]~0_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst1|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Suma~combout\ = \inst1|unidad_aritmetica|suma|Xop\(1) $ (\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Yop[1]~0_combout\ $ (\inst1|unidad_aritmetica|suma|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop[1]~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: FF_X29_Y19_N9
\inst1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(1));

-- Location: FF_X29_Y19_N5
\inst1|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X29_Y19_N4
\inst1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~3_combout\ = (\sel[3]~input_o\) # ((\inst1|barrel_shifters|salShifters\(1) & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(1),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux8~3_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst1|unidad_aritmetica|mult|multi1|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\ & \A[0]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~4_combout\ = (\inst1|Mux8~0_combout\ & ((\inst1|Mux8~1_combout\) # ((\inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\)))) # (!\inst1|Mux8~0_combout\ & (!\inst1|Mux8~1_combout\ & (\inst1|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datab => \inst1|Mux8~1_combout\,
	datac => \inst1|Mux8~3_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	combout => \inst1|Mux8~4_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst1|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~0_combout\ = (\B[0]~input_o\ & (\A[2]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[2]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add5~1\ = CARRY((\A[2]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X29_Y18_N14
\inst1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add5~1\)) # (!\inst1|unidad_aritmetica|divi|Add4~20_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~20_combout\ & (\inst1|unidad_aritmetica|divi|Add5~1\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add4~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add5~1\))))
-- \inst1|unidad_aritmetica|divi|Add5~3\ = CARRY((\B[1]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add5~1\) # (!\inst1|unidad_aritmetica|divi|Add4~20_combout\))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X29_Y18_N16
\inst1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~4_combout\ = ((\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add4~19_combout\ $ (\inst1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add5~5\ = CARRY((\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~19_combout\ & !\inst1|unidad_aritmetica|divi|Add5~3\)) # (!\B[2]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~19_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X29_Y18_N18
\inst1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst1|unidad_aritmetica|divi|Add4~18_combout\ & ((\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~5\)) # (!\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~5\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~18_combout\ & ((\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~5\))))
-- \inst1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~18_combout\ & (\B[3]~input_o\ & !\inst1|unidad_aritmetica|divi|Add5~5\)) # (!\inst1|unidad_aritmetica|divi|Add4~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X29_Y18_N20
\inst1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst1|unidad_aritmetica|divi|Add4~17_combout\ $ (\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~17_combout\ & ((!\inst1|unidad_aritmetica|divi|Add5~7\) # (!\B[4]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add4~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X29_Y18_N22
\inst1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst1|unidad_aritmetica|divi|Add4~16_combout\ & ((\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~9\)) # (!\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~9\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add4~16_combout\ & ((\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~9\))))
-- \inst1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~16_combout\ & (\B[5]~input_o\ & !\inst1|unidad_aritmetica|divi|Add5~9\)) # (!\inst1|unidad_aritmetica|divi|Add4~16_combout\ & ((\B[5]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X29_Y18_N24
\inst1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~11\ $ (\inst1|unidad_aritmetica|divi|Add4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~12_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add5~10_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add4~16_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add5~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~6_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~17_combout\);

-- Location: LCCOMB_X28_Y18_N30
\inst1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~4_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst1|unidad_aritmetica|divi|Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~20_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add4~20_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add5~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~19_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\A[2]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add5~20_combout\);

-- Location: LCCOMB_X26_Y19_N16
\inst1|unidad_aritmetica|divi|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~1_cout\ = CARRY((\B[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~1_cout\);

-- Location: LCCOMB_X26_Y19_N18
\inst1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add5~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X26_Y19_N20
\inst1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~19_combout\ & (\B[2]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan6~3_cout\)) # (!\inst1|unidad_aritmetica|divi|Add5~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X26_Y19_N22
\inst1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan6~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X26_Y19_N24
\inst1|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add5~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X26_Y19_N26
\inst1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan6~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X26_Y19_N28
\inst1|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan6~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add5~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X26_Y19_N30
\inst1|unidad_aritmetica|divi|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan6~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add5~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan6~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add5~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~5_combout\ = (\inst1|Mux8~1_combout\ & ((\inst1|Mux8~4_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\))) # (!\inst1|Mux8~4_combout\ & (\inst1|unidad_aritmetica|suma|s1|Suma~combout\)))) # (!\inst1|Mux8~1_combout\ & 
-- (((\inst1|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~1_combout\,
	datab => \inst1|unidad_aritmetica|suma|s1|Suma~combout\,
	datac => \inst1|Mux8~4_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst1|Mux8~5_combout\);

-- Location: LCCOMB_X29_Y18_N10
\inst1|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~6_combout\ = (\inst1|Mux8~2_combout\ & (\inst1|unidad_logica|salida\(1))) # (!\inst1|Mux8~2_combout\ & ((\inst1|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_logica|salida\(1),
	datac => \inst1|Mux8~2_combout\,
	datad => \inst1|Mux8~5_combout\,
	combout => \inst1|Mux8~6_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~3_combout\ = (\sel[3]~input_o\ & ((\sel[2]~input_o\) # ((\sel[1]~input_o\ & \sel[0]~input_o\)))) # (!\sel[3]~input_o\ & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux9~3_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst1|unidad_aritmetica|divi|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~0_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[1]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add6~1\ = CARRY((\A[1]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add6~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~1\);

-- Location: LCCOMB_X28_Y20_N4
\inst1|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst1|unidad_aritmetica|divi|Add5~20_combout\ & ((\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~1\)) # (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add6~1\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~20_combout\ & ((\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add6~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~1\))))
-- \inst1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~20_combout\ & (\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|Add6~1\)) # (!\inst1|unidad_aritmetica|divi|Add5~20_combout\ & ((\B[1]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X28_Y20_N6
\inst1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~4_combout\ = ((\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~19_combout\ $ (\inst1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add6~5\ = CARRY((\B[2]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~19_combout\ & !\inst1|unidad_aritmetica|divi|Add6~3\)) # (!\B[2]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~19_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X28_Y20_N8
\inst1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst1|unidad_aritmetica|divi|Add5~18_combout\ & ((\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~5\)) # (!\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add6~5\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~18_combout\ & ((\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add6~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~5\))))
-- \inst1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~18_combout\ & (\B[3]~input_o\ & !\inst1|unidad_aritmetica|divi|Add6~5\)) # (!\inst1|unidad_aritmetica|divi|Add5~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X28_Y20_N10
\inst1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~8_combout\ = ((\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~17_combout\ $ (\inst1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add6~9\ = CARRY((\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~17_combout\ & !\inst1|unidad_aritmetica|divi|Add6~7\)) # (!\B[4]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~17_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X28_Y20_N12
\inst1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~10_combout\ = (\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add6~9\)) # (!\inst1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst1|unidad_aritmetica|divi|Add6~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~16_combout\ & (\inst1|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add6~9\))))
-- \inst1|unidad_aritmetica|divi|Add6~11\ = CARRY((\B[5]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add6~9\) # (!\inst1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X28_Y20_N14
\inst1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~15_combout\ $ (\inst1|unidad_aritmetica|divi|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst1|unidad_aritmetica|divi|Add5~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add5~15_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add6~12_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~14_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst1|unidad_aritmetica|divi|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst1|unidad_aritmetica|divi|Add5~16_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add6~10_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~15_combout\);

-- Location: LCCOMB_X28_Y20_N22
\inst1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~17_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~8_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add5~17_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~16_combout\);

-- Location: LCCOMB_X28_Y20_N24
\inst1|unidad_aritmetica|divi|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~18_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add6~6_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~18_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~17_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~4_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~19_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~18_combout\);

-- Location: LCCOMB_X28_Y20_N20
\inst1|unidad_aritmetica|divi|Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~19_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst1|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\A[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst1|unidad_aritmetica|divi|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add6~0_combout\,
	datac => \A[1]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add6~20_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst1|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~1_cout\);

-- Location: LCCOMB_X26_Y20_N12
\inst1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add6~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan7~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add6~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X26_Y20_N14
\inst1|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~5_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add6~19_combout\ & (\B[2]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan7~3_cout\)) # (!\inst1|unidad_aritmetica|divi|Add6~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~5_cout\);

-- Location: LCCOMB_X26_Y20_N16
\inst1|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add6~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan7~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add6~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add6~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~7_cout\);

-- Location: LCCOMB_X26_Y20_N18
\inst1|unidad_aritmetica|divi|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan7~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add6~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add6~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~9_cout\);

-- Location: LCCOMB_X26_Y20_N20
\inst1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add6~16_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan7~9_cout\) # (!\B[5]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add6~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X26_Y20_N22
\inst1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan7~11_cout\) # (!\inst1|unidad_aritmetica|divi|Add6~15_combout\))) # (!\B[6]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add6~15_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add6~15_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X26_Y20_N24
\inst1|unidad_aritmetica|divi|LessThan7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan7~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add6~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan7~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add6~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan7~14_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (!\inst1|Mux10~0_combout\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & !\inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = (\inst1|Mux11~0_combout\ & ((\inst1|Mux10~0_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan7~14_combout\)) # (!\inst1|Mux10~0_combout\ & ((\inst1|Mux9~0_combout\))))) # (!\inst1|Mux11~0_combout\ & (((\inst1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan7~14_combout\,
	datac => \inst1|Mux9~0_combout\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|Mux9~1_combout\);

-- Location: LCCOMB_X25_Y20_N16
\inst1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~2_combout\ = (\sel[3]~input_o\) # ((\sel[1]~input_o\ & (\sel[0]~input_o\ & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux9~2_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst1|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~29_combout\ = (\inst1|Mux11~0_combout\ & (!\inst1|Mux10~0_combout\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))) # (!\inst1|Mux11~0_combout\ & ((\inst1|Mux10~0_combout\) # ((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst1|Mux11~0_combout\,
	datac => \B[0]~input_o\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|salida~29_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst1|unidad_logica|aux[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[0]~27_combout\ = (\inst1|Mux11~0_combout\ & ((\inst1|Mux10~0_combout\ & (\A[0]~input_o\)) # (!\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|aux\(0)))))) # (!\inst1|Mux11~0_combout\ & (((\inst1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst1|Mux11~0_combout\,
	datac => \inst1|unidad_logica|aux\(0),
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|unidad_logica|aux[0]~27_combout\);

-- Location: FF_X26_Y20_N1
\inst1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(0));

-- Location: LCCOMB_X26_Y20_N28
\inst1|unidad_logica|salida~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~30_combout\ = (\inst1|Mux10~0_combout\ & ((\inst1|unidad_logica|salida~29_combout\ & (!\A[0]~input_o\)) # (!\inst1|unidad_logica|salida~29_combout\ & ((\inst1|unidad_logica|aux\(0)))))) # (!\inst1|Mux10~0_combout\ & 
-- (\inst1|unidad_logica|salida~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux10~0_combout\,
	datab => \inst1|unidad_logica|salida~29_combout\,
	datac => \A[0]~input_o\,
	datad => \inst1|unidad_logica|aux\(0),
	combout => \inst1|unidad_logica|salida~30_combout\);

-- Location: FF_X26_Y20_N29
\inst1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(0));

-- Location: LCCOMB_X26_Y20_N6
\inst1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~4_combout\ = (\inst1|Mux9~3_combout\ & (((\inst1|Mux9~2_combout\) # (\inst1|unidad_logica|salida\(0))))) # (!\inst1|Mux9~3_combout\ & (\inst1|Mux9~1_combout\ & (\inst1|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux9~3_combout\,
	datab => \inst1|Mux9~1_combout\,
	datac => \inst1|Mux9~2_combout\,
	datad => \inst1|unidad_logica|salida\(0),
	combout => \inst1|Mux9~4_combout\);

-- Location: IOIBUF_X21_Y0_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_ZF <= \ZF~output_o\;

ww_SF <= \SF~output_o\;

ww_OVF <= \OVF~output_o\;

ww_CF <= \CF~output_o\;

ww_R(9) <= \R[9]~output_o\;

ww_R(8) <= \R[8]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(0) <= \R[0]~output_o\;
END structure;


