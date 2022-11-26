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

-- DATE "11/25/2022 23:07:26"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
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

ENTITY 	practica3 IS
    PORT (
	z_flag : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	s_flag : OUT std_logic;
	ov_flag : OUT std_logic;
	c_flag : OUT std_logic;
	R : OUT std_logic_vector(15 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- z_flag	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_flag	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov_flag	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_flag	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_z_flag : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_flag : std_logic;
SIGNAL ww_ov_flag : std_logic;
SIGNAL ww_c_flag : std_logic;
SIGNAL ww_R : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \z_flag~output_o\ : std_logic;
SIGNAL \s_flag~output_o\ : std_logic;
SIGNAL \ov_flag~output_o\ : std_logic;
SIGNAL \c_flag~output_o\ : std_logic;
SIGNAL \R[15]~output_o\ : std_logic;
SIGNAL \R[14]~output_o\ : std_logic;
SIGNAL \R[13]~output_o\ : std_logic;
SIGNAL \R[12]~output_o\ : std_logic;
SIGNAL \R[11]~output_o\ : std_logic;
SIGNAL \R[10]~output_o\ : std_logic;
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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~15_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~11_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~13_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~11_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~9_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~3_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Yop~13_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~9_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux17~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux19~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux19~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|Ovfaux~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux18~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux18~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux18~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux16~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux16~1_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[15]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida[13]~52_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[1]~16\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~18\ : std_logic;
SIGNAL \inst|unidad_logica|aux[3]~20\ : std_logic;
SIGNAL \inst|unidad_logica|aux[4]~22\ : std_logic;
SIGNAL \inst|unidad_logica|aux[5]~24\ : std_logic;
SIGNAL \inst|unidad_logica|aux[6]~26\ : std_logic;
SIGNAL \inst|unidad_logica|aux[7]~28\ : std_logic;
SIGNAL \inst|unidad_logica|aux[8]~30\ : std_logic;
SIGNAL \inst|unidad_logica|aux[9]~32\ : std_logic;
SIGNAL \inst|unidad_logica|aux[10]~34\ : std_logic;
SIGNAL \inst|unidad_logica|aux[11]~36\ : std_logic;
SIGNAL \inst|unidad_logica|aux[12]~38\ : std_logic;
SIGNAL \inst|unidad_logica|aux[13]~40\ : std_logic;
SIGNAL \inst|unidad_logica|aux[14]~42\ : std_logic;
SIGNAL \inst|unidad_logica|aux[15]~43_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[14]~41_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[14]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~60\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\ : std_logic;
SIGNAL \inst|Mux7~12_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[14]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[13]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[13]~39_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[12]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[12]~37_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[11]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[11]~35_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[10]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[10]~33_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[9]~31_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[8]~29_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|Mux7~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Mux7~7_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[8]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux7~9_combout\ : std_logic;
SIGNAL \inst|Mux7~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|Sfaux~1_combout\ : std_logic;
SIGNAL \inst|Mux7~11_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[7]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~30_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[7]~27_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~31_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~32_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~28_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~34_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~33_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[6]~25_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~35_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst|Mux9~3_combout\ : std_logic;
SIGNAL \inst|Mux9~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~27\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~29\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~31\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~33\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~35\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~37\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~39\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~41\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~43\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~45\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~47\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~49\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~50_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~54_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~48_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~55_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~46_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~56_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~44_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~57_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~42_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~58_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~59_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~60_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~61_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~62_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~63_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~64_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~65_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~52_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~53_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~28_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[5]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~36_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~37_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[5]~23_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~38_combout\ : std_logic;
SIGNAL \inst|Mux10~2_combout\ : std_logic;
SIGNAL \inst|Mux10~3_combout\ : std_logic;
SIGNAL \inst|Mux10~4_combout\ : std_logic;
SIGNAL \inst|Mux11~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~28_combout\ : std_logic;
SIGNAL \inst|Mux11~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~39_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~40_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[4]~21_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~41_combout\ : std_logic;
SIGNAL \inst|Mux11~4_combout\ : std_logic;
SIGNAL \inst|Mux11~5_combout\ : std_logic;
SIGNAL \inst|Mux11~6_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add3~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan4~28_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~42_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~43_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[3]~19_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~44_combout\ : std_logic;
SIGNAL \inst|Mux12~2_combout\ : std_logic;
SIGNAL \inst|Mux12~3_combout\ : std_logic;
SIGNAL \inst|Mux12~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~46_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~45_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~17_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~47_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux13~2_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add4~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan5~28_combout\ : std_logic;
SIGNAL \inst|Mux13~1_combout\ : std_logic;
SIGNAL \inst|Mux13~3_combout\ : std_logic;
SIGNAL \inst|Mux13~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add5~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan6~28_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~48_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[1]~15_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~49_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux14~2_combout\ : std_logic;
SIGNAL \inst|Mux14~3_combout\ : std_logic;
SIGNAL \inst|Mux14~4_combout\ : std_logic;
SIGNAL \inst|Mux15~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~50_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[0]~45_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~51_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux15~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux15~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux15~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux15~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~13\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~15\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~17\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~19\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~21\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~23\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~25\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~26_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~24_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~29_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~22_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~30_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~31_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~32_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~33_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~34_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~35_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~36_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~37_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~38_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~39_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~40_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add6~41_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~15_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~17_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~19_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~21_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~23_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~25_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~27_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan7~28_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux15~4_combout\ : std_logic;
SIGNAL \inst|Mux15~2_combout\ : std_logic;
SIGNAL \inst|Mux15~4_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|unidad_logica|aux\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|unidad_aritmetica|suma|Xop\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|barrel_shifters|salShifters\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|unidad_logica|salida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|unidad_aritmetica|mult|inter\ : std_logic_vector(63 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

z_flag <= ww_z_flag;
ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
s_flag <= ww_s_flag;
ov_flag <= ww_ov_flag;
c_flag <= ww_c_flag;
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

-- Location: IOOBUF_X13_Y24_N16
\z_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux17~16_combout\,
	devoe => ww_devoe,
	o => \z_flag~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\s_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \s_flag~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ov_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux18~2_combout\,
	devoe => ww_devoe,
	o => \ov_flag~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\c_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \c_flag~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \R[15]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \R[14]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \R[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \R[12]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \R[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \R[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~10_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux11~6_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux14~4_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOIBUF_X34_Y9_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X25_Y10_N20
\inst|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(4) = (\B[0]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(4));

-- Location: IOIBUF_X23_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X26_Y9_N8
\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\inst|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(2) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X26_Y9_N30
\inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(2)) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|inter\(2),
	combout => \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y9_N24
\inst|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(3) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X26_Y9_N12
\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(3)) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ & (\B[1]~input_o\ & (\A[2]~input_o\ & \inst|unidad_aritmetica|mult|inter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|inter\(3),
	combout => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|inter\(4) $ (\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|mult|inter\(4),
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y9_N14
\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(3) $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|inter\(3),
	combout => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y9_N26
\inst|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~5_combout\ = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X26_Y9_N28
\inst|unidad_aritmetica|mult|inter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(16) = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(16));

-- Location: LCCOMB_X26_Y9_N20
\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|inter\(16) & (\inst|unidad_logica|salida~5_combout\ $ (\inst|unidad_aritmetica|mult|inter\(2) $ (\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~5_combout\,
	datab => \inst|unidad_aritmetica|mult|inter\(2),
	datac => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|inter\(16),
	combout => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y9_N10
\inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ & (\B[2]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y9_N2
\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datac => \A[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\);

-- Location: IOIBUF_X34_Y9_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X26_Y9_N4
\inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ = (\A[0]~input_o\ & (\B[3]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y9_N16
\inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N2
\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ = (\A[0]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y9_N6
\inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\) # ((\B[3]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & (\B[3]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X25_Y10_N30
\inst|unidad_aritmetica|mult|inter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(5) = (\B[0]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(5));

-- Location: LCCOMB_X26_Y9_N22
\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|inter\(4) & ((\inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\) # ((\B[1]~input_o\ & \A[3]~input_o\)))) # (!\inst|unidad_aritmetica|mult|inter\(4) & 
-- (\B[1]~input_o\ & (\A[3]~input_o\ & \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|mult|inter\(4),
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N28
\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|inter\(5) $ (\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|inter\(5),
	datab => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y9_N0
\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & (\B[2]~input_o\ & (\A[2]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datac => \A[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N24
\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N18
\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N22
\inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ = (\A[0]~input_o\ & (\B[5]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y9_N12
\inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\) # ((\B[4]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & (\B[4]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N10
\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|inter\(5) & ((\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\) # ((\A[4]~input_o\ & \B[1]~input_o\)))) # (!\inst|unidad_aritmetica|mult|inter\(5) & 
-- (\inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ & (\A[4]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|inter\(5),
	datab => \inst|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X25_Y10_N8
\inst|unidad_aritmetica|mult|inter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(6) = (\A[6]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(6));

-- Location: LCCOMB_X25_Y10_N14
\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(6) $ (((\B[1]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \inst|unidad_aritmetica|mult|inter\(6),
	datad => \A[5]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y10_N18
\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & (\B[2]~input_o\ & (\A[3]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N0
\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\) # ((\B[3]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ & (\B[3]~input_o\ & (\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N16
\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ $ (((\A[2]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ $ (((\B[5]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N10
\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\);

-- Location: IOIBUF_X34_Y3_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X23_Y11_N26
\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ = (\A[0]~input_o\ & (\B[6]~input_o\ & \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N22
\inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\) # ((\B[5]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ & (\B[5]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N4
\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(6)) # ((\B[1]~input_o\ & \A[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ & (\B[1]~input_o\ & (\inst|unidad_aritmetica|mult|inter\(6) & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \inst|unidad_aritmetica|mult|inter\(6),
	datad => \A[5]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\);

-- Location: IOIBUF_X34_Y9_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X28_Y10_N28
\inst|unidad_aritmetica|mult|inter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(7) = (\B[0]~input_o\ & \A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(7));

-- Location: LCCOMB_X28_Y10_N30
\inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(7) $ (((\B[1]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|inter\(7),
	combout => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ & (\B[2]~input_o\ & (\A[4]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N6
\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y10_N26
\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ & (\B[3]~input_o\ & (\A[3]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y10_N2
\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\) # ((\A[2]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ & (\A[2]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ $ (((\B[4]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ $ (((\B[5]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ $ (((\B[6]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\,
	datab => \B[6]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\inst|unidad_aritmetica|Mux17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~15_combout\ = (!\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ & 
-- !\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~15_combout\);

-- Location: LCCOMB_X25_Y10_N16
\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\) # ((\A[4]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & (\A[4]~input_o\ & (\inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N24
\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ & (\B[2]~input_o\ & (\A[5]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N18
\inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(7)) # ((\B[1]~input_o\ & \A[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ & (\B[1]~input_o\ & (\A[6]~input_o\ & \inst|unidad_aritmetica|mult|inter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|inter\(7),
	combout => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N12
\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ $ (((\A[7]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y10_N20
\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ $ (((\A[6]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ $ (((\B[3]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\) # ((\B[4]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ & (\B[4]~input_o\ & (\A[3]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N12
\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N16
\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\) # ((\B[3]~input_o\ & \A[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ & (\B[3]~input_o\ & (\A[5]~input_o\ & \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N8
\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ = (\A[7]~input_o\ & (\B[1]~input_o\ & \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N26
\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\) # ((\A[6]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ & (\A[6]~input_o\ & (\B[2]~input_o\ & \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N14
\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y10_N10
\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ $ (((\A[6]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y11_N14
\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\) # ((\A[5]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ & (\A[5]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N0
\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\) # ((\B[2]~input_o\ & \A[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ & (\B[2]~input_o\ & (\inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y10_N22
\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\) # ((\A[6]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ & (\A[6]~input_o\ & (\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N28
\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ $ (((\A[7]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\) # ((\A[6]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ & (\A[6]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\) # ((\A[7]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & (\A[7]~input_o\ & (\inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N8
\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ $ (((\A[7]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\) # ((\B[5]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ & (\B[5]~input_o\ & (\A[2]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\) # ((\A[3]~input_o\ & \B[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & (\A[3]~input_o\ & (\B[5]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ $ (((\A[5]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\) # ((\B[5]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ & (\B[5]~input_o\ & (\A[4]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N18
\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ $ (((\A[6]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\) # ((\B[5]~input_o\ & \A[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ & (\B[5]~input_o\ & (\A[5]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N16
\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ $ (((\A[6]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ $ (((\A[3]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\) # ((\B[6]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ & (\B[6]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\,
	datab => \B[6]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\) # ((\A[2]~input_o\ & \B[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & (\A[2]~input_o\ & (\B[6]~input_o\ & \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datac => \B[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ $ (((\B[5]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\) # ((\A[3]~input_o\ & \B[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ & (\A[3]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ $ (((\B[5]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\) # ((\A[4]~input_o\ & \B[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ & (\A[4]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ $ (((\A[5]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ $ (((\A[3]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datac => \B[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ = (\A[0]~input_o\ & (\B[7]~input_o\ & \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\) # ((\B[7]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ & (\B[7]~input_o\ & (\A[1]~input_o\ & \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\) # ((\A[2]~input_o\ & \B[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ & (\A[2]~input_o\ & (\B[7]~input_o\ & \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N8
\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ $ (((\A[4]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\) # ((\A[3]~input_o\ & \B[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ & (\A[3]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y9_N24
\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\inst|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~6_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_logica|salida~6_combout\);

-- Location: IOIBUF_X23_Y24_N8
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: LCCOMB_X26_Y16_N26
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (!\sel[0]~input_o\ & ((\sel[2]~input_o\ & ((!\sel[3]~input_o\))) # (!\sel[2]~input_o\ & ((\sel[1]~input_o\) # (\sel[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y9_N6
\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ = \inst|unidad_logica|salida~5_combout\ $ (\inst|unidad_aritmetica|mult|inter\(2) $ (\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~5_combout\,
	datab => \inst|unidad_aritmetica|mult|inter\(2),
	datac => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|inter\(16),
	combout => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\) # ((\A[6]~input_o\ & \B[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ & (\A[6]~input_o\ & (\B[5]~input_o\ & \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\) # ((\A[7]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ & (\A[7]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N26
\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ $ (((\A[7]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\) # ((\A[5]~input_o\ & \B[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ & (\A[5]~input_o\ & (\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ $ (((\B[6]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\) # ((\A[4]~input_o\ & \B[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ & (\A[4]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\) # ((\A[5]~input_o\ & \B[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ & (\A[5]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\) # ((\A[7]~input_o\ & \B[5]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ & (\A[7]~input_o\ & (\B[5]~input_o\ & \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ $ (((\B[6]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\) # ((\B[7]~input_o\ & \A[6]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ & (\B[7]~input_o\ & (\A[6]~input_o\ & \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\) # ((\B[6]~input_o\ & \A[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & (\B[6]~input_o\ & (\inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ $ (((\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ $ (((\A[3]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\ & \A[0]~input_o\))))) # (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\))))

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
	combout => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\sel[2]~input_o\) # (\sel[0]~input_o\ $ (!\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ $ (((\B[7]~input_o\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y13_N16
\inst|unidad_aritmetica|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~11_combout\ = (!\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ & (!\inst|Mux16~0_combout\ & !\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~11_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst|unidad_aritmetica|Mux17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~12_combout\ = (!\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & 
-- \inst|unidad_aritmetica|Mux17~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|Mux17~11_combout\,
	combout => \inst|unidad_aritmetica|Mux17~12_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ $ (((\A[5]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst|unidad_aritmetica|Mux17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~13_combout\ = (!\inst|unidad_logica|salida~6_combout\ & (!\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|Mux17~12_combout\ & !\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~6_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|unidad_aritmetica|Mux17~12_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~13_combout\);

-- Location: LCCOMB_X22_Y13_N18
\inst|unidad_aritmetica|Mux17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~14_combout\ = (!\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & 
-- \inst|unidad_aritmetica|Mux17~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|Mux17~13_combout\,
	combout => \inst|unidad_aritmetica|Mux17~14_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ $ (((\B[7]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	datac => \A[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X24_Y10_N10
\inst|unidad_aritmetica|suma|Yop~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~12_combout\ = \B[13]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~12_combout\);

-- Location: IOIBUF_X34_Y17_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X30_Y14_N12
\inst|unidad_aritmetica|suma|Xop[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(13) = \A[13]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(13));

-- Location: IOIBUF_X34_Y18_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X24_Y14_N12
\inst|unidad_aritmetica|suma|Xop[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(12) = \A[15]~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \A[12]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(12));

-- Location: IOIBUF_X34_Y2_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X26_Y14_N12
\inst|unidad_aritmetica|suma|Xop[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(11) = \A[15]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \A[11]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(11));

-- Location: IOIBUF_X23_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X26_Y11_N16
\inst|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(5) = \A[5]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(5));

-- Location: LCCOMB_X26_Y11_N14
\inst|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(4) = \A[15]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(4));

-- Location: LCCOMB_X30_Y13_N16
\inst|unidad_aritmetica|suma|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s0|Cout2~0_combout\ = (\B[15]~input_o\ & (!\A[0]~input_o\ & (!\B[0]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s0|Cout2~0_combout\);

-- Location: LCCOMB_X30_Y13_N22
\inst|unidad_aritmetica|suma|Xop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(1) = \A[1]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(1));

-- Location: LCCOMB_X30_Y13_N30
\inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|s0|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(1) & (\B[1]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(1),
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(2) = \A[15]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(2));

-- Location: LCCOMB_X29_Y11_N14
\inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(2) & (\B[15]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datab => \B[15]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(2),
	combout => \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\);

-- Location: LCCOMB_X29_Y11_N16
\inst|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(3) = \A[15]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X26_Y11_N24
\inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(3) & (\B[15]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datab => \B[15]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(3),
	combout => \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(4) & (\inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ & (\B[4]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\);

-- Location: LCCOMB_X26_Y12_N20
\inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(5) & (\inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ & (\B[5]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(5),
	datab => \B[5]~input_o\,
	datac => \B[15]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(6) = \A[6]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(6));

-- Location: LCCOMB_X26_Y12_N4
\inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(6) & (\B[6]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datac => \B[15]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\);

-- Location: LCCOMB_X25_Y12_N22
\inst|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(7) = \A[7]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X25_Y12_N18
\inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(7) & (\B[7]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datab => \B[7]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Xop\(7),
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X25_Y12_N0
\inst|unidad_aritmetica|suma|Xop[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(8) = \A[8]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(8));

-- Location: LCCOMB_X25_Y14_N6
\inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(8) & (\B[8]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(8),
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X25_Y14_N0
\inst|unidad_aritmetica|suma|Xop[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(9) = \A[15]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datad => \A[9]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(9));

-- Location: LCCOMB_X25_Y14_N2
\inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(9) & (\B[15]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datab => \B[15]~input_o\,
	datac => \B[9]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(9),
	combout => \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X26_Y14_N30
\inst|unidad_aritmetica|suma|Xop[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(10) = \A[10]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(10));

-- Location: LCCOMB_X30_Y13_N14
\inst|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\A[0]~input_o\ & ((\B[15]~input_o\) # ((\B[0]~input_o\)))) # (!\A[0]~input_o\ & ((\A[15]~input_o\) # ((\B[15]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst|unidad_aritmetica|suma|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(1)) # (\B[1]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|s0|Cout~0_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(1) & (\B[1]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(1),
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X30_Y13_N2
\inst|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~4_combout\ = (\B[15]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X30_Y13_N0
\inst|unidad_aritmetica|suma|sR:1:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\) # ((!\B[0]~input_o\ & (!\A[0]~input_o\ & \inst|unidad_logica|salida~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\,
	datad => \inst|unidad_logica|salida~4_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\);

-- Location: LCCOMB_X29_Y11_N12
\inst|unidad_aritmetica|suma|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(2) & ((\inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\) # (\B[15]~input_o\ $ (\B[2]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(2) & 
-- (\inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ & (\B[15]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(2),
	datab => \B[15]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X29_Y11_N6
\inst|unidad_aritmetica|suma|sR:2:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\);

-- Location: LCCOMB_X29_Y11_N8
\inst|unidad_aritmetica|suma|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(3)) # (\B[15]~input_o\ $ (\B[3]~input_o\)))) # (!\inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(3) & (\B[15]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	datab => \B[15]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(3),
	combout => \inst|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X29_Y11_N28
\inst|unidad_aritmetica|suma|sR:3:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst|unidad_aritmetica|suma|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(4) & ((\inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\) # (\B[4]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(4) & 
-- (\inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ & (\B[4]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N10
\inst|unidad_aritmetica|suma|sR:4:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\);

-- Location: LCCOMB_X26_Y12_N2
\inst|unidad_aritmetica|suma|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(5) & ((\inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\) # (\B[15]~input_o\ $ (\B[5]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(5) & 
-- (\inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ & (\B[15]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(5),
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y12_N12
\inst|unidad_aritmetica|suma|sR:5:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\);

-- Location: LCCOMB_X26_Y12_N22
\inst|unidad_aritmetica|suma|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(6)) # (\B[15]~input_o\ $ (\B[6]~input_o\)))) # (!\inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(6) & (\B[15]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	datab => \B[15]~input_o\,
	datac => \B[6]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst|unidad_aritmetica|suma|sR:6:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst|unidad_aritmetica|suma|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(7)) # (\B[7]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(7) & (\B[7]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	datab => \B[7]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Xop\(7),
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N4
\inst|unidad_aritmetica|suma|sR:7:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\) # (\inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\);

-- Location: LCCOMB_X25_Y12_N10
\inst|unidad_aritmetica|suma|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(8) & ((\inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\) # (\B[8]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(8) & 
-- (\inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ & (\B[8]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Xop\(8),
	datac => \inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y14_N26
\inst|unidad_aritmetica|suma|sR:8:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst|unidad_aritmetica|suma|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(9)) # (\B[15]~input_o\ $ (\B[9]~input_o\)))) # (!\inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(9) & (\B[15]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	datab => \B[15]~input_o\,
	datac => \B[9]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(9),
	combout => \inst|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst|unidad_aritmetica|suma|sR:9:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\);

-- Location: LCCOMB_X25_Y14_N20
\inst|unidad_aritmetica|suma|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(10) & ((\inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\) # (\B[10]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(10) & 
-- (\inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ & (\B[10]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Xop\(10),
	datad => \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y14_N18
\inst|unidad_aritmetica|suma|sR:10:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\) # (\inst|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst|unidad_aritmetica|suma|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(11) & ((\inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\) # (\B[15]~input_o\ $ (\B[11]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(11) & 
-- (\inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ & (\B[15]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(11),
	datab => \B[15]~input_o\,
	datac => \B[11]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y14_N24
\inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(10) & (\inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ & (\B[15]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(10),
	datab => \B[15]~input_o\,
	datac => \B[10]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\inst|unidad_aritmetica|suma|sR:11:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\) # (\inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\);

-- Location: LCCOMB_X24_Y14_N10
\inst|unidad_aritmetica|suma|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(12) & ((\inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\) # (\B[15]~input_o\ $ (\B[12]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(12) & 
-- (\inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ & (\B[15]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(12),
	datab => \B[15]~input_o\,
	datac => \B[12]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y14_N2
\inst|unidad_aritmetica|suma|Yop~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~10_combout\ = \B[11]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~10_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst|unidad_aritmetica|suma|sR:12:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\) # ((\inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Yop~10_combout\ & 
-- \inst|unidad_aritmetica|suma|Xop\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~10_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(11) & (\inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ & (\B[15]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(11),
	datab => \B[15]~input_o\,
	datac => \B[11]~input_o\,
	datad => \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(12) & (\B[15]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datab => \B[15]~input_o\,
	datac => \B[12]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Xop\(12),
	combout => \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst|unidad_aritmetica|suma|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~12_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(13) $ (\inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ $ 
-- (\inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~12_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(13),
	datac => \inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst|unidad_aritmetica|suma|Yop~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~11_combout\ = \B[12]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~11_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst|unidad_aritmetica|suma|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(12) $ (\inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Yop~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~11_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y12_N6
\inst|unidad_aritmetica|suma|Yop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~5_combout\ = \B[6]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~5_combout\);

-- Location: LCCOMB_X26_Y12_N18
\inst|unidad_aritmetica|suma|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(6) $ (\inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N20
\inst|unidad_aritmetica|suma|Yop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~6_combout\ = \B[7]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~6_combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst|unidad_aritmetica|suma|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(7) $ (\inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	datab => \inst|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(7),
	datad => \inst|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X29_Y11_N10
\inst|unidad_aritmetica|suma|Yop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~2_combout\ = \B[3]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~2_combout\);

-- Location: LCCOMB_X29_Y11_N4
\inst|unidad_aritmetica|suma|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(3) $ (\inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(3),
	datac => \inst|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~2_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y11_N28
\inst|unidad_aritmetica|suma|Yop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~3_combout\ = \B[15]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~3_combout\);

-- Location: LCCOMB_X26_Y11_N6
\inst|unidad_aritmetica|suma|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(4) $ (\inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X30_Y13_N10
\inst|unidad_aritmetica|suma|Yop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~0_combout\ = \B[1]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~0_combout\);

-- Location: LCCOMB_X30_Y13_N6
\inst|unidad_aritmetica|suma|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(1) $ (\inst|unidad_aritmetica|suma|s0|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|s0|Cout~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(1),
	datab => \inst|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X29_Y11_N20
\inst|unidad_aritmetica|suma|Yop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~1_combout\ = \B[2]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~1_combout\);

-- Location: LCCOMB_X29_Y11_N26
\inst|unidad_aritmetica|suma|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(2) $ (\inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~1_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst|unidad_aritmetica|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~5_combout\ = (!\inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ & 
-- !\inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~5_combout\);

-- Location: LCCOMB_X26_Y11_N26
\inst|unidad_aritmetica|suma|Yop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~4_combout\ = \B[15]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~4_combout\);

-- Location: LCCOMB_X26_Y12_N28
\inst|unidad_aritmetica|suma|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(5) $ (\inst|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(5),
	datab => \inst|unidad_aritmetica|suma|Yop~4_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\inst|unidad_aritmetica|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~6_combout\ = (!\inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux17~5_combout\ & 
-- !\inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|Mux17~5_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~6_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst|unidad_aritmetica|suma|Yop~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~8_combout\ = \B[9]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~8_combout\);

-- Location: LCCOMB_X25_Y14_N10
\inst|unidad_aritmetica|suma|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(9) $ (\inst|unidad_aritmetica|suma|Yop~8_combout\ $ (\inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|unidad_aritmetica|suma|Yop~8_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst|unidad_aritmetica|suma|Yop~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~9_combout\ = \B[10]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~9_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst|unidad_aritmetica|suma|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(10) $ 
-- (\inst|unidad_aritmetica|suma|Yop~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(10),
	datad => \inst|unidad_aritmetica|suma|Yop~9_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\inst|unidad_aritmetica|suma|Yop~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~7_combout\ = \B[8]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~7_combout\);

-- Location: LCCOMB_X25_Y12_N8
\inst|unidad_aritmetica|suma|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~7_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(8) $ (\inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(8),
	datac => \inst|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst|unidad_aritmetica|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~7_combout\ = (\inst|unidad_aritmetica|Mux17~6_combout\ & (!\inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & 
-- !\inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux17~6_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~7_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst|unidad_aritmetica|suma|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~10_combout\ $ (\inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(11) $ 
-- (\inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(11),
	datad => \inst|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst|unidad_aritmetica|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~8_combout\ = (!\inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux17~7_combout\ & 
-- !\inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|Mux17~7_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~8_combout\);

-- Location: LCCOMB_X30_Y13_N12
\inst|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s0|Cout~0_combout\ = (\B[15]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\ $ (\A[15]~input_o\)))) # (!\B[15]~input_o\ & ((\A[0]~input_o\) # ((\A[15]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\inst|unidad_aritmetica|resta|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\ = (\B[15]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & !\A[15]~input_o\))) # (!\B[15]~input_o\ & (!\A[0]~input_o\ & (!\B[0]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\);

-- Location: LCCOMB_X30_Y13_N20
\inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ = (\inst|unidad_aritmetica|resta|s0|Cout~0_combout\ & (\inst|unidad_aritmetica|resta|s0|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(1) & !\inst|unidad_aritmetica|suma|Yop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~1_combout\ & (\inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ & (\A[2]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Yop~1_combout\,
	datac => \A[15]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y11_N18
\inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ & (\A[15]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \A[15]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y11_N0
\inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~3_combout\ & (\inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ & (\A[4]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \A[15]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y12_N0
\inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~4_combout\ & (\A[15]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	datac => \A[5]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Yop~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y12_N26
\inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~5_combout\ & (\inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ & (\A[6]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \A[6]~input_o\,
	datac => \A[15]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~6_combout\ & (\A[15]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \A[7]~input_o\,
	combout => \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~7_combout\ & (\A[8]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~7_combout\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~8_combout\ & (\A[15]~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datab => \A[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|Yop~8_combout\,
	datad => \A[9]~input_o\,
	combout => \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\);

-- Location: LCCOMB_X30_Y13_N26
\inst|unidad_aritmetica|resta|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|s0|Cout~0_combout\ & ((\inst|unidad_aritmetica|resta|s0|Cout2~0_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(1)) # (!\inst|unidad_aritmetica|suma|Yop~0_combout\)))) 
-- # (!\inst|unidad_aritmetica|resta|s0|Cout~0_combout\ & (((\inst|unidad_aritmetica|suma|Xop\(1) & !\inst|unidad_aritmetica|suma|Yop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\inst|unidad_aritmetica|resta|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(2) & ((\inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\) # 
-- (!\inst|unidad_aritmetica|suma|Yop~1_combout\))) # (!\inst|unidad_aritmetica|suma|Xop\(2) & (\inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ & !\inst|unidad_aritmetica|suma|Yop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(2),
	datac => \inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~1_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N12
\inst|unidad_aritmetica|resta|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|unidad_aritmetica|suma|Xop\(3) & 
-- \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\)) # (!\inst|unidad_aritmetica|suma|Yop~2_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(3)) # (\inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(3),
	datac => \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N30
\inst|unidad_aritmetica|resta|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(4)) # 
-- (!\inst|unidad_aritmetica|suma|Yop~3_combout\))) # (!\inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & (!\inst|unidad_aritmetica|suma|Yop~3_combout\ & \inst|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y12_N8
\inst|unidad_aritmetica|resta|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(5) & ((\inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\) # 
-- (!\inst|unidad_aritmetica|suma|Yop~4_combout\))) # (!\inst|unidad_aritmetica|suma|Xop\(5) & (!\inst|unidad_aritmetica|suma|Yop~4_combout\ & \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(5),
	datab => \inst|unidad_aritmetica|suma|Yop~4_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y12_N10
\inst|unidad_aritmetica|resta|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Yop~5_combout\ & (\inst|unidad_aritmetica|suma|Xop\(6) & 
-- \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\)) # (!\inst|unidad_aritmetica|suma|Yop~5_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(6)) # (\inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N12
\inst|unidad_aritmetica|resta|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(7) & ((\inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\) # 
-- (!\inst|unidad_aritmetica|suma|Yop~6_combout\))) # (!\inst|unidad_aritmetica|suma|Xop\(7) & (!\inst|unidad_aritmetica|suma|Yop~6_combout\ & \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(7),
	datab => \inst|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N14
\inst|unidad_aritmetica|resta|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(8)) # 
-- (!\inst|unidad_aritmetica|suma|Yop~7_combout\))) # (!\inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ & (!\inst|unidad_aritmetica|suma|Yop~7_combout\ & \inst|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~7_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst|unidad_aritmetica|resta|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(9)) # 
-- (!\inst|unidad_aritmetica|suma|Yop~8_combout\))) # (!\inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ & (!\inst|unidad_aritmetica|suma|Yop~8_combout\ & \inst|unidad_aritmetica|suma|Xop\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~8_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(9),
	combout => \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst|unidad_aritmetica|resta|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(10) $ (\inst|unidad_aritmetica|suma|Yop~9_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|unidad_aritmetica|suma|Yop~9_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~9_combout\ & (\inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ & (\A[15]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Yop~9_combout\,
	datac => \A[10]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y14_N6
\inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~10_combout\ & (\A[15]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~10_combout\,
	datad => \A[11]~input_o\,
	combout => \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\);

-- Location: LCCOMB_X26_Y14_N8
\inst|unidad_aritmetica|resta|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(10) & ((\inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\) # 
-- (!\inst|unidad_aritmetica|suma|Yop~9_combout\))) # (!\inst|unidad_aritmetica|suma|Xop\(10) & (!\inst|unidad_aritmetica|suma|Yop~9_combout\ & \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|unidad_aritmetica|suma|Yop~9_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y14_N26
\inst|unidad_aritmetica|resta|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Yop~10_combout\ & (\inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ & 
-- \inst|unidad_aritmetica|suma|Xop\(11))) # (!\inst|unidad_aritmetica|suma|Yop~10_combout\ & ((\inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\) # (\inst|unidad_aritmetica|suma|Xop\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst|unidad_aritmetica|resta|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|suma|Yop~11_combout\ $ (\inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Xop\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(12),
	combout => \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\inst|unidad_aritmetica|resta|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|suma|Yop~7_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~7_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst|unidad_aritmetica|resta|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(6) $ (\inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y11_N8
\inst|unidad_aritmetica|resta|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(4) $ 
-- (\inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X29_Y11_N30
\inst|unidad_aritmetica|resta|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(2) $ (\inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Yop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(2),
	datac => \inst|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~1_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X26_Y11_N2
\inst|unidad_aritmetica|resta|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(3) $ (\inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst|unidad_aritmetica|suma|Xop\(3),
	datac => \inst|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X30_Y13_N24
\inst|unidad_aritmetica|resta|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|s0|Cout~0_combout\ $ (\inst|unidad_aritmetica|resta|s0|Cout2~0_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(1) $ (\inst|unidad_aritmetica|suma|Yop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst|unidad_aritmetica|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~0_combout\ = (\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ & \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\inst|unidad_aritmetica|resta|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(5) $ (\inst|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(5),
	datab => \inst|unidad_aritmetica|suma|Yop~4_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst|unidad_aritmetica|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~1_combout\ = (\inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux17~0_combout\ & 
-- \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~1_combout\);

-- Location: LCCOMB_X25_Y14_N8
\inst|unidad_aritmetica|resta|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~8_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Xop\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~8_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(9),
	combout => \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst|unidad_aritmetica|resta|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(7) $ (\inst|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(7),
	datab => \inst|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst|unidad_aritmetica|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~2_combout\ = (\inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux17~1_combout\ & (\inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ & 
-- \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|Mux17~1_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~2_combout\);

-- Location: LCCOMB_X26_Y14_N22
\inst|unidad_aritmetica|resta|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Yop~10_combout\ $ (\inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ $ 
-- (\inst|unidad_aritmetica|suma|Xop\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst|unidad_aritmetica|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~3_combout\ = (\inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux17~2_combout\ & 
-- \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|Mux17~2_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~3_combout\);

-- Location: IOIBUF_X30_Y24_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X30_Y14_N18
\inst|unidad_aritmetica|suma|Xop[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Xop\(14) = \A[15]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Xop\(14));

-- Location: LCCOMB_X24_Y14_N8
\inst|unidad_aritmetica|resta|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ & 
-- \inst|unidad_aritmetica|suma|Xop\(12))) # (!\inst|unidad_aritmetica|suma|Yop~11_combout\ & ((\inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\) # (\inst|unidad_aritmetica|suma|Xop\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	datab => \inst|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(12),
	combout => \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ = (!\inst|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ & (\A[15]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \A[12]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\);

-- Location: LCCOMB_X28_Y13_N28
\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(13)) # 
-- (!\inst|unidad_aritmetica|suma|Yop~12_combout\))) # (!\inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(13) & !\inst|unidad_aritmetica|suma|Yop~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(13),
	datad => \inst|unidad_aritmetica|suma|Yop~12_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X30_Y14_N0
\inst|unidad_aritmetica|suma|Yop~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Yop~13_combout\ = \B[14]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Yop~13_combout\);

-- Location: LCCOMB_X30_Y14_N22
\inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Yop~12_combout\ & (\A[13]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~12_combout\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X29_Y13_N2
\inst|unidad_aritmetica|resta|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ = \inst|unidad_aritmetica|suma|Xop\(14) $ (\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|suma|Yop~13_combout\ $ 
-- (\inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(14),
	datab => \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~13_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst|unidad_aritmetica|resta|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ = \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ $ (\inst|unidad_aritmetica|suma|Xop\(13) $ 
-- (\inst|unidad_aritmetica|suma|Yop~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(13),
	datad => \inst|unidad_aritmetica|suma|Yop~12_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\inst|unidad_aritmetica|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~4_combout\ = (\inst|unidad_aritmetica|Mux17~3_combout\ & (\inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ & \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|Mux17~3_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~4_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst|unidad_aritmetica|suma|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ = \A[15]~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst|unidad_aritmetica|suma|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ & ((\inst|unidad_aritmetica|suma|Xop\(13)) # (\B[13]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ & 
-- (\inst|unidad_aritmetica|suma|Xop\(13) & (\B[13]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(13),
	combout => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y14_N2
\inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ = (\inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ & (\inst|unidad_aritmetica|suma|Xop\(13) & (\B[13]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Xop\(13),
	combout => \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|unidad_aritmetica|suma|sR:14:sP|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ = \inst|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ $ (\inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ $ (((\inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\) # 
-- (\inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst|unidad_aritmetica|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~9_combout\ = (\inst|unidad_aritmetica|Mux17~4_combout\) # ((\inst|unidad_aritmetica|Mux17~8_combout\ & (!\inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ & !\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux17~8_combout\,
	datab => \inst|unidad_aritmetica|Mux17~4_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~9_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst|unidad_aritmetica|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~10_combout\ = (\inst|unidad_aritmetica|Mux17~9_combout\ & (\inst|Mux16~0_combout\ & (\A[0]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux17~9_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|Mux17~10_combout\);

-- Location: LCCOMB_X22_Y13_N24
\inst|unidad_aritmetica|Mux17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux17~16_combout\ = (\inst|unidad_aritmetica|Mux17~10_combout\) # ((\inst|unidad_aritmetica|Mux17~15_combout\ & (\inst|unidad_aritmetica|Mux17~14_combout\ & !\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux17~15_combout\,
	datab => \inst|unidad_aritmetica|Mux17~14_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|Mux17~10_combout\,
	combout => \inst|unidad_aritmetica|Mux17~16_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst|unidad_aritmetica|suma|sR:13:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ = (\inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(12) & (\inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ & 
-- \inst|unidad_aritmetica|suma|Yop~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datad => \inst|unidad_aritmetica|suma|Yop~11_combout\,
	combout => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst|unidad_aritmetica|suma|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|Xop\(14) & ((\inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\) # (\B[14]~input_o\ $ (\B[15]~input_o\)))) # (!\inst|unidad_aritmetica|suma|Xop\(14) & 
-- (\inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ & (\B[14]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \inst|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\,
	datad => \B[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst|unidad_aritmetica|suma|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Sfaux~0_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\) # (\inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|Sfaux~0_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst|unidad_aritmetica|resta|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(14) & ((\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\) # 
-- (!\inst|unidad_aritmetica|suma|Yop~13_combout\))) # (!\inst|unidad_aritmetica|suma|Xop\(14) & (\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ & !\inst|unidad_aritmetica|suma|Yop~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Xop\(14),
	datab => \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Yop~13_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	combout => \inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X26_Y13_N12
\inst|unidad_aritmetica|resta|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|Sfaux~0_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|Sfaux~0_combout\);

-- Location: LCCOMB_X26_Y13_N18
\inst|unidad_aritmetica|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux19~0_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((!\inst|unidad_aritmetica|resta|Sfaux~0_combout\))) # (!\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|suma|Sfaux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|unidad_aritmetica|Mux19~0_combout\);

-- Location: LCCOMB_X26_Y13_N16
\inst|unidad_aritmetica|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux19~1_combout\ = (\inst|unidad_aritmetica|Mux19~0_combout\) # ((!\inst|Mux16~0_combout\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|Mux19~0_combout\,
	combout => \inst|unidad_aritmetica|Mux19~1_combout\);

-- Location: LCCOMB_X30_Y13_N8
\inst|unidad_aritmetica|resta|Ovfaux\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|Ovfaux~combout\ = (\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ & (!\inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ & (!\inst|unidad_aritmetica|suma|Xop\(14) & \inst|unidad_aritmetica|suma|Yop~13_combout\))) 
-- # (!\inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\) # ((\inst|unidad_aritmetica|suma|Xop\(14) & !\inst|unidad_aritmetica|suma|Yop~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	datac => \inst|unidad_aritmetica|suma|Xop\(14),
	datad => \inst|unidad_aritmetica|suma|Yop~13_combout\,
	combout => \inst|unidad_aritmetica|resta|Ovfaux~combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst|unidad_aritmetica|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux18~0_combout\ = (\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ $ (((\inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\) # (\inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\) # ((\A[7]~input_o\ & \B[7]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & (\A[7]~input_o\ & (\inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst|unidad_aritmetica|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux18~1_combout\ = (\inst|unidad_aritmetica|Mux18~0_combout\) # ((!\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux18~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|Mux18~1_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst|unidad_aritmetica|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux18~2_combout\ = (\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|Ovfaux~combout\ & ((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & (((\inst|unidad_aritmetica|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|Ovfaux~combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|unidad_aritmetica|Mux18~1_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|Mux18~2_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst|unidad_aritmetica|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux16~0_combout\ = (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|Sfaux~0_combout\)) # (!\inst|Mux16~0_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|Mux16~0_combout\);

-- Location: LCCOMB_X26_Y13_N6
\inst|unidad_aritmetica|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux16~1_combout\ = (\inst|unidad_aritmetica|Mux16~0_combout\) # ((\inst|Mux17~0_combout\ & (\inst|Mux16~0_combout\ & \inst|unidad_aritmetica|resta|Sfaux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|unidad_aritmetica|Mux16~1_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\sel[2]~input_o\ & ((\sel[3]~input_o\) # (\sel[1]~input_o\ $ (\sel[0]~input_o\)))) # (!\sel[2]~input_o\ & (\sel[1]~input_o\ & (\sel[0]~input_o\ & \sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\sel[3]~input_o\ & ((\sel[2]~input_o\) # ((\sel[1]~input_o\ & \sel[0]~input_o\)))) # (!\sel[3]~input_o\ & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux0~0_combout\);

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

-- Location: LCCOMB_X26_Y16_N8
\inst|barrel_shifters|aux[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[15]~feeder_combout\ = \A[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[14]~input_o\,
	combout => \inst|barrel_shifters|aux[15]~feeder_combout\);

-- Location: FF_X26_Y16_N9
\inst|barrel_shifters|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(15));

-- Location: FF_X26_Y16_N7
\inst|barrel_shifters|salShifters[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(15));

-- Location: LCCOMB_X30_Y13_N18
\inst|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~7_combout\ = (\A[15]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[15]~input_o\ & (((\B[15]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \A[15]~input_o\,
	combout => \inst|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst|unidad_logica|salida[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida[13]~52_combout\ = (\sel[2]~input_o\ & (((\sel[0]~input_o\) # (\sel[3]~input_o\)))) # (!\sel[2]~input_o\ & ((\sel[1]~input_o\) # ((!\sel[0]~input_o\ & !\sel[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|unidad_logica|salida[13]~52_combout\);

-- Location: LCCOMB_X29_Y14_N2
\inst|unidad_logica|aux[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[1]~15_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & VCC)) # (!\A[1]~input_o\ & (\A[0]~input_o\ $ (GND)))
-- \inst|unidad_logica|aux[1]~16\ = CARRY((!\A[1]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_logica|aux[1]~15_combout\,
	cout => \inst|unidad_logica|aux[1]~16\);

-- Location: LCCOMB_X29_Y14_N4
\inst|unidad_logica|aux[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[2]~17_combout\ = (\A[2]~input_o\ & ((\inst|unidad_logica|aux[1]~16\) # (GND))) # (!\A[2]~input_o\ & (!\inst|unidad_logica|aux[1]~16\))
-- \inst|unidad_logica|aux[2]~18\ = CARRY((\A[2]~input_o\) # (!\inst|unidad_logica|aux[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[1]~16\,
	combout => \inst|unidad_logica|aux[2]~17_combout\,
	cout => \inst|unidad_logica|aux[2]~18\);

-- Location: LCCOMB_X29_Y14_N6
\inst|unidad_logica|aux[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[3]~19_combout\ = (\A[3]~input_o\ & (!\inst|unidad_logica|aux[2]~18\ & VCC)) # (!\A[3]~input_o\ & (\inst|unidad_logica|aux[2]~18\ $ (GND)))
-- \inst|unidad_logica|aux[3]~20\ = CARRY((!\A[3]~input_o\ & !\inst|unidad_logica|aux[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[2]~18\,
	combout => \inst|unidad_logica|aux[3]~19_combout\,
	cout => \inst|unidad_logica|aux[3]~20\);

-- Location: LCCOMB_X29_Y14_N8
\inst|unidad_logica|aux[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[4]~21_combout\ = (\A[4]~input_o\ & ((\inst|unidad_logica|aux[3]~20\) # (GND))) # (!\A[4]~input_o\ & (!\inst|unidad_logica|aux[3]~20\))
-- \inst|unidad_logica|aux[4]~22\ = CARRY((\A[4]~input_o\) # (!\inst|unidad_logica|aux[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[3]~20\,
	combout => \inst|unidad_logica|aux[4]~21_combout\,
	cout => \inst|unidad_logica|aux[4]~22\);

-- Location: LCCOMB_X29_Y14_N10
\inst|unidad_logica|aux[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[5]~23_combout\ = (\A[5]~input_o\ & (!\inst|unidad_logica|aux[4]~22\ & VCC)) # (!\A[5]~input_o\ & (\inst|unidad_logica|aux[4]~22\ $ (GND)))
-- \inst|unidad_logica|aux[5]~24\ = CARRY((!\A[5]~input_o\ & !\inst|unidad_logica|aux[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[4]~22\,
	combout => \inst|unidad_logica|aux[5]~23_combout\,
	cout => \inst|unidad_logica|aux[5]~24\);

-- Location: LCCOMB_X29_Y14_N12
\inst|unidad_logica|aux[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[6]~25_combout\ = (\A[6]~input_o\ & ((\inst|unidad_logica|aux[5]~24\) # (GND))) # (!\A[6]~input_o\ & (!\inst|unidad_logica|aux[5]~24\))
-- \inst|unidad_logica|aux[6]~26\ = CARRY((\A[6]~input_o\) # (!\inst|unidad_logica|aux[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[5]~24\,
	combout => \inst|unidad_logica|aux[6]~25_combout\,
	cout => \inst|unidad_logica|aux[6]~26\);

-- Location: LCCOMB_X29_Y14_N14
\inst|unidad_logica|aux[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[7]~27_combout\ = (\A[7]~input_o\ & (!\inst|unidad_logica|aux[6]~26\ & VCC)) # (!\A[7]~input_o\ & (\inst|unidad_logica|aux[6]~26\ $ (GND)))
-- \inst|unidad_logica|aux[7]~28\ = CARRY((!\A[7]~input_o\ & !\inst|unidad_logica|aux[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[6]~26\,
	combout => \inst|unidad_logica|aux[7]~27_combout\,
	cout => \inst|unidad_logica|aux[7]~28\);

-- Location: LCCOMB_X29_Y14_N16
\inst|unidad_logica|aux[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[8]~29_combout\ = (\A[8]~input_o\ & ((\inst|unidad_logica|aux[7]~28\) # (GND))) # (!\A[8]~input_o\ & (!\inst|unidad_logica|aux[7]~28\))
-- \inst|unidad_logica|aux[8]~30\ = CARRY((\A[8]~input_o\) # (!\inst|unidad_logica|aux[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[7]~28\,
	combout => \inst|unidad_logica|aux[8]~29_combout\,
	cout => \inst|unidad_logica|aux[8]~30\);

-- Location: LCCOMB_X29_Y14_N18
\inst|unidad_logica|aux[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[9]~31_combout\ = (\A[9]~input_o\ & (!\inst|unidad_logica|aux[8]~30\ & VCC)) # (!\A[9]~input_o\ & (\inst|unidad_logica|aux[8]~30\ $ (GND)))
-- \inst|unidad_logica|aux[9]~32\ = CARRY((!\A[9]~input_o\ & !\inst|unidad_logica|aux[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[8]~30\,
	combout => \inst|unidad_logica|aux[9]~31_combout\,
	cout => \inst|unidad_logica|aux[9]~32\);

-- Location: LCCOMB_X29_Y14_N20
\inst|unidad_logica|aux[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[10]~33_combout\ = (\A[10]~input_o\ & ((\inst|unidad_logica|aux[9]~32\) # (GND))) # (!\A[10]~input_o\ & (!\inst|unidad_logica|aux[9]~32\))
-- \inst|unidad_logica|aux[10]~34\ = CARRY((\A[10]~input_o\) # (!\inst|unidad_logica|aux[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[9]~32\,
	combout => \inst|unidad_logica|aux[10]~33_combout\,
	cout => \inst|unidad_logica|aux[10]~34\);

-- Location: LCCOMB_X29_Y14_N22
\inst|unidad_logica|aux[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[11]~35_combout\ = (\A[11]~input_o\ & (!\inst|unidad_logica|aux[10]~34\ & VCC)) # (!\A[11]~input_o\ & (\inst|unidad_logica|aux[10]~34\ $ (GND)))
-- \inst|unidad_logica|aux[11]~36\ = CARRY((!\A[11]~input_o\ & !\inst|unidad_logica|aux[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[10]~34\,
	combout => \inst|unidad_logica|aux[11]~35_combout\,
	cout => \inst|unidad_logica|aux[11]~36\);

-- Location: LCCOMB_X29_Y14_N24
\inst|unidad_logica|aux[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[12]~37_combout\ = (\A[12]~input_o\ & ((\inst|unidad_logica|aux[11]~36\) # (GND))) # (!\A[12]~input_o\ & (!\inst|unidad_logica|aux[11]~36\))
-- \inst|unidad_logica|aux[12]~38\ = CARRY((\A[12]~input_o\) # (!\inst|unidad_logica|aux[11]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[11]~36\,
	combout => \inst|unidad_logica|aux[12]~37_combout\,
	cout => \inst|unidad_logica|aux[12]~38\);

-- Location: LCCOMB_X29_Y14_N26
\inst|unidad_logica|aux[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[13]~39_combout\ = (\A[13]~input_o\ & (!\inst|unidad_logica|aux[12]~38\ & VCC)) # (!\A[13]~input_o\ & (\inst|unidad_logica|aux[12]~38\ $ (GND)))
-- \inst|unidad_logica|aux[13]~40\ = CARRY((!\A[13]~input_o\ & !\inst|unidad_logica|aux[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[12]~38\,
	combout => \inst|unidad_logica|aux[13]~39_combout\,
	cout => \inst|unidad_logica|aux[13]~40\);

-- Location: LCCOMB_X29_Y14_N28
\inst|unidad_logica|aux[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[14]~41_combout\ = (\A[14]~input_o\ & ((\inst|unidad_logica|aux[13]~40\) # (GND))) # (!\A[14]~input_o\ & (!\inst|unidad_logica|aux[13]~40\))
-- \inst|unidad_logica|aux[14]~42\ = CARRY((\A[14]~input_o\) # (!\inst|unidad_logica|aux[13]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[13]~40\,
	combout => \inst|unidad_logica|aux[14]~41_combout\,
	cout => \inst|unidad_logica|aux[14]~42\);

-- Location: LCCOMB_X29_Y14_N30
\inst|unidad_logica|aux[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[15]~43_combout\ = \A[15]~input_o\ $ (\inst|unidad_logica|aux[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	cin => \inst|unidad_logica|aux[14]~42\,
	combout => \inst|unidad_logica|aux[15]~43_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ = (!\sel[2]~input_o\ & (\sel[1]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\);

-- Location: FF_X29_Y14_N31
\inst|unidad_logica|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[15]~43_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(15));

-- Location: LCCOMB_X30_Y14_N30
\inst|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~8_combout\ = (\inst|unidad_logica|salida~7_combout\ & ((\inst|unidad_logica|salida~4_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~7_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~4_combout\,
	datab => \inst|unidad_logica|salida~7_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(15),
	combout => \inst|unidad_logica|salida~8_combout\);

-- Location: FF_X30_Y14_N31
\inst|unidad_logica|salida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(15));

-- Location: LCCOMB_X26_Y16_N6
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst|Mux0~1_combout\ & ((\inst|Mux0~0_combout\) # ((\inst|barrel_shifters|salShifters\(15))))) # (!\inst|Mux0~1_combout\ & (\inst|Mux0~0_combout\ & ((\inst|unidad_logica|salida\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \inst|barrel_shifters|salShifters\(15),
	datad => \inst|unidad_logica|salida\(15),
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y14_N20
\inst|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~9_combout\ = (\A[14]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[14]~input_o\ & (((\inst|Mux16~0_combout\ & \B[14]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|unidad_logica|salida~9_combout\);

-- Location: LCCOMB_X30_Y14_N2
\inst|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~10_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X30_Y14_N20
\inst|unidad_logica|aux[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[14]~feeder_combout\ = \inst|unidad_logica|aux[14]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|unidad_logica|aux[14]~41_combout\,
	combout => \inst|unidad_logica|aux[14]~feeder_combout\);

-- Location: FF_X30_Y14_N21
\inst|unidad_logica|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[14]~feeder_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(14));

-- Location: LCCOMB_X30_Y14_N8
\inst|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~11_combout\ = (\inst|unidad_logica|salida~9_combout\ & (((\inst|unidad_logica|salida~10_combout\)) # (!\inst|unidad_logica|salida[13]~52_combout\))) # (!\inst|unidad_logica|salida~9_combout\ & 
-- (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|aux\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~9_combout\,
	datab => \inst|unidad_logica|salida[13]~52_combout\,
	datac => \inst|unidad_logica|salida~10_combout\,
	datad => \inst|unidad_logica|aux\(14),
	combout => \inst|unidad_logica|salida~11_combout\);

-- Location: FF_X30_Y14_N9
\inst|unidad_logica|salida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(14));

-- Location: LCCOMB_X26_Y16_N4
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|unidad_logica|salida\(14) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inst|unidad_logica|salida\(14),
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = (\sel[2]~input_o\ & (\sel[1]~input_o\ & (\sel[0]~input_o\ & !\sel[3]~input_o\))) # (!\sel[2]~input_o\ & (\sel[3]~input_o\ & ((!\sel[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ = (\inst|Mux16~0_combout\ & (!\inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ & ((!\inst|Mux17~0_combout\)))) # (!\inst|Mux16~0_combout\ & 
-- (((!\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\) # ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ & \inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\);

-- Location: LCCOMB_X24_Y13_N8
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\) # ((!\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\) # ((!\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\);

-- Location: LCCOMB_X26_Y13_N14
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\);

-- Location: LCCOMB_X26_Y13_N4
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\) # ((!\inst|Mux16~0_combout\ & !\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\) # ((!\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\) # ((!\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\);

-- Location: LCCOMB_X23_Y11_N22
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\) # ((!\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\);

-- Location: LCCOMB_X24_Y12_N6
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\);

-- Location: LCCOMB_X24_Y12_N24
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\) # ((!\inst|Mux16~0_combout\ & !\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\);

-- Location: LCCOMB_X24_Y12_N2
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\);

-- Location: LCCOMB_X24_Y12_N16
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\) # ((!\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\);

-- Location: LCCOMB_X24_Y12_N18
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\) # ((!\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\);

-- Location: LCCOMB_X26_Y13_N30
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\);

-- Location: LCCOMB_X24_Y12_N30
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\) # ((!\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\);

-- Location: LCCOMB_X25_Y13_N26
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\);

-- Location: LCCOMB_X25_Y13_N20
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\) # ((!\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\);

-- Location: LCCOMB_X25_Y13_N2
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\)) # (!\inst|Mux17~0_combout\ & 
-- ((!\inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\);

-- Location: LCCOMB_X25_Y13_N24
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\) # ((!\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\);

-- Location: LCCOMB_X25_Y13_N6
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~30_combout\ = (\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & ((\inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\))) # (!\inst|Mux17~0_combout\ & 
-- (!\inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~30_combout\);

-- Location: LCCOMB_X25_Y13_N4
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~30_combout\) # ((!\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ & !\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~30_combout\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\ = (\inst|Mux16~0_combout\ & (\B[0]~input_o\ $ (\A[0]~input_o\))) # (!\inst|Mux16~0_combout\ & (\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux16~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ & VCC)) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ $ (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~32_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\);

-- Location: LCCOMB_X21_Y13_N4
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~34\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\);

-- Location: LCCOMB_X21_Y13_N6
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~36\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\);

-- Location: LCCOMB_X21_Y13_N8
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~38\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\);

-- Location: LCCOMB_X21_Y13_N10
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~40\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\);

-- Location: LCCOMB_X21_Y13_N12
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~42\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\);

-- Location: LCCOMB_X21_Y13_N14
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~44\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\);

-- Location: LCCOMB_X21_Y13_N16
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~46\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\);

-- Location: LCCOMB_X21_Y13_N18
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~48\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\);

-- Location: LCCOMB_X21_Y13_N20
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~50\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\);

-- Location: LCCOMB_X21_Y13_N22
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~52\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\);

-- Location: LCCOMB_X21_Y13_N24
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~54\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\);

-- Location: LCCOMB_X21_Y13_N26
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\ & VCC))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\ = CARRY((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ & !\inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~56\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\);

-- Location: LCCOMB_X21_Y13_N28
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\ = (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ & (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\)) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~60\ = CARRY((!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\) # (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~58\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\,
	cout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~60\);

-- Location: LCCOMB_X21_Y13_N30
\inst|unidad_aritmetica|mult|multi7|negativo|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\ = \inst|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ $ (!\inst|unidad_aritmetica|mult|multi7|negativo|Add0~60\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\,
	cin => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~60\,
	combout => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~12_combout\ = (\inst|Mux16~0_combout\ & ((\inst|unidad_aritmetica|suma|Sfaux~0_combout\) # ((\inst|Mux17~0_combout\)))) # (!\inst|Mux16~0_combout\ & (((\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & !\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux7~12_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (\inst|unidad_aritmetica|Mux16~0_combout\) # ((\inst|Mux16~0_combout\ & (!\inst|unidad_aritmetica|resta|Sfaux~0_combout\ & \inst|Mux17~0_combout\)) # (!\inst|Mux16~0_combout\ & ((!\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|Sfaux~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|unidad_aritmetica|Mux16~0_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X22_Y13_N30
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\) # (!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ & 
-- ((\inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\,
	datac => \inst|Mux7~12_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (!\inst|unidad_aritmetica|Mux16~0_combout\ & (\inst|Mux16~0_combout\ & ((\inst|unidad_aritmetica|resta|Sfaux~0_combout\) # (!\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux1~0_combout\ & (((!\inst|Mux7~2_combout\) # (!\inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\)))) # (!\inst|Mux1~0_combout\ & (\inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ & ((\inst|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datad => \inst|Mux7~2_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = \sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst|barrel_shifters|aux[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[14]~feeder_combout\ = \A[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[13]~input_o\,
	combout => \inst|barrel_shifters|aux[14]~feeder_combout\);

-- Location: FF_X24_Y16_N5
\inst|barrel_shifters|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(14));

-- Location: FF_X24_Y16_N3
\inst|barrel_shifters|salShifters[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(14));

-- Location: LCCOMB_X24_Y16_N2
\inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(14) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(14),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux1~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux1~2_combout\) # ((\inst|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~2_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux1~1_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst|barrel_shifters|aux[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[13]~feeder_combout\ = \A[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	combout => \inst|barrel_shifters|aux[13]~feeder_combout\);

-- Location: FF_X24_Y17_N5
\inst|barrel_shifters|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(13));

-- Location: FF_X24_Y17_N21
\inst|barrel_shifters|salShifters[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(13));

-- Location: LCCOMB_X24_Y17_N20
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(13) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(13),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X26_Y14_N10
\inst|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~12_combout\ = (\A[13]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[13]~input_o\ & (((\inst|Mux16~0_combout\ & \B[13]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst|unidad_logica|salida~12_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~13_combout\ = (\A[13]~input_o\ & \B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	combout => \inst|unidad_logica|salida~13_combout\);

-- Location: FF_X30_Y14_N3
\inst|unidad_logica|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[13]~39_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(13));

-- Location: LCCOMB_X30_Y14_N14
\inst|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~14_combout\ = (\inst|unidad_logica|salida~12_combout\ & (((\inst|unidad_logica|salida~13_combout\)) # (!\inst|unidad_logica|salida[13]~52_combout\))) # (!\inst|unidad_logica|salida~12_combout\ & 
-- (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|aux\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~12_combout\,
	datab => \inst|unidad_logica|salida[13]~52_combout\,
	datac => \inst|unidad_logica|salida~13_combout\,
	datad => \inst|unidad_logica|aux\(13),
	combout => \inst|unidad_logica|salida~14_combout\);

-- Location: FF_X30_Y14_N15
\inst|unidad_logica|salida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(13));

-- Location: LCCOMB_X28_Y14_N24
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|unidad_logica|salida\(13) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|unidad_logica|salida\(13),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|Mux7~3_combout\ & ((\inst|Mux7~12_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\)) # (!\inst|Mux7~12_combout\ & ((\inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\))))) # 
-- (!\inst|Mux7~3_combout\ & (\inst|Mux7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~3_combout\,
	datab => \inst|Mux7~12_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux7~2_combout\ & ((\inst|Mux2~0_combout\ & ((!\inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\))) # (!\inst|Mux2~0_combout\ & (\inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\)))) # (!\inst|Mux7~2_combout\ & 
-- (\inst|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~2_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux2~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux2~3_combout\) # ((\inst|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux2~3_combout\,
	datac => \inst|Mux2~2_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst|Mux2~4_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst|barrel_shifters|aux[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[12]~feeder_combout\ = \A[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	combout => \inst|barrel_shifters|aux[12]~feeder_combout\);

-- Location: FF_X24_Y17_N27
\inst|barrel_shifters|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(12));

-- Location: FF_X24_Y17_N17
\inst|barrel_shifters|salShifters[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(12));

-- Location: LCCOMB_X24_Y17_N16
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(12) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(12),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\) # (!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & 
-- ((\inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	datab => \inst|Mux7~12_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & (((!\inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\) # (!\inst|Mux7~2_combout\)))) # (!\inst|Mux3~0_combout\ & (\inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & (\inst|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	datac => \inst|Mux7~2_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~16_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \inst|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~15_combout\ = (\A[12]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[12]~input_o\ & (((\B[12]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \inst|Mux17~0_combout\,
	datac => \A[12]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~15_combout\);

-- Location: FF_X30_Y14_N1
\inst|unidad_logica|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[12]~37_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(12));

-- Location: LCCOMB_X30_Y14_N16
\inst|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~17_combout\ = (\inst|unidad_logica|salida~15_combout\ & ((\inst|unidad_logica|salida~16_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~15_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~16_combout\,
	datab => \inst|unidad_logica|salida~15_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(12),
	combout => \inst|unidad_logica|salida~17_combout\);

-- Location: FF_X30_Y14_N17
\inst|unidad_logica|salida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(12));

-- Location: LCCOMB_X26_Y16_N22
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|unidad_logica|salida\(12) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inst|unidad_logica|salida\(12),
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux3~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux3~3_combout\) # ((\inst|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux3~3_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|Mux3~2_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst|barrel_shifters|aux[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[11]~feeder_combout\ = \A[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[10]~input_o\,
	combout => \inst|barrel_shifters|aux[11]~feeder_combout\);

-- Location: FF_X24_Y16_N27
\inst|barrel_shifters|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(11));

-- Location: FF_X24_Y16_N31
\inst|barrel_shifters|salShifters[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(11));

-- Location: LCCOMB_X24_Y16_N30
\inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(11) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(11),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux4~3_combout\);

-- Location: LCCOMB_X26_Y14_N18
\inst|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~19_combout\ = (\B[11]~input_o\ & \A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \inst|unidad_logica|salida~19_combout\);

-- Location: LCCOMB_X26_Y14_N24
\inst|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~18_combout\ = (\A[11]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[11]~input_o\ & (((\inst|Mux16~0_combout\ & \B[11]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \inst|unidad_logica|salida~18_combout\);

-- Location: FF_X30_Y14_N19
\inst|unidad_logica|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[11]~35_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(11));

-- Location: LCCOMB_X30_Y14_N10
\inst|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~20_combout\ = (\inst|unidad_logica|salida~18_combout\ & ((\inst|unidad_logica|salida~19_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~18_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~19_combout\,
	datab => \inst|unidad_logica|salida~18_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(11),
	combout => \inst|unidad_logica|salida~20_combout\);

-- Location: FF_X30_Y14_N11
\inst|unidad_logica|salida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(11));

-- Location: LCCOMB_X26_Y16_N20
\inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = (\inst|unidad_logica|salida\(11) & (\sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \inst|unidad_logica|salida\(11),
	combout => \inst|Mux4~2_combout\);

-- Location: LCCOMB_X22_Y13_N12
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\) # (!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ & 
-- ((\inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\,
	datac => \inst|Mux7~12_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|Mux4~0_combout\ & (((!\inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\) # (!\inst|Mux7~2_combout\)))) # (!\inst|Mux4~0_combout\ & (\inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ & (\inst|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datac => \inst|Mux7~2_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux4~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux4~3_combout\) # ((\inst|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~3_combout\,
	datab => \inst|Mux4~2_combout\,
	datac => \inst|Mux7~5_combout\,
	datad => \inst|Mux4~1_combout\,
	combout => \inst|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst|barrel_shifters|aux[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[10]~feeder_combout\ = \A[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	combout => \inst|barrel_shifters|aux[10]~feeder_combout\);

-- Location: FF_X24_Y16_N23
\inst|barrel_shifters|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(10));

-- Location: FF_X24_Y16_N11
\inst|barrel_shifters|salShifters[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(10));

-- Location: LCCOMB_X24_Y16_N10
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(10) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(10),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|Mux7~12_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\) # ((!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & 
-- \inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datac => \inst|Mux7~12_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|Mux5~0_combout\ & (((!\inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\) # (!\inst|Mux7~2_combout\)))) # (!\inst|Mux5~0_combout\ & (\inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & (\inst|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datac => \inst|Mux7~2_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y14_N14
\inst|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~22_combout\ = (\A[10]~input_o\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \inst|unidad_logica|salida~22_combout\);

-- Location: LCCOMB_X26_Y14_N16
\inst|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~21_combout\ = (\A[10]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[10]~input_o\ & (((\inst|Mux16~0_combout\ & \B[10]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_logica|salida~21_combout\);

-- Location: FF_X30_Y14_N13
\inst|unidad_logica|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[10]~33_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(10));

-- Location: LCCOMB_X30_Y14_N4
\inst|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~23_combout\ = (\inst|unidad_logica|salida~21_combout\ & ((\inst|unidad_logica|salida~22_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~21_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~22_combout\,
	datab => \inst|unidad_logica|salida~21_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(10),
	combout => \inst|unidad_logica|salida~23_combout\);

-- Location: FF_X30_Y14_N5
\inst|unidad_logica|salida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(10));

-- Location: LCCOMB_X26_Y16_N14
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|unidad_logica|salida\(10) & (\sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \inst|unidad_logica|salida\(10),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux5~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux5~3_combout\) # ((\inst|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux5~1_combout\,
	datad => \inst|Mux5~2_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst|barrel_shifters|aux[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[9]~feeder_combout\ = \A[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[8]~input_o\,
	combout => \inst|barrel_shifters|aux[9]~feeder_combout\);

-- Location: FF_X24_Y16_N9
\inst|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(9));

-- Location: FF_X24_Y16_N13
\inst|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X24_Y16_N12
\inst|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(9) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(9),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X22_Y13_N20
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|Mux7~12_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\) # ((!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & 
-- \inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datac => \inst|Mux7~12_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|Mux7~2_combout\ & ((\inst|Mux6~0_combout\ & (!\inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\)) # (!\inst|Mux6~0_combout\ & ((\inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\))))) # (!\inst|Mux7~2_combout\ & 
-- (((\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~2_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~25_combout\ = (\A[9]~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst|unidad_logica|salida~25_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~24_combout\ = (\A[9]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[9]~input_o\ & (((\B[9]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|Mux17~0_combout\,
	datac => \A[9]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~24_combout\);

-- Location: FF_X29_Y14_N19
\inst|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[9]~31_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(9));

-- Location: LCCOMB_X28_Y14_N0
\inst|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~26_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~24_combout\ & (\inst|unidad_logica|salida~25_combout\)) # (!\inst|unidad_logica|salida~24_combout\ & ((\inst|unidad_logica|aux\(9)))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (((\inst|unidad_logica|salida~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~25_combout\,
	datac => \inst|unidad_logica|salida~24_combout\,
	datad => \inst|unidad_logica|aux\(9),
	combout => \inst|unidad_logica|salida~26_combout\);

-- Location: FF_X28_Y14_N1
\inst|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(9));

-- Location: LCCOMB_X28_Y14_N26
\inst|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|unidad_logica|salida\(9) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|unidad_logica|salida\(9),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux6~1_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux6~3_combout\) # ((\inst|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~3_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux6~1_combout\,
	datad => \inst|Mux6~2_combout\,
	combout => \inst|Mux6~4_combout\);

-- Location: LCCOMB_X28_Y13_N6
\inst|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~28_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~27_combout\ = (\A[8]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[8]~input_o\ & (((\B[8]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|Mux17~0_combout\,
	datac => \A[8]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~27_combout\);

-- Location: FF_X28_Y14_N21
\inst|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[8]~29_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(8));

-- Location: LCCOMB_X28_Y14_N16
\inst|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~29_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~27_combout\ & (\inst|unidad_logica|salida~28_combout\)) # (!\inst|unidad_logica|salida~27_combout\ & ((\inst|unidad_logica|aux\(8)))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (((\inst|unidad_logica|salida~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~28_combout\,
	datac => \inst|unidad_logica|salida~27_combout\,
	datad => \inst|unidad_logica|aux\(8),
	combout => \inst|unidad_logica|salida~29_combout\);

-- Location: FF_X28_Y14_N17
\inst|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(8));

-- Location: LCCOMB_X26_Y16_N12
\inst|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~8_combout\ = (\inst|unidad_logica|salida\(8) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inst|unidad_logica|salida\(8),
	combout => \inst|Mux7~8_combout\);

-- Location: LCCOMB_X22_Y13_N6
\inst|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = (\inst|Mux7~12_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\) # (!\inst|Mux7~3_combout\)))) # (!\inst|Mux7~12_combout\ & (\inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & 
-- ((\inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\,
	datac => \inst|Mux7~12_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux7~6_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~7_combout\ = (\inst|Mux7~2_combout\ & ((\inst|Mux7~6_combout\ & (!\inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\)) # (!\inst|Mux7~6_combout\ & ((\inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\))))) # (!\inst|Mux7~2_combout\ & 
-- (((\inst|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	datac => \inst|Mux7~2_combout\,
	datad => \inst|Mux7~6_combout\,
	combout => \inst|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst|barrel_shifters|aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[8]~feeder_combout\ = \A[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[7]~input_o\,
	combout => \inst|barrel_shifters|aux[8]~feeder_combout\);

-- Location: FF_X24_Y16_N15
\inst|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(8));

-- Location: FF_X24_Y16_N25
\inst|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X24_Y16_N24
\inst|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~9_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux7~4_combout\ & (\inst|barrel_shifters|salShifters\(8) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|barrel_shifters|salShifters\(8),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux7~9_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~10_combout\ = (\inst|Mux7~5_combout\ & (((\inst|Mux7~7_combout\)))) # (!\inst|Mux7~5_combout\ & ((\inst|Mux7~8_combout\) # ((\inst|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datab => \inst|Mux7~7_combout\,
	datac => \inst|Mux7~5_combout\,
	datad => \inst|Mux7~9_combout\,
	combout => \inst|Mux7~10_combout\);

-- Location: LCCOMB_X26_Y13_N8
\inst|unidad_aritmetica|suma|Sfaux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|Sfaux~1_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	combout => \inst|unidad_aritmetica|suma|Sfaux~1_combout\);

-- Location: LCCOMB_X26_Y13_N26
\inst|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~11_combout\ = (\inst|Mux16~0_combout\ & (\inst|Mux17~0_combout\ & (\inst|unidad_aritmetica|suma|Sfaux~1_combout\ $ (!\inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	combout => \inst|Mux7~11_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|Mux7~5_combout\ & ((\inst|unidad_aritmetica|Mux16~0_combout\) # ((\inst|Mux7~11_combout\)))) # (!\inst|Mux7~5_combout\ & (((\inst|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux16~0_combout\,
	datab => \inst|Mux7~4_combout\,
	datac => \inst|Mux7~11_combout\,
	datad => \inst|Mux7~5_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = (!\inst|Mux7~5_combout\ & ((\sel[2]~input_o\) # (\inst|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|Mux11~0_combout\,
	datad => \inst|Mux7~5_combout\,
	combout => \inst|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y13_N8
\inst|barrel_shifters|aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[7]~feeder_combout\ = \A[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[6]~input_o\,
	combout => \inst|barrel_shifters|aux[7]~feeder_combout\);

-- Location: FF_X28_Y13_N9
\inst|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(7));

-- Location: FF_X28_Y13_N31
\inst|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X28_Y13_N0
\inst|unidad_logica|salida~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~30_combout\ = (\A[7]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[7]~input_o\ & (((\B[7]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~30_combout\);

-- Location: FF_X29_Y14_N15
\inst|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[7]~27_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(7));

-- Location: LCCOMB_X28_Y13_N14
\inst|unidad_logica|salida~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~31_combout\ = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \inst|unidad_logica|salida~31_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst|unidad_logica|salida~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~32_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~30_combout\ & ((\inst|unidad_logica|salida~31_combout\))) # (!\inst|unidad_logica|salida~30_combout\ & (\inst|unidad_logica|aux\(7))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (\inst|unidad_logica|salida~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~30_combout\,
	datac => \inst|unidad_logica|aux\(7),
	datad => \inst|unidad_logica|salida~31_combout\,
	combout => \inst|unidad_logica|salida~32_combout\);

-- Location: FF_X28_Y14_N9
\inst|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(7));

-- Location: LCCOMB_X28_Y13_N30
\inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & ((\inst|unidad_logica|salida\(7)))) # (!\inst|Mux11~0_combout\ & (\inst|barrel_shifters|salShifters\(7))))) # (!\inst|Mux11~1_combout\ & (\inst|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~1_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|barrel_shifters|salShifters\(7),
	datad => \inst|unidad_logica|salida\(7),
	combout => \inst|Mux8~2_combout\);

-- Location: LCCOMB_X26_Y8_N12
\inst|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~0_combout\ = (\B[14]~input_o\) # ((\B[13]~input_o\) # ((!\A[7]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y5_N30
\inst|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~2_combout\ = (\B[8]~input_o\) # ((\B[6]~input_o\) # ((\B[5]~input_o\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y5_N0
\inst|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~1_combout\ = (\B[12]~input_o\) # ((\B[10]~input_o\) # ((\B[11]~input_o\) # (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y7_N28
\inst|unidad_aritmetica|divi|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~3_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y7_N12
\inst|unidad_aritmetica|divi|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~4_combout\ = (\inst|unidad_aritmetica|divi|LessThan0~0_combout\) # ((\inst|unidad_aritmetica|divi|LessThan0~2_combout\) # ((\inst|unidad_aritmetica|divi|LessThan0~1_combout\) # 
-- (\inst|unidad_aritmetica|divi|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~2_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~3_combout\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\)) # (!\inst|Mux16~0_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst|Mux17~0_combout\ & ((\inst|Mux8~0_combout\ & ((!\inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\))) # (!\inst|Mux8~0_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\)))) # (!\inst|Mux17~0_combout\ & 
-- (((\inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux8~2_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\))) # (!\inst|Mux8~2_combout\ & (\inst|Mux8~1_combout\)))) # (!\inst|Mux7~5_combout\ & (\inst|Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux8~2_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\,
	combout => \inst|Mux8~3_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = (\inst|Mux8~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux8~3_combout\,
	combout => \inst|Mux8~4_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\)) # (!\inst|Mux16~0_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X30_Y7_N0
\inst|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~0_combout\ = (\A[7]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[7]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~1\ = CARRY((\A[7]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X30_Y7_N2
\inst|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~1\))
-- \inst|unidad_aritmetica|divi|Add0~3\ = CARRY((\B[1]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X30_Y7_N4
\inst|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~4_combout\ = (\B[2]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\B[2]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~5\ = CARRY((!\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X30_Y7_N6
\inst|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~5\))
-- \inst|unidad_aritmetica|divi|Add0~7\ = CARRY((\B[3]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X30_Y7_N8
\inst|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~8_combout\ = (\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\B[4]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~9\ = CARRY((!\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X30_Y7_N10
\inst|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~9\))
-- \inst|unidad_aritmetica|divi|Add0~11\ = CARRY((\B[5]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X30_Y7_N12
\inst|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~12_combout\ = (\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~11\ & VCC)) # (!\B[6]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~11\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~13\ = CARRY((!\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|unidad_aritmetica|divi|Add0~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~13\);

-- Location: LCCOMB_X30_Y7_N14
\inst|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~14_combout\ = (\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~13\))
-- \inst|unidad_aritmetica|divi|Add0~15\ = CARRY((\B[7]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~13\,
	combout => \inst|unidad_aritmetica|divi|Add0~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~15\);

-- Location: LCCOMB_X30_Y7_N16
\inst|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~16_combout\ = (\B[8]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~15\ & VCC)) # (!\B[8]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~15\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~17\ = CARRY((!\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~15\,
	combout => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~17\);

-- Location: LCCOMB_X30_Y7_N18
\inst|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~18_combout\ = (\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~17\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~17\))
-- \inst|unidad_aritmetica|divi|Add0~19\ = CARRY((\B[9]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~17\,
	combout => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~19\);

-- Location: LCCOMB_X30_Y7_N20
\inst|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~20_combout\ = (\B[10]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~19\ & VCC)) # (!\B[10]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~19\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~21\ = CARRY((!\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~19\,
	combout => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~21\);

-- Location: LCCOMB_X30_Y7_N22
\inst|unidad_aritmetica|divi|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~21\) # (GND))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~21\))
-- \inst|unidad_aritmetica|divi|Add0~23\ = CARRY((\B[11]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~21\,
	combout => \inst|unidad_aritmetica|divi|Add0~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~23\);

-- Location: LCCOMB_X30_Y7_N24
\inst|unidad_aritmetica|divi|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~24_combout\ = (\B[12]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~23\ & VCC)) # (!\B[12]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~23\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add0~25\ = CARRY((!\B[12]~input_o\ & !\inst|unidad_aritmetica|divi|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~23\,
	combout => \inst|unidad_aritmetica|divi|Add0~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~25\);

-- Location: LCCOMB_X30_Y7_N26
\inst|unidad_aritmetica|divi|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~26_combout\ = \B[13]~input_o\ $ (!\inst|unidad_aritmetica|divi|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	cin => \inst|unidad_aritmetica|divi|Add0~25\,
	combout => \inst|unidad_aritmetica|divi|Add0~26_combout\);

-- Location: LCCOMB_X30_Y6_N0
\inst|unidad_aritmetica|divi|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~28_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~26_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~28_combout\);

-- Location: LCCOMB_X29_Y7_N20
\inst|unidad_aritmetica|divi|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~29_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~24_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~29_combout\);

-- Location: LCCOMB_X29_Y7_N6
\inst|unidad_aritmetica|divi|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~30_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~22_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~30_combout\);

-- Location: LCCOMB_X26_Y7_N14
\inst|unidad_aritmetica|divi|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~31_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~31_combout\);

-- Location: LCCOMB_X26_Y7_N0
\inst|unidad_aritmetica|divi|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~32_combout\ = (\inst|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~32_combout\);

-- Location: LCCOMB_X26_Y7_N26
\inst|unidad_aritmetica|divi|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~33_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~33_combout\);

-- Location: LCCOMB_X29_Y7_N8
\inst|unidad_aritmetica|divi|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~34_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~34_combout\);

-- Location: LCCOMB_X29_Y7_N26
\inst|unidad_aritmetica|divi|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~35_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~35_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst|unidad_aritmetica|divi|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~36_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~36_combout\);

-- Location: LCCOMB_X29_Y7_N14
\inst|unidad_aritmetica|divi|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~37_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~8_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~37_combout\);

-- Location: LCCOMB_X26_Y7_N16
\inst|unidad_aritmetica|divi|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~38_combout\ = (\inst|unidad_aritmetica|divi|Add0~6_combout\ & !\inst|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|Add0~6_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~38_combout\);

-- Location: LCCOMB_X29_Y7_N4
\inst|unidad_aritmetica|divi|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~39_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~39_combout\);

-- Location: LCCOMB_X29_Y7_N2
\inst|unidad_aritmetica|divi|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~40_combout\ = (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~40_combout\);

-- Location: LCCOMB_X30_Y6_N22
\inst|unidad_aritmetica|divi|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & (\A[7]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~0_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~41_combout\);

-- Location: LCCOMB_X31_Y7_N2
\inst|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((\B[0]~input_o\ & !\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y7_N4
\inst|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~41_combout\ & !\inst|unidad_aritmetica|divi|LessThan1~1_cout\)) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~41_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y7_N6
\inst|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst|unidad_aritmetica|divi|Add0~40_combout\))) # (!\B[2]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~40_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y7_N8
\inst|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~39_combout\ & !\inst|unidad_aritmetica|divi|LessThan1~5_cout\)) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~39_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y7_N10
\inst|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~38_combout\ & (\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~7_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~38_combout\ & ((\B[4]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y7_N12
\inst|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~37_combout\ & !\inst|unidad_aritmetica|divi|LessThan1~9_cout\)) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~37_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y7_N14
\inst|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~36_combout\ & (\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~11_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~36_combout\ & ((\B[6]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y7_N16
\inst|unidad_aritmetica|divi|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~15_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~35_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\B[7]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~35_combout\ & (!\B[7]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~15_cout\);

-- Location: LCCOMB_X31_Y7_N18
\inst|unidad_aritmetica|divi|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~34_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~34_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~17_cout\);

-- Location: LCCOMB_X31_Y7_N20
\inst|unidad_aritmetica|divi|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~19_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~33_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~17_cout\) # (!\B[9]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~33_combout\ & (!\B[9]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~19_cout\);

-- Location: LCCOMB_X31_Y7_N22
\inst|unidad_aritmetica|divi|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~21_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~32_combout\ & (\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~19_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~32_combout\ & ((\B[10]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~21_cout\);

-- Location: LCCOMB_X31_Y7_N24
\inst|unidad_aritmetica|divi|LessThan1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~23_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~31_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~21_cout\) # (!\B[11]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~31_combout\ & (!\B[11]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~23_cout\);

-- Location: LCCOMB_X31_Y7_N26
\inst|unidad_aritmetica|divi|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~25_cout\ = CARRY((\B[12]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan1~23_cout\) # (!\inst|unidad_aritmetica|divi|Add0~30_combout\))) # (!\B[12]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~30_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~30_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~25_cout\);

-- Location: LCCOMB_X31_Y7_N28
\inst|unidad_aritmetica|divi|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~27_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~29_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~25_cout\) # (!\B[13]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~29_combout\ & (!\B[13]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~29_combout\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~27_cout\);

-- Location: LCCOMB_X31_Y7_N30
\inst|unidad_aritmetica|divi|LessThan1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add0~28_combout\) # (!\inst|unidad_aritmetica|divi|LessThan1~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan1~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add0~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan1~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan1~28_combout\);

-- Location: LCCOMB_X24_Y12_N14
\inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = (\inst|Mux9~0_combout\ & (((!\inst|Mux17~0_combout\)) # (!\inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\))) # (!\inst|Mux9~0_combout\ & (((\inst|Mux17~0_combout\ & !\inst|unidad_aritmetica|divi|LessThan1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|Mux9~1_combout\);

-- Location: LCCOMB_X29_Y13_N14
\inst|unidad_logica|salida~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~34_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_logica|salida~34_combout\);

-- Location: LCCOMB_X29_Y13_N18
\inst|unidad_logica|salida~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~33_combout\ = (\A[6]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[6]~input_o\ & (((\inst|Mux16~0_combout\ & \B[6]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \A[6]~input_o\,
	datac => \inst|Mux17~0_combout\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_logica|salida~33_combout\);

-- Location: FF_X30_Y14_N7
\inst|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[6]~25_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(6));

-- Location: LCCOMB_X30_Y14_N26
\inst|unidad_logica|salida~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~35_combout\ = (\inst|unidad_logica|salida~33_combout\ & ((\inst|unidad_logica|salida~34_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~33_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~34_combout\,
	datab => \inst|unidad_logica|salida~33_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(6),
	combout => \inst|unidad_logica|salida~35_combout\);

-- Location: FF_X30_Y14_N27
\inst|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(6));

-- Location: LCCOMB_X29_Y13_N30
\inst|barrel_shifters|aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[6]~feeder_combout\ = \A[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	combout => \inst|barrel_shifters|aux[6]~feeder_combout\);

-- Location: FF_X29_Y13_N31
\inst|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(6));

-- Location: FF_X29_Y13_N7
\inst|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X29_Y13_N6
\inst|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~2_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & (\inst|unidad_logica|salida\(6))) # (!\inst|Mux11~0_combout\ & ((\inst|barrel_shifters|salShifters\(6)))))) # (!\inst|Mux11~1_combout\ & (((\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(6),
	datab => \inst|Mux11~1_combout\,
	datac => \inst|barrel_shifters|salShifters\(6),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux9~2_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\)) # (!\inst|Mux9~2_combout\ & ((\inst|Mux9~1_combout\))))) # (!\inst|Mux7~5_combout\ & (((\inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\,
	datac => \inst|Mux9~1_combout\,
	datad => \inst|Mux9~2_combout\,
	combout => \inst|Mux9~3_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~4_combout\ = (\inst|Mux9~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux9~3_combout\,
	combout => \inst|Mux9~4_combout\);

-- Location: LCCOMB_X24_Y12_N12
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\)) # (!\inst|Mux16~0_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X28_Y7_N4
\inst|unidad_aritmetica|divi|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~24_combout\ = (\A[6]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[6]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add1~25\ = CARRY((\A[6]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add1~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~25\);

-- Location: LCCOMB_X28_Y7_N6
\inst|unidad_aritmetica|divi|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~26_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~41_combout\ & (!\inst|unidad_aritmetica|divi|Add1~25\)) # (!\inst|unidad_aritmetica|divi|Add0~41_combout\ & ((\inst|unidad_aritmetica|divi|Add1~25\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~41_combout\ & (\inst|unidad_aritmetica|divi|Add1~25\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add0~41_combout\ & (!\inst|unidad_aritmetica|divi|Add1~25\))))
-- \inst|unidad_aritmetica|divi|Add1~27\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~25\) # (!\inst|unidad_aritmetica|divi|Add0~41_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~41_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~25\,
	combout => \inst|unidad_aritmetica|divi|Add1~26_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~27\);

-- Location: LCCOMB_X28_Y7_N8
\inst|unidad_aritmetica|divi|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~28_combout\ = ((\inst|unidad_aritmetica|divi|Add0~40_combout\ $ (\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~27\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~29\ = CARRY((\inst|unidad_aritmetica|divi|Add0~40_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~27\) # (!\B[2]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~40_combout\ & (!\B[2]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~40_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~27\,
	combout => \inst|unidad_aritmetica|divi|Add1~28_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~29\);

-- Location: LCCOMB_X28_Y7_N10
\inst|unidad_aritmetica|divi|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~30_combout\ = (\inst|unidad_aritmetica|divi|Add0~39_combout\ & ((\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~29\)) # (!\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~29\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add0~39_combout\ & ((\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~29\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~29\))))
-- \inst|unidad_aritmetica|divi|Add1~31\ = CARRY((\inst|unidad_aritmetica|divi|Add0~39_combout\ & (\B[3]~input_o\ & !\inst|unidad_aritmetica|divi|Add1~29\)) # (!\inst|unidad_aritmetica|divi|Add0~39_combout\ & ((\B[3]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~39_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~29\,
	combout => \inst|unidad_aritmetica|divi|Add1~30_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~31\);

-- Location: LCCOMB_X28_Y7_N12
\inst|unidad_aritmetica|divi|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~32_combout\ = ((\inst|unidad_aritmetica|divi|Add0~38_combout\ $ (\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~31\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~33\ = CARRY((\inst|unidad_aritmetica|divi|Add0~38_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~31\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~38_combout\ & (!\B[4]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~31\,
	combout => \inst|unidad_aritmetica|divi|Add1~32_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~33\);

-- Location: LCCOMB_X28_Y7_N14
\inst|unidad_aritmetica|divi|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~34_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~37_combout\ & (!\inst|unidad_aritmetica|divi|Add1~33\)) # (!\inst|unidad_aritmetica|divi|Add0~37_combout\ & ((\inst|unidad_aritmetica|divi|Add1~33\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~37_combout\ & (\inst|unidad_aritmetica|divi|Add1~33\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add0~37_combout\ & (!\inst|unidad_aritmetica|divi|Add1~33\))))
-- \inst|unidad_aritmetica|divi|Add1~35\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~33\) # (!\inst|unidad_aritmetica|divi|Add0~37_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~37_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~33\,
	combout => \inst|unidad_aritmetica|divi|Add1~34_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~35\);

-- Location: LCCOMB_X28_Y7_N16
\inst|unidad_aritmetica|divi|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~36_combout\ = ((\inst|unidad_aritmetica|divi|Add0~36_combout\ $ (\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~35\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~37\ = CARRY((\inst|unidad_aritmetica|divi|Add0~36_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~35\) # (!\B[6]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~36_combout\ & (!\B[6]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~35\,
	combout => \inst|unidad_aritmetica|divi|Add1~36_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~37\);

-- Location: LCCOMB_X28_Y7_N18
\inst|unidad_aritmetica|divi|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~38_combout\ = (\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~35_combout\ & (!\inst|unidad_aritmetica|divi|Add1~37\)) # (!\inst|unidad_aritmetica|divi|Add0~35_combout\ & ((\inst|unidad_aritmetica|divi|Add1~37\) # 
-- (GND))))) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~35_combout\ & (\inst|unidad_aritmetica|divi|Add1~37\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add0~35_combout\ & (!\inst|unidad_aritmetica|divi|Add1~37\))))
-- \inst|unidad_aritmetica|divi|Add1~39\ = CARRY((\B[7]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~37\) # (!\inst|unidad_aritmetica|divi|Add0~35_combout\))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~35_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~35_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~37\,
	combout => \inst|unidad_aritmetica|divi|Add1~38_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~39\);

-- Location: LCCOMB_X28_Y7_N20
\inst|unidad_aritmetica|divi|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~40_combout\ = ((\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add0~34_combout\ $ (\inst|unidad_aritmetica|divi|Add1~39\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~41\ = CARRY((\B[8]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~34_combout\ & !\inst|unidad_aritmetica|divi|Add1~39\)) # (!\B[8]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~34_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~34_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~39\,
	combout => \inst|unidad_aritmetica|divi|Add1~40_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~41\);

-- Location: LCCOMB_X28_Y7_N22
\inst|unidad_aritmetica|divi|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~42_combout\ = (\inst|unidad_aritmetica|divi|Add0~33_combout\ & ((\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~41\)) # (!\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~41\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add0~33_combout\ & ((\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~41\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~41\))))
-- \inst|unidad_aritmetica|divi|Add1~43\ = CARRY((\inst|unidad_aritmetica|divi|Add0~33_combout\ & (\B[9]~input_o\ & !\inst|unidad_aritmetica|divi|Add1~41\)) # (!\inst|unidad_aritmetica|divi|Add0~33_combout\ & ((\B[9]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~41\,
	combout => \inst|unidad_aritmetica|divi|Add1~42_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~43\);

-- Location: LCCOMB_X28_Y7_N24
\inst|unidad_aritmetica|divi|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~44_combout\ = ((\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add0~32_combout\ $ (\inst|unidad_aritmetica|divi|Add1~43\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~45\ = CARRY((\B[10]~input_o\ & (\inst|unidad_aritmetica|divi|Add0~32_combout\ & !\inst|unidad_aritmetica|divi|Add1~43\)) # (!\B[10]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~32_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~32_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~43\,
	combout => \inst|unidad_aritmetica|divi|Add1~44_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~45\);

-- Location: LCCOMB_X28_Y7_N26
\inst|unidad_aritmetica|divi|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~46_combout\ = (\inst|unidad_aritmetica|divi|Add0~31_combout\ & ((\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~45\)) # (!\B[11]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~45\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add0~31_combout\ & ((\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~45\) # (GND))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~45\))))
-- \inst|unidad_aritmetica|divi|Add1~47\ = CARRY((\inst|unidad_aritmetica|divi|Add0~31_combout\ & (\B[11]~input_o\ & !\inst|unidad_aritmetica|divi|Add1~45\)) # (!\inst|unidad_aritmetica|divi|Add0~31_combout\ & ((\B[11]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~45\,
	combout => \inst|unidad_aritmetica|divi|Add1~46_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~47\);

-- Location: LCCOMB_X28_Y7_N28
\inst|unidad_aritmetica|divi|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~48_combout\ = ((\inst|unidad_aritmetica|divi|Add0~30_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~47\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~49\ = CARRY((\inst|unidad_aritmetica|divi|Add0~30_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~47\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~30_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~47\,
	combout => \inst|unidad_aritmetica|divi|Add1~48_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~49\);

-- Location: LCCOMB_X28_Y7_N30
\inst|unidad_aritmetica|divi|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~50_combout\ = \inst|unidad_aritmetica|divi|Add0~29_combout\ $ (\inst|unidad_aritmetica|divi|Add1~49\ $ (!\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add0~29_combout\,
	datad => \B[13]~input_o\,
	cin => \inst|unidad_aritmetica|divi|Add1~49\,
	combout => \inst|unidad_aritmetica|divi|Add1~50_combout\);

-- Location: LCCOMB_X29_Y7_N12
\inst|unidad_aritmetica|divi|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~54_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~24_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~50_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~24_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~54_combout\);

-- Location: LCCOMB_X29_Y7_N30
\inst|unidad_aritmetica|divi|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~55_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~22_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~48_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~22_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~55_combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst|unidad_aritmetica|divi|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~56_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|unidad_aritmetica|divi|Add0~20_combout\))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~46_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~56_combout\);

-- Location: LCCOMB_X26_Y7_N30
\inst|unidad_aritmetica|divi|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~57_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|unidad_aritmetica|divi|Add0~18_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~44_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~57_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst|unidad_aritmetica|divi|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~58_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~16_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~42_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~58_combout\);

-- Location: LCCOMB_X29_Y7_N0
\inst|unidad_aritmetica|divi|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~59_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|unidad_aritmetica|divi|Add0~14_combout\))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~40_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~59_combout\);

-- Location: LCCOMB_X29_Y7_N18
\inst|unidad_aritmetica|divi|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~60_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|unidad_aritmetica|divi|Add0~12_combout\))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~12_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~38_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~60_combout\);

-- Location: LCCOMB_X29_Y7_N28
\inst|unidad_aritmetica|divi|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~61_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add0~10_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add0~10_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~36_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~61_combout\);

-- Location: LCCOMB_X29_Y7_N22
\inst|unidad_aritmetica|divi|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~62_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|unidad_aritmetica|divi|Add0~8_combout\))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~34_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~62_combout\);

-- Location: LCCOMB_X26_Y7_N6
\inst|unidad_aritmetica|divi|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~63_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|unidad_aritmetica|divi|Add0~6_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|unidad_aritmetica|divi|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~32_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~6_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~63_combout\);

-- Location: LCCOMB_X29_Y7_N24
\inst|unidad_aritmetica|divi|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~64_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~4_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~30_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~64_combout\);

-- Location: LCCOMB_X29_Y7_N10
\inst|unidad_aritmetica|divi|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~65_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|unidad_aritmetica|divi|Add0~2_combout\)))) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~28_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~65_combout\);

-- Location: LCCOMB_X28_Y7_N0
\inst|unidad_aritmetica|divi|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~52_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & ((\inst|unidad_aritmetica|divi|Add0~41_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~26_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~41_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~52_combout\);

-- Location: LCCOMB_X28_Y7_N2
\inst|unidad_aritmetica|divi|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~53_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & (\A[6]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan1~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|LessThan1~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~24_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~53_combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((\B[0]~input_o\ & !\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X24_Y7_N2
\inst|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~53_combout\ & !\inst|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~53_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~53_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X24_Y7_N4
\inst|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~52_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~52_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~52_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X24_Y7_N6
\inst|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~65_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~65_combout\ & (!\B[3]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~65_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X24_Y7_N8
\inst|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan2~7_cout\) # (!\inst|unidad_aritmetica|divi|Add1~64_combout\))) # (!\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~64_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~64_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X24_Y7_N10
\inst|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~63_combout\ & !\inst|unidad_aritmetica|divi|LessThan2~9_cout\)) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~63_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~63_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X24_Y7_N12
\inst|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan2~11_cout\) # (!\inst|unidad_aritmetica|divi|Add1~62_combout\))) # (!\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~62_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~62_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X24_Y7_N14
\inst|unidad_aritmetica|divi|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~15_cout\ = CARRY((\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~61_combout\ & !\inst|unidad_aritmetica|divi|LessThan2~13_cout\)) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~61_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~61_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~15_cout\);

-- Location: LCCOMB_X24_Y7_N16
\inst|unidad_aritmetica|divi|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~60_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~60_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~60_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~17_cout\);

-- Location: LCCOMB_X24_Y7_N18
\inst|unidad_aritmetica|divi|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~19_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~59_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~17_cout\) # (!\B[9]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~59_combout\ & (!\B[9]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~59_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~19_cout\);

-- Location: LCCOMB_X24_Y7_N20
\inst|unidad_aritmetica|divi|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~21_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~58_combout\ & (\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~19_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~58_combout\ & ((\B[10]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~58_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~21_cout\);

-- Location: LCCOMB_X24_Y7_N22
\inst|unidad_aritmetica|divi|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~23_cout\ = CARRY((\B[11]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~57_combout\ & !\inst|unidad_aritmetica|divi|LessThan2~21_cout\)) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~57_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~57_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~23_cout\);

-- Location: LCCOMB_X24_Y7_N24
\inst|unidad_aritmetica|divi|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~25_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~56_combout\ & (\B[12]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~23_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~56_combout\ & ((\B[12]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~56_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~25_cout\);

-- Location: LCCOMB_X24_Y7_N26
\inst|unidad_aritmetica|divi|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~27_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~55_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~25_cout\) # (!\B[13]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~55_combout\ & (!\B[13]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~55_combout\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~27_cout\);

-- Location: LCCOMB_X24_Y7_N28
\inst|unidad_aritmetica|divi|LessThan2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~54_combout\) # (!\inst|unidad_aritmetica|divi|LessThan2~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan2~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add1~54_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan2~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan2~28_combout\);

-- Location: LCCOMB_X24_Y12_N22
\inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (\inst|Mux10~0_combout\ & (((!\inst|Mux17~0_combout\)) # (!\inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\))) # (!\inst|Mux10~0_combout\ & (((\inst|Mux17~0_combout\ & !\inst|unidad_aritmetica|divi|LessThan2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: LCCOMB_X28_Y13_N4
\inst|barrel_shifters|aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[5]~feeder_combout\ = \A[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	combout => \inst|barrel_shifters|aux[5]~feeder_combout\);

-- Location: FF_X28_Y13_N5
\inst|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(5));

-- Location: FF_X28_Y13_N25
\inst|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X28_Y13_N2
\inst|unidad_logica|salida~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~36_combout\ = (\A[5]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[5]~input_o\ & (((\inst|Mux16~0_combout\ & \B[5]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_logica|salida~36_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst|unidad_logica|salida~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~37_combout\ = (\A[5]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_logica|salida~37_combout\);

-- Location: FF_X28_Y14_N7
\inst|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[5]~23_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(5));

-- Location: LCCOMB_X28_Y14_N10
\inst|unidad_logica|salida~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~38_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~36_combout\ & (\inst|unidad_logica|salida~37_combout\)) # (!\inst|unidad_logica|salida~36_combout\ & ((\inst|unidad_logica|aux\(5)))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (\inst|unidad_logica|salida~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~36_combout\,
	datac => \inst|unidad_logica|salida~37_combout\,
	datad => \inst|unidad_logica|aux\(5),
	combout => \inst|unidad_logica|salida~38_combout\);

-- Location: FF_X28_Y14_N11
\inst|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(5));

-- Location: LCCOMB_X28_Y13_N24
\inst|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~2_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & ((\inst|unidad_logica|salida\(5)))) # (!\inst|Mux11~0_combout\ & (\inst|barrel_shifters|salShifters\(5))))) # (!\inst|Mux11~1_combout\ & (\inst|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~1_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|barrel_shifters|salShifters\(5),
	datad => \inst|unidad_logica|salida\(5),
	combout => \inst|Mux10~2_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux10~2_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\)) # (!\inst|Mux10~2_combout\ & ((\inst|Mux10~1_combout\))))) # (!\inst|Mux7~5_combout\ & 
-- (((\inst|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux10~1_combout\,
	datad => \inst|Mux10~2_combout\,
	combout => \inst|Mux10~3_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~4_combout\ = (\inst|Mux10~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux10~3_combout\,
	combout => \inst|Mux10~4_combout\);

-- Location: LCCOMB_X25_Y13_N14
\inst|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~2_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\)) # (!\inst|Mux16~0_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\,
	combout => \inst|Mux11~2_combout\);

-- Location: LCCOMB_X25_Y7_N0
\inst|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~0_combout\ = (\A[5]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[5]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add2~1\ = CARRY((\A[5]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X25_Y7_N2
\inst|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|unidad_aritmetica|divi|Add1~53_combout\ & ((\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~1\)) # (!\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~1\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add1~53_combout\ & ((\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~1\))))
-- \inst|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|unidad_aritmetica|divi|Add1~53_combout\ & (\B[1]~input_o\ & !\inst|unidad_aritmetica|divi|Add2~1\)) # (!\inst|unidad_aritmetica|divi|Add1~53_combout\ & ((\B[1]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~53_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X25_Y7_N4
\inst|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~4_combout\ = ((\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~52_combout\ $ (\inst|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~5\ = CARRY((\B[2]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~52_combout\ & !\inst|unidad_aritmetica|divi|Add2~3\)) # (!\B[2]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~52_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~52_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X25_Y7_N6
\inst|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~65_combout\ & (!\inst|unidad_aritmetica|divi|Add2~5\)) # (!\inst|unidad_aritmetica|divi|Add1~65_combout\ & ((\inst|unidad_aritmetica|divi|Add2~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~65_combout\ & (\inst|unidad_aritmetica|divi|Add2~5\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add1~65_combout\ & (!\inst|unidad_aritmetica|divi|Add2~5\))))
-- \inst|unidad_aritmetica|divi|Add2~7\ = CARRY((\B[3]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add2~5\) # (!\inst|unidad_aritmetica|divi|Add1~65_combout\))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~65_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~65_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X25_Y7_N8
\inst|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~8_combout\ = ((\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~64_combout\ $ (\inst|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~9\ = CARRY((\B[4]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~64_combout\ & !\inst|unidad_aritmetica|divi|Add2~7\)) # (!\B[4]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~64_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~64_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X25_Y7_N10
\inst|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|unidad_aritmetica|divi|Add1~63_combout\ & ((\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~9\)) # (!\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~9\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add1~63_combout\ & ((\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~9\))))
-- \inst|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|unidad_aritmetica|divi|Add1~63_combout\ & (\B[5]~input_o\ & !\inst|unidad_aritmetica|divi|Add2~9\)) # (!\inst|unidad_aritmetica|divi|Add1~63_combout\ & ((\B[5]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~63_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X25_Y7_N12
\inst|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~12_combout\ = ((\inst|unidad_aritmetica|divi|Add1~62_combout\ $ (\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~11\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~13\ = CARRY((\inst|unidad_aritmetica|divi|Add1~62_combout\ & ((!\inst|unidad_aritmetica|divi|Add2~11\) # (!\B[6]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~62_combout\ & (!\B[6]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~62_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|unidad_aritmetica|divi|Add2~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~13\);

-- Location: LCCOMB_X25_Y7_N14
\inst|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|unidad_aritmetica|divi|Add1~61_combout\ & ((\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~13\)) # (!\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~13\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add1~61_combout\ & ((\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~13\))))
-- \inst|unidad_aritmetica|divi|Add2~15\ = CARRY((\inst|unidad_aritmetica|divi|Add1~61_combout\ & (\B[7]~input_o\ & !\inst|unidad_aritmetica|divi|Add2~13\)) # (!\inst|unidad_aritmetica|divi|Add1~61_combout\ & ((\B[7]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~61_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~13\,
	combout => \inst|unidad_aritmetica|divi|Add2~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~15\);

-- Location: LCCOMB_X25_Y7_N16
\inst|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~16_combout\ = ((\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~60_combout\ $ (\inst|unidad_aritmetica|divi|Add2~15\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~17\ = CARRY((\B[8]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~60_combout\ & !\inst|unidad_aritmetica|divi|Add2~15\)) # (!\B[8]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~60_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~60_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~15\,
	combout => \inst|unidad_aritmetica|divi|Add2~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~17\);

-- Location: LCCOMB_X25_Y7_N18
\inst|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|unidad_aritmetica|divi|Add1~59_combout\ & ((\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~17\)) # (!\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~17\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add1~59_combout\ & ((\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~17\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~17\))))
-- \inst|unidad_aritmetica|divi|Add2~19\ = CARRY((\inst|unidad_aritmetica|divi|Add1~59_combout\ & (\B[9]~input_o\ & !\inst|unidad_aritmetica|divi|Add2~17\)) # (!\inst|unidad_aritmetica|divi|Add1~59_combout\ & ((\B[9]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~59_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~17\,
	combout => \inst|unidad_aritmetica|divi|Add2~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~19\);

-- Location: LCCOMB_X25_Y7_N20
\inst|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~20_combout\ = ((\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~58_combout\ $ (\inst|unidad_aritmetica|divi|Add2~19\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~21\ = CARRY((\B[10]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~58_combout\ & !\inst|unidad_aritmetica|divi|Add2~19\)) # (!\B[10]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~58_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~58_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~19\,
	combout => \inst|unidad_aritmetica|divi|Add2~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~21\);

-- Location: LCCOMB_X25_Y7_N22
\inst|unidad_aritmetica|divi|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~57_combout\ & (!\inst|unidad_aritmetica|divi|Add2~21\)) # (!\inst|unidad_aritmetica|divi|Add1~57_combout\ & ((\inst|unidad_aritmetica|divi|Add2~21\) # 
-- (GND))))) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~57_combout\ & (\inst|unidad_aritmetica|divi|Add2~21\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add1~57_combout\ & (!\inst|unidad_aritmetica|divi|Add2~21\))))
-- \inst|unidad_aritmetica|divi|Add2~23\ = CARRY((\B[11]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add2~21\) # (!\inst|unidad_aritmetica|divi|Add1~57_combout\))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~57_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~57_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~21\,
	combout => \inst|unidad_aritmetica|divi|Add2~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~23\);

-- Location: LCCOMB_X25_Y7_N24
\inst|unidad_aritmetica|divi|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~24_combout\ = ((\inst|unidad_aritmetica|divi|Add1~56_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~23\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~25\ = CARRY((\inst|unidad_aritmetica|divi|Add1~56_combout\ & ((!\inst|unidad_aritmetica|divi|Add2~23\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~56_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~56_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~23\,
	combout => \inst|unidad_aritmetica|divi|Add2~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~25\);

-- Location: LCCOMB_X25_Y7_N26
\inst|unidad_aritmetica|divi|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~26_combout\ = \B[13]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~25\ $ (!\inst|unidad_aritmetica|divi|Add1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add1~55_combout\,
	cin => \inst|unidad_aritmetica|divi|Add2~25\,
	combout => \inst|unidad_aritmetica|divi|Add2~26_combout\);

-- Location: LCCOMB_X25_Y7_N28
\inst|unidad_aritmetica|divi|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~28_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~55_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add2~26_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~55_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~28_combout\);

-- Location: LCCOMB_X26_Y7_N10
\inst|unidad_aritmetica|divi|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~29_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~56_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~24_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~56_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~29_combout\);

-- Location: LCCOMB_X26_Y7_N28
\inst|unidad_aritmetica|divi|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~30_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~57_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~57_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~22_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~30_combout\);

-- Location: LCCOMB_X26_Y7_N22
\inst|unidad_aritmetica|divi|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~31_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~58_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~20_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~58_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~31_combout\);

-- Location: LCCOMB_X25_Y8_N4
\inst|unidad_aritmetica|divi|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~32_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~59_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~59_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~18_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~32_combout\);

-- Location: LCCOMB_X26_Y4_N0
\inst|unidad_aritmetica|divi|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~33_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~60_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add2~16_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~60_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~33_combout\);

-- Location: LCCOMB_X26_Y7_N4
\inst|unidad_aritmetica|divi|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~34_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~61_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~61_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~34_combout\);

-- Location: LCCOMB_X25_Y7_N30
\inst|unidad_aritmetica|divi|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~35_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~62_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~62_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~12_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~35_combout\);

-- Location: LCCOMB_X26_Y7_N2
\inst|unidad_aritmetica|divi|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~36_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~63_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~10_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~63_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~36_combout\);

-- Location: LCCOMB_X26_Y4_N30
\inst|unidad_aritmetica|divi|Add2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~37_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~64_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~8_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~64_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~37_combout\);

-- Location: LCCOMB_X26_Y4_N12
\inst|unidad_aritmetica|divi|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~38_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~65_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add2~6_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~65_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~38_combout\);

-- Location: LCCOMB_X24_Y7_N30
\inst|unidad_aritmetica|divi|Add2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~39_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add1~52_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~4_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~52_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~39_combout\);

-- Location: LCCOMB_X26_Y4_N6
\inst|unidad_aritmetica|divi|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~40_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|unidad_aritmetica|divi|Add1~53_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~53_combout\,
	datab => \inst|unidad_aritmetica|divi|Add2~2_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~40_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst|unidad_aritmetica|divi|Add2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & (\A[5]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~0_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~41_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((\B[0]~input_o\ & !\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X24_Y4_N2
\inst|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~41_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~41_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~41_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X24_Y4_N4
\inst|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|unidad_aritmetica|divi|Add2~40_combout\))) # (!\B[2]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~40_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X24_Y4_N6
\inst|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~39_combout\ & !\inst|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~39_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X24_Y4_N8
\inst|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~38_combout\ & (\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan3~7_cout\)) # (!\inst|unidad_aritmetica|divi|Add2~38_combout\ & ((\B[4]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X24_Y4_N10
\inst|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~37_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~9_cout\) # (!\B[5]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~37_combout\ & (!\B[5]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~37_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X24_Y4_N12
\inst|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~11_cout\) # (!\inst|unidad_aritmetica|divi|Add2~36_combout\))) # (!\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~36_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~36_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X24_Y4_N14
\inst|unidad_aritmetica|divi|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~15_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~35_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\B[7]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~35_combout\ & (!\B[7]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~15_cout\);

-- Location: LCCOMB_X24_Y4_N16
\inst|unidad_aritmetica|divi|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~34_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan3~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add2~34_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~17_cout\);

-- Location: LCCOMB_X24_Y4_N18
\inst|unidad_aritmetica|divi|LessThan3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~19_cout\ = CARRY((\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~33_combout\ & !\inst|unidad_aritmetica|divi|LessThan3~17_cout\)) # (!\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~33_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~33_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~19_cout\);

-- Location: LCCOMB_X24_Y4_N20
\inst|unidad_aritmetica|divi|LessThan3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~21_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~32_combout\ & (\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan3~19_cout\)) # (!\inst|unidad_aritmetica|divi|Add2~32_combout\ & ((\B[10]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~21_cout\);

-- Location: LCCOMB_X24_Y4_N22
\inst|unidad_aritmetica|divi|LessThan3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~23_cout\ = CARRY((\B[11]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~31_combout\ & !\inst|unidad_aritmetica|divi|LessThan3~21_cout\)) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~31_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~23_cout\);

-- Location: LCCOMB_X24_Y4_N24
\inst|unidad_aritmetica|divi|LessThan3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~25_cout\ = CARRY((\B[12]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~23_cout\) # (!\inst|unidad_aritmetica|divi|Add2~30_combout\))) # (!\B[12]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~30_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~30_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~25_cout\);

-- Location: LCCOMB_X24_Y4_N26
\inst|unidad_aritmetica|divi|LessThan3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~27_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~29_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~25_cout\) # (!\B[13]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~29_combout\ & (!\B[13]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~29_combout\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~27_cout\);

-- Location: LCCOMB_X24_Y4_N28
\inst|unidad_aritmetica|divi|LessThan3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add2~28_combout\) # (!\inst|unidad_aritmetica|divi|LessThan3~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan3~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add2~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan3~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan3~28_combout\);

-- Location: LCCOMB_X26_Y13_N22
\inst|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~3_combout\ = (\inst|Mux11~2_combout\ & (((!\inst|Mux17~0_combout\)) # (!\inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\))) # (!\inst|Mux11~2_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & \inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~2_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux11~3_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst|barrel_shifters|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[4]~feeder_combout\ = \A[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	combout => \inst|barrel_shifters|aux[4]~feeder_combout\);

-- Location: FF_X28_Y13_N27
\inst|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(4));

-- Location: FF_X28_Y13_N19
\inst|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X28_Y13_N22
\inst|unidad_logica|salida~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~39_combout\ = (\A[4]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[4]~input_o\ & (((\B[4]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|Mux17~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~39_combout\);

-- Location: LCCOMB_X28_Y13_N16
\inst|unidad_logica|salida~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~40_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_logica|salida~40_combout\);

-- Location: FF_X28_Y14_N13
\inst|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[4]~21_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(4));

-- Location: LCCOMB_X28_Y14_N18
\inst|unidad_logica|salida~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~41_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~39_combout\ & (\inst|unidad_logica|salida~40_combout\)) # (!\inst|unidad_logica|salida~39_combout\ & ((\inst|unidad_logica|aux\(4)))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (\inst|unidad_logica|salida~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~39_combout\,
	datac => \inst|unidad_logica|salida~40_combout\,
	datad => \inst|unidad_logica|aux\(4),
	combout => \inst|unidad_logica|salida~41_combout\);

-- Location: FF_X28_Y14_N19
\inst|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(4));

-- Location: LCCOMB_X28_Y13_N18
\inst|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~4_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & ((\inst|unidad_logica|salida\(4)))) # (!\inst|Mux11~0_combout\ & (\inst|barrel_shifters|salShifters\(4))))) # (!\inst|Mux11~1_combout\ & (\inst|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~1_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|barrel_shifters|salShifters\(4),
	datad => \inst|unidad_logica|salida\(4),
	combout => \inst|Mux11~4_combout\);

-- Location: LCCOMB_X26_Y13_N24
\inst|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~5_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux11~4_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\))) # (!\inst|Mux11~4_combout\ & (\inst|Mux11~3_combout\)))) # (!\inst|Mux7~5_combout\ & 
-- (((\inst|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~3_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\,
	datad => \inst|Mux11~4_combout\,
	combout => \inst|Mux11~5_combout\);

-- Location: LCCOMB_X26_Y13_N2
\inst|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~6_combout\ = (\inst|Mux11~5_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux11~5_combout\,
	combout => \inst|Mux11~6_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & ((\inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\))) # (!\inst|Mux16~0_combout\ & 
-- (\inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X25_Y4_N2
\inst|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~0_combout\ = (\A[4]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[4]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add3~1\ = CARRY((\A[4]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X25_Y4_N4
\inst|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~41_combout\ & (!\inst|unidad_aritmetica|divi|Add3~1\)) # (!\inst|unidad_aritmetica|divi|Add2~41_combout\ & ((\inst|unidad_aritmetica|divi|Add3~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~41_combout\ & (\inst|unidad_aritmetica|divi|Add3~1\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add2~41_combout\ & (!\inst|unidad_aritmetica|divi|Add3~1\))))
-- \inst|unidad_aritmetica|divi|Add3~3\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~1\) # (!\inst|unidad_aritmetica|divi|Add2~41_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~41_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X25_Y4_N6
\inst|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~4_combout\ = ((\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~40_combout\ $ (\inst|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~5\ = CARRY((\B[2]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~40_combout\ & !\inst|unidad_aritmetica|divi|Add3~3\)) # (!\B[2]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~40_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X25_Y4_N8
\inst|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~39_combout\ & (!\inst|unidad_aritmetica|divi|Add3~5\)) # (!\inst|unidad_aritmetica|divi|Add2~39_combout\ & ((\inst|unidad_aritmetica|divi|Add3~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~39_combout\ & (\inst|unidad_aritmetica|divi|Add3~5\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add2~39_combout\ & (!\inst|unidad_aritmetica|divi|Add3~5\))))
-- \inst|unidad_aritmetica|divi|Add3~7\ = CARRY((\B[3]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~5\) # (!\inst|unidad_aritmetica|divi|Add2~39_combout\))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~39_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X25_Y4_N10
\inst|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~8_combout\ = ((\inst|unidad_aritmetica|divi|Add2~38_combout\ $ (\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst|unidad_aritmetica|divi|Add2~38_combout\ & ((!\inst|unidad_aritmetica|divi|Add3~7\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~38_combout\ & (!\B[4]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X25_Y4_N12
\inst|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~37_combout\ & (!\inst|unidad_aritmetica|divi|Add3~9\)) # (!\inst|unidad_aritmetica|divi|Add2~37_combout\ & ((\inst|unidad_aritmetica|divi|Add3~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~37_combout\ & (\inst|unidad_aritmetica|divi|Add3~9\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add2~37_combout\ & (!\inst|unidad_aritmetica|divi|Add3~9\))))
-- \inst|unidad_aritmetica|divi|Add3~11\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~9\) # (!\inst|unidad_aritmetica|divi|Add2~37_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~37_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X25_Y4_N14
\inst|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~12_combout\ = ((\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~36_combout\ $ (\inst|unidad_aritmetica|divi|Add3~11\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~13\ = CARRY((\B[6]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~36_combout\ & !\inst|unidad_aritmetica|divi|Add3~11\)) # (!\B[6]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~36_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~36_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~11\,
	combout => \inst|unidad_aritmetica|divi|Add3~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~13\);

-- Location: LCCOMB_X25_Y4_N16
\inst|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|unidad_aritmetica|divi|Add2~35_combout\ & ((\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~13\)) # (!\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~13\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add2~35_combout\ & ((\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~13\))))
-- \inst|unidad_aritmetica|divi|Add3~15\ = CARRY((\inst|unidad_aritmetica|divi|Add2~35_combout\ & (\B[7]~input_o\ & !\inst|unidad_aritmetica|divi|Add3~13\)) # (!\inst|unidad_aritmetica|divi|Add2~35_combout\ & ((\B[7]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~13\,
	combout => \inst|unidad_aritmetica|divi|Add3~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~15\);

-- Location: LCCOMB_X25_Y4_N18
\inst|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~16_combout\ = ((\inst|unidad_aritmetica|divi|Add2~34_combout\ $ (\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~15\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~17\ = CARRY((\inst|unidad_aritmetica|divi|Add2~34_combout\ & ((!\inst|unidad_aritmetica|divi|Add3~15\) # (!\B[8]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~34_combout\ & (!\B[8]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~15\,
	combout => \inst|unidad_aritmetica|divi|Add3~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~17\);

-- Location: LCCOMB_X25_Y4_N20
\inst|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~18_combout\ = (\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~33_combout\ & (!\inst|unidad_aritmetica|divi|Add3~17\)) # (!\inst|unidad_aritmetica|divi|Add2~33_combout\ & ((\inst|unidad_aritmetica|divi|Add3~17\) # 
-- (GND))))) # (!\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~33_combout\ & (\inst|unidad_aritmetica|divi|Add3~17\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add2~33_combout\ & (!\inst|unidad_aritmetica|divi|Add3~17\))))
-- \inst|unidad_aritmetica|divi|Add3~19\ = CARRY((\B[9]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~17\) # (!\inst|unidad_aritmetica|divi|Add2~33_combout\))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~33_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~33_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~17\,
	combout => \inst|unidad_aritmetica|divi|Add3~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~19\);

-- Location: LCCOMB_X25_Y4_N22
\inst|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~20_combout\ = ((\inst|unidad_aritmetica|divi|Add2~32_combout\ $ (\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~19\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~21\ = CARRY((\inst|unidad_aritmetica|divi|Add2~32_combout\ & ((!\inst|unidad_aritmetica|divi|Add3~19\) # (!\B[10]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~32_combout\ & (!\B[10]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~19\,
	combout => \inst|unidad_aritmetica|divi|Add3~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~21\);

-- Location: LCCOMB_X25_Y4_N24
\inst|unidad_aritmetica|divi|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~31_combout\ & (!\inst|unidad_aritmetica|divi|Add3~21\)) # (!\inst|unidad_aritmetica|divi|Add2~31_combout\ & ((\inst|unidad_aritmetica|divi|Add3~21\) # 
-- (GND))))) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~31_combout\ & (\inst|unidad_aritmetica|divi|Add3~21\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add2~31_combout\ & (!\inst|unidad_aritmetica|divi|Add3~21\))))
-- \inst|unidad_aritmetica|divi|Add3~23\ = CARRY((\B[11]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~21\) # (!\inst|unidad_aritmetica|divi|Add2~31_combout\))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~31_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~21\,
	combout => \inst|unidad_aritmetica|divi|Add3~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~23\);

-- Location: LCCOMB_X25_Y4_N26
\inst|unidad_aritmetica|divi|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~24_combout\ = ((\inst|unidad_aritmetica|divi|Add2~30_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~23\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add3~25\ = CARRY((\inst|unidad_aritmetica|divi|Add2~30_combout\ & ((!\inst|unidad_aritmetica|divi|Add3~23\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~30_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add3~23\,
	combout => \inst|unidad_aritmetica|divi|Add3~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add3~25\);

-- Location: LCCOMB_X25_Y4_N28
\inst|unidad_aritmetica|divi|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~26_combout\ = \B[13]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~25\ $ (!\inst|unidad_aritmetica|divi|Add2~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add2~29_combout\,
	cin => \inst|unidad_aritmetica|divi|Add3~25\,
	combout => \inst|unidad_aritmetica|divi|Add3~26_combout\);

-- Location: LCCOMB_X26_Y4_N14
\inst|unidad_aritmetica|divi|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~28_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~29_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add3~26_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~29_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~28_combout\);

-- Location: LCCOMB_X26_Y4_N20
\inst|unidad_aritmetica|divi|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~29_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~30_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~24_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~30_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~29_combout\);

-- Location: LCCOMB_X26_Y7_N8
\inst|unidad_aritmetica|divi|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~30_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~31_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~31_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~22_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~30_combout\);

-- Location: LCCOMB_X25_Y4_N0
\inst|unidad_aritmetica|divi|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~31_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~32_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~20_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~32_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~31_combout\);

-- Location: LCCOMB_X26_Y4_N2
\inst|unidad_aritmetica|divi|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~32_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~33_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add3~18_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~33_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~32_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst|unidad_aritmetica|divi|Add3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~33_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~34_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~34_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~16_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~33_combout\);

-- Location: LCCOMB_X25_Y4_N30
\inst|unidad_aritmetica|divi|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~34_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~35_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~35_combout\,
	datab => \inst|unidad_aritmetica|divi|Add3~14_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~34_combout\);

-- Location: LCCOMB_X26_Y7_N18
\inst|unidad_aritmetica|divi|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~35_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~36_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~12_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~36_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~35_combout\);

-- Location: LCCOMB_X26_Y4_N28
\inst|unidad_aritmetica|divi|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~36_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~37_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add2~37_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~10_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~36_combout\);

-- Location: LCCOMB_X26_Y4_N26
\inst|unidad_aritmetica|divi|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~37_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~38_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~38_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~8_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~37_combout\);

-- Location: LCCOMB_X28_Y5_N8
\inst|unidad_aritmetica|divi|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~38_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~39_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~39_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~6_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~38_combout\);

-- Location: LCCOMB_X26_Y4_N16
\inst|unidad_aritmetica|divi|Add3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~39_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add2~40_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~40_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~39_combout\);

-- Location: LCCOMB_X26_Y4_N18
\inst|unidad_aritmetica|divi|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~40_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|unidad_aritmetica|divi|Add2~41_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add2~41_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~40_combout\);

-- Location: LCCOMB_X28_Y5_N30
\inst|unidad_aritmetica|divi|Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add3~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & (\A[4]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan3~28_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add3~0_combout\,
	combout => \inst|unidad_aritmetica|divi|Add3~41_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((!\A[3]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X28_Y4_N4
\inst|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~41_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan4~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add3~41_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~41_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X28_Y4_N6
\inst|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~40_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan4~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add3~40_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~40_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X28_Y4_N8
\inst|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~39_combout\ & !\inst|unidad_aritmetica|divi|LessThan4~5_cout\)) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~39_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X28_Y4_N10
\inst|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~38_combout\ & (\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan4~7_cout\)) # (!\inst|unidad_aritmetica|divi|Add3~38_combout\ & ((\B[4]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X28_Y4_N12
\inst|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~37_combout\ & !\inst|unidad_aritmetica|divi|LessThan4~9_cout\)) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~37_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X28_Y4_N14
\inst|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~36_combout\ & (\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan4~11_cout\)) # (!\inst|unidad_aritmetica|divi|Add3~36_combout\ & ((\B[6]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X28_Y4_N16
\inst|unidad_aritmetica|divi|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~15_cout\ = CARRY((\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~35_combout\ & !\inst|unidad_aritmetica|divi|LessThan4~13_cout\)) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~35_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~35_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~15_cout\);

-- Location: LCCOMB_X28_Y4_N18
\inst|unidad_aritmetica|divi|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~34_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan4~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add3~34_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~17_cout\);

-- Location: LCCOMB_X28_Y4_N20
\inst|unidad_aritmetica|divi|LessThan4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~19_cout\ = CARRY((\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~33_combout\ & !\inst|unidad_aritmetica|divi|LessThan4~17_cout\)) # (!\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~33_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~33_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~19_cout\);

-- Location: LCCOMB_X28_Y4_N22
\inst|unidad_aritmetica|divi|LessThan4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~21_cout\ = CARRY((\B[10]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan4~19_cout\) # (!\inst|unidad_aritmetica|divi|Add3~32_combout\))) # (!\B[10]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~32_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~32_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~21_cout\);

-- Location: LCCOMB_X28_Y4_N24
\inst|unidad_aritmetica|divi|LessThan4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~23_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~31_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan4~21_cout\) # (!\B[11]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add3~31_combout\ & (!\B[11]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~23_cout\);

-- Location: LCCOMB_X28_Y4_N26
\inst|unidad_aritmetica|divi|LessThan4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~25_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add3~30_combout\ & (\B[12]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan4~23_cout\)) # (!\inst|unidad_aritmetica|divi|Add3~30_combout\ & ((\B[12]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~25_cout\);

-- Location: LCCOMB_X28_Y4_N28
\inst|unidad_aritmetica|divi|LessThan4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~27_cout\ = CARRY((\B[13]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~29_combout\ & !\inst|unidad_aritmetica|divi|LessThan4~25_cout\)) # (!\B[13]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~29_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan4~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~29_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan4~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan4~27_cout\);

-- Location: LCCOMB_X28_Y4_N30
\inst|unidad_aritmetica|divi|LessThan4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan4~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add3~28_combout\) # (!\inst|unidad_aritmetica|divi|LessThan4~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan4~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add3~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan4~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan4~28_combout\);

-- Location: LCCOMB_X25_Y13_N22
\inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = (\inst|Mux17~0_combout\ & ((\inst|Mux12~0_combout\ & (!\inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\)) # (!\inst|Mux12~0_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan4~28_combout\))))) # (!\inst|Mux17~0_combout\ & 
-- (\inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|Mux12~0_combout\,
	datac => \inst|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|Mux12~1_combout\);

-- Location: LCCOMB_X29_Y13_N0
\inst|unidad_logica|salida~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~42_combout\ = (\A[3]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[3]~input_o\ & (((\B[3]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~42_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst|unidad_logica|salida~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~43_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_logica|salida~43_combout\);

-- Location: FF_X28_Y14_N3
\inst|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[3]~19_combout\,
	sload => VCC,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(3));

-- Location: LCCOMB_X28_Y14_N28
\inst|unidad_logica|salida~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~44_combout\ = (\inst|unidad_logica|salida[13]~52_combout\ & ((\inst|unidad_logica|salida~42_combout\ & (\inst|unidad_logica|salida~43_combout\)) # (!\inst|unidad_logica|salida~42_combout\ & ((\inst|unidad_logica|aux\(3)))))) # 
-- (!\inst|unidad_logica|salida[13]~52_combout\ & (\inst|unidad_logica|salida~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida[13]~52_combout\,
	datab => \inst|unidad_logica|salida~42_combout\,
	datac => \inst|unidad_logica|salida~43_combout\,
	datad => \inst|unidad_logica|aux\(3),
	combout => \inst|unidad_logica|salida~44_combout\);

-- Location: FF_X28_Y14_N29
\inst|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(3));

-- Location: FF_X29_Y13_N15
\inst|barrel_shifters|aux[3]\ : dffeas
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
	q => \inst|barrel_shifters|aux\(3));

-- Location: FF_X29_Y13_N5
\inst|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X29_Y13_N4
\inst|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~2_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & (\inst|unidad_logica|salida\(3))) # (!\inst|Mux11~0_combout\ & ((\inst|barrel_shifters|salShifters\(3)))))) # (!\inst|Mux11~1_combout\ & (((\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(3),
	datab => \inst|Mux11~1_combout\,
	datac => \inst|barrel_shifters|salShifters\(3),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux12~2_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux12~2_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\))) # (!\inst|Mux12~2_combout\ & (\inst|Mux12~1_combout\)))) # (!\inst|Mux7~5_combout\ & 
-- (((\inst|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux12~1_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\,
	datad => \inst|Mux12~2_combout\,
	combout => \inst|Mux12~3_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~4_combout\ = (\inst|Mux12~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux12~3_combout\,
	datac => \sel[3]~input_o\,
	combout => \inst|Mux12~4_combout\);

-- Location: LCCOMB_X29_Y13_N12
\inst|unidad_logica|salida~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~46_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst|unidad_logica|salida~46_combout\);

-- Location: LCCOMB_X29_Y13_N16
\inst|unidad_logica|salida~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~45_combout\ = (\A[2]~input_o\ & (((\inst|Mux16~0_combout\)))) # (!\A[2]~input_o\ & (((\B[2]~input_o\ & \inst|Mux16~0_combout\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|unidad_logica|salida~45_combout\);

-- Location: LCCOMB_X29_Y13_N10
\inst|unidad_logica|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[2]~feeder_combout\ = \inst|unidad_logica|aux[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|unidad_logica|aux[2]~17_combout\,
	combout => \inst|unidad_logica|aux[2]~feeder_combout\);

-- Location: FF_X29_Y13_N11
\inst|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[2]~feeder_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(2));

-- Location: LCCOMB_X29_Y13_N22
\inst|unidad_logica|salida~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~47_combout\ = (\inst|unidad_logica|salida~45_combout\ & ((\inst|unidad_logica|salida~46_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~45_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~46_combout\,
	datab => \inst|unidad_logica|salida~45_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(2),
	combout => \inst|unidad_logica|salida~47_combout\);

-- Location: FF_X29_Y13_N23
\inst|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(2));

-- Location: LCCOMB_X29_Y13_N26
\inst|barrel_shifters|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[2]~feeder_combout\ = \A[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[1]~input_o\,
	combout => \inst|barrel_shifters|aux[2]~feeder_combout\);

-- Location: FF_X29_Y13_N27
\inst|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(2));

-- Location: FF_X29_Y13_N21
\inst|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X29_Y13_N20
\inst|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~2_combout\ = (\inst|Mux11~1_combout\ & ((\inst|Mux11~0_combout\ & (\inst|unidad_logica|salida\(2))) # (!\inst|Mux11~0_combout\ & ((\inst|barrel_shifters|salShifters\(2)))))) # (!\inst|Mux11~1_combout\ & (((\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(2),
	datab => \inst|Mux11~1_combout\,
	datac => \inst|barrel_shifters|salShifters\(2),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|Mux13~2_combout\);

-- Location: LCCOMB_X25_Y13_N8
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|Mux16~0_combout\ & (((\inst|Mux17~0_combout\) # (\inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\)))) # (!\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ & 
-- (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|Mux17~0_combout\,
	datad => \inst|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y4_N0
\inst|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~0_combout\ = (\A[3]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[3]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add4~1\ = CARRY((\A[3]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X29_Y4_N2
\inst|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~41_combout\ & (!\inst|unidad_aritmetica|divi|Add4~1\)) # (!\inst|unidad_aritmetica|divi|Add3~41_combout\ & ((\inst|unidad_aritmetica|divi|Add4~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~41_combout\ & (\inst|unidad_aritmetica|divi|Add4~1\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add3~41_combout\ & (!\inst|unidad_aritmetica|divi|Add4~1\))))
-- \inst|unidad_aritmetica|divi|Add4~3\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add4~1\) # (!\inst|unidad_aritmetica|divi|Add3~41_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~41_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X29_Y4_N4
\inst|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~4_combout\ = ((\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~40_combout\ $ (\inst|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~5\ = CARRY((\B[2]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~40_combout\ & !\inst|unidad_aritmetica|divi|Add4~3\)) # (!\B[2]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~40_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X29_Y4_N6
\inst|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~39_combout\ & (!\inst|unidad_aritmetica|divi|Add4~5\)) # (!\inst|unidad_aritmetica|divi|Add3~39_combout\ & ((\inst|unidad_aritmetica|divi|Add4~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~39_combout\ & (\inst|unidad_aritmetica|divi|Add4~5\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add3~39_combout\ & (!\inst|unidad_aritmetica|divi|Add4~5\))))
-- \inst|unidad_aritmetica|divi|Add4~7\ = CARRY((\B[3]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add4~5\) # (!\inst|unidad_aritmetica|divi|Add3~39_combout\))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~39_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X29_Y4_N8
\inst|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~8_combout\ = ((\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~38_combout\ $ (\inst|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~9\ = CARRY((\B[4]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~38_combout\ & !\inst|unidad_aritmetica|divi|Add4~7\)) # (!\B[4]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~38_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~38_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X29_Y4_N10
\inst|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~37_combout\ & (!\inst|unidad_aritmetica|divi|Add4~9\)) # (!\inst|unidad_aritmetica|divi|Add3~37_combout\ & ((\inst|unidad_aritmetica|divi|Add4~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~37_combout\ & (\inst|unidad_aritmetica|divi|Add4~9\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add3~37_combout\ & (!\inst|unidad_aritmetica|divi|Add4~9\))))
-- \inst|unidad_aritmetica|divi|Add4~11\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add4~9\) # (!\inst|unidad_aritmetica|divi|Add3~37_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~37_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~9\,
	combout => \inst|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X29_Y4_N12
\inst|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~12_combout\ = ((\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add3~36_combout\ $ (\inst|unidad_aritmetica|divi|Add4~11\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~13\ = CARRY((\B[6]~input_o\ & (\inst|unidad_aritmetica|divi|Add3~36_combout\ & !\inst|unidad_aritmetica|divi|Add4~11\)) # (!\B[6]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~36_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~36_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~11\,
	combout => \inst|unidad_aritmetica|divi|Add4~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~13\);

-- Location: LCCOMB_X29_Y4_N14
\inst|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|unidad_aritmetica|divi|Add3~35_combout\ & ((\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~13\)) # (!\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~13\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add3~35_combout\ & ((\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~13\))))
-- \inst|unidad_aritmetica|divi|Add4~15\ = CARRY((\inst|unidad_aritmetica|divi|Add3~35_combout\ & (\B[7]~input_o\ & !\inst|unidad_aritmetica|divi|Add4~13\)) # (!\inst|unidad_aritmetica|divi|Add3~35_combout\ & ((\B[7]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~13\,
	combout => \inst|unidad_aritmetica|divi|Add4~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~15\);

-- Location: LCCOMB_X29_Y4_N16
\inst|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~16_combout\ = ((\inst|unidad_aritmetica|divi|Add3~34_combout\ $ (\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~15\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~17\ = CARRY((\inst|unidad_aritmetica|divi|Add3~34_combout\ & ((!\inst|unidad_aritmetica|divi|Add4~15\) # (!\B[8]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add3~34_combout\ & (!\B[8]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~15\,
	combout => \inst|unidad_aritmetica|divi|Add4~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~17\);

-- Location: LCCOMB_X29_Y4_N18
\inst|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~18_combout\ = (\inst|unidad_aritmetica|divi|Add3~33_combout\ & ((\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~17\)) # (!\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~17\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add3~33_combout\ & ((\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~17\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~17\))))
-- \inst|unidad_aritmetica|divi|Add4~19\ = CARRY((\inst|unidad_aritmetica|divi|Add3~33_combout\ & (\B[9]~input_o\ & !\inst|unidad_aritmetica|divi|Add4~17\)) # (!\inst|unidad_aritmetica|divi|Add3~33_combout\ & ((\B[9]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~17\,
	combout => \inst|unidad_aritmetica|divi|Add4~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~19\);

-- Location: LCCOMB_X29_Y4_N20
\inst|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~20_combout\ = ((\inst|unidad_aritmetica|divi|Add3~32_combout\ $ (\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~19\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~21\ = CARRY((\inst|unidad_aritmetica|divi|Add3~32_combout\ & ((!\inst|unidad_aritmetica|divi|Add4~19\) # (!\B[10]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add3~32_combout\ & (!\B[10]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~19\,
	combout => \inst|unidad_aritmetica|divi|Add4~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~21\);

-- Location: LCCOMB_X29_Y4_N22
\inst|unidad_aritmetica|divi|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~31_combout\ & (!\inst|unidad_aritmetica|divi|Add4~21\)) # (!\inst|unidad_aritmetica|divi|Add3~31_combout\ & ((\inst|unidad_aritmetica|divi|Add4~21\) # 
-- (GND))))) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add3~31_combout\ & (\inst|unidad_aritmetica|divi|Add4~21\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add3~31_combout\ & (!\inst|unidad_aritmetica|divi|Add4~21\))))
-- \inst|unidad_aritmetica|divi|Add4~23\ = CARRY((\B[11]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add4~21\) # (!\inst|unidad_aritmetica|divi|Add3~31_combout\))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add3~31_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add4~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add3~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~21\,
	combout => \inst|unidad_aritmetica|divi|Add4~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~23\);

-- Location: LCCOMB_X29_Y4_N24
\inst|unidad_aritmetica|divi|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~24_combout\ = ((\inst|unidad_aritmetica|divi|Add3~30_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~23\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add4~25\ = CARRY((\inst|unidad_aritmetica|divi|Add3~30_combout\ & ((!\inst|unidad_aritmetica|divi|Add4~23\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add3~30_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add4~23\,
	combout => \inst|unidad_aritmetica|divi|Add4~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add4~25\);

-- Location: LCCOMB_X29_Y4_N26
\inst|unidad_aritmetica|divi|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~26_combout\ = \B[13]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~25\ $ (!\inst|unidad_aritmetica|divi|Add3~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add3~29_combout\,
	cin => \inst|unidad_aritmetica|divi|Add4~25\,
	combout => \inst|unidad_aritmetica|divi|Add4~26_combout\);

-- Location: LCCOMB_X26_Y4_N8
\inst|unidad_aritmetica|divi|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~28_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~29_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~29_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~26_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~28_combout\);

-- Location: LCCOMB_X29_Y4_N28
\inst|unidad_aritmetica|divi|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~29_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~30_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~30_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~24_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~29_combout\);

-- Location: LCCOMB_X28_Y5_N24
\inst|unidad_aritmetica|divi|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~30_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~31_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~31_combout\,
	datab => \inst|unidad_aritmetica|divi|Add4~22_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~30_combout\);

-- Location: LCCOMB_X28_Y6_N0
\inst|unidad_aritmetica|divi|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~31_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~32_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~20_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~32_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~31_combout\);

-- Location: LCCOMB_X29_Y6_N24
\inst|unidad_aritmetica|divi|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~32_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~33_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add4~18_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~33_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~32_combout\);

-- Location: LCCOMB_X29_Y6_N14
\inst|unidad_aritmetica|divi|Add4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~33_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~34_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add3~34_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~16_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~33_combout\);

-- Location: LCCOMB_X29_Y4_N30
\inst|unidad_aritmetica|divi|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~34_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~35_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~35_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~34_combout\);

-- Location: LCCOMB_X26_Y4_N10
\inst|unidad_aritmetica|divi|Add4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~35_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~36_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~12_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~36_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~35_combout\);

-- Location: LCCOMB_X26_Y4_N24
\inst|unidad_aritmetica|divi|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~36_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~37_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~10_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~37_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~36_combout\);

-- Location: LCCOMB_X28_Y5_N22
\inst|unidad_aritmetica|divi|Add4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~37_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~38_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~38_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~8_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~37_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst|unidad_aritmetica|divi|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~38_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~39_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add3~39_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~6_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~38_combout\);

-- Location: LCCOMB_X26_Y4_N22
\inst|unidad_aritmetica|divi|Add4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~39_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add3~40_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add3~40_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~39_combout\);

-- Location: LCCOMB_X28_Y5_N12
\inst|unidad_aritmetica|divi|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~40_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|unidad_aritmetica|divi|Add3~41_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add3~41_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~40_combout\);

-- Location: LCCOMB_X28_Y5_N18
\inst|unidad_aritmetica|divi|Add4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add4~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & (\A[3]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan4~28_combout\,
	datab => \A[3]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add4~0_combout\,
	combout => \inst|unidad_aritmetica|divi|Add4~41_combout\);

-- Location: LCCOMB_X25_Y5_N2
\inst|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~1_cout\ = CARRY((!\A[2]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan5~1_cout\);

-- Location: LCCOMB_X25_Y5_N4
\inst|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~41_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan5~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~41_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~41_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X25_Y5_N6
\inst|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan5~3_cout\) # (!\inst|unidad_aritmetica|divi|Add4~40_combout\))) # (!\B[2]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~40_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X25_Y5_N8
\inst|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~39_combout\ & !\inst|unidad_aritmetica|divi|LessThan5~5_cout\)) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~39_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~39_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X25_Y5_N10
\inst|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst|unidad_aritmetica|divi|Add4~38_combout\))) # (!\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~38_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~38_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X25_Y5_N12
\inst|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~37_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan5~9_cout\) # (!\B[5]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~37_combout\ & (!\B[5]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~37_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X25_Y5_N14
\inst|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~36_combout\ & (\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan5~11_cout\)) # (!\inst|unidad_aritmetica|divi|Add4~36_combout\ & ((\B[6]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X25_Y5_N16
\inst|unidad_aritmetica|divi|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~15_cout\ = CARRY((\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~35_combout\ & !\inst|unidad_aritmetica|divi|LessThan5~13_cout\)) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~35_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~35_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~15_cout\);

-- Location: LCCOMB_X25_Y5_N18
\inst|unidad_aritmetica|divi|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~34_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan5~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add4~34_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~17_cout\);

-- Location: LCCOMB_X25_Y5_N20
\inst|unidad_aritmetica|divi|LessThan5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~19_cout\ = CARRY((\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~33_combout\ & !\inst|unidad_aritmetica|divi|LessThan5~17_cout\)) # (!\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~33_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~33_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~19_cout\);

-- Location: LCCOMB_X25_Y5_N22
\inst|unidad_aritmetica|divi|LessThan5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~21_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~32_combout\ & (\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan5~19_cout\)) # (!\inst|unidad_aritmetica|divi|Add4~32_combout\ & ((\B[10]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan5~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~21_cout\);

-- Location: LCCOMB_X25_Y5_N24
\inst|unidad_aritmetica|divi|LessThan5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~23_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~31_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan5~21_cout\) # (!\B[11]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~31_combout\ & (!\B[11]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~23_cout\);

-- Location: LCCOMB_X25_Y5_N26
\inst|unidad_aritmetica|divi|LessThan5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~25_cout\ = CARRY((\B[12]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan5~23_cout\) # (!\inst|unidad_aritmetica|divi|Add4~30_combout\))) # (!\B[12]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~30_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~30_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~25_cout\);

-- Location: LCCOMB_X25_Y5_N28
\inst|unidad_aritmetica|divi|LessThan5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~27_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add4~29_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan5~25_cout\) # (!\B[13]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~29_combout\ & (!\B[13]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~29_combout\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan5~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan5~27_cout\);

-- Location: LCCOMB_X25_Y5_N30
\inst|unidad_aritmetica|divi|LessThan5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan5~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan5~27_cout\) # (!\inst|unidad_aritmetica|divi|Add4~28_combout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~28_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan5~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan5~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan5~28_combout\);

-- Location: LCCOMB_X25_Y13_N10
\inst|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~1_combout\ = (\inst|Mux17~0_combout\ & ((\inst|Mux13~0_combout\ & (!\inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\)) # (!\inst|Mux13~0_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan5~28_combout\))))) # (!\inst|Mux17~0_combout\ & 
-- (((\inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datac => \inst|Mux13~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|Mux13~1_combout\);

-- Location: LCCOMB_X26_Y13_N20
\inst|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux13~2_combout\ & (\inst|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\)) # (!\inst|Mux13~2_combout\ & ((\inst|Mux13~1_combout\))))) # (!\inst|Mux7~5_combout\ & 
-- (((\inst|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux13~2_combout\,
	datad => \inst|Mux13~1_combout\,
	combout => \inst|Mux13~3_combout\);

-- Location: LCCOMB_X26_Y13_N10
\inst|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~4_combout\ = (\inst|Mux13~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux13~3_combout\,
	combout => \inst|Mux13~4_combout\);

-- Location: LCCOMB_X26_Y5_N0
\inst|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~0_combout\ = (\B[0]~input_o\ & (\A[2]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[2]~input_o\) # (GND)))
-- \inst|unidad_aritmetica|divi|Add5~1\ = CARRY((\A[2]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X26_Y5_N2
\inst|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~41_combout\ & (!\inst|unidad_aritmetica|divi|Add5~1\)) # (!\inst|unidad_aritmetica|divi|Add4~41_combout\ & ((\inst|unidad_aritmetica|divi|Add5~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~41_combout\ & (\inst|unidad_aritmetica|divi|Add5~1\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add4~41_combout\ & (!\inst|unidad_aritmetica|divi|Add5~1\))))
-- \inst|unidad_aritmetica|divi|Add5~3\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add5~1\) # (!\inst|unidad_aritmetica|divi|Add4~41_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~41_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X26_Y5_N4
\inst|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|unidad_aritmetica|divi|Add4~40_combout\ $ (\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|unidad_aritmetica|divi|Add4~40_combout\ & ((!\inst|unidad_aritmetica|divi|Add5~3\) # (!\B[2]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~40_combout\ & (!\B[2]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~40_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X26_Y5_N6
\inst|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|unidad_aritmetica|divi|Add4~39_combout\ & ((\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~5\)) # (!\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~5\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add4~39_combout\ & ((\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~5\))))
-- \inst|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|unidad_aritmetica|divi|Add4~39_combout\ & (\B[3]~input_o\ & !\inst|unidad_aritmetica|divi|Add5~5\)) # (!\inst|unidad_aritmetica|divi|Add4~39_combout\ & ((\B[3]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~39_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X26_Y5_N8
\inst|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~8_combout\ = ((\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~38_combout\ $ (\inst|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~9\ = CARRY((\B[4]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~38_combout\ & !\inst|unidad_aritmetica|divi|Add5~7\)) # (!\B[4]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~38_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~38_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X26_Y5_N10
\inst|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~37_combout\ & (!\inst|unidad_aritmetica|divi|Add5~9\)) # (!\inst|unidad_aritmetica|divi|Add4~37_combout\ & ((\inst|unidad_aritmetica|divi|Add5~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~37_combout\ & (\inst|unidad_aritmetica|divi|Add5~9\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add4~37_combout\ & (!\inst|unidad_aritmetica|divi|Add5~9\))))
-- \inst|unidad_aritmetica|divi|Add5~11\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add5~9\) # (!\inst|unidad_aritmetica|divi|Add4~37_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~37_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X26_Y5_N12
\inst|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~12_combout\ = ((\inst|unidad_aritmetica|divi|Add4~36_combout\ $ (\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add5~11\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~13\ = CARRY((\inst|unidad_aritmetica|divi|Add4~36_combout\ & ((!\inst|unidad_aritmetica|divi|Add5~11\) # (!\B[6]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~36_combout\ & (!\B[6]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|unidad_aritmetica|divi|Add5~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~13\);

-- Location: LCCOMB_X26_Y5_N14
\inst|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|unidad_aritmetica|divi|Add4~35_combout\ & ((\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~13\)) # (!\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~13\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add4~35_combout\ & ((\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~13\))))
-- \inst|unidad_aritmetica|divi|Add5~15\ = CARRY((\inst|unidad_aritmetica|divi|Add4~35_combout\ & (\B[7]~input_o\ & !\inst|unidad_aritmetica|divi|Add5~13\)) # (!\inst|unidad_aritmetica|divi|Add4~35_combout\ & ((\B[7]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~13\,
	combout => \inst|unidad_aritmetica|divi|Add5~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~15\);

-- Location: LCCOMB_X26_Y5_N16
\inst|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~16_combout\ = ((\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~34_combout\ $ (\inst|unidad_aritmetica|divi|Add5~15\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~17\ = CARRY((\B[8]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~34_combout\ & !\inst|unidad_aritmetica|divi|Add5~15\)) # (!\B[8]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~34_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~34_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~15\,
	combout => \inst|unidad_aritmetica|divi|Add5~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~17\);

-- Location: LCCOMB_X26_Y5_N18
\inst|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~18_combout\ = (\inst|unidad_aritmetica|divi|Add4~33_combout\ & ((\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~17\)) # (!\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~17\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add4~33_combout\ & ((\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~17\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~17\))))
-- \inst|unidad_aritmetica|divi|Add5~19\ = CARRY((\inst|unidad_aritmetica|divi|Add4~33_combout\ & (\B[9]~input_o\ & !\inst|unidad_aritmetica|divi|Add5~17\)) # (!\inst|unidad_aritmetica|divi|Add4~33_combout\ & ((\B[9]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~17\,
	combout => \inst|unidad_aritmetica|divi|Add5~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~19\);

-- Location: LCCOMB_X26_Y5_N20
\inst|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~20_combout\ = ((\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~32_combout\ $ (\inst|unidad_aritmetica|divi|Add5~19\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~21\ = CARRY((\B[10]~input_o\ & (\inst|unidad_aritmetica|divi|Add4~32_combout\ & !\inst|unidad_aritmetica|divi|Add5~19\)) # (!\B[10]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~32_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add5~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~32_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~19\,
	combout => \inst|unidad_aritmetica|divi|Add5~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~21\);

-- Location: LCCOMB_X26_Y5_N22
\inst|unidad_aritmetica|divi|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~31_combout\ & (!\inst|unidad_aritmetica|divi|Add5~21\)) # (!\inst|unidad_aritmetica|divi|Add4~31_combout\ & ((\inst|unidad_aritmetica|divi|Add5~21\) # 
-- (GND))))) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add4~31_combout\ & (\inst|unidad_aritmetica|divi|Add5~21\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add4~31_combout\ & (!\inst|unidad_aritmetica|divi|Add5~21\))))
-- \inst|unidad_aritmetica|divi|Add5~23\ = CARRY((\B[11]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add5~21\) # (!\inst|unidad_aritmetica|divi|Add4~31_combout\))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add4~31_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add5~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~21\,
	combout => \inst|unidad_aritmetica|divi|Add5~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~23\);

-- Location: LCCOMB_X26_Y5_N24
\inst|unidad_aritmetica|divi|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~24_combout\ = ((\inst|unidad_aritmetica|divi|Add4~30_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add5~23\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add5~25\ = CARRY((\inst|unidad_aritmetica|divi|Add4~30_combout\ & ((!\inst|unidad_aritmetica|divi|Add5~23\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add4~30_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add5~23\,
	combout => \inst|unidad_aritmetica|divi|Add5~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add5~25\);

-- Location: LCCOMB_X26_Y5_N26
\inst|unidad_aritmetica|divi|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~26_combout\ = \B[13]~input_o\ $ (\inst|unidad_aritmetica|divi|Add4~29_combout\ $ (!\inst|unidad_aritmetica|divi|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add4~29_combout\,
	cin => \inst|unidad_aritmetica|divi|Add5~25\,
	combout => \inst|unidad_aritmetica|divi|Add5~26_combout\);

-- Location: LCCOMB_X26_Y5_N28
\inst|unidad_aritmetica|divi|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~28_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~29_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add4~29_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~26_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~28_combout\);

-- Location: LCCOMB_X28_Y5_N4
\inst|unidad_aritmetica|divi|Add5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~29_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~30_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~24_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~30_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~29_combout\);

-- Location: LCCOMB_X29_Y6_N0
\inst|unidad_aritmetica|divi|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~30_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~31_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~31_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~22_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~30_combout\);

-- Location: LCCOMB_X29_Y6_N10
\inst|unidad_aritmetica|divi|Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~31_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~32_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~20_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~32_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~31_combout\);

-- Location: LCCOMB_X29_Y6_N8
\inst|unidad_aritmetica|divi|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~32_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~33_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~33_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~18_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~32_combout\);

-- Location: LCCOMB_X29_Y6_N30
\inst|unidad_aritmetica|divi|Add5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~33_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~34_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add5~16_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~34_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~33_combout\);

-- Location: LCCOMB_X29_Y6_N12
\inst|unidad_aritmetica|divi|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~34_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~35_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~35_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~34_combout\);

-- Location: LCCOMB_X29_Y6_N6
\inst|unidad_aritmetica|divi|Add5~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~35_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~36_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~36_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~12_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~35_combout\);

-- Location: LCCOMB_X28_Y5_N14
\inst|unidad_aritmetica|divi|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~36_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~37_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datab => \inst|unidad_aritmetica|divi|Add5~10_combout\,
	datac => \inst|unidad_aritmetica|divi|Add4~37_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~36_combout\);

-- Location: LCCOMB_X28_Y5_N20
\inst|unidad_aritmetica|divi|Add5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~37_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~38_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add5~8_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~38_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~37_combout\);

-- Location: LCCOMB_X26_Y5_N30
\inst|unidad_aritmetica|divi|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~38_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add4~39_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add4~39_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~6_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~38_combout\);

-- Location: LCCOMB_X28_Y5_N2
\inst|unidad_aritmetica|divi|Add5~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~39_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~40_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add5~4_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~40_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~39_combout\);

-- Location: LCCOMB_X28_Y5_N28
\inst|unidad_aritmetica|divi|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~40_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|unidad_aritmetica|divi|Add4~41_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~2_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add4~41_combout\,
	combout => \inst|unidad_aritmetica|divi|Add5~40_combout\);

-- Location: LCCOMB_X28_Y5_N6
\inst|unidad_aritmetica|divi|Add5~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add5~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\A[2]~input_o\))) # (!\inst|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|unidad_aritmetica|divi|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan5~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add5~41_combout\);

-- Location: LCCOMB_X30_Y5_N0
\inst|unidad_aritmetica|divi|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~1_cout\ = CARRY((\B[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan6~1_cout\);

-- Location: LCCOMB_X30_Y5_N2
\inst|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~41_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan6~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~41_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~41_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X30_Y5_N4
\inst|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~40_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan6~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add5~40_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~40_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X30_Y5_N6
\inst|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~39_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan6~5_cout\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~39_combout\ & (!\B[3]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~39_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X30_Y5_N8
\inst|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan6~7_cout\) # (!\inst|unidad_aritmetica|divi|Add5~38_combout\))) # (!\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~38_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~38_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X30_Y5_N10
\inst|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~37_combout\ & !\inst|unidad_aritmetica|divi|LessThan6~9_cout\)) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~37_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X30_Y5_N12
\inst|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~36_combout\ & (\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan6~11_cout\)) # (!\inst|unidad_aritmetica|divi|Add5~36_combout\ & ((\B[6]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X30_Y5_N14
\inst|unidad_aritmetica|divi|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~15_cout\ = CARRY((\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~35_combout\ & !\inst|unidad_aritmetica|divi|LessThan6~13_cout\)) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~35_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~35_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~15_cout\);

-- Location: LCCOMB_X30_Y5_N16
\inst|unidad_aritmetica|divi|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~17_cout\ = CARRY((\B[8]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan6~15_cout\) # (!\inst|unidad_aritmetica|divi|Add5~34_combout\))) # (!\B[8]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~34_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~34_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~17_cout\);

-- Location: LCCOMB_X30_Y5_N18
\inst|unidad_aritmetica|divi|LessThan6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~19_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~33_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan6~17_cout\) # (!\B[9]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~33_combout\ & (!\B[9]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~19_cout\);

-- Location: LCCOMB_X30_Y5_N20
\inst|unidad_aritmetica|divi|LessThan6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~21_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~32_combout\ & (\B[10]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan6~19_cout\)) # (!\inst|unidad_aritmetica|divi|Add5~32_combout\ & ((\B[10]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~21_cout\);

-- Location: LCCOMB_X30_Y5_N22
\inst|unidad_aritmetica|divi|LessThan6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~23_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~31_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan6~21_cout\) # (!\B[11]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~31_combout\ & (!\B[11]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~23_cout\);

-- Location: LCCOMB_X30_Y5_N24
\inst|unidad_aritmetica|divi|LessThan6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~25_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add5~30_combout\ & (\B[12]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan6~23_cout\)) # (!\inst|unidad_aritmetica|divi|Add5~30_combout\ & ((\B[12]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~25_cout\);

-- Location: LCCOMB_X30_Y5_N26
\inst|unidad_aritmetica|divi|LessThan6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~27_cout\ = CARRY((\B[13]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~29_combout\ & !\inst|unidad_aritmetica|divi|LessThan6~25_cout\)) # (!\B[13]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~29_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan6~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~29_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan6~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan6~27_cout\);

-- Location: LCCOMB_X30_Y5_N28
\inst|unidad_aritmetica|divi|LessThan6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan6~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add5~28_combout\) # (!\inst|unidad_aritmetica|divi|LessThan6~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan6~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add5~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add5~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan6~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan6~28_combout\);

-- Location: LCCOMB_X25_Y13_N12
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|Mux17~0_combout\ & (((\inst|Mux16~0_combout\)))) # (!\inst|Mux17~0_combout\ & ((\inst|Mux16~0_combout\ & (\inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\)) # (!\inst|Mux16~0_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = (\inst|Mux17~0_combout\ & ((\inst|Mux14~0_combout\ & (!\inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\)) # (!\inst|Mux14~0_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan6~28_combout\))))) # (!\inst|Mux17~0_combout\ & 
-- (((\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux14~1_combout\);

-- Location: LCCOMB_X29_Y13_N8
\inst|unidad_logica|salida~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~48_combout\ = (\A[1]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[1]~input_o\ & (((\inst|Mux16~0_combout\ & \B[1]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \A[1]~input_o\,
	datac => \inst|Mux17~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_logica|salida~48_combout\);

-- Location: FF_X29_Y14_N3
\inst|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[1]~15_combout\,
	ena => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(1));

-- Location: LCCOMB_X29_Y14_N0
\inst|unidad_logica|salida~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~49_combout\ = (\inst|unidad_logica|salida~48_combout\ & ((\inst|unidad_logica|salida~5_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~48_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~48_combout\,
	datab => \inst|unidad_logica|salida~5_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(1),
	combout => \inst|unidad_logica|salida~49_combout\);

-- Location: FF_X29_Y14_N1
\inst|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(1));

-- Location: LCCOMB_X28_Y14_N14
\inst|barrel_shifters|aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[1]~feeder_combout\ = \A[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[0]~input_o\,
	combout => \inst|barrel_shifters|aux[1]~feeder_combout\);

-- Location: FF_X28_Y14_N15
\inst|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|barrel_shifters|aux[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(1));

-- Location: FF_X28_Y14_N5
\inst|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X28_Y14_N4
\inst|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~2_combout\ = (\inst|Mux11~0_combout\ & ((\inst|unidad_logica|salida\(1)) # ((!\inst|Mux11~1_combout\)))) # (!\inst|Mux11~0_combout\ & (((\inst|barrel_shifters|salShifters\(1) & \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst|unidad_logica|salida\(1),
	datac => \inst|barrel_shifters|salShifters\(1),
	datad => \inst|Mux11~1_combout\,
	combout => \inst|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~3_combout\ = (\inst|Mux7~5_combout\ & ((\inst|Mux14~2_combout\ & ((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\))) # (!\inst|Mux14~2_combout\ & (\inst|Mux14~1_combout\)))) # (!\inst|Mux7~5_combout\ & 
-- (((\inst|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datab => \inst|Mux14~1_combout\,
	datac => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\,
	datad => \inst|Mux14~2_combout\,
	combout => \inst|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~4_combout\ = (\inst|Mux14~3_combout\) # ((!\inst|Mux7~5_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~5_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux14~3_combout\,
	combout => \inst|Mux14~4_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~3_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|unidad_logica|salida~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~50_combout\ = (\A[0]~input_o\ & (\inst|Mux16~0_combout\)) # (!\A[0]~input_o\ & (((\inst|Mux16~0_combout\ & \B[0]~input_o\)) # (!\inst|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|Mux16~0_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_logica|salida~50_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst|unidad_logica|aux[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[0]~45_combout\ = (\inst|Mux16~0_combout\ & (((\inst|unidad_logica|aux\(0))))) # (!\inst|Mux16~0_combout\ & ((\inst|Mux17~0_combout\ & (\A[0]~input_o\)) # (!\inst|Mux17~0_combout\ & ((\inst|unidad_logica|aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|unidad_logica|aux\(0),
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_logica|aux[0]~45_combout\);

-- Location: FF_X23_Y13_N11
\inst|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|aux[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(0));

-- Location: LCCOMB_X23_Y13_N22
\inst|unidad_logica|salida~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~51_combout\ = (\inst|unidad_logica|salida~50_combout\ & ((\inst|unidad_logica|salida~6_combout\) # ((!\inst|unidad_logica|salida[13]~52_combout\)))) # (!\inst|unidad_logica|salida~50_combout\ & 
-- (((\inst|unidad_logica|salida[13]~52_combout\ & \inst|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~6_combout\,
	datab => \inst|unidad_logica|salida~50_combout\,
	datac => \inst|unidad_logica|salida[13]~52_combout\,
	datad => \inst|unidad_logica|aux\(0),
	combout => \inst|unidad_logica|salida~51_combout\);

-- Location: FF_X23_Y13_N23
\inst|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|unidad_logica|salida~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(0));

-- Location: LCCOMB_X26_Y16_N28
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\sel[2]~input_o\ & (!\sel[1]~input_o\ & (!\sel[0]~input_o\))) # (!\sel[2]~input_o\ & (!\sel[3]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = (\inst|unidad_logica|salida\(0) & \inst|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|unidad_logica|salida\(0),
	datad => \inst|Mux15~0_combout\,
	combout => \inst|Mux15~1_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst|unidad_aritmetica|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux15~3_combout\ = (\inst|unidad_aritmetica|resta|Sfaux~0_combout\ & (\A[0]~input_o\ $ (((\B[0]~input_o\))))) # (!\inst|unidad_aritmetica|resta|Sfaux~0_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|unidad_aritmetica|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst|unidad_aritmetica|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux15~0_combout\ = (\inst|unidad_aritmetica|suma|Sfaux~0_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\)))) # (!\inst|unidad_aritmetica|suma|Sfaux~0_combout\ & (\A[0]~input_o\ $ (((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|unidad_aritmetica|suma|Sfaux~0_combout\,
	combout => \inst|unidad_aritmetica|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst|unidad_aritmetica|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux15~1_combout\ = (\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (((\inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\)))) # (!\inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & 
-- (\A[0]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|Mux15~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|unidad_aritmetica|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux15~2_combout\ = (\inst|Mux16~0_combout\ & ((\inst|unidad_aritmetica|Mux15~0_combout\) # ((\inst|Mux17~0_combout\)))) # (!\inst|Mux16~0_combout\ & (((\inst|unidad_aritmetica|Mux15~1_combout\ & !\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux15~0_combout\,
	datab => \inst|Mux16~0_combout\,
	datac => \inst|unidad_aritmetica|Mux15~1_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|Mux15~2_combout\);

-- Location: LCCOMB_X29_Y5_N0
\inst|unidad_aritmetica|divi|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~0_combout\ = (\A[1]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[1]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add6~1\ = CARRY((\A[1]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add6~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~1\);

-- Location: LCCOMB_X29_Y5_N2
\inst|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|unidad_aritmetica|divi|Add5~41_combout\ & ((\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~1\)) # (!\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~1\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add5~41_combout\ & ((\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~1\))))
-- \inst|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|unidad_aritmetica|divi|Add5~41_combout\ & (\B[1]~input_o\ & !\inst|unidad_aritmetica|divi|Add6~1\)) # (!\inst|unidad_aritmetica|divi|Add5~41_combout\ & ((\B[1]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~41_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X29_Y5_N4
\inst|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~4_combout\ = ((\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add5~40_combout\ $ (\inst|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~5\ = CARRY((\B[2]~input_o\ & (\inst|unidad_aritmetica|divi|Add5~40_combout\ & !\inst|unidad_aritmetica|divi|Add6~3\)) # (!\B[2]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~40_combout\) # 
-- (!\inst|unidad_aritmetica|divi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~40_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X29_Y5_N6
\inst|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|unidad_aritmetica|divi|Add5~39_combout\ & ((\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~5\)) # (!\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~5\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add5~39_combout\ & ((\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~5\))))
-- \inst|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|unidad_aritmetica|divi|Add5~39_combout\ & (\B[3]~input_o\ & !\inst|unidad_aritmetica|divi|Add6~5\)) # (!\inst|unidad_aritmetica|divi|Add5~39_combout\ & ((\B[3]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~39_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X29_Y5_N8
\inst|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|unidad_aritmetica|divi|Add5~38_combout\ $ (\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|unidad_aritmetica|divi|Add5~38_combout\ & ((!\inst|unidad_aritmetica|divi|Add6~7\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~38_combout\ & (!\B[4]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~38_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X29_Y5_N10
\inst|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~37_combout\ & (!\inst|unidad_aritmetica|divi|Add6~9\)) # (!\inst|unidad_aritmetica|divi|Add5~37_combout\ & ((\inst|unidad_aritmetica|divi|Add6~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~37_combout\ & (\inst|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add5~37_combout\ & (!\inst|unidad_aritmetica|divi|Add6~9\))))
-- \inst|unidad_aritmetica|divi|Add6~11\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add6~9\) # (!\inst|unidad_aritmetica|divi|Add5~37_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~37_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X29_Y5_N12
\inst|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~12_combout\ = ((\inst|unidad_aritmetica|divi|Add5~36_combout\ $ (\B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add6~11\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~13\ = CARRY((\inst|unidad_aritmetica|divi|Add5~36_combout\ & ((!\inst|unidad_aritmetica|divi|Add6~11\) # (!\B[6]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~36_combout\ & (!\B[6]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~36_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|unidad_aritmetica|divi|Add6~12_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~13\);

-- Location: LCCOMB_X29_Y5_N14
\inst|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~14_combout\ = (\inst|unidad_aritmetica|divi|Add5~35_combout\ & ((\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~13\)) # (!\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~13\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add5~35_combout\ & ((\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~13\) # (GND))) # (!\B[7]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~13\))))
-- \inst|unidad_aritmetica|divi|Add6~15\ = CARRY((\inst|unidad_aritmetica|divi|Add5~35_combout\ & (\B[7]~input_o\ & !\inst|unidad_aritmetica|divi|Add6~13\)) # (!\inst|unidad_aritmetica|divi|Add5~35_combout\ & ((\B[7]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~35_combout\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~13\,
	combout => \inst|unidad_aritmetica|divi|Add6~14_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~15\);

-- Location: LCCOMB_X29_Y5_N16
\inst|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~16_combout\ = ((\inst|unidad_aritmetica|divi|Add5~34_combout\ $ (\B[8]~input_o\ $ (\inst|unidad_aritmetica|divi|Add6~15\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~17\ = CARRY((\inst|unidad_aritmetica|divi|Add5~34_combout\ & ((!\inst|unidad_aritmetica|divi|Add6~15\) # (!\B[8]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~34_combout\ & (!\B[8]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~15\,
	combout => \inst|unidad_aritmetica|divi|Add6~16_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~17\);

-- Location: LCCOMB_X29_Y5_N18
\inst|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|unidad_aritmetica|divi|Add5~33_combout\ & ((\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~17\)) # (!\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~17\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add5~33_combout\ & ((\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~17\) # (GND))) # (!\B[9]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~17\))))
-- \inst|unidad_aritmetica|divi|Add6~19\ = CARRY((\inst|unidad_aritmetica|divi|Add5~33_combout\ & (\B[9]~input_o\ & !\inst|unidad_aritmetica|divi|Add6~17\)) # (!\inst|unidad_aritmetica|divi|Add5~33_combout\ & ((\B[9]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~33_combout\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~17\,
	combout => \inst|unidad_aritmetica|divi|Add6~18_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~19\);

-- Location: LCCOMB_X29_Y5_N20
\inst|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~20_combout\ = ((\inst|unidad_aritmetica|divi|Add5~32_combout\ $ (\B[10]~input_o\ $ (\inst|unidad_aritmetica|divi|Add6~19\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~21\ = CARRY((\inst|unidad_aritmetica|divi|Add5~32_combout\ & ((!\inst|unidad_aritmetica|divi|Add6~19\) # (!\B[10]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~32_combout\ & (!\B[10]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~32_combout\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~19\,
	combout => \inst|unidad_aritmetica|divi|Add6~20_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~21\);

-- Location: LCCOMB_X29_Y5_N22
\inst|unidad_aritmetica|divi|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~22_combout\ = (\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~31_combout\ & (!\inst|unidad_aritmetica|divi|Add6~21\)) # (!\inst|unidad_aritmetica|divi|Add5~31_combout\ & ((\inst|unidad_aritmetica|divi|Add6~21\) # 
-- (GND))))) # (!\B[11]~input_o\ & ((\inst|unidad_aritmetica|divi|Add5~31_combout\ & (\inst|unidad_aritmetica|divi|Add6~21\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add5~31_combout\ & (!\inst|unidad_aritmetica|divi|Add6~21\))))
-- \inst|unidad_aritmetica|divi|Add6~23\ = CARRY((\B[11]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add6~21\) # (!\inst|unidad_aritmetica|divi|Add5~31_combout\))) # (!\B[11]~input_o\ & (!\inst|unidad_aritmetica|divi|Add5~31_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add6~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~31_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~21\,
	combout => \inst|unidad_aritmetica|divi|Add6~22_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~23\);

-- Location: LCCOMB_X29_Y5_N24
\inst|unidad_aritmetica|divi|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~24_combout\ = ((\inst|unidad_aritmetica|divi|Add5~30_combout\ $ (\B[12]~input_o\ $ (\inst|unidad_aritmetica|divi|Add6~23\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add6~25\ = CARRY((\inst|unidad_aritmetica|divi|Add5~30_combout\ & ((!\inst|unidad_aritmetica|divi|Add6~23\) # (!\B[12]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add5~30_combout\ & (!\B[12]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add6~23\,
	combout => \inst|unidad_aritmetica|divi|Add6~24_combout\,
	cout => \inst|unidad_aritmetica|divi|Add6~25\);

-- Location: LCCOMB_X29_Y5_N26
\inst|unidad_aritmetica|divi|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~26_combout\ = \B[13]~input_o\ $ (\inst|unidad_aritmetica|divi|Add5~29_combout\ $ (!\inst|unidad_aritmetica|divi|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add5~29_combout\,
	cin => \inst|unidad_aritmetica|divi|Add6~25\,
	combout => \inst|unidad_aritmetica|divi|Add6~26_combout\);

-- Location: LCCOMB_X29_Y5_N28
\inst|unidad_aritmetica|divi|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~28_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~29_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~26_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~29_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~28_combout\);

-- Location: LCCOMB_X29_Y6_N16
\inst|unidad_aritmetica|divi|Add6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~29_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~30_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add6~24_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~30_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~29_combout\);

-- Location: LCCOMB_X29_Y6_N26
\inst|unidad_aritmetica|divi|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~30_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~31_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~22_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~31_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~30_combout\);

-- Location: LCCOMB_X29_Y6_N20
\inst|unidad_aritmetica|divi|Add6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~31_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|unidad_aritmetica|divi|Add5~32_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~32_combout\,
	datad => \inst|unidad_aritmetica|divi|Add6~20_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~31_combout\);

-- Location: LCCOMB_X29_Y6_N22
\inst|unidad_aritmetica|divi|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~32_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~33_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~18_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add5~33_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~32_combout\);

-- Location: LCCOMB_X29_Y6_N28
\inst|unidad_aritmetica|divi|Add6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~33_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~34_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add6~16_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~34_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~33_combout\);

-- Location: LCCOMB_X29_Y6_N2
\inst|unidad_aritmetica|divi|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~34_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~35_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~14_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~35_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~34_combout\);

-- Location: LCCOMB_X28_Y5_N16
\inst|unidad_aritmetica|divi|Add6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~35_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~36_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add6~12_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~36_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~35_combout\);

-- Location: LCCOMB_X28_Y5_N10
\inst|unidad_aritmetica|divi|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~36_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~37_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add6~10_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~37_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~36_combout\);

-- Location: LCCOMB_X29_Y5_N30
\inst|unidad_aritmetica|divi|Add6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~37_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|unidad_aritmetica|divi|Add5~38_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~38_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datac => \inst|unidad_aritmetica|divi|Add6~8_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~37_combout\);

-- Location: LCCOMB_X28_Y5_N0
\inst|unidad_aritmetica|divi|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~38_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add5~39_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~6_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add5~39_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~38_combout\);

-- Location: LCCOMB_X29_Y6_N4
\inst|unidad_aritmetica|divi|Add6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~39_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|unidad_aritmetica|divi|Add5~40_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~40_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add6~4_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~39_combout\);

-- Location: LCCOMB_X28_Y5_N26
\inst|unidad_aritmetica|divi|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~40_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|unidad_aritmetica|divi|Add5~41_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add5~41_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add6~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~40_combout\);

-- Location: LCCOMB_X29_Y6_N18
\inst|unidad_aritmetica|divi|Add6~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add6~41_combout\ = (\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & (\A[1]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|unidad_aritmetica|divi|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \inst|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|unidad_aritmetica|divi|Add6~0_combout\,
	combout => \inst|unidad_aritmetica|divi|Add6~41_combout\);

-- Location: LCCOMB_X28_Y6_N2
\inst|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan7~1_cout\);

-- Location: LCCOMB_X28_Y6_N4
\inst|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~41_combout\ & !\inst|unidad_aritmetica|divi|LessThan7~1_cout\)) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~41_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~41_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X28_Y6_N6
\inst|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add6~40_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan7~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add6~40_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~40_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~5_cout\);

-- Location: LCCOMB_X28_Y6_N8
\inst|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~7_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add6~39_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan7~5_cout\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add6~39_combout\ & (!\B[3]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~39_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~7_cout\);

-- Location: LCCOMB_X28_Y6_N10
\inst|unidad_aritmetica|divi|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan7~7_cout\) # (!\inst|unidad_aritmetica|divi|Add6~38_combout\))) # (!\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~38_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~38_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~9_cout\);

-- Location: LCCOMB_X28_Y6_N12
\inst|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~37_combout\ & !\inst|unidad_aritmetica|divi|LessThan7~9_cout\)) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~37_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~37_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X28_Y6_N14
\inst|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan7~11_cout\) # (!\inst|unidad_aritmetica|divi|Add6~36_combout\))) # (!\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~36_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~36_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X28_Y6_N16
\inst|unidad_aritmetica|divi|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~15_cout\ = CARRY((\B[7]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~35_combout\ & !\inst|unidad_aritmetica|divi|LessThan7~13_cout\)) # (!\B[7]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~35_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~35_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~13_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~15_cout\);

-- Location: LCCOMB_X28_Y6_N18
\inst|unidad_aritmetica|divi|LessThan7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~17_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add6~34_combout\ & (\B[8]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan7~15_cout\)) # (!\inst|unidad_aritmetica|divi|Add6~34_combout\ & ((\B[8]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~34_combout\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~15_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~17_cout\);

-- Location: LCCOMB_X28_Y6_N20
\inst|unidad_aritmetica|divi|LessThan7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~19_cout\ = CARRY((\B[9]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~33_combout\ & !\inst|unidad_aritmetica|divi|LessThan7~17_cout\)) # (!\B[9]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~33_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~33_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~17_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~19_cout\);

-- Location: LCCOMB_X28_Y6_N22
\inst|unidad_aritmetica|divi|LessThan7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~21_cout\ = CARRY((\B[10]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan7~19_cout\) # (!\inst|unidad_aritmetica|divi|Add6~32_combout\))) # (!\B[10]~input_o\ & (!\inst|unidad_aritmetica|divi|Add6~32_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~32_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~19_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~21_cout\);

-- Location: LCCOMB_X28_Y6_N24
\inst|unidad_aritmetica|divi|LessThan7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~23_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add6~31_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan7~21_cout\) # (!\B[11]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add6~31_combout\ & (!\B[11]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan7~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~31_combout\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~21_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~23_cout\);

-- Location: LCCOMB_X28_Y6_N26
\inst|unidad_aritmetica|divi|LessThan7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~25_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add6~30_combout\ & (\B[12]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan7~23_cout\)) # (!\inst|unidad_aritmetica|divi|Add6~30_combout\ & ((\B[12]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add6~30_combout\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~23_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~25_cout\);

-- Location: LCCOMB_X28_Y6_N28
\inst|unidad_aritmetica|divi|LessThan7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~27_cout\ = CARRY((\B[13]~input_o\ & (\inst|unidad_aritmetica|divi|Add6~29_combout\ & !\inst|unidad_aritmetica|divi|LessThan7~25_cout\)) # (!\B[13]~input_o\ & ((\inst|unidad_aritmetica|divi|Add6~29_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan7~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add6~29_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan7~25_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan7~27_cout\);

-- Location: LCCOMB_X28_Y6_N30
\inst|unidad_aritmetica|divi|LessThan7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan7~28_combout\ = (\B[14]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add6~28_combout\) # (!\inst|unidad_aritmetica|divi|LessThan7~27_cout\))) # (!\B[14]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan7~27_cout\ & 
-- !\inst|unidad_aritmetica|divi|Add6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \inst|unidad_aritmetica|divi|Add6~28_combout\,
	cin => \inst|unidad_aritmetica|divi|LessThan7~27_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan7~28_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst|unidad_aritmetica|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux15~4_combout\ = (\inst|unidad_aritmetica|Mux15~2_combout\ & ((\inst|unidad_aritmetica|Mux15~3_combout\) # ((!\inst|Mux17~0_combout\)))) # (!\inst|unidad_aritmetica|Mux15~2_combout\ & 
-- (((!\inst|unidad_aritmetica|divi|LessThan7~28_combout\ & \inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux15~3_combout\,
	datab => \inst|unidad_aritmetica|Mux15~2_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan7~28_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|unidad_aritmetica|Mux15~4_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~2_combout\ = (\sel[3]~input_o\ & ((\sel[2]~input_o\) # ((\sel[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst|Mux15~2_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~4_combout\ = (\inst|Mux15~1_combout\) # ((\inst|Mux15~2_combout\) # ((\inst|Mux15~3_combout\ & \inst|unidad_aritmetica|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~3_combout\,
	datab => \inst|Mux15~1_combout\,
	datac => \inst|unidad_aritmetica|Mux15~4_combout\,
	datad => \inst|Mux15~2_combout\,
	combout => \inst|Mux15~4_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_z_flag <= \z_flag~output_o\;

ww_s_flag <= \s_flag~output_o\;

ww_ov_flag <= \ov_flag~output_o\;

ww_c_flag <= \c_flag~output_o\;

ww_R(15) <= \R[15]~output_o\;

ww_R(14) <= \R[14]~output_o\;

ww_R(13) <= \R[13]~output_o\;

ww_R(12) <= \R[12]~output_o\;

ww_R(11) <= \R[11]~output_o\;

ww_R(10) <= \R[10]~output_o\;

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


