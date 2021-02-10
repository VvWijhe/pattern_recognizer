-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/10/2021 10:18:19"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pattern_recognizer IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x : IN std_logic;
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END pattern_recognizer;

-- Design Ports Information
-- seg1[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pattern_recognizer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \State.S11100~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \State.S0~q\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \State.S1~q\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State.S11~q\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.S111~q\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State.S1110~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter[6]~0_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \seg1[0]~0_combout\ : std_logic;
SIGNAL \seg1[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \seg1[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \seg1[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \seg1[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \seg1[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \seg1[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \seg1[6]~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \seg2[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \seg2[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \seg2[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \seg2[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \seg2[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \seg2[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \seg2[6]~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \ALT_INV_State.S11100~q\ : std_logic;
SIGNAL \ALT_INV_State.S0~q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \ALT_INV_State.S1~q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.S11~q\ : std_logic;
SIGNAL \ALT_INV_State.S111~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~19_combout\ : std_logic;
SIGNAL \ALT_INV_State.S1110~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x <= x;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\ALT_INV_State.S11100~q\ <= NOT \State.S11100~q\;
\ALT_INV_State.S0~q\ <= NOT \State.S0~q\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\ALT_INV_State.S1~q\ <= NOT \State.S1~q\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\ALT_INV_State.S11~q\ <= NOT \State.S11~q\;
\ALT_INV_State.S111~q\ <= NOT \State.S111~q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~20_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~19_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\;
\ALT_INV_State.S1110~q\ <= NOT \State.S1110~q\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~17_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~16_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~15_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~14_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[46]~10_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X89_Y11_N79
\seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X89_Y11_N96
\seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X89_Y4_N79
\seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X89_Y13_N56
\seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X89_Y13_N39
\seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X89_Y4_N96
\seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X89_Y6_N39
\seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOOBUF_X89_Y6_N56
\seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X89_Y16_N39
\seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X89_Y16_N56
\seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X89_Y15_N39
\seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X89_Y15_N56
\seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X89_Y8_N56
\seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LABCELL_X83_Y10_N54
\State~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~18_combout\ = ( \State.S1110~q\ & ( !\x~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x~input_o\,
	dataf => \ALT_INV_State.S1110~q\,
	combout => \State~18_combout\);

-- Location: FF_X83_Y10_N56
\State.S11100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S11100~q\);

-- Location: LABCELL_X83_Y10_N18
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \State.S1110~q\ ) # ( !\State.S1110~q\ & ( (\x~input_o\) # (\State.S111~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.S111~q\,
	datac => \ALT_INV_x~input_o\,
	dataf => \ALT_INV_State.S1110~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X83_Y10_N19
\State.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S0~q\);

-- Location: LABCELL_X83_Y10_N21
\State~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~17_combout\ = ( \State.S0~q\ & ( (\x~input_o\ & ((\State.S11100~q\) # (\State.S1110~q\))) ) ) # ( !\State.S0~q\ & ( \x~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.S1110~q\,
	datac => \ALT_INV_x~input_o\,
	datad => \ALT_INV_State.S11100~q\,
	dataf => \ALT_INV_State.S0~q\,
	combout => \State~17_combout\);

-- Location: FF_X83_Y10_N22
\State.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S1~q\);

-- Location: LABCELL_X83_Y10_N45
\State~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~16_combout\ = ( \State.S1~q\ & ( \x~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	dataf => \ALT_INV_State.S1~q\,
	combout => \State~16_combout\);

-- Location: FF_X83_Y10_N46
\State.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S11~q\);

-- Location: LABCELL_X83_Y10_N42
\State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~15_combout\ = ( \State.S11~q\ & ( \x~input_o\ ) ) # ( !\State.S11~q\ & ( (\x~input_o\ & \State.S111~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datad => \ALT_INV_State.S111~q\,
	dataf => \ALT_INV_State.S11~q\,
	combout => \State~15_combout\);

-- Location: FF_X83_Y10_N44
\State.S111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S111~q\);

-- Location: MLABCELL_X84_Y10_N30
\State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~14_combout\ = ( !\x~input_o\ & ( \State.S111~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.S111~q\,
	dataf => \ALT_INV_x~input_o\,
	combout => \State~14_combout\);

-- Location: FF_X84_Y10_N32
\State.S1110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.S1110~q\);

-- Location: MLABCELL_X84_Y11_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X84_Y11_N59
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: MLABCELL_X84_Y11_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X84_Y11_N17
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: MLABCELL_X84_Y11_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X84_Y11_N29
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: MLABCELL_X84_Y11_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X84_Y11_N26
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: MLABCELL_X84_Y11_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X84_Y11_N56
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: MLABCELL_X84_Y11_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X84_Y11_N50
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: MLABCELL_X84_Y11_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( counter(5) & ( (!counter(3) & (counter(6) & (counter(2) & !counter(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(3),
	datab => ALT_INV_counter(6),
	datac => ALT_INV_counter(2),
	datad => ALT_INV_counter(4),
	dataf => ALT_INV_counter(5),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X84_Y11_N48
\counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[6]~0_combout\ = ( counter(1) & ( (!\x~input_o\ & \State.S1110~q\) ) ) # ( !counter(1) & ( (!\x~input_o\ & (\State.S1110~q\ & ((!\Equal0~0_combout\) # (counter(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datab => \ALT_INV_State.S1110~q\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_counter(0),
	dataf => ALT_INV_counter(1),
	combout => \counter[6]~0_combout\);

-- Location: FF_X84_Y11_N11
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: MLABCELL_X84_Y11_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\);

-- Location: LABCELL_X83_Y11_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X83_Y11_N3
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \Add0~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \Add0~17_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X83_Y11_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\Add0~21_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\Add0~21_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X83_Y11_N9
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( \Add0~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( \Add0~25_sumout\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: LABCELL_X83_Y11_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X83_Y11_N36
\Mod0|auto_generated|divider|divider|StageOut[24]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\);

-- Location: LABCELL_X83_Y11_N39
\Mod0|auto_generated|divider|divider|StageOut[24]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\ = ( \Add0~25_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\);

-- Location: LABCELL_X83_Y11_N18
\Mod0|auto_generated|divider|divider|StageOut[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\ = ( \Add0~17_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\);

-- Location: LABCELL_X83_Y11_N54
\Mod0|auto_generated|divider|divider|StageOut[22]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\);

-- Location: MLABCELL_X82_Y10_N6
\Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X82_Y10_N9
\Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \Add0~9_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( \Add0~9_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X82_Y10_N12
\Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~13_sumout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~13_sumout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X82_Y10_N15
\Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[22]~19_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[22]~20_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~19_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X82_Y10_N18
\Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~21_sumout\)) ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~21_sumout\)) ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X82_Y10_N21
\Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~16_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X82_Y10_N24
\Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X81_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[32]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\ = ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: MLABCELL_X82_Y10_N33
\Mod0|auto_generated|divider|divider|StageOut[23]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\);

-- Location: LABCELL_X83_Y11_N33
\Mod0|auto_generated|divider|divider|StageOut[23]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\ = ( \Add0~21_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\);

-- Location: LABCELL_X83_Y11_N57
\Mod0|auto_generated|divider|divider|StageOut[22]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ = ( \Add0~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) ) ) # ( 
-- !\Add0~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LABCELL_X83_Y11_N21
\Mod0|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: MLABCELL_X82_Y10_N36
\Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: MLABCELL_X82_Y10_N39
\Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \Add0~5_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( \Add0~5_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: MLABCELL_X82_Y10_N42
\Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Add0~9_sumout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Add0~9_sumout\)) 
-- ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X82_Y10_N45
\Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X82_Y10_N48
\Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X82_Y10_N51
\Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X82_Y10_N54
\Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~15_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: MLABCELL_X82_Y10_N57
\Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X82_Y10_N30
\Mod0|auto_generated|divider|divider|StageOut[32]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[24]~16_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~16_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\);

-- Location: MLABCELL_X82_Y10_N0
\Mod0|auto_generated|divider|divider|StageOut[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~17_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\) # ((\Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\)) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\);

-- Location: LABCELL_X79_Y10_N33
\Mod0|auto_generated|divider|divider|StageOut[30]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\);

-- Location: LABCELL_X79_Y10_N36
\Mod0|auto_generated|divider|divider|StageOut[30]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ & ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\);

-- Location: MLABCELL_X82_Y10_N3
\Mod0|auto_generated|divider|divider|StageOut[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & ( (\Mod0|auto_generated|divider|divider|op_5~9_sumout\) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & \Mod0|auto_generated|divider|divider|op_5~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\);

-- Location: LABCELL_X83_Y10_N9
\Mod0|auto_generated|divider|divider|StageOut[28]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Add0~9_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\);

-- Location: LABCELL_X81_Y10_N30
\Mod0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X81_Y10_N33
\Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( \Add0~1_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( \Add0~1_sumout\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X81_Y10_N36
\Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Add0~5_sumout\)) ) + ( 
-- GND ) + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Add0~5_sumout\)) ) + ( GND 
-- ) + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X81_Y10_N39
\Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X81_Y10_N42
\Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_7~14\ ))
-- \Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X81_Y10_N45
\Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~9_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X81_Y10_N48
\Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X81_Y10_N51
\Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~17_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X81_Y10_N54
\Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X81_Y10_N12
\Mod0|auto_generated|divider|divider|StageOut[46]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~10_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & !\Mod0|auto_generated|divider|divider|op_6~17_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[30]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000111111000011000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~9_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~10_combout\);

-- Location: LABCELL_X81_Y10_N21
\Mod0|auto_generated|divider|divider|StageOut[48]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & !\Mod0|auto_generated|divider|divider|op_6~25_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[32]~17_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[32]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000111111000011000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~17_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\);

-- Location: LABCELL_X81_Y10_N24
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ & ( \Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!\Mod0|auto_generated|divider|divider|op_6~21_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ & !\Mod0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ & ( \Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~21_sumout\) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) ) # ( 
-- \Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ & ( !\Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_6~21_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ & !\Mod0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ & ( !\Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\) # ((\Mod0|auto_generated|divider|divider|StageOut[48]~18_combout\ & ((!\Mod0|auto_generated|divider|divider|op_6~21_sumout\) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101111101011101010101000000100000001010000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X81_Y10_N0
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \Mux0~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((!\Mod0|auto_generated|divider|divider|op_7~21_sumout\ & !\Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[46]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110001000100011011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X81_Y10_N6
\Mod0|auto_generated|divider|divider|StageOut[43]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~9_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Add0~5_sumout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\);

-- Location: LABCELL_X81_Y10_N3
\Mod0|auto_generated|divider|divider|StageOut[42]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\) # (\Add0~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( (\Add0~1_sumout\ & \Mod0|auto_generated|divider|divider|op_7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\);

-- Location: LABCELL_X81_Y10_N15
\Mod0|auto_generated|divider|divider|StageOut[44]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) # 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[28]~2_combout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\);

-- Location: LABCELL_X81_Y10_N18
\Mod0|auto_generated|divider|divider|StageOut[45]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~17_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_7~17_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[29]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~5_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\);

-- Location: LABCELL_X83_Y10_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( (\Mux0~1_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\) ) ) ) # ( 
-- \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( (\Mux0~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( (\Mux0~1_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101000001010101010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X84_Y11_N57
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( (!counter(1) & !counter(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(1),
	datad => ALT_INV_counter(0),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X83_Y10_N6
\seg1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1[0]~0_combout\ = ( !\x~input_o\ & ( (\State.S1110~q\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.S1110~q\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \seg1[0]~0_combout\);

-- Location: FF_X83_Y10_N4
\seg1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[0]~reg0_q\);

-- Location: LABCELL_X83_Y10_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( (\Mux0~1_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\) ) ) ) # ( 
-- \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( (\Mux0~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ $ 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( \Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000000010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X83_Y10_N40
\seg1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[1]~reg0_q\);

-- Location: LABCELL_X83_Y10_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & (\Mux0~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & ( (\Mux0~1_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000100000011000000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	datac => \ALT_INV_Mux0~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X83_Y10_N13
\seg1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[2]~reg0_q\);

-- Location: LABCELL_X83_Y10_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux0~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ $ 
-- (!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\))) ) ) ) # ( \Mux0~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\))) # (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001101110011000000000000000000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X83_Y10_N49
\seg1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[3]~reg0_q\);

-- Location: LABCELL_X83_Y10_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Mux0~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & 
-- !\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\)) ) ) ) # ( \Mux0~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001110000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X83_Y10_N25
\seg1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[4]~reg0_q\);

-- Location: LABCELL_X83_Y10_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & (\Mux0~1_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & (\Mux0~1_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datad => \ALT_INV_Mux0~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X83_Y10_N17
\seg1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[5]~reg0_q\);

-- Location: LABCELL_X83_Y10_N30
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \Mux0~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ ) ) # ( !\Mux0~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ ) ) # ( \Mux0~1_combout\ & ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ & ( ((!\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\))) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~1_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[42]~0_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~3_combout\)))) # (\Equal0~1_combout\) ) ) ) # ( !\Mux0~1_combout\ & ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~6_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X83_Y10_N31
\seg1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~2_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg1[6]~reg0_q\);

-- Location: MLABCELL_X84_Y11_N30
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X84_Y11_N33
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \Add0~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \Add0~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X84_Y11_N36
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\Add0~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\Add0~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: MLABCELL_X84_Y11_N39
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \Add0~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \Add0~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X84_Y11_N42
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X84_Y11_N51
\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: MLABCELL_X84_Y11_N24
\Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LABCELL_X83_Y11_N45
\Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LABCELL_X83_Y11_N48
\Div0|auto_generated|divider|divider|StageOut[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: MLABCELL_X84_Y12_N0
\Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X84_Y12_N3
\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \Add0~9_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \Add0~9_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X84_Y12_N6
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~13_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~13_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X84_Y12_N9
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (\Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X84_Y12_N12
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~21_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Add0~21_sumout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X84_Y12_N15
\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X84_Y12_N18
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X83_Y12_N3
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LABCELL_X83_Y12_N9
\Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = ( \Add0~21_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: MLABCELL_X84_Y11_N27
\Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\Add0~17_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: MLABCELL_X84_Y12_N27
\Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\Add0~13_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: MLABCELL_X84_Y12_N36
\Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X84_Y12_N39
\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( \Add0~5_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( \Add0~5_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X84_Y12_N42
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Add0~9_sumout\)) ) + 
-- ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Add0~9_sumout\)) ) + ( GND 
-- ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X84_Y12_N45
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X84_Y12_N48
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X84_Y12_N51
\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X84_Y12_N54
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X85_Y12_N9
\Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = ( \Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LABCELL_X85_Y12_N36
\Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: MLABCELL_X84_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: MLABCELL_X84_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ = ( \Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Add0~9_sumout\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Add0~9_sumout\ ) ) ) # ( \Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: LABCELL_X85_Y12_N12
\Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X85_Y12_N15
\Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( \Add0~1_sumout\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X85_Y12_N18
\Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Add0~5_sumout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X85_Y12_N21
\Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~11_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X85_Y12_N24
\Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: LABCELL_X85_Y12_N27
\Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[22]~2_combout\) # (\Div0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X85_Y12_N30
\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X87_Y12_N30
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: MLABCELL_X87_Y12_N33
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X87_Y12_N36
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_5~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( \Div0|auto_generated|divider|divider|op_5~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(!\Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: MLABCELL_X87_Y12_N39
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: LABCELL_X85_Y12_N42
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ $ 
-- (((\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010011001101010101001100110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X87_Y12_N42
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X87_Y12_N0
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux13~1_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux13~1_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & 
-- ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\))) ) ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001100110010001001100110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X87_Y12_N1
\seg2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[0]~reg0_q\);

-- Location: LABCELL_X85_Y12_N45
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (!\Div0|auto_generated|divider|divider|op_6~1_sumout\))) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & !\Div0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100101011001010110011101000111010001110100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X87_Y12_N6
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux12~1_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux12~1_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & 
-- ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ $ 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) ) ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110100010000100010011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datac => \ALT_INV_Mux12~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X87_Y12_N8
\seg2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[1]~reg0_q\);

-- Location: LABCELL_X85_Y12_N6
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (!\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110011110000001111001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X87_Y12_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux11~1_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mux11~1_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & 
-- ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ ) ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) # ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & 
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101110110011001100110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datac => \ALT_INV_Mux11~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X87_Y12_N13
\seg2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[2]~reg0_q\);

-- Location: LABCELL_X85_Y12_N48
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~1_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ $ 
-- (!\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000100010110011001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X85_Y12_N0
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\))) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (((\Mux10~1_combout\)))) ) 
-- ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ $ ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\)))) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (((\Mux10~1_combout\)))) 
-- ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\))) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (((\Mux10~1_combout\)))) ) ) 
-- ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\) # ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\)))) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (((\Mux10~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001111001000100000111101100110000011111000100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datac => \ALT_INV_Mux10~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X85_Y12_N1
\seg2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[3]~reg0_q\);

-- Location: LABCELL_X85_Y12_N51
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X87_Y12_N18
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mux9~1_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mux9~1_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\)) ) ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000010001000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X87_Y12_N19
\seg2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[4]~reg0_q\);

-- Location: LABCELL_X85_Y12_N57
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ $ (!\Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X87_Y12_N24
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mux8~1_combout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mux8~1_combout\ ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) ) ) ) # ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\) # (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010110011001000100000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datac => \ALT_INV_Mux8~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X87_Y12_N26
\seg2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	sclr => \Equal0~1_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[5]~reg0_q\);

-- Location: LABCELL_X85_Y12_N54
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ $ 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X87_Y12_N48
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X85_Y12_N39
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux7~2_combout\ & ( ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\)) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((!\Mux7~1_combout\)))) # (\Equal0~1_combout\) ) ) # ( !\Mux7~2_combout\ & ( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # ((!\Mux7~1_combout\) # 
-- (\Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111101111111010011110111111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_Mux7~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X85_Y12_N40
\seg2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	ena => \seg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg2[6]~reg0_q\);

-- Location: MLABCELL_X3_Y11_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


