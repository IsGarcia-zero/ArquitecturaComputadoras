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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/23/2022 17:57:19"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	sig1 : IN std_logic;
	sig2 : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	SF : OUT std_logic;
	OVF : OUT std_logic;
	CF : OUT std_logic;
	R : OUT std_logic_vector(9 DOWNTO 0);
	resultado : OUT std_logic_vector(9 DOWNTO 0);
	ecuacion : IN std_logic_vector(1 DOWNTO 0);
	s : OUT std_logic_vector(15 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- ZF	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SF	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVF	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CF	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[9]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig2	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig1	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sig1 : std_logic;
SIGNAL ww_sig2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SF : std_logic;
SIGNAL ww_OVF : std_logic;
SIGNAL ww_CF : std_logic;
SIGNAL ww_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ecuacion : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecuacion[1]~input_o\ : std_logic;
SIGNAL \ecuacion[0]~input_o\ : std_logic;
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
SIGNAL \resultado[9]~output_o\ : std_logic;
SIGNAL \resultado[8]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~4_combout\ : std_logic;
SIGNAL \sig2~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s0|Suma~0_combout\ : std_logic;
SIGNAL \sig1~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Cout~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~5_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~11_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s2|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|Yop~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~9_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~10_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~5_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s6|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s7|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s5|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~7_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~8_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|mult|Sfm~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|suma|s8|Suma~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~12_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux11~13_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|Ovfaux~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux12~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux10~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|resta|Cfaux~combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux10~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux10~4_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida[5]~2_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[8]~24\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[9]~25_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst1|Mux0~4_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[8]~23_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|R[2]~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst1|R[2]~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~4_combout\ : std_logic;
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
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
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
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
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
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst1|barrel_shifters|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
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
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Mux6~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
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
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst1|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
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
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|Mux8~3_combout\ : std_logic;
SIGNAL \inst1|unidad_aritmetica|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux[0]~27_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
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
SIGNAL \inst1|unidad_aritmetica|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|Mux9~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state0~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state1~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state2~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state3~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector37~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state4~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state5~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state5~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state6~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state7~q\ : std_logic;
SIGNAL \inst|ecuacion1|WideOr15~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state8~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector12~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state9~q\ : std_logic;
SIGNAL \inst|ecuacion1|WideOr15~combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector37~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector37~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector35~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector34~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector36~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector3~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector29~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector19~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[11]~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][3]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector30~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|R[4]~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[0]~27_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector33~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector28~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|R[4]~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector32~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector31~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector16~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[21]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][6]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector17~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector18~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector27~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector26~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[11]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][7]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector23~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[14]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector22~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector21~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[16]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][2]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector20~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector29~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector29~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector25~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[12]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[8]~23_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][8]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector15~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][9]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][9]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector14~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector24~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[13]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][9]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[8]~24\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[9]~25_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~4_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~63_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~60_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~23_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~24_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~25_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~28_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~26_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~27_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~29_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~62_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~61_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~30_combout\ : std_logic;
SIGNAL \inst|conv1|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~32_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~33_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~35_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~36_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~34_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~37_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~66_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~67_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~64_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~65_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~31_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~38_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~39_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~40_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~41_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~43_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~44_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~46_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~45_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~47_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~48_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~42_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~49_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~50_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~51_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~52_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~53_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~55_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~54_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~56_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~57_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~58_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~59_combout\ : std_logic;
SIGNAL \inst1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ecuacion1|MREG\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst1|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst1|unidad_aritmetica|suma|Xop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|sel_aux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|conv1|s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|sel_aux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ecuacion1|addr1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|addr2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ZF <= ww_ZF;
ww_sig1 <= sig1;
ww_sig2 <= sig2;
ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
SF <= ww_SF;
OVF <= ww_OVF;
CF <= ww_CF;
R <= ww_R;
resultado <= ww_resultado;
ww_ecuacion <= ecuacion;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\ZF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|unidad_aritmetica|Mux11~13_combout\,
	devoe => ww_devoe,
	o => \ZF~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\SF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|unidad_aritmetica|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \SF~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\OVF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|unidad_aritmetica|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \OVF~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\CF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|unidad_aritmetica|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \CF~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(9),
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(8),
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(7),
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(6),
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(5),
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(4),
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(3),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(1),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|R\(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\resultado[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(9),
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\resultado[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(8),
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\resultado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(7),
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\resultado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(6),
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\resultado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(5),
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\resultado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(4),
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\resultado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(3),
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\resultado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(2),
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\resultado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(1),
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\resultado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|R\(0),
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\s[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\s[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\s[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\s[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(12),
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\s[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(11),
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(10),
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(9),
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(8),
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(7),
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(6),
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(5),
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(4),
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(3),
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(2),
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(1),
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(0),
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOIBUF_X34_Y2_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

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

-- Location: IOIBUF_X34_Y2_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X26_Y6_N4
\inst1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(2) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(2));

-- Location: IOIBUF_X23_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X25_Y5_N28
\inst1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(10) = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(10));

-- Location: IOIBUF_X18_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X25_Y5_N2
\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\B[0]~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X26_Y5_N20
\inst1|unidad_aritmetica|mult|inter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(6) = (\A[1]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(6));

-- Location: LCCOMB_X25_Y5_N4
\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|inter\(10) & (\inst1|unidad_aritmetica|mult|inter\(2) $ (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(2),
	datab => \inst1|unidad_aritmetica|mult|inter\(10),
	datac => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|inter\(6),
	combout => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X26_Y6_N16
\inst1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(3) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X24_Y5_N0
\inst1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|inter\(2)) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \inst1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|inter\(2),
	combout => \inst1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N14
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

-- Location: LCCOMB_X26_Y6_N2
\inst1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (((\A[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N10
\inst1|unidad_aritmetica|mult|multi3|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X26_Y6_N12
\inst1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\) # ((\A[1]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\A[1]~input_o\ & (\B[2]~input_o\ & \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N22
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

-- Location: IOIBUF_X30_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X26_Y6_N18
\inst1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(4) = (\B[0]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X26_Y6_N24
\inst1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(4) $ (((\B[1]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|inter\(4),
	combout => \inst1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X26_Y6_N28
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

-- Location: LCCOMB_X24_Y5_N2
\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\A[0]~input_o\ & (\B[3]~input_o\ & \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X24_Y5_N18
\inst1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\B[4]~input_o\ & (\A[0]~input_o\ & \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N8
\inst1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|inter\(4)) # ((\B[1]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & (\B[1]~input_o\ & (\A[3]~input_o\ & \inst1|unidad_aritmetica|mult|inter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|inter\(4),
	combout => \inst1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
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

-- Location: LCCOMB_X26_Y6_N10
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

-- Location: LCCOMB_X26_Y6_N30
\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\) # ((\B[3]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & (\B[3]~input_o\ & (\A[1]~input_o\ & \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y5_N16
\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N22
\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\) # ((\B[4]~input_o\ & \A[1]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & (\B[4]~input_o\ & (\A[1]~input_o\ & \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y5_N6
\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\) # ((\B[3]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & (\B[3]~input_o\ & (\inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datab => \B[3]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N6
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

-- Location: LCCOMB_X26_Y6_N20
\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\) # ((\A[3]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ & (\A[3]~input_o\ & (\B[2]~input_o\ & \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X26_Y6_N0
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

-- Location: LCCOMB_X24_Y5_N14
\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N30
\inst1|unidad_aritmetica|mult|multi4|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst1|unidad_aritmetica|mult|multi4|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\);

-- Location: LCCOMB_X24_Y5_N26
\inst1|unidad_aritmetica|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~3_combout\ = (!\inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ & (!\inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ & (!\inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ & 
-- !\inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~3_combout\);

-- Location: LCCOMB_X25_Y5_N8
\inst1|unidad_aritmetica|mult|multi2|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|inter\(2) $ (\inst1|unidad_aritmetica|mult|inter\(10) $ (\inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|inter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(2),
	datab => \inst1|unidad_aritmetica|mult|inter\(10),
	datac => \inst1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|inter\(6),
	combout => \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\);

-- Location: LCCOMB_X25_Y5_N6
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

-- Location: LCCOMB_X23_Y5_N8
\inst1|unidad_aritmetica|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~0_combout\ = (!\inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ & (!\inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|unidad_aritmetica|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y5_N8
\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\) # ((\B[4]~input_o\ & \A[2]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\B[4]~input_o\ & (\inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\) # ((\B[2]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\B[2]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\inst1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (((\B[4]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

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

-- Location: IOIBUF_X34_Y4_N15
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: LCCOMB_X29_Y5_N4
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

-- Location: FF_X30_Y5_N29
\inst1|sel_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|Mux11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sel_aux\(0));

-- Location: LCCOMB_X29_Y5_N30
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (!\sel[2]~input_o\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst1|Mux10~0_combout\);

-- Location: FF_X29_Y5_N31
\inst1|sel_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sel_aux\(1));

-- Location: LCCOMB_X28_Y4_N24
\inst1|unidad_aritmetica|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~1_combout\ = (!\inst1|sel_aux\(0) & \inst1|sel_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sel_aux\(0),
	datad => \inst1|sel_aux\(1),
	combout => \inst1|unidad_aritmetica|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y4_N26
\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\B[3]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & (\B[3]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X28_Y4_N16
\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\) # ((\B[4]~input_o\ & \A[3]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & (\B[4]~input_o\ & (\inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X28_Y4_N30
\inst1|unidad_aritmetica|mult|multi4|s8|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\ = \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & ((\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\A[4]~input_o\ & (\B[4]~input_o\ & \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst1|unidad_aritmetica|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~2_combout\ = (!\inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ & (\inst1|unidad_aritmetica|Mux11~1_combout\ & (!\inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\ & 
-- !\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|Mux11~1_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\,
	datad => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~2_combout\);

-- Location: LCCOMB_X23_Y5_N22
\inst1|unidad_aritmetica|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~4_combout\ = (\inst1|unidad_aritmetica|Mux11~3_combout\ & (\inst1|unidad_aritmetica|Mux11~0_combout\ & \inst1|unidad_aritmetica|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|Mux11~3_combout\,
	datac => \inst1|unidad_aritmetica|Mux11~0_combout\,
	datad => \inst1|unidad_aritmetica|Mux11~2_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~4_combout\);

-- Location: IOIBUF_X34_Y10_N8
\sig2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig2,
	o => \sig2~input_o\);

-- Location: LCCOMB_X25_Y5_N20
\inst1|unidad_aritmetica|suma|s0|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s0|Suma~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\sig2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s0|Suma~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\sig1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sig1,
	o => \sig1~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X22_Y5_N8
\inst1|unidad_aritmetica|suma|Yop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~6_combout\ = \sig2~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2~input_o\,
	datac => \B[7]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~6_combout\);

-- Location: IOIBUF_X34_Y3_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

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

-- Location: LCCOMB_X22_Y5_N0
\inst1|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(6) = \sig1~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(6));

-- Location: IOIBUF_X16_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X22_Y4_N20
\inst1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(3) = \A[3]~input_o\ $ (\sig1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \sig1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X28_Y5_N26
\inst1|unidad_aritmetica|suma|Xop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(1) = \sig1~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(1));

-- Location: LCCOMB_X28_Y5_N14
\inst1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # ((\sig1~input_o\)))) # (!\B[0]~input_o\ & ((\sig2~input_o\) # ((!\A[0]~input_o\ & \sig1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \sig1~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X28_Y5_N22
\inst1|unidad_aritmetica|suma|Yop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~0_combout\ = \B[1]~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~0_combout\);

-- Location: LCCOMB_X28_Y5_N18
\inst1|unidad_aritmetica|suma|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\ = (\sig2~input_o\ & ((\A[0]~input_o\ & (!\B[0]~input_o\)) # (!\A[0]~input_o\ & ((\sig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \sig1~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\);

-- Location: LCCOMB_X28_Y5_N0
\inst1|unidad_aritmetica|suma|s1|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(1) & (\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ & (\inst1|unidad_aritmetica|suma|Yop~0_combout\ & \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\);

-- Location: LCCOMB_X28_Y5_N12
\inst1|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(2) = \A[2]~input_o\ $ (\sig1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \sig1~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(2));

-- Location: LCCOMB_X25_Y5_N12
\inst1|unidad_aritmetica|suma|s2|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(2) & (\B[2]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sig2~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst1|unidad_aritmetica|suma|s3|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(3) & (\inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\ & (\sig2~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(3),
	datac => \B[3]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y4_N18
\inst1|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(4) = \sig1~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(4));

-- Location: LCCOMB_X23_Y4_N8
\inst1|unidad_aritmetica|suma|s4|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(4) & (\sig2~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datac => \B[4]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\);

-- Location: IOIBUF_X32_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X23_Y4_N20
\inst1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(5) = \sig1~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datac => \A[5]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(5));

-- Location: LCCOMB_X23_Y4_N10
\inst1|unidad_aritmetica|suma|s5|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(5) & (\sig2~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y5_N6
\inst1|unidad_aritmetica|suma|s6|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(6) & (\inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\ & (\B[6]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \sig2~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y5_N14
\inst1|unidad_aritmetica|suma|s7|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\ = (\inst1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\ & (\sig1~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \A[7]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y5_N12
\inst1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Xop\(7) = \sig1~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datac => \A[7]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X23_Y4_N30
\inst1|unidad_aritmetica|suma|Yop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~4_combout\ = \B[5]~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~4_combout\);

-- Location: LCCOMB_X28_Y5_N8
\inst1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(1)) # (\B[1]~input_o\ $ (\sig2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(1) & (\B[1]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Xop\(1),
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X26_Y5_N8
\inst1|unidad_aritmetica|suma|s1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ = (\inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\) # (\inst1|unidad_aritmetica|suma|s1|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\);

-- Location: LCCOMB_X25_Y5_N16
\inst1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(2)) # (\B[2]~input_o\ $ (\sig2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(2) & (\B[2]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \sig2~input_o\,
	datac => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X25_Y5_N30
\inst1|unidad_aritmetica|suma|s2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\) # (\inst1|unidad_aritmetica|suma|s2|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s2|Cout~combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s2|Cout~combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(3)) # (\B[3]~input_o\ $ (\sig2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s2|Cout~combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(3) & (\B[3]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s2|Cout~combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(3),
	datac => \B[3]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N30
\inst1|unidad_aritmetica|suma|s3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s3|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s3|Cout~combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s3|Cout~combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(4)) # (\B[4]~input_o\ $ (\sig2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s3|Cout~combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(4) & (\B[4]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s3|Cout~combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(4),
	datac => \B[4]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst1|unidad_aritmetica|suma|s4|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s4|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s4|Cout~combout\);

-- Location: LCCOMB_X23_Y4_N28
\inst1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(5) & ((\inst1|unidad_aritmetica|suma|s4|Cout~combout\) # (\sig2~input_o\ $ (\B[5]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(5) & 
-- (\inst1|unidad_aritmetica|suma|s4|Cout~combout\ & (\sig2~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(5),
	datac => \B[5]~input_o\,
	datad => \inst1|unidad_aritmetica|suma|s4|Cout~combout\,
	combout => \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst1|unidad_aritmetica|suma|Yop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~3_combout\ = \B[4]~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~3_combout\);

-- Location: LCCOMB_X23_Y4_N22
\inst1|unidad_aritmetica|suma|s5|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s5|Cout~0_combout\) # ((\inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\ & (\inst1|unidad_aritmetica|suma|Yop~3_combout\ & \inst1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~3_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst1|unidad_aritmetica|suma|s5|Cout~combout\);

-- Location: LCCOMB_X23_Y4_N16
\inst1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|s5|Cout~combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(6)) # (\B[6]~input_o\ $ (\sig2~input_o\)))) # (!\inst1|unidad_aritmetica|suma|s5|Cout~combout\ & 
-- (\inst1|unidad_aritmetica|suma|Xop\(6) & (\B[6]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s5|Cout~combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \B[6]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y4_N26
\inst1|unidad_aritmetica|suma|s6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Cout~combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout~0_combout\) # ((\inst1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\ & \inst1|unidad_aritmetica|suma|Xop\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst1|unidad_aritmetica|suma|s6|Cout~combout\);

-- Location: LCCOMB_X22_Y5_N4
\inst1|unidad_aritmetica|suma|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|Xop\(7) $ (\inst1|unidad_aritmetica|suma|s6|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(7),
	datab => \inst1|unidad_aritmetica|suma|s6|Cout~combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\);

-- Location: LCCOMB_X22_Y5_N18
\inst1|unidad_aritmetica|suma|s7|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\ = (\inst1|unidad_aritmetica|suma|Xop\(7) & ((\inst1|unidad_aritmetica|suma|s6|Cout~combout\) # (\sig2~input_o\ $ (\B[7]~input_o\)))) # (!\inst1|unidad_aritmetica|suma|Xop\(7) & 
-- (\inst1|unidad_aritmetica|suma|s6|Cout~combout\ & (\sig2~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(7),
	datab => \inst1|unidad_aritmetica|suma|s6|Cout~combout\,
	datac => \sig2~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\);

-- Location: LCCOMB_X30_Y5_N28
\inst1|unidad_aritmetica|suma|s7|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ = (\inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\) # (\inst1|unidad_aritmetica|suma|s7|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst1|unidad_aritmetica|suma|Yop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~5_combout\ = \sig2~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2~input_o\,
	datac => \B[6]~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~5_combout\);

-- Location: LCCOMB_X22_Y5_N28
\inst1|unidad_aritmetica|suma|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|suma|Yop~5_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(6) & (\inst1|unidad_aritmetica|suma|Yop~6_combout\ & \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\);

-- Location: LCCOMB_X30_Y5_N0
\inst1|unidad_aritmetica|suma|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\ = (\sig1~input_o\ & ((\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\) # ((\inst1|unidad_aritmetica|suma|s7|Cout~0_combout\) # (\sig2~input_o\)))) # (!\sig1~input_o\ & (\sig2~input_o\ & 
-- ((\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\) # (\inst1|unidad_aritmetica|suma|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datab => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	datac => \inst1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\);

-- Location: LCCOMB_X23_Y4_N0
\inst1|unidad_aritmetica|suma|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|s4|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\ $ (\inst1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s4|Cout~combout\,
	datab => \inst1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~4_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\);

-- Location: LCCOMB_X30_Y5_N14
\inst1|unidad_aritmetica|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~11_combout\ = (!\inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\ & (!\inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ & (!\inst1|unidad_aritmetica|suma|s8|Cout~0_combout\ & 
-- !\inst1|unidad_aritmetica|suma|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~11_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(6) $ (\inst1|unidad_aritmetica|suma|s5|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst1|unidad_aritmetica|suma|s5|Cout~combout\,
	datad => \inst1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X25_Y5_N14
\inst1|unidad_aritmetica|suma|Yop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~1_combout\ = \B[2]~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~1_combout\);

-- Location: LCCOMB_X25_Y5_N24
\inst1|unidad_aritmetica|suma|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s2|Suma~combout\ = \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\ $ (\inst1|unidad_aritmetica|suma|s1|Cout~1_combout\ $ (\inst1|unidad_aritmetica|suma|Yop~1_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst1|unidad_aritmetica|suma|s2|Suma~combout\);

-- Location: LCCOMB_X22_Y4_N22
\inst1|unidad_aritmetica|suma|Yop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|Yop~2_combout\ = \B[3]~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|suma|Yop~2_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst1|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(3) $ (\inst1|unidad_aritmetica|suma|s2|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(3),
	datac => \inst1|unidad_aritmetica|suma|s2|Cout~combout\,
	datad => \inst1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst1|unidad_aritmetica|suma|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\ $ (\inst1|unidad_aritmetica|suma|s3|Cout~combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s3|Cout~combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\);

-- Location: LCCOMB_X28_Y5_N6
\inst1|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s1|Suma~combout\ = \inst1|unidad_aritmetica|suma|Xop\(1) $ (\inst1|unidad_aritmetica|suma|s0|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: LCCOMB_X25_Y5_N18
\inst1|unidad_aritmetica|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~9_combout\ = (!\inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ & (!\inst1|sel_aux\(0) & !\inst1|unidad_aritmetica|suma|s1|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datac => \inst1|sel_aux\(0),
	datad => \inst1|unidad_aritmetica|suma|s1|Suma~combout\,
	combout => \inst1|unidad_aritmetica|Mux11~9_combout\);

-- Location: LCCOMB_X25_Y5_N22
\inst1|unidad_aritmetica|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~10_combout\ = (!\inst1|unidad_aritmetica|suma|s6|Suma~combout\ & (!\inst1|unidad_aritmetica|suma|s2|Suma~combout\ & (!\inst1|unidad_aritmetica|suma|s3|Suma~combout\ & \inst1|unidad_aritmetica|Mux11~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s6|Suma~combout\,
	datab => \inst1|unidad_aritmetica|suma|s2|Suma~combout\,
	datac => \inst1|unidad_aritmetica|suma|s3|Suma~combout\,
	datad => \inst1|unidad_aritmetica|Mux11~9_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~10_combout\);

-- Location: LCCOMB_X28_Y5_N24
\inst1|unidad_aritmetica|resta|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\ = (!\A[0]~input_o\ & (\sig1~input_o\ & (\B[0]~input_o\ $ (!\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \sig1~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\);

-- Location: LCCOMB_X28_Y5_N16
\inst1|unidad_aritmetica|resta|s1|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\ & (\sig1~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datab => \A[1]~input_o\,
	datac => \inst1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\);

-- Location: LCCOMB_X28_Y5_N30
\inst1|unidad_aritmetica|resta|s2|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~1_combout\ & (\inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\ & (\A[2]~input_o\ $ (\sig1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Yop~1_combout\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y4_N14
\inst1|unidad_aritmetica|resta|s3|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~2_combout\ & (\inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\ & (\sig1~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datab => \A[3]~input_o\,
	datac => \inst1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y4_N12
\inst1|unidad_aritmetica|resta|s4|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\ = (\inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\ & (!\inst1|unidad_aritmetica|suma|Yop~3_combout\ & (\sig1~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \sig1~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst1|unidad_aritmetica|resta|s5|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\ & (\A[5]~input_o\ $ (\sig1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \A[5]~input_o\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y5_N2
\inst1|unidad_aritmetica|resta|s6|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~5_combout\ & (\inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\ & (\A[6]~input_o\ $ (\sig1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \A[6]~input_o\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y5_N24
\inst1|unidad_aritmetica|resta|s7|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ = (!\inst1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\ & (\sig1~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datab => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \A[7]~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\);

-- Location: LCCOMB_X28_Y5_N28
\inst1|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s0|Cout~0_combout\ = (\A[0]~input_o\) # ((\sig1~input_o\) # (\B[0]~input_o\ $ (!\sig2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \sig1~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X28_Y5_N10
\inst1|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\) # ((\inst1|unidad_aritmetica|suma|Xop\(1) & ((\inst1|unidad_aritmetica|resta|s0|Cout~0_combout\) # (!\inst1|unidad_aritmetica|suma|Yop~0_combout\))) # 
-- (!\inst1|unidad_aritmetica|suma|Xop\(1) & (\inst1|unidad_aritmetica|resta|s0|Cout~0_combout\ & !\inst1|unidad_aritmetica|suma|Yop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X28_Y5_N4
\inst1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|resta|s1|Cout~0_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(2)) # (!\inst1|unidad_aritmetica|suma|Yop~1_combout\))) # 
-- (!\inst1|unidad_aritmetica|resta|s1|Cout~0_combout\ & (!\inst1|unidad_aritmetica|suma|Yop~1_combout\ & \inst1|unidad_aritmetica|suma|Xop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N4
\inst1|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|resta|s2|Cout~0_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(3)) # (!\inst1|unidad_aritmetica|suma|Yop~2_combout\))) # 
-- (!\inst1|unidad_aritmetica|resta|s2|Cout~0_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(3) & !\inst1|unidad_aritmetica|suma|Yop~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(3),
	datac => \inst1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\inst1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|suma|Yop~3_combout\ & (\inst1|unidad_aritmetica|resta|s3|Cout~0_combout\ & \inst1|unidad_aritmetica|suma|Xop\(4))) # 
-- (!\inst1|unidad_aritmetica|suma|Yop~3_combout\ & ((\inst1|unidad_aritmetica|resta|s3|Cout~0_combout\) # (\inst1|unidad_aritmetica|suma|Xop\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	datac => \inst1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y4_N24
\inst1|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(5) & \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\)) # 
-- (!\inst1|unidad_aritmetica|suma|Yop~4_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(5)) # (\inst1|unidad_aritmetica|resta|s4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst1|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|resta|s5|Cout~0_combout\ & ((\inst1|unidad_aritmetica|suma|Xop\(6)) # (!\inst1|unidad_aritmetica|suma|Yop~5_combout\))) # 
-- (!\inst1|unidad_aritmetica|resta|s5|Cout~0_combout\ & (\inst1|unidad_aritmetica|suma|Xop\(6) & !\inst1|unidad_aritmetica|suma|Yop~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst1|unidad_aritmetica|suma|Yop~5_combout\,
	datad => \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y5_N26
\inst1|unidad_aritmetica|resta|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\ = (\inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\) # ((\inst1|unidad_aritmetica|suma|Xop\(7) & ((\inst1|unidad_aritmetica|resta|s6|Cout~0_combout\) # (!\inst1|unidad_aritmetica|suma|Yop~6_combout\))) # 
-- (!\inst1|unidad_aritmetica|suma|Xop\(7) & (!\inst1|unidad_aritmetica|suma|Yop~6_combout\ & \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(7),
	datab => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\);

-- Location: LCCOMB_X30_Y5_N22
\inst1|unidad_aritmetica|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~5_combout\ = (!\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ & (\sig2~input_o\ & (!\sig1~input_o\ & !\inst1|unidad_aritmetica|resta|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datab => \sig2~input_o\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~5_combout\);

-- Location: LCCOMB_X22_Y5_N20
\inst1|unidad_aritmetica|resta|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s6|Suma~combout\ = \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(6) $ (\inst1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst1|unidad_aritmetica|suma|Yop~5_combout\,
	datad => \inst1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s6|Suma~combout\);

-- Location: LCCOMB_X22_Y5_N10
\inst1|unidad_aritmetica|resta|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s7|Suma~combout\ = \inst1|unidad_aritmetica|suma|Xop\(7) $ (\inst1|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst1|unidad_aritmetica|resta|s6|Cout~0_combout\ $ (\inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(7),
	datab => \inst1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s7|Suma~combout\);

-- Location: LCCOMB_X23_Y4_N14
\inst1|unidad_aritmetica|resta|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s5|Suma~combout\ = \inst1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(5) $ (\inst1|unidad_aritmetica|resta|s4|Cout~0_combout\ $ (\inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s5|Suma~combout\);

-- Location: LCCOMB_X22_Y4_N2
\inst1|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s4|Suma~combout\ = \inst1|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\ $ (\inst1|unidad_aritmetica|resta|s3|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	datac => \inst1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst1|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X28_Y5_N20
\inst1|unidad_aritmetica|resta|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s1|Suma~0_combout\ = \inst1|unidad_aritmetica|suma|Xop\(1) $ (\inst1|unidad_aritmetica|resta|s0|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|resta|s1|Suma~0_combout\);

-- Location: LCCOMB_X28_Y5_N2
\inst1|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s2|Suma~combout\ = \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\ $ (\inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\ $ (\inst1|unidad_aritmetica|suma|Yop~1_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|resta|s1|Cout2~4_combout\,
	datac => \inst1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst1|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X26_Y5_N30
\inst1|unidad_aritmetica|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~6_combout\ = (\inst1|unidad_aritmetica|resta|s1|Suma~0_combout\ & (\inst1|unidad_aritmetica|resta|s2|Suma~combout\ & \inst1|sel_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s1|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|resta|s2|Suma~combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_aritmetica|Mux11~6_combout\);

-- Location: LCCOMB_X22_Y4_N8
\inst1|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|s3|Suma~combout\ = \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\ $ (\inst1|unidad_aritmetica|suma|Xop\(3) $ (\inst1|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|Xop\(3),
	datac => \inst1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	combout => \inst1|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X26_Y5_N28
\inst1|unidad_aritmetica|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~7_combout\ = (\inst1|unidad_aritmetica|resta|s5|Suma~combout\ & (\inst1|unidad_aritmetica|resta|s4|Suma~combout\ & (\inst1|unidad_aritmetica|Mux11~6_combout\ & \inst1|unidad_aritmetica|resta|s3|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s5|Suma~combout\,
	datab => \inst1|unidad_aritmetica|resta|s4|Suma~combout\,
	datac => \inst1|unidad_aritmetica|Mux11~6_combout\,
	datad => \inst1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst1|unidad_aritmetica|Mux11~7_combout\);

-- Location: LCCOMB_X26_Y5_N22
\inst1|unidad_aritmetica|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~8_combout\ = (\inst1|unidad_aritmetica|Mux11~5_combout\ & (\inst1|unidad_aritmetica|resta|s6|Suma~combout\ & (\inst1|unidad_aritmetica|resta|s7|Suma~combout\ & \inst1|unidad_aritmetica|Mux11~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|Mux11~5_combout\,
	datab => \inst1|unidad_aritmetica|resta|s6|Suma~combout\,
	datac => \inst1|unidad_aritmetica|resta|s7|Suma~combout\,
	datad => \inst1|unidad_aritmetica|Mux11~7_combout\,
	combout => \inst1|unidad_aritmetica|Mux11~8_combout\);

-- Location: LCCOMB_X30_Y5_N16
\inst1|unidad_aritmetica|mult|Sfm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|Sfm~0_combout\ = \sig1~input_o\ $ (\sig2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|mult|Sfm~0_combout\);

-- Location: LCCOMB_X30_Y5_N18
\inst1|unidad_aritmetica|suma|s8|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|suma|s8|Suma~combout\ = \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\ $ (\inst1|unidad_aritmetica|mult|Sfm~0_combout\ $ (((\inst1|unidad_aritmetica|suma|s7|Cout~1_combout\) # 
-- (\inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\,
	datab => \inst1|unidad_aritmetica|mult|Sfm~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	datad => \inst1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	combout => \inst1|unidad_aritmetica|suma|s8|Suma~combout\);

-- Location: LCCOMB_X26_Y5_N10
\inst1|unidad_aritmetica|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~12_combout\ = (\inst1|unidad_aritmetica|Mux11~8_combout\) # ((\inst1|unidad_aritmetica|Mux11~11_combout\ & (\inst1|unidad_aritmetica|Mux11~10_combout\ & !\inst1|unidad_aritmetica|suma|s8|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|Mux11~11_combout\,
	datab => \inst1|unidad_aritmetica|Mux11~10_combout\,
	datac => \inst1|unidad_aritmetica|Mux11~8_combout\,
	datad => \inst1|unidad_aritmetica|suma|s8|Suma~combout\,
	combout => \inst1|unidad_aritmetica|Mux11~12_combout\);

-- Location: LCCOMB_X25_Y5_N10
\inst1|unidad_aritmetica|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux11~13_combout\ = (\inst1|unidad_aritmetica|Mux11~4_combout\) # ((!\inst1|unidad_aritmetica|suma|s0|Suma~0_combout\ & (\inst1|unidad_aritmetica|Mux11~12_combout\ & !\inst1|sel_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|Mux11~4_combout\,
	datab => \inst1|unidad_aritmetica|suma|s0|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|Mux11~12_combout\,
	datad => \inst1|sel_aux\(1),
	combout => \inst1|unidad_aritmetica|Mux11~13_combout\);

-- Location: LCCOMB_X23_Y4_N6
\inst1|unidad_aritmetica|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux13~0_combout\ = (\inst1|sel_aux\(1) & (\sig1~input_o\ $ (\sig2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1~input_o\,
	datac => \inst1|sel_aux\(1),
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|Mux13~0_combout\);

-- Location: LCCOMB_X30_Y5_N20
\inst1|unidad_aritmetica|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux12~0_combout\ = (!\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\ $ (((\inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\) # (\inst1|unidad_aritmetica|suma|s8|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(0),
	datab => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\,
	datac => \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	combout => \inst1|unidad_aritmetica|Mux12~0_combout\);

-- Location: LCCOMB_X30_Y5_N30
\inst1|unidad_aritmetica|resta|Ovfaux\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|Ovfaux~combout\ = (\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ & (((!\inst1|unidad_aritmetica|resta|s7|Cout~0_combout\)))) # (!\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ & ((\sig2~input_o\ & (!\sig1~input_o\ & 
-- \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\)) # (!\sig2~input_o\ & (\sig1~input_o\ & !\inst1|unidad_aritmetica|resta|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datab => \sig2~input_o\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|resta|Ovfaux~combout\);

-- Location: LCCOMB_X30_Y5_N12
\inst1|unidad_aritmetica|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux12~1_combout\ = (!\inst1|sel_aux\(1) & ((\inst1|unidad_aritmetica|Mux12~0_combout\) # ((\inst1|unidad_aritmetica|resta|Ovfaux~combout\ & \inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|Mux12~0_combout\,
	datac => \inst1|unidad_aritmetica|resta|Ovfaux~combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_aritmetica|Mux12~1_combout\);

-- Location: LCCOMB_X29_Y4_N28
\inst1|unidad_aritmetica|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux12~2_combout\ = (\inst1|unidad_aritmetica|Mux12~1_combout\) # ((\inst1|unidad_aritmetica|Mux11~1_combout\ & (\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ $ (\inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|Mux11~1_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst1|unidad_aritmetica|Mux12~1_combout\,
	combout => \inst1|unidad_aritmetica|Mux12~2_combout\);

-- Location: LCCOMB_X30_Y5_N26
\inst1|unidad_aritmetica|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux10~2_combout\ = (!\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|mult|Sfm~0_combout\ $ (((\inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\) # (\inst1|unidad_aritmetica|suma|s8|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\,
	datab => \inst1|unidad_aritmetica|mult|Sfm~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s8|Cout~0_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_aritmetica|Mux10~2_combout\);

-- Location: LCCOMB_X30_Y5_N8
\inst1|unidad_aritmetica|resta|Cfaux\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|resta|Cfaux~combout\ = (\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ & (\sig2~input_o\ $ ((!\sig1~input_o\)))) # (!\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\ & ((\sig2~input_o\ & 
-- ((\inst1|unidad_aritmetica|resta|s7|Cout~0_combout\) # (!\sig1~input_o\))) # (!\sig2~input_o\ & (!\sig1~input_o\ & \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datab => \sig2~input_o\,
	datac => \sig1~input_o\,
	datad => \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst1|unidad_aritmetica|resta|Cfaux~combout\);

-- Location: LCCOMB_X30_Y5_N10
\inst1|unidad_aritmetica|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux10~3_combout\ = (!\inst1|sel_aux\(1) & ((\inst1|unidad_aritmetica|Mux10~2_combout\) # ((\inst1|sel_aux\(0) & \inst1|unidad_aritmetica|resta|Cfaux~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|Mux10~2_combout\,
	datab => \inst1|sel_aux\(1),
	datac => \inst1|sel_aux\(0),
	datad => \inst1|unidad_aritmetica|resta|Cfaux~combout\,
	combout => \inst1|unidad_aritmetica|Mux10~3_combout\);

-- Location: LCCOMB_X30_Y5_N2
\inst1|unidad_aritmetica|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux10~4_combout\ = (\inst1|unidad_aritmetica|Mux10~3_combout\) # ((\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & !\inst1|sel_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datac => \inst1|sel_aux\(0),
	datad => \inst1|unidad_aritmetica|Mux10~3_combout\,
	combout => \inst1|unidad_aritmetica|Mux10~4_combout\);

-- Location: LCCOMB_X30_Y5_N24
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\sel[1]~input_o\ & ((\sel[2]~input_o\) # (\sel[0]~input_o\))) # (!\sel[1]~input_o\ & (\sel[2]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst1|Mux0~2_combout\);

-- Location: IOIBUF_X0_Y5_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: FF_X29_Y5_N27
\inst1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(9));

-- Location: FF_X29_Y5_N29
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

-- Location: LCCOMB_X29_Y5_N28
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\sel[2]~input_o\ & ((\sel[1]~input_o\ & (!\sel[0]~input_o\ & \inst1|barrel_shifters|salShifters\(9))) # (!\sel[1]~input_o\ & ((\inst1|barrel_shifters|salShifters\(9)) # (!\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(9),
	datad => \sel[2]~input_o\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y5_N26
\inst1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\sel[3]~input_o\ & ((\inst1|Mux0~2_combout\) # (\inst1|Mux0~1_combout\))) # (!\sel[3]~input_o\ & (\inst1|Mux0~2_combout\ & \inst1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|Mux0~2_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y5_N8
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (!\sel[2]~input_o\ & (!\sel[3]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y4_N0
\inst1|unidad_logica|salida[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida[5]~2_combout\ = \inst1|sel_aux\(1) $ (\inst1|sel_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida[5]~2_combout\);

-- Location: IOIBUF_X34_Y12_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X30_Y4_N26
\inst1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~0_combout\ = (\A[9]~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst1|unidad_logica|salida~0_combout\);

-- Location: LCCOMB_X30_Y4_N0
\inst1|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[1]~9_combout\ = (\A[1]~input_o\ & (!\A[0]~input_o\ & VCC)) # (!\A[1]~input_o\ & (\A[0]~input_o\ $ (GND)))
-- \inst1|unidad_logica|aux[1]~10\ = CARRY((!\A[1]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_logica|aux[1]~9_combout\,
	cout => \inst1|unidad_logica|aux[1]~10\);

-- Location: LCCOMB_X30_Y4_N2
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

-- Location: LCCOMB_X30_Y4_N4
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

-- Location: LCCOMB_X30_Y4_N6
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

-- Location: LCCOMB_X30_Y4_N8
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

-- Location: LCCOMB_X30_Y4_N10
\inst1|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[6]~19_combout\ = (\A[6]~input_o\ & ((\inst1|unidad_logica|aux[5]~18\) # (GND))) # (!\A[6]~input_o\ & (!\inst1|unidad_logica|aux[5]~18\))
-- \inst1|unidad_logica|aux[6]~20\ = CARRY((\A[6]~input_o\) # (!\inst1|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[5]~18\,
	combout => \inst1|unidad_logica|aux[6]~19_combout\,
	cout => \inst1|unidad_logica|aux[6]~20\);

-- Location: LCCOMB_X30_Y4_N12
\inst1|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[7]~21_combout\ = (\A[7]~input_o\ & (!\inst1|unidad_logica|aux[6]~20\ & VCC)) # (!\A[7]~input_o\ & (\inst1|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst1|unidad_logica|aux[7]~22\ = CARRY((!\A[7]~input_o\ & !\inst1|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[6]~20\,
	combout => \inst1|unidad_logica|aux[7]~21_combout\,
	cout => \inst1|unidad_logica|aux[7]~22\);

-- Location: LCCOMB_X30_Y4_N14
\inst1|unidad_logica|aux[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[8]~23_combout\ = (\A[8]~input_o\ & ((\inst1|unidad_logica|aux[7]~22\) # (GND))) # (!\A[8]~input_o\ & (!\inst1|unidad_logica|aux[7]~22\))
-- \inst1|unidad_logica|aux[8]~24\ = CARRY((\A[8]~input_o\) # (!\inst1|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_logica|aux[7]~22\,
	combout => \inst1|unidad_logica|aux[8]~23_combout\,
	cout => \inst1|unidad_logica|aux[8]~24\);

-- Location: LCCOMB_X30_Y4_N16
\inst1|unidad_logica|aux[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[9]~25_combout\ = \A[9]~input_o\ $ (\inst1|unidad_logica|aux[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	cin => \inst1|unidad_logica|aux[8]~24\,
	combout => \inst1|unidad_logica|aux[9]~25_combout\);

-- Location: LCCOMB_X30_Y4_N24
\inst1|unidad_logica|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|Equal1~0_combout\ = (\inst1|sel_aux\(1) & \inst1|sel_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|Equal1~0_combout\);

-- Location: FF_X30_Y4_N17
\inst1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[9]~25_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(9));

-- Location: LCCOMB_X30_Y4_N28
\inst1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~1_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(9)) # (!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_logica|salida~0_combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~0_combout\,
	datab => \inst1|unidad_logica|aux\(9),
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~1_combout\);

-- Location: LCCOMB_X30_Y4_N20
\inst1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~3_combout\ = (\inst1|unidad_logica|salida[5]~2_combout\ & ((\inst1|unidad_logica|salida~1_combout\ & (!\A[9]~input_o\)) # (!\inst1|unidad_logica|salida~1_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\))))) # 
-- (!\inst1|unidad_logica|salida[5]~2_combout\ & (\inst1|unidad_logica|salida~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida[5]~2_combout\,
	datab => \inst1|unidad_logica|salida~1_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst1|unidad_logica|salida~3_combout\);

-- Location: FF_X30_Y4_N21
\inst1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(9));

-- Location: LCCOMB_X29_Y5_N14
\inst1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~4_combout\ = (\inst1|Mux0~3_combout\) # ((\inst1|unidad_logica|salida\(9) & ((\inst1|Mux0~1_combout\) # (\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|unidad_logica|salida\(9),
	combout => \inst1|Mux0~4_combout\);

-- Location: FF_X29_Y5_N15
\inst1|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(9));

-- Location: IOIBUF_X34_Y12_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X30_Y4_N30
\inst1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~4_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst1|unidad_logica|salida~4_combout\);

-- Location: FF_X30_Y4_N15
\inst1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[8]~23_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(8));

-- Location: LCCOMB_X30_Y4_N18
\inst1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~5_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(8)) # (!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_logica|salida~4_combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~4_combout\,
	datab => \inst1|unidad_logica|aux\(8),
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X30_Y4_N22
\inst1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~6_combout\ = (\inst1|unidad_logica|salida~5_combout\ & (((!\A[8]~input_o\) # (!\inst1|unidad_logica|salida[5]~2_combout\)))) # (!\inst1|unidad_logica|salida~5_combout\ & (\inst1|unidad_logica|salida[5]~2_combout\ & 
-- ((\B[8]~input_o\) # (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \inst1|unidad_logica|salida~5_combout\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \A[8]~input_o\,
	combout => \inst1|unidad_logica|salida~6_combout\);

-- Location: FF_X30_Y4_N23
\inst1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(8));

-- Location: LCCOMB_X30_Y5_N6
\inst1|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux1~2_combout\ = \inst1|unidad_aritmetica|mult|Sfm~0_combout\ $ (((\inst1|sel_aux\(0) & ((\inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\))) # (!\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s7|Cout2~4_combout\,
	datab => \inst1|unidad_aritmetica|mult|Sfm~0_combout\,
	datac => \inst1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_aritmetica|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y5_N4
\inst1|unidad_aritmetica|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux1~3_combout\ = \inst1|unidad_aritmetica|Mux1~2_combout\ $ (((\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|resta|s7|Cout~0_combout\)) # (!\inst1|sel_aux\(0) & ((\inst1|unidad_aritmetica|suma|s7|Cout~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	datac => \inst1|sel_aux\(0),
	datad => \inst1|unidad_aritmetica|Mux1~2_combout\,
	combout => \inst1|unidad_aritmetica|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y5_N24
\inst1|unidad_aritmetica|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux1~4_combout\ = (\inst1|sel_aux\(1) & (!\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\))) # (!\inst1|sel_aux\(1) & (\inst1|sel_aux\(0) $ (((\inst1|unidad_aritmetica|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|mult|multi4|s8|Suma~2_combout\,
	datad => \inst1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst1|unidad_aritmetica|Mux1~4_combout\);

-- Location: LCCOMB_X29_Y5_N22
\inst1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\sel[3]~input_o\ & ((\inst1|unidad_aritmetica|Mux1~4_combout\) # ((\sel[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inst1|unidad_aritmetica|Mux1~4_combout\,
	combout => \inst1|Mux1~3_combout\);

-- Location: FF_X28_Y5_N13
\inst1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(8));

-- Location: FF_X29_Y5_N13
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

-- Location: LCCOMB_X29_Y5_N12
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\sel[3]~input_o\) # ((\inst1|barrel_shifters|salShifters\(8) & (\sel[1]~input_o\ $ (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inst1|barrel_shifters|salShifters\(8),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y5_N6
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\ & ((\inst1|unidad_aritmetica|Mux1~4_combout\)))) # (!\sel[1]~input_o\ & (!\sel[0]~input_o\ & (\inst1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inst1|unidad_logica|salida\(8),
	datad => \inst1|unidad_aritmetica|Mux1~4_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y5_N0
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\sel[2]~input_o\ & ((\inst1|Mux1~1_combout\) # (\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~1_combout\,
	datac => \sel[2]~input_o\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X29_Y5_N2
\inst1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (\inst1|Mux1~3_combout\) # ((\inst1|Mux1~2_combout\) # ((\inst1|Mux0~0_combout\ & \inst1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|unidad_logica|salida\(8),
	datac => \inst1|Mux1~3_combout\,
	datad => \inst1|Mux1~2_combout\,
	combout => \inst1|Mux1~4_combout\);

-- Location: FF_X29_Y5_N3
\inst1|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(8));

-- Location: LCCOMB_X29_Y5_N16
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\sel[2]~input_o\ & !\sel[3]~input_o\)) # (!\sel[0]~input_o\ & (!\sel[2]~input_o\ & \sel[3]~input_o\)))) # (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & ((\sel[3]~input_o\) # 
-- (!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X28_Y4_N28
\inst1|R[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|R[2]~0_combout\ = (\sel[2]~input_o\ & (\sel[1]~input_o\ & (!\sel[3]~input_o\ & \sel[0]~input_o\))) # (!\sel[2]~input_o\ & (\sel[3]~input_o\ & ((!\sel[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst1|R[2]~0_combout\);

-- Location: FF_X30_Y4_N13
\inst1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[7]~21_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(7));

-- Location: LCCOMB_X26_Y4_N14
\inst1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~7_combout\ = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst1|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X26_Y4_N2
\inst1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~8_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_logica|aux\(7)) # ((!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_logica|salida~7_combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|aux\(7),
	datab => \inst1|unidad_logica|salida~7_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~8_combout\);

-- Location: LCCOMB_X26_Y4_N24
\inst1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~9_combout\ = (\A[7]~input_o\ & (\inst1|unidad_logica|salida~8_combout\ $ ((\inst1|unidad_logica|salida[5]~2_combout\)))) # (!\A[7]~input_o\ & ((\inst1|unidad_logica|salida~8_combout\) # 
-- ((\inst1|unidad_logica|salida[5]~2_combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \inst1|unidad_logica|salida~8_combout\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \B[7]~input_o\,
	combout => \inst1|unidad_logica|salida~9_combout\);

-- Location: FF_X26_Y4_N25
\inst1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(7));

-- Location: FF_X26_Y4_N15
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

-- Location: FF_X26_Y4_N9
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

-- Location: LCCOMB_X29_Y4_N12
\inst1|R[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|R[2]~1_combout\ = \sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst1|R[2]~1_combout\);

-- Location: LCCOMB_X26_Y4_N8
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(7))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|unidad_logica|salida\(7),
	datac => \inst1|barrel_shifters|salShifters\(7),
	datad => \inst1|R[2]~1_combout\,
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y3_N24
\inst1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\B[3]~input_o\) # ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y3_N24
\inst1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\B[6]~input_o\) # ((\B[7]~input_o\) # ((!\A[7]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y3_N2
\inst1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst1|unidad_aritmetica|divi|LessThan0~1_combout\) # ((\B[1]~input_o\) # (\inst1|unidad_aritmetica|divi|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y4_N12
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\) # ((\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|suma|s7|Suma~0_combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y4_N10
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux2~0_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~2_combout\)) # (!\inst1|Mux2~0_combout\ & ((!\inst1|unidad_aritmetica|resta|s7|Suma~combout\))))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|resta|s7|Suma~combout\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y4_N28
\inst1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~4_combout\ = (\inst1|Mux2~3_combout\ & (\inst1|R[2]~0_combout\ & ((\inst1|Mux2~1_combout\)))) # (!\inst1|Mux2~3_combout\ & ((\inst1|Mux2~2_combout\) # ((\inst1|R[2]~0_combout\ & \inst1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~3_combout\,
	datab => \inst1|R[2]~0_combout\,
	datac => \inst1|Mux2~2_combout\,
	datad => \inst1|Mux2~1_combout\,
	combout => \inst1|Mux2~4_combout\);

-- Location: FF_X26_Y4_N29
\inst1|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(7));

-- Location: LCCOMB_X21_Y3_N10
\inst1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~0_combout\ = (\B[0]~input_o\ & (\A[7]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[7]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add0~1\ = CARRY((\A[7]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X21_Y3_N12
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

-- Location: LCCOMB_X21_Y3_N14
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

-- Location: LCCOMB_X21_Y3_N16
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

-- Location: LCCOMB_X21_Y3_N18
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

-- Location: LCCOMB_X21_Y3_N20
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

-- Location: LCCOMB_X21_Y3_N22
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

-- Location: LCCOMB_X21_Y3_N8
\inst1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~14_combout\ = (\inst1|unidad_aritmetica|divi|Add0~12_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~12_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X21_Y3_N26
\inst1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~15_combout\ = (\inst1|unidad_aritmetica|divi|Add0~10_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~10_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X21_Y3_N0
\inst1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~16_combout\ = (\inst1|unidad_aritmetica|divi|Add0~8_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~8_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X21_Y3_N4
\inst1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~17_combout\ = (\inst1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~6_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X22_Y3_N30
\inst1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~18_combout\ = (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst1|unidad_aritmetica|divi|Add0~4_combout\ & !\inst1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~4_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X21_Y3_N6
\inst1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~19_combout\ = (\inst1|unidad_aritmetica|divi|Add0~2_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~2_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X21_Y3_N28
\inst1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\A[7]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\inst1|unidad_aritmetica|divi|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datad => \A[7]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X22_Y3_N4
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

-- Location: LCCOMB_X22_Y3_N6
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

-- Location: LCCOMB_X22_Y3_N8
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

-- Location: LCCOMB_X22_Y3_N10
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

-- Location: LCCOMB_X22_Y3_N12
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

-- Location: LCCOMB_X22_Y3_N14
\inst1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan1~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y3_N16
\inst1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan1~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add0~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y3_N18
\inst1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\B[7]~input_o\ & ((\inst1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst1|unidad_aritmetica|divi|Add0~14_combout\))) # (!\B[7]~input_o\ & (\inst1|unidad_aritmetica|divi|LessThan1~13_cout\ & 
-- !\inst1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X29_Y5_N20
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\) # (\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|suma|s6|Suma~combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s6|Suma~combout\,
	datab => \inst1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y5_N10
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux3~0_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\))) # (!\inst1|Mux3~0_combout\ & (!\inst1|unidad_aritmetica|resta|s6|Suma~combout\)))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s6|Suma~combout\,
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: FF_X30_Y4_N11
\inst1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[6]~19_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(6));

-- Location: LCCOMB_X26_Y4_N22
\inst1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~10_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	combout => \inst1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X26_Y4_N16
\inst1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~11_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_logica|aux\(6)) # ((!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_logica|salida~10_combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|aux\(6),
	datab => \inst1|unidad_logica|salida~10_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~11_combout\);

-- Location: LCCOMB_X26_Y4_N20
\inst1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~12_combout\ = (\A[6]~input_o\ & ((\inst1|unidad_logica|salida[5]~2_combout\ $ (\inst1|unidad_logica|salida~11_combout\)))) # (!\A[6]~input_o\ & ((\inst1|unidad_logica|salida~11_combout\) # ((\B[6]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \inst1|unidad_logica|salida~11_combout\,
	combout => \inst1|unidad_logica|salida~12_combout\);

-- Location: FF_X26_Y4_N21
\inst1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(6));

-- Location: FF_X26_Y4_N23
\inst1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(6));

-- Location: FF_X26_Y4_N19
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

-- Location: LCCOMB_X26_Y4_N18
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(6))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|unidad_logica|salida\(6),
	datac => \inst1|barrel_shifters|salShifters\(6),
	datad => \inst1|R[2]~1_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y5_N18
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux3~1_combout\) # ((!\inst1|Mux2~3_combout\ & \inst1|Mux3~2_combout\)))) # (!\inst1|R[2]~0_combout\ & (!\inst1|Mux2~3_combout\ & ((\inst1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux2~3_combout\,
	datac => \inst1|Mux3~1_combout\,
	datad => \inst1|Mux3~2_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: FF_X29_Y5_N19
\inst1|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(6));

-- Location: LCCOMB_X25_Y4_N30
\inst1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~13_combout\ = (\B[5]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst1|unidad_logica|salida~13_combout\);

-- Location: FF_X30_Y4_N31
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
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(5));

-- Location: LCCOMB_X25_Y4_N6
\inst1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~14_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(5)) # (!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_logica|salida~13_combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_logica|salida~13_combout\,
	datac => \inst1|unidad_logica|aux\(5),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~14_combout\);

-- Location: LCCOMB_X25_Y4_N28
\inst1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~15_combout\ = (\A[5]~input_o\ & ((\inst1|unidad_logica|salida[5]~2_combout\ $ (\inst1|unidad_logica|salida~14_combout\)))) # (!\A[5]~input_o\ & ((\inst1|unidad_logica|salida~14_combout\) # ((\B[5]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \inst1|unidad_logica|salida~14_combout\,
	combout => \inst1|unidad_logica|salida~15_combout\);

-- Location: FF_X25_Y4_N29
\inst1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(5));

-- Location: FF_X25_Y4_N31
\inst1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(5));

-- Location: FF_X25_Y4_N23
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

-- Location: LCCOMB_X25_Y4_N22
\inst1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(5))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~1_combout\,
	datab => \inst1|unidad_logica|salida\(5),
	datac => \inst1|barrel_shifters|salShifters\(5),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y3_N18
\inst1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~0_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[6]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add1~1\ = CARRY((\A[6]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X23_Y3_N20
\inst1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst1|unidad_aritmetica|divi|Add0~20_combout\ & ((\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~1\)) # (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~1\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add0~20_combout\ & ((\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add1~1\))))
-- \inst1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst1|unidad_aritmetica|divi|Add0~20_combout\ & (\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|Add1~1\)) # (!\inst1|unidad_aritmetica|divi|Add0~20_combout\ & ((\B[1]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X23_Y3_N22
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

-- Location: LCCOMB_X23_Y3_N24
\inst1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~6_combout\ = (\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst1|unidad_aritmetica|divi|Add1~5\)) # (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst1|unidad_aritmetica|divi|Add1~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add0~18_combout\ & (\inst1|unidad_aritmetica|divi|Add1~5\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst1|unidad_aritmetica|divi|Add1~5\))))
-- \inst1|unidad_aritmetica|divi|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add1~5\) # (!\inst1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\B[3]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X23_Y3_N26
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

-- Location: LCCOMB_X23_Y3_N28
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

-- Location: LCCOMB_X23_Y3_N30
\inst1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add1~11\ $ (\inst1|unidad_aritmetica|divi|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X22_Y3_N28
\inst1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add0~15_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~12_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X22_Y3_N22
\inst1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~16_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add1~10_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X22_Y3_N0
\inst1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add1~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add1~6_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X22_Y3_N20
\inst1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add1~4_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X22_Y3_N2
\inst1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add0~20_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X23_Y3_N16
\inst1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\A[6]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add1~0_combout\,
	datad => \A[6]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X23_Y3_N0
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

-- Location: LCCOMB_X23_Y3_N2
\inst1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~20_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan2~1_cout\) # (!\B[1]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X23_Y3_N4
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

-- Location: LCCOMB_X23_Y3_N6
\inst1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\B[3]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst1|unidad_aritmetica|divi|LessThan2~5_cout\)) # (!\B[3]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~18_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X23_Y3_N8
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

-- Location: LCCOMB_X23_Y3_N10
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

-- Location: LCCOMB_X23_Y3_N12
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

-- Location: LCCOMB_X23_Y3_N14
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

-- Location: LCCOMB_X25_Y4_N18
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\) # (\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|suma|s5|Suma~0_combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux4~0_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\))) # (!\inst1|Mux4~0_combout\ & (!\inst1|unidad_aritmetica|resta|s5|Suma~combout\)))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s5|Suma~combout\,
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y4_N10
\inst1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux4~1_combout\) # ((!\inst1|Mux2~3_combout\ & \inst1|Mux4~2_combout\)))) # (!\inst1|R[2]~0_combout\ & (!\inst1|Mux2~3_combout\ & (\inst1|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux2~3_combout\,
	datac => \inst1|Mux4~2_combout\,
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux4~3_combout\);

-- Location: FF_X25_Y4_N11
\inst1|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(5));

-- Location: LCCOMB_X25_Y4_N26
\inst1|unidad_aritmetica|mult|inter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(24) = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(24));

-- Location: FF_X30_Y4_N25
\inst1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|unidad_logica|aux[4]~15_combout\,
	sload => VCC,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(4));

-- Location: LCCOMB_X25_Y4_N2
\inst1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~16_combout\ = (\inst1|sel_aux\(0) & (((\inst1|unidad_logica|aux\(4) & \inst1|sel_aux\(1))))) # (!\inst1|sel_aux\(0) & ((\inst1|unidad_aritmetica|mult|inter\(24)) # ((\inst1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(24),
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_logica|aux\(4),
	datad => \inst1|sel_aux\(1),
	combout => \inst1|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X25_Y4_N16
\inst1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~17_combout\ = (\A[4]~input_o\ & ((\inst1|unidad_logica|salida[5]~2_combout\ $ (\inst1|unidad_logica|salida~16_combout\)))) # (!\A[4]~input_o\ & ((\inst1|unidad_logica|salida~16_combout\) # ((\B[4]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \inst1|unidad_logica|salida~16_combout\,
	combout => \inst1|unidad_logica|salida~17_combout\);

-- Location: FF_X25_Y4_N17
\inst1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(4));

-- Location: LCCOMB_X25_Y4_N14
\inst1|barrel_shifters|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[4]~feeder_combout\ = \A[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[3]~input_o\,
	combout => \inst1|barrel_shifters|aux[4]~feeder_combout\);

-- Location: FF_X25_Y4_N15
\inst1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(4));

-- Location: FF_X25_Y4_N9
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

-- Location: LCCOMB_X25_Y4_N8
\inst1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(4))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~1_combout\,
	datab => \inst1|unidad_logica|salida\(4),
	datac => \inst1|barrel_shifters|salShifters\(4),
	datad => \sel[3]~input_o\,
	combout => \inst1|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y3_N14
\inst1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~0_combout\ = (\A[5]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[5]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst1|unidad_aritmetica|divi|Add2~1\ = CARRY((\A[5]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X24_Y3_N16
\inst1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst1|unidad_aritmetica|divi|Add1~20_combout\ & ((\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~1\)) # (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add2~1\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & ((\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~1\))))
-- \inst1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~20_combout\ & (\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|Add2~1\)) # (!\inst1|unidad_aritmetica|divi|Add1~20_combout\ & ((\B[1]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X24_Y3_N18
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

-- Location: LCCOMB_X24_Y3_N20
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

-- Location: LCCOMB_X24_Y3_N22
\inst1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~8_combout\ = ((\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add1~17_combout\ $ (\inst1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add2~9\ = CARRY((\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst1|unidad_aritmetica|divi|Add2~7\)) # (!\B[4]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add1~17_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X24_Y3_N24
\inst1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst1|unidad_aritmetica|divi|Add1~16_combout\ & ((\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~9\)) # (!\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add2~9\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add1~16_combout\ & ((\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add2~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add2~9\))))
-- \inst1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst1|unidad_aritmetica|divi|Add1~16_combout\ & (\B[5]~input_o\ & !\inst1|unidad_aritmetica|divi|Add2~9\)) # (!\inst1|unidad_aritmetica|divi|Add1~16_combout\ & ((\B[5]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X24_Y3_N26
\inst1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add2~11\ $ (\inst1|unidad_aritmetica|divi|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X24_Y3_N8
\inst1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add1~15_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~12_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X24_Y3_N6
\inst1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~16_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add1~16_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X24_Y3_N12
\inst1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X24_Y3_N10
\inst1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X24_Y3_N0
\inst1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add2~4_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X24_Y3_N2
\inst1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add1~20_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add2~2_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\A[5]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \A[5]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X25_Y3_N0
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

-- Location: LCCOMB_X25_Y3_N2
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

-- Location: LCCOMB_X25_Y3_N4
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

-- Location: LCCOMB_X25_Y3_N6
\inst1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~18_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan3~5_cout\) # (!\B[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add2~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X25_Y3_N8
\inst1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~17_combout\ & (\B[4]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan3~7_cout\)) # (!\inst1|unidad_aritmetica|divi|Add2~17_combout\ & ((\B[4]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X25_Y3_N10
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

-- Location: LCCOMB_X25_Y3_N12
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

-- Location: LCCOMB_X25_Y3_N14
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

-- Location: LCCOMB_X25_Y4_N24
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\) # ((\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|suma|s4|Suma~0_combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	datac => \inst1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux5~0_combout\ & (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\)) # (!\inst1|Mux5~0_combout\ & ((!\inst1|unidad_aritmetica|resta|s4|Suma~combout\))))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|resta|s4|Suma~combout\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y4_N4
\inst1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux5~1_combout\) # ((!\inst1|Mux2~3_combout\ & \inst1|Mux5~2_combout\)))) # (!\inst1|R[2]~0_combout\ & (!\inst1|Mux2~3_combout\ & (\inst1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux2~3_combout\,
	datac => \inst1|Mux5~2_combout\,
	datad => \inst1|Mux5~1_combout\,
	combout => \inst1|Mux5~3_combout\);

-- Location: FF_X25_Y4_N5
\inst1|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(4));

-- Location: FF_X30_Y4_N27
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
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(3));

-- Location: LCCOMB_X28_Y4_N6
\inst1|unidad_aritmetica|mult|inter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(18) = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(18));

-- Location: LCCOMB_X29_Y4_N18
\inst1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~18_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_logica|aux\(3)) # ((!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|mult|inter\(18) & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_logica|aux\(3),
	datac => \inst1|unidad_aritmetica|mult|inter\(18),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~18_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~19_combout\ = (\A[3]~input_o\ & ((\inst1|unidad_logica|salida[5]~2_combout\ $ (\inst1|unidad_logica|salida~18_combout\)))) # (!\A[3]~input_o\ & ((\inst1|unidad_logica|salida~18_combout\) # ((\B[3]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \inst1|unidad_logica|salida~18_combout\,
	combout => \inst1|unidad_logica|salida~19_combout\);

-- Location: FF_X26_Y4_N5
\inst1|unidad_logica|salida[3]\ : dffeas
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
	q => \inst1|unidad_logica|salida\(3));

-- Location: LCCOMB_X25_Y4_N0
\inst1|barrel_shifters|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|barrel_shifters|aux[3]~feeder_combout\ = \A[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[2]~input_o\,
	combout => \inst1|barrel_shifters|aux[3]~feeder_combout\);

-- Location: FF_X25_Y4_N1
\inst1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|barrel_shifters|aux[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(3));

-- Location: FF_X26_Y4_N1
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

-- Location: LCCOMB_X26_Y4_N0
\inst1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(3))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|unidad_logica|salida\(3),
	datac => \inst1|barrel_shifters|salShifters\(3),
	datad => \inst1|R[2]~1_combout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y3_N16
\inst1|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~0_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[4]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add3~1\ = CARRY((\A[4]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X25_Y3_N18
\inst1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst1|unidad_aritmetica|divi|Add2~20_combout\ & ((\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~1\)) # (!\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~1\ & VCC)))) # 
-- (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & ((\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~1\) # (GND))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~1\))))
-- \inst1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst1|unidad_aritmetica|divi|Add2~20_combout\ & (\B[1]~input_o\ & !\inst1|unidad_aritmetica|divi|Add3~1\)) # (!\inst1|unidad_aritmetica|divi|Add2~20_combout\ & ((\B[1]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X25_Y3_N20
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

-- Location: LCCOMB_X25_Y3_N22
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

-- Location: LCCOMB_X25_Y3_N24
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

-- Location: LCCOMB_X25_Y3_N26
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

-- Location: LCCOMB_X25_Y3_N28
\inst1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add3~11\ $ (\inst1|unidad_aritmetica|divi|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add2~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst1|unidad_aritmetica|divi|Add3~12_combout\);

-- Location: LCCOMB_X24_Y3_N4
\inst1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~15_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~15_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~12_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~14_combout\);

-- Location: LCCOMB_X26_Y3_N24
\inst1|unidad_aritmetica|divi|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~16_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add2~16_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~15_combout\);

-- Location: LCCOMB_X25_Y3_N30
\inst1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add2~17_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X26_Y3_N18
\inst1|unidad_aritmetica|divi|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~6_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~17_combout\);

-- Location: LCCOMB_X24_Y3_N30
\inst1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add2~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add2~19_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X26_Y3_N30
\inst1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst1|unidad_aritmetica|divi|Add2~20_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X26_Y3_N28
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

-- Location: LCCOMB_X25_Y2_N0
\inst1|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((\B[0]~input_o\ & !\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X25_Y2_N2
\inst1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add3~20_combout\ & !\inst1|unidad_aritmetica|divi|LessThan4~1_cout\)) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~20_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X25_Y2_N4
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

-- Location: LCCOMB_X25_Y2_N6
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

-- Location: LCCOMB_X25_Y2_N8
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

-- Location: LCCOMB_X25_Y2_N10
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

-- Location: LCCOMB_X25_Y2_N12
\inst1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan4~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add3~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X25_Y2_N14
\inst1|unidad_aritmetica|divi|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan4~14_combout\ = (\inst1|unidad_aritmetica|divi|Add3~14_combout\ & (\B[7]~input_o\ & \inst1|unidad_aritmetica|divi|LessThan4~13_cout\)) # (!\inst1|unidad_aritmetica|divi|Add3~14_combout\ & ((\B[7]~input_o\) # 
-- (\inst1|unidad_aritmetica|divi|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~14_combout\,
	datab => \B[7]~input_o\,
	cin => \inst1|unidad_aritmetica|divi|LessThan4~13_cout\,
	combout => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\);

-- Location: LCCOMB_X26_Y5_N2
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\) # (\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|suma|s3|Suma~combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s3|Suma~combout\,
	datab => \inst1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y5_N24
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux6~0_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\))) # (!\inst1|Mux6~0_combout\ & (!\inst1|unidad_aritmetica|resta|s3|Suma~combout\)))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(0),
	datab => \inst1|unidad_aritmetica|resta|s3|Suma~combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y5_N16
\inst1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux6~1_combout\) # ((\inst1|Mux6~2_combout\ & !\inst1|Mux2~3_combout\)))) # (!\inst1|R[2]~0_combout\ & (\inst1|Mux6~2_combout\ & (!\inst1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux6~2_combout\,
	datac => \inst1|Mux2~3_combout\,
	datad => \inst1|Mux6~1_combout\,
	combout => \inst1|Mux6~3_combout\);

-- Location: FF_X26_Y5_N17
\inst1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(3));

-- Location: FF_X30_Y4_N3
\inst1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[2]~11_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(2));

-- Location: LCCOMB_X29_Y4_N4
\inst1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~20_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|unidad_logica|salida~20_combout\);

-- Location: LCCOMB_X29_Y4_N22
\inst1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~21_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_logica|aux\(2)) # ((!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_logica|salida~20_combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|aux\(2),
	datab => \inst1|unidad_logica|salida~20_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~21_combout\);

-- Location: LCCOMB_X29_Y4_N14
\inst1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~22_combout\ = (\A[2]~input_o\ & ((\inst1|unidad_logica|salida~21_combout\ $ (\inst1|unidad_logica|salida[5]~2_combout\)))) # (!\A[2]~input_o\ & ((\inst1|unidad_logica|salida~21_combout\) # ((\B[2]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \inst1|unidad_logica|salida~21_combout\,
	datad => \inst1|unidad_logica|salida[5]~2_combout\,
	combout => \inst1|unidad_logica|salida~22_combout\);

-- Location: FF_X29_Y4_N15
\inst1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|salida~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|salida\(2));

-- Location: FF_X26_Y4_N27
\inst1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|barrel_shifters|aux\(2));

-- Location: FF_X26_Y4_N7
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

-- Location: LCCOMB_X26_Y4_N6
\inst1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & (\inst1|unidad_logica|salida\(2))) # (!\inst1|R[2]~1_combout\ & ((\inst1|barrel_shifters|salShifters\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|unidad_logica|salida\(2),
	datac => \inst1|barrel_shifters|salShifters\(2),
	datad => \inst1|R[2]~1_combout\,
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y3_N4
\inst1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[3]~input_o\) # (GND)))
-- \inst1|unidad_aritmetica|divi|Add4~1\ = CARRY((\A[3]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	combout => \inst1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X26_Y3_N6
\inst1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~2_combout\ = (\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~1\)) # (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~20_combout\ & (\inst1|unidad_aritmetica|divi|Add4~1\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~1\))))
-- \inst1|unidad_aritmetica|divi|Add4~3\ = CARRY((\B[1]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add4~1\) # (!\inst1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\B[1]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X26_Y3_N8
\inst1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst1|unidad_aritmetica|divi|Add3~19_combout\ $ (\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst1|unidad_aritmetica|divi|Add3~19_combout\ & ((!\inst1|unidad_aritmetica|divi|Add4~3\) # (!\B[2]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add3~19_combout\ & (!\B[2]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X26_Y3_N10
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

-- Location: LCCOMB_X26_Y3_N12
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

-- Location: LCCOMB_X26_Y3_N14
\inst1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~10_combout\ = (\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~9\)) # (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add3~16_combout\ & (\inst1|unidad_aritmetica|divi|Add4~9\ & VCC)) # (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & (!\inst1|unidad_aritmetica|divi|Add4~9\))))
-- \inst1|unidad_aritmetica|divi|Add4~11\ = CARRY((\B[5]~input_o\ & ((!\inst1|unidad_aritmetica|divi|Add4~9\) # (!\inst1|unidad_aritmetica|divi|Add3~16_combout\))) # (!\B[5]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add3~16_combout\ & 
-- !\inst1|unidad_aritmetica|divi|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add3~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst1|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X26_Y3_N16
\inst1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add4~11\ $ (\inst1|unidad_aritmetica|divi|Add3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add3~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add4~11\,
	combout => \inst1|unidad_aritmetica|divi|Add4~12_combout\);

-- Location: LCCOMB_X26_Y3_N26
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

-- Location: LCCOMB_X26_Y3_N20
\inst1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~16_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~15_combout\);

-- Location: LCCOMB_X26_Y3_N22
\inst1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~17_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~8_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~17_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~16_combout\);

-- Location: LCCOMB_X26_Y2_N0
\inst1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst1|unidad_aritmetica|divi|Add3~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~18_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~6_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X26_Y3_N0
\inst1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst1|unidad_aritmetica|divi|Add3~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~4_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~18_combout\);

-- Location: LCCOMB_X26_Y3_N2
\inst1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~2_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add3~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X26_Y2_N2
\inst1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add4~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\A[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add4~0_combout\,
	datac => \A[3]~input_o\,
	combout => \inst1|unidad_aritmetica|divi|Add4~20_combout\);

-- Location: LCCOMB_X23_Y2_N16
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

-- Location: LCCOMB_X23_Y2_N18
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

-- Location: LCCOMB_X23_Y2_N20
\inst1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~19_combout\ & (\B[2]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan5~3_cout\)) # (!\inst1|unidad_aritmetica|divi|Add4~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X23_Y2_N22
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

-- Location: LCCOMB_X23_Y2_N24
\inst1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst1|unidad_aritmetica|divi|Add4~17_combout\))) # (!\B[4]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add4~17_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X23_Y2_N26
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

-- Location: LCCOMB_X23_Y2_N28
\inst1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan5~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add4~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X23_Y2_N30
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

-- Location: LCCOMB_X26_Y5_N6
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|sel_aux\(1) & ((\inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\) # ((\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|suma|s2|Suma~combout\ & !\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datab => \inst1|unidad_aritmetica|suma|s2|Suma~combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y5_N0
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst1|sel_aux\(0) & ((\inst1|Mux7~0_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\))) # (!\inst1|Mux7~0_combout\ & (!\inst1|unidad_aritmetica|resta|s2|Suma~combout\)))) # (!\inst1|sel_aux\(0) & 
-- (((\inst1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|resta|s2|Suma~combout\,
	datab => \inst1|sel_aux\(0),
	datac => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst1|Mux7~0_combout\,
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y5_N14
\inst1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux7~1_combout\) # ((\inst1|Mux7~2_combout\ & !\inst1|Mux2~3_combout\)))) # (!\inst1|R[2]~0_combout\ & (\inst1|Mux7~2_combout\ & (!\inst1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux7~2_combout\,
	datac => \inst1|Mux2~3_combout\,
	datad => \inst1|Mux7~1_combout\,
	combout => \inst1|Mux7~3_combout\);

-- Location: FF_X26_Y5_N15
\inst1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(2));

-- Location: FF_X29_Y4_N1
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

-- Location: FF_X28_Y4_N21
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

-- Location: FF_X30_Y4_N1
\inst1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|unidad_logica|aux[1]~9_combout\,
	ena => \inst1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|unidad_logica|aux\(1));

-- Location: LCCOMB_X28_Y4_N12
\inst1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~23_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(1)) # (!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|mult|inter\(6) & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|mult|inter\(6),
	datab => \inst1|sel_aux\(1),
	datac => \inst1|unidad_logica|aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~23_combout\);

-- Location: LCCOMB_X28_Y4_N18
\inst1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~24_combout\ = (\A[1]~input_o\ & ((\inst1|unidad_logica|salida[5]~2_combout\ $ (\inst1|unidad_logica|salida~23_combout\)))) # (!\A[1]~input_o\ & ((\inst1|unidad_logica|salida~23_combout\) # ((\B[1]~input_o\ & 
-- \inst1|unidad_logica|salida[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \inst1|unidad_logica|salida[5]~2_combout\,
	datad => \inst1|unidad_logica|salida~23_combout\,
	combout => \inst1|unidad_logica|salida~24_combout\);

-- Location: FF_X28_Y4_N19
\inst1|unidad_logica|salida[1]\ : dffeas
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
	q => \inst1|unidad_logica|salida\(1));

-- Location: LCCOMB_X28_Y4_N20
\inst1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~2_combout\ = (\sel[3]~input_o\) # ((\inst1|R[2]~1_combout\ & ((\inst1|unidad_logica|salida\(1)))) # (!\inst1|R[2]~1_combout\ & (\inst1|barrel_shifters|salShifters\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst1|R[2]~1_combout\,
	datac => \inst1|barrel_shifters|salShifters\(1),
	datad => \inst1|unidad_logica|salida\(1),
	combout => \inst1|Mux8~2_combout\);

-- Location: LCCOMB_X26_Y5_N26
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\) # (\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|suma|s1|Suma~combout\ & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|suma|s1|Suma~combout\,
	datab => \inst1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	datac => \inst1|sel_aux\(1),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X26_Y2_N12
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

-- Location: LCCOMB_X26_Y2_N14
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

-- Location: LCCOMB_X26_Y2_N16
\inst1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst1|unidad_aritmetica|divi|Add4~19_combout\ $ (\B[2]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst1|unidad_aritmetica|divi|Add4~19_combout\ & ((!\inst1|unidad_aritmetica|divi|Add5~3\) # (!\B[2]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add4~19_combout\ & (!\B[2]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X26_Y2_N18
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

-- Location: LCCOMB_X26_Y2_N20
\inst1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~8_combout\ = ((\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add4~17_combout\ $ (\inst1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add5~9\ = CARRY((\B[4]~input_o\ & (\inst1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst1|unidad_aritmetica|divi|Add5~7\)) # (!\B[4]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add4~17_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|Add5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X26_Y2_N22
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

-- Location: LCCOMB_X26_Y2_N24
\inst1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add5~11\ $ (\inst1|unidad_aritmetica|divi|Add4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X26_Y2_N28
\inst1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~15_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add5~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add4~15_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X26_Y2_N10
\inst1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~10_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X26_Y2_N4
\inst1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X26_Y2_N30
\inst1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add4~18_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add5~6_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~17_combout\);

-- Location: LCCOMB_X26_Y2_N26
\inst1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst1|unidad_aritmetica|divi|Add4~19_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~4_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X26_Y2_N8
\inst1|unidad_aritmetica|divi|Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add4~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add5~2_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add4~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~19_combout\);

-- Location: LCCOMB_X26_Y5_N4
\inst1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add5~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\A[2]~input_o\)) # (!\inst1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add5~20_combout\);

-- Location: LCCOMB_X25_Y2_N16
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

-- Location: LCCOMB_X25_Y2_N18
\inst1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\B[1]~input_o\ & (\inst1|unidad_aritmetica|divi|Add5~20_combout\ & !\inst1|unidad_aritmetica|divi|LessThan6~1_cout\)) # (!\B[1]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add5~20_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~20_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X25_Y2_N20
\inst1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~3_cout\) # (!\inst1|unidad_aritmetica|divi|Add5~19_combout\))) # (!\B[2]~input_o\ & (!\inst1|unidad_aritmetica|divi|Add5~19_combout\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add5~19_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X25_Y2_N22
\inst1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~18_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~5_cout\) # (!\B[3]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add5~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X25_Y2_N24
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

-- Location: LCCOMB_X25_Y2_N26
\inst1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~16_combout\ & ((!\inst1|unidad_aritmetica|divi|LessThan6~9_cout\) # (!\B[5]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add5~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X25_Y2_N28
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

-- Location: LCCOMB_X25_Y2_N30
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

-- Location: LCCOMB_X26_Y5_N18
\inst1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = (\inst1|Mux8~0_combout\ & (((!\inst1|sel_aux\(0))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\))) # (!\inst1|Mux8~0_combout\ & (((!\inst1|unidad_aritmetica|resta|s1|Suma~0_combout\ & \inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datab => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst1|unidad_aritmetica|resta|s1|Suma~0_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|Mux8~1_combout\);

-- Location: LCCOMB_X26_Y5_N12
\inst1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~3_combout\ = (\inst1|R[2]~0_combout\ & ((\inst1|Mux8~1_combout\) # ((!\inst1|Mux2~3_combout\ & \inst1|Mux8~2_combout\)))) # (!\inst1|R[2]~0_combout\ & (!\inst1|Mux2~3_combout\ & (\inst1|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R[2]~0_combout\,
	datab => \inst1|Mux2~3_combout\,
	datac => \inst1|Mux8~2_combout\,
	datad => \inst1|Mux8~1_combout\,
	combout => \inst1|Mux8~3_combout\);

-- Location: FF_X26_Y5_N13
\inst1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(1));

-- Location: LCCOMB_X29_Y4_N30
\inst1|unidad_aritmetica|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux9~0_combout\ = (!\inst1|sel_aux\(1) & (\B[0]~input_o\ $ (\A[0]~input_o\ $ (\sig2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \sig2~input_o\,
	combout => \inst1|unidad_aritmetica|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y4_N20
\inst1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~2_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & (\sel[0]~input_o\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst1|Mux9~2_combout\);

-- Location: LCCOMB_X26_Y4_N30
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\sel[3]~input_o\ & ((\sel[2]~input_o\) # ((\sel[1]~input_o\ & \sel[0]~input_o\)))) # (!\sel[3]~input_o\ & (\sel[2]~input_o\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y4_N16
\inst1|unidad_aritmetica|mult|inter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|mult|inter\(0) = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst1|unidad_aritmetica|mult|inter\(0));

-- Location: LCCOMB_X29_Y4_N8
\inst1|unidad_logica|aux[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|aux[0]~27_combout\ = (\inst1|sel_aux\(1) & ((\inst1|sel_aux\(0) & (\A[0]~input_o\)) # (!\inst1|sel_aux\(0) & ((\inst1|unidad_logica|aux\(0)))))) # (!\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \A[0]~input_o\,
	datac => \inst1|unidad_logica|aux\(0),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|aux[0]~27_combout\);

-- Location: FF_X29_Y4_N9
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

-- Location: LCCOMB_X29_Y4_N6
\inst1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~25_combout\ = (\inst1|sel_aux\(1) & (((\inst1|unidad_logica|aux\(0)) # (!\inst1|sel_aux\(0))))) # (!\inst1|sel_aux\(1) & (\inst1|unidad_aritmetica|mult|inter\(0) & ((!\inst1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|mult|inter\(0),
	datac => \inst1|unidad_logica|aux\(0),
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_logica|salida~25_combout\);

-- Location: LCCOMB_X29_Y4_N24
\inst1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_logica|salida~26_combout\ = (\inst1|unidad_logica|salida~25_combout\ & (((!\inst1|unidad_logica|salida[5]~2_combout\) # (!\A[0]~input_o\)))) # (!\inst1|unidad_logica|salida~25_combout\ & (\inst1|unidad_logica|salida[5]~2_combout\ & 
-- ((\B[0]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_logica|salida~25_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|unidad_logica|salida[5]~2_combout\,
	combout => \inst1|unidad_logica|salida~26_combout\);

-- Location: FF_X29_Y4_N25
\inst1|unidad_logica|salida[0]\ : dffeas
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
	q => \inst1|unidad_logica|salida\(0));

-- Location: LCCOMB_X29_Y4_N26
\inst1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = (\inst1|Mux9~0_combout\ & (((\sel[3]~input_o\) # (\inst1|unidad_logica|salida\(0))))) # (!\inst1|Mux9~0_combout\ & (\inst1|Mux0~0_combout\ & ((\inst1|unidad_logica|salida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux9~0_combout\,
	datab => \inst1|Mux0~0_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst1|unidad_logica|salida\(0),
	combout => \inst1|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y2_N2
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

-- Location: LCCOMB_X24_Y2_N4
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

-- Location: LCCOMB_X24_Y2_N6
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

-- Location: LCCOMB_X24_Y2_N8
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

-- Location: LCCOMB_X24_Y2_N10
\inst1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst1|unidad_aritmetica|divi|Add5~17_combout\ $ (\B[4]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst1|unidad_aritmetica|divi|Add5~17_combout\ & ((!\inst1|unidad_aritmetica|divi|Add6~7\) # (!\B[4]~input_o\))) # (!\inst1|unidad_aritmetica|divi|Add5~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst1|unidad_aritmetica|divi|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X24_Y2_N12
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

-- Location: LCCOMB_X24_Y2_N14
\inst1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~12_combout\ = \B[6]~input_o\ $ (\inst1|unidad_aritmetica|divi|Add6~11\ $ (\inst1|unidad_aritmetica|divi|Add5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \inst1|unidad_aritmetica|divi|Add5~15_combout\,
	cin => \inst1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X24_Y2_N28
\inst1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~15_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add6~12_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~15_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~14_combout\);

-- Location: LCCOMB_X24_Y2_N20
\inst1|unidad_aritmetica|divi|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~15_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~10_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~15_combout\);

-- Location: LCCOMB_X24_Y2_N22
\inst1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~16_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst1|unidad_aritmetica|divi|Add5~17_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add6~8_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~16_combout\);

-- Location: LCCOMB_X24_Y2_N24
\inst1|unidad_aritmetica|divi|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~17_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst1|unidad_aritmetica|divi|Add5~18_combout\)) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst1|unidad_aritmetica|divi|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add6~6_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~17_combout\);

-- Location: LCCOMB_X24_Y2_N26
\inst1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~19_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~4_combout\,
	datab => \inst1|unidad_aritmetica|divi|Add5~19_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~18_combout\);

-- Location: LCCOMB_X24_Y2_N0
\inst1|unidad_aritmetica|divi|Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~19_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add5~20_combout\))) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst1|unidad_aritmetica|divi|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|unidad_aritmetica|divi|Add6~2_combout\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add5~20_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~19_combout\);

-- Location: LCCOMB_X24_Y2_N30
\inst1|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|Add6~20_combout\ = (\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\A[1]~input_o\)) # (!\inst1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst1|unidad_aritmetica|divi|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \inst1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst1|unidad_aritmetica|divi|Add6~0_combout\,
	combout => \inst1|unidad_aritmetica|divi|Add6~20_combout\);

-- Location: LCCOMB_X23_Y2_N0
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

-- Location: LCCOMB_X23_Y2_N2
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

-- Location: LCCOMB_X23_Y2_N4
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

-- Location: LCCOMB_X23_Y2_N6
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

-- Location: LCCOMB_X23_Y2_N8
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

-- Location: LCCOMB_X23_Y2_N10
\inst1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\B[5]~input_o\ & (\inst1|unidad_aritmetica|divi|Add6~16_combout\ & !\inst1|unidad_aritmetica|divi|LessThan7~9_cout\)) # (!\B[5]~input_o\ & ((\inst1|unidad_aritmetica|divi|Add6~16_combout\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst1|unidad_aritmetica|divi|Add6~16_combout\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X23_Y2_N12
\inst1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\inst1|unidad_aritmetica|divi|Add6~15_combout\ & (\B[6]~input_o\ & !\inst1|unidad_aritmetica|divi|LessThan7~11_cout\)) # (!\inst1|unidad_aritmetica|divi|Add6~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst1|unidad_aritmetica|divi|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|divi|Add6~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X23_Y2_N14
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

-- Location: LCCOMB_X29_Y4_N10
\inst1|unidad_aritmetica|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|unidad_aritmetica|Mux9~1_combout\ = (\inst1|sel_aux\(1) & ((\inst1|sel_aux\(0) & ((!\inst1|unidad_aritmetica|divi|LessThan7~14_combout\))) # (!\inst1|sel_aux\(0) & (\inst1|unidad_aritmetica|mult|inter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sel_aux\(1),
	datab => \inst1|unidad_aritmetica|mult|inter\(0),
	datac => \inst1|unidad_aritmetica|divi|LessThan7~14_combout\,
	datad => \inst1|sel_aux\(0),
	combout => \inst1|unidad_aritmetica|Mux9~1_combout\);

-- Location: LCCOMB_X29_Y4_N2
\inst1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~3_combout\ = (\inst1|Mux9~1_combout\) # ((\inst1|Mux9~2_combout\ & ((\inst1|unidad_aritmetica|Mux9~0_combout\) # (\inst1|unidad_aritmetica|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|unidad_aritmetica|Mux9~0_combout\,
	datab => \inst1|Mux9~2_combout\,
	datac => \inst1|Mux9~1_combout\,
	datad => \inst1|unidad_aritmetica|Mux9~1_combout\,
	combout => \inst1|Mux9~3_combout\);

-- Location: FF_X29_Y4_N3
\inst1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R\(0));

-- Location: IOIBUF_X0_Y18_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X12_Y18_N18
\inst|ecuacion1|pr_state.state0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state0~0_combout\ = !\rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state.state0~0_combout\);

-- Location: FF_X12_Y18_N19
\inst|ecuacion1|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state0~q\);

-- Location: LCCOMB_X12_Y18_N20
\inst|ecuacion1|pr_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~19_combout\ = (!\rst~input_o\ & !\inst|ecuacion1|pr_state.state0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state0~q\,
	combout => \inst|ecuacion1|pr_state~19_combout\);

-- Location: FF_X12_Y18_N21
\inst|ecuacion1|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state1~q\);

-- Location: LCCOMB_X12_Y18_N22
\inst|ecuacion1|pr_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~15_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state1~q\,
	combout => \inst|ecuacion1|pr_state~15_combout\);

-- Location: FF_X12_Y18_N23
\inst|ecuacion1|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state2~q\);

-- Location: LCCOMB_X12_Y18_N30
\inst|ecuacion1|pr_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~20_combout\ = (\inst|ecuacion1|pr_state.state2~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state2~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~20_combout\);

-- Location: FF_X12_Y18_N7
\inst|ecuacion1|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|pr_state~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state3~q\);

-- Location: LCCOMB_X13_Y18_N2
\inst|ecuacion1|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector37~1_combout\ = (!\inst|ecuacion1|pr_state.state3~q\ & !\inst|ecuacion1|pr_state.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|pr_state.state3~q\,
	datad => \inst|ecuacion1|pr_state.state1~q\,
	combout => \inst|ecuacion1|Selector37~1_combout\);

-- Location: LCCOMB_X12_Y18_N0
\inst|ecuacion1|pr_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~14_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state3~q\,
	combout => \inst|ecuacion1|pr_state~14_combout\);

-- Location: FF_X12_Y18_N1
\inst|ecuacion1|pr_state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state4~q\);

-- Location: LCCOMB_X12_Y18_N24
\inst|ecuacion1|pr_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~21_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state4~q\,
	combout => \inst|ecuacion1|pr_state~21_combout\);

-- Location: LCCOMB_X13_Y18_N12
\inst|ecuacion1|pr_state.state5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state5~feeder_combout\ = \inst|ecuacion1|pr_state~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|pr_state~21_combout\,
	combout => \inst|ecuacion1|pr_state.state5~feeder_combout\);

-- Location: FF_X13_Y18_N13
\inst|ecuacion1|pr_state.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state5~q\);

-- Location: LCCOMB_X14_Y18_N6
\inst|ecuacion1|pr_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~17_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|pr_state~17_combout\);

-- Location: FF_X14_Y18_N7
\inst|ecuacion1|pr_state.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state6~q\);

-- Location: LCCOMB_X12_Y18_N14
\inst|ecuacion1|pr_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~16_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|pr_state~16_combout\);

-- Location: FF_X12_Y18_N9
\inst|ecuacion1|pr_state.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|pr_state~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state7~q\);

-- Location: LCCOMB_X12_Y18_N8
\inst|ecuacion1|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|WideOr15~0_combout\ = (\inst|ecuacion1|pr_state.state2~q\) # (((\inst|ecuacion1|pr_state.state7~q\) # (\inst|ecuacion1|pr_state.state4~q\)) # (!\inst|ecuacion1|pr_state.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state2~q\,
	datab => \inst|ecuacion1|pr_state.state0~q\,
	datac => \inst|ecuacion1|pr_state.state7~q\,
	datad => \inst|ecuacion1|pr_state.state4~q\,
	combout => \inst|ecuacion1|WideOr15~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst|ecuacion1|pr_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~18_combout\ = (\inst|ecuacion1|pr_state.state7~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|pr_state.state7~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~18_combout\);

-- Location: FF_X14_Y16_N1
\inst|ecuacion1|pr_state.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|pr_state~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state8~q\);

-- Location: LCCOMB_X14_Y18_N0
\inst|ecuacion1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector12~0_combout\ = (\inst|ecuacion1|pr_state.state9~q\) # (\inst|ecuacion1|pr_state.state8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|pr_state.state9~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector12~0_combout\);

-- Location: FF_X14_Y18_N1
\inst|ecuacion1|pr_state.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector12~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state9~q\);

-- Location: LCCOMB_X14_Y18_N4
\inst|ecuacion1|WideOr15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|WideOr15~combout\ = (\inst|ecuacion1|WideOr15~0_combout\) # (\inst|ecuacion1|pr_state.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|WideOr15~0_combout\,
	datad => \inst|ecuacion1|pr_state.state9~q\,
	combout => \inst|ecuacion1|WideOr15~combout\);

-- Location: LCCOMB_X14_Y18_N12
\inst|ecuacion1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector37~0_combout\ = (!\inst|ecuacion1|pr_state.state8~q\ & !\inst|ecuacion1|pr_state.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector37~0_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst|ecuacion1|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector37~2_combout\ = (((\inst|ecuacion1|WideOr15~combout\ & \inst|ecuacion1|MREG\(0))) # (!\inst|ecuacion1|Selector37~0_combout\)) # (!\inst|ecuacion1|Selector37~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|Selector37~1_combout\,
	datab => \inst|ecuacion1|WideOr15~combout\,
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|Selector37~0_combout\,
	combout => \inst|ecuacion1|Selector37~2_combout\);

-- Location: FF_X14_Y18_N15
\inst|ecuacion1|MREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector37~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(0));

-- Location: LCCOMB_X14_Y18_N10
\inst|ecuacion1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector35~0_combout\ = ((\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|WideOr15~0_combout\) # (\inst|ecuacion1|pr_state.state9~q\)))) # (!\inst|ecuacion1|Selector37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|Selector37~0_combout\,
	datab => \inst|ecuacion1|WideOr15~0_combout\,
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|pr_state.state9~q\,
	combout => \inst|ecuacion1|Selector35~0_combout\);

-- Location: FF_X14_Y18_N11
\inst|ecuacion1|MREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector35~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(2));

-- Location: LCCOMB_X14_Y18_N20
\inst|ecuacion1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector34~0_combout\ = ((\inst|ecuacion1|pr_state.state5~q\) # ((\inst|ecuacion1|WideOr15~combout\ & \inst|ecuacion1|MREG\(3)))) # (!\inst|ecuacion1|Selector37~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|Selector37~1_combout\,
	datab => \inst|ecuacion1|WideOr15~combout\,
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|Selector34~0_combout\);

-- Location: FF_X14_Y18_N21
\inst|ecuacion1|MREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector34~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(3));

-- Location: LCCOMB_X14_Y18_N28
\inst|ecuacion1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector36~0_combout\ = (\inst|ecuacion1|pr_state.state5~q\) # (((\inst|ecuacion1|WideOr15~combout\ & \inst|ecuacion1|MREG\(1))) # (!\inst|ecuacion1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state5~q\,
	datab => \inst|ecuacion1|WideOr15~combout\,
	datac => \inst|ecuacion1|MREG\(1),
	datad => \inst|ecuacion1|Selector37~0_combout\,
	combout => \inst|ecuacion1|Selector36~0_combout\);

-- Location: FF_X14_Y18_N29
\inst|ecuacion1|MREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector36~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(1));

-- Location: LCCOMB_X16_Y18_N12
\inst|ecuacion1|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~0_combout\ = (!\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|MREG\(0)) # (\inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y18_N24
\inst|ecuacion1|alu1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~2_combout\ = (\inst|ecuacion1|MREG\(1) & ((\inst|ecuacion1|MREG\(2)) # (\inst|ecuacion1|MREG\(0)))) # (!\inst|ecuacion1|MREG\(1) & (\inst|ecuacion1|MREG\(2) & \inst|ecuacion1|MREG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y18_N4
\inst|ecuacion1|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux10~0_combout\ = (!\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(1) $ (\inst|ecuacion1|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux10~0_combout\);

-- Location: FF_X16_Y18_N5
\inst|ecuacion1|alu1|sel_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|sel_aux\(1));

-- Location: LCCOMB_X16_Y18_N22
\inst|ecuacion1|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux11~0_combout\ = (!\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3))) # (!\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(3)) # (\inst|ecuacion1|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux11~0_combout\);

-- Location: FF_X16_Y18_N23
\inst|ecuacion1|alu1|sel_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|sel_aux\(0));

-- Location: LCCOMB_X12_Y18_N12
\inst|ecuacion1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector3~0_combout\ = (\inst|ecuacion1|pr_state.state2~q\) # ((\inst|ecuacion1|pr_state.state0~q\ & (\inst|ecuacion1|addr2\(0) & !\inst|ecuacion1|pr_state.state4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state2~q\,
	datab => \inst|ecuacion1|pr_state.state0~q\,
	datac => \inst|ecuacion1|addr2\(0),
	datad => \inst|ecuacion1|pr_state.state4~q\,
	combout => \inst|ecuacion1|Selector3~0_combout\);

-- Location: FF_X12_Y18_N13
\inst|ecuacion1|addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector3~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr2\(0));

-- Location: LCCOMB_X12_Y18_N26
\inst|ecuacion1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector0~0_combout\ = (\inst|ecuacion1|pr_state.state4~q\) # ((!\inst|ecuacion1|pr_state.state2~q\ & (\inst|ecuacion1|pr_state.state0~q\ & \inst|ecuacion1|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state2~q\,
	datab => \inst|ecuacion1|pr_state.state0~q\,
	datac => \inst|ecuacion1|addr1\(1),
	datad => \inst|ecuacion1|pr_state.state4~q\,
	combout => \inst|ecuacion1|Selector0~0_combout\);

-- Location: FF_X12_Y18_N27
\inst|ecuacion1|addr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr1\(1));

-- Location: LCCOMB_X13_Y18_N30
\inst|ecuacion1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector29~0_combout\ = (\inst|ecuacion1|Selector37~1_combout\ & (\inst|ecuacion1|pr_state.state5~q\ & (\inst|ecuacion1|addr2\(0) $ (\inst|ecuacion1|addr1\(1))))) # (!\inst|ecuacion1|Selector37~1_combout\ & (\inst|ecuacion1|addr2\(0) $ 
-- ((\inst|ecuacion1|addr1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr2\(0),
	datab => \inst|ecuacion1|Selector37~1_combout\,
	datac => \inst|ecuacion1|addr1\(1),
	datad => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|Selector29~0_combout\);

-- Location: FF_X13_Y17_N31
\inst|ecuacion1|registro[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(4),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][4]~q\);

-- Location: LCCOMB_X14_Y16_N10
\inst|ecuacion1|registro[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][4]~feeder_combout\ = \inst|ecuacion1|alu1|R\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(4),
	combout => \inst|ecuacion1|registro[3][4]~feeder_combout\);

-- Location: FF_X14_Y16_N11
\inst|ecuacion1|registro[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][4]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][4]~q\);

-- Location: LCCOMB_X13_Y16_N14
\inst|ecuacion1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector19~0_combout\ = (\inst|ecuacion1|registro[0][4]~q\ & ((\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|registro[3][4]~q\ & \inst|ecuacion1|pr_state.state8~q\)))) # (!\inst|ecuacion1|registro[0][4]~q\ & 
-- (\inst|ecuacion1|registro[3][4]~q\ & (\inst|ecuacion1|pr_state.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[0][4]~q\,
	datab => \inst|ecuacion1|registro[3][4]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector19~0_combout\);

-- Location: LCCOMB_X13_Y18_N0
\inst|ecuacion1|MREG[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[11]~0_combout\ = (!\rst~input_o\ & (!\inst|ecuacion1|pr_state.state9~q\ & !\inst|ecuacion1|WideOr15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|ecuacion1|pr_state.state9~q\,
	datad => \inst|ecuacion1|WideOr15~0_combout\,
	combout => \inst|ecuacion1|MREG[11]~0_combout\);

-- Location: FF_X13_Y16_N15
\inst|ecuacion1|MREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector19~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(18));

-- Location: LCCOMB_X13_Y18_N26
\inst|ecuacion1|registro[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[1][3]~feeder_combout\ = \inst|ecuacion1|alu1|R\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(3),
	combout => \inst|ecuacion1|registro[1][3]~feeder_combout\);

-- Location: FF_X13_Y18_N27
\inst|ecuacion1|registro[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[1][3]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][3]~q\);

-- Location: LCCOMB_X10_Y16_N0
\inst|ecuacion1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector30~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|registro[1][3]~q\)) # (!\inst|ecuacion1|pr_state.state6~q\ & ((!\inst|ecuacion1|addr2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[1][3]~q\,
	datab => \inst|ecuacion1|addr2\(0),
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector30~0_combout\);

-- Location: FF_X12_Y17_N31
\inst|ecuacion1|registro[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(3),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][3]~q\);

-- Location: FF_X10_Y16_N1
\inst|ecuacion1|MREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector30~0_combout\,
	asdata => \inst|ecuacion1|registro[2][3]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(7));

-- Location: LCCOMB_X16_Y16_N8
\inst|ecuacion1|alu1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\ = (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|MREG\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|MREG\(7),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst|ecuacion1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector1~0_combout\ = (\inst|ecuacion1|pr_state.state2~q\) # ((\inst|ecuacion1|pr_state.state4~q\) # ((\inst|ecuacion1|pr_state.state0~q\ & \inst|ecuacion1|addr1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state2~q\,
	datab => \inst|ecuacion1|pr_state.state0~q\,
	datac => \inst|ecuacion1|addr1\(0),
	datad => \inst|ecuacion1|pr_state.state4~q\,
	combout => \inst|ecuacion1|Selector1~0_combout\);

-- Location: FF_X12_Y18_N29
\inst|ecuacion1|addr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr1\(0));

-- Location: LCCOMB_X16_Y18_N18
\inst|ecuacion1|alu1|R[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|R[4]~1_combout\ = \inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(1)) # (\inst|ecuacion1|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|R[4]~1_combout\);

-- Location: LCCOMB_X16_Y18_N16
\inst|ecuacion1|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~4_combout\ = (\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3) & \inst|ecuacion1|MREG\(1))) # (!\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(3) & !\inst|ecuacion1|MREG\(1))))) # 
-- (!\inst|ecuacion1|MREG\(0) & (!\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(3)) # (!\inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux2~4_combout\);

-- Location: LCCOMB_X16_Y18_N20
\inst|ecuacion1|alu1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~3_combout\ = (\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|MREG\(2)) # ((\inst|ecuacion1|MREG\(0) & \inst|ecuacion1|MREG\(1))))) # (!\inst|ecuacion1|MREG\(3) & (\inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(0)) # 
-- (\inst|ecuacion1|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux9~3_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst|ecuacion1|alu1|unidad_logica|aux[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[0]~27_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & ((\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|MREG\(14)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|unidad_logica|aux\(0))))) # 
-- (!\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(0),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[0]~27_combout\);

-- Location: FF_X19_Y16_N13
\inst|ecuacion1|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(0));

-- Location: FF_X13_Y18_N5
\inst|ecuacion1|registro[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(0),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][0]~q\);

-- Location: LCCOMB_X13_Y18_N4
\inst|ecuacion1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector33~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][0]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|addr2\(0))) # (!\inst|ecuacion1|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][0]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector33~0_combout\);

-- Location: LCCOMB_X10_Y16_N6
\inst|ecuacion1|MREG[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[4]~feeder_combout\ = \inst|ecuacion1|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector33~0_combout\,
	combout => \inst|ecuacion1|MREG[4]~feeder_combout\);

-- Location: FF_X13_Y17_N17
\inst|ecuacion1|registro[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(0),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][0]~q\);

-- Location: FF_X10_Y16_N7
\inst|ecuacion1|MREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[4]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][0]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(4));

-- Location: LCCOMB_X19_Y16_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(0) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(0));

-- Location: LCCOMB_X19_Y16_N2
\inst|ecuacion1|alu1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|unidad_logica|aux\(0)) # ((!\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (((!\inst|ecuacion1|alu1|sel_aux\(0) 
-- & \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|aux\(0),
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X18_Y16_N0
\inst|ecuacion1|alu1|unidad_logica|salida[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ = \inst|ecuacion1|alu1|sel_aux\(1) $ (\inst|ecuacion1|alu1|sel_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst|ecuacion1|alu1|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\ = (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|alu1|unidad_logica|salida~28_combout\ $ ((\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\)))) # (!\inst|ecuacion1|MREG\(14) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~28_combout\) # ((\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & \inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\);

-- Location: FF_X19_Y16_N25
\inst|ecuacion1|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X16_Y18_N6
\inst|ecuacion1|alu1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~4_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|MREG\(0) & (\inst|ecuacion1|MREG\(2) & \inst|ecuacion1|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux9~4_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst|ecuacion1|alu1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~2_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (!\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|MREG\(4) $ 
-- (\inst|ecuacion1|MREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|Mux9~2_combout\);

-- Location: FF_X13_Y18_N23
\inst|ecuacion1|registro[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(5),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][5]~q\);

-- Location: LCCOMB_X13_Y18_N22
\inst|ecuacion1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector28~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][5]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][5]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector28~0_combout\);

-- Location: LCCOMB_X10_Y16_N24
\inst|ecuacion1|MREG[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[9]~feeder_combout\ = \inst|ecuacion1|Selector28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector28~0_combout\,
	combout => \inst|ecuacion1|MREG[9]~feeder_combout\);

-- Location: FF_X13_Y17_N23
\inst|ecuacion1|registro[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(5),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][5]~q\);

-- Location: FF_X10_Y16_N25
\inst|ecuacion1|MREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[9]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][5]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(9));

-- Location: LCCOMB_X16_Y16_N12
\inst|ecuacion1|alu1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\ = (\inst|ecuacion1|MREG\(19) & \inst|ecuacion1|MREG\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|MREG\(9),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\);

-- Location: LCCOMB_X17_Y16_N20
\inst|ecuacion1|alu1|unidad_logica|aux[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[4]~15_combout\ = (\inst|ecuacion1|MREG\(18) & ((\inst|ecuacion1|alu1|unidad_logica|aux[3]~14\) # (GND))) # (!\inst|ecuacion1|MREG\(18) & (!\inst|ecuacion1|alu1|unidad_logica|aux[3]~14\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[4]~16\ = CARRY((\inst|ecuacion1|MREG\(18)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(18),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[3]~14\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[4]~15_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[4]~16\);

-- Location: LCCOMB_X17_Y16_N22
\inst|ecuacion1|alu1|unidad_logica|aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[5]~17_combout\ = (\inst|ecuacion1|MREG\(19) & (!\inst|ecuacion1|alu1|unidad_logica|aux[4]~16\ & VCC)) # (!\inst|ecuacion1|MREG\(19) & (\inst|ecuacion1|alu1|unidad_logica|aux[4]~16\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[5]~18\ = CARRY((!\inst|ecuacion1|MREG\(19) & !\inst|ecuacion1|alu1|unidad_logica|aux[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[4]~16\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[5]~17_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[5]~18\);

-- Location: LCCOMB_X17_Y16_N8
\inst|ecuacion1|alu1|unidad_logica|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & \inst|ecuacion1|alu1|sel_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|sel_aux\(1),
	combout => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\);

-- Location: FF_X17_Y16_N23
\inst|ecuacion1|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[5]~17_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X16_Y16_N10
\inst|ecuacion1|alu1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1) & \inst|ecuacion1|alu1|unidad_logica|aux\(5))))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~15_combout\) # ((\inst|ecuacion1|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_logica|aux\(5),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X16_Y16_N6
\inst|ecuacion1|alu1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & ((\inst|ecuacion1|MREG\(19) & ((!\inst|ecuacion1|alu1|unidad_logica|salida~16_combout\))) # (!\inst|ecuacion1|MREG\(19) & 
-- ((\inst|ecuacion1|MREG\(9)) # (\inst|ecuacion1|alu1|unidad_logica|salida~16_combout\))))) # (!\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datac => \inst|ecuacion1|MREG\(19),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\);

-- Location: FF_X16_Y16_N7
\inst|ecuacion1|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X14_Y16_N4
\inst|ecuacion1|alu1|barrel_shifters|aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|barrel_shifters|aux[5]~feeder_combout\ = \inst|ecuacion1|MREG\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(18),
	combout => \inst|ecuacion1|alu1|barrel_shifters|aux[5]~feeder_combout\);

-- Location: FF_X14_Y16_N5
\inst|ecuacion1|alu1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|barrel_shifters|aux[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(5));

-- Location: FF_X14_Y16_N31
\inst|ecuacion1|alu1|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X14_Y16_N30
\inst|ecuacion1|alu1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(5))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(5),
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|ecuacion1|alu1|R[4]~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~3_combout\);

-- Location: LCCOMB_X14_Y18_N22
\inst|ecuacion1|alu1|R[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|R[4]~0_combout\ = (\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3) & (\inst|ecuacion1|MREG\(1) & \inst|ecuacion1|MREG\(0)))) # (!\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(3) & ((!\inst|ecuacion1|MREG\(0)) # 
-- (!\inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(2),
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|MREG\(1),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|R[4]~0_combout\);

-- Location: FF_X13_Y18_N15
\inst|ecuacion1|registro[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(1),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][1]~q\);

-- Location: LCCOMB_X13_Y18_N14
\inst|ecuacion1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector32~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][1]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (!\inst|ecuacion1|addr1\(1) & ((\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][1]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector32~0_combout\);

-- Location: LCCOMB_X10_Y16_N8
\inst|ecuacion1|MREG[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[5]~feeder_combout\ = \inst|ecuacion1|Selector32~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector32~0_combout\,
	combout => \inst|ecuacion1|MREG[5]~feeder_combout\);

-- Location: FF_X13_Y17_N15
\inst|ecuacion1|registro[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(1),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][1]~q\);

-- Location: FF_X10_Y16_N9
\inst|ecuacion1|MREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[5]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][1]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(5));

-- Location: LCCOMB_X13_Y18_N28
\inst|ecuacion1|registro[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[1][2]~feeder_combout\ = \inst|ecuacion1|alu1|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|ecuacion1|registro[1][2]~feeder_combout\);

-- Location: FF_X13_Y18_N29
\inst|ecuacion1|registro[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[1][2]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][2]~q\);

-- Location: LCCOMB_X10_Y16_N26
\inst|ecuacion1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector31~0_combout\ = (\inst|ecuacion1|registro[1][2]~q\) # (!\inst|ecuacion1|pr_state.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|registro[1][2]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector31~0_combout\);

-- Location: FF_X13_Y17_N21
\inst|ecuacion1|registro[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(2),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][2]~q\);

-- Location: FF_X10_Y16_N27
\inst|ecuacion1|MREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector31~0_combout\,
	asdata => \inst|ecuacion1|registro[2][2]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(6));

-- Location: LCCOMB_X11_Y16_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|ecuacion1|MREG\(7)) # ((\inst|ecuacion1|MREG\(10)) # ((\inst|ecuacion1|MREG\(6)) # (\inst|ecuacion1|MREG\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|MREG\(6),
	datad => \inst|ecuacion1|MREG\(9),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: FF_X11_Y17_N29
\inst|ecuacion1|registro[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(7),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][7]~q\);

-- Location: LCCOMB_X12_Y17_N24
\inst|ecuacion1|registro[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[0][7]~feeder_combout\ = \inst|ecuacion1|alu1|R\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(7),
	combout => \inst|ecuacion1|registro[0][7]~feeder_combout\);

-- Location: FF_X12_Y17_N25
\inst|ecuacion1|registro[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[0][7]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][7]~q\);

-- Location: LCCOMB_X11_Y17_N28
\inst|ecuacion1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector16~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & ((\inst|ecuacion1|registro[3][7]~q\) # ((\inst|ecuacion1|pr_state.state6~q\ & \inst|ecuacion1|registro[0][7]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & 
-- (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[3][7]~q\,
	datad => \inst|ecuacion1|registro[0][7]~q\,
	combout => \inst|ecuacion1|Selector16~0_combout\);

-- Location: LCCOMB_X11_Y16_N14
\inst|ecuacion1|MREG[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[21]~feeder_combout\ = \inst|ecuacion1|Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector16~0_combout\,
	combout => \inst|ecuacion1|MREG[21]~feeder_combout\);

-- Location: FF_X11_Y16_N15
\inst|ecuacion1|MREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[21]~feeder_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(21));

-- Location: LCCOMB_X12_Y16_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|ecuacion1|MREG\(11)) # ((\inst|ecuacion1|MREG\(8)) # ((!\inst|ecuacion1|MREG\(21) & \inst|ecuacion1|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|MREG\(11),
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y16_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|ecuacion1|MREG\(21) & ((GND) # (!\inst|ecuacion1|MREG\(4)))) # (!\inst|ecuacion1|MREG\(21) & (\inst|ecuacion1|MREG\(4) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|ecuacion1|MREG\(21)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X11_Y16_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X11_Y16_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X11_Y16_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X11_Y16_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X11_Y16_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\inst|ecuacion1|MREG\(9) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY((\inst|ecuacion1|MREG\(9)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X11_Y16_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\ $ (\inst|ecuacion1|MREG\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(10),
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X12_Y16_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X11_Y16_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ & 
-- !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X11_Y16_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|ecuacion1|MREG\(5)) # ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y16_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst|ecuacion1|MREG\(21)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datac => \inst|ecuacion1|MREG\(21),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: FF_X13_Y17_N9
\inst|ecuacion1|registro[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(6),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][6]~q\);

-- Location: LCCOMB_X14_Y16_N18
\inst|ecuacion1|registro[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][6]~feeder_combout\ = \inst|ecuacion1|alu1|R\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(6),
	combout => \inst|ecuacion1|registro[3][6]~feeder_combout\);

-- Location: FF_X14_Y16_N19
\inst|ecuacion1|registro[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][6]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][6]~q\);

-- Location: LCCOMB_X10_Y16_N2
\inst|ecuacion1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector17~0_combout\ = (\inst|ecuacion1|registro[0][6]~q\ & ((\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|registro[3][6]~q\ & \inst|ecuacion1|pr_state.state8~q\)))) # (!\inst|ecuacion1|registro[0][6]~q\ & 
-- (\inst|ecuacion1|registro[3][6]~q\ & (\inst|ecuacion1|pr_state.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[0][6]~q\,
	datab => \inst|ecuacion1|registro[3][6]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector17~0_combout\);

-- Location: FF_X10_Y16_N3
\inst|ecuacion1|MREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector17~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(20));

-- Location: LCCOMB_X12_Y16_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((\inst|ecuacion1|MREG\(4) & !\inst|ecuacion1|MREG\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(20),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X12_Y16_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)) # (!\inst|ecuacion1|MREG\(5) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X12_Y16_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|ecuacion1|MREG\(6) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\))) # 
-- (!\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X12_Y16_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X12_Y16_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X12_Y16_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X12_Y16_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X12_Y16_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X10_Y16_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(20) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(20)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ = CARRY((\inst|ecuacion1|MREG\(20)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(20),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X10_Y16_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X10_Y16_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|ecuacion1|MREG\(6)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (!\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X10_Y16_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|ecuacion1|MREG\(7) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X10_Y16_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\)) # (!\inst|ecuacion1|MREG\(8) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X10_Y16_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\) # (GND))))) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|ecuacion1|MREG\(9) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X10_Y16_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X11_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X11_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X11_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X11_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|MREG\(20))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(20),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X11_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((\inst|ecuacion1|MREG\(4) & !\inst|ecuacion1|MREG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(19),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X11_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\inst|ecuacion1|MREG\(5) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X11_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & ((\inst|ecuacion1|MREG\(6)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X11_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X11_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X11_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X11_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X11_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X12_Y15_N10
\inst|ecuacion1|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(19) $ ((\inst|ecuacion1|MREG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(1),
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|MREG\(9),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y14_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X21_Y16_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X21_Y16_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(15))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) & \inst|ecuacion1|MREG\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|ecuacion1|MREG\(15),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst|ecuacion1|alu1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ = (\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|MREG\(15),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X21_Y16_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(15))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|MREG\(18),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X19_Y14_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(5))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(6))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|MREG\(6),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(17))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(18) & \inst|ecuacion1|MREG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X16_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|MREG\(6),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\);

-- Location: LCCOMB_X16_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X16_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X16_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ & (\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datab => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(15) & ((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|MREG\(4))))) # (!\inst|ecuacion1|MREG\(5) & (((\inst|ecuacion1|MREG\(15)) # 
-- (\inst|ecuacion1|MREG\(14))) # (!\inst|ecuacion1|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)) # (!\inst|ecuacion1|MREG\(6) & ((\inst|ecuacion1|MREG\(16)) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(17) & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\) # (!\inst|ecuacion1|MREG\(7)))) # (!\inst|ecuacion1|MREG\(17) & (!\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ & ((\inst|ecuacion1|MREG\(18)) # (!\inst|ecuacion1|MREG\(8)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ & (\inst|ecuacion1|MREG\(18) & !\inst|ecuacion1|MREG\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y16_N8
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|MREG\(15)) # ((\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14))))) # (!\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(4) & 
-- (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y16_N30
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|ecuacion1|MREG\(16) & ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\) # (\inst|ecuacion1|MREG\(6)))) # (!\inst|ecuacion1|MREG\(16) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ & \inst|ecuacion1|MREG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(17) & ((\inst|ecuacion1|MREG\(7)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|ecuacion1|MREG\(8) & ((\inst|ecuacion1|MREG\(18)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|MREG\(18) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\inst|ecuacion1|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~1_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- (((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ & !\inst|ecuacion1|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|sel_aux\(1),
	combout => \inst|ecuacion1|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y15_N6
\inst|ecuacion1|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~2_combout\ = (\inst|ecuacion1|alu1|Mux4~1_combout\ & (!\inst|ecuacion1|alu1|Mux4~0_combout\)) # (!\inst|ecuacion1|alu1|Mux4~1_combout\ & ((\inst|ecuacion1|alu1|sel_aux\(1) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datac => \inst|ecuacion1|alu1|Mux4~1_combout\,
	datad => \inst|ecuacion1|alu1|sel_aux\(1),
	combout => \inst|ecuacion1|alu1|Mux4~2_combout\);

-- Location: LCCOMB_X14_Y16_N6
\inst|ecuacion1|alu1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~4_combout\ = (\inst|ecuacion1|alu1|Mux4~3_combout\ & (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux4~2_combout\)) # (!\inst|ecuacion1|alu1|Mux2~4_combout\))) # (!\inst|ecuacion1|alu1|Mux4~3_combout\ & 
-- (\inst|ecuacion1|alu1|R[4]~0_combout\ & ((\inst|ecuacion1|alu1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~3_combout\,
	datab => \inst|ecuacion1|alu1|R[4]~0_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux4~2_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~4_combout\);

-- Location: FF_X14_Y16_N7
\inst|ecuacion1|alu1|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(5));

-- Location: FF_X13_Y17_N29
\inst|ecuacion1|registro[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(5),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][5]~q\);

-- Location: LCCOMB_X14_Y16_N16
\inst|ecuacion1|registro[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][5]~feeder_combout\ = \inst|ecuacion1|alu1|R\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(5),
	combout => \inst|ecuacion1|registro[3][5]~feeder_combout\);

-- Location: FF_X14_Y16_N17
\inst|ecuacion1|registro[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][5]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][5]~q\);

-- Location: LCCOMB_X13_Y16_N8
\inst|ecuacion1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector18~0_combout\ = (\inst|ecuacion1|registro[0][5]~q\ & ((\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|registro[3][5]~q\ & \inst|ecuacion1|pr_state.state8~q\)))) # (!\inst|ecuacion1|registro[0][5]~q\ & 
-- (\inst|ecuacion1|registro[3][5]~q\ & (\inst|ecuacion1|pr_state.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[0][5]~q\,
	datab => \inst|ecuacion1|registro[3][5]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector18~0_combout\);

-- Location: FF_X12_Y16_N3
\inst|ecuacion1|MREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|Selector18~0_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(19));

-- Location: LCCOMB_X12_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(19) & ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\) # (\inst|ecuacion1|MREG\(9)))) # (!\inst|ecuacion1|MREG\(19) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ & \inst|ecuacion1|MREG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(9),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|MREG\(19) & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\)) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|MREG\(19)) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|MREG\(19),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst|ecuacion1|alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~1_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ & (!\inst|ecuacion1|alu1|sel_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst|ecuacion1|alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(10) $ ((\inst|ecuacion1|MREG\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(1),
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|MREG\(20),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(17))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(18) & (\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|MREG\(16))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & (\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X16_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(8))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst|ecuacion1|alu1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~2_combout\ = (\inst|ecuacion1|alu1|Mux3~1_combout\ & (!\inst|ecuacion1|alu1|Mux3~0_combout\)) # (!\inst|ecuacion1|alu1|Mux3~1_combout\ & ((\inst|ecuacion1|alu1|sel_aux\(1) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~1_combout\,
	datab => \inst|ecuacion1|alu1|Mux3~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y16_N24
\inst|ecuacion1|alu1|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[6]~19_combout\ = (\inst|ecuacion1|MREG\(20) & ((\inst|ecuacion1|alu1|unidad_logica|aux[5]~18\) # (GND))) # (!\inst|ecuacion1|MREG\(20) & (!\inst|ecuacion1|alu1|unidad_logica|aux[5]~18\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[6]~20\ = CARRY((\inst|ecuacion1|MREG\(20)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(20),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[5]~18\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[6]~19_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[6]~20\);

-- Location: FF_X17_Y16_N25
\inst|ecuacion1|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[6]~19_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X18_Y16_N18
\inst|ecuacion1|alu1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\ = (\inst|ecuacion1|MREG\(10) & \inst|ecuacion1|MREG\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|MREG\(20),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\);

-- Location: LCCOMB_X18_Y16_N12
\inst|ecuacion1|alu1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|unidad_logica|aux\(6) & (\inst|ecuacion1|alu1|sel_aux\(1)))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1)) # 
-- (\inst|ecuacion1|alu1|unidad_logica|salida~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(6),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\);

-- Location: LCCOMB_X18_Y16_N16
\inst|ecuacion1|alu1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ & (((!\inst|ecuacion1|MREG\(20))) # (!\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & ((\inst|ecuacion1|MREG\(10)) # (\inst|ecuacion1|MREG\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datac => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|MREG\(20),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\);

-- Location: FF_X18_Y16_N17
\inst|ecuacion1|alu1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(6));

-- Location: FF_X14_Y16_N27
\inst|ecuacion1|alu1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(6));

-- Location: FF_X14_Y16_N29
\inst|ecuacion1|alu1|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X14_Y16_N28
\inst|ecuacion1|alu1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(6))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(6),
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|ecuacion1|alu1|R[4]~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~3_combout\);

-- Location: LCCOMB_X14_Y16_N20
\inst|ecuacion1|alu1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~4_combout\ = (\inst|ecuacion1|alu1|Mux3~2_combout\ & ((\inst|ecuacion1|alu1|R[4]~0_combout\) # ((\inst|ecuacion1|alu1|Mux3~3_combout\ & !\inst|ecuacion1|alu1|Mux2~4_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~2_combout\ & 
-- (\inst|ecuacion1|alu1|Mux3~3_combout\ & (!\inst|ecuacion1|alu1|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~2_combout\,
	datab => \inst|ecuacion1|alu1|Mux3~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|R[4]~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~4_combout\);

-- Location: FF_X14_Y16_N21
\inst|ecuacion1|alu1|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(6));

-- Location: FF_X13_Y18_N9
\inst|ecuacion1|registro[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(6),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][6]~q\);

-- Location: LCCOMB_X13_Y18_N8
\inst|ecuacion1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector27~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][6]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][6]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector27~0_combout\);

-- Location: LCCOMB_X10_Y16_N28
\inst|ecuacion1|MREG[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[10]~feeder_combout\ = \inst|ecuacion1|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector27~0_combout\,
	combout => \inst|ecuacion1|MREG[10]~feeder_combout\);

-- Location: FF_X13_Y17_N27
\inst|ecuacion1|registro[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(6),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][6]~q\);

-- Location: FF_X10_Y16_N29
\inst|ecuacion1|MREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[10]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][6]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(10));

-- Location: LCCOMB_X14_Y17_N18
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\inst|ecuacion1|MREG\(10) & (\inst|ecuacion1|MREG\(20) & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\)) # (!\inst|ecuacion1|MREG\(10) & ((\inst|ecuacion1|MREG\(20)) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|MREG\(20),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst|ecuacion1|MREG\(10) & ((\inst|ecuacion1|MREG\(20)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(10) & (\inst|ecuacion1|MREG\(20) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|MREG\(20),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y17_N22
\inst|ecuacion1|alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~1_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|sel_aux\(0) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\)) # (!\inst|ecuacion1|alu1|sel_aux\(0) & ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(1),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y17_N4
\inst|ecuacion1|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(21) $ (((\inst|ecuacion1|MREG\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|MREG\(11),
	combout => \inst|ecuacion1|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(8))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(18))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(18) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|MREG\(17))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & (\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(18) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X19_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst|ecuacion1|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~2_combout\ = (\inst|ecuacion1|alu1|Mux2~1_combout\ & (!\inst|ecuacion1|alu1|Mux2~0_combout\)) # (!\inst|ecuacion1|alu1|Mux2~1_combout\ & ((\inst|ecuacion1|alu1|sel_aux\(1) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~1_combout\,
	datab => \inst|ecuacion1|alu1|Mux2~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst|ecuacion1|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\ = (\inst|ecuacion1|MREG\(21) & \inst|ecuacion1|MREG\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(21),
	datad => \inst|ecuacion1|MREG\(11),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\);

-- Location: LCCOMB_X17_Y16_N26
\inst|ecuacion1|alu1|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[7]~21_combout\ = (\inst|ecuacion1|MREG\(21) & (!\inst|ecuacion1|alu1|unidad_logica|aux[6]~20\ & VCC)) # (!\inst|ecuacion1|MREG\(21) & (\inst|ecuacion1|alu1|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[7]~22\ = CARRY((!\inst|ecuacion1|MREG\(21) & !\inst|ecuacion1|alu1|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(21),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[6]~20\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[7]~21_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[7]~22\);

-- Location: FF_X17_Y16_N27
\inst|ecuacion1|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[7]~21_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X14_Y17_N2
\inst|ecuacion1|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1) & \inst|ecuacion1|alu1|unidad_logica|aux\(7))))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~9_combout\) # ((\inst|ecuacion1|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_logica|aux\(7),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst|ecuacion1|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\ = (\inst|ecuacion1|MREG\(21) & ((\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ $ (\inst|ecuacion1|alu1|unidad_logica|salida~10_combout\)))) # (!\inst|ecuacion1|MREG\(21) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~10_combout\) # ((\inst|ecuacion1|MREG\(11) & \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|MREG\(11),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\);

-- Location: FF_X14_Y17_N17
\inst|ecuacion1|alu1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(7));

-- Location: FF_X14_Y17_N9
\inst|ecuacion1|alu1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(7));

-- Location: FF_X14_Y17_N7
\inst|ecuacion1|alu1|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X14_Y17_N6
\inst|ecuacion1|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(7))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R[4]~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(7),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|ecuacion1|MREG\(3),
	combout => \inst|ecuacion1|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst|ecuacion1|alu1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~5_combout\ = (\inst|ecuacion1|alu1|Mux2~2_combout\ & ((\inst|ecuacion1|alu1|R[4]~0_combout\) # ((\inst|ecuacion1|alu1|Mux2~3_combout\ & !\inst|ecuacion1|alu1|Mux2~4_combout\)))) # (!\inst|ecuacion1|alu1|Mux2~2_combout\ & 
-- (\inst|ecuacion1|alu1|Mux2~3_combout\ & (!\inst|ecuacion1|alu1|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~2_combout\,
	datab => \inst|ecuacion1|alu1|Mux2~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|R[4]~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~5_combout\);

-- Location: FF_X14_Y17_N25
\inst|ecuacion1|alu1|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(7));

-- Location: FF_X13_Y18_N19
\inst|ecuacion1|registro[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(7),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][7]~q\);

-- Location: LCCOMB_X13_Y18_N18
\inst|ecuacion1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector26~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][7]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][7]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector26~0_combout\);

-- Location: LCCOMB_X13_Y16_N22
\inst|ecuacion1|MREG[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[11]~feeder_combout\ = \inst|ecuacion1|Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector26~0_combout\,
	combout => \inst|ecuacion1|MREG[11]~feeder_combout\);

-- Location: LCCOMB_X12_Y17_N6
\inst|ecuacion1|registro[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[2][7]~feeder_combout\ = \inst|ecuacion1|alu1|R\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(7),
	combout => \inst|ecuacion1|registro[2][7]~feeder_combout\);

-- Location: FF_X12_Y17_N7
\inst|ecuacion1|registro[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[2][7]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][7]~q\);

-- Location: FF_X13_Y16_N23
\inst|ecuacion1|MREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[11]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][7]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(11));

-- Location: LCCOMB_X12_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(19) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(19)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|ecuacion1|MREG\(19)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(19),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X12_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X12_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X12_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))))) # (!\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|ecuacion1|MREG\(7) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X11_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X13_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X11_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X11_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|MREG\(19))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(18) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(18)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\ = CARRY((\inst|ecuacion1|MREG\(18)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(18),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X14_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\) # (GND))))) # (!\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|ecuacion1|MREG\(5) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X14_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X14_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & ((\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|ecuacion1|MREG\(7) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & ((\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & (\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & ((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X14_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\) # (!\inst|ecuacion1|MREG\(8)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X12_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\)) # (!\inst|ecuacion1|MREG\(8) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X12_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))))) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|ecuacion1|MREG\(9) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X12_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X13_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X12_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X13_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((\inst|ecuacion1|MREG\(4) & !\inst|ecuacion1|MREG\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(18),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X13_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\inst|ecuacion1|MREG\(5)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X13_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|ecuacion1|MREG\(6) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\))) # 
-- (!\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X13_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\inst|ecuacion1|MREG\(7) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X13_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X13_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\) # (!\inst|ecuacion1|MREG\(9)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & (!\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X13_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X13_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X17_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X13_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\);

-- Location: LCCOMB_X13_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X13_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X13_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|MREG\(18))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(17) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(17)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\ = CARRY((\inst|ecuacion1|MREG\(17)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(17),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X14_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\) # (GND))))) # (!\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst|ecuacion1|MREG\(5) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X14_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X14_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|ecuacion1|MREG\(7) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & (\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X14_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\) # (!\inst|ecuacion1|MREG\(8)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ & (!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X14_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|ecuacion1|MREG\(9) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\)) # (!\inst|ecuacion1|MREG\(9) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\) # (GND))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~11\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ & (\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|ecuacion1|MREG\(9)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X14_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\) # (GND))))) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~11\ = CARRY((\inst|ecuacion1|MREG\(9) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X14_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12_combout\);

-- Location: LCCOMB_X17_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\);

-- Location: LCCOMB_X17_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X17_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\)) # (!\inst|ecuacion1|MREG\(5) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X17_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ & (\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\ & ((\inst|ecuacion1|MREG\(6)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X17_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X17_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\inst|ecuacion1|MREG\(8) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\))) # 
-- (!\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X17_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X17_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X17_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\);

-- Location: LCCOMB_X17_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\);

-- Location: LCCOMB_X14_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12_combout\);

-- Location: LCCOMB_X18_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\);

-- Location: LCCOMB_X18_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\);

-- Location: LCCOMB_X17_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\);

-- Location: LCCOMB_X17_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X17_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|ecuacion1|MREG\(17))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ = CARRY((\inst|ecuacion1|MREG\(4) & !\inst|ecuacion1|MREG\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(16),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\);

-- Location: LCCOMB_X18_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\) # (!\inst|ecuacion1|MREG\(5)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & (!\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X18_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\inst|ecuacion1|MREG\(6) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\))) # 
-- (!\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X18_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\)) # (!\inst|ecuacion1|MREG\(7) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X18_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst|ecuacion1|MREG\(8) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\))) # 
-- (!\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X18_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\) # (!\inst|ecuacion1|MREG\(9)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & (!\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X18_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|ecuacion1|MREG\(10) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\))) # 
-- (!\inst|ecuacion1|MREG\(10) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X18_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\);

-- Location: LCCOMB_X19_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(16) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(16)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\ = CARRY((\inst|ecuacion1|MREG\(16)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(16),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X19_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & ((\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & ((\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & (\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\ & ((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X19_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X19_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))))) # (!\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|ecuacion1|MREG\(7) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X19_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\)) # (!\inst|ecuacion1|MREG\(8) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X19_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\) # (GND))))) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst|ecuacion1|MREG\(9) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X19_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X19_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\);

-- Location: LCCOMB_X18_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|ecuacion1|MREG\(16)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|ecuacion1|MREG\(16),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\);

-- Location: LCCOMB_X21_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\) # (!\inst|ecuacion1|MREG\(5)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & (!\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X21_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ & (\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ & ((\inst|ecuacion1|MREG\(6)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X21_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\)) # (!\inst|ecuacion1|MREG\(7) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X21_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X21_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\) # (!\inst|ecuacion1|MREG\(9)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X21_Y15_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X21_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0_combout\ = (\inst|ecuacion1|MREG\(15) & ((GND) # (!\inst|ecuacion1|MREG\(4)))) # (!\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(4) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\ = CARRY((\inst|ecuacion1|MREG\(15)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\);

-- Location: LCCOMB_X23_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & (\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X23_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X23_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|ecuacion1|MREG\(7) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ & (\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X23_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\) # (!\inst|ecuacion1|MREG\(8)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X23_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst|ecuacion1|MREG\(9) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\)) # (!\inst|ecuacion1|MREG\(9) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\) # (GND))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~11\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst|ecuacion1|MREG\(9)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X23_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\);

-- Location: LCCOMB_X22_Y15_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|ecuacion1|MREG\(15))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\);

-- Location: LCCOMB_X22_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\)) # (!\inst|ecuacion1|MREG\(5) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X22_Y15_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ = CARRY((\inst|ecuacion1|MREG\(6) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\))) # 
-- (!\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\);

-- Location: LCCOMB_X22_Y15_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\);

-- Location: LCCOMB_X22_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ = CARRY((\inst|ecuacion1|MREG\(8) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\))) # 
-- (!\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\);

-- Location: LCCOMB_X22_Y15_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\) # (!\inst|ecuacion1|MREG\(9)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\ & (!\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X22_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\inst|ecuacion1|MREG\(10) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\))) # 
-- (!\inst|ecuacion1|MREG\(10) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~15_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X22_Y15_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ & \inst|ecuacion1|MREG\(11))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\) # (\inst|ecuacion1|MREG\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add6~14_combout\,
	datad => \inst|ecuacion1|MREG\(11),
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst|ecuacion1|alu1|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~6_combout\ = (\inst|ecuacion1|alu1|Mux9~2_combout\) # ((\inst|ecuacion1|alu1|sel_aux\(1) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ & \inst|ecuacion1|alu1|sel_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(1),
	datab => \inst|ecuacion1|alu1|Mux9~2_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan7~14_combout\,
	datad => \inst|ecuacion1|alu1|sel_aux\(0),
	combout => \inst|ecuacion1|alu1|Mux9~6_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst|ecuacion1|alu1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~5_combout\ = (\inst|ecuacion1|alu1|Mux9~3_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida\(0)) # ((\inst|ecuacion1|alu1|Mux9~4_combout\)))) # (!\inst|ecuacion1|alu1|Mux9~3_combout\ & (((\inst|ecuacion1|alu1|Mux9~4_combout\ 
-- & \inst|ecuacion1|alu1|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux9~3_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(0),
	datac => \inst|ecuacion1|alu1|Mux9~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux9~6_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~5_combout\);

-- Location: FF_X22_Y15_N25
\inst|ecuacion1|alu1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(0));

-- Location: FF_X13_Y17_N7
\inst|ecuacion1|registro[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(0),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][0]~q\);

-- Location: LCCOMB_X13_Y17_N6
\inst|ecuacion1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector23~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[0][0]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (((!\inst|ecuacion1|addr1\(1))) # (!\inst|ecuacion1|addr1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(0),
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[0][0]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector23~0_combout\);

-- Location: LCCOMB_X13_Y16_N12
\inst|ecuacion1|MREG[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[14]~feeder_combout\ = \inst|ecuacion1|Selector23~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector23~0_combout\,
	combout => \inst|ecuacion1|MREG[14]~feeder_combout\);

-- Location: LCCOMB_X13_Y16_N4
\inst|ecuacion1|registro[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][0]~feeder_combout\ = \inst|ecuacion1|alu1|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|R\(0),
	combout => \inst|ecuacion1|registro[3][0]~feeder_combout\);

-- Location: FF_X13_Y16_N5
\inst|ecuacion1|registro[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][0]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][0]~q\);

-- Location: FF_X13_Y16_N13
\inst|ecuacion1|MREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[14]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[3][0]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(14));

-- Location: FF_X19_Y16_N11
\inst|ecuacion1|alu1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(1));

-- Location: FF_X18_Y16_N31
\inst|ecuacion1|alu1|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X17_Y16_N14
\inst|ecuacion1|alu1|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[1]~9_combout\ = (\inst|ecuacion1|MREG\(14) & (!\inst|ecuacion1|MREG\(15) & VCC)) # (!\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(15) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[1]~10\ = CARRY((!\inst|ecuacion1|MREG\(14) & !\inst|ecuacion1|MREG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(15),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[1]~9_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[1]~10\);

-- Location: FF_X17_Y16_N15
\inst|ecuacion1|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[1]~9_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X18_Y16_N26
\inst|ecuacion1|alu1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|unidad_logica|aux\(1)) # ((!\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (((!\inst|ecuacion1|alu1|sel_aux\(0) 
-- & \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|aux\(1),
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\);

-- Location: LCCOMB_X18_Y16_N28
\inst|ecuacion1|alu1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ = (\inst|ecuacion1|MREG\(15) & ((\inst|ecuacion1|alu1|unidad_logica|salida~26_combout\ $ (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\)))) # (!\inst|ecuacion1|MREG\(15) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~26_combout\) # ((\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\);

-- Location: FF_X18_Y16_N29
\inst|ecuacion1|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X18_Y16_N30
\inst|ecuacion1|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~2_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida\(1)))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|R[4]~1_combout\,
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(1),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida\(1),
	combout => \inst|ecuacion1|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X21_Y15_N8
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\ = \inst|ecuacion1|MREG\(15) $ (\inst|ecuacion1|MREG\(5) $ (((\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ = (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(4) $ (((\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(14)))))) # (!\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|MREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst|ecuacion1|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|sel_aux\(0)) # (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\ & (!\inst|ecuacion1|alu1|sel_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0_combout\ = \inst|ecuacion1|MREG\(15) $ (\inst|ecuacion1|MREG\(5) $ (((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(5),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst|ecuacion1|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~1_combout\ = (\inst|ecuacion1|alu1|Mux8~0_combout\ & (((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\)) # (!\inst|ecuacion1|alu1|sel_aux\(0)))) # (!\inst|ecuacion1|alu1|Mux8~0_combout\ & 
-- (\inst|ecuacion1|alu1|sel_aux\(0) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux8~0_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst|ecuacion1|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~3_combout\ = (\inst|ecuacion1|alu1|Mux2~4_combout\ & (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux8~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux2~4_combout\ & ((\inst|ecuacion1|alu1|Mux8~2_combout\) # 
-- ((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datab => \inst|ecuacion1|alu1|Mux8~2_combout\,
	datac => \inst|ecuacion1|alu1|R[4]~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux8~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~3_combout\);

-- Location: FF_X21_Y15_N5
\inst|ecuacion1|alu1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(1));

-- Location: FF_X13_Y17_N13
\inst|ecuacion1|registro[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(1),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][1]~q\);

-- Location: LCCOMB_X13_Y16_N18
\inst|ecuacion1|registro[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][1]~feeder_combout\ = \inst|ecuacion1|alu1|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|ecuacion1|registro[3][1]~feeder_combout\);

-- Location: FF_X13_Y16_N19
\inst|ecuacion1|registro[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][1]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][1]~q\);

-- Location: LCCOMB_X13_Y16_N26
\inst|ecuacion1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector22~0_combout\ = (\inst|ecuacion1|registro[0][1]~q\ & ((\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|registro[3][1]~q\ & \inst|ecuacion1|pr_state.state8~q\)))) # (!\inst|ecuacion1|registro[0][1]~q\ & 
-- (\inst|ecuacion1|registro[3][1]~q\ & (\inst|ecuacion1|pr_state.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[0][1]~q\,
	datab => \inst|ecuacion1|registro[3][1]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector22~0_combout\);

-- Location: FF_X13_Y16_N27
\inst|ecuacion1|MREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector22~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(15));

-- Location: LCCOMB_X18_Y16_N8
\inst|ecuacion1|alu1|barrel_shifters|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|barrel_shifters|aux[2]~feeder_combout\ = \inst|ecuacion1|MREG\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(15),
	combout => \inst|ecuacion1|alu1|barrel_shifters|aux[2]~feeder_combout\);

-- Location: FF_X18_Y16_N9
\inst|ecuacion1|alu1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|barrel_shifters|aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(2));

-- Location: FF_X18_Y16_N3
\inst|ecuacion1|alu1|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X17_Y16_N16
\inst|ecuacion1|alu1|unidad_logica|aux[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[2]~11_combout\ = (\inst|ecuacion1|MREG\(16) & ((\inst|ecuacion1|alu1|unidad_logica|aux[1]~10\) # (GND))) # (!\inst|ecuacion1|MREG\(16) & (!\inst|ecuacion1|alu1|unidad_logica|aux[1]~10\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[2]~12\ = CARRY((\inst|ecuacion1|MREG\(16)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[1]~10\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[2]~11_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[2]~12\);

-- Location: FF_X17_Y16_N17
\inst|ecuacion1|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[2]~11_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X19_Y16_N4
\inst|ecuacion1|alu1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\ = (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\);

-- Location: LCCOMB_X18_Y16_N14
\inst|ecuacion1|alu1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|unidad_logica|aux\(2)))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & ((\inst|ecuacion1|alu1|sel_aux\(1)) # 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(2),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\);

-- Location: LCCOMB_X19_Y16_N26
\inst|ecuacion1|alu1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ = (\inst|ecuacion1|MREG\(16) & ((\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ $ (\inst|ecuacion1|alu1|unidad_logica|salida~24_combout\)))) # (!\inst|ecuacion1|MREG\(16) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~24_combout\) # ((\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\);

-- Location: FF_X19_Y16_N27
\inst|ecuacion1|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(2));

-- Location: LCCOMB_X18_Y16_N2
\inst|ecuacion1|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida\(2)))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|R[4]~1_combout\,
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(2),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida\(2),
	combout => \inst|ecuacion1|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y16_N22
\inst|ecuacion1|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~1_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & ((\inst|ecuacion1|alu1|sel_aux\(1)) # ((!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\);

-- Location: LCCOMB_X19_Y16_N20
\inst|ecuacion1|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(6) $ ((\inst|ecuacion1|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y16_N16
\inst|ecuacion1|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~2_combout\ = (\inst|ecuacion1|alu1|Mux7~1_combout\ & (((!\inst|ecuacion1|alu1|Mux7~0_combout\)))) # (!\inst|ecuacion1|alu1|Mux7~1_combout\ & ((\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\)) # (!\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|Mux7~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst|ecuacion1|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~4_combout\ = (\inst|ecuacion1|alu1|Mux7~3_combout\ & (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux7~2_combout\)) # (!\inst|ecuacion1|alu1|Mux2~4_combout\))) # (!\inst|ecuacion1|alu1|Mux7~3_combout\ & 
-- (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~3_combout\,
	datab => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datac => \inst|ecuacion1|alu1|R[4]~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux7~2_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~4_combout\);

-- Location: FF_X19_Y16_N1
\inst|ecuacion1|alu1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(2));

-- Location: FF_X13_Y17_N19
\inst|ecuacion1|registro[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(2),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][2]~q\);

-- Location: LCCOMB_X13_Y17_N18
\inst|ecuacion1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector21~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[0][2]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(0) & (\inst|ecuacion1|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(0),
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[0][2]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector21~0_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst|ecuacion1|MREG[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[16]~feeder_combout\ = \inst|ecuacion1|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector21~0_combout\,
	combout => \inst|ecuacion1|MREG[16]~feeder_combout\);

-- Location: LCCOMB_X13_Y16_N30
\inst|ecuacion1|registro[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][2]~feeder_combout\ = \inst|ecuacion1|alu1|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|ecuacion1|registro[3][2]~feeder_combout\);

-- Location: FF_X13_Y16_N31
\inst|ecuacion1|registro[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][2]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][2]~q\);

-- Location: FF_X13_Y16_N21
\inst|ecuacion1|MREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[16]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[3][2]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(16));

-- Location: LCCOMB_X17_Y16_N18
\inst|ecuacion1|alu1|unidad_logica|aux[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[3]~13_combout\ = (\inst|ecuacion1|MREG\(17) & (!\inst|ecuacion1|alu1|unidad_logica|aux[2]~12\ & VCC)) # (!\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|alu1|unidad_logica|aux[2]~12\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[3]~14\ = CARRY((!\inst|ecuacion1|MREG\(17) & !\inst|ecuacion1|alu1|unidad_logica|aux[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[2]~12\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[3]~13_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[3]~14\);

-- Location: FF_X17_Y16_N19
\inst|ecuacion1|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[3]~13_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X16_Y16_N30
\inst|ecuacion1|alu1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (((\inst|ecuacion1|alu1|unidad_logica|aux\(3)) # (!\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (\inst|ecuacion1|alu1|unidad_logica|salida~20_combout\ & ((!\inst|ecuacion1|alu1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(3),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|sel_aux\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\);

-- Location: LCCOMB_X16_Y16_N20
\inst|ecuacion1|alu1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ & (((!\inst|ecuacion1|MREG\(17))) # (!\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & ((\inst|ecuacion1|MREG\(17)) # (\inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|MREG\(7),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\);

-- Location: FF_X16_Y16_N21
\inst|ecuacion1|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(3));

-- Location: LCCOMB_X16_Y16_N4
\inst|ecuacion1|alu1|barrel_shifters|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|barrel_shifters|aux[3]~feeder_combout\ = \inst|ecuacion1|MREG\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(16),
	combout => \inst|ecuacion1|alu1|barrel_shifters|aux[3]~feeder_combout\);

-- Location: FF_X16_Y16_N5
\inst|ecuacion1|alu1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|barrel_shifters|aux[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(3));

-- Location: FF_X16_Y16_N23
\inst|ecuacion1|alu1|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X16_Y16_N22
\inst|ecuacion1|alu1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~4_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(3))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|ecuacion1|alu1|R[4]~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~4_combout\);

-- Location: LCCOMB_X16_Y15_N26
\inst|ecuacion1|alu1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~0_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|sel_aux\(1))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- (((!\inst|ecuacion1|alu1|sel_aux\(1) & \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y15_N4
\inst|ecuacion1|alu1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~1_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(14))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|MREG\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|sel_aux\(1),
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y15_N18
\inst|ecuacion1|alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~2_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|Mux6~1_combout\))))) # 
-- (!\inst|ecuacion1|alu1|sel_aux\(1) & (\inst|ecuacion1|MREG\(7) $ ((\inst|ecuacion1|alu1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|Mux6~1_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y15_N30
\inst|ecuacion1|alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~3_combout\ = (\inst|ecuacion1|alu1|Mux6~0_combout\ & ((\inst|ecuacion1|alu1|sel_aux\(1) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (!\inst|ecuacion1|alu1|Mux6~2_combout\)))) # (!\inst|ecuacion1|alu1|Mux6~0_combout\ & (\inst|ecuacion1|alu1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux6~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~2_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~3_combout\);

-- Location: LCCOMB_X14_Y16_N22
\inst|ecuacion1|alu1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~5_combout\ = (\inst|ecuacion1|alu1|Mux6~4_combout\ & (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux6~3_combout\)) # (!\inst|ecuacion1|alu1|Mux2~4_combout\))) # (!\inst|ecuacion1|alu1|Mux6~4_combout\ & 
-- (\inst|ecuacion1|alu1|R[4]~0_combout\ & ((\inst|ecuacion1|alu1|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux6~4_combout\,
	datab => \inst|ecuacion1|alu1|R[4]~0_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux6~3_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~5_combout\);

-- Location: FF_X14_Y16_N23
\inst|ecuacion1|alu1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(3));

-- Location: FF_X12_Y17_N29
\inst|ecuacion1|registro[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(3),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][3]~q\);

-- Location: FF_X14_Y16_N25
\inst|ecuacion1|registro[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(3),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][3]~q\);

-- Location: LCCOMB_X13_Y16_N10
\inst|ecuacion1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector20~0_combout\ = (\inst|ecuacion1|registro[0][3]~q\ & ((\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|registro[3][3]~q\ & \inst|ecuacion1|pr_state.state8~q\)))) # (!\inst|ecuacion1|registro[0][3]~q\ & 
-- (\inst|ecuacion1|registro[3][3]~q\ & (\inst|ecuacion1|pr_state.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[0][3]~q\,
	datab => \inst|ecuacion1|registro[3][3]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector20~0_combout\);

-- Location: FF_X13_Y16_N11
\inst|ecuacion1|MREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector20~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(17));

-- Location: FF_X17_Y16_N21
\inst|ecuacion1|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[4]~15_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X16_Y16_N28
\inst|ecuacion1|alu1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ = (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|MREG\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|MREG\(18),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\inst|ecuacion1|alu1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|unidad_logica|aux\(4)) # ((!\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (((\inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ & !\inst|ecuacion1|alu1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|aux\(4),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|sel_aux\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\);

-- Location: LCCOMB_X16_Y16_N16
\inst|ecuacion1|alu1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ = (\inst|ecuacion1|MREG\(18) & (\inst|ecuacion1|alu1|unidad_logica|salida~18_combout\ $ (((\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))))) # (!\inst|ecuacion1|MREG\(18) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~18_combout\) # ((\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\,
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\);

-- Location: FF_X16_Y16_N17
\inst|ecuacion1|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(4));

-- Location: FF_X16_Y16_N27
\inst|ecuacion1|alu1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(4));

-- Location: FF_X16_Y16_N19
\inst|ecuacion1|alu1|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X16_Y16_N18
\inst|ecuacion1|alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~4_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|R[4]~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(4))) # (!\inst|ecuacion1|alu1|R[4]~1_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(4),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|ecuacion1|alu1|R[4]~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~4_combout\);

-- Location: LCCOMB_X16_Y15_N10
\inst|ecuacion1|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~1_combout\ = \inst|ecuacion1|MREG\(18) $ (((\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\)) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|sel_aux\(0),
	combout => \inst|ecuacion1|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y15_N28
\inst|ecuacion1|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~0_combout\ = (\inst|ecuacion1|MREG\(8) & ((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|alu1|sel_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y15_N16
\inst|ecuacion1|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~2_combout\ = \inst|ecuacion1|alu1|Mux5~0_combout\ $ (((\inst|ecuacion1|alu1|sel_aux\(1) & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (\inst|ecuacion1|alu1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~1_combout\,
	datab => \inst|ecuacion1|alu1|Mux5~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst|ecuacion1|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~3_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & ((\inst|ecuacion1|alu1|sel_aux\(1) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (!\inst|ecuacion1|alu1|Mux5~2_combout\)))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~2_combout\,
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|sel_aux\(1),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X14_Y16_N12
\inst|ecuacion1|alu1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~5_combout\ = (\inst|ecuacion1|alu1|Mux5~4_combout\ & (((\inst|ecuacion1|alu1|R[4]~0_combout\ & \inst|ecuacion1|alu1|Mux5~3_combout\)) # (!\inst|ecuacion1|alu1|Mux2~4_combout\))) # (!\inst|ecuacion1|alu1|Mux5~4_combout\ & 
-- (\inst|ecuacion1|alu1|R[4]~0_combout\ & ((\inst|ecuacion1|alu1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~4_combout\,
	datab => \inst|ecuacion1|alu1|R[4]~0_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux5~3_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~5_combout\);

-- Location: FF_X14_Y16_N13
\inst|ecuacion1|alu1|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(4));

-- Location: FF_X13_Y17_N1
\inst|ecuacion1|registro[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(4),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][4]~q\);

-- Location: FF_X13_Y18_N17
\inst|ecuacion1|registro[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(4),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][4]~q\);

-- Location: LCCOMB_X13_Y18_N16
\inst|ecuacion1|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector29~1_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & ((\inst|ecuacion1|registro[2][4]~q\) # ((\inst|ecuacion1|registro[1][4]~q\ & \inst|ecuacion1|pr_state.state6~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & 
-- (((\inst|ecuacion1|registro[1][4]~q\ & \inst|ecuacion1|pr_state.state6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|registro[2][4]~q\,
	datac => \inst|ecuacion1|registro[1][4]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector29~1_combout\);

-- Location: LCCOMB_X13_Y18_N10
\inst|ecuacion1|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector29~2_combout\ = (\inst|ecuacion1|Selector29~0_combout\) # ((\inst|ecuacion1|Selector29~1_combout\) # ((\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|Selector29~0_combout\,
	datab => \inst|ecuacion1|Selector29~1_combout\,
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|WideOr15~combout\,
	combout => \inst|ecuacion1|Selector29~2_combout\);

-- Location: FF_X12_Y16_N25
\inst|ecuacion1|MREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|Selector29~2_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(8));

-- Location: LCCOMB_X19_Y15_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\) # ((\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|MREG\(17))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & (\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(18) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\inst|ecuacion1|MREG\(18) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N30
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|MREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\)) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\ = (\inst|ecuacion1|MREG\(21) & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\) # (\inst|ecuacion1|MREG\(11) $ (\inst|ecuacion1|alu1|sel_aux\(0))))) # (!\inst|ecuacion1|MREG\(21) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\ & (\inst|ecuacion1|MREG\(11) $ (\inst|ecuacion1|alu1|sel_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|MREG\(11),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\ = (\inst|ecuacion1|alu1|sel_aux\(1) & (!\inst|ecuacion1|alu1|sel_aux\(0) & (\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5_combout\))) # (!\inst|ecuacion1|alu1|sel_aux\(1) & 
-- (\inst|ecuacion1|alu1|sel_aux\(0) $ (((\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(1),
	datab => \inst|ecuacion1|alu1|sel_aux\(0),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~5_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\);

-- Location: LCCOMB_X16_Y18_N0
\inst|ecuacion1|alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~3_combout\ = (\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\) # ((\inst|ecuacion1|MREG\(1) & \inst|ecuacion1|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\,
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux1~3_combout\);

-- Location: FF_X16_Y18_N15
\inst|ecuacion1|alu1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(8));

-- Location: FF_X16_Y18_N31
\inst|ecuacion1|alu1|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X16_Y18_N30
\inst|ecuacion1|alu1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~1_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(8) & (\inst|ecuacion1|MREG\(1) $ (\inst|ecuacion1|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux1~1_combout\);

-- Location: FF_X13_Y18_N7
\inst|ecuacion1|registro[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(8),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][8]~q\);

-- Location: LCCOMB_X13_Y18_N6
\inst|ecuacion1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector25~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][8]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][8]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector25~0_combout\);

-- Location: LCCOMB_X13_Y16_N24
\inst|ecuacion1|MREG[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[12]~feeder_combout\ = \inst|ecuacion1|Selector25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector25~0_combout\,
	combout => \inst|ecuacion1|MREG[12]~feeder_combout\);

-- Location: FF_X13_Y17_N25
\inst|ecuacion1|registro[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(8),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][8]~q\);

-- Location: FF_X13_Y16_N25
\inst|ecuacion1|MREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[12]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][8]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(12));

-- Location: LCCOMB_X17_Y16_N6
\inst|ecuacion1|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\ = (\inst|ecuacion1|MREG\(22) & \inst|ecuacion1|MREG\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(22),
	datad => \inst|ecuacion1|MREG\(12),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X17_Y16_N28
\inst|ecuacion1|alu1|unidad_logica|aux[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[8]~23_combout\ = (\inst|ecuacion1|MREG\(22) & ((\inst|ecuacion1|alu1|unidad_logica|aux[7]~22\) # (GND))) # (!\inst|ecuacion1|MREG\(22) & (!\inst|ecuacion1|alu1|unidad_logica|aux[7]~22\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[8]~24\ = CARRY((\inst|ecuacion1|MREG\(22)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(22),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[7]~22\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[8]~23_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[8]~24\);

-- Location: FF_X17_Y16_N29
\inst|ecuacion1|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[8]~23_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X17_Y16_N12
\inst|ecuacion1|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|unidad_logica|aux\(8) & \inst|ecuacion1|alu1|sel_aux\(1))))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~6_combout\) # ((\inst|ecuacion1|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(8),
	datac => \inst|ecuacion1|alu1|sel_aux\(0),
	datad => \inst|ecuacion1|alu1|sel_aux\(1),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X17_Y16_N10
\inst|ecuacion1|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ & (((!\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\) # (!\inst|ecuacion1|MREG\(22))))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & ((\inst|ecuacion1|MREG\(12)) # (\inst|ecuacion1|MREG\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\,
	datab => \inst|ecuacion1|MREG\(12),
	datac => \inst|ecuacion1|MREG\(22),
	datad => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\);

-- Location: FF_X17_Y16_N11
\inst|ecuacion1|alu1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(8));

-- Location: LCCOMB_X16_Y18_N10
\inst|ecuacion1|alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~0_combout\ = (\inst|ecuacion1|MREG\(0) & (\inst|ecuacion1|MREG\(1) & (\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\))) # (!\inst|ecuacion1|MREG\(0) & (!\inst|ecuacion1|MREG\(1) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida\(8),
	combout => \inst|ecuacion1|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y18_N26
\inst|ecuacion1|alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~2_combout\ = (\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|alu1|Mux1~1_combout\) # (\inst|ecuacion1|alu1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|Mux1~1_combout\,
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|alu1|Mux1~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y18_N2
\inst|ecuacion1|alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~4_combout\ = (\inst|ecuacion1|alu1|Mux1~3_combout\) # ((\inst|ecuacion1|alu1|Mux1~2_combout\) # ((\inst|ecuacion1|alu1|Mux0~0_combout\ & \inst|ecuacion1|alu1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux0~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux1~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux1~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida\(8),
	combout => \inst|ecuacion1|alu1|Mux1~4_combout\);

-- Location: FF_X16_Y18_N3
\inst|ecuacion1|alu1|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(8));

-- Location: LCCOMB_X13_Y16_N6
\inst|ecuacion1|registro[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][8]~feeder_combout\ = \inst|ecuacion1|alu1|R\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|ecuacion1|registro[3][8]~feeder_combout\);

-- Location: FF_X13_Y16_N7
\inst|ecuacion1|registro[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][8]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][8]~q\);

-- Location: FF_X13_Y17_N11
\inst|ecuacion1|registro[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(8),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][8]~q\);

-- Location: LCCOMB_X13_Y16_N16
\inst|ecuacion1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector15~0_combout\ = (\inst|ecuacion1|registro[3][8]~q\ & ((\inst|ecuacion1|pr_state.state8~q\) # ((\inst|ecuacion1|registro[0][8]~q\ & \inst|ecuacion1|pr_state.state6~q\)))) # (!\inst|ecuacion1|registro[3][8]~q\ & 
-- (\inst|ecuacion1|registro[0][8]~q\ & ((\inst|ecuacion1|pr_state.state6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[3][8]~q\,
	datab => \inst|ecuacion1|registro[0][8]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector15~0_combout\);

-- Location: FF_X13_Y16_N17
\inst|ecuacion1|MREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector15~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(22));

-- Location: FF_X17_Y16_N9
\inst|ecuacion1|alu1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(9));

-- Location: FF_X16_Y18_N29
\inst|ecuacion1|alu1|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X16_Y18_N28
\inst|ecuacion1|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~1_combout\ = (\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(0) & (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(9) & !\inst|ecuacion1|MREG\(1))) # (!\inst|ecuacion1|MREG\(0) & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(9)) # (!\inst|ecuacion1|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y18_N14
\inst|ecuacion1|alu1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~3_combout\ = (\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|alu1|Mux0~2_combout\) # (\inst|ecuacion1|alu1|Mux0~1_combout\))) # (!\inst|ecuacion1|MREG\(3) & (\inst|ecuacion1|alu1|Mux0~2_combout\ & 
-- \inst|ecuacion1|alu1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|Mux0~2_combout\,
	datad => \inst|ecuacion1|alu1|Mux0~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y17_N2
\inst|ecuacion1|registro[0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[0][9]~feeder_combout\ = \inst|ecuacion1|alu1|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(9),
	combout => \inst|ecuacion1|registro[0][9]~feeder_combout\);

-- Location: FF_X13_Y17_N3
\inst|ecuacion1|registro[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[0][9]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][9]~q\);

-- Location: LCCOMB_X13_Y16_N0
\inst|ecuacion1|registro[3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][9]~feeder_combout\ = \inst|ecuacion1|alu1|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(9),
	combout => \inst|ecuacion1|registro[3][9]~feeder_combout\);

-- Location: FF_X13_Y16_N1
\inst|ecuacion1|registro[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][9]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][9]~q\);

-- Location: LCCOMB_X13_Y16_N2
\inst|ecuacion1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector14~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][9]~q\) # ((\inst|ecuacion1|pr_state.state8~q\ & \inst|ecuacion1|registro[3][9]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & 
-- (((\inst|ecuacion1|pr_state.state8~q\ & \inst|ecuacion1|registro[3][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|registro[0][9]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|registro[3][9]~q\,
	combout => \inst|ecuacion1|Selector14~0_combout\);

-- Location: FF_X13_Y16_N3
\inst|ecuacion1|MREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector14~0_combout\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(23));

-- Location: FF_X13_Y18_N21
\inst|ecuacion1|registro[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(9),
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][9]~q\);

-- Location: LCCOMB_X13_Y18_N20
\inst|ecuacion1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector24~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][9]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(1),
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][9]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector24~0_combout\);

-- Location: LCCOMB_X13_Y16_N28
\inst|ecuacion1|MREG[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[13]~feeder_combout\ = \inst|ecuacion1|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector24~0_combout\,
	combout => \inst|ecuacion1|MREG[13]~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N4
\inst|ecuacion1|registro[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[2][9]~feeder_combout\ = \inst|ecuacion1|alu1|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|R\(9),
	combout => \inst|ecuacion1|registro[2][9]~feeder_combout\);

-- Location: FF_X13_Y17_N5
\inst|ecuacion1|registro[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[2][9]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][9]~q\);

-- Location: FF_X13_Y16_N29
\inst|ecuacion1|MREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[13]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][9]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(13));

-- Location: LCCOMB_X17_Y16_N2
\inst|ecuacion1|alu1|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\ = (\inst|ecuacion1|MREG\(23) & \inst|ecuacion1|MREG\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(23),
	datad => \inst|ecuacion1|MREG\(13),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\);

-- Location: LCCOMB_X17_Y16_N30
\inst|ecuacion1|alu1|unidad_logica|aux[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[9]~25_combout\ = \inst|ecuacion1|MREG\(23) $ (\inst|ecuacion1|alu1|unidad_logica|aux[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(23),
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[8]~24\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[9]~25_combout\);

-- Location: FF_X17_Y16_N31
\inst|ecuacion1|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[9]~25_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X17_Y16_N4
\inst|ecuacion1|alu1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ = (\inst|ecuacion1|alu1|sel_aux\(0) & (((\inst|ecuacion1|alu1|unidad_logica|aux\(9) & \inst|ecuacion1|alu1|sel_aux\(1))))) # (!\inst|ecuacion1|alu1|sel_aux\(0) & 
-- ((\inst|ecuacion1|alu1|unidad_logica|salida~2_combout\) # ((\inst|ecuacion1|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|sel_aux\(0),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(9),
	datad => \inst|ecuacion1|alu1|sel_aux\(1),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\);

-- Location: LCCOMB_X17_Y16_N0
\inst|ecuacion1|alu1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ & (!\inst|ecuacion1|MREG\(23))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ & ((\inst|ecuacion1|MREG\(23)) # (\inst|ecuacion1|MREG\(13)))))) # (!\inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida[1]~4_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\,
	datac => \inst|ecuacion1|MREG\(23),
	datad => \inst|ecuacion1|MREG\(13),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\);

-- Location: FF_X17_Y16_N1
\inst|ecuacion1|alu1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(9));

-- Location: LCCOMB_X16_Y18_N8
\inst|ecuacion1|alu1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~4_combout\ = (\inst|ecuacion1|alu1|Mux0~3_combout\) # ((\inst|ecuacion1|alu1|unidad_logica|salida\(9) & ((\inst|ecuacion1|alu1|Mux0~0_combout\) # (\inst|ecuacion1|alu1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux0~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux0~3_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|salida\(9),
	datad => \inst|ecuacion1|alu1|Mux0~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux0~4_combout\);

-- Location: FF_X16_Y18_N9
\inst|ecuacion1|alu1|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|R\(9));

-- Location: LCCOMB_X14_Y20_N2
\inst|conv1|digitos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~3_combout\ = (\inst|ecuacion1|alu1|R\(9) & (\inst|ecuacion1|alu1|R\(1) & ((\inst|ecuacion1|alu1|R\(3)) # (\inst|ecuacion1|alu1|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(3),
	datab => \inst|ecuacion1|alu1|R\(2),
	datac => \inst|ecuacion1|alu1|R\(9),
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~3_combout\);

-- Location: LCCOMB_X14_Y20_N28
\inst|conv1|digitos~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~63_combout\ = (\inst|ecuacion1|alu1|R\(7) & (\inst|conv1|digitos~3_combout\ & (\inst|ecuacion1|alu1|R\(0) & \inst|ecuacion1|alu1|R\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|conv1|digitos~3_combout\,
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~63_combout\);

-- Location: FF_X14_Y20_N29
\inst|conv1|s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(12));

-- Location: LCCOMB_X14_Y20_N8
\inst|conv1|digitos~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~60_combout\ = (\inst|ecuacion1|alu1|R\(7) & (\inst|ecuacion1|alu1|R\(8) & ((\inst|ecuacion1|alu1|R\(0)) # (!\inst|ecuacion1|alu1|R\(9))))) # (!\inst|ecuacion1|alu1|R\(7) & ((\inst|ecuacion1|alu1|R\(9) & ((!\inst|ecuacion1|alu1|R\(8)))) 
-- # (!\inst|ecuacion1|alu1|R\(9) & (\inst|ecuacion1|alu1|R\(0) & \inst|ecuacion1|alu1|R\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~60_combout\);

-- Location: LCCOMB_X14_Y20_N10
\inst|conv1|digitos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~23_combout\ = (\inst|ecuacion1|alu1|R\(7) & (!\inst|ecuacion1|alu1|R\(9) & ((\inst|ecuacion1|alu1|R\(0)) # (!\inst|ecuacion1|alu1|R\(8))))) # (!\inst|ecuacion1|alu1|R\(7) & (\inst|ecuacion1|alu1|R\(9) & ((\inst|ecuacion1|alu1|R\(8)) # 
-- (!\inst|ecuacion1|alu1|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~23_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst|conv1|digitos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~24_combout\ = (\inst|ecuacion1|alu1|R\(0) & (!\inst|ecuacion1|alu1|R\(7) & (\inst|ecuacion1|alu1|R\(9) & !\inst|ecuacion1|alu1|R\(8)))) # (!\inst|ecuacion1|alu1|R\(0) & (\inst|ecuacion1|alu1|R\(8) & (\inst|ecuacion1|alu1|R\(7) $ 
-- (!\inst|ecuacion1|alu1|R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~24_combout\);

-- Location: LCCOMB_X14_Y20_N22
\inst|conv1|digitos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~25_combout\ = (\inst|ecuacion1|alu1|R\(0) & (\inst|ecuacion1|alu1|R\(8) $ (((!\inst|ecuacion1|alu1|R\(7) & \inst|ecuacion1|alu1|R\(9)))))) # (!\inst|ecuacion1|alu1|R\(0) & ((\inst|ecuacion1|alu1|R\(7) & ((\inst|ecuacion1|alu1|R\(9)) # 
-- (!\inst|ecuacion1|alu1|R\(8)))) # (!\inst|ecuacion1|alu1|R\(7) & ((\inst|ecuacion1|alu1|R\(8)) # (!\inst|ecuacion1|alu1|R\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~25_combout\);

-- Location: LCCOMB_X14_Y20_N0
\inst|conv1|digitos~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~28_combout\ = (\inst|conv1|digitos~23_combout\ & ((\inst|ecuacion1|alu1|R\(1)) # ((!\inst|conv1|digitos~24_combout\ & \inst|conv1|digitos~25_combout\)))) # (!\inst|conv1|digitos~23_combout\ & (\inst|conv1|digitos~24_combout\ $ 
-- (((!\inst|ecuacion1|alu1|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~24_combout\,
	datac => \inst|conv1|digitos~25_combout\,
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~28_combout\);

-- Location: LCCOMB_X14_Y20_N24
\inst|conv1|digitos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~26_combout\ = (\inst|conv1|digitos~24_combout\ & ((\inst|conv1|digitos~25_combout\ $ (\inst|ecuacion1|alu1|R\(1))))) # (!\inst|conv1|digitos~24_combout\ & (!\inst|conv1|digitos~25_combout\ & ((\inst|ecuacion1|alu1|R\(1)) # 
-- (!\inst|conv1|digitos~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~24_combout\,
	datac => \inst|conv1|digitos~25_combout\,
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~26_combout\);

-- Location: LCCOMB_X14_Y20_N30
\inst|conv1|digitos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~27_combout\ = (\inst|conv1|digitos~23_combout\ & (((\inst|conv1|digitos~25_combout\ & !\inst|ecuacion1|alu1|R\(1))))) # (!\inst|conv1|digitos~23_combout\ & (\inst|conv1|digitos~24_combout\ & ((\inst|ecuacion1|alu1|R\(1)) # 
-- (!\inst|conv1|digitos~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~24_combout\,
	datac => \inst|conv1|digitos~25_combout\,
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~27_combout\);

-- Location: LCCOMB_X14_Y20_N26
\inst|conv1|digitos~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~29_combout\ = \inst|conv1|digitos~27_combout\ $ ((((\inst|conv1|digitos~28_combout\ & !\inst|ecuacion1|alu1|R\(2))) # (!\inst|conv1|digitos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~28_combout\,
	datab => \inst|conv1|digitos~26_combout\,
	datac => \inst|conv1|digitos~27_combout\,
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|conv1|digitos~29_combout\);

-- Location: LCCOMB_X14_Y20_N4
\inst|conv1|digitos~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~62_combout\ = \inst|conv1|digitos~24_combout\ $ ((((\inst|conv1|digitos~25_combout\ & !\inst|ecuacion1|alu1|R\(1))) # (!\inst|conv1|digitos~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~24_combout\,
	datac => \inst|conv1|digitos~25_combout\,
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~62_combout\);

-- Location: LCCOMB_X14_Y20_N18
\inst|conv1|digitos~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~61_combout\ = ((!\inst|ecuacion1|alu1|R\(7) & !\inst|ecuacion1|alu1|R\(8))) # (!\inst|ecuacion1|alu1|R\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(7),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~61_combout\);

-- Location: LCCOMB_X17_Y20_N22
\inst|conv1|digitos~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~30_combout\ = (\inst|conv1|digitos~60_combout\ & ((\inst|conv1|digitos~29_combout\ & (!\inst|conv1|digitos~62_combout\ & \inst|conv1|digitos~61_combout\)) # (!\inst|conv1|digitos~29_combout\ & ((\inst|conv1|digitos~61_combout\) # 
-- (!\inst|conv1|digitos~62_combout\))))) # (!\inst|conv1|digitos~60_combout\ & (((\inst|conv1|digitos~62_combout\ & !\inst|conv1|digitos~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~60_combout\,
	datab => \inst|conv1|digitos~29_combout\,
	datac => \inst|conv1|digitos~62_combout\,
	datad => \inst|conv1|digitos~61_combout\,
	combout => \inst|conv1|digitos~30_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst|conv1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|LessThan9~0_combout\ = (!\inst|conv1|digitos~61_combout\ & ((\inst|conv1|digitos~60_combout\) # (!\inst|conv1|digitos~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~60_combout\,
	datac => \inst|conv1|digitos~62_combout\,
	datad => \inst|conv1|digitos~61_combout\,
	combout => \inst|conv1|LessThan9~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst|conv1|digitos~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~32_combout\ = (\inst|conv1|digitos~60_combout\ & ((\inst|conv1|digitos~29_combout\ & (!\inst|conv1|digitos~62_combout\ & \inst|conv1|digitos~61_combout\)) # (!\inst|conv1|digitos~29_combout\ & (\inst|conv1|digitos~62_combout\ & 
-- !\inst|conv1|digitos~61_combout\)))) # (!\inst|conv1|digitos~60_combout\ & (\inst|conv1|digitos~29_combout\ $ (((\inst|conv1|digitos~61_combout\) # (!\inst|conv1|digitos~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~60_combout\,
	datab => \inst|conv1|digitos~29_combout\,
	datac => \inst|conv1|digitos~62_combout\,
	datad => \inst|conv1|digitos~61_combout\,
	combout => \inst|conv1|digitos~32_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst|conv1|digitos~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~33_combout\ = (\inst|conv1|digitos~60_combout\ & (\inst|conv1|digitos~29_combout\ & (\inst|conv1|digitos~62_combout\ $ (!\inst|conv1|digitos~61_combout\)))) # (!\inst|conv1|digitos~60_combout\ & (!\inst|conv1|digitos~29_combout\ & 
-- (\inst|conv1|digitos~62_combout\ & !\inst|conv1|digitos~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~60_combout\,
	datab => \inst|conv1|digitos~29_combout\,
	datac => \inst|conv1|digitos~62_combout\,
	datad => \inst|conv1|digitos~61_combout\,
	combout => \inst|conv1|digitos~33_combout\);

-- Location: LCCOMB_X13_Y20_N10
\inst|conv1|digitos~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~35_combout\ = (\inst|conv1|digitos~26_combout\ & (((\inst|conv1|digitos~28_combout\ & !\inst|ecuacion1|alu1|R\(2))))) # (!\inst|conv1|digitos~26_combout\ & (\inst|conv1|digitos~27_combout\ & ((\inst|ecuacion1|alu1|R\(2)) # 
-- (!\inst|conv1|digitos~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~27_combout\,
	datab => \inst|conv1|digitos~26_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|conv1|digitos~35_combout\);

-- Location: LCCOMB_X13_Y20_N24
\inst|conv1|digitos~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~36_combout\ = (\inst|conv1|digitos~27_combout\ & (((\inst|ecuacion1|alu1|R\(2))))) # (!\inst|conv1|digitos~27_combout\ & ((\inst|conv1|digitos~26_combout\ & ((\inst|conv1|digitos~28_combout\) # (\inst|ecuacion1|alu1|R\(2)))) # 
-- (!\inst|conv1|digitos~26_combout\ & ((!\inst|ecuacion1|alu1|R\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~27_combout\,
	datab => \inst|conv1|digitos~26_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|conv1|digitos~36_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst|conv1|digitos~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~34_combout\ = (\inst|conv1|digitos~27_combout\ & ((\inst|conv1|digitos~28_combout\ $ (\inst|ecuacion1|alu1|R\(2))))) # (!\inst|conv1|digitos~27_combout\ & (!\inst|conv1|digitos~28_combout\ & ((\inst|ecuacion1|alu1|R\(2)) # 
-- (!\inst|conv1|digitos~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~27_combout\,
	datab => \inst|conv1|digitos~26_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|ecuacion1|alu1|R\(2),
	combout => \inst|conv1|digitos~34_combout\);

-- Location: LCCOMB_X13_Y20_N14
\inst|conv1|digitos~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~37_combout\ = \inst|conv1|digitos~35_combout\ $ ((((\inst|conv1|digitos~36_combout\ & !\inst|ecuacion1|alu1|R\(3))) # (!\inst|conv1|digitos~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~35_combout\,
	datab => \inst|conv1|digitos~36_combout\,
	datac => \inst|ecuacion1|alu1|R\(3),
	datad => \inst|conv1|digitos~34_combout\,
	combout => \inst|conv1|digitos~37_combout\);

-- Location: LCCOMB_X14_Y20_N20
\inst|conv1|digitos~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~66_combout\ = (\inst|ecuacion1|alu1|R\(0) & (\inst|ecuacion1|alu1|R\(7))) # (!\inst|ecuacion1|alu1|R\(0) & ((\inst|ecuacion1|alu1|R\(1) & ((!\inst|ecuacion1|alu1|R\(9)))) # (!\inst|ecuacion1|alu1|R\(1) & 
-- (!\inst|ecuacion1|alu1|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~66_combout\);

-- Location: LCCOMB_X14_Y20_N6
\inst|conv1|digitos~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~67_combout\ = (\inst|ecuacion1|alu1|R\(9) & ((\inst|ecuacion1|alu1|R\(8) & ((\inst|conv1|digitos~66_combout\))) # (!\inst|ecuacion1|alu1|R\(8) & (\inst|ecuacion1|alu1|R\(7))))) # (!\inst|ecuacion1|alu1|R\(9) & 
-- (\inst|conv1|digitos~66_combout\ & (\inst|ecuacion1|alu1|R\(7) $ (\inst|ecuacion1|alu1|R\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|conv1|digitos~66_combout\,
	datac => \inst|ecuacion1|alu1|R\(9),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~67_combout\);

-- Location: LCCOMB_X14_Y20_N12
\inst|conv1|digitos~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~64_combout\ = (\inst|ecuacion1|alu1|R\(7) & ((\inst|ecuacion1|alu1|R\(9)) # ((\inst|ecuacion1|alu1|R\(0) & \inst|ecuacion1|alu1|R\(1))))) # (!\inst|ecuacion1|alu1|R\(7) & (\inst|ecuacion1|alu1|R\(9) & (!\inst|ecuacion1|alu1|R\(0) & 
-- !\inst|ecuacion1|alu1|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|R\(7),
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(0),
	datad => \inst|ecuacion1|alu1|R\(1),
	combout => \inst|conv1|digitos~64_combout\);

-- Location: LCCOMB_X14_Y20_N14
\inst|conv1|digitos~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~65_combout\ = (\inst|conv1|digitos~64_combout\ & (\inst|ecuacion1|alu1|R\(9) $ (((\inst|ecuacion1|alu1|R\(7) & \inst|ecuacion1|alu1|R\(8)))))) # (!\inst|conv1|digitos~64_combout\ & (\inst|ecuacion1|alu1|R\(9) & 
-- (!\inst|ecuacion1|alu1|R\(7) & !\inst|ecuacion1|alu1|R\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~64_combout\,
	datab => \inst|ecuacion1|alu1|R\(9),
	datac => \inst|ecuacion1|alu1|R\(7),
	datad => \inst|ecuacion1|alu1|R\(8),
	combout => \inst|conv1|digitos~65_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst|conv1|digitos~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~31_combout\ = \inst|conv1|digitos~67_combout\ $ (((!\inst|conv1|digitos~29_combout\ & \inst|conv1|digitos~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv1|digitos~29_combout\,
	datac => \inst|conv1|digitos~67_combout\,
	datad => \inst|conv1|digitos~65_combout\,
	combout => \inst|conv1|digitos~31_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst|conv1|digitos~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~38_combout\ = \inst|conv1|digitos~33_combout\ $ ((((!\inst|conv1|digitos~32_combout\ & \inst|conv1|digitos~37_combout\)) # (!\inst|conv1|digitos~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~32_combout\,
	datab => \inst|conv1|digitos~33_combout\,
	datac => \inst|conv1|digitos~37_combout\,
	datad => \inst|conv1|digitos~31_combout\,
	combout => \inst|conv1|digitos~38_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst|conv1|digitos~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~39_combout\ = (!\inst|conv1|digitos~30_combout\ & (\inst|conv1|LessThan9~0_combout\ & \inst|conv1|digitos~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~30_combout\,
	datac => \inst|conv1|LessThan9~0_combout\,
	datad => \inst|conv1|digitos~38_combout\,
	combout => \inst|conv1|digitos~39_combout\);

-- Location: FF_X17_Y20_N5
\inst|conv1|s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(11));

-- Location: LCCOMB_X17_Y20_N2
\inst|conv1|digitos~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~40_combout\ = (\inst|conv1|digitos~30_combout\ & ((!\inst|conv1|digitos~38_combout\) # (!\inst|conv1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~30_combout\,
	datac => \inst|conv1|LessThan9~0_combout\,
	datad => \inst|conv1|digitos~38_combout\,
	combout => \inst|conv1|digitos~40_combout\);

-- Location: FF_X17_Y20_N3
\inst|conv1|s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(10));

-- Location: LCCOMB_X17_Y20_N28
\inst|conv1|digitos~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~41_combout\ = (\inst|conv1|LessThan9~0_combout\ & (\inst|conv1|digitos~30_combout\ & \inst|conv1|digitos~38_combout\)) # (!\inst|conv1|LessThan9~0_combout\ & ((!\inst|conv1|digitos~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~30_combout\,
	datac => \inst|conv1|LessThan9~0_combout\,
	datad => \inst|conv1|digitos~38_combout\,
	combout => \inst|conv1|digitos~41_combout\);

-- Location: FF_X17_Y20_N29
\inst|conv1|s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(9));

-- Location: LCCOMB_X17_Y20_N12
\inst|conv1|digitos~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~43_combout\ = (\inst|conv1|digitos~33_combout\ & (((\inst|conv1|digitos~37_combout\)))) # (!\inst|conv1|digitos~33_combout\ & ((\inst|conv1|digitos~37_combout\ & (\inst|conv1|digitos~32_combout\ & \inst|conv1|digitos~31_combout\)) # 
-- (!\inst|conv1|digitos~37_combout\ & ((!\inst|conv1|digitos~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~32_combout\,
	datab => \inst|conv1|digitos~33_combout\,
	datac => \inst|conv1|digitos~37_combout\,
	datad => \inst|conv1|digitos~31_combout\,
	combout => \inst|conv1|digitos~43_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst|conv1|digitos~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~44_combout\ = (\inst|conv1|digitos~31_combout\ & (!\inst|conv1|digitos~32_combout\ & ((\inst|conv1|digitos~37_combout\)))) # (!\inst|conv1|digitos~31_combout\ & (\inst|conv1|digitos~33_combout\ & ((\inst|conv1|digitos~32_combout\) # 
-- (!\inst|conv1|digitos~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~32_combout\,
	datab => \inst|conv1|digitos~33_combout\,
	datac => \inst|conv1|digitos~37_combout\,
	datad => \inst|conv1|digitos~31_combout\,
	combout => \inst|conv1|digitos~44_combout\);

-- Location: LCCOMB_X13_Y20_N6
\inst|conv1|digitos~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~46_combout\ = (\inst|conv1|digitos~34_combout\ & (((\inst|conv1|digitos~36_combout\ & !\inst|ecuacion1|alu1|R\(3))))) # (!\inst|conv1|digitos~34_combout\ & (\inst|conv1|digitos~35_combout\ & ((\inst|ecuacion1|alu1|R\(3)) # 
-- (!\inst|conv1|digitos~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~35_combout\,
	datab => \inst|conv1|digitos~36_combout\,
	datac => \inst|ecuacion1|alu1|R\(3),
	datad => \inst|conv1|digitos~34_combout\,
	combout => \inst|conv1|digitos~46_combout\);

-- Location: LCCOMB_X13_Y20_N16
\inst|conv1|digitos~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~45_combout\ = (\inst|conv1|digitos~35_combout\ & (\inst|conv1|digitos~36_combout\ $ ((\inst|ecuacion1|alu1|R\(3))))) # (!\inst|conv1|digitos~35_combout\ & (!\inst|conv1|digitos~36_combout\ & ((\inst|ecuacion1|alu1|R\(3)) # 
-- (!\inst|conv1|digitos~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~35_combout\,
	datab => \inst|conv1|digitos~36_combout\,
	datac => \inst|ecuacion1|alu1|R\(3),
	datad => \inst|conv1|digitos~34_combout\,
	combout => \inst|conv1|digitos~45_combout\);

-- Location: LCCOMB_X13_Y20_N0
\inst|conv1|digitos~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~47_combout\ = (\inst|conv1|digitos~35_combout\ & (((\inst|ecuacion1|alu1|R\(3))))) # (!\inst|conv1|digitos~35_combout\ & ((\inst|ecuacion1|alu1|R\(3) & ((\inst|conv1|digitos~34_combout\))) # (!\inst|ecuacion1|alu1|R\(3) & 
-- ((\inst|conv1|digitos~36_combout\) # (!\inst|conv1|digitos~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~35_combout\,
	datab => \inst|conv1|digitos~36_combout\,
	datac => \inst|ecuacion1|alu1|R\(3),
	datad => \inst|conv1|digitos~34_combout\,
	combout => \inst|conv1|digitos~47_combout\);

-- Location: LCCOMB_X13_Y20_N18
\inst|conv1|digitos~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~48_combout\ = \inst|conv1|digitos~46_combout\ $ ((((!\inst|ecuacion1|alu1|R\(4) & \inst|conv1|digitos~47_combout\)) # (!\inst|conv1|digitos~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~46_combout\,
	datab => \inst|conv1|digitos~45_combout\,
	datac => \inst|ecuacion1|alu1|R\(4),
	datad => \inst|conv1|digitos~47_combout\,
	combout => \inst|conv1|digitos~48_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst|conv1|digitos~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~42_combout\ = (\inst|conv1|digitos~32_combout\ & (((!\inst|conv1|digitos~33_combout\ & !\inst|conv1|digitos~31_combout\)) # (!\inst|conv1|digitos~37_combout\))) # (!\inst|conv1|digitos~32_combout\ & (\inst|conv1|digitos~33_combout\ & 
-- (\inst|conv1|digitos~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~32_combout\,
	datab => \inst|conv1|digitos~33_combout\,
	datac => \inst|conv1|digitos~37_combout\,
	datad => \inst|conv1|digitos~31_combout\,
	combout => \inst|conv1|digitos~42_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst|conv1|digitos~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~49_combout\ = \inst|conv1|digitos~44_combout\ $ (((\inst|conv1|digitos~42_combout\ & ((\inst|conv1|digitos~43_combout\) # (!\inst|conv1|digitos~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~43_combout\,
	datab => \inst|conv1|digitos~44_combout\,
	datac => \inst|conv1|digitos~48_combout\,
	datad => \inst|conv1|digitos~42_combout\,
	combout => \inst|conv1|digitos~49_combout\);

-- Location: FF_X17_Y20_N27
\inst|conv1|s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(8));

-- Location: LCCOMB_X17_Y20_N24
\inst|conv1|digitos~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~50_combout\ = (\inst|conv1|digitos~42_combout\ & (!\inst|conv1|digitos~43_combout\ & ((\inst|conv1|digitos~48_combout\)))) # (!\inst|conv1|digitos~42_combout\ & (\inst|conv1|digitos~44_combout\ & ((\inst|conv1|digitos~43_combout\) # 
-- (!\inst|conv1|digitos~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~43_combout\,
	datab => \inst|conv1|digitos~44_combout\,
	datac => \inst|conv1|digitos~48_combout\,
	datad => \inst|conv1|digitos~42_combout\,
	combout => \inst|conv1|digitos~50_combout\);

-- Location: FF_X17_Y20_N25
\inst|conv1|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(7));

-- Location: LCCOMB_X17_Y20_N30
\inst|conv1|digitos~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~51_combout\ = (\inst|conv1|digitos~43_combout\ & (((!\inst|conv1|digitos~44_combout\ & !\inst|conv1|digitos~42_combout\)) # (!\inst|conv1|digitos~48_combout\))) # (!\inst|conv1|digitos~43_combout\ & (\inst|conv1|digitos~44_combout\ & 
-- (\inst|conv1|digitos~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~43_combout\,
	datab => \inst|conv1|digitos~44_combout\,
	datac => \inst|conv1|digitos~48_combout\,
	datad => \inst|conv1|digitos~42_combout\,
	combout => \inst|conv1|digitos~51_combout\);

-- Location: FF_X17_Y20_N31
\inst|conv1|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(6));

-- Location: LCCOMB_X17_Y20_N0
\inst|conv1|digitos~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~52_combout\ = (\inst|conv1|digitos~44_combout\ & (((\inst|conv1|digitos~48_combout\)))) # (!\inst|conv1|digitos~44_combout\ & ((\inst|conv1|digitos~48_combout\ & (\inst|conv1|digitos~43_combout\ & \inst|conv1|digitos~42_combout\)) # 
-- (!\inst|conv1|digitos~48_combout\ & ((!\inst|conv1|digitos~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~43_combout\,
	datab => \inst|conv1|digitos~44_combout\,
	datac => \inst|conv1|digitos~48_combout\,
	datad => \inst|conv1|digitos~42_combout\,
	combout => \inst|conv1|digitos~52_combout\);

-- Location: FF_X17_Y20_N1
\inst|conv1|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(5));

-- Location: LCCOMB_X13_Y20_N12
\inst|conv1|digitos~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~53_combout\ = (\inst|conv1|digitos~46_combout\ & ((\inst|ecuacion1|alu1|R\(4) $ (\inst|conv1|digitos~47_combout\)))) # (!\inst|conv1|digitos~46_combout\ & (!\inst|conv1|digitos~47_combout\ & ((\inst|ecuacion1|alu1|R\(4)) # 
-- (!\inst|conv1|digitos~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~46_combout\,
	datab => \inst|conv1|digitos~45_combout\,
	datac => \inst|ecuacion1|alu1|R\(4),
	datad => \inst|conv1|digitos~47_combout\,
	combout => \inst|conv1|digitos~53_combout\);

-- Location: LCCOMB_X13_Y20_N4
\inst|conv1|digitos~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~55_combout\ = (\inst|conv1|digitos~46_combout\ & (((\inst|ecuacion1|alu1|R\(4))))) # (!\inst|conv1|digitos~46_combout\ & ((\inst|conv1|digitos~45_combout\ & ((\inst|ecuacion1|alu1|R\(4)) # (\inst|conv1|digitos~47_combout\))) # 
-- (!\inst|conv1|digitos~45_combout\ & (!\inst|ecuacion1|alu1|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~46_combout\,
	datab => \inst|conv1|digitos~45_combout\,
	datac => \inst|ecuacion1|alu1|R\(4),
	datad => \inst|conv1|digitos~47_combout\,
	combout => \inst|conv1|digitos~55_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst|conv1|digitos~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~54_combout\ = (\inst|conv1|digitos~45_combout\ & (((!\inst|ecuacion1|alu1|R\(4) & \inst|conv1|digitos~47_combout\)))) # (!\inst|conv1|digitos~45_combout\ & (\inst|conv1|digitos~46_combout\ & ((\inst|ecuacion1|alu1|R\(4)) # 
-- (!\inst|conv1|digitos~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~46_combout\,
	datab => \inst|conv1|digitos~45_combout\,
	datac => \inst|ecuacion1|alu1|R\(4),
	datad => \inst|conv1|digitos~47_combout\,
	combout => \inst|conv1|digitos~54_combout\);

-- Location: LCCOMB_X13_Y20_N8
\inst|conv1|digitos~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~56_combout\ = \inst|conv1|digitos~54_combout\ $ (((\inst|conv1|digitos~53_combout\ & ((\inst|ecuacion1|alu1|R\(5)) # (!\inst|conv1|digitos~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~53_combout\,
	datab => \inst|conv1|digitos~55_combout\,
	datac => \inst|conv1|digitos~54_combout\,
	datad => \inst|ecuacion1|alu1|R\(5),
	combout => \inst|conv1|digitos~56_combout\);

-- Location: FF_X13_Y20_N9
\inst|conv1|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(4));

-- Location: LCCOMB_X13_Y20_N22
\inst|conv1|digitos~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~57_combout\ = (\inst|conv1|digitos~53_combout\ & (\inst|conv1|digitos~55_combout\ & ((!\inst|ecuacion1|alu1|R\(5))))) # (!\inst|conv1|digitos~53_combout\ & (\inst|conv1|digitos~54_combout\ & ((\inst|ecuacion1|alu1|R\(5)) # 
-- (!\inst|conv1|digitos~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~53_combout\,
	datab => \inst|conv1|digitos~55_combout\,
	datac => \inst|conv1|digitos~54_combout\,
	datad => \inst|ecuacion1|alu1|R\(5),
	combout => \inst|conv1|digitos~57_combout\);

-- Location: FF_X13_Y20_N23
\inst|conv1|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(3));

-- Location: LCCOMB_X13_Y20_N20
\inst|conv1|digitos~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~58_combout\ = (\inst|conv1|digitos~55_combout\ & (((\inst|conv1|digitos~54_combout\ & !\inst|ecuacion1|alu1|R\(5))))) # (!\inst|conv1|digitos~55_combout\ & ((\inst|ecuacion1|alu1|R\(5)) # ((!\inst|conv1|digitos~53_combout\ & 
-- !\inst|conv1|digitos~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~53_combout\,
	datab => \inst|conv1|digitos~55_combout\,
	datac => \inst|conv1|digitos~54_combout\,
	datad => \inst|ecuacion1|alu1|R\(5),
	combout => \inst|conv1|digitos~58_combout\);

-- Location: FF_X13_Y20_N21
\inst|conv1|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(2));

-- Location: LCCOMB_X13_Y20_N2
\inst|conv1|digitos~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~59_combout\ = (\inst|conv1|digitos~53_combout\ & (!\inst|ecuacion1|alu1|R\(5) & ((\inst|conv1|digitos~54_combout\) # (!\inst|conv1|digitos~55_combout\)))) # (!\inst|conv1|digitos~53_combout\ & ((\inst|conv1|digitos~54_combout\ $ 
-- (\inst|ecuacion1|alu1|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~53_combout\,
	datab => \inst|conv1|digitos~55_combout\,
	datac => \inst|conv1|digitos~54_combout\,
	datad => \inst|ecuacion1|alu1|R\(5),
	combout => \inst|conv1|digitos~59_combout\);

-- Location: FF_X13_Y20_N3
\inst|conv1|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(1));

-- Location: FF_X13_Y18_N25
\inst|conv1|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|R\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(0));

-- Location: IOIBUF_X30_Y24_N22
\ecuacion[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(1),
	o => \ecuacion[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\ecuacion[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(0),
	o => \ecuacion[0]~input_o\);

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

ww_resultado(9) <= \resultado[9]~output_o\;

ww_resultado(8) <= \resultado[8]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(0) <= \resultado[0]~output_o\;

ww_s(15) <= \s[15]~output_o\;

ww_s(14) <= \s[14]~output_o\;

ww_s(13) <= \s[13]~output_o\;

ww_s(12) <= \s[12]~output_o\;

ww_s(11) <= \s[11]~output_o\;

ww_s(10) <= \s[10]~output_o\;

ww_s(9) <= \s[9]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;


