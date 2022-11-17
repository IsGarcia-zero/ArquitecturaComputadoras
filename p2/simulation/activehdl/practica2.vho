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

-- DATE "11/16/2022 23:06:08"

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
	zero_f : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	sign_f : OUT std_logic;
	overflow_f : OUT std_logic;
	carry_f : OUT std_logic;
	R : OUT std_logic_vector(9 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- zero_f	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_f	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow_f	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_f	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_zero_f : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sign_f : std_logic;
SIGNAL ww_overflow_f : std_logic;
SIGNAL ww_carry_f : std_logic;
SIGNAL ww_R : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|reloj|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \zero_f~output_o\ : std_logic;
SIGNAL \sign_f~output_o\ : std_logic;
SIGNAL \overflow_f~output_o\ : std_logic;
SIGNAL \carry_f~output_o\ : std_logic;
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
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~4_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s2|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s0|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|suma|s7|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~3_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux11~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux13~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux12~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux12~1_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|reloj|Add0~0_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~3\ : std_logic;
SIGNAL \inst|reloj|Add0~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|reloj|Add0~5\ : std_logic;
SIGNAL \inst|reloj|Add0~6_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~7\ : std_logic;
SIGNAL \inst|reloj|Add0~8_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~9\ : std_logic;
SIGNAL \inst|reloj|Add0~10_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~11\ : std_logic;
SIGNAL \inst|reloj|Add0~12_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~13\ : std_logic;
SIGNAL \inst|reloj|Add0~14_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~4_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~15\ : std_logic;
SIGNAL \inst|reloj|Add0~16_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~17\ : std_logic;
SIGNAL \inst|reloj|Add0~18_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~19\ : std_logic;
SIGNAL \inst|reloj|Add0~20_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~21\ : std_logic;
SIGNAL \inst|reloj|Add0~22_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~3_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~23\ : std_logic;
SIGNAL \inst|reloj|Add0~24_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~2_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~25\ : std_logic;
SIGNAL \inst|reloj|Add0~26_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~1_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~27\ : std_logic;
SIGNAL \inst|reloj|Add0~28_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~29\ : std_logic;
SIGNAL \inst|reloj|Add0~30_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~31\ : std_logic;
SIGNAL \inst|reloj|Add0~32_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~0_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~33\ : std_logic;
SIGNAL \inst|reloj|Add0~34_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~2_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~35\ : std_logic;
SIGNAL \inst|reloj|Add0~36_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~37\ : std_logic;
SIGNAL \inst|reloj|Add0~38_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~39\ : std_logic;
SIGNAL \inst|reloj|Add0~40_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~41\ : std_logic;
SIGNAL \inst|reloj|Add0~42_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~43\ : std_logic;
SIGNAL \inst|reloj|Add0~44_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~45\ : std_logic;
SIGNAL \inst|reloj|Add0~46_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~47\ : std_logic;
SIGNAL \inst|reloj|Add0~48_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~49\ : std_logic;
SIGNAL \inst|reloj|Add0~50_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~0_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~3_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~1_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~4_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta~5_combout\ : std_logic;
SIGNAL \inst|reloj|Add0~1\ : std_logic;
SIGNAL \inst|reloj|Add0~2_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~5_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~6_combout\ : std_logic;
SIGNAL \inst|reloj|Equal0~7_combout\ : std_logic;
SIGNAL \inst|reloj|salida~0_combout\ : std_logic;
SIGNAL \inst|reloj|salida~feeder_combout\ : std_logic;
SIGNAL \inst|reloj|salida~q\ : std_logic;
SIGNAL \inst|reloj|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux13~1_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \inst|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst|unidad_logica|aux[8]~24\ : std_logic;
SIGNAL \inst|unidad_logica|aux[9]~25_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~27_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s7|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s6|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s5|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|resta|s1|Suma~combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux1~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[8]~23_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[8]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|Mux5~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|Mux5~5_combout\ : std_logic;
SIGNAL \inst|Mux5~6_combout\ : std_logic;
SIGNAL \inst|Mux5~8_combout\ : std_logic;
SIGNAL \inst|Mux5~9_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|Mux8~10_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|barrel_shifters|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|Mux8~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|Mux8~5_combout\ : std_logic;
SIGNAL \inst|Mux8~6_combout\ : std_logic;
SIGNAL \inst|Mux8~8_combout\ : std_logic;
SIGNAL \inst|Mux8~9_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux9~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux9~7_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|Mux9~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|Mux9~3_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|unidad_logica|aux[0]~28_combout\ : std_logic;
SIGNAL \inst|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst|Mux9~4_combout\ : std_logic;
SIGNAL \inst|reloj|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

zero_f <= ww_zero_f;
ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
sign_f <= ww_sign_f;
overflow_f <= ww_overflow_f;
carry_f <= ww_carry_f;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|reloj|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|reloj|salida~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\zero_f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux11~6_combout\,
	devoe => ww_devoe,
	o => \zero_f~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sign_f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \sign_f~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\overflow_f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \overflow_f~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\carry_f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|unidad_aritmetica|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \carry_f~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~9_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

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

-- Location: IOIBUF_X0_Y6_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X16_Y3_N0
\inst|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X13_Y4_N16
\inst|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(2) = (\A[2]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X13_Y4_N30
\inst|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(2)) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ 
-- & (\inst|unidad_aritmetica|mult|inter\(2) & (\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|inter\(2),
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X13_Y4_N18
\inst|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(3) = (\A[3]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X13_Y4_N6
\inst|unidad_aritmetica|mult|multi1|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\ = \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(3) $ (((\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|inter\(3),
	combout => \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~0_combout\ = (\A[1]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_logica|salida~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X13_Y4_N8
\inst|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(10) = (\A[0]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X18_Y4_N16
\inst|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|inter\(10) & (\inst|unidad_logica|salida~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(2) $ (\inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~0_combout\,
	datab => \inst|unidad_aritmetica|mult|inter\(10),
	datac => \inst|unidad_aritmetica|mult|inter\(2),
	datad => \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N24
\inst|unidad_aritmetica|mult|multi2|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\ = \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\ $ (\inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (((\A[1]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N14
\inst|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\A[0]~input_o\ & (\B[3]~input_o\ & \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N10
\inst|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\ & ((\inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\) # ((\A[1]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\ & (\inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\A[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X13_Y4_N12
\inst|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|inter\(4) = (\A[4]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X13_Y4_N20
\inst|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|inter\(3)) # ((\A[2]~input_o\ & \B[1]~input_o\)))) # (!\inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ 
-- & (\A[2]~input_o\ & (\B[1]~input_o\ & \inst|unidad_aritmetica|mult|inter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|inter\(3),
	combout => \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X13_Y4_N24
\inst|unidad_aritmetica|mult|multi1|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\ = \inst|unidad_aritmetica|mult|inter\(4) $ (\inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|inter\(4),
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N18
\inst|unidad_aritmetica|mult|multi2|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\ = \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\ $ (((\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N12
\inst|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\) # ((\A[1]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\A[1]~input_o\ & (\B[3]~input_o\ & \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X13_Y4_N22
\inst|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|inter\(4) & ((\inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\A[3]~input_o\ & \B[1]~input_o\)))) # (!\inst|unidad_aritmetica|mult|inter\(4) & 
-- (\A[3]~input_o\ & (\B[1]~input_o\ & \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|inter\(4),
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst|unidad_aritmetica|mult|multi1|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\ = \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N28
\inst|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\inst|unidad_aritmetica|mult|multi2|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\ = \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\ $ (\inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N26
\inst|unidad_aritmetica|mult|multi3|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\ = \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\ $ (((\A[2]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N4
\inst|unidad_aritmetica|mult|multi3|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\ = \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\ $ (((\A[1]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N6
\inst|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\A[0]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N0
\inst|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\ & ((\inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\) # ((\A[1]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\ & (\A[1]~input_o\ & (\B[4]~input_o\ & \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N12
\inst|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & ((\inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\) # ((\A[2]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & (\A[2]~input_o\ & (\B[3]~input_o\ & \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N8
\inst|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\ & ((\inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\) # ((\A[3]~input_o\ & \B[2]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\ & (\A[3]~input_o\ & (\B[2]~input_o\ & \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	datab => \A[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N28
\inst|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\ & \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\inst|unidad_aritmetica|mult|multi2|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\ = \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\);

-- Location: LCCOMB_X19_Y4_N16
\inst|unidad_aritmetica|mult|multi3|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\ = \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\ $ (((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\);

-- Location: LCCOMB_X19_Y4_N6
\inst|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\) # ((\A[2]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\ & (\A[2]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	datac => \A[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\inst|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N2
\inst|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\) # ((\B[2]~input_o\ & \A[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & (\B[2]~input_o\ & (\A[4]~input_o\ & \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N14
\inst|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X19_Y4_N22
\inst|unidad_aritmetica|mult|multi4|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\ = \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (((\A[3]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\);

-- Location: LCCOMB_X19_Y4_N4
\inst|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\) # ((\A[3]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\A[3]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N20
\inst|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\) # ((\A[4]~input_o\ & \B[3]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\A[4]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N14
\inst|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X18_Y4_N8
\inst|unidad_aritmetica|mult|multi4|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\ = \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\ $ (\inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (((\A[1]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\);

-- Location: LCCOMB_X19_Y4_N0
\inst|unidad_aritmetica|mult|multi4|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\ = \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\ $ (((\A[2]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	datac => \A[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N2
\inst|unidad_aritmetica|mult|multi4|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\ = \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\ $ (((\A[0]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|unidad_aritmetica|mult|multi3|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\);

-- Location: LCCOMB_X18_Y4_N20
\inst|unidad_aritmetica|mult|multi3|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\ = \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst|unidad_aritmetica|mult|multi2|s3|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N16
\inst|unidad_aritmetica|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~4_combout\ = (!\inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\ & (!\inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\ & (!\inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\ & 
-- !\inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	combout => \inst|unidad_aritmetica|Mux11~4_combout\);

-- Location: IOIBUF_X0_Y23_N1
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X14_Y5_N20
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (!\sel[2]~input_o\ & ((\sel[1]~input_o\ & (!\sel[3]~input_o\ & !\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y3_N12
\inst|unidad_aritmetica|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~5_combout\ = (!\inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\ & (!\inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ & (\inst|unidad_aritmetica|Mux11~4_combout\ & \inst|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|Mux11~4_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|Mux11~5_combout\);

-- Location: IOIBUF_X5_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X16_Y3_N20
\inst|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N10
\inst|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\B[2]~input_o\ & ((\inst|unidad_aritmetica|suma|s1|Cout~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\inst|unidad_aritmetica|suma|s1|Cout~0_combout\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N12
\inst|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|s2|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\inst|unidad_aritmetica|suma|s2|Cout~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X16_Y5_N18
\inst|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|s3|Cout~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\inst|unidad_aritmetica|suma|s3|Cout~0_combout\ & (\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s3|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X17_Y2_N30
\inst|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|unidad_aritmetica|suma|s4|Cout~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\inst|unidad_aritmetica|suma|s4|Cout~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X17_Y2_N8
\inst|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\A[6]~input_o\ & ((\inst|unidad_aritmetica|suma|s5|Cout~0_combout\) # (\B[6]~input_o\))) # (!\A[6]~input_o\ & (\inst|unidad_aritmetica|suma|s5|Cout~0_combout\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \inst|unidad_aritmetica|suma|s5|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X17_Y2_N18
\inst|unidad_aritmetica|suma|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s7|Cout~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\inst|unidad_aritmetica|suma|s6|Cout~0_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \inst|unidad_aritmetica|suma|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \inst|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|s7|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N28
\inst|unidad_aritmetica|suma|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s2|Suma~combout\ = \B[2]~input_o\ $ (\inst|unidad_aritmetica|suma|s1|Cout~0_combout\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s2|Suma~combout\);

-- Location: LCCOMB_X16_Y3_N28
\inst|unidad_aritmetica|suma|s0|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s0|Suma~combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s0|Suma~combout\);

-- Location: LCCOMB_X16_Y3_N30
\inst|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s1|Suma~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: LCCOMB_X16_Y3_N2
\inst|unidad_aritmetica|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~1_combout\ = (!\inst|unidad_aritmetica|suma|s2|Suma~combout\ & (!\inst|unidad_aritmetica|suma|s0|Suma~combout\ & (!\inst|unidad_aritmetica|suma|s1|Suma~combout\ & !\inst|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s2|Suma~combout\,
	datab => \inst|unidad_aritmetica|suma|s0|Suma~combout\,
	datac => \inst|unidad_aritmetica|suma|s1|Suma~combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y2_N12
\inst|unidad_aritmetica|suma|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s5|Suma~combout\ = \inst|unidad_aritmetica|suma|s4|Cout~0_combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s5|Suma~combout\);

-- Location: LCCOMB_X17_Y3_N26
\inst|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s3|Suma~combout\ = \inst|unidad_aritmetica|suma|s2|Cout~0_combout\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X16_Y5_N4
\inst|unidad_aritmetica|suma|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s4|Suma~combout\ = \inst|unidad_aritmetica|suma|s3|Cout~0_combout\ $ (\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s3|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s4|Suma~combout\);

-- Location: LCCOMB_X17_Y3_N4
\inst|unidad_aritmetica|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~2_combout\ = (\inst|unidad_aritmetica|Mux11~1_combout\ & (!\inst|unidad_aritmetica|suma|s5|Suma~combout\ & (!\inst|unidad_aritmetica|suma|s3|Suma~combout\ & !\inst|unidad_aritmetica|suma|s4|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux11~1_combout\,
	datab => \inst|unidad_aritmetica|suma|s5|Suma~combout\,
	datac => \inst|unidad_aritmetica|suma|s3|Suma~combout\,
	datad => \inst|unidad_aritmetica|suma|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|Mux11~2_combout\);

-- Location: LCCOMB_X17_Y2_N20
\inst|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s6|Suma~combout\ = \A[6]~input_o\ $ (\inst|unidad_aritmetica|suma|s5|Cout~0_combout\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \inst|unidad_aritmetica|suma|s5|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X17_Y2_N22
\inst|unidad_aritmetica|suma|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|suma|s7|Suma~combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\inst|unidad_aritmetica|suma|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \inst|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|suma|s7|Suma~combout\);

-- Location: LCCOMB_X18_Y3_N24
\inst|unidad_aritmetica|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~3_combout\ = (!\inst|unidad_aritmetica|suma|s7|Cout~0_combout\ & (\inst|unidad_aritmetica|Mux11~2_combout\ & (!\inst|unidad_aritmetica|suma|s6|Suma~combout\ & !\inst|unidad_aritmetica|suma|s7|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|Mux11~2_combout\,
	datac => \inst|unidad_aritmetica|suma|s6|Suma~combout\,
	datad => \inst|unidad_aritmetica|suma|s7|Suma~combout\,
	combout => \inst|unidad_aritmetica|Mux11~3_combout\);

-- Location: LCCOMB_X16_Y5_N30
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (!\sel[0]~input_o\ & (\sel[3]~input_o\ $ (((\sel[2]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y4_N30
\inst|unidad_aritmetica|mult|multi2|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\ = \inst|unidad_logica|salida~0_combout\ $ (\inst|unidad_aritmetica|mult|inter\(10) $ (\inst|unidad_aritmetica|mult|inter\(2) $ (\inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~0_combout\,
	datab => \inst|unidad_aritmetica|mult|inter\(10),
	datac => \inst|unidad_aritmetica|mult|inter\(2),
	datad => \inst|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\);

-- Location: LCCOMB_X16_Y3_N22
\inst|unidad_aritmetica|mult|multi1|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\ = (\A[1]~input_o\ & (\B[0]~input_o\ $ (((\B[1]~input_o\ & \A[0]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\);

-- Location: LCCOMB_X17_Y4_N30
\inst|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~1_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_logica|salida~1_combout\);

-- Location: LCCOMB_X18_Y3_N20
\inst|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\A[4]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N18
\inst|unidad_aritmetica|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~0_combout\ = (!\inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\ & (!\inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\ & (!\inst|unidad_logica|salida~1_combout\ & 
-- !\inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datac => \inst|unidad_logica|salida~1_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y3_N26
\inst|unidad_aritmetica|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux11~6_combout\ = (!\inst|Mux11~0_combout\ & ((\inst|unidad_aritmetica|Mux11~3_combout\) # ((\inst|unidad_aritmetica|Mux11~5_combout\ & \inst|unidad_aritmetica|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux11~5_combout\,
	datab => \inst|unidad_aritmetica|Mux11~3_combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst|unidad_aritmetica|Mux11~0_combout\,
	combout => \inst|unidad_aritmetica|Mux11~6_combout\);

-- Location: LCCOMB_X16_Y3_N12
\inst|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\A[1]~input_o\ & (((\A[0]~input_o\) # (!\B[0]~input_o\)) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N22
\inst|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|s1|Cout~0_combout\ & ((\A[2]~input_o\) # (!\B[2]~input_o\))) # (!\inst|unidad_aritmetica|resta|s1|Cout~0_combout\ & (!\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N20
\inst|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|s2|Cout~0_combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|resta|s2|Cout~0_combout\ & (!\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X17_Y3_N30
\inst|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|unidad_aritmetica|resta|s3|Cout~0_combout\ & ((\A[4]~input_o\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|resta|s3|Cout~0_combout\ & (\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X17_Y2_N28
\inst|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\A[5]~input_o\ & ((\inst|unidad_aritmetica|resta|s4|Cout~0_combout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (\inst|unidad_aritmetica|resta|s4|Cout~0_combout\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \inst|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X17_Y2_N10
\inst|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\B[6]~input_o\ & (\A[6]~input_o\ & \inst|unidad_aritmetica|resta|s5|Cout~0_combout\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (\inst|unidad_aritmetica|resta|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X17_Y2_N4
\inst|unidad_aritmetica|resta|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s7|Cout~0_combout\ = (\A[7]~input_o\ & ((\inst|unidad_aritmetica|resta|s6|Cout~0_combout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & \inst|unidad_aritmetica|resta|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\);

-- Location: LCCOMB_X18_Y3_N28
\inst|unidad_aritmetica|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux13~0_combout\ = (\inst|Mux10~0_combout\ & (((!\inst|Mux11~0_combout\ & \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))) # (!\inst|Mux10~0_combout\ & (!\inst|unidad_aritmetica|resta|s7|Cout~0_combout\ & 
-- (\inst|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y3_N22
\inst|unidad_aritmetica|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux12~0_combout\ = (\inst|Mux10~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ $ (\inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)))) # (!\inst|Mux10~0_combout\ & 
-- (\inst|unidad_aritmetica|suma|s7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y3_N16
\inst|unidad_aritmetica|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux12~1_combout\ = (\inst|unidad_aritmetica|Mux12~0_combout\ & !\inst|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux12~0_combout\,
	datac => \inst|Mux11~0_combout\,
	combout => \inst|unidad_aritmetica|Mux12~1_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (!\sel[2]~input_o\ & (!\sel[3]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux0~3_combout\);

-- Location: IOIBUF_X34_Y12_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X32_Y15_N6
\inst|reloj|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~0_combout\ = \inst|reloj|cuenta\(0) $ (VCC)
-- \inst|reloj|Add0~1\ = CARRY(\inst|reloj|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(0),
	datad => VCC,
	combout => \inst|reloj|Add0~0_combout\,
	cout => \inst|reloj|Add0~1\);

-- Location: LCCOMB_X32_Y15_N8
\inst|reloj|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~2_combout\ = (\inst|reloj|cuenta\(1) & (!\inst|reloj|Add0~1\)) # (!\inst|reloj|cuenta\(1) & ((\inst|reloj|Add0~1\) # (GND)))
-- \inst|reloj|Add0~3\ = CARRY((!\inst|reloj|Add0~1\) # (!\inst|reloj|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(1),
	datad => VCC,
	cin => \inst|reloj|Add0~1\,
	combout => \inst|reloj|Add0~2_combout\,
	cout => \inst|reloj|Add0~3\);

-- Location: LCCOMB_X32_Y15_N10
\inst|reloj|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~4_combout\ = (\inst|reloj|cuenta\(2) & (\inst|reloj|Add0~3\ $ (GND))) # (!\inst|reloj|cuenta\(2) & (!\inst|reloj|Add0~3\ & VCC))
-- \inst|reloj|Add0~5\ = CARRY((\inst|reloj|cuenta\(2) & !\inst|reloj|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(2),
	datad => VCC,
	cin => \inst|reloj|Add0~3\,
	combout => \inst|reloj|Add0~4_combout\,
	cout => \inst|reloj|Add0~5\);

-- Location: IOIBUF_X0_Y11_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y15_N11
\inst|reloj|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(2));

-- Location: LCCOMB_X32_Y15_N12
\inst|reloj|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~6_combout\ = (\inst|reloj|cuenta\(3) & (!\inst|reloj|Add0~5\)) # (!\inst|reloj|cuenta\(3) & ((\inst|reloj|Add0~5\) # (GND)))
-- \inst|reloj|Add0~7\ = CARRY((!\inst|reloj|Add0~5\) # (!\inst|reloj|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(3),
	datad => VCC,
	cin => \inst|reloj|Add0~5\,
	combout => \inst|reloj|Add0~6_combout\,
	cout => \inst|reloj|Add0~7\);

-- Location: FF_X32_Y15_N13
\inst|reloj|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(3));

-- Location: LCCOMB_X32_Y15_N14
\inst|reloj|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~8_combout\ = (\inst|reloj|cuenta\(4) & (\inst|reloj|Add0~7\ $ (GND))) # (!\inst|reloj|cuenta\(4) & (!\inst|reloj|Add0~7\ & VCC))
-- \inst|reloj|Add0~9\ = CARRY((\inst|reloj|cuenta\(4) & !\inst|reloj|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(4),
	datad => VCC,
	cin => \inst|reloj|Add0~7\,
	combout => \inst|reloj|Add0~8_combout\,
	cout => \inst|reloj|Add0~9\);

-- Location: FF_X32_Y15_N15
\inst|reloj|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(4));

-- Location: LCCOMB_X32_Y15_N16
\inst|reloj|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~10_combout\ = (\inst|reloj|cuenta\(5) & (!\inst|reloj|Add0~9\)) # (!\inst|reloj|cuenta\(5) & ((\inst|reloj|Add0~9\) # (GND)))
-- \inst|reloj|Add0~11\ = CARRY((!\inst|reloj|Add0~9\) # (!\inst|reloj|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(5),
	datad => VCC,
	cin => \inst|reloj|Add0~9\,
	combout => \inst|reloj|Add0~10_combout\,
	cout => \inst|reloj|Add0~11\);

-- Location: FF_X32_Y15_N17
\inst|reloj|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(5));

-- Location: LCCOMB_X32_Y15_N18
\inst|reloj|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~12_combout\ = (\inst|reloj|cuenta\(6) & (\inst|reloj|Add0~11\ $ (GND))) # (!\inst|reloj|cuenta\(6) & (!\inst|reloj|Add0~11\ & VCC))
-- \inst|reloj|Add0~13\ = CARRY((\inst|reloj|cuenta\(6) & !\inst|reloj|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(6),
	datad => VCC,
	cin => \inst|reloj|Add0~11\,
	combout => \inst|reloj|Add0~12_combout\,
	cout => \inst|reloj|Add0~13\);

-- Location: FF_X32_Y15_N19
\inst|reloj|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(6));

-- Location: LCCOMB_X32_Y15_N20
\inst|reloj|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~14_combout\ = (\inst|reloj|cuenta\(7) & (!\inst|reloj|Add0~13\)) # (!\inst|reloj|cuenta\(7) & ((\inst|reloj|Add0~13\) # (GND)))
-- \inst|reloj|Add0~15\ = CARRY((!\inst|reloj|Add0~13\) # (!\inst|reloj|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(7),
	datad => VCC,
	cin => \inst|reloj|Add0~13\,
	combout => \inst|reloj|Add0~14_combout\,
	cout => \inst|reloj|Add0~15\);

-- Location: LCCOMB_X33_Y15_N22
\inst|reloj|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~4_combout\ = (\inst|reloj|Add0~14_combout\ & ((!\inst|reloj|Equal0~4_combout\) # (!\inst|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|Equal0~7_combout\,
	datac => \inst|reloj|Add0~14_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|cuenta~4_combout\);

-- Location: FF_X33_Y15_N23
\inst|reloj|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(7));

-- Location: LCCOMB_X32_Y15_N22
\inst|reloj|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~16_combout\ = (\inst|reloj|cuenta\(8) & (\inst|reloj|Add0~15\ $ (GND))) # (!\inst|reloj|cuenta\(8) & (!\inst|reloj|Add0~15\ & VCC))
-- \inst|reloj|Add0~17\ = CARRY((\inst|reloj|cuenta\(8) & !\inst|reloj|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(8),
	datad => VCC,
	cin => \inst|reloj|Add0~15\,
	combout => \inst|reloj|Add0~16_combout\,
	cout => \inst|reloj|Add0~17\);

-- Location: FF_X32_Y15_N23
\inst|reloj|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(8));

-- Location: LCCOMB_X32_Y15_N24
\inst|reloj|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~18_combout\ = (\inst|reloj|cuenta\(9) & (!\inst|reloj|Add0~17\)) # (!\inst|reloj|cuenta\(9) & ((\inst|reloj|Add0~17\) # (GND)))
-- \inst|reloj|Add0~19\ = CARRY((!\inst|reloj|Add0~17\) # (!\inst|reloj|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(9),
	datad => VCC,
	cin => \inst|reloj|Add0~17\,
	combout => \inst|reloj|Add0~18_combout\,
	cout => \inst|reloj|Add0~19\);

-- Location: FF_X32_Y15_N25
\inst|reloj|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(9));

-- Location: LCCOMB_X32_Y15_N26
\inst|reloj|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~20_combout\ = (\inst|reloj|cuenta\(10) & (\inst|reloj|Add0~19\ $ (GND))) # (!\inst|reloj|cuenta\(10) & (!\inst|reloj|Add0~19\ & VCC))
-- \inst|reloj|Add0~21\ = CARRY((\inst|reloj|cuenta\(10) & !\inst|reloj|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(10),
	datad => VCC,
	cin => \inst|reloj|Add0~19\,
	combout => \inst|reloj|Add0~20_combout\,
	cout => \inst|reloj|Add0~21\);

-- Location: FF_X32_Y15_N27
\inst|reloj|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(10));

-- Location: LCCOMB_X32_Y15_N28
\inst|reloj|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~22_combout\ = (\inst|reloj|cuenta\(11) & (!\inst|reloj|Add0~21\)) # (!\inst|reloj|cuenta\(11) & ((\inst|reloj|Add0~21\) # (GND)))
-- \inst|reloj|Add0~23\ = CARRY((!\inst|reloj|Add0~21\) # (!\inst|reloj|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(11),
	datad => VCC,
	cin => \inst|reloj|Add0~21\,
	combout => \inst|reloj|Add0~22_combout\,
	cout => \inst|reloj|Add0~23\);

-- Location: LCCOMB_X32_Y15_N2
\inst|reloj|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~3_combout\ = (\inst|reloj|Add0~22_combout\ & ((!\inst|reloj|Equal0~7_combout\) # (!\inst|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|Equal0~4_combout\,
	datac => \inst|reloj|Equal0~7_combout\,
	datad => \inst|reloj|Add0~22_combout\,
	combout => \inst|reloj|cuenta~3_combout\);

-- Location: FF_X32_Y15_N3
\inst|reloj|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(11));

-- Location: LCCOMB_X32_Y15_N30
\inst|reloj|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~24_combout\ = (\inst|reloj|cuenta\(12) & (\inst|reloj|Add0~23\ $ (GND))) # (!\inst|reloj|cuenta\(12) & (!\inst|reloj|Add0~23\ & VCC))
-- \inst|reloj|Add0~25\ = CARRY((\inst|reloj|cuenta\(12) & !\inst|reloj|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(12),
	datad => VCC,
	cin => \inst|reloj|Add0~23\,
	combout => \inst|reloj|Add0~24_combout\,
	cout => \inst|reloj|Add0~25\);

-- Location: LCCOMB_X32_Y15_N4
\inst|reloj|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~2_combout\ = (\inst|reloj|Add0~24_combout\ & ((!\inst|reloj|Equal0~4_combout\) # (!\inst|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|Equal0~7_combout\,
	datac => \inst|reloj|Add0~24_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|cuenta~2_combout\);

-- Location: FF_X32_Y15_N5
\inst|reloj|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(12));

-- Location: LCCOMB_X32_Y14_N0
\inst|reloj|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~26_combout\ = (\inst|reloj|cuenta\(13) & (!\inst|reloj|Add0~25\)) # (!\inst|reloj|cuenta\(13) & ((\inst|reloj|Add0~25\) # (GND)))
-- \inst|reloj|Add0~27\ = CARRY((!\inst|reloj|Add0~25\) # (!\inst|reloj|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(13),
	datad => VCC,
	cin => \inst|reloj|Add0~25\,
	combout => \inst|reloj|Add0~26_combout\,
	cout => \inst|reloj|Add0~27\);

-- Location: LCCOMB_X32_Y14_N26
\inst|reloj|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~1_combout\ = (\inst|reloj|Add0~26_combout\ & ((!\inst|reloj|Equal0~4_combout\) # (!\inst|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|Equal0~7_combout\,
	datab => \inst|reloj|Add0~26_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|cuenta~1_combout\);

-- Location: FF_X32_Y14_N27
\inst|reloj|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(13));

-- Location: LCCOMB_X32_Y14_N2
\inst|reloj|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~28_combout\ = (\inst|reloj|cuenta\(14) & (\inst|reloj|Add0~27\ $ (GND))) # (!\inst|reloj|cuenta\(14) & (!\inst|reloj|Add0~27\ & VCC))
-- \inst|reloj|Add0~29\ = CARRY((\inst|reloj|cuenta\(14) & !\inst|reloj|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(14),
	datad => VCC,
	cin => \inst|reloj|Add0~27\,
	combout => \inst|reloj|Add0~28_combout\,
	cout => \inst|reloj|Add0~29\);

-- Location: FF_X32_Y14_N3
\inst|reloj|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(14));

-- Location: LCCOMB_X32_Y14_N4
\inst|reloj|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~30_combout\ = (\inst|reloj|cuenta\(15) & (!\inst|reloj|Add0~29\)) # (!\inst|reloj|cuenta\(15) & ((\inst|reloj|Add0~29\) # (GND)))
-- \inst|reloj|Add0~31\ = CARRY((!\inst|reloj|Add0~29\) # (!\inst|reloj|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(15),
	datad => VCC,
	cin => \inst|reloj|Add0~29\,
	combout => \inst|reloj|Add0~30_combout\,
	cout => \inst|reloj|Add0~31\);

-- Location: FF_X32_Y14_N5
\inst|reloj|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(15));

-- Location: LCCOMB_X32_Y14_N6
\inst|reloj|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~32_combout\ = (\inst|reloj|cuenta\(16) & (\inst|reloj|Add0~31\ $ (GND))) # (!\inst|reloj|cuenta\(16) & (!\inst|reloj|Add0~31\ & VCC))
-- \inst|reloj|Add0~33\ = CARRY((\inst|reloj|cuenta\(16) & !\inst|reloj|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(16),
	datad => VCC,
	cin => \inst|reloj|Add0~31\,
	combout => \inst|reloj|Add0~32_combout\,
	cout => \inst|reloj|Add0~33\);

-- Location: LCCOMB_X32_Y14_N30
\inst|reloj|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~0_combout\ = (\inst|reloj|Add0~32_combout\ & ((!\inst|reloj|Equal0~4_combout\) # (!\inst|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|Add0~32_combout\,
	datac => \inst|reloj|Equal0~7_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|cuenta~0_combout\);

-- Location: FF_X32_Y14_N31
\inst|reloj|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(16));

-- Location: LCCOMB_X32_Y14_N8
\inst|reloj|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~34_combout\ = (\inst|reloj|cuenta\(17) & (!\inst|reloj|Add0~33\)) # (!\inst|reloj|cuenta\(17) & ((\inst|reloj|Add0~33\) # (GND)))
-- \inst|reloj|Add0~35\ = CARRY((!\inst|reloj|Add0~33\) # (!\inst|reloj|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(17),
	datad => VCC,
	cin => \inst|reloj|Add0~33\,
	combout => \inst|reloj|Add0~34_combout\,
	cout => \inst|reloj|Add0~35\);

-- Location: FF_X32_Y14_N9
\inst|reloj|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~34_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(17));

-- Location: LCCOMB_X32_Y14_N28
\inst|reloj|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~2_combout\ = (\inst|reloj|cuenta\(16) & (!\inst|reloj|cuenta\(15) & (!\inst|reloj|cuenta\(17) & !\inst|reloj|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(16),
	datab => \inst|reloj|cuenta\(15),
	datac => \inst|reloj|cuenta\(17),
	datad => \inst|reloj|cuenta\(14),
	combout => \inst|reloj|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y14_N10
\inst|reloj|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~36_combout\ = (\inst|reloj|cuenta\(18) & (\inst|reloj|Add0~35\ $ (GND))) # (!\inst|reloj|cuenta\(18) & (!\inst|reloj|Add0~35\ & VCC))
-- \inst|reloj|Add0~37\ = CARRY((\inst|reloj|cuenta\(18) & !\inst|reloj|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(18),
	datad => VCC,
	cin => \inst|reloj|Add0~35\,
	combout => \inst|reloj|Add0~36_combout\,
	cout => \inst|reloj|Add0~37\);

-- Location: FF_X32_Y14_N11
\inst|reloj|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~36_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(18));

-- Location: LCCOMB_X32_Y14_N12
\inst|reloj|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~38_combout\ = (\inst|reloj|cuenta\(19) & (!\inst|reloj|Add0~37\)) # (!\inst|reloj|cuenta\(19) & ((\inst|reloj|Add0~37\) # (GND)))
-- \inst|reloj|Add0~39\ = CARRY((!\inst|reloj|Add0~37\) # (!\inst|reloj|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(19),
	datad => VCC,
	cin => \inst|reloj|Add0~37\,
	combout => \inst|reloj|Add0~38_combout\,
	cout => \inst|reloj|Add0~39\);

-- Location: FF_X32_Y14_N13
\inst|reloj|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(19));

-- Location: LCCOMB_X32_Y14_N14
\inst|reloj|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~40_combout\ = (\inst|reloj|cuenta\(20) & (\inst|reloj|Add0~39\ $ (GND))) # (!\inst|reloj|cuenta\(20) & (!\inst|reloj|Add0~39\ & VCC))
-- \inst|reloj|Add0~41\ = CARRY((\inst|reloj|cuenta\(20) & !\inst|reloj|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(20),
	datad => VCC,
	cin => \inst|reloj|Add0~39\,
	combout => \inst|reloj|Add0~40_combout\,
	cout => \inst|reloj|Add0~41\);

-- Location: FF_X32_Y14_N15
\inst|reloj|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(20));

-- Location: LCCOMB_X32_Y14_N16
\inst|reloj|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~42_combout\ = (\inst|reloj|cuenta\(21) & (!\inst|reloj|Add0~41\)) # (!\inst|reloj|cuenta\(21) & ((\inst|reloj|Add0~41\) # (GND)))
-- \inst|reloj|Add0~43\ = CARRY((!\inst|reloj|Add0~41\) # (!\inst|reloj|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(21),
	datad => VCC,
	cin => \inst|reloj|Add0~41\,
	combout => \inst|reloj|Add0~42_combout\,
	cout => \inst|reloj|Add0~43\);

-- Location: FF_X32_Y14_N17
\inst|reloj|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(21));

-- Location: LCCOMB_X32_Y14_N18
\inst|reloj|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~44_combout\ = (\inst|reloj|cuenta\(22) & (\inst|reloj|Add0~43\ $ (GND))) # (!\inst|reloj|cuenta\(22) & (!\inst|reloj|Add0~43\ & VCC))
-- \inst|reloj|Add0~45\ = CARRY((\inst|reloj|cuenta\(22) & !\inst|reloj|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(22),
	datad => VCC,
	cin => \inst|reloj|Add0~43\,
	combout => \inst|reloj|Add0~44_combout\,
	cout => \inst|reloj|Add0~45\);

-- Location: FF_X32_Y14_N19
\inst|reloj|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(22));

-- Location: LCCOMB_X32_Y14_N20
\inst|reloj|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~46_combout\ = (\inst|reloj|cuenta\(23) & (!\inst|reloj|Add0~45\)) # (!\inst|reloj|cuenta\(23) & ((\inst|reloj|Add0~45\) # (GND)))
-- \inst|reloj|Add0~47\ = CARRY((!\inst|reloj|Add0~45\) # (!\inst|reloj|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|cuenta\(23),
	datad => VCC,
	cin => \inst|reloj|Add0~45\,
	combout => \inst|reloj|Add0~46_combout\,
	cout => \inst|reloj|Add0~47\);

-- Location: FF_X32_Y14_N21
\inst|reloj|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(23));

-- Location: LCCOMB_X32_Y14_N22
\inst|reloj|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~48_combout\ = (\inst|reloj|cuenta\(24) & (\inst|reloj|Add0~47\ $ (GND))) # (!\inst|reloj|cuenta\(24) & (!\inst|reloj|Add0~47\ & VCC))
-- \inst|reloj|Add0~49\ = CARRY((\inst|reloj|cuenta\(24) & !\inst|reloj|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(24),
	datad => VCC,
	cin => \inst|reloj|Add0~47\,
	combout => \inst|reloj|Add0~48_combout\,
	cout => \inst|reloj|Add0~49\);

-- Location: FF_X32_Y14_N23
\inst|reloj|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(24));

-- Location: LCCOMB_X32_Y14_N24
\inst|reloj|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Add0~50_combout\ = \inst|reloj|Add0~49\ $ (\inst|reloj|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|reloj|cuenta\(25),
	cin => \inst|reloj|Add0~49\,
	combout => \inst|reloj|Add0~50_combout\);

-- Location: FF_X32_Y14_N25
\inst|reloj|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(25));

-- Location: LCCOMB_X33_Y14_N0
\inst|reloj|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~0_combout\ = (!\inst|reloj|cuenta\(25) & (!\inst|reloj|cuenta\(22) & (!\inst|reloj|cuenta\(23) & !\inst|reloj|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(25),
	datab => \inst|reloj|cuenta\(22),
	datac => \inst|reloj|cuenta\(23),
	datad => \inst|reloj|cuenta\(24),
	combout => \inst|reloj|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y15_N8
\inst|reloj|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~3_combout\ = (\inst|reloj|cuenta\(11) & (\inst|reloj|cuenta\(12) & (!\inst|reloj|cuenta\(10) & \inst|reloj|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(11),
	datab => \inst|reloj|cuenta\(12),
	datac => \inst|reloj|cuenta\(10),
	datad => \inst|reloj|cuenta\(13),
	combout => \inst|reloj|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y14_N14
\inst|reloj|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~1_combout\ = (!\inst|reloj|cuenta\(20) & (!\inst|reloj|cuenta\(18) & (!\inst|reloj|cuenta\(21) & !\inst|reloj|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(20),
	datab => \inst|reloj|cuenta\(18),
	datac => \inst|reloj|cuenta\(21),
	datad => \inst|reloj|cuenta\(19),
	combout => \inst|reloj|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y15_N28
\inst|reloj|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~4_combout\ = (\inst|reloj|Equal0~2_combout\ & (\inst|reloj|Equal0~0_combout\ & (\inst|reloj|Equal0~3_combout\ & \inst|reloj|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|Equal0~2_combout\,
	datab => \inst|reloj|Equal0~0_combout\,
	datac => \inst|reloj|Equal0~3_combout\,
	datad => \inst|reloj|Equal0~1_combout\,
	combout => \inst|reloj|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y15_N0
\inst|reloj|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|cuenta~5_combout\ = (\inst|reloj|Add0~0_combout\ & ((!\inst|reloj|Equal0~4_combout\) # (!\inst|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|Add0~0_combout\,
	datab => \inst|reloj|Equal0~7_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|cuenta~5_combout\);

-- Location: FF_X32_Y15_N1
\inst|reloj|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|cuenta~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(0));

-- Location: FF_X32_Y15_N9
\inst|reloj|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|cuenta\(1));

-- Location: LCCOMB_X33_Y15_N26
\inst|reloj|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~5_combout\ = (\inst|reloj|cuenta\(7) & (!\inst|reloj|cuenta\(8) & (!\inst|reloj|cuenta\(9) & !\inst|reloj|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(7),
	datab => \inst|reloj|cuenta\(8),
	datac => \inst|reloj|cuenta\(9),
	datad => \inst|reloj|cuenta\(6),
	combout => \inst|reloj|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y15_N24
\inst|reloj|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~6_combout\ = (!\inst|reloj|cuenta\(4) & (!\inst|reloj|cuenta\(3) & (!\inst|reloj|cuenta\(5) & !\inst|reloj|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(4),
	datab => \inst|reloj|cuenta\(3),
	datac => \inst|reloj|cuenta\(5),
	datad => \inst|reloj|cuenta\(2),
	combout => \inst|reloj|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y15_N14
\inst|reloj|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|Equal0~7_combout\ = (!\inst|reloj|cuenta\(1) & (!\inst|reloj|cuenta\(0) & (\inst|reloj|Equal0~5_combout\ & \inst|reloj|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reloj|cuenta\(1),
	datab => \inst|reloj|cuenta\(0),
	datac => \inst|reloj|Equal0~5_combout\,
	datad => \inst|reloj|Equal0~6_combout\,
	combout => \inst|reloj|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y15_N30
\inst|reloj|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|salida~0_combout\ = \inst|reloj|salida~q\ $ (((\inst|reloj|Equal0~7_combout\ & \inst|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reloj|salida~q\,
	datac => \inst|reloj|Equal0~7_combout\,
	datad => \inst|reloj|Equal0~4_combout\,
	combout => \inst|reloj|salida~0_combout\);

-- Location: LCCOMB_X33_Y15_N20
\inst|reloj|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reloj|salida~feeder_combout\ = \inst|reloj|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reloj|salida~0_combout\,
	combout => \inst|reloj|salida~feeder_combout\);

-- Location: FF_X33_Y15_N21
\inst|reloj|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reloj|salida~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reloj|salida~q\);

-- Location: CLKCTRL_G8
\inst|reloj|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|reloj|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|reloj|salida~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y4_N4
\inst|unidad_aritmetica|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux13~1_combout\ = \inst|Mux11~0_combout\ $ (\inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datac => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|Mux13~1_combout\);

-- Location: IOIBUF_X7_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\inst|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~2_combout\ = (\A[9]~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst|unidad_logica|salida~2_combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X16_Y4_N10
\inst|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[1]~9_combout\ = (\A[0]~input_o\ & (!\A[1]~input_o\ & VCC)) # (!\A[0]~input_o\ & (\A[1]~input_o\ $ (GND)))
-- \inst|unidad_logica|aux[1]~10\ = CARRY((!\A[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	combout => \inst|unidad_logica|aux[1]~9_combout\,
	cout => \inst|unidad_logica|aux[1]~10\);

-- Location: LCCOMB_X16_Y4_N12
\inst|unidad_logica|aux[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[2]~11_combout\ = (\A[2]~input_o\ & ((\inst|unidad_logica|aux[1]~10\) # (GND))) # (!\A[2]~input_o\ & (!\inst|unidad_logica|aux[1]~10\))
-- \inst|unidad_logica|aux[2]~12\ = CARRY((\A[2]~input_o\) # (!\inst|unidad_logica|aux[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[1]~10\,
	combout => \inst|unidad_logica|aux[2]~11_combout\,
	cout => \inst|unidad_logica|aux[2]~12\);

-- Location: LCCOMB_X16_Y4_N14
\inst|unidad_logica|aux[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[3]~13_combout\ = (\A[3]~input_o\ & (!\inst|unidad_logica|aux[2]~12\ & VCC)) # (!\A[3]~input_o\ & (\inst|unidad_logica|aux[2]~12\ $ (GND)))
-- \inst|unidad_logica|aux[3]~14\ = CARRY((!\A[3]~input_o\ & !\inst|unidad_logica|aux[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[2]~12\,
	combout => \inst|unidad_logica|aux[3]~13_combout\,
	cout => \inst|unidad_logica|aux[3]~14\);

-- Location: LCCOMB_X16_Y4_N16
\inst|unidad_logica|aux[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[4]~15_combout\ = (\A[4]~input_o\ & ((\inst|unidad_logica|aux[3]~14\) # (GND))) # (!\A[4]~input_o\ & (!\inst|unidad_logica|aux[3]~14\))
-- \inst|unidad_logica|aux[4]~16\ = CARRY((\A[4]~input_o\) # (!\inst|unidad_logica|aux[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[3]~14\,
	combout => \inst|unidad_logica|aux[4]~15_combout\,
	cout => \inst|unidad_logica|aux[4]~16\);

-- Location: LCCOMB_X16_Y4_N18
\inst|unidad_logica|aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[5]~17_combout\ = (\A[5]~input_o\ & (!\inst|unidad_logica|aux[4]~16\ & VCC)) # (!\A[5]~input_o\ & (\inst|unidad_logica|aux[4]~16\ $ (GND)))
-- \inst|unidad_logica|aux[5]~18\ = CARRY((!\A[5]~input_o\ & !\inst|unidad_logica|aux[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[4]~16\,
	combout => \inst|unidad_logica|aux[5]~17_combout\,
	cout => \inst|unidad_logica|aux[5]~18\);

-- Location: LCCOMB_X16_Y4_N20
\inst|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[6]~19_combout\ = (\A[6]~input_o\ & ((\inst|unidad_logica|aux[5]~18\) # (GND))) # (!\A[6]~input_o\ & (!\inst|unidad_logica|aux[5]~18\))
-- \inst|unidad_logica|aux[6]~20\ = CARRY((\A[6]~input_o\) # (!\inst|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[5]~18\,
	combout => \inst|unidad_logica|aux[6]~19_combout\,
	cout => \inst|unidad_logica|aux[6]~20\);

-- Location: LCCOMB_X16_Y4_N22
\inst|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[7]~21_combout\ = (\A[7]~input_o\ & (!\inst|unidad_logica|aux[6]~20\ & VCC)) # (!\A[7]~input_o\ & (\inst|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst|unidad_logica|aux[7]~22\ = CARRY((!\A[7]~input_o\ & !\inst|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[6]~20\,
	combout => \inst|unidad_logica|aux[7]~21_combout\,
	cout => \inst|unidad_logica|aux[7]~22\);

-- Location: LCCOMB_X16_Y4_N24
\inst|unidad_logica|aux[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[8]~23_combout\ = (\A[8]~input_o\ & ((\inst|unidad_logica|aux[7]~22\) # (GND))) # (!\A[8]~input_o\ & (!\inst|unidad_logica|aux[7]~22\))
-- \inst|unidad_logica|aux[8]~24\ = CARRY((\A[8]~input_o\) # (!\inst|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \inst|unidad_logica|aux[7]~22\,
	combout => \inst|unidad_logica|aux[8]~23_combout\,
	cout => \inst|unidad_logica|aux[8]~24\);

-- Location: LCCOMB_X16_Y4_N26
\inst|unidad_logica|aux[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[9]~25_combout\ = \inst|unidad_logica|aux[8]~24\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A[9]~input_o\,
	cin => \inst|unidad_logica|aux[8]~24\,
	combout => \inst|unidad_logica|aux[9]~25_combout\);

-- Location: LCCOMB_X18_Y3_N4
\inst|unidad_logica|aux[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[2]~27_combout\ = (\inst|Mux11~0_combout\ & \inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux11~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_logica|aux[2]~27_combout\);

-- Location: FF_X16_Y4_N27
\inst|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[9]~25_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(9));

-- Location: LCCOMB_X17_Y4_N26
\inst|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~3_combout\ = (\A[9]~input_o\ & (((\inst|Mux11~0_combout\)))) # (!\A[9]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \B[9]~input_o\,
	combout => \inst|unidad_logica|salida~3_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~4_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (((\inst|unidad_logica|salida~3_combout\)))) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~3_combout\ & ((\inst|unidad_logica|aux\(9)))) # 
-- (!\inst|unidad_logica|salida~3_combout\ & (\inst|unidad_logica|salida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~2_combout\,
	datac => \inst|unidad_logica|aux\(9),
	datad => \inst|unidad_logica|salida~3_combout\,
	combout => \inst|unidad_logica|salida~4_combout\);

-- Location: FF_X16_Y4_N5
\inst|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(9));

-- Location: FF_X14_Y4_N15
\inst|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \A[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(9));

-- Location: FF_X14_Y4_N29
\inst|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X14_Y4_N28
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\sel[1]~input_o\ & (((\inst|barrel_shifters|salShifters\(9) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\inst|barrel_shifters|salShifters\(9)))) # (!\sel[0]~input_o\ & (\inst|unidad_logica|salida\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(9),
	datab => \sel[1]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(9),
	datad => \sel[0]~input_o\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y4_N14
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\sel[1]~input_o\ & \sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\sel[3]~input_o\ & (((\inst|Mux0~0_combout\) # (\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & (\inst|Mux0~1_combout\ & ((\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \inst|Mux0~1_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (\inst|Mux0~2_combout\) # ((\inst|Mux0~3_combout\ & \inst|unidad_logica|salida\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datab => \inst|Mux0~2_combout\,
	datad => \inst|unidad_logica|salida\(9),
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\sel[3]~input_o\) # ((\sel[2]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y3_N6
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\);

-- Location: LCCOMB_X17_Y2_N6
\inst|unidad_aritmetica|resta|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s7|Suma~combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\inst|unidad_aritmetica|resta|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \inst|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|s7|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N2
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s7|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Suma~combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\);

-- Location: LCCOMB_X17_Y2_N16
\inst|unidad_aritmetica|resta|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s6|Suma~combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\inst|unidad_aritmetica|resta|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => \inst|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|resta|s6|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N8
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s6|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|resta|s6|Suma~combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\);

-- Location: LCCOMB_X17_Y2_N26
\inst|unidad_aritmetica|resta|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s5|Suma~combout\ = \A[5]~input_o\ $ (\inst|unidad_aritmetica|resta|s4|Cout~0_combout\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \inst|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s5|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N26
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s5|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s5|Suma~combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s4|Suma~combout\ = \A[4]~input_o\ $ (\inst|unidad_aritmetica|resta|s3|Cout~0_combout\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \inst|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N12
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s4|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s4|Suma~combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\);

-- Location: LCCOMB_X17_Y3_N16
\inst|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s3|Suma~combout\ = \inst|unidad_aritmetica|resta|s2|Cout~0_combout\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X17_Y5_N14
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ = (\inst|Mux10~0_combout\ & ((!\inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|resta|s3|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s3|Suma~combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\);

-- Location: LCCOMB_X17_Y3_N18
\inst|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s2|Suma~combout\ = \inst|unidad_aritmetica|resta|s1|Cout~0_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X17_Y3_N8
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ = (\inst|Mux10~0_combout\ & (!\inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\)) # (!\inst|Mux10~0_combout\ & ((\inst|unidad_aritmetica|resta|s2|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|unidad_aritmetica|resta|s2|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\);

-- Location: LCCOMB_X16_Y3_N10
\inst|unidad_aritmetica|resta|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|resta|s1|Suma~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|resta|s1|Suma~combout\);

-- Location: LCCOMB_X16_Y3_N16
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ = (\inst|Mux10~0_combout\ & (!\inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\)) # (!\inst|Mux10~0_combout\ & ((\inst|unidad_aritmetica|resta|s1|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux10~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datad => \inst|unidad_aritmetica|resta|s1|Suma~combout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ = (\A[0]~input_o\ & (\inst|Mux10~0_combout\ $ (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (!\inst|Mux10~0_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \inst|Mux10~0_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\);

-- Location: LCCOMB_X18_Y5_N10
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ = CARRY(!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\);

-- Location: LCCOMB_X18_Y5_N12
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\)) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ 
-- & ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\ = CARRY((!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\);

-- Location: LCCOMB_X18_Y5_N14
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\ & VCC))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\ = CARRY((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & !\inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~12\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\);

-- Location: LCCOMB_X18_Y5_N16
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\)) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\ = CARRY((!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~14\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\);

-- Location: LCCOMB_X18_Y5_N18
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\ & VCC))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\ = CARRY((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & !\inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~16\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\);

-- Location: LCCOMB_X18_Y5_N20
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\)) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~18\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: LCCOMB_X18_Y5_N22
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\ $ (GND))) # 
-- (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\ & VCC))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & !\inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X18_Y5_N24
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\)) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (GND)))
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X18_Y5_N26
\inst|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = \inst|unidad_aritmetica|mult|multi4|negativo|Add0~24\ $ (!\inst|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\,
	cin => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\);

-- Location: LCCOMB_X18_Y3_N10
\inst|unidad_aritmetica|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux1~1_combout\ = (\inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\))) # (!\inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & 
-- (\inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y3_N8
\inst|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux1~0_combout\ = (\inst|Mux11~0_combout\ & (!\inst|unidad_aritmetica|resta|s7|Cout~0_combout\ & (\inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\))) # (!\inst|Mux11~0_combout\ & 
-- (((\inst|unidad_aritmetica|suma|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datad => \inst|unidad_aritmetica|suma|s7|Cout~0_combout\,
	combout => \inst|unidad_aritmetica|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y3_N0
\inst|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux1~2_combout\ = (\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|Mux1~1_combout\ & (!\inst|Mux11~0_combout\))) # (!\inst|Mux10~0_combout\ & (((\inst|unidad_aritmetica|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux1~1_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|Mux1~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|unidad_aritmetica|Mux1~2_combout\);

-- Location: IOIBUF_X32_Y0_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X17_Y4_N22
\inst|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~6_combout\ = (\A[8]~input_o\ & (\inst|Mux11~0_combout\)) # (!\A[8]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~5_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst|unidad_logica|salida~5_combout\);

-- Location: FF_X16_Y4_N25
\inst|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[8]~23_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(8));

-- Location: LCCOMB_X16_Y4_N6
\inst|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~7_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (\inst|unidad_logica|salida~6_combout\)) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~6_combout\ & ((\inst|unidad_logica|aux\(8)))) # 
-- (!\inst|unidad_logica|salida~6_combout\ & (\inst|unidad_logica|salida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~6_combout\,
	datac => \inst|unidad_logica|salida~5_combout\,
	datad => \inst|unidad_logica|aux\(8),
	combout => \inst|unidad_logica|salida~7_combout\);

-- Location: FF_X16_Y4_N7
\inst|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(8));

-- Location: LCCOMB_X14_Y4_N8
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

-- Location: FF_X14_Y4_N9
\inst|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|barrel_shifters|aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(8));

-- Location: FF_X14_Y4_N7
\inst|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X14_Y4_N6
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\sel[1]~input_o\ & (((\inst|barrel_shifters|salShifters\(8) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\inst|barrel_shifters|salShifters\(8)))) # (!\sel[0]~input_o\ & (\inst|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(8),
	datab => \sel[1]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(8),
	datad => \sel[0]~input_o\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\sel[2]~input_o\ & (((\sel[3]~input_o\) # (\inst|Mux1~1_combout\)))) # (!\sel[2]~input_o\ & (\inst|Mux0~0_combout\ & (\sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|Mux0~0_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|Mux0~3_combout\ & \inst|unidad_logica|salida\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datad => \inst|unidad_logica|salida\(8),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|Mux1~2_combout\) # ((\inst|Mux1~0_combout\) # ((\inst|Mux9~0_combout\ & \inst|unidad_aritmetica|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~0_combout\,
	datab => \inst|unidad_aritmetica|Mux1~2_combout\,
	datac => \inst|Mux1~2_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X16_Y5_N6
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & !\inst|unidad_aritmetica|resta|s7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y3_N6
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|Mux11~0_combout\ & (!\inst|Mux10~0_combout\)) # (!\inst|Mux11~0_combout\ & (\inst|Mux10~0_combout\ & \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux11~0_combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X17_Y5_N0
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|Mux10~0_combout\ & (!\inst|Mux11~0_combout\)) # (!\inst|Mux10~0_combout\ & (\inst|Mux11~0_combout\ & !\inst|unidad_aritmetica|resta|s7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y5_N18
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|Mux5~2_combout\ & (((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\) # (!\inst|Mux5~1_combout\)))) # (!\inst|Mux5~2_combout\ & (\inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\ & 
-- ((\inst|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	datac => \inst|Mux5~2_combout\,
	datad => \inst|Mux5~1_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y5_N20
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux5~0_combout\ & (((\inst|Mux2~0_combout\)))) # (!\inst|Mux5~0_combout\ & ((\inst|Mux2~0_combout\ & (!\inst|unidad_aritmetica|resta|s7|Suma~combout\)) # (!\inst|Mux2~0_combout\ & 
-- ((\inst|unidad_aritmetica|suma|s7|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Suma~combout\,
	datab => \inst|unidad_aritmetica|suma|s7|Suma~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y4_N12
\inst|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~8_combout\ = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_logica|salida~8_combout\);

-- Location: FF_X16_Y4_N23
\inst|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[7]~21_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(7));

-- Location: LCCOMB_X17_Y4_N18
\inst|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~9_combout\ = (\A[7]~input_o\ & (\inst|Mux11~0_combout\)) # (!\A[7]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst|unidad_logica|salida~9_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~10_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (((\inst|unidad_logica|salida~9_combout\)))) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~9_combout\ & ((\inst|unidad_logica|aux\(7)))) # 
-- (!\inst|unidad_logica|salida~9_combout\ & (\inst|unidad_logica|salida~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~8_combout\,
	datac => \inst|unidad_logica|aux\(7),
	datad => \inst|unidad_logica|salida~9_combout\,
	combout => \inst|unidad_logica|salida~10_combout\);

-- Location: FF_X16_Y4_N1
\inst|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(7));

-- Location: LCCOMB_X14_Y5_N18
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|unidad_logica|salida\(7) & (\sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(7),
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y5_N22
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = \sel[2]~input_o\ $ (((\sel[1]~input_o\) # (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux5~3_combout\);

-- Location: FF_X14_Y5_N5
\inst|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \A[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(7));

-- Location: FF_X14_Y5_N9
\inst|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X14_Y5_N8
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux5~3_combout\ & (\inst|barrel_shifters|salShifters\(7) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(7),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y5_N24
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\sel[2]~input_o\ & (\sel[1]~input_o\ & (!\sel[3]~input_o\ & \sel[0]~input_o\))) # (!\sel[2]~input_o\ & (\sel[3]~input_o\ & ((!\sel[0]~input_o\) # (!\sel[1]~input_o\))))

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
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y5_N28
\inst|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = (\inst|Mux5~4_combout\ & (\inst|Mux2~1_combout\)) # (!\inst|Mux5~4_combout\ & (((\inst|Mux2~2_combout\) # (\inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux2~2_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux5~4_combout\,
	combout => \inst|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y4_N14
\inst|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~12_combout\ = (\A[6]~input_o\ & (((\inst|Mux11~0_combout\)))) # (!\A[6]~input_o\ & ((\inst|Mux10~0_combout\) # ((\B[6]~input_o\ & \inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \A[6]~input_o\,
	combout => \inst|unidad_logica|salida~12_combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~11_combout\ = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \inst|unidad_logica|salida~11_combout\);

-- Location: FF_X16_Y4_N21
\inst|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[6]~19_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(6));

-- Location: LCCOMB_X16_Y4_N30
\inst|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~13_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (\inst|unidad_logica|salida~12_combout\)) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~12_combout\ & ((\inst|unidad_logica|aux\(6)))) # 
-- (!\inst|unidad_logica|salida~12_combout\ & (\inst|unidad_logica|salida~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~12_combout\,
	datac => \inst|unidad_logica|salida~11_combout\,
	datad => \inst|unidad_logica|aux\(6),
	combout => \inst|unidad_logica|salida~13_combout\);

-- Location: FF_X16_Y4_N31
\inst|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(6));

-- Location: LCCOMB_X16_Y5_N28
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|unidad_logica|salida\(6) & (\sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|unidad_logica|salida\(6),
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X14_Y5_N26
\inst|barrel_shifters|aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[6]~feeder_combout\ = \A[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[5]~input_o\,
	combout => \inst|barrel_shifters|aux[6]~feeder_combout\);

-- Location: FF_X14_Y5_N27
\inst|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|barrel_shifters|aux[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(6));

-- Location: FF_X14_Y5_N11
\inst|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X14_Y5_N10
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux5~3_combout\ & (\inst|barrel_shifters|salShifters\(6) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(6),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X17_Y5_N6
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|Mux5~2_combout\ & (((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\)) # (!\inst|Mux5~1_combout\))) # (!\inst|Mux5~2_combout\ & (\inst|Mux5~1_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~2_combout\,
	datab => \inst|Mux5~1_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y5_N24
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & (((\inst|Mux5~0_combout\) # (!\inst|unidad_aritmetica|resta|s6|Suma~combout\)))) # (!\inst|Mux3~0_combout\ & (\inst|unidad_aritmetica|suma|s6|Suma~combout\ & (!\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst|unidad_aritmetica|suma|s6|Suma~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|unidad_aritmetica|resta|s6|Suma~combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y5_N2
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux5~4_combout\ & (((\inst|Mux3~1_combout\)))) # (!\inst|Mux5~4_combout\ & ((\inst|Mux3~2_combout\) # ((\inst|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datab => \inst|Mux3~2_combout\,
	datac => \inst|Mux3~3_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: FF_X14_Y5_N31
\inst|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \A[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(5));

-- Location: FF_X14_Y5_N3
\inst|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X14_Y5_N2
\inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux5~3_combout\ & (\inst|barrel_shifters|salShifters\(5) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(5),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux4~3_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~15_combout\ = (\A[5]~input_o\ & (\inst|Mux11~0_combout\)) # (!\A[5]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_logica|salida~15_combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~14_combout\ = (\A[5]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|unidad_logica|salida~14_combout\);

-- Location: FF_X17_Y4_N25
\inst|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|unidad_logica|aux[5]~17_combout\,
	sload => VCC,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(5));

-- Location: LCCOMB_X17_Y4_N0
\inst|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~16_combout\ = (\inst|unidad_logica|salida~15_combout\ & (((\inst|unidad_aritmetica|Mux13~1_combout\) # (\inst|unidad_logica|aux\(5))))) # (!\inst|unidad_logica|salida~15_combout\ & (\inst|unidad_logica|salida~14_combout\ & 
-- (!\inst|unidad_aritmetica|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~15_combout\,
	datab => \inst|unidad_logica|salida~14_combout\,
	datac => \inst|unidad_aritmetica|Mux13~1_combout\,
	datad => \inst|unidad_logica|aux\(5),
	combout => \inst|unidad_logica|salida~16_combout\);

-- Location: FF_X17_Y4_N1
\inst|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(5));

-- Location: LCCOMB_X16_Y5_N0
\inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = (\inst|unidad_logica|salida\(5) & (\sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|unidad_logica|salida\(5),
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|Mux4~2_combout\);

-- Location: LCCOMB_X17_Y5_N10
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|Mux5~2_combout\ & (((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\)) # (!\inst|Mux5~1_combout\))) # (!\inst|Mux5~2_combout\ & (\inst|Mux5~1_combout\ & 
-- ((\inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~2_combout\,
	datab => \inst|Mux5~1_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y5_N28
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|Mux5~0_combout\ & (((\inst|Mux4~0_combout\)))) # (!\inst|Mux5~0_combout\ & ((\inst|Mux4~0_combout\ & (!\inst|unidad_aritmetica|resta|s5|Suma~combout\)) # (!\inst|Mux4~0_combout\ & 
-- ((\inst|unidad_aritmetica|suma|s5|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s5|Suma~combout\,
	datab => \inst|unidad_aritmetica|suma|s5|Suma~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y5_N22
\inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = (\inst|Mux5~4_combout\ & (((\inst|Mux4~1_combout\)))) # (!\inst|Mux5~4_combout\ & ((\inst|Mux4~3_combout\) # ((\inst|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datab => \inst|Mux4~3_combout\,
	datac => \inst|Mux4~2_combout\,
	datad => \inst|Mux4~1_combout\,
	combout => \inst|Mux4~4_combout\);

-- Location: LCCOMB_X16_Y5_N12
\inst|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~18_combout\ = (\A[4]~input_o\ & (\inst|Mux11~0_combout\)) # (!\A[4]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \A[4]~input_o\,
	datac => \inst|Mux10~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_logica|salida~18_combout\);

-- Location: LCCOMB_X16_Y5_N26
\inst|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~17_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|unidad_logica|salida~17_combout\);

-- Location: LCCOMB_X16_Y5_N20
\inst|unidad_logica|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[4]~feeder_combout\ = \inst|unidad_logica|aux[4]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|unidad_logica|aux[4]~15_combout\,
	combout => \inst|unidad_logica|aux[4]~feeder_combout\);

-- Location: FF_X16_Y5_N21
\inst|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[4]~feeder_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(4));

-- Location: LCCOMB_X16_Y5_N8
\inst|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~19_combout\ = (\inst|unidad_logica|salida~18_combout\ & ((\inst|unidad_aritmetica|Mux13~1_combout\) # ((\inst|unidad_logica|aux\(4))))) # (!\inst|unidad_logica|salida~18_combout\ & (!\inst|unidad_aritmetica|Mux13~1_combout\ & 
-- (\inst|unidad_logica|salida~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~18_combout\,
	datab => \inst|unidad_aritmetica|Mux13~1_combout\,
	datac => \inst|unidad_logica|salida~17_combout\,
	datad => \inst|unidad_logica|aux\(4),
	combout => \inst|unidad_logica|salida~19_combout\);

-- Location: FF_X16_Y5_N9
\inst|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(4));

-- Location: LCCOMB_X16_Y5_N14
\inst|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~7_combout\ = (\inst|unidad_logica|salida\(4) & (\sel[2]~input_o\ $ (((\sel[0]~input_o\) # (\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inst|unidad_logica|salida\(4),
	datad => \sel[1]~input_o\,
	combout => \inst|Mux5~7_combout\);

-- Location: LCCOMB_X17_Y5_N4
\inst|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~5_combout\ = (\inst|Mux5~2_combout\ & (((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\) # (!\inst|Mux5~1_combout\)))) # (!\inst|Mux5~2_combout\ & (\inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\ & 
-- ((\inst|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datac => \inst|Mux5~2_combout\,
	datad => \inst|Mux5~1_combout\,
	combout => \inst|Mux5~5_combout\);

-- Location: LCCOMB_X16_Y5_N22
\inst|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~6_combout\ = (\inst|Mux5~0_combout\ & (((\inst|Mux5~5_combout\)))) # (!\inst|Mux5~0_combout\ & ((\inst|Mux5~5_combout\ & (!\inst|unidad_aritmetica|resta|s4|Suma~combout\)) # (!\inst|Mux5~5_combout\ & 
-- ((\inst|unidad_aritmetica|suma|s4|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst|unidad_aritmetica|resta|s4|Suma~combout\,
	datac => \inst|unidad_aritmetica|suma|s4|Suma~combout\,
	datad => \inst|Mux5~5_combout\,
	combout => \inst|Mux5~6_combout\);

-- Location: FF_X14_Y5_N15
\inst|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \A[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(4));

-- Location: FF_X14_Y5_N17
\inst|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X14_Y5_N16
\inst|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~8_combout\ = (\sel[3]~input_o\) # ((!\inst|Mux5~3_combout\ & (\inst|barrel_shifters|salShifters\(4) & \sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \inst|barrel_shifters|salShifters\(4),
	datad => \sel[2]~input_o\,
	combout => \inst|Mux5~8_combout\);

-- Location: LCCOMB_X16_Y5_N24
\inst|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~9_combout\ = (\inst|Mux5~4_combout\ & (((\inst|Mux5~6_combout\)))) # (!\inst|Mux5~4_combout\ & ((\inst|Mux5~7_combout\) # ((\inst|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datab => \inst|Mux5~7_combout\,
	datac => \inst|Mux5~6_combout\,
	datad => \inst|Mux5~8_combout\,
	combout => \inst|Mux5~9_combout\);

-- Location: LCCOMB_X17_Y3_N2
\inst|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~21_combout\ = (\A[3]~input_o\ & (((\inst|Mux11~0_combout\)))) # (!\A[3]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|unidad_logica|salida~21_combout\);

-- Location: FF_X16_Y4_N15
\inst|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[3]~13_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(3));

-- Location: LCCOMB_X19_Y4_N18
\inst|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~20_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_logica|salida~20_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~22_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (\inst|unidad_logica|salida~21_combout\)) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~21_combout\ & (\inst|unidad_logica|aux\(3))) # 
-- (!\inst|unidad_logica|salida~21_combout\ & ((\inst|unidad_logica|salida~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~21_combout\,
	datac => \inst|unidad_logica|aux\(3),
	datad => \inst|unidad_logica|salida~20_combout\,
	combout => \inst|unidad_logica|salida~22_combout\);

-- Location: FF_X16_Y4_N29
\inst|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(3));

-- Location: LCCOMB_X14_Y5_N12
\inst|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~10_combout\ = (\sel[1]~input_o\ & ((\sel[2]~input_o\ & ((\sel[3]~input_o\) # (!\sel[0]~input_o\))) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\) # (!\sel[3]~input_o\))))) # (!\sel[1]~input_o\ & ((\sel[2]~input_o\) # ((!\sel[3]~input_o\ & 
-- \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux8~10_combout\);

-- Location: LCCOMB_X13_Y5_N22
\inst|barrel_shifters|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|barrel_shifters|aux[3]~feeder_combout\ = \A[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[2]~input_o\,
	combout => \inst|barrel_shifters|aux[3]~feeder_combout\);

-- Location: FF_X13_Y5_N23
\inst|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|barrel_shifters|aux[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(3));

-- Location: FF_X13_Y5_N13
\inst|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X14_Y5_N6
\inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = (\inst|Mux5~4_combout\ & ((\inst|unidad_aritmetica|Mux13~0_combout\))) # (!\inst|Mux5~4_combout\ & (\inst|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datac => \inst|unidad_aritmetica|Mux13~0_combout\,
	datad => \inst|Mux5~4_combout\,
	combout => \inst|Mux8~4_combout\);

-- Location: LCCOMB_X13_Y5_N12
\inst|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|Mux8~10_combout\ & ((\inst|Mux8~4_combout\ & (\inst|unidad_logica|salida\(3))) # (!\inst|Mux8~4_combout\ & ((\inst|barrel_shifters|salShifters\(3)))))) # (!\inst|Mux8~10_combout\ & (((\inst|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(3),
	datab => \inst|Mux8~10_combout\,
	datac => \inst|barrel_shifters|salShifters\(3),
	datad => \inst|Mux8~4_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y3_N0
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|Mux11~0_combout\ & (((\inst|Mux10~0_combout\)))) # (!\inst|Mux11~0_combout\ & ((\inst|Mux10~0_combout\ & ((\inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\))) # (!\inst|Mux10~0_combout\ & 
-- (\inst|unidad_aritmetica|suma|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|suma|s3|Suma~combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y3_N0
\inst|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~1_combout\ = (\B[2]~input_o\) # ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~0_combout\ = (\B[7]~input_o\) # ((\B[6]~input_o\) # ((\B[0]~input_o\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|unidad_aritmetica|divi|LessThan0~1_combout\) # ((\inst|unidad_aritmetica|divi|LessThan0~0_combout\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y5_N30
\inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|Mux11~0_combout\ & ((\inst|Mux6~0_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan0~2_combout\))) # (!\inst|Mux6~0_combout\ & (!\inst|unidad_aritmetica|resta|s3|Suma~combout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s3|Suma~combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y5_N6
\inst|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\inst|Mux6~2_combout\ & (((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\) # (!\inst|Mux5~4_combout\)))) # (!\inst|Mux6~2_combout\ & (\inst|Mux6~1_combout\ & (\inst|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~2_combout\,
	datab => \inst|Mux6~1_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X18_Y5_N4
\inst|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (\inst|Mux6~3_combout\) # ((!\inst|Mux5~4_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux6~3_combout\,
	combout => \inst|Mux6~4_combout\);

-- Location: LCCOMB_X13_Y4_N26
\inst|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~23_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_logica|salida~23_combout\);

-- Location: LCCOMB_X13_Y4_N28
\inst|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~24_combout\ = (\A[2]~input_o\ & (((\inst|Mux11~0_combout\)))) # (!\A[2]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \A[2]~input_o\,
	datac => \inst|Mux11~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst|unidad_logica|salida~24_combout\);

-- Location: FF_X16_Y4_N13
\inst|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[2]~11_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(2));

-- Location: LCCOMB_X16_Y4_N8
\inst|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~25_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (((\inst|unidad_logica|salida~24_combout\)))) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~24_combout\ & ((\inst|unidad_logica|aux\(2)))) # 
-- (!\inst|unidad_logica|salida~24_combout\ & (\inst|unidad_logica|salida~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~23_combout\,
	datac => \inst|unidad_logica|salida~24_combout\,
	datad => \inst|unidad_logica|aux\(2),
	combout => \inst|unidad_logica|salida~25_combout\);

-- Location: FF_X16_Y4_N9
\inst|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(2));

-- Location: LCCOMB_X13_Y5_N4
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

-- Location: FF_X13_Y5_N5
\inst|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|barrel_shifters|aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(2));

-- Location: FF_X13_Y5_N11
\inst|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X13_Y5_N10
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (\inst|Mux8~10_combout\ & ((\inst|Mux8~4_combout\ & (\inst|unidad_logica|salida\(2))) # (!\inst|Mux8~4_combout\ & ((\inst|barrel_shifters|salShifters\(2)))))) # (!\inst|Mux8~10_combout\ & (((\inst|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(2),
	datab => \inst|Mux8~10_combout\,
	datac => \inst|barrel_shifters|salShifters\(2),
	datad => \inst|Mux8~4_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y3_N14
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|Mux10~0_combout\ & ((\inst|Mux11~0_combout\) # ((\inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\)))) # (!\inst|Mux10~0_combout\ & (!\inst|Mux11~0_combout\ & ((\inst|unidad_aritmetica|suma|s2|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|unidad_aritmetica|suma|s2|Suma~combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y4_N14
\inst|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[3]~input_o\) # (GND)))
-- \inst|unidad_aritmetica|divi|Add0~1\ = CARRY((\A[3]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X23_Y4_N16
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

-- Location: LCCOMB_X23_Y4_N18
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

-- Location: LCCOMB_X23_Y4_N20
\inst|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~5\))
-- \inst|unidad_aritmetica|divi|Add0~7\ = CARRY((\B[3]~input_o\) # (!\inst|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X23_Y4_N22
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

-- Location: LCCOMB_X23_Y4_N24
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

-- Location: LCCOMB_X23_Y4_N26
\inst|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~12_combout\ = \inst|unidad_aritmetica|divi|Add0~11\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B[6]~input_o\,
	cin => \inst|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X23_Y4_N0
\inst|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~14_combout\ = (\inst|unidad_aritmetica|divi|Add0~12_combout\ & (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\inst|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~12_combout\,
	datab => \B[1]~input_o\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X23_Y4_N6
\inst|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~15_combout\ = (\inst|unidad_aritmetica|divi|Add0~10_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~10_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X23_Y4_N12
\inst|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~16_combout\ = (\inst|unidad_aritmetica|divi|Add0~8_combout\ & (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\inst|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X23_Y4_N10
\inst|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~17_combout\ = (\inst|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~6_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X23_Y4_N28
\inst|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~18_combout\ = (\inst|unidad_aritmetica|divi|Add0~4_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~4_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X23_Y4_N8
\inst|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~19_combout\ = (\inst|unidad_aritmetica|divi|Add0~2_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|unidad_aritmetica|divi|LessThan0~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~2_combout\,
	datab => \inst|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X23_Y4_N30
\inst|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|unidad_aritmetica|divi|LessThan0~2_combout\ & (\A[3]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \inst|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((\B[0]~input_o\ & !\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y4_N2
\inst|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~20_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y4_N4
\inst|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~19_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y4_N6
\inst|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~18_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~5_cout\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y4_N8
\inst|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~17_combout\ & (\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~7_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~17_combout\ & ((\B[4]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y4_N10
\inst|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~16_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan1~9_cout\) # (!\B[5]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y4_N12
\inst|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add0~15_combout\ & (\B[6]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan1~11_cout\)) # (!\inst|unidad_aritmetica|divi|Add0~15_combout\ & ((\B[6]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y4_N14
\inst|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|unidad_aritmetica|divi|Add0~14_combout\ & (\inst|unidad_aritmetica|divi|LessThan1~13_cout\ & \B[7]~input_o\)) # (!\inst|unidad_aritmetica|divi|Add0~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|LessThan1~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add0~14_combout\,
	datad => \B[7]~input_o\,
	cin => \inst|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X18_Y3_N30
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst|Mux7~0_combout\ & (((!\inst|unidad_aritmetica|divi|LessThan1~14_combout\) # (!\inst|Mux11~0_combout\)))) # (!\inst|Mux7~0_combout\ & (!\inst|unidad_aritmetica|resta|s2|Suma~combout\ & (\inst|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst|unidad_aritmetica|resta|s2|Suma~combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y5_N2
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (\inst|Mux7~2_combout\ & ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\) # ((!\inst|Mux5~4_combout\)))) # (!\inst|Mux7~2_combout\ & (((\inst|Mux5~4_combout\ & \inst|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~2_combout\,
	datab => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst|Mux7~1_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y5_N8
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|Mux7~3_combout\) # ((!\inst|Mux5~4_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X13_Y4_N10
\inst|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~26_combout\ = (\A[1]~input_o\ & (((\inst|Mux11~0_combout\)))) # (!\A[1]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|unidad_logica|salida~26_combout\);

-- Location: FF_X16_Y4_N11
\inst|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[1]~9_combout\,
	ena => \inst|unidad_logica|aux[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(1));

-- Location: LCCOMB_X16_Y4_N2
\inst|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~27_combout\ = (\inst|unidad_aritmetica|Mux13~1_combout\ & (((\inst|unidad_logica|salida~26_combout\)))) # (!\inst|unidad_aritmetica|Mux13~1_combout\ & ((\inst|unidad_logica|salida~26_combout\ & ((\inst|unidad_logica|aux\(1)))) # 
-- (!\inst|unidad_logica|salida~26_combout\ & (\inst|unidad_logica|salida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux13~1_combout\,
	datab => \inst|unidad_logica|salida~0_combout\,
	datac => \inst|unidad_logica|salida~26_combout\,
	datad => \inst|unidad_logica|aux\(1),
	combout => \inst|unidad_logica|salida~27_combout\);

-- Location: FF_X16_Y4_N3
\inst|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(1));

-- Location: FF_X13_Y5_N27
\inst|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \A[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|aux\(1));

-- Location: FF_X13_Y5_N25
\inst|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	asdata => \inst|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X13_Y5_N24
\inst|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~7_combout\ = (\inst|Mux8~10_combout\ & ((\inst|Mux8~4_combout\ & (\inst|unidad_logica|salida\(1))) # (!\inst|Mux8~4_combout\ & ((\inst|barrel_shifters|salShifters\(1)))))) # (!\inst|Mux8~10_combout\ & (((\inst|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida\(1),
	datab => \inst|Mux8~10_combout\,
	datac => \inst|barrel_shifters|salShifters\(1),
	datad => \inst|Mux8~4_combout\,
	combout => \inst|Mux8~7_combout\);

-- Location: LCCOMB_X21_Y4_N4
\inst|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~0_combout\ = (\A[2]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[2]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \inst|unidad_aritmetica|divi|Add1~1\ = CARRY((\A[2]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X21_Y4_N6
\inst|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|unidad_aritmetica|divi|Add1~1\)) # (!\inst|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|unidad_aritmetica|divi|Add1~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~20_combout\ & (\inst|unidad_aritmetica|divi|Add1~1\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|unidad_aritmetica|divi|Add1~1\))))
-- \inst|unidad_aritmetica|divi|Add1~3\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~1\) # (!\inst|unidad_aritmetica|divi|Add0~20_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~20_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X21_Y4_N8
\inst|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|unidad_aritmetica|divi|Add0~19_combout\ $ (\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|unidad_aritmetica|divi|Add0~19_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~3\) # (!\B[2]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~19_combout\ & (!\B[2]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X21_Y4_N10
\inst|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~6_combout\ = (\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|unidad_aritmetica|divi|Add1~5\)) # (!\inst|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|unidad_aritmetica|divi|Add1~5\) # 
-- (GND))))) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add0~18_combout\ & (\inst|unidad_aritmetica|divi|Add1~5\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|unidad_aritmetica|divi|Add1~5\))))
-- \inst|unidad_aritmetica|divi|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add1~5\) # (!\inst|unidad_aritmetica|divi|Add0~18_combout\))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add0~18_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X21_Y4_N12
\inst|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|unidad_aritmetica|divi|Add0~17_combout\ $ (\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|unidad_aritmetica|divi|Add0~17_combout\ & ((!\inst|unidad_aritmetica|divi|Add1~7\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add0~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X21_Y4_N14
\inst|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~9\)) # (!\B[5]~input_o\ & (\inst|unidad_aritmetica|divi|Add1~9\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~9\) # (GND))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~9\))))
-- \inst|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|unidad_aritmetica|divi|Add0~16_combout\ & (\B[5]~input_o\ & !\inst|unidad_aritmetica|divi|Add1~9\)) # (!\inst|unidad_aritmetica|divi|Add0~16_combout\ & ((\B[5]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X21_Y4_N16
\inst|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~12_combout\ = \inst|unidad_aritmetica|divi|Add0~15_combout\ $ (\inst|unidad_aritmetica|divi|Add1~11\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~15_combout\,
	datad => \B[6]~input_o\,
	cin => \inst|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X21_Y4_N20
\inst|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|unidad_aritmetica|divi|Add0~15_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~12_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X21_Y4_N18
\inst|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~15_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add0~16_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst|unidad_aritmetica|divi|Add1~10_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~16_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X21_Y4_N26
\inst|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~16_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~8_combout\,
	datac => \inst|unidad_aritmetica|divi|Add0~17_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X21_Y4_N0
\inst|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~6_combout\,
	datab => \inst|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X21_Y4_N22
\inst|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add0~19_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~4_combout\,
	datad => \inst|unidad_aritmetica|divi|Add0~19_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X21_Y4_N28
\inst|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add0~20_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~2_combout\,
	datab => \inst|unidad_aritmetica|divi|Add0~20_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X21_Y4_N30
\inst|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & (\A[2]~input_o\)) # (!\inst|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~0_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((\B[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y4_N18
\inst|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~20_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~1_cout\) # (!\B[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~20_combout\ & (!\B[1]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y4_N20
\inst|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~19_combout\ & (\B[2]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~3_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~19_combout\ & ((\B[2]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y4_N22
\inst|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~18_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\B[3]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~18_combout\ & (!\B[3]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y4_N24
\inst|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~17_combout\ & (\B[4]~input_o\ & !\inst|unidad_aritmetica|divi|LessThan2~7_cout\)) # (!\inst|unidad_aritmetica|divi|Add1~17_combout\ & ((\B[4]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y4_N26
\inst|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add1~16_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~9_cout\) # (!\B[5]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y4_N28
\inst|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan2~11_cout\) # (!\inst|unidad_aritmetica|divi|Add1~15_combout\))) # (!\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~15_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~15_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y4_N30
\inst|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|unidad_aritmetica|divi|Add1~14_combout\ & (\inst|unidad_aritmetica|divi|LessThan2~13_cout\ & \B[7]~input_o\)) # (!\inst|unidad_aritmetica|divi|Add1~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|LessThan2~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add1~14_combout\,
	datad => \B[7]~input_o\,
	cin => \inst|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X16_Y3_N14
\inst|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~5_combout\ = (\inst|Mux11~0_combout\ & (((\inst|Mux10~0_combout\)))) # (!\inst|Mux11~0_combout\ & ((\inst|Mux10~0_combout\ & (\inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\)) # (!\inst|Mux10~0_combout\ & 
-- ((\inst|unidad_aritmetica|suma|s1|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|suma|s1|Suma~combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux8~5_combout\);

-- Location: LCCOMB_X17_Y3_N24
\inst|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~6_combout\ = (\inst|Mux11~0_combout\ & ((\inst|Mux8~5_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan2~14_combout\))) # (!\inst|Mux8~5_combout\ & (!\inst|unidad_aritmetica|resta|s1|Suma~combout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((\inst|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s1|Suma~combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|Mux8~5_combout\,
	combout => \inst|Mux8~6_combout\);

-- Location: LCCOMB_X18_Y5_N28
\inst|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~8_combout\ = (\inst|Mux8~7_combout\ & ((\inst|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\) # ((!\inst|Mux5~4_combout\)))) # (!\inst|Mux8~7_combout\ & (((\inst|Mux5~4_combout\ & \inst|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	datab => \inst|Mux8~7_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst|Mux8~6_combout\,
	combout => \inst|Mux8~8_combout\);

-- Location: LCCOMB_X18_Y5_N30
\inst|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~9_combout\ = (\inst|Mux8~8_combout\) # ((!\inst|Mux5~4_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~4_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|Mux8~8_combout\,
	combout => \inst|Mux8~9_combout\);

-- Location: LCCOMB_X16_Y3_N26
\inst|unidad_aritmetica|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux9~8_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (((\inst|unidad_aritmetica|resta|s7|Cout~0_combout\) # (!\inst|Mux10~0_combout\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & ((\inst|unidad_aritmetica|resta|s7|Cout~0_combout\) # 
-- (!\inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|Mux9~8_combout\);

-- Location: LCCOMB_X16_Y3_N8
\inst|unidad_aritmetica|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux9~7_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (((!\inst|Mux10~0_combout\ & \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))) # (!\B[0]~input_o\ & (!\inst|Mux10~0_combout\ & 
-- (\inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \A[0]~input_o\,
	combout => \inst|unidad_aritmetica|Mux9~7_combout\);

-- Location: LCCOMB_X16_Y3_N4
\inst|unidad_aritmetica|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|Mux9~6_combout\ = (\inst|Mux10~0_combout\ & ((\inst|unidad_aritmetica|Mux9~7_combout\) # ((\inst|Mux11~0_combout\)))) # (!\inst|Mux10~0_combout\ & (((!\inst|Mux11~0_combout\ & \inst|unidad_aritmetica|suma|s0|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux9~7_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst|unidad_aritmetica|suma|s0|Suma~combout\,
	combout => \inst|unidad_aritmetica|Mux9~6_combout\);

-- Location: LCCOMB_X22_Y3_N4
\inst|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~0_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[1]~input_o\) # (GND)))
-- \inst|unidad_aritmetica|divi|Add2~1\ = CARRY((\A[1]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	combout => \inst|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X22_Y3_N6
\inst|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~2_combout\ = (\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst|unidad_aritmetica|divi|Add2~1\)) # (!\inst|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|unidad_aritmetica|divi|Add2~1\) # 
-- (GND))))) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst|unidad_aritmetica|divi|Add2~1\))))
-- \inst|unidad_aritmetica|divi|Add2~3\ = CARRY((\B[1]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add2~1\) # (!\inst|unidad_aritmetica|divi|Add1~20_combout\))) # (!\B[1]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~20_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X22_Y3_N8
\inst|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|unidad_aritmetica|divi|Add1~19_combout\ $ (\B[2]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|unidad_aritmetica|divi|Add1~19_combout\ & ((!\inst|unidad_aritmetica|divi|Add2~3\) # (!\B[2]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~19_combout\ & (!\B[2]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X22_Y3_N10
\inst|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~5\)) # (!\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\B[3]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~5\))))
-- \inst|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|unidad_aritmetica|divi|Add1~18_combout\ & (\B[3]~input_o\ & !\inst|unidad_aritmetica|divi|Add2~5\)) # (!\inst|unidad_aritmetica|divi|Add1~18_combout\ & ((\B[3]~input_o\) # 
-- (!\inst|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X22_Y3_N12
\inst|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|unidad_aritmetica|divi|Add1~17_combout\ $ (\B[4]~input_o\ $ (\inst|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|unidad_aritmetica|divi|Add1~17_combout\ & ((!\inst|unidad_aritmetica|divi|Add2~7\) # (!\B[4]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add1~17_combout\ & (!\B[4]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X22_Y3_N14
\inst|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~10_combout\ = (\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|unidad_aritmetica|divi|Add2~9\)) # (!\inst|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|unidad_aritmetica|divi|Add2~9\) # 
-- (GND))))) # (!\B[5]~input_o\ & ((\inst|unidad_aritmetica|divi|Add1~16_combout\ & (\inst|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|unidad_aritmetica|divi|Add2~9\))))
-- \inst|unidad_aritmetica|divi|Add2~11\ = CARRY((\B[5]~input_o\ & ((!\inst|unidad_aritmetica|divi|Add2~9\) # (!\inst|unidad_aritmetica|divi|Add1~16_combout\))) # (!\B[5]~input_o\ & (!\inst|unidad_aritmetica|divi|Add1~16_combout\ & 
-- !\inst|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X22_Y3_N16
\inst|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~12_combout\ = \B[6]~input_o\ $ (\inst|unidad_aritmetica|divi|Add1~15_combout\ $ (\inst|unidad_aritmetica|divi|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X22_Y3_N24
\inst|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add1~15_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add1~15_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~12_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X22_Y3_N30
\inst|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~15_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add1~16_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datab => \inst|unidad_aritmetica|divi|Add1~16_combout\,
	datac => \inst|unidad_aritmetica|divi|Add2~10_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~16_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add1~17_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~8_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X22_Y3_N28
\inst|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add1~18_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add1~18_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X22_Y3_N18
\inst|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|unidad_aritmetica|divi|Add1~19_combout\))) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|unidad_aritmetica|divi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~4_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add1~19_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X22_Y3_N20
\inst|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add1~20_combout\)) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add1~20_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|unidad_aritmetica|divi|Add2~2_combout\,
	combout => \inst|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X22_Y3_N22
\inst|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\A[1]~input_o\))) # (!\inst|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|unidad_aritmetica|divi|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~0_combout\,
	datac => \inst|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \A[1]~input_o\,
	combout => \inst|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X23_Y3_N10
\inst|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \inst|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X23_Y3_N12
\inst|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\B[1]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~20_combout\ & !\inst|unidad_aritmetica|divi|LessThan3~1_cout\)) # (!\B[1]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~20_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~20_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X23_Y3_N14
\inst|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\B[2]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|unidad_aritmetica|divi|Add2~19_combout\))) # (!\B[2]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~19_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X23_Y3_N16
\inst|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\B[3]~input_o\ & (\inst|unidad_aritmetica|divi|Add2~18_combout\ & !\inst|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\B[3]~input_o\ & ((\inst|unidad_aritmetica|divi|Add2~18_combout\) # 
-- (!\inst|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X23_Y3_N18
\inst|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~7_cout\) # (!\inst|unidad_aritmetica|divi|Add2~17_combout\))) # (!\B[4]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~17_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~17_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X23_Y3_N20
\inst|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|unidad_aritmetica|divi|Add2~16_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~9_cout\) # (!\B[5]~input_o\))) # (!\inst|unidad_aritmetica|divi|Add2~16_combout\ & (!\B[5]~input_o\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X23_Y3_N22
\inst|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\B[6]~input_o\ & ((!\inst|unidad_aritmetica|divi|LessThan3~11_cout\) # (!\inst|unidad_aritmetica|divi|Add2~15_combout\))) # (!\B[6]~input_o\ & (!\inst|unidad_aritmetica|divi|Add2~15_combout\ & 
-- !\inst|unidad_aritmetica|divi|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \inst|unidad_aritmetica|divi|Add2~15_combout\,
	datad => VCC,
	cin => \inst|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X23_Y3_N24
\inst|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|unidad_aritmetica|divi|Add2~14_combout\ & (\inst|unidad_aritmetica|divi|LessThan3~13_cout\ & \B[7]~input_o\)) # (!\inst|unidad_aritmetica|divi|Add2~14_combout\ & 
-- ((\inst|unidad_aritmetica|divi|LessThan3~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|unidad_aritmetica|divi|Add2~14_combout\,
	datad => \B[7]~input_o\,
	cin => \inst|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X16_Y3_N6
\inst|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~3_combout\ = (\inst|Mux11~0_combout\ & ((\inst|unidad_aritmetica|Mux9~6_combout\ & ((!\inst|unidad_aritmetica|divi|LessThan3~14_combout\))) # (!\inst|unidad_aritmetica|Mux9~6_combout\ & (\inst|unidad_aritmetica|Mux9~8_combout\)))) # 
-- (!\inst|Mux11~0_combout\ & (((\inst|unidad_aritmetica|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_aritmetica|Mux9~8_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst|unidad_aritmetica|Mux9~6_combout\,
	datad => \inst|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|Mux9~3_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~28_combout\ = (\A[0]~input_o\ & (\inst|Mux11~0_combout\)) # (!\A[0]~input_o\ & ((\inst|Mux10~0_combout\) # ((\inst|Mux11~0_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \A[0]~input_o\,
	datac => \inst|Mux10~0_combout\,
	datad => \B[0]~input_o\,
	combout => \inst|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst|unidad_logica|aux[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|aux[0]~28_combout\ = (\inst|Mux11~0_combout\ & ((\inst|Mux10~0_combout\ & ((\A[0]~input_o\))) # (!\inst|Mux10~0_combout\ & (\inst|unidad_logica|aux\(0))))) # (!\inst|Mux11~0_combout\ & (((\inst|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst|unidad_logica|aux\(0),
	datad => \A[0]~input_o\,
	combout => \inst|unidad_logica|aux[0]~28_combout\);

-- Location: FF_X17_Y4_N7
\inst|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|aux[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|aux\(0));

-- Location: LCCOMB_X17_Y4_N2
\inst|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|unidad_logica|salida~29_combout\ = (\inst|unidad_logica|salida~28_combout\ & (((\inst|unidad_aritmetica|Mux13~1_combout\) # (\inst|unidad_logica|aux\(0))))) # (!\inst|unidad_logica|salida~28_combout\ & (\inst|unidad_logica|salida~1_combout\ & 
-- (!\inst|unidad_aritmetica|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|unidad_logica|salida~1_combout\,
	datab => \inst|unidad_logica|salida~28_combout\,
	datac => \inst|unidad_aritmetica|Mux13~1_combout\,
	datad => \inst|unidad_logica|aux\(0),
	combout => \inst|unidad_logica|salida~29_combout\);

-- Location: FF_X17_Y4_N3
\inst|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|reloj|salida~clkctrl_outclk\,
	d => \inst|unidad_logica|salida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|unidad_logica|salida\(0));

-- Location: LCCOMB_X14_Y4_N22
\inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = (\sel[3]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\)) # (!\sel[3]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \inst|Mux9~1_combout\);

-- Location: LCCOMB_X14_Y4_N16
\inst|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~2_combout\ = (\sel[3]~input_o\ & ((\sel[2]~input_o\) # ((\inst|Mux9~1_combout\)))) # (!\sel[3]~input_o\ & (\inst|unidad_logica|salida\(0) & (\sel[2]~input_o\ $ (\inst|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inst|unidad_logica|salida\(0),
	datac => \sel[3]~input_o\,
	datad => \inst|Mux9~1_combout\,
	combout => \inst|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y4_N10
\inst|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~4_combout\ = (\inst|Mux9~2_combout\) # ((\inst|Mux9~0_combout\ & \inst|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~0_combout\,
	datac => \inst|Mux9~3_combout\,
	datad => \inst|Mux9~2_combout\,
	combout => \inst|Mux9~4_combout\);

ww_zero_f <= \zero_f~output_o\;

ww_sign_f <= \sign_f~output_o\;

ww_overflow_f <= \overflow_f~output_o\;

ww_carry_f <= \carry_f~output_o\;

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


