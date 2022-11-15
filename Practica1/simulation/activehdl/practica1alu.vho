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

-- DATE "11/02/2022 23:17:24"

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

ENTITY 	practica1alu IS
    PORT (
	d1 : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	sel_op : IN std_logic_vector(1 DOWNTO 0);
	d2 : OUT std_logic;
	d3 : OUT std_logic;
	d4 : OUT std_logic;
	a_seg : OUT std_logic;
	b_seg : OUT std_logic;
	c_seg : OUT std_logic;
	d_seg : OUT std_logic;
	e_seg : OUT std_logic;
	f_seg : OUT std_logic;
	g_seg : OUT std_logic
	);
END practica1alu;

-- Design Ports Information
-- d1	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_seg	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_seg	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_seg	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_seg	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_seg	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_seg	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_seg	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica1alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_a_seg : std_logic;
SIGNAL ww_b_seg : std_logic;
SIGNAL ww_c_seg : std_logic;
SIGNAL ww_d_seg : std_logic;
SIGNAL ww_e_seg : std_logic;
SIGNAL ww_f_seg : std_logic;
SIGNAL ww_g_seg : std_logic;
SIGNAL \inst3|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \a_seg~output_o\ : std_logic;
SIGNAL \b_seg~output_o\ : std_logic;
SIGNAL \c_seg~output_o\ : std_logic;
SIGNAL \d_seg~output_o\ : std_logic;
SIGNAL \e_seg~output_o\ : std_logic;
SIGNAL \f_seg~output_o\ : std_logic;
SIGNAL \g_seg~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|cuenta~4_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|cuenta~3_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|cuenta~2_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|cuenta~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|cuenta~0_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|cuenta~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|salida~0_combout\ : std_logic;
SIGNAL \inst3|salida~feeder_combout\ : std_logic;
SIGNAL \inst3|salida~q\ : std_logic;
SIGNAL \inst3|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|contador[0]~18_combout\ : std_logic;
SIGNAL \inst2|contador[1]~6_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|message~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|multiplicacion|and_aux1[2]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder3|S~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \sel_op[1]~input_o\ : std_logic;
SIGNAL \sel_op[0]~input_o\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|sumador|fullAdder2|Cout~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder3|S~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder2|Cout~0_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|sumador|fullAdder3|Cout~0_combout\ : std_logic;
SIGNAL \inst|sumador|fullAdder4|Cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst|sumador|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|sumador|fullAdder6|Cout~0_combout\ : std_logic;
SIGNAL \inst|sumador|fullAdder7|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst|restador|fullAdder3|Cout~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder4|Cout~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder6|Cout~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder7|Cout~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|sumador|fullAdder1|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder5|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder4|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder5|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder4|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder6|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder6|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder6|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma2|fullAdder7|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder7|S~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder5|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder6|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder7|Cout~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma3|fullAdder8|S~combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder8|Cout~0_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder8|S~combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|digitos~0_combout\ : std_logic;
SIGNAL \inst1|digitos~1_combout\ : std_logic;
SIGNAL \inst1|digitos~2_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder2|S~0_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma1|fullAdder2|S~0_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|digitos~3_combout\ : std_logic;
SIGNAL \inst1|digitos~4_combout\ : std_logic;
SIGNAL \inst1|digitos~5_combout\ : std_logic;
SIGNAL \inst1|digitos~14_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|digitos~13_combout\ : std_logic;
SIGNAL \inst1|digitos~15_combout\ : std_logic;
SIGNAL \inst1|digitos~16_combout\ : std_logic;
SIGNAL \inst1|digitos~17_combout\ : std_logic;
SIGNAL \inst1|digitos~7_combout\ : std_logic;
SIGNAL \inst1|digitos~6_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder4|S~0_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst1|digitos~8_combout\ : std_logic;
SIGNAL \inst1|digitos~18_combout\ : std_logic;
SIGNAL \inst1|digitos~19_combout\ : std_logic;
SIGNAL \inst1|digitos~22_combout\ : std_logic;
SIGNAL \inst1|digitos~20_combout\ : std_logic;
SIGNAL \inst1|digitos~11_combout\ : std_logic;
SIGNAL \inst1|digitos~10_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder5|S~0_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst1|digitos~9_combout\ : std_logic;
SIGNAL \inst1|digitos~21_combout\ : std_logic;
SIGNAL \inst2|l3~3_combout\ : std_logic;
SIGNAL \inst2|contador[1]~7\ : std_logic;
SIGNAL \inst2|contador[2]~8_combout\ : std_logic;
SIGNAL \inst2|contador[2]~9\ : std_logic;
SIGNAL \inst2|contador[3]~10_combout\ : std_logic;
SIGNAL \inst2|contador[3]~11\ : std_logic;
SIGNAL \inst2|contador[4]~12_combout\ : std_logic;
SIGNAL \inst2|contador[4]~13\ : std_logic;
SIGNAL \inst2|contador[5]~14_combout\ : std_logic;
SIGNAL \inst2|contador[5]~15\ : std_logic;
SIGNAL \inst2|contador[6]~16_combout\ : std_logic;
SIGNAL \inst2|message~2_combout\ : std_logic;
SIGNAL \inst2|message~1_combout\ : std_logic;
SIGNAL \inst2|seg[0]~3_combout\ : std_logic;
SIGNAL \inst2|seg[1]~5_combout\ : std_logic;
SIGNAL \inst2|message~3_combout\ : std_logic;
SIGNAL \inst2|seg[2]~11_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|seg[3]~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|Add10~1_combout\ : std_logic;
SIGNAL \inst2|l2~4_combout\ : std_logic;
SIGNAL \inst1|digitos~23_combout\ : std_logic;
SIGNAL \inst1|LessThan9~3_combout\ : std_logic;
SIGNAL \inst1|digitos~24_combout\ : std_logic;
SIGNAL \inst2|l3~6_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder6|S~0_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst1|digitos~25_combout\ : std_logic;
SIGNAL \inst1|digitos~12_combout\ : std_logic;
SIGNAL \inst1|digitos~26_combout\ : std_logic;
SIGNAL \inst2|l2~2_combout\ : std_logic;
SIGNAL \inst1|LessThan8~0_combout\ : std_logic;
SIGNAL \inst1|Add11~1_combout\ : std_logic;
SIGNAL \inst2|l1~5_combout\ : std_logic;
SIGNAL \inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Mux4~3_combout\ : std_logic;
SIGNAL \inst2|message~10_combout\ : std_logic;
SIGNAL \inst2|seg[1]~6\ : std_logic;
SIGNAL \inst2|seg[1]~8_cout\ : std_logic;
SIGNAL \inst2|seg[1]~10_cout\ : std_logic;
SIGNAL \inst2|var[4]~20_combout\ : std_logic;
SIGNAL \inst2|var[4]~21\ : std_logic;
SIGNAL \inst2|var[5]~22_combout\ : std_logic;
SIGNAL \inst2|var[5]~23\ : std_logic;
SIGNAL \inst2|var[6]~24_combout\ : std_logic;
SIGNAL \inst2|var[6]~25\ : std_logic;
SIGNAL \inst2|var[7]~26_combout\ : std_logic;
SIGNAL \inst2|var[7]~27\ : std_logic;
SIGNAL \inst2|var[8]~28_combout\ : std_logic;
SIGNAL \inst2|var[8]~29\ : std_logic;
SIGNAL \inst2|var[9]~30_combout\ : std_logic;
SIGNAL \inst2|var[9]~31\ : std_logic;
SIGNAL \inst2|var[10]~32_combout\ : std_logic;
SIGNAL \inst2|var[10]~33\ : std_logic;
SIGNAL \inst2|var[11]~34_combout\ : std_logic;
SIGNAL \inst2|var[11]~35\ : std_logic;
SIGNAL \inst2|var[12]~36_combout\ : std_logic;
SIGNAL \inst2|var[12]~37\ : std_logic;
SIGNAL \inst2|var[13]~38_combout\ : std_logic;
SIGNAL \inst2|var[13]~39\ : std_logic;
SIGNAL \inst2|var[14]~40_combout\ : std_logic;
SIGNAL \inst2|var[14]~41\ : std_logic;
SIGNAL \inst2|var[15]~42_combout\ : std_logic;
SIGNAL \inst2|var[15]~43\ : std_logic;
SIGNAL \inst2|var[16]~44_combout\ : std_logic;
SIGNAL \inst2|var[16]~45\ : std_logic;
SIGNAL \inst2|var[17]~46_combout\ : std_logic;
SIGNAL \inst2|var[17]~47\ : std_logic;
SIGNAL \inst2|var[18]~48_combout\ : std_logic;
SIGNAL \inst2|var[18]~49\ : std_logic;
SIGNAL \inst2|var[19]~50_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|var[19]~51\ : std_logic;
SIGNAL \inst2|var[20]~52_combout\ : std_logic;
SIGNAL \inst2|var[20]~53\ : std_logic;
SIGNAL \inst2|var[21]~54_combout\ : std_logic;
SIGNAL \inst2|var[21]~55\ : std_logic;
SIGNAL \inst2|var[22]~56_combout\ : std_logic;
SIGNAL \inst2|var[22]~57\ : std_logic;
SIGNAL \inst2|var[23]~58_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|message[18]~5_combout\ : std_logic;
SIGNAL \inst2|message~11_combout\ : std_logic;
SIGNAL \inst2|l4~1_combout\ : std_logic;
SIGNAL \inst2|message~14_combout\ : std_logic;
SIGNAL \inst2|message~12_combout\ : std_logic;
SIGNAL \inst2|message~9_combout\ : std_logic;
SIGNAL \inst2|l2~1_combout\ : std_logic;
SIGNAL \inst2|l1~3_combout\ : std_logic;
SIGNAL \inst1|LessThan9~2_combout\ : std_logic;
SIGNAL \inst2|l3~4_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Add11~0_combout\ : std_logic;
SIGNAL \inst2|message~6_combout\ : std_logic;
SIGNAL \inst2|message~7_combout\ : std_logic;
SIGNAL \inst2|l4~0_combout\ : std_logic;
SIGNAL \inst2|message~13_combout\ : std_logic;
SIGNAL \inst2|message~8_combout\ : std_logic;
SIGNAL \inst2|message~4_combout\ : std_logic;
SIGNAL \inst2|l2~0_combout\ : std_logic;
SIGNAL \inst1|Add10~0_combout\ : std_logic;
SIGNAL \inst2|l3~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst|restador|fullAdder7|S~0_combout\ : std_logic;
SIGNAL \inst2|l1~0_combout\ : std_logic;
SIGNAL \inst|multiplicacion|suma4|fullAdder7|S~combout\ : std_logic;
SIGNAL \inst2|l1~1_combout\ : std_logic;
SIGNAL \inst2|l1~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|l2~3_combout\ : std_logic;
SIGNAL \inst2|l1~4_combout\ : std_logic;
SIGNAL \inst2|l3~5_combout\ : std_logic;
SIGNAL \inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Mux5~3_combout\ : std_logic;
SIGNAL \inst2|letra|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|ledsito~0_combout\ : std_logic;
SIGNAL \inst2|ledsito~1_combout\ : std_logic;
SIGNAL \inst2|ledsito~q\ : std_logic;
SIGNAL \inst2|letra|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|letra|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|letra|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|letra|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|letra|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|var\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst2|contador\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|seg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|selector\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|multiplicacion|and_aux1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|l2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|multiplicacion|and_aux3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|l3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|multiplicacion|and_aux5\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|l4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|l1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|message\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|letra|ALT_INV_Mux5~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

d1 <= ww_d1;
ww_clk <= clk;
ww_rst <= rst;
ww_A <= A;
ww_B <= B;
ww_sel_op <= sel_op;
d2 <= ww_d2;
d3 <= ww_d3;
d4 <= ww_d4;
a_seg <= ww_a_seg;
b_seg <= ww_b_seg;
c_seg <= ww_c_seg;
d_seg <= ww_d_seg;
e_seg <= ww_e_seg;
f_seg <= ww_f_seg;
g_seg <= ww_g_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|salida~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst2|letra|ALT_INV_Mux5~1_combout\ <= NOT \inst2|letra|Mux5~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N16
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|selector\(0),
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\d2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|selector\(1),
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\d3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|selector\(2),
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\d4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|selector\(3),
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\a_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \a_seg~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\b_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \b_seg~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\c_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \c_seg~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\d_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \d_seg~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\e_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \e_seg~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\f_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \f_seg~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\g_seg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|letra|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \g_seg~output_o\);

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

-- Location: LCCOMB_X19_Y6_N6
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|cuenta\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X19_Y6_N8
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|cuenta\(1) & (!\inst3|Add0~1\)) # (!\inst3|cuenta\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: FF_X19_Y6_N9
\inst3|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(1));

-- Location: LCCOMB_X19_Y6_N10
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|cuenta\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|cuenta\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|cuenta\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X19_Y6_N11
\inst3|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(2));

-- Location: LCCOMB_X19_Y6_N12
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|cuenta\(3) & (!\inst3|Add0~5\)) # (!\inst3|cuenta\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X19_Y6_N13
\inst3|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(3));

-- Location: LCCOMB_X19_Y6_N14
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|cuenta\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|cuenta\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|cuenta\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X19_Y6_N15
\inst3|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(4));

-- Location: LCCOMB_X19_Y6_N16
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|cuenta\(5) & (!\inst3|Add0~9\)) # (!\inst3|cuenta\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: FF_X19_Y6_N17
\inst3|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(5));

-- Location: LCCOMB_X19_Y6_N18
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|cuenta\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|cuenta\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|cuenta\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X19_Y6_N19
\inst3|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(6));

-- Location: LCCOMB_X19_Y6_N20
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|cuenta\(7) & (!\inst3|Add0~13\)) # (!\inst3|cuenta\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X18_Y6_N30
\inst3|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~4_combout\ = (\inst3|Add0~14_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|Add0~14_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|cuenta~4_combout\);

-- Location: FF_X18_Y6_N31
\inst3|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(7));

-- Location: LCCOMB_X19_Y6_N22
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|cuenta\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|cuenta\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|cuenta\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X19_Y6_N23
\inst3|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(8));

-- Location: LCCOMB_X19_Y6_N24
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|cuenta\(9) & (!\inst3|Add0~17\)) # (!\inst3|cuenta\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X19_Y6_N25
\inst3|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(9));

-- Location: LCCOMB_X19_Y6_N26
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|cuenta\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|cuenta\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|cuenta\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X19_Y6_N27
\inst3|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(10));

-- Location: LCCOMB_X19_Y6_N28
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|cuenta\(11) & (!\inst3|Add0~21\)) # (!\inst3|cuenta\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X19_Y6_N2
\inst3|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~3_combout\ = (\inst3|Add0~22_combout\ & ((!\inst3|Equal0~7_combout\) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~7_combout\,
	datad => \inst3|Add0~22_combout\,
	combout => \inst3|cuenta~3_combout\);

-- Location: FF_X19_Y6_N3
\inst3|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(11));

-- Location: LCCOMB_X19_Y6_N30
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|cuenta\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|cuenta\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|cuenta\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X19_Y6_N4
\inst3|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~2_combout\ = (\inst3|Add0~24_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|Add0~24_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|cuenta~2_combout\);

-- Location: FF_X19_Y6_N5
\inst3|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(12));

-- Location: LCCOMB_X19_Y5_N0
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|cuenta\(13) & (!\inst3|Add0~25\)) # (!\inst3|cuenta\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X19_Y5_N26
\inst3|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~1_combout\ = (\inst3|Add0~26_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~7_combout\,
	datac => \inst3|Equal0~4_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|cuenta~1_combout\);

-- Location: FF_X19_Y5_N27
\inst3|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(13));

-- Location: LCCOMB_X18_Y6_N26
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (\inst3|cuenta\(12) & (!\inst3|cuenta\(10) & (\inst3|cuenta\(13) & \inst3|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(12),
	datab => \inst3|cuenta\(10),
	datac => \inst3|cuenta\(13),
	datad => \inst3|cuenta\(11),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y5_N2
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|cuenta\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|cuenta\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|cuenta\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: FF_X19_Y5_N3
\inst3|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(14));

-- Location: LCCOMB_X19_Y5_N4
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|cuenta\(15) & (!\inst3|Add0~29\)) # (!\inst3|cuenta\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: FF_X19_Y5_N5
\inst3|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(15));

-- Location: LCCOMB_X19_Y5_N6
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|cuenta\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|cuenta\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|cuenta\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X19_Y5_N30
\inst3|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~0_combout\ = (\inst3|Add0~32_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~7_combout\,
	datac => \inst3|Equal0~4_combout\,
	datad => \inst3|Add0~32_combout\,
	combout => \inst3|cuenta~0_combout\);

-- Location: FF_X19_Y5_N31
\inst3|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(16));

-- Location: LCCOMB_X19_Y5_N8
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|cuenta\(17) & (!\inst3|Add0~33\)) # (!\inst3|cuenta\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: FF_X19_Y5_N9
\inst3|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~34_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(17));

-- Location: LCCOMB_X19_Y5_N10
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|cuenta\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|cuenta\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|cuenta\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: FF_X19_Y5_N11
\inst3|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~36_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(18));

-- Location: LCCOMB_X19_Y5_N12
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|cuenta\(19) & (!\inst3|Add0~37\)) # (!\inst3|cuenta\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: FF_X19_Y5_N13
\inst3|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(19));

-- Location: LCCOMB_X19_Y5_N14
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|cuenta\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|cuenta\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|cuenta\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: FF_X19_Y5_N15
\inst3|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(20));

-- Location: LCCOMB_X19_Y5_N16
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|cuenta\(21) & (!\inst3|Add0~41\)) # (!\inst3|cuenta\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: FF_X19_Y5_N17
\inst3|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(21));

-- Location: LCCOMB_X19_Y5_N18
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|cuenta\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|cuenta\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|cuenta\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: FF_X19_Y5_N19
\inst3|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(22));

-- Location: LCCOMB_X19_Y5_N20
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|cuenta\(23) & (!\inst3|Add0~45\)) # (!\inst3|cuenta\(23) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cuenta\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: FF_X19_Y5_N21
\inst3|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(23));

-- Location: LCCOMB_X19_Y5_N22
\inst3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|cuenta\(24) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|cuenta\(24) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|cuenta\(24) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: FF_X19_Y5_N23
\inst3|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(24));

-- Location: LCCOMB_X19_Y5_N24
\inst3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = \inst3|Add0~49\ $ (\inst3|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|cuenta\(25),
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\);

-- Location: FF_X19_Y5_N25
\inst3|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(25));

-- Location: LCCOMB_X18_Y5_N0
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|cuenta\(23) & (!\inst3|cuenta\(24) & (!\inst3|cuenta\(25) & !\inst3|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(23),
	datab => \inst3|cuenta\(24),
	datac => \inst3|cuenta\(25),
	datad => \inst3|cuenta\(22),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y5_N28
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|cuenta\(16) & (!\inst3|cuenta\(15) & (!\inst3|cuenta\(17) & !\inst3|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(16),
	datab => \inst3|cuenta\(15),
	datac => \inst3|cuenta\(17),
	datad => \inst3|cuenta\(14),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y6_N18
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|cuenta\(19) & (!\inst3|cuenta\(21) & (!\inst3|cuenta\(20) & !\inst3|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(19),
	datab => \inst3|cuenta\(21),
	datac => \inst3|cuenta\(20),
	datad => \inst3|cuenta\(18),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y6_N12
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~3_combout\ & (\inst3|Equal0~0_combout\ & (\inst3|Equal0~2_combout\ & \inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y6_N0
\inst3|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cuenta~5_combout\ = (\inst3|Add0~0_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~0_combout\,
	datab => \inst3|Equal0~7_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|cuenta~5_combout\);

-- Location: FF_X19_Y6_N1
\inst3|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|cuenta~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cuenta\(0));

-- Location: LCCOMB_X18_Y6_N14
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|cuenta\(5) & (!\inst3|cuenta\(3) & (!\inst3|cuenta\(2) & !\inst3|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(5),
	datab => \inst3|cuenta\(3),
	datac => \inst3|cuenta\(2),
	datad => \inst3|cuenta\(4),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y6_N16
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|cuenta\(7) & (!\inst3|cuenta\(8) & (!\inst3|cuenta\(9) & !\inst3|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(7),
	datab => \inst3|cuenta\(8),
	datac => \inst3|cuenta\(9),
	datad => \inst3|cuenta\(6),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y6_N28
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|cuenta\(0) & (!\inst3|cuenta\(1) & (\inst3|Equal0~6_combout\ & \inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cuenta\(0),
	datab => \inst3|cuenta\(1),
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y6_N22
\inst3|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|salida~0_combout\ = \inst3|salida~q\ $ (((\inst3|Equal0~7_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|salida~q\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|salida~0_combout\);

-- Location: LCCOMB_X18_Y6_N24
\inst3|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|salida~feeder_combout\ = \inst3|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|salida~0_combout\,
	combout => \inst3|salida~feeder_combout\);

-- Location: FF_X18_Y6_N25
\inst3|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|salida~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|salida~q\);

-- Location: CLKCTRL_G7
\inst3|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|salida~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N12
\inst2|contador[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[0]~18_combout\ = !\inst2|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(0),
	combout => \inst2|contador[0]~18_combout\);

-- Location: FF_X14_Y14_N13
\inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(0));

-- Location: LCCOMB_X14_Y14_N14
\inst2|contador[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[1]~6_combout\ = (\inst2|contador\(1) & (\inst2|contador\(0) $ (VCC))) # (!\inst2|contador\(1) & (\inst2|contador\(0) & VCC))
-- \inst2|contador[1]~7\ = CARRY((\inst2|contador\(1) & \inst2|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datab => \inst2|contador\(0),
	datad => VCC,
	combout => \inst2|contador[1]~6_combout\,
	cout => \inst2|contador[1]~7\);

-- Location: FF_X14_Y14_N15
\inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(1));

-- Location: LCCOMB_X11_Y12_N4
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|contador\(1) & \inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~0_combout\);

-- Location: FF_X11_Y12_N5
\inst2|selector[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|selector\(0));

-- Location: LCCOMB_X11_Y12_N6
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|contador\(1) & !\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~1_combout\);

-- Location: FF_X11_Y12_N7
\inst2|selector[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|selector\(1));

-- Location: LCCOMB_X11_Y12_N0
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (!\inst2|contador\(1) & \inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~2_combout\);

-- Location: FF_X11_Y12_N1
\inst2|selector[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|selector\(2));

-- Location: LCCOMB_X12_Y12_N4
\inst2|message~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~0_combout\ = (!\inst2|contador\(1) & !\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|message~0_combout\);

-- Location: FF_X12_Y12_N5
\inst2|selector[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|selector\(3));

-- Location: IOIBUF_X0_Y6_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N26
\inst|multiplicacion|and_aux1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|and_aux1[2]~0_combout\ = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|and_aux1[2]~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N18
\inst|multiplicacion|suma1|fullAdder3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder3|S~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\ & ((!\A[4]~input_o\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma1|fullAdder3|S~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N8
\inst|multiplicacion|and_aux3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|and_aux3\(0) = (\B[2]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst|multiplicacion|and_aux3\(0));

-- Location: IOIBUF_X16_Y24_N15
\sel_op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_op(1),
	o => \sel_op[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\sel_op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_op(0),
	o => \sel_op[0]~input_o\);

-- Location: LCCOMB_X17_Y8_N12
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\sel_op[1]~input_o\ & \sel_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datac => \sel_op[0]~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (\inst|Mux2~0_combout\ & (\inst|multiplicacion|and_aux1[2]~0_combout\ $ (\inst|multiplicacion|suma1|fullAdder3|S~0_combout\ $ (\inst|multiplicacion|and_aux3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|and_aux1[2]~0_combout\,
	datab => \inst|multiplicacion|suma1|fullAdder3|S~0_combout\,
	datac => \inst|multiplicacion|and_aux3\(0),
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: IOIBUF_X30_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X18_Y4_N6
\inst|sumador|fullAdder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder2|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|sumador|fullAdder2|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N14
\inst|restador|fullAdder3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder3|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst|restador|fullAdder3|S~0_combout\);

-- Location: LCCOMB_X18_Y4_N10
\inst|restador|fullAdder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder2|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|restador|fullAdder2|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N24
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = \inst|restador|fullAdder3|S~0_combout\ $ (((\sel_op[0]~input_o\ & ((\inst|restador|fullAdder2|Cout~0_combout\))) # (!\sel_op[0]~input_o\ & (\inst|sumador|fullAdder2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sumador|fullAdder2|Cout~0_combout\,
	datab => \inst|restador|fullAdder3|S~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|restador|fullAdder2|Cout~0_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y8_N22
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|Mux7~2_combout\) # ((\sel_op[1]~input_o\ & (!\sel_op[0]~input_o\)) # (!\sel_op[1]~input_o\ & ((\inst|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~2_combout\,
	datab => \sel_op[0]~input_o\,
	datac => \sel_op[1]~input_o\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = \sel_op[0]~input_o\ $ (((\sel_op[1]~input_o\) # (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \sel_op[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = (\inst|Mux9~0_combout\) # ((\inst|Mux2~0_combout\ & (\A[4]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|Mux9~1_combout\);

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
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X18_Y4_N20
\inst|sumador|fullAdder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder3|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\inst|sumador|fullAdder2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|sumador|fullAdder2|Cout~0_combout\,
	combout => \inst|sumador|fullAdder3|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N18
\inst|sumador|fullAdder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder4|Cout~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\inst|sumador|fullAdder3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \inst|sumador|fullAdder3|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst|sumador|fullAdder4|Cout~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X17_Y4_N16
\inst|sumador|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder5|Cout~0_combout\ = (\A[4]~input_o\ & ((\inst|sumador|fullAdder4|Cout~0_combout\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst|sumador|fullAdder4|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst|sumador|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\inst|sumador|fullAdder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder6|Cout~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\inst|sumador|fullAdder5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|sumador|fullAdder5|Cout~0_combout\,
	combout => \inst|sumador|fullAdder6|Cout~0_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst|sumador|fullAdder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder7|Cout~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\inst|sumador|fullAdder6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|sumador|fullAdder6|Cout~0_combout\,
	combout => \inst|sumador|fullAdder7|Cout~0_combout\);

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

-- Location: LCCOMB_X18_Y4_N28
\inst|restador|fullAdder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder3|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\inst|restador|fullAdder2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|restador|fullAdder2|Cout~0_combout\,
	combout => \inst|restador|fullAdder3|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N14
\inst|restador|fullAdder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder4|Cout~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\inst|restador|fullAdder3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|restador|fullAdder3|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst|restador|fullAdder4|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\inst|restador|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder5|Cout~0_combout\ = (\A[4]~input_o\ & ((\inst|restador|fullAdder4|Cout~0_combout\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \inst|restador|fullAdder4|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst|restador|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst|restador|fullAdder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder6|Cout~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\inst|restador|fullAdder5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|restador|fullAdder5|Cout~0_combout\,
	combout => \inst|restador|fullAdder6|Cout~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst|restador|fullAdder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder7|Cout~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\inst|restador|fullAdder6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|restador|fullAdder6|Cout~0_combout\,
	combout => \inst|restador|fullAdder7|Cout~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\B[7]~input_o\) # ((\sel_op[0]~input_o\ & ((\inst|restador|fullAdder7|Cout~0_combout\))) # (!\sel_op[0]~input_o\ & (\inst|sumador|fullAdder7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[0]~input_o\,
	datab => \inst|sumador|fullAdder7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \inst|restador|fullAdder7|Cout~0_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X17_Y8_N22
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\sel_op[1]~input_o\ & (((!\sel_op[0]~input_o\)))) # (!\sel_op[1]~input_o\ & (\inst|Mux1~0_combout\ & ((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datab => \inst|Mux1~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y4_N0
\inst|multiplicacion|and_aux5[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|and_aux5\(4) = (\B[4]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst|multiplicacion|and_aux5\(4));

-- Location: LCCOMB_X18_Y4_N12
\inst|sumador|fullAdder1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sumador|fullAdder1|Cout~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|sumador|fullAdder1|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N12
\inst|multiplicacion|suma1|fullAdder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\ = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N0
\inst|multiplicacion|and_aux1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|and_aux1\(3) = (\B[0]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst|multiplicacion|and_aux1\(3));

-- Location: LCCOMB_X18_Y4_N2
\inst|multiplicacion|suma1|fullAdder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\ = (\A[2]~input_o\ & (\inst|multiplicacion|and_aux1\(3) & ((\inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|multiplicacion|and_aux1\(3),
	combout => \inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N8
\inst|multiplicacion|suma1|fullAdder5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder5|S~combout\ = \inst|sumador|fullAdder1|Cout~0_combout\ $ (\inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sumador|fullAdder1|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\,
	combout => \inst|multiplicacion|suma1|fullAdder5|S~combout\);

-- Location: LCCOMB_X18_Y4_N26
\inst|multiplicacion|suma1|fullAdder4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder4|S~combout\ = \inst|multiplicacion|and_aux1\(3) $ (((\A[2]~input_o\ & (\inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\ $ (\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|multiplicacion|and_aux1\(3),
	combout => \inst|multiplicacion|suma1|fullAdder4|S~combout\);

-- Location: LCCOMB_X19_Y4_N28
\inst|multiplicacion|suma2|fullAdder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\ = (\inst|multiplicacion|and_aux3\(0) & (\inst|multiplicacion|suma1|fullAdder3|S~0_combout\ $ (((\B[0]~input_o\ & \A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \inst|multiplicacion|suma1|fullAdder3|S~0_combout\,
	datac => \inst|multiplicacion|and_aux3\(0),
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N14
\inst|multiplicacion|suma2|fullAdder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\ = (\inst|multiplicacion|suma1|fullAdder4|S~combout\ & ((\inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\) # ((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder4|S~combout\,
	datab => \inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N20
\inst|multiplicacion|suma2|fullAdder5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder5|S~combout\ = \inst|multiplicacion|suma1|fullAdder5|S~combout\ $ (\inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder5|S~combout\,
	datab => \inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder5|S~combout\);

-- Location: LCCOMB_X19_Y4_N30
\inst|multiplicacion|suma2|fullAdder4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder4|S~combout\ = \inst|multiplicacion|suma1|fullAdder4|S~combout\ $ (\inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder4|S~combout\,
	datab => \inst|multiplicacion|suma2|fullAdder3|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder4|S~combout\);

-- Location: LCCOMB_X19_Y4_N24
\inst|multiplicacion|suma3|fullAdder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\ = (\inst|multiplicacion|suma2|fullAdder4|S~combout\ & (\A[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma2|fullAdder4|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N16
\inst|multiplicacion|suma3|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\ = (\inst|multiplicacion|suma2|fullAdder5|S~combout\ & ((\inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma2|fullAdder5|S~combout\,
	datab => \inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N6
\inst|multiplicacion|suma2|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\ = (\inst|multiplicacion|suma1|fullAdder5|S~combout\ & ((\inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\) # ((\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder5|S~combout\,
	datab => \inst|multiplicacion|suma2|fullAdder4|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N22
\inst|multiplicacion|suma1|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder5|Cout~0_combout\ = (\inst|sumador|fullAdder1|Cout~0_combout\ & ((\inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\) # ((\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sumador|fullAdder1|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|multiplicacion|suma1|fullAdder4|Cout~0_combout\,
	combout => \inst|multiplicacion|suma1|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X18_Y4_N4
\inst|multiplicacion|suma1|fullAdder6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder6|S~combout\ = \inst|multiplicacion|suma1|fullAdder5|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \inst|multiplicacion|suma1|fullAdder5|Cout~0_combout\,
	datad => \A[0]~input_o\,
	combout => \inst|multiplicacion|suma1|fullAdder6|S~combout\);

-- Location: LCCOMB_X21_Y4_N8
\inst|multiplicacion|suma2|fullAdder6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder6|S~combout\ = \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\ $ (\inst|multiplicacion|suma1|fullAdder6|S~combout\ $ (((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\,
	datab => \inst|multiplicacion|suma1|fullAdder6|S~combout\,
	datac => \B[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder6|S~combout\);

-- Location: LCCOMB_X21_Y4_N12
\inst|multiplicacion|suma3|fullAdder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\ = (\inst|multiplicacion|suma2|fullAdder6|S~combout\ & ((\inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\) # ((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\,
	datab => \inst|multiplicacion|suma2|fullAdder6|S~combout\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N16
\inst|multiplicacion|suma2|fullAdder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder6|Cout~0_combout\ = (\inst|multiplicacion|suma1|fullAdder6|S~combout\ & ((\inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\) # ((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma2|fullAdder5|Cout~0_combout\,
	datab => \inst|multiplicacion|suma1|fullAdder6|S~combout\,
	datac => \B[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder6|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N18
\inst|multiplicacion|suma2|fullAdder7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma2|fullAdder7|S~combout\ = \inst|multiplicacion|suma2|fullAdder6|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|multiplicacion|suma2|fullAdder6|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|multiplicacion|suma2|fullAdder7|S~combout\);

-- Location: LCCOMB_X21_Y4_N26
\inst|multiplicacion|suma3|fullAdder7|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder7|S~0_combout\ = \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\ $ (\inst|multiplicacion|suma2|fullAdder7|S~combout\ $ (((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\,
	datab => \inst|multiplicacion|suma2|fullAdder7|S~combout\,
	datac => \B[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder7|S~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst|multiplicacion|suma3|fullAdder5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder5|S~combout\ = \inst|multiplicacion|suma2|fullAdder5|S~combout\ $ (\inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma2|fullAdder5|S~combout\,
	datab => \inst|multiplicacion|suma3|fullAdder4|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder5|S~combout\);

-- Location: LCCOMB_X17_Y4_N26
\inst|multiplicacion|suma4|fullAdder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\ = (\A[4]~input_o\ & (\inst|multiplicacion|suma3|fullAdder5|S~combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \inst|multiplicacion|suma3|fullAdder5|S~combout\,
	datad => \B[4]~input_o\,
	combout => \inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N22
\inst|multiplicacion|suma3|fullAdder6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder6|S~combout\ = \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\ $ (\inst|multiplicacion|suma2|fullAdder6|S~combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder5|Cout~0_combout\,
	datab => \inst|multiplicacion|suma2|fullAdder6|S~combout\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder6|S~combout\);

-- Location: LCCOMB_X17_Y4_N22
\inst|multiplicacion|suma4|fullAdder6|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\ = (\inst|multiplicacion|suma3|fullAdder6|S~combout\ & ((\inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\) # ((\A[3]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \inst|multiplicacion|suma3|fullAdder6|S~combout\,
	combout => \inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\);

-- Location: LCCOMB_X21_Y4_N4
\inst|multiplicacion|suma4|fullAdder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\ = (\inst|multiplicacion|suma3|fullAdder7|S~0_combout\ & ((\inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\) # ((\B[4]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder7|S~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N10
\inst|multiplicacion|suma3|fullAdder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder7|Cout~0_combout\ = (\inst|multiplicacion|suma2|fullAdder7|S~combout\ & ((\inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\) # ((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder6|Cout~0_combout\,
	datab => \inst|multiplicacion|suma2|fullAdder7|S~combout\,
	datac => \B[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder7|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N20
\inst|multiplicacion|suma3|fullAdder8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma3|fullAdder8|S~combout\ = \inst|multiplicacion|suma3|fullAdder7|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder7|Cout~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|multiplicacion|suma3|fullAdder8|S~combout\);

-- Location: LCCOMB_X21_Y4_N6
\inst|multiplicacion|suma4|fullAdder8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder8|Cout~0_combout\ = (\inst|multiplicacion|suma3|fullAdder8|S~combout\ & ((\inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\) # ((\A[1]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\,
	datad => \inst|multiplicacion|suma3|fullAdder8|S~combout\,
	combout => \inst|multiplicacion|suma4|fullAdder8|Cout~0_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|Mux1~1_combout\) # ((\inst|Mux2~0_combout\ & (\inst|multiplicacion|and_aux5\(4) $ (\inst|multiplicacion|suma4|fullAdder8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|multiplicacion|and_aux5\(4),
	datac => \inst|multiplicacion|suma4|fullAdder8|Cout~0_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y8_N4
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\sel_op[1]~input_o\) # (\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\sel_op[1]~input_o\ & (((\sel_op[0]~input_o\)))) # (!\sel_op[1]~input_o\ & ((\sel_op[0]~input_o\ & ((\inst|restador|fullAdder7|Cout~0_combout\))) # (!\sel_op[0]~input_o\ & (\inst|sumador|fullAdder7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datab => \inst|sumador|fullAdder7|Cout~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|restador|fullAdder7|Cout~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y4_N24
\inst|multiplicacion|suma4|fullAdder8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder8|S~combout\ = \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\ $ (\inst|multiplicacion|suma3|fullAdder8|S~combout\ $ (((\A[1]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \inst|multiplicacion|suma4|fullAdder7|Cout~0_combout\,
	datad => \inst|multiplicacion|suma3|fullAdder8|S~combout\,
	combout => \inst|multiplicacion|suma4|fullAdder8|S~combout\);

-- Location: LCCOMB_X17_Y8_N14
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|Mux2~0_combout\ & ((\inst|multiplicacion|suma4|fullAdder8|S~combout\) # (\inst|Mux2~2_combout\ $ (\inst|Mux2~1_combout\)))) # (!\inst|Mux2~0_combout\ & (\inst|Mux2~2_combout\ $ ((\inst|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst|Mux2~2_combout\,
	datac => \inst|Mux2~1_combout\,
	datad => \inst|multiplicacion|suma4|fullAdder8|S~combout\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\sel_op[0]~input_o\) # (!\sel_op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datac => \sel_op[0]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst1|digitos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~0_combout\ = (!\inst|Mux9~1_combout\ & (\inst|Mux1~2_combout\ & (\inst|Mux2~3_combout\ $ (\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~1_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst1|digitos~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst1|digitos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~1_combout\ = (\inst|Mux9~1_combout\ & (\inst|Mux1~2_combout\)) # (!\inst|Mux9~1_combout\ & ((\inst|Mux2~3_combout\ $ (\inst|Mux0~0_combout\)) # (!\inst|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~1_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst1|digitos~1_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst1|digitos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~2_combout\ = (\inst|Mux1~2_combout\ & (\inst|Mux9~1_combout\ & (\inst|Mux2~3_combout\ $ (!\inst|Mux0~0_combout\)))) # (!\inst|Mux1~2_combout\ & (((\inst|Mux2~3_combout\ & \inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~1_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst1|digitos~2_combout\);

-- Location: LCCOMB_X18_Y4_N16
\inst|restador|fullAdder2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder2|S~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst|restador|fullAdder2|S~0_combout\);

-- Location: LCCOMB_X18_Y4_N30
\inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = \inst|restador|fullAdder2|S~0_combout\ $ (((\A[0]~input_o\ & ((\B[0]~input_o\) # (\sel_op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \inst|restador|fullAdder2|S~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|Mux8~3_combout\);

-- Location: LCCOMB_X19_Y4_N12
\inst|multiplicacion|suma1|fullAdder2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma1|fullAdder2|S~0_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\ $ (((\B[0]~input_o\ & \A[3]~input_o\))))) # (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|multiplicacion|suma1|fullAdder2|S~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = (\sel_op[1]~input_o\ & (((\inst|multiplicacion|suma1|fullAdder2|S~0_combout\) # (!\sel_op[0]~input_o\)))) # (!\sel_op[1]~input_o\ & (\inst|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~3_combout\,
	datab => \sel_op[1]~input_o\,
	datac => \inst|multiplicacion|suma1|fullAdder2|S~0_combout\,
	datad => \sel_op[0]~input_o\,
	combout => \inst|Mux8~2_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst1|digitos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~3_combout\ = (\inst1|digitos~2_combout\ & (((\inst1|digitos~1_combout\ & !\inst|Mux8~2_combout\)))) # (!\inst1|digitos~2_combout\ & (\inst1|digitos~0_combout\ & ((\inst|Mux8~2_combout\) # (!\inst1|digitos~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~0_combout\,
	datab => \inst1|digitos~1_combout\,
	datac => \inst1|digitos~2_combout\,
	datad => \inst|Mux8~2_combout\,
	combout => \inst1|digitos~3_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst1|digitos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~4_combout\ = (\inst1|digitos~0_combout\ & (\inst1|digitos~1_combout\ $ (((\inst|Mux8~2_combout\))))) # (!\inst1|digitos~0_combout\ & (!\inst1|digitos~1_combout\ & ((\inst|Mux8~2_combout\) # (!\inst1|digitos~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~0_combout\,
	datab => \inst1|digitos~1_combout\,
	datac => \inst1|digitos~2_combout\,
	datad => \inst|Mux8~2_combout\,
	combout => \inst1|digitos~4_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst1|digitos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~5_combout\ = (\inst1|digitos~0_combout\ & (((\inst|Mux8~2_combout\)))) # (!\inst1|digitos~0_combout\ & ((\inst1|digitos~2_combout\ & ((\inst1|digitos~1_combout\) # (\inst|Mux8~2_combout\))) # (!\inst1|digitos~2_combout\ & 
-- ((!\inst|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~0_combout\,
	datab => \inst1|digitos~1_combout\,
	datac => \inst1|digitos~2_combout\,
	datad => \inst|Mux8~2_combout\,
	combout => \inst1|digitos~5_combout\);

-- Location: LCCOMB_X18_Y8_N26
\inst1|digitos~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~14_combout\ = \inst1|digitos~3_combout\ $ ((((!\inst|Mux7~4_combout\ & \inst1|digitos~5_combout\)) # (!\inst1|digitos~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~4_combout\,
	datab => \inst1|digitos~3_combout\,
	datac => \inst1|digitos~4_combout\,
	datad => \inst1|digitos~5_combout\,
	combout => \inst1|digitos~14_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst|Mux9~1_combout\ & (\inst|Mux2~3_combout\ $ (\inst|Mux0~0_combout\)))) # (!\inst|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~1_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y8_N12
\inst1|digitos~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~13_combout\ = \inst1|digitos~0_combout\ $ ((((\inst1|digitos~1_combout\ & !\inst|Mux8~2_combout\)) # (!\inst1|digitos~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~0_combout\,
	datab => \inst1|digitos~1_combout\,
	datac => \inst1|digitos~2_combout\,
	datad => \inst|Mux8~2_combout\,
	combout => \inst1|digitos~13_combout\);

-- Location: LCCOMB_X11_Y14_N10
\inst1|digitos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~15_combout\ = (\inst1|digitos~14_combout\ & (!\inst1|LessThan1~0_combout\ & (\inst|Mux0~0_combout\ $ (!\inst1|digitos~13_combout\)))) # (!\inst1|digitos~14_combout\ & (\inst1|LessThan1~0_combout\ & (!\inst|Mux0~0_combout\ & 
-- \inst1|digitos~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~14_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~15_combout\);

-- Location: LCCOMB_X11_Y14_N28
\inst1|digitos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~16_combout\ = (\inst|Mux0~0_combout\ & (!\inst1|digitos~13_combout\ & ((\inst1|LessThan1~0_combout\) # (!\inst1|digitos~14_combout\)))) # (!\inst|Mux0~0_combout\ & (\inst1|digitos~13_combout\ & ((\inst1|digitos~14_combout\) # 
-- (!\inst1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~14_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~16_combout\);

-- Location: LCCOMB_X11_Y14_N26
\inst1|digitos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~17_combout\ = (\inst1|digitos~14_combout\ & ((\inst1|LessThan1~0_combout\ & (!\inst|Mux0~0_combout\ & \inst1|digitos~13_combout\)) # (!\inst1|LessThan1~0_combout\ & (\inst|Mux0~0_combout\ & !\inst1|digitos~13_combout\)))) # 
-- (!\inst1|digitos~14_combout\ & (\inst1|LessThan1~0_combout\ $ (((!\inst|Mux0~0_combout\ & \inst1|digitos~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~14_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~17_combout\);

-- Location: LCCOMB_X18_Y8_N10
\inst1|digitos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~7_combout\ = (\inst|Mux7~4_combout\ & ((\inst1|digitos~3_combout\) # ((\inst1|digitos~4_combout\)))) # (!\inst|Mux7~4_combout\ & (!\inst1|digitos~3_combout\ & ((\inst1|digitos~5_combout\) # (!\inst1|digitos~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~4_combout\,
	datab => \inst1|digitos~3_combout\,
	datac => \inst1|digitos~4_combout\,
	datad => \inst1|digitos~5_combout\,
	combout => \inst1|digitos~7_combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst1|digitos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~6_combout\ = (\inst|Mux7~4_combout\ & (((!\inst1|digitos~5_combout\)))) # (!\inst|Mux7~4_combout\ & ((\inst1|digitos~3_combout\ & ((\inst1|digitos~5_combout\))) # (!\inst1|digitos~3_combout\ & (!\inst1|digitos~4_combout\ & 
-- !\inst1|digitos~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~4_combout\,
	datab => \inst1|digitos~3_combout\,
	datac => \inst1|digitos~4_combout\,
	datad => \inst1|digitos~5_combout\,
	combout => \inst1|digitos~6_combout\);

-- Location: LCCOMB_X17_Y4_N30
\inst|restador|fullAdder4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder4|S~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst|restador|fullAdder4|S~0_combout\);

-- Location: LCCOMB_X18_Y4_N18
\inst|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = \inst|restador|fullAdder4|S~0_combout\ $ (((\sel_op[0]~input_o\ & (\inst|restador|fullAdder3|Cout~0_combout\)) # (!\sel_op[0]~input_o\ & ((\inst|sumador|fullAdder3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|restador|fullAdder3|Cout~0_combout\,
	datab => \inst|restador|fullAdder4|S~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|sumador|fullAdder3|Cout~0_combout\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y4_N22
\inst|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|Mux2~0_combout\ & (\inst|multiplicacion|suma2|fullAdder4|S~combout\ $ (((\B[3]~input_o\ & \A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst|multiplicacion|suma2|fullAdder4|S~combout\,
	datad => \A[4]~input_o\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (\inst|Mux6~2_combout\) # ((\sel_op[1]~input_o\ & ((!\sel_op[0]~input_o\))) # (!\sel_op[1]~input_o\ & (\inst|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~3_combout\,
	datab => \sel_op[0]~input_o\,
	datac => \sel_op[1]~input_o\,
	datad => \inst|Mux6~2_combout\,
	combout => \inst|Mux6~4_combout\);

-- Location: LCCOMB_X18_Y8_N0
\inst1|digitos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~8_combout\ = (\inst1|digitos~4_combout\ & (!\inst|Mux7~4_combout\ & ((\inst1|digitos~5_combout\)))) # (!\inst1|digitos~4_combout\ & (\inst1|digitos~3_combout\ & ((\inst|Mux7~4_combout\) # (!\inst1|digitos~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~4_combout\,
	datab => \inst1|digitos~3_combout\,
	datac => \inst1|digitos~4_combout\,
	datad => \inst1|digitos~5_combout\,
	combout => \inst1|digitos~8_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst1|digitos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~18_combout\ = \inst1|digitos~8_combout\ $ ((((\inst1|digitos~7_combout\ & !\inst|Mux6~4_combout\)) # (!\inst1|digitos~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~7_combout\,
	datab => \inst1|digitos~6_combout\,
	datac => \inst|Mux6~4_combout\,
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~18_combout\);

-- Location: LCCOMB_X11_Y14_N16
\inst1|digitos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~19_combout\ = (\inst1|digitos~15_combout\ & ((\inst1|digitos~17_combout\ $ (\inst1|digitos~18_combout\)))) # (!\inst1|digitos~15_combout\ & (\inst1|digitos~17_combout\ & ((!\inst1|digitos~18_combout\) # (!\inst1|digitos~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~16_combout\,
	datac => \inst1|digitos~17_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|digitos~19_combout\);

-- Location: LCCOMB_X11_Y14_N24
\inst1|digitos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~22_combout\ = (\inst1|digitos~16_combout\ & (((!\inst1|digitos~17_combout\ & \inst1|digitos~18_combout\)))) # (!\inst1|digitos~16_combout\ & (\inst1|digitos~15_combout\ & ((\inst1|digitos~17_combout\) # (!\inst1|digitos~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~16_combout\,
	datac => \inst1|digitos~17_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|digitos~22_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst1|digitos~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~20_combout\ = (\inst1|digitos~15_combout\ & (((\inst1|digitos~18_combout\)))) # (!\inst1|digitos~15_combout\ & ((\inst1|digitos~16_combout\ & (\inst1|digitos~17_combout\ & \inst1|digitos~18_combout\)) # (!\inst1|digitos~16_combout\ & 
-- ((!\inst1|digitos~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~16_combout\,
	datac => \inst1|digitos~17_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|digitos~20_combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst1|digitos~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~11_combout\ = (\inst1|digitos~6_combout\ & (\inst1|digitos~7_combout\ & (!\inst|Mux6~4_combout\))) # (!\inst1|digitos~6_combout\ & (\inst1|digitos~8_combout\ & ((\inst|Mux6~4_combout\) # (!\inst1|digitos~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~7_combout\,
	datab => \inst1|digitos~6_combout\,
	datac => \inst|Mux6~4_combout\,
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~11_combout\);

-- Location: LCCOMB_X18_Y8_N20
\inst1|digitos~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~10_combout\ = (\inst1|digitos~7_combout\ & (((!\inst|Mux6~4_combout\ & \inst1|digitos~8_combout\)))) # (!\inst1|digitos~7_combout\ & ((\inst|Mux6~4_combout\) # ((!\inst1|digitos~6_combout\ & !\inst1|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~7_combout\,
	datab => \inst1|digitos~6_combout\,
	datac => \inst|Mux6~4_combout\,
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~10_combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst|restador|fullAdder5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder5|S~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst|restador|fullAdder5|S~0_combout\);

-- Location: LCCOMB_X17_Y4_N24
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = \inst|restador|fullAdder5|S~0_combout\ $ (((\sel_op[0]~input_o\ & (\inst|restador|fullAdder4|Cout~0_combout\)) # (!\sel_op[0]~input_o\ & ((\inst|sumador|fullAdder4|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|restador|fullAdder5|S~0_combout\,
	datab => \inst|restador|fullAdder4|Cout~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|sumador|fullAdder4|Cout~0_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y4_N0
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|Mux2~0_combout\ & (\inst|multiplicacion|suma3|fullAdder5|S~combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder5|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y8_N30
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst|Mux5~2_combout\) # ((\sel_op[1]~input_o\ & ((!\sel_op[0]~input_o\))) # (!\sel_op[1]~input_o\ & (\inst|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~3_combout\,
	datab => \sel_op[0]~input_o\,
	datac => \sel_op[1]~input_o\,
	datad => \inst|Mux5~2_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst1|digitos~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~9_combout\ = (\inst1|digitos~6_combout\ & ((\inst|Mux6~4_combout\) # ((\inst1|digitos~7_combout\ & !\inst1|digitos~8_combout\)))) # (!\inst1|digitos~6_combout\ & ((\inst|Mux6~4_combout\ $ (!\inst1|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~7_combout\,
	datab => \inst1|digitos~6_combout\,
	datac => \inst|Mux6~4_combout\,
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~9_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst1|digitos~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~21_combout\ = \inst1|digitos~11_combout\ $ ((((!\inst|Mux5~4_combout\ & \inst1|digitos~9_combout\)) # (!\inst1|digitos~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|digitos~21_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst2|l3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l3~3_combout\ = (!\inst1|digitos~22_combout\ & (((!\inst1|digitos~20_combout\ & \inst1|digitos~21_combout\)) # (!\inst1|digitos~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~19_combout\,
	datab => \inst1|digitos~22_combout\,
	datac => \inst1|digitos~20_combout\,
	datad => \inst1|digitos~21_combout\,
	combout => \inst2|l3~3_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst2|contador[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[2]~8_combout\ = (\inst2|contador\(2) & (!\inst2|contador[1]~7\)) # (!\inst2|contador\(2) & ((\inst2|contador[1]~7\) # (GND)))
-- \inst2|contador[2]~9\ = CARRY((!\inst2|contador[1]~7\) # (!\inst2|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(2),
	datad => VCC,
	cin => \inst2|contador[1]~7\,
	combout => \inst2|contador[2]~8_combout\,
	cout => \inst2|contador[2]~9\);

-- Location: FF_X14_Y14_N17
\inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(2));

-- Location: LCCOMB_X14_Y14_N18
\inst2|contador[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[3]~10_combout\ = (\inst2|contador\(3) & (\inst2|contador[2]~9\ $ (GND))) # (!\inst2|contador\(3) & (!\inst2|contador[2]~9\ & VCC))
-- \inst2|contador[3]~11\ = CARRY((\inst2|contador\(3) & !\inst2|contador[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(3),
	datad => VCC,
	cin => \inst2|contador[2]~9\,
	combout => \inst2|contador[3]~10_combout\,
	cout => \inst2|contador[3]~11\);

-- Location: FF_X14_Y14_N19
\inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(3));

-- Location: LCCOMB_X14_Y14_N20
\inst2|contador[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[4]~12_combout\ = (\inst2|contador\(4) & (!\inst2|contador[3]~11\)) # (!\inst2|contador\(4) & ((\inst2|contador[3]~11\) # (GND)))
-- \inst2|contador[4]~13\ = CARRY((!\inst2|contador[3]~11\) # (!\inst2|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(4),
	datad => VCC,
	cin => \inst2|contador[3]~11\,
	combout => \inst2|contador[4]~12_combout\,
	cout => \inst2|contador[4]~13\);

-- Location: FF_X14_Y14_N21
\inst2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(4));

-- Location: LCCOMB_X14_Y14_N22
\inst2|contador[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[5]~14_combout\ = (\inst2|contador\(5) & (\inst2|contador[4]~13\ $ (GND))) # (!\inst2|contador\(5) & (!\inst2|contador[4]~13\ & VCC))
-- \inst2|contador[5]~15\ = CARRY((\inst2|contador\(5) & !\inst2|contador[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(5),
	datad => VCC,
	cin => \inst2|contador[4]~13\,
	combout => \inst2|contador[5]~14_combout\,
	cout => \inst2|contador[5]~15\);

-- Location: FF_X14_Y14_N23
\inst2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(5));

-- Location: LCCOMB_X14_Y14_N24
\inst2|contador[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[6]~16_combout\ = \inst2|contador[5]~15\ $ (\inst2|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|contador\(6),
	cin => \inst2|contador[5]~15\,
	combout => \inst2|contador[6]~16_combout\);

-- Location: FF_X14_Y14_N25
\inst2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|contador[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(6));

-- Location: LCCOMB_X14_Y14_N6
\inst2|message~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~2_combout\ = (\inst2|contador\(6) & (\inst2|contador\(5) & !\inst2|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(6),
	datac => \inst2|contador\(5),
	datad => \inst2|contador\(4),
	combout => \inst2|message~2_combout\);

-- Location: LCCOMB_X14_Y14_N8
\inst2|message~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~1_combout\ = (!\inst2|contador\(0) & (!\inst2|contador\(3) & (!\inst2|contador\(1) & \inst2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|contador\(3),
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(2),
	combout => \inst2|message~1_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst2|seg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~3_combout\ = \inst2|seg\(0) $ (((\inst2|message~2_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|seg\(0),
	datad => \inst2|message~1_combout\,
	combout => \inst2|seg[0]~3_combout\);

-- Location: FF_X12_Y14_N1
\inst2|seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|seg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|seg\(0));

-- Location: LCCOMB_X12_Y14_N10
\inst2|seg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~5_combout\ = (\inst2|seg\(1) & (\inst2|seg\(0) $ (VCC))) # (!\inst2|seg\(1) & (\inst2|seg\(0) & VCC))
-- \inst2|seg[1]~6\ = CARRY((\inst2|seg\(1) & \inst2|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(1),
	datab => \inst2|seg\(0),
	datad => VCC,
	combout => \inst2|seg[1]~5_combout\,
	cout => \inst2|seg[1]~6\);

-- Location: LCCOMB_X13_Y14_N8
\inst2|message~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~3_combout\ = (\inst2|LessThan0~0_combout\ & (\inst2|message~1_combout\ & \inst2|message~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|message~1_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~3_combout\);

-- Location: FF_X12_Y14_N11
\inst2|seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|seg[1]~5_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|seg\(1));

-- Location: LCCOMB_X13_Y14_N30
\inst2|seg[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~11_combout\ = \inst2|seg\(2) $ (((\inst2|seg\(1) & (\inst2|message~3_combout\ & \inst2|seg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(1),
	datab => \inst2|seg\(2),
	datac => \inst2|message~3_combout\,
	datad => \inst2|seg\(0),
	combout => \inst2|seg[2]~11_combout\);

-- Location: FF_X12_Y14_N3
\inst2|seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	asdata => \inst2|seg[2]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|seg\(2));

-- Location: LCCOMB_X11_Y14_N14
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|seg\(0) & \inst2|seg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seg\(0),
	datad => \inst2|seg\(1),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y14_N8
\inst2|seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~4_combout\ = \inst2|seg\(3) $ (((\inst2|seg\(2) & (\inst2|message~3_combout\ & \inst2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(2),
	datab => \inst2|message~3_combout\,
	datac => \inst2|seg\(3),
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|seg[3]~4_combout\);

-- Location: FF_X12_Y14_N9
\inst2|seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|seg\(3));

-- Location: LCCOMB_X12_Y14_N6
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\inst2|seg\(1)) # (!\inst2|seg\(3))) # (!\inst2|seg\(0))) # (!\inst2|seg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(2),
	datab => \inst2|seg\(0),
	datac => \inst2|seg\(3),
	datad => \inst2|seg\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y14_N8
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = ((!\inst1|digitos~17_combout\ & \inst1|digitos~18_combout\)) # (!\inst1|digitos~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|digitos~16_combout\,
	datac => \inst1|digitos~17_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X11_Y14_N20
\inst1|Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~1_combout\ = (\inst1|digitos~18_combout\ $ (((!\inst1|digitos~15_combout\ & \inst1|LessThan7~0_combout\)))) # (!\inst1|digitos~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~21_combout\,
	datac => \inst1|LessThan7~0_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|Add10~1_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst2|l2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l2~4_combout\ = (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~19_combout\ $ (((!\inst2|l3~3_combout\ & \inst1|Add10~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l3~3_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst1|Add10~1_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst2|l2~4_combout\);

-- Location: FF_X12_Y16_N3
\inst2|l2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l2\(3));

-- Location: LCCOMB_X11_Y14_N22
\inst1|digitos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~23_combout\ = (\inst1|LessThan1~0_combout\ & (((!\inst|Mux0~0_combout\ & \inst1|digitos~13_combout\)))) # (!\inst1|LessThan1~0_combout\ & ((\inst1|digitos~14_combout\ & (\inst|Mux0~0_combout\ & !\inst1|digitos~13_combout\)) # 
-- (!\inst1|digitos~14_combout\ & ((\inst|Mux0~0_combout\) # (!\inst1|digitos~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~14_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~23_combout\);

-- Location: LCCOMB_X11_Y14_N6
\inst1|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan9~3_combout\ = (!\sel_op[0]~input_o\ & (\sel_op[1]~input_o\ & ((!\inst1|digitos~13_combout\) # (!\inst1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[0]~input_o\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \sel_op[1]~input_o\,
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|LessThan9~3_combout\);

-- Location: LCCOMB_X11_Y14_N4
\inst1|digitos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~24_combout\ = \inst1|digitos~15_combout\ $ ((((!\inst1|digitos~17_combout\ & \inst1|digitos~18_combout\)) # (!\inst1|digitos~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~16_combout\,
	datac => \inst1|digitos~17_combout\,
	datad => \inst1|digitos~18_combout\,
	combout => \inst1|digitos~24_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst2|l3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l3~6_combout\ = (!\inst1|digitos~23_combout\ & (\inst1|LessThan9~3_combout\ & (!\inst2|LessThan0~0_combout\ & \inst1|digitos~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~23_combout\,
	datab => \inst1|LessThan9~3_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst1|digitos~24_combout\,
	combout => \inst2|l3~6_combout\);

-- Location: FF_X12_Y16_N27
\inst2|l3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l3\(3));

-- Location: LCCOMB_X17_Y4_N8
\inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = (\inst|Mux2~0_combout\ & (\inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\ $ (\inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\ $ (\inst|multiplicacion|suma3|fullAdder6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma1|fullAdder3|Cout~0_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst|multiplicacion|suma4|fullAdder5|Cout~0_combout\,
	datad => \inst|multiplicacion|suma3|fullAdder6|S~combout\,
	combout => \inst|Mux4~2_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst|restador|fullAdder6|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder6|S~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst|restador|fullAdder6|S~0_combout\);

-- Location: LCCOMB_X17_Y4_N4
\inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = \inst|restador|fullAdder6|S~0_combout\ $ (((\sel_op[0]~input_o\ & (\inst|restador|fullAdder5|Cout~0_combout\)) # (!\sel_op[0]~input_o\ & ((\inst|sumador|fullAdder5|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|restador|fullAdder6|S~0_combout\,
	datab => \inst|restador|fullAdder5|Cout~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|sumador|fullAdder5|Cout~0_combout\,
	combout => \inst|Mux4~3_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = (\inst|Mux4~2_combout\) # ((\sel_op[1]~input_o\ & (!\sel_op[0]~input_o\)) # (!\sel_op[1]~input_o\ & ((\inst|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datab => \inst|Mux4~2_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|Mux4~3_combout\,
	combout => \inst|Mux4~4_combout\);

-- Location: LCCOMB_X13_Y12_N18
\inst1|digitos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~25_combout\ = (\inst1|digitos~11_combout\ & (((\inst|Mux5~4_combout\)))) # (!\inst1|digitos~11_combout\ & ((\inst1|digitos~10_combout\ & ((\inst|Mux5~4_combout\) # (\inst1|digitos~9_combout\))) # (!\inst1|digitos~10_combout\ & 
-- (!\inst|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|digitos~25_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst1|digitos~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~12_combout\ = (\inst1|digitos~10_combout\ & (((!\inst|Mux5~4_combout\ & \inst1|digitos~9_combout\)))) # (!\inst1|digitos~10_combout\ & (\inst1|digitos~11_combout\ & ((\inst|Mux5~4_combout\) # (!\inst1|digitos~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|digitos~12_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst1|digitos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~26_combout\ = (\inst1|digitos~11_combout\ & ((\inst|Mux5~4_combout\ $ (\inst1|digitos~9_combout\)))) # (!\inst1|digitos~11_combout\ & (!\inst1|digitos~9_combout\ & ((\inst|Mux5~4_combout\) # (!\inst1|digitos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|digitos~26_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst2|l2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l2~2_combout\ = (!\inst1|digitos~12_combout\ & (((!\inst|Mux4~4_combout\ & \inst1|digitos~25_combout\)) # (!\inst1|digitos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~4_combout\,
	datab => \inst1|digitos~25_combout\,
	datac => \inst1|digitos~12_combout\,
	datad => \inst1|digitos~26_combout\,
	combout => \inst2|l2~2_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst1|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan8~0_combout\ = (!\inst1|digitos~11_combout\ & (((!\inst|Mux5~4_combout\ & \inst1|digitos~9_combout\)) # (!\inst1|digitos~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|LessThan8~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst1|Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add11~1_combout\ = (\inst|Mux4~4_combout\) # (\inst|Mux5~4_combout\ $ (!\inst1|LessThan8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~4_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|LessThan8~0_combout\,
	combout => \inst1|Add11~1_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst2|l1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~5_combout\ = (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~26_combout\ $ (((!\inst2|l2~2_combout\ & \inst1|Add11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l2~2_combout\,
	datab => \inst1|digitos~26_combout\,
	datac => \inst1|Add11~1_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l1~5_combout\);

-- Location: FF_X13_Y12_N13
\inst2|l1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l1\(3));

-- Location: LCCOMB_X12_Y16_N16
\inst2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~2_combout\ = (\inst2|contador\(0) & ((\inst2|contador\(1) & ((\inst2|l1\(3)))) # (!\inst2|contador\(1) & (\inst2|l3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l3\(3),
	datab => \inst2|contador\(1),
	datac => \inst2|l1\(3),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux4~2_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~3_combout\ = (\inst2|Mux4~2_combout\) # ((!\inst2|contador\(0) & (\inst2|l2\(3) & \inst2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|l2\(3),
	datac => \inst2|contador\(1),
	datad => \inst2|Mux4~2_combout\,
	combout => \inst2|Mux4~3_combout\);

-- Location: FF_X12_Y16_N13
\inst2|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(3));

-- Location: LCCOMB_X13_Y14_N6
\inst2|message~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~10_combout\ = (\inst2|message~2_combout\ & (\inst2|message~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(9),
	combout => \inst2|message~10_combout\);

-- Location: LCCOMB_X12_Y14_N12
\inst2|seg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~8_cout\ = CARRY((!\inst2|seg[1]~6\) # (!\inst2|seg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg\(2),
	datad => VCC,
	cin => \inst2|seg[1]~6\,
	cout => \inst2|seg[1]~8_cout\);

-- Location: LCCOMB_X12_Y14_N14
\inst2|seg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~10_cout\ = CARRY((\inst2|seg\(3) & !\inst2|seg[1]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg\(3),
	datad => VCC,
	cin => \inst2|seg[1]~8_cout\,
	cout => \inst2|seg[1]~10_cout\);

-- Location: LCCOMB_X12_Y14_N16
\inst2|var[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[4]~20_combout\ = (\inst2|var\(4) & (!\inst2|seg[1]~10_cout\)) # (!\inst2|var\(4) & ((\inst2|seg[1]~10_cout\) # (GND)))
-- \inst2|var[4]~21\ = CARRY((!\inst2|seg[1]~10_cout\) # (!\inst2|var\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(4),
	datad => VCC,
	cin => \inst2|seg[1]~10_cout\,
	combout => \inst2|var[4]~20_combout\,
	cout => \inst2|var[4]~21\);

-- Location: FF_X12_Y14_N17
\inst2|var[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[4]~20_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(4));

-- Location: LCCOMB_X12_Y14_N18
\inst2|var[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[5]~22_combout\ = (\inst2|var\(5) & (\inst2|var[4]~21\ $ (GND))) # (!\inst2|var\(5) & (!\inst2|var[4]~21\ & VCC))
-- \inst2|var[5]~23\ = CARRY((\inst2|var\(5) & !\inst2|var[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(5),
	datad => VCC,
	cin => \inst2|var[4]~21\,
	combout => \inst2|var[5]~22_combout\,
	cout => \inst2|var[5]~23\);

-- Location: FF_X12_Y14_N19
\inst2|var[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[5]~22_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(5));

-- Location: LCCOMB_X12_Y14_N20
\inst2|var[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[6]~24_combout\ = (\inst2|var\(6) & (!\inst2|var[5]~23\)) # (!\inst2|var\(6) & ((\inst2|var[5]~23\) # (GND)))
-- \inst2|var[6]~25\ = CARRY((!\inst2|var[5]~23\) # (!\inst2|var\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(6),
	datad => VCC,
	cin => \inst2|var[5]~23\,
	combout => \inst2|var[6]~24_combout\,
	cout => \inst2|var[6]~25\);

-- Location: FF_X12_Y14_N21
\inst2|var[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[6]~24_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(6));

-- Location: LCCOMB_X12_Y14_N22
\inst2|var[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[7]~26_combout\ = (\inst2|var\(7) & (\inst2|var[6]~25\ $ (GND))) # (!\inst2|var\(7) & (!\inst2|var[6]~25\ & VCC))
-- \inst2|var[7]~27\ = CARRY((\inst2|var\(7) & !\inst2|var[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(7),
	datad => VCC,
	cin => \inst2|var[6]~25\,
	combout => \inst2|var[7]~26_combout\,
	cout => \inst2|var[7]~27\);

-- Location: FF_X12_Y14_N23
\inst2|var[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[7]~26_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(7));

-- Location: LCCOMB_X12_Y14_N24
\inst2|var[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[8]~28_combout\ = (\inst2|var\(8) & (!\inst2|var[7]~27\)) # (!\inst2|var\(8) & ((\inst2|var[7]~27\) # (GND)))
-- \inst2|var[8]~29\ = CARRY((!\inst2|var[7]~27\) # (!\inst2|var\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(8),
	datad => VCC,
	cin => \inst2|var[7]~27\,
	combout => \inst2|var[8]~28_combout\,
	cout => \inst2|var[8]~29\);

-- Location: FF_X12_Y14_N25
\inst2|var[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[8]~28_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(8));

-- Location: LCCOMB_X12_Y14_N26
\inst2|var[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[9]~30_combout\ = (\inst2|var\(9) & (\inst2|var[8]~29\ $ (GND))) # (!\inst2|var\(9) & (!\inst2|var[8]~29\ & VCC))
-- \inst2|var[9]~31\ = CARRY((\inst2|var\(9) & !\inst2|var[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(9),
	datad => VCC,
	cin => \inst2|var[8]~29\,
	combout => \inst2|var[9]~30_combout\,
	cout => \inst2|var[9]~31\);

-- Location: FF_X12_Y14_N27
\inst2|var[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[9]~30_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(9));

-- Location: LCCOMB_X12_Y14_N28
\inst2|var[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[10]~32_combout\ = (\inst2|var\(10) & (!\inst2|var[9]~31\)) # (!\inst2|var\(10) & ((\inst2|var[9]~31\) # (GND)))
-- \inst2|var[10]~33\ = CARRY((!\inst2|var[9]~31\) # (!\inst2|var\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(10),
	datad => VCC,
	cin => \inst2|var[9]~31\,
	combout => \inst2|var[10]~32_combout\,
	cout => \inst2|var[10]~33\);

-- Location: FF_X12_Y14_N29
\inst2|var[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[10]~32_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(10));

-- Location: LCCOMB_X12_Y14_N30
\inst2|var[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[11]~34_combout\ = (\inst2|var\(11) & (\inst2|var[10]~33\ $ (GND))) # (!\inst2|var\(11) & (!\inst2|var[10]~33\ & VCC))
-- \inst2|var[11]~35\ = CARRY((\inst2|var\(11) & !\inst2|var[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(11),
	datad => VCC,
	cin => \inst2|var[10]~33\,
	combout => \inst2|var[11]~34_combout\,
	cout => \inst2|var[11]~35\);

-- Location: FF_X12_Y14_N31
\inst2|var[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[11]~34_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(11));

-- Location: LCCOMB_X12_Y13_N0
\inst2|var[12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[12]~36_combout\ = (\inst2|var\(12) & (!\inst2|var[11]~35\)) # (!\inst2|var\(12) & ((\inst2|var[11]~35\) # (GND)))
-- \inst2|var[12]~37\ = CARRY((!\inst2|var[11]~35\) # (!\inst2|var\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(12),
	datad => VCC,
	cin => \inst2|var[11]~35\,
	combout => \inst2|var[12]~36_combout\,
	cout => \inst2|var[12]~37\);

-- Location: FF_X12_Y13_N1
\inst2|var[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[12]~36_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(12));

-- Location: LCCOMB_X12_Y13_N2
\inst2|var[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[13]~38_combout\ = (\inst2|var\(13) & (\inst2|var[12]~37\ $ (GND))) # (!\inst2|var\(13) & (!\inst2|var[12]~37\ & VCC))
-- \inst2|var[13]~39\ = CARRY((\inst2|var\(13) & !\inst2|var[12]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(13),
	datad => VCC,
	cin => \inst2|var[12]~37\,
	combout => \inst2|var[13]~38_combout\,
	cout => \inst2|var[13]~39\);

-- Location: FF_X12_Y13_N3
\inst2|var[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[13]~38_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(13));

-- Location: LCCOMB_X12_Y13_N4
\inst2|var[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[14]~40_combout\ = (\inst2|var\(14) & (!\inst2|var[13]~39\)) # (!\inst2|var\(14) & ((\inst2|var[13]~39\) # (GND)))
-- \inst2|var[14]~41\ = CARRY((!\inst2|var[13]~39\) # (!\inst2|var\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(14),
	datad => VCC,
	cin => \inst2|var[13]~39\,
	combout => \inst2|var[14]~40_combout\,
	cout => \inst2|var[14]~41\);

-- Location: FF_X12_Y13_N5
\inst2|var[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[14]~40_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(14));

-- Location: LCCOMB_X12_Y13_N6
\inst2|var[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[15]~42_combout\ = (\inst2|var\(15) & (\inst2|var[14]~41\ $ (GND))) # (!\inst2|var\(15) & (!\inst2|var[14]~41\ & VCC))
-- \inst2|var[15]~43\ = CARRY((\inst2|var\(15) & !\inst2|var[14]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(15),
	datad => VCC,
	cin => \inst2|var[14]~41\,
	combout => \inst2|var[15]~42_combout\,
	cout => \inst2|var[15]~43\);

-- Location: FF_X12_Y13_N7
\inst2|var[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[15]~42_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(15));

-- Location: LCCOMB_X12_Y13_N8
\inst2|var[16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[16]~44_combout\ = (\inst2|var\(16) & (!\inst2|var[15]~43\)) # (!\inst2|var\(16) & ((\inst2|var[15]~43\) # (GND)))
-- \inst2|var[16]~45\ = CARRY((!\inst2|var[15]~43\) # (!\inst2|var\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(16),
	datad => VCC,
	cin => \inst2|var[15]~43\,
	combout => \inst2|var[16]~44_combout\,
	cout => \inst2|var[16]~45\);

-- Location: FF_X12_Y13_N9
\inst2|var[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[16]~44_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(16));

-- Location: LCCOMB_X12_Y13_N10
\inst2|var[17]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[17]~46_combout\ = (\inst2|var\(17) & (\inst2|var[16]~45\ $ (GND))) # (!\inst2|var\(17) & (!\inst2|var[16]~45\ & VCC))
-- \inst2|var[17]~47\ = CARRY((\inst2|var\(17) & !\inst2|var[16]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(17),
	datad => VCC,
	cin => \inst2|var[16]~45\,
	combout => \inst2|var[17]~46_combout\,
	cout => \inst2|var[17]~47\);

-- Location: FF_X12_Y13_N11
\inst2|var[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[17]~46_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(17));

-- Location: LCCOMB_X12_Y13_N12
\inst2|var[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[18]~48_combout\ = (\inst2|var\(18) & (!\inst2|var[17]~47\)) # (!\inst2|var\(18) & ((\inst2|var[17]~47\) # (GND)))
-- \inst2|var[18]~49\ = CARRY((!\inst2|var[17]~47\) # (!\inst2|var\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(18),
	datad => VCC,
	cin => \inst2|var[17]~47\,
	combout => \inst2|var[18]~48_combout\,
	cout => \inst2|var[18]~49\);

-- Location: FF_X12_Y13_N13
\inst2|var[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[18]~48_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(18));

-- Location: LCCOMB_X12_Y13_N14
\inst2|var[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[19]~50_combout\ = (\inst2|var\(19) & (\inst2|var[18]~49\ $ (GND))) # (!\inst2|var\(19) & (!\inst2|var[18]~49\ & VCC))
-- \inst2|var[19]~51\ = CARRY((\inst2|var\(19) & !\inst2|var[18]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(19),
	datad => VCC,
	cin => \inst2|var[18]~49\,
	combout => \inst2|var[19]~50_combout\,
	cout => \inst2|var[19]~51\);

-- Location: FF_X12_Y13_N15
\inst2|var[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[19]~50_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(19));

-- Location: LCCOMB_X12_Y13_N26
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|var\(18)) # ((\inst2|var\(16)) # ((\inst2|var\(19)) # (\inst2|var\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(18),
	datab => \inst2|var\(16),
	datac => \inst2|var\(19),
	datad => \inst2|var\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst2|var[20]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[20]~52_combout\ = (\inst2|var\(20) & (!\inst2|var[19]~51\)) # (!\inst2|var\(20) & ((\inst2|var[19]~51\) # (GND)))
-- \inst2|var[20]~53\ = CARRY((!\inst2|var[19]~51\) # (!\inst2|var\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(20),
	datad => VCC,
	cin => \inst2|var[19]~51\,
	combout => \inst2|var[20]~52_combout\,
	cout => \inst2|var[20]~53\);

-- Location: FF_X12_Y13_N17
\inst2|var[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[20]~52_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(20));

-- Location: LCCOMB_X12_Y13_N18
\inst2|var[21]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[21]~54_combout\ = (\inst2|var\(21) & (\inst2|var[20]~53\ $ (GND))) # (!\inst2|var\(21) & (!\inst2|var[20]~53\ & VCC))
-- \inst2|var[21]~55\ = CARRY((\inst2|var\(21) & !\inst2|var[20]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(21),
	datad => VCC,
	cin => \inst2|var[20]~53\,
	combout => \inst2|var[21]~54_combout\,
	cout => \inst2|var[21]~55\);

-- Location: FF_X12_Y13_N19
\inst2|var[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[21]~54_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(21));

-- Location: LCCOMB_X12_Y13_N20
\inst2|var[22]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[22]~56_combout\ = (\inst2|var\(22) & (!\inst2|var[21]~55\)) # (!\inst2|var\(22) & ((\inst2|var[21]~55\) # (GND)))
-- \inst2|var[22]~57\ = CARRY((!\inst2|var[21]~55\) # (!\inst2|var\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|var\(22),
	datad => VCC,
	cin => \inst2|var[21]~55\,
	combout => \inst2|var[22]~56_combout\,
	cout => \inst2|var[22]~57\);

-- Location: FF_X12_Y13_N21
\inst2|var[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[22]~56_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(22));

-- Location: LCCOMB_X12_Y13_N22
\inst2|var[23]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|var[23]~58_combout\ = \inst2|var\(23) $ (!\inst2|var[22]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(23),
	cin => \inst2|var[22]~57\,
	combout => \inst2|var[23]~58_combout\);

-- Location: FF_X12_Y13_N23
\inst2|var[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|var[23]~58_combout\,
	ena => \inst2|message~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|var\(23));

-- Location: LCCOMB_X12_Y13_N28
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (\inst2|var\(23)) # ((\inst2|var\(21)) # ((\inst2|var\(22)) # (\inst2|var\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(23),
	datab => \inst2|var\(21),
	datac => \inst2|var\(22),
	datad => \inst2|var\(20),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|seg\(1)) # ((\inst2|seg\(3)) # ((\inst2|seg\(2)) # (\inst2|seg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(1),
	datab => \inst2|seg\(3),
	datac => \inst2|seg\(2),
	datad => \inst2|seg\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y14_N4
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|var\(7)) # ((\inst2|var\(5)) # ((\inst2|var\(4)) # (\inst2|var\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(7),
	datab => \inst2|var\(5),
	datac => \inst2|var\(4),
	datad => \inst2|var\(6),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|var\(9)) # ((\inst2|var\(8)) # ((\inst2|var\(11)) # (\inst2|var\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(9),
	datab => \inst2|var\(8),
	datac => \inst2|var\(11),
	datad => \inst2|var\(10),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|var\(13)) # ((\inst2|var\(12)) # ((\inst2|var\(14)) # (\inst2|var\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|var\(13),
	datab => \inst2|var\(12),
	datac => \inst2|var\(14),
	datad => \inst2|var\(15),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~0_combout\) # ((\inst2|Equal0~1_combout\) # ((\inst2|Equal0~2_combout\) # (\inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y14_N2
\inst2|message[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message[18]~5_combout\ = (\inst2|message~3_combout\) # ((!\inst2|Equal0~5_combout\ & (!\inst2|Equal0~6_combout\ & !\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|message~3_combout\,
	datac => \inst2|Equal0~6_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|message[18]~5_combout\);

-- Location: FF_X13_Y14_N7
\inst2|message[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~10_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(13));

-- Location: LCCOMB_X13_Y14_N20
\inst2|message~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~11_combout\ = (\inst2|message~2_combout\ & (\inst2|message~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(13),
	combout => \inst2|message~11_combout\);

-- Location: FF_X13_Y14_N21
\inst2|message[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~11_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(17));

-- Location: LCCOMB_X14_Y14_N26
\inst2|l4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l4~1_combout\ = (\inst2|LessThan0~0_combout\ & \inst2|message\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(17),
	combout => \inst2|l4~1_combout\);

-- Location: FF_X14_Y14_N27
\inst2|l4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l4\(1));

-- Location: LCCOMB_X14_Y14_N0
\inst2|message~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~14_combout\ = (((\inst2|l4\(1)) # (!\inst2|LessThan0~0_combout\)) # (!\inst2|message~1_combout\)) # (!\inst2|message~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|l4\(1),
	combout => \inst2|message~14_combout\);

-- Location: FF_X13_Y14_N19
\inst2|message[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	asdata => \inst2|message~14_combout\,
	sload => VCC,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(1));

-- Location: LCCOMB_X13_Y14_N26
\inst2|message~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~12_combout\ = (\inst2|message\(1)) # (((!\inst2|message~2_combout\) # (!\inst2|LessThan0~0_combout\)) # (!\inst2|message~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message\(1),
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~12_combout\);

-- Location: FF_X13_Y14_N27
\inst2|message[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~12_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(5));

-- Location: LCCOMB_X13_Y14_N12
\inst2|message~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~9_combout\ = (\inst2|message\(5)) # (((!\inst2|message~2_combout\) # (!\inst2|LessThan0~0_combout\)) # (!\inst2|message~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message\(5),
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~9_combout\);

-- Location: FF_X13_Y14_N13
\inst2|message[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~9_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(9));

-- Location: LCCOMB_X12_Y16_N22
\inst2|l2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l2~1_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|message\(9))))) # (!\inst2|LessThan0~0_combout\ & (\inst2|l3~3_combout\ $ ((\inst1|digitos~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l3~3_combout\,
	datab => \inst1|digitos~21_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(9),
	combout => \inst2|l2~1_combout\);

-- Location: FF_X12_Y16_N23
\inst2|l2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l2\(1));

-- Location: LCCOMB_X13_Y12_N16
\inst2|l1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~3_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|message\(5))))) # (!\inst2|LessThan0~0_combout\ & (\inst2|l2~2_combout\ $ (((!\inst|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l2~2_combout\,
	datab => \inst2|message\(5),
	datac => \inst|Mux4~4_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l1~3_combout\);

-- Location: FF_X13_Y12_N17
\inst2|l1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l1\(1));

-- Location: LCCOMB_X11_Y14_N30
\inst1|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan9~2_combout\ = (\inst1|LessThan9~3_combout\ & ((\inst1|digitos~23_combout\) # (\inst1|digitos~15_combout\ $ (!\inst1|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|LessThan7~0_combout\,
	datac => \inst1|digitos~23_combout\,
	datad => \inst1|LessThan9~3_combout\,
	combout => \inst1|LessThan9~2_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst2|l3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l3~4_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|message\(13))))) # (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~24_combout\ $ ((!\inst1|LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~24_combout\,
	datab => \inst1|LessThan9~2_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(13),
	combout => \inst2|l3~4_combout\);

-- Location: FF_X12_Y16_N9
\inst2|l3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l3\(1));

-- Location: LCCOMB_X12_Y16_N18
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|contador\(0) & ((\inst2|contador\(1)) # ((\inst2|l3\(1))))) # (!\inst2|contador\(0) & (!\inst2|contador\(1) & ((\inst2|l4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|contador\(1),
	datac => \inst2|l3\(1),
	datad => \inst2|l4\(1),
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = (\inst2|contador\(1) & ((\inst2|Mux6~0_combout\ & ((\inst2|l1\(1)))) # (!\inst2|Mux6~0_combout\ & (\inst2|l2\(1))))) # (!\inst2|contador\(1) & (((\inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l2\(1),
	datab => \inst2|l1\(1),
	datac => \inst2|contador\(1),
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: FF_X12_Y16_N29
\inst2|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(1));

-- Location: LCCOMB_X13_Y12_N20
\inst1|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add11~0_combout\ = (\inst1|LessThan8~0_combout\ & (!\inst1|digitos~9_combout\ & ((\inst|Mux4~4_combout\) # (\inst|Mux5~4_combout\)))) # (!\inst1|LessThan8~0_combout\ & ((\inst|Mux5~4_combout\ & (\inst|Mux4~4_combout\ & !\inst1|digitos~9_combout\)) 
-- # (!\inst|Mux5~4_combout\ & ((\inst1|digitos~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~4_combout\,
	datab => \inst1|LessThan8~0_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst1|digitos~9_combout\,
	combout => \inst1|Add11~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst2|message~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~6_combout\ = (((\inst2|message\(8)) # (!\inst2|LessThan0~0_combout\)) # (!\inst2|message~1_combout\)) # (!\inst2|message~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(8),
	combout => \inst2|message~6_combout\);

-- Location: FF_X13_Y14_N23
\inst2|message[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~6_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(12));

-- Location: LCCOMB_X13_Y14_N0
\inst2|message~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~7_combout\ = (\inst2|message\(12) & (\inst2|message~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message\(12),
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~7_combout\);

-- Location: FF_X13_Y14_N1
\inst2|message[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~7_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(16));

-- Location: LCCOMB_X11_Y14_N18
\inst2|l4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l4~0_combout\ = (\inst2|LessThan0~0_combout\ & ((\inst2|message\(16)))) # (!\inst2|LessThan0~0_combout\ & (\inst1|LessThan9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan9~2_combout\,
	datac => \inst2|message\(16),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l4~0_combout\);

-- Location: FF_X11_Y14_N19
\inst2|l4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l4\(0));

-- Location: LCCOMB_X13_Y14_N24
\inst2|message~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~13_combout\ = (\inst2|l4\(0)) # (((!\inst2|message~2_combout\) # (!\inst2|LessThan0~0_combout\)) # (!\inst2|message~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l4\(0),
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~13_combout\);

-- Location: FF_X13_Y14_N25
\inst2|message[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~13_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(0));

-- Location: LCCOMB_X13_Y14_N10
\inst2|message~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~8_combout\ = (\inst2|message~2_combout\ & (\inst2|message~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message~2_combout\,
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message\(0),
	combout => \inst2|message~8_combout\);

-- Location: FF_X13_Y14_N11
\inst2|message[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~8_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(4));

-- Location: LCCOMB_X13_Y14_N4
\inst2|message~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|message~4_combout\ = (\inst2|message\(4) & (\inst2|message~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|message~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|message\(4),
	datab => \inst2|message~1_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|message~2_combout\,
	combout => \inst2|message~4_combout\);

-- Location: FF_X13_Y14_N5
\inst2|message[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|message~4_combout\,
	ena => \inst2|message[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|message\(8));

-- Location: LCCOMB_X13_Y12_N24
\inst2|l2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l2~0_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|message\(8))))) # (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~12_combout\ $ ((\inst1|Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~12_combout\,
	datab => \inst1|Add11~0_combout\,
	datac => \inst2|message\(8),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l2~0_combout\);

-- Location: FF_X13_Y12_N25
\inst2|l2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l2\(0));

-- Location: LCCOMB_X12_Y16_N4
\inst1|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~0_combout\ = (\inst1|digitos~19_combout\ & ((\inst1|digitos~20_combout\) # (!\inst1|digitos~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~20_combout\,
	datab => \inst1|digitos~21_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst1|Add10~0_combout\);

-- Location: LCCOMB_X11_Y14_N12
\inst2|l3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l3~2_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|message\(12))))) # (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~22_combout\ $ (((\inst1|Add10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst1|digitos~22_combout\,
	datac => \inst2|message\(12),
	datad => \inst1|Add10~0_combout\,
	combout => \inst2|l3~2_combout\);

-- Location: FF_X11_Y14_N13
\inst2|l3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l3\(0));

-- Location: LCCOMB_X11_Y14_N0
\inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst2|contador\(0) & ((\inst2|l3\(0)) # ((\inst2|contador\(1))))) # (!\inst2|contador\(0) & (((\inst2|l4\(0) & !\inst2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l3\(0),
	datab => \inst2|l4\(0),
	datac => \inst2|contador\(0),
	datad => \inst2|contador\(1),
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|restador|fullAdder7|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|restador|fullAdder7|S~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \inst|restador|fullAdder7|S~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst2|l1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~0_combout\ = \inst|restador|fullAdder7|S~0_combout\ $ (((\sel_op[0]~input_o\ & ((\inst|restador|fullAdder6|Cout~0_combout\))) # (!\sel_op[0]~input_o\ & (\inst|sumador|fullAdder6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sumador|fullAdder6|Cout~0_combout\,
	datab => \inst|restador|fullAdder6|Cout~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|restador|fullAdder7|S~0_combout\,
	combout => \inst2|l1~0_combout\);

-- Location: LCCOMB_X21_Y4_N2
\inst|multiplicacion|suma4|fullAdder7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|multiplicacion|suma4|fullAdder7|S~combout\ = \inst|multiplicacion|suma3|fullAdder7|S~0_combout\ $ (\inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\ $ (((\B[4]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|multiplicacion|suma3|fullAdder7|S~0_combout\,
	datab => \B[4]~input_o\,
	datac => \inst|multiplicacion|suma4|fullAdder6|Cout~2_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|multiplicacion|suma4|fullAdder7|S~combout\);

-- Location: LCCOMB_X17_Y10_N4
\inst2|l1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~1_combout\ = (\sel_op[1]~input_o\ & (((\inst|multiplicacion|suma4|fullAdder7|S~combout\) # (!\sel_op[0]~input_o\)))) # (!\sel_op[1]~input_o\ & (\inst2|l1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_op[1]~input_o\,
	datab => \inst2|l1~0_combout\,
	datac => \sel_op[0]~input_o\,
	datad => \inst|multiplicacion|suma4|fullAdder7|S~combout\,
	combout => \inst2|l1~1_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst2|l1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~2_combout\ = (\inst2|LessThan0~0_combout\ & ((\inst2|message\(4)))) # (!\inst2|LessThan0~0_combout\ & (\inst2|l1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|l1~1_combout\,
	datac => \inst2|message\(4),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l1~2_combout\);

-- Location: FF_X13_Y12_N7
\inst2|l1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l1\(0));

-- Location: LCCOMB_X12_Y12_N6
\inst2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst2|contador\(1) & ((\inst2|Mux7~0_combout\ & ((\inst2|l1\(0)))) # (!\inst2|Mux7~0_combout\ & (\inst2|l2\(0))))) # (!\inst2|contador\(1) & (((\inst2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datab => \inst2|l2\(0),
	datac => \inst2|Mux7~0_combout\,
	datad => \inst2|l1\(0),
	combout => \inst2|Mux7~1_combout\);

-- Location: FF_X12_Y12_N7
\inst2|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(0));

-- Location: LCCOMB_X12_Y16_N24
\inst2|l2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l2~3_combout\ = (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~20_combout\ $ (((!\inst2|l3~3_combout\ & \inst1|digitos~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~20_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|l3~3_combout\,
	datad => \inst1|digitos~21_combout\,
	combout => \inst2|l2~3_combout\);

-- Location: FF_X12_Y16_N25
\inst2|l2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l2\(2));

-- Location: LCCOMB_X13_Y12_N30
\inst2|l1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l1~4_combout\ = (!\inst2|LessThan0~0_combout\ & (\inst1|digitos~25_combout\ $ (((\inst2|l2~2_combout\) # (\inst|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l2~2_combout\,
	datab => \inst1|digitos~25_combout\,
	datac => \inst|Mux4~4_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|l1~4_combout\);

-- Location: FF_X13_Y12_N31
\inst2|l1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l1\(2));

-- Location: LCCOMB_X12_Y16_N20
\inst2|l3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|l3~5_combout\ = (\inst1|digitos~23_combout\ & (!\inst2|LessThan0~0_combout\ & ((!\inst1|digitos~24_combout\) # (!\inst1|LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~23_combout\,
	datab => \inst1|LessThan9~3_combout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst1|digitos~24_combout\,
	combout => \inst2|l3~5_combout\);

-- Location: FF_X12_Y16_N21
\inst2|l3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|l3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|l3\(2));

-- Location: LCCOMB_X12_Y16_N6
\inst2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~2_combout\ = (\inst2|contador\(0) & ((\inst2|contador\(1) & (\inst2|l1\(2))) # (!\inst2|contador\(1) & ((\inst2|l3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|l1\(2),
	datab => \inst2|l3\(2),
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux5~2_combout\);

-- Location: LCCOMB_X12_Y16_N14
\inst2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~3_combout\ = (\inst2|Mux5~2_combout\) # ((!\inst2|contador\(0) & (\inst2|l2\(2) & \inst2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|l2\(2),
	datac => \inst2|contador\(1),
	datad => \inst2|Mux5~2_combout\,
	combout => \inst2|Mux5~3_combout\);

-- Location: FF_X12_Y16_N15
\inst2|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(2));

-- Location: LCCOMB_X9_Y20_N20
\inst2|letra|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux6~0_combout\ = (\inst2|aux\(0) & (\inst2|aux\(2) $ (((!\inst2|aux\(3) & !\inst2|aux\(1)))))) # (!\inst2|aux\(0) & (((\inst2|aux\(2)) # (\inst2|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(0),
	datac => \inst2|aux\(2),
	datad => \inst2|aux\(1),
	combout => \inst2|letra|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst2|ledsito~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ledsito~0_combout\ = (\inst2|Equal0~5_combout\) # (\inst2|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|ledsito~0_combout\);

-- Location: LCCOMB_X13_Y14_N16
\inst2|ledsito~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ledsito~1_combout\ = ((\inst2|ledsito~q\ & ((\inst2|Equal0~4_combout\) # (\inst2|ledsito~0_combout\)))) # (!\inst2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~0_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|ledsito~q\,
	datad => \inst2|ledsito~0_combout\,
	combout => \inst2|ledsito~1_combout\);

-- Location: FF_X13_Y14_N17
\inst2|ledsito\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|salida~clkctrl_outclk\,
	d => \inst2|ledsito~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledsito~q\);

-- Location: LCCOMB_X9_Y20_N10
\inst2|letra|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux6~1_combout\ = (\inst2|aux\(3) & ((\inst2|letra|Mux6~0_combout\) # (\inst2|aux\(1) $ (!\inst2|ledsito~q\)))) # (!\inst2|aux\(3) & (\inst2|letra|Mux6~0_combout\ & ((!\inst2|ledsito~q\) # (!\inst2|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(1),
	datac => \inst2|letra|Mux6~0_combout\,
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux6~1_combout\);

-- Location: LCCOMB_X9_Y20_N16
\inst2|letra|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux5~0_combout\ = (\inst2|aux\(3) & (!\inst2|aux\(1) & ((\inst2|aux\(0)) # (\inst2|ledsito~q\)))) # (!\inst2|aux\(3) & (\inst2|aux\(0) $ (((!\inst2|aux\(1) & \inst2|ledsito~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(0),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y20_N26
\inst2|letra|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux5~1_combout\ = (\inst2|letra|Mux5~0_combout\ & (((!\inst2|aux\(3) & \inst2|ledsito~q\)) # (!\inst2|aux\(2)))) # (!\inst2|letra|Mux5~0_combout\ & (!\inst2|aux\(3) & (!\inst2|aux\(2) & \inst2|ledsito~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|letra|Mux5~0_combout\,
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux5~1_combout\);

-- Location: LCCOMB_X9_Y20_N4
\inst2|letra|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux4~0_combout\ = (\inst2|aux\(3) & (\inst2|aux\(1) $ (((!\inst2|aux\(0) & !\inst2|ledsito~q\))))) # (!\inst2|aux\(3) & (((\inst2|aux\(1) & !\inst2|aux\(0))) # (!\inst2|ledsito~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(0),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y20_N6
\inst2|letra|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux4~1_combout\ = (\inst2|aux\(3) & ((\inst2|aux\(2)) # ((\inst2|letra|Mux4~0_combout\)))) # (!\inst2|aux\(3) & (\inst2|letra|Mux4~0_combout\ & (\inst2|aux\(2) $ (\inst2|ledsito~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(2),
	datac => \inst2|letra|Mux4~0_combout\,
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y20_N28
\inst2|letra|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux3~0_combout\ = (\inst2|aux\(1) & ((\inst2|aux\(2) & (\inst2|aux\(0) & \inst2|ledsito~q\)) # (!\inst2|aux\(2) & ((!\inst2|ledsito~q\))))) # (!\inst2|aux\(1) & ((\inst2|aux\(0) & (!\inst2|aux\(2) & \inst2|ledsito~q\)) # (!\inst2|aux\(0) & 
-- (\inst2|aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(0),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y20_N14
\inst2|letra|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux3~1_combout\ = (!\inst2|aux\(2) & ((\inst2|aux\(1) & ((!\inst2|ledsito~q\))) # (!\inst2|aux\(1) & ((\inst2|aux\(0)) # (\inst2|ledsito~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(0),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux3~1_combout\);

-- Location: LCCOMB_X9_Y20_N0
\inst2|letra|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux3~2_combout\ = (\inst2|aux\(3) & ((!\inst2|letra|Mux3~1_combout\))) # (!\inst2|aux\(3) & (\inst2|letra|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|letra|Mux3~0_combout\,
	datac => \inst2|letra|Mux3~1_combout\,
	combout => \inst2|letra|Mux3~2_combout\);

-- Location: LCCOMB_X9_Y20_N24
\inst2|letra|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux2~0_combout\ = (\inst2|aux\(3) & ((\inst2|aux\(2)) # ((\inst2|aux\(1) & \inst2|ledsito~q\)))) # (!\inst2|aux\(3) & (!\inst2|aux\(1) & (\inst2|aux\(2) $ (!\inst2|ledsito~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y20_N2
\inst2|letra|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux2~1_combout\ = (\inst2|aux\(0) & ((\inst2|ledsito~q\) # ((\inst2|aux\(3) & \inst2|letra|Mux2~0_combout\)))) # (!\inst2|aux\(0) & (((\inst2|letra|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|letra|Mux2~0_combout\,
	datac => \inst2|aux\(0),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux2~1_combout\);

-- Location: LCCOMB_X9_Y20_N30
\inst2|letra|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux1~0_combout\ = (\inst2|aux\(2)) # (\inst2|aux\(1) $ (((\inst2|aux\(0) & !\inst2|ledsito~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(0),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y20_N8
\inst2|letra|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux1~1_combout\ = (\inst2|aux\(0) & (\inst2|ledsito~q\ & ((\inst2|aux\(1)) # (!\inst2|aux\(2))))) # (!\inst2|aux\(0) & ((\inst2|aux\(1) & (!\inst2|aux\(2))) # (!\inst2|aux\(1) & (\inst2|aux\(2) & !\inst2|ledsito~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(0),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(2),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux1~1_combout\);

-- Location: LCCOMB_X9_Y20_N22
\inst2|letra|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux1~2_combout\ = (\inst2|aux\(3) & (\inst2|letra|Mux1~0_combout\)) # (!\inst2|aux\(3) & ((\inst2|letra|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|letra|Mux1~0_combout\,
	datab => \inst2|letra|Mux1~1_combout\,
	datac => \inst2|aux\(3),
	combout => \inst2|letra|Mux1~2_combout\);

-- Location: LCCOMB_X9_Y20_N12
\inst2|letra|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux0~0_combout\ = (\inst2|aux\(0) & (\inst2|aux\(2) $ (((!\inst2|ledsito~q\) # (!\inst2|aux\(3)))))) # (!\inst2|aux\(0) & (!\inst2|aux\(2) & (\inst2|aux\(3) $ (\inst2|ledsito~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(2),
	datac => \inst2|aux\(0),
	datad => \inst2|ledsito~q\,
	combout => \inst2|letra|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y20_N18
\inst2|letra|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|letra|Mux0~1_combout\ = (\inst2|aux\(1) & (\inst2|aux\(0) & (\inst2|aux\(3) $ (!\inst2|letra|Mux0~0_combout\)))) # (!\inst2|aux\(1) & (\inst2|letra|Mux0~0_combout\ & ((!\inst2|aux\(0)) # (!\inst2|aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datab => \inst2|aux\(1),
	datac => \inst2|aux\(0),
	datad => \inst2|letra|Mux0~0_combout\,
	combout => \inst2|letra|Mux0~1_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;

ww_d3 <= \d3~output_o\;

ww_d4 <= \d4~output_o\;

ww_a_seg <= \a_seg~output_o\;

ww_b_seg <= \b_seg~output_o\;

ww_c_seg <= \c_seg~output_o\;

ww_d_seg <= \d_seg~output_o\;

ww_e_seg <= \e_seg~output_o\;

ww_f_seg <= \f_seg~output_o\;

ww_g_seg <= \g_seg~output_o\;
END structure;


