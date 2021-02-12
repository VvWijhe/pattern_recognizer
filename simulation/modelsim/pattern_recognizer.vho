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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "02/11/2021 21:59:26"

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
	data : IN std_logic;
	seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg2 : BUFFER std_logic_vector(6 DOWNTO 0)
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
-- data	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_data : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \counter_entity|Add0~1_sumout\ : std_logic;
SIGNAL \counter_entity|Add0~2\ : std_logic;
SIGNAL \counter_entity|Add0~6\ : std_logic;
SIGNAL \counter_entity|Add0~9_sumout\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \list_det_entity|State.S1110~q\ : std_logic;
SIGNAL \list_det_entity|State.S11100~q\ : std_logic;
SIGNAL \list_det_entity|Selector0~0_combout\ : std_logic;
SIGNAL \list_det_entity|State.S0~q\ : std_logic;
SIGNAL \list_det_entity|State~18_combout\ : std_logic;
SIGNAL \list_det_entity|State.S1~q\ : std_logic;
SIGNAL \list_det_entity|State~17_combout\ : std_logic;
SIGNAL \list_det_entity|State.S11~q\ : std_logic;
SIGNAL \list_det_entity|State~16_combout\ : std_logic;
SIGNAL \list_det_entity|State.S111~q\ : std_logic;
SIGNAL \list_det_entity|State~15_combout\ : std_logic;
SIGNAL \list_det_entity|State.S1110~DUPLICATE_q\ : std_logic;
SIGNAL \list_det_entity|State~14_combout\ : std_logic;
SIGNAL \list_det_entity|match~q\ : std_logic;
SIGNAL \counter_entity|Add0~10\ : std_logic;
SIGNAL \counter_entity|Add0~13_sumout\ : std_logic;
SIGNAL \counter_entity|Add0~14\ : std_logic;
SIGNAL \counter_entity|Add0~25_sumout\ : std_logic;
SIGNAL \counter_entity|Add0~26\ : std_logic;
SIGNAL \counter_entity|Add0~21_sumout\ : std_logic;
SIGNAL \counter_entity|Add0~22\ : std_logic;
SIGNAL \counter_entity|Add0~17_sumout\ : std_logic;
SIGNAL \counter_entity|Equal0~0_combout\ : std_logic;
SIGNAL \counter_entity|counter[6]~0_combout\ : std_logic;
SIGNAL \counter_entity|Add0~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \counter_entity|Equal0~1_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~30_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd1~1_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd1~2_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd1~3_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd1~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux6~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux5~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux4~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux3~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux2~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux1~0_combout\ : std_logic;
SIGNAL \disp1_entity|Mux0~0_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd2~1_combout\ : std_logic;
SIGNAL \counter_entity|temp_bcd2~2_combout\ : std_logic;
SIGNAL \counter_entity|bcd2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \counter_entity|temp_bcd2~0_combout\ : std_logic;
SIGNAL \counter_entity|temp_bcd2~3_combout\ : std_logic;
SIGNAL \disp2_entity|Mux6~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux5~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux4~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux3~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux2~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux1~0_combout\ : std_logic;
SIGNAL \disp2_entity|Mux0~0_combout\ : std_logic;
SIGNAL \counter_entity|bcd1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_entity|bcd2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_entity|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S1110~DUPLICATE_q\ : std_logic;
SIGNAL \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data~input_o\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S11100~q\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S0~q\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~13_combout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S1~q\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~12_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~11_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~10_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S11~q\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~9_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~8_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~7_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S111~q\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~6_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~5_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~4_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_State.S1110~q\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~2_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~1_combout\ : std_logic;
SIGNAL \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~0_combout\ : std_logic;
SIGNAL \list_det_entity|ALT_INV_match~q\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \disp2_entity|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_bcd2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp1_entity|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \counter_entity|ALT_INV_bcd1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_data <= data;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~29_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\counter_entity|ALT_INV_Add0~25_sumout\ <= NOT \counter_entity|Add0~25_sumout\;
\counter_entity|ALT_INV_Add0~21_sumout\ <= NOT \counter_entity|Add0~21_sumout\;
\counter_entity|ALT_INV_Add0~17_sumout\ <= NOT \counter_entity|Add0~17_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\counter_entity|ALT_INV_Add0~13_sumout\ <= NOT \counter_entity|Add0~13_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\counter_entity|ALT_INV_Add0~9_sumout\ <= NOT \counter_entity|Add0~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\counter_entity|ALT_INV_Add0~5_sumout\ <= NOT \counter_entity|Add0~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\counter_entity|ALT_INV_Add0~1_sumout\ <= NOT \counter_entity|Add0~1_sumout\;
\list_det_entity|ALT_INV_State.S1110~DUPLICATE_q\ <= NOT \list_det_entity|State.S1110~DUPLICATE_q\;
\counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\ <= NOT \counter_entity|bcd2[2]~DUPLICATE_q\;
\ALT_INV_data~input_o\ <= NOT \data~input_o\;
\list_det_entity|ALT_INV_State.S11100~q\ <= NOT \list_det_entity|State.S11100~q\;
\list_det_entity|ALT_INV_State.S0~q\ <= NOT \list_det_entity|State.S0~q\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~13_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\;
\list_det_entity|ALT_INV_State.S1~q\ <= NOT \list_det_entity|State.S1~q\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~12_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~11_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~10_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\list_det_entity|ALT_INV_State.S11~q\ <= NOT \list_det_entity|State.S11~q\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~9_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~8_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~7_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\list_det_entity|ALT_INV_State.S111~q\ <= NOT \list_det_entity|State.S111~q\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~6_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~5_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~4_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\;
\list_det_entity|ALT_INV_State.S1110~q\ <= NOT \list_det_entity|State.S1110~q\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~2_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~1_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\;
\counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~0_combout\ <= NOT \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\;
\list_det_entity|ALT_INV_match~q\ <= NOT \list_det_entity|match~q\;
\counter_entity|ALT_INV_Equal0~1_combout\ <= NOT \counter_entity|Equal0~1_combout\;
\counter_entity|ALT_INV_Equal0~0_combout\ <= NOT \counter_entity|Equal0~0_combout\;
\counter_entity|ALT_INV_counter\(3) <= NOT \counter_entity|counter\(3);
\counter_entity|ALT_INV_counter\(4) <= NOT \counter_entity|counter\(4);
\counter_entity|ALT_INV_counter\(5) <= NOT \counter_entity|counter\(5);
\counter_entity|ALT_INV_counter\(6) <= NOT \counter_entity|counter\(6);
\counter_entity|ALT_INV_counter\(1) <= NOT \counter_entity|counter\(1);
\counter_entity|ALT_INV_counter\(2) <= NOT \counter_entity|counter\(2);
\counter_entity|ALT_INV_counter\(0) <= NOT \counter_entity|counter\(0);
\disp2_entity|ALT_INV_Mux0~0_combout\ <= NOT \disp2_entity|Mux0~0_combout\;
\counter_entity|ALT_INV_bcd2\(3) <= NOT \counter_entity|bcd2\(3);
\counter_entity|ALT_INV_bcd2\(2) <= NOT \counter_entity|bcd2\(2);
\counter_entity|ALT_INV_bcd2\(1) <= NOT \counter_entity|bcd2\(1);
\counter_entity|ALT_INV_bcd2\(0) <= NOT \counter_entity|bcd2\(0);
\disp1_entity|ALT_INV_Mux0~0_combout\ <= NOT \disp1_entity|Mux0~0_combout\;
\counter_entity|ALT_INV_bcd1\(3) <= NOT \counter_entity|bcd1\(3);
\counter_entity|ALT_INV_bcd1\(2) <= NOT \counter_entity|bcd1\(2);
\counter_entity|ALT_INV_bcd1\(1) <= NOT \counter_entity|bcd1\(1);
\counter_entity|ALT_INV_bcd1\(0) <= NOT \counter_entity|bcd1\(0);
\counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \counter_entity|Div0|auto_generated|divider|divider|op_6~21_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1_entity|Mux6~0_combout\,
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
	i => \disp1_entity|Mux5~0_combout\,
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
	i => \disp1_entity|Mux4~0_combout\,
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
	i => \disp1_entity|Mux3~0_combout\,
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
	i => \disp1_entity|Mux2~0_combout\,
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
	i => \disp1_entity|Mux1~0_combout\,
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
	i => \disp1_entity|ALT_INV_Mux0~0_combout\,
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
	i => \disp2_entity|Mux6~0_combout\,
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
	i => \disp2_entity|Mux5~0_combout\,
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
	i => \disp2_entity|Mux4~0_combout\,
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
	i => \disp2_entity|Mux3~0_combout\,
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
	i => \disp2_entity|Mux2~0_combout\,
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
	i => \disp2_entity|Mux1~0_combout\,
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
	i => \disp2_entity|ALT_INV_Mux0~0_combout\,
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

-- Location: LABCELL_X83_Y8_N0
\counter_entity|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~1_sumout\ = SUM(( \counter_entity|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \counter_entity|Add0~2\ = CARRY(( \counter_entity|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_counter\(0),
	cin => GND,
	sumout => \counter_entity|Add0~1_sumout\,
	cout => \counter_entity|Add0~2\);

-- Location: FF_X83_Y8_N23
\counter_entity|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter_entity|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(0));

-- Location: LABCELL_X83_Y8_N3
\counter_entity|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~5_sumout\ = SUM(( \counter_entity|counter\(1) ) + ( GND ) + ( \counter_entity|Add0~2\ ))
-- \counter_entity|Add0~6\ = CARRY(( \counter_entity|counter\(1) ) + ( GND ) + ( \counter_entity|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_counter\(1),
	cin => \counter_entity|Add0~2\,
	sumout => \counter_entity|Add0~5_sumout\,
	cout => \counter_entity|Add0~6\);

-- Location: LABCELL_X83_Y8_N6
\counter_entity|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~9_sumout\ = SUM(( \counter_entity|counter\(2) ) + ( GND ) + ( \counter_entity|Add0~6\ ))
-- \counter_entity|Add0~10\ = CARRY(( \counter_entity|counter\(2) ) + ( GND ) + ( \counter_entity|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_counter\(2),
	cin => \counter_entity|Add0~6\,
	sumout => \counter_entity|Add0~9_sumout\,
	cout => \counter_entity|Add0~10\);

-- Location: FF_X83_Y8_N8
\counter_entity|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(2));

-- Location: IOIBUF_X36_Y0_N18
\data~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

-- Location: FF_X42_Y4_N35
\list_det_entity|State.S1110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S1110~q\);

-- Location: FF_X42_Y4_N38
\list_det_entity|State.S11100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S11100~q\);

-- Location: LABCELL_X42_Y4_N18
\list_det_entity|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|Selector0~0_combout\ = ( \list_det_entity|State.S1110~DUPLICATE_q\ ) # ( !\list_det_entity|State.S1110~DUPLICATE_q\ & ( (\list_det_entity|State.S111~q\) # (\data~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data~input_o\,
	datad => \list_det_entity|ALT_INV_State.S111~q\,
	dataf => \list_det_entity|ALT_INV_State.S1110~DUPLICATE_q\,
	combout => \list_det_entity|Selector0~0_combout\);

-- Location: FF_X42_Y4_N20
\list_det_entity|State.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S0~q\);

-- Location: LABCELL_X42_Y4_N39
\list_det_entity|State~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|State~18_combout\ = ( \list_det_entity|State.S0~q\ & ( (\data~input_o\ & ((\list_det_entity|State.S11100~q\) # (\list_det_entity|State.S1110~q\))) ) ) # ( !\list_det_entity|State.S0~q\ & ( \data~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \list_det_entity|ALT_INV_State.S1110~q\,
	datab => \ALT_INV_data~input_o\,
	datad => \list_det_entity|ALT_INV_State.S11100~q\,
	dataf => \list_det_entity|ALT_INV_State.S0~q\,
	combout => \list_det_entity|State~18_combout\);

-- Location: FF_X42_Y4_N40
\list_det_entity|State.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S1~q\);

-- Location: LABCELL_X42_Y4_N15
\list_det_entity|State~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|State~17_combout\ = ( \list_det_entity|State.S1~q\ & ( \data~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data~input_o\,
	dataf => \list_det_entity|ALT_INV_State.S1~q\,
	combout => \list_det_entity|State~17_combout\);

-- Location: FF_X42_Y4_N16
\list_det_entity|State.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~17_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S11~q\);

-- Location: LABCELL_X42_Y4_N12
\list_det_entity|State~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|State~16_combout\ = ( \list_det_entity|State.S11~q\ & ( \data~input_o\ ) ) # ( !\list_det_entity|State.S11~q\ & ( (\data~input_o\ & \list_det_entity|State.S111~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data~input_o\,
	datad => \list_det_entity|ALT_INV_State.S111~q\,
	dataf => \list_det_entity|ALT_INV_State.S11~q\,
	combout => \list_det_entity|State~16_combout\);

-- Location: FF_X42_Y4_N14
\list_det_entity|State.S111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S111~q\);

-- Location: LABCELL_X42_Y4_N33
\list_det_entity|State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|State~15_combout\ = ( \list_det_entity|State.S111~q\ & ( !\data~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data~input_o\,
	dataf => \list_det_entity|ALT_INV_State.S111~q\,
	combout => \list_det_entity|State~15_combout\);

-- Location: FF_X42_Y4_N34
\list_det_entity|State.S1110~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \list_det_entity|State~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|State.S1110~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N36
\list_det_entity|State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \list_det_entity|State~14_combout\ = ( \list_det_entity|State.S1110~DUPLICATE_q\ & ( !\data~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data~input_o\,
	dataf => \list_det_entity|ALT_INV_State.S1110~DUPLICATE_q\,
	combout => \list_det_entity|State~14_combout\);

-- Location: FF_X83_Y8_N53
\list_det_entity|match\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \list_det_entity|State~14_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \list_det_entity|match~q\);

-- Location: LABCELL_X83_Y8_N9
\counter_entity|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~13_sumout\ = SUM(( \counter_entity|counter\(3) ) + ( GND ) + ( \counter_entity|Add0~10\ ))
-- \counter_entity|Add0~14\ = CARRY(( \counter_entity|counter\(3) ) + ( GND ) + ( \counter_entity|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_counter\(3),
	cin => \counter_entity|Add0~10\,
	sumout => \counter_entity|Add0~13_sumout\,
	cout => \counter_entity|Add0~14\);

-- Location: FF_X83_Y8_N11
\counter_entity|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(3));

-- Location: LABCELL_X83_Y8_N12
\counter_entity|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~25_sumout\ = SUM(( \counter_entity|counter\(4) ) + ( GND ) + ( \counter_entity|Add0~14\ ))
-- \counter_entity|Add0~26\ = CARRY(( \counter_entity|counter\(4) ) + ( GND ) + ( \counter_entity|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_counter\(4),
	cin => \counter_entity|Add0~14\,
	sumout => \counter_entity|Add0~25_sumout\,
	cout => \counter_entity|Add0~26\);

-- Location: FF_X83_Y8_N14
\counter_entity|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(4));

-- Location: LABCELL_X83_Y8_N15
\counter_entity|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~21_sumout\ = SUM(( \counter_entity|counter\(5) ) + ( GND ) + ( \counter_entity|Add0~26\ ))
-- \counter_entity|Add0~22\ = CARRY(( \counter_entity|counter\(5) ) + ( GND ) + ( \counter_entity|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_counter\(5),
	cin => \counter_entity|Add0~26\,
	sumout => \counter_entity|Add0~21_sumout\,
	cout => \counter_entity|Add0~22\);

-- Location: FF_X83_Y8_N17
\counter_entity|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(5));

-- Location: LABCELL_X83_Y8_N18
\counter_entity|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Add0~17_sumout\ = SUM(( \counter_entity|counter\(6) ) + ( GND ) + ( \counter_entity|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_counter\(6),
	cin => \counter_entity|Add0~22\,
	sumout => \counter_entity|Add0~17_sumout\);

-- Location: FF_X83_Y8_N20
\counter_entity|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(6));

-- Location: LABCELL_X83_Y8_N24
\counter_entity|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Equal0~0_combout\ = ( !\counter_entity|counter\(3) & ( (!\counter_entity|counter\(4) & (\counter_entity|counter\(6) & \counter_entity|counter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_counter\(4),
	datac => \counter_entity|ALT_INV_counter\(6),
	datad => \counter_entity|ALT_INV_counter\(5),
	dataf => \counter_entity|ALT_INV_counter\(3),
	combout => \counter_entity|Equal0~0_combout\);

-- Location: LABCELL_X83_Y8_N51
\counter_entity|counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|counter[6]~0_combout\ = ( \counter_entity|Equal0~0_combout\ & ( (\list_det_entity|match~q\ & ((!\counter_entity|counter\(0)) # ((!\counter_entity|counter\(1)) # (\counter_entity|counter\(2))))) ) ) # ( !\counter_entity|Equal0~0_combout\ & 
-- ( \list_det_entity|match~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_counter\(0),
	datab => \counter_entity|ALT_INV_counter\(1),
	datac => \counter_entity|ALT_INV_counter\(2),
	datad => \list_det_entity|ALT_INV_match~q\,
	dataf => \counter_entity|ALT_INV_Equal0~0_combout\,
	combout => \counter_entity|counter[6]~0_combout\);

-- Location: FF_X83_Y8_N47
\counter_entity|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter_entity|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \counter_entity|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|counter\(1));

-- Location: LABCELL_X85_Y8_N6
\counter_entity|Mod0|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\);

-- Location: LABCELL_X85_Y8_N9
\counter_entity|Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \counter_entity|Add0~5_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( \counter_entity|Add0~5_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~5_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X83_Y8_N27
\counter_entity|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Equal0~1_combout\ = ( !\counter_entity|counter\(2) & ( (\counter_entity|Equal0~0_combout\ & (\counter_entity|counter\(1) & \counter_entity|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Equal0~0_combout\,
	datac => \counter_entity|ALT_INV_counter\(1),
	datad => \counter_entity|ALT_INV_counter\(0),
	dataf => \counter_entity|ALT_INV_counter\(2),
	combout => \counter_entity|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y8_N0
\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \counter_entity|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \counter_entity|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: MLABCELL_X84_Y8_N3
\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ = SUM(( \counter_entity|Add0~25_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ = CARRY(( \counter_entity|Add0~25_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_Add0~25_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	shareout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\);

-- Location: MLABCELL_X84_Y8_N6
\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\counter_entity|Add0~21_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\counter_entity|Add0~21_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\counter_entity|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Add0~21_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	sharein => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: MLABCELL_X84_Y8_N9
\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ = SUM(( \counter_entity|Add0~17_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ = CARRY(( \counter_entity|Add0~17_sumout\ ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~17_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	shareout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\);

-- Location: MLABCELL_X84_Y8_N12
\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	sharein => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X84_Y8_N18
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ & ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\);

-- Location: MLABCELL_X84_Y8_N57
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~17_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\);

-- Location: MLABCELL_X84_Y8_N48
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ = ( !\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\);

-- Location: MLABCELL_X84_Y8_N24
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ = ( \counter_entity|Add0~25_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter_entity|ALT_INV_Add0~25_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\);

-- Location: LABCELL_X85_Y8_N36
\counter_entity|Mod0|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\);

-- Location: LABCELL_X85_Y8_N39
\counter_entity|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \counter_entity|Add0~9_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( \counter_entity|Add0~9_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_Add0~9_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~18_cout\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X85_Y8_N42
\counter_entity|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # (\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~13_sumout\)) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # (\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~13_sumout\)) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Add0~13_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X85_Y8_N45
\counter_entity|Mod0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\ = CARRY(( (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~13_combout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X85_Y8_N48
\counter_entity|Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # (\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~21_sumout\)) ) + ( GND ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~21_sumout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Add0~21_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~26\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X85_Y8_N51
\counter_entity|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~4_combout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~5_combout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X85_Y8_N54
\counter_entity|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y8_N42
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\);

-- Location: MLABCELL_X84_Y8_N45
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~21_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\);

-- Location: MLABCELL_X84_Y8_N51
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Add0~25_sumout\ ) ) # ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\,
	datad => \counter_entity|ALT_INV_Add0~25_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\);

-- Location: MLABCELL_X84_Y8_N21
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\ = (!\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # (\counter_entity|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~13_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\);

-- Location: LABCELL_X85_Y8_N12
\counter_entity|Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Add0~9_sumout\)) ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Add0~9_sumout\)) ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~9_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X85_Y8_N15
\counter_entity|Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\)) ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\)) ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~1_combout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X85_Y8_N18
\counter_entity|Mod0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~11_combout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\);

-- Location: LABCELL_X85_Y8_N21
\counter_entity|Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~7_combout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~8_combout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~30\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X85_Y8_N24
\counter_entity|Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~4_combout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~5_combout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X85_Y8_N27
\counter_entity|Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X88_Y8_N57
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LABCELL_X85_Y8_N30
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~4_combout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & \counter_entity|Mod0|auto_generated|divider|divider|StageOut[24]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~5_combout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~4_combout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6_combout\);

-- Location: LABCELL_X85_Y8_N3
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[23]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~7_combout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~8_combout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9_combout\);

-- Location: LABCELL_X88_Y8_N54
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~25_sumout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10_combout\);

-- Location: LABCELL_X85_Y8_N33
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12_combout\ = (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & \counter_entity|Mod0|auto_generated|divider|divider|StageOut[22]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~11_combout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12_combout\);

-- Location: LABCELL_X85_Y8_N0
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[21]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~1_combout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\);

-- Location: LABCELL_X88_Y8_N3
\counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \counter_entity|Add0~9_sumout\ ) ) # ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \counter_entity|ALT_INV_Add0~9_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\counter_entity|Mod0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X88_Y8_N21
\counter_entity|Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( \counter_entity|Add0~1_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( \counter_entity|Add0~1_sumout\ ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Add0~1_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X88_Y8_N24
\counter_entity|Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Add0~5_sumout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Add0~5_sumout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~5_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X88_Y8_N27
\counter_entity|Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\)) ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\)) ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~0_combout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X88_Y8_N30
\counter_entity|Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\ ))
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\)) ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~2_combout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X88_Y8_N33
\counter_entity|Mod0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|op_6~29_sumout\)))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~12_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[30]~10_combout\))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~10_combout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~12_combout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~18\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X88_Y8_N36
\counter_entity|Mod0|auto_generated|divider|divider|op_7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~30_cout\ = CARRY(( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[31]~9_combout\)) ) + ( VCC ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~9_combout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~34_cout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~30_cout\);

-- Location: LABCELL_X88_Y8_N39
\counter_entity|Mod0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( VCC ) + ( (!\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Mod0|auto_generated|divider|divider|op_6~17_sumout\)) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~6_combout\) # (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\)))) ) + ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datab => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~6_combout\,
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~30_cout\,
	cout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X88_Y8_N42
\counter_entity|Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Mod0|auto_generated|divider|divider|op_7~22_cout\,
	sumout => \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X88_Y8_N6
\counter_entity|temp_bcd1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd1~1_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( ((!\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (\counter_entity|Add0~5_sumout\)) # (\counter_entity|Equal0~1_combout\) ) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( 
-- ((!\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # (\counter_entity|Equal0~1_combout\)) # (\counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\) ) ) ) # ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( ((\counter_entity|Add0~5_sumout\ & \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\)) # 
-- (\counter_entity|Equal0~1_combout\) ) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~5_sumout\ & \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\)) # (\counter_entity|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110011111111111111011101111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datab => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|ALT_INV_Add0~5_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datae => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \counter_entity|temp_bcd1~1_combout\);

-- Location: FF_X88_Y8_N7
\counter_entity|bcd1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd1~1_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd1\(1));

-- Location: LABCELL_X88_Y8_N12
\counter_entity|temp_bcd1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd1~2_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\counter_entity|Equal0~1_combout\ & 
-- ((\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\) # (\counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) ) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ & ( 
-- \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\counter_entity|Equal0~1_combout\ & (\counter_entity|Mod0|auto_generated|divider|divider|op_6~9_sumout\ & !\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) ) 
-- # ( \counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\ & 
-- !\counter_entity|Equal0~1_combout\) ) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|StageOut[28]~0_combout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_7~13_sumout\ & !\counter_entity|Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000001100000000000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datab => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~0_combout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \counter_entity|temp_bcd1~2_combout\);

-- Location: FF_X88_Y8_N13
\counter_entity|bcd1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd1~2_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd1\(2));

-- Location: LABCELL_X88_Y8_N48
\counter_entity|temp_bcd1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd1~3_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\counter_entity|Equal0~1_combout\) # 
-- (\counter_entity|Mod0|auto_generated|divider|divider|StageOut[29]~2_combout\) ) ) ) # ( !\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- (\counter_entity|Mod0|auto_generated|divider|divider|op_6~13_sumout\) # (\counter_entity|Equal0~1_combout\) ) ) ) # ( \counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\) # (\counter_entity|Equal0~1_combout\) ) ) ) # ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\counter_entity|Mod0|auto_generated|divider|divider|op_7~17_sumout\) # (\counter_entity|Equal0~1_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100111111001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~2_combout\,
	datab => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datae => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \counter_entity|temp_bcd1~3_combout\);

-- Location: FF_X88_Y8_N49
\counter_entity|bcd1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd1~3_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd1\(3));

-- Location: LABCELL_X88_Y8_N0
\counter_entity|temp_bcd1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd1~0_combout\ = ( \counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\counter_entity|Equal0~1_combout\ & \counter_entity|Add0~1_sumout\) ) ) # ( 
-- !\counter_entity|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\counter_entity|Equal0~1_combout\ & \counter_entity|Mod0|auto_generated|divider|divider|op_7~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|ALT_INV_Add0~1_sumout\,
	datad => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	dataf => \counter_entity|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \counter_entity|temp_bcd1~0_combout\);

-- Location: FF_X88_Y8_N1
\counter_entity|bcd1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd1~0_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd1\(0));

-- Location: LABCELL_X88_Y9_N3
\disp1_entity|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux6~0_combout\ = ( \counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(3) $ (((\counter_entity|bcd1\(2)) # (\counter_entity|bcd1\(1)))) ) ) # ( !\counter_entity|bcd1\(0) & ( (!\counter_entity|bcd1\(1) & (\counter_entity|bcd1\(2))) # 
-- (\counter_entity|bcd1\(1) & ((\counter_entity|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111100001111000011100100111001001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd1\(1),
	datab => \counter_entity|ALT_INV_bcd1\(2),
	datac => \counter_entity|ALT_INV_bcd1\(3),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	combout => \disp1_entity|Mux6~0_combout\);

-- Location: LABCELL_X88_Y9_N39
\disp1_entity|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux5~0_combout\ = ( \counter_entity|bcd1\(0) & ( (!\counter_entity|bcd1\(1) & (\counter_entity|bcd1\(2))) # (\counter_entity|bcd1\(1) & ((\counter_entity|bcd1\(3)))) ) ) # ( !\counter_entity|bcd1\(0) & ( (!\counter_entity|bcd1\(1) & 
-- (\counter_entity|bcd1\(2) & \counter_entity|bcd1\(3))) # (\counter_entity|bcd1\(1) & ((\counter_entity|bcd1\(3)) # (\counter_entity|bcd1\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111001001110010011100010111000101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd1\(1),
	datab => \counter_entity|ALT_INV_bcd1\(2),
	datac => \counter_entity|ALT_INV_bcd1\(3),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	combout => \disp1_entity|Mux5~0_combout\);

-- Location: LABCELL_X88_Y9_N42
\disp1_entity|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux4~0_combout\ = ( \counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( \counter_entity|bcd1\(3) ) ) ) # ( !\counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( \counter_entity|bcd1\(3) ) ) ) # ( \counter_entity|bcd1\(0) & ( 
-- !\counter_entity|bcd1\(2) & ( (\counter_entity|bcd1\(3) & \counter_entity|bcd1\(1)) ) ) ) # ( !\counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(2) & ( \counter_entity|bcd1\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_bcd1\(3),
	datac => \counter_entity|ALT_INV_bcd1\(1),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	dataf => \counter_entity|ALT_INV_bcd1\(2),
	combout => \disp1_entity|Mux4~0_combout\);

-- Location: LABCELL_X88_Y9_N51
\disp1_entity|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux3~0_combout\ = ( \counter_entity|bcd1\(0) & ( (!\counter_entity|bcd1\(1) & (!\counter_entity|bcd1\(2) $ (\counter_entity|bcd1\(3)))) # (\counter_entity|bcd1\(1) & ((\counter_entity|bcd1\(3)) # (\counter_entity|bcd1\(2)))) ) ) # ( 
-- !\counter_entity|bcd1\(0) & ( (!\counter_entity|bcd1\(1) & (\counter_entity|bcd1\(2))) # (\counter_entity|bcd1\(1) & ((\counter_entity|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111100101111001011100100111001001111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd1\(1),
	datab => \counter_entity|ALT_INV_bcd1\(2),
	datac => \counter_entity|ALT_INV_bcd1\(3),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	combout => \disp1_entity|Mux3~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\disp1_entity|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux2~0_combout\ = ( \counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) ) ) # ( !\counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( (!\counter_entity|bcd1\(1)) # (\counter_entity|bcd1\(3)) ) ) ) # ( \counter_entity|bcd1\(0) & ( 
-- !\counter_entity|bcd1\(2) ) ) # ( !\counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(2) & ( (\counter_entity|bcd1\(3) & \counter_entity|bcd1\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_bcd1\(3),
	datac => \counter_entity|ALT_INV_bcd1\(1),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	dataf => \counter_entity|ALT_INV_bcd1\(2),
	combout => \disp1_entity|Mux2~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\disp1_entity|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux1~0_combout\ = ( \counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( (\counter_entity|bcd1\(1)) # (\counter_entity|bcd1\(3)) ) ) ) # ( !\counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( \counter_entity|bcd1\(3) ) ) ) # ( 
-- \counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(2) & ( (!\counter_entity|bcd1\(3)) # (\counter_entity|bcd1\(1)) ) ) ) # ( !\counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(2) & ( \counter_entity|bcd1\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_bcd1\(3),
	datac => \counter_entity|ALT_INV_bcd1\(1),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	dataf => \counter_entity|ALT_INV_bcd1\(2),
	combout => \disp1_entity|Mux1~0_combout\);

-- Location: LABCELL_X88_Y9_N6
\disp1_entity|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp1_entity|Mux0~0_combout\ = ( \counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) & ( (!\counter_entity|bcd1\(1)) # (\counter_entity|bcd1\(3)) ) ) ) # ( !\counter_entity|bcd1\(0) & ( \counter_entity|bcd1\(2) ) ) # ( \counter_entity|bcd1\(0) & ( 
-- !\counter_entity|bcd1\(2) & ( (\counter_entity|bcd1\(1)) # (\counter_entity|bcd1\(3)) ) ) ) # ( !\counter_entity|bcd1\(0) & ( !\counter_entity|bcd1\(2) & ( (\counter_entity|bcd1\(1)) # (\counter_entity|bcd1\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_bcd1\(3),
	datac => \counter_entity|ALT_INV_bcd1\(1),
	datae => \counter_entity|ALT_INV_bcd1\(0),
	dataf => \counter_entity|ALT_INV_bcd1\(2),
	combout => \disp1_entity|Mux0~0_combout\);

-- Location: LABCELL_X83_Y8_N30
\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \counter_entity|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \counter_entity|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X83_Y8_N33
\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \counter_entity|Add0~25_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \counter_entity|Add0~25_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~25_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X83_Y8_N36
\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\counter_entity|Add0~21_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\counter_entity|Add0~21_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\counter_entity|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Add0~21_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X83_Y8_N39
\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \counter_entity|Add0~17_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \counter_entity|Add0~17_sumout\ ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~17_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X83_Y8_N42
\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X83_Y8_N57
\counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( 
-- !\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LABCELL_X83_Y8_N48
\counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~17_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LABCELL_X83_Y8_N54
\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( 
-- !\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: MLABCELL_X84_Y8_N36
\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ = (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \counter_entity|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~25_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: MLABCELL_X87_Y8_N6
\counter_entity|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X87_Y8_N9
\counter_entity|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \counter_entity|Add0~9_sumout\ ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \counter_entity|Add0~9_sumout\ ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_entity|ALT_INV_Add0~9_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X87_Y8_N12
\counter_entity|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) 
-- # (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\counter_entity|Add0~13_sumout\))) ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\counter_entity|Add0~13_sumout\))) ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datab => \counter_entity|ALT_INV_Add0~13_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X87_Y8_N15
\counter_entity|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X87_Y8_N18
\counter_entity|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~21_sumout\)) ) + ( GND ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\counter_entity|Add0~21_sumout\)) ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|ALT_INV_Add0~21_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X87_Y8_N21
\counter_entity|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) # (\counter_entity|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) ) + ( VCC ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~14\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X87_Y8_N24
\counter_entity|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y8_N39
\counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( 
-- !\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: MLABCELL_X84_Y8_N30
\counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = ( \counter_entity|Add0~21_sumout\ & ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \counter_entity|ALT_INV_Add0~21_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: MLABCELL_X84_Y8_N33
\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\)) # (\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\counter_entity|Add0~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datad => \counter_entity|ALT_INV_Add0~25_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: MLABCELL_X87_Y8_N3
\counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Add0~13_sumout\ ) ) # ( 
-- !\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datac => \counter_entity|ALT_INV_Add0~13_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: MLABCELL_X87_Y8_N36
\counter_entity|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X87_Y8_N39
\counter_entity|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( \counter_entity|Add0~5_sumout\ ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( \counter_entity|Add0~5_sumout\ ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~5_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X87_Y8_N42
\counter_entity|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Add0~9_sumout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Add0~9_sumout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~9_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X87_Y8_N45
\counter_entity|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X87_Y8_N48
\counter_entity|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X87_Y8_N51
\counter_entity|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\counter_entity|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X87_Y8_N54
\counter_entity|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X87_Y7_N33
\counter_entity|temp_bcd2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd2~1_combout\ = (!\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\counter_entity|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \counter_entity|temp_bcd2~1_combout\);

-- Location: FF_X87_Y7_N35
\counter_entity|bcd2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd2~1_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd2\(1));

-- Location: MLABCELL_X87_Y7_N6
\counter_entity|temp_bcd2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd2~2_combout\ = ( !\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\counter_entity|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Equal0~1_combout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \counter_entity|temp_bcd2~2_combout\);

-- Location: FF_X87_Y7_N8
\counter_entity|bcd2[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd2~2_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd2[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N33
\counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|op_5~9_sumout\ & ( !\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: MLABCELL_X87_Y7_N18
\counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \counter_entity|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: MLABCELL_X87_Y8_N0
\counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\) ) ) # ( !\counter_entity|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( (\counter_entity|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ & 
-- \counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: MLABCELL_X87_Y8_N30
\counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ = ( \counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( (!\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\counter_entity|Add0~9_sumout\) ) ) # ( !\counter_entity|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( (\counter_entity|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \counter_entity|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~9_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: MLABCELL_X87_Y7_N36
\counter_entity|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: MLABCELL_X87_Y7_N39
\counter_entity|Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( \counter_entity|Add0~1_sumout\ ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_entity|ALT_INV_Add0~1_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: MLABCELL_X87_Y7_N42
\counter_entity|Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( (!\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Add0~5_sumout\)) ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|ALT_INV_Add0~5_sumout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: MLABCELL_X87_Y7_N45
\counter_entity|Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\)) ) + ( VCC ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: MLABCELL_X87_Y7_N48
\counter_entity|Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( (!\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\counter_entity|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\counter_entity|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: MLABCELL_X87_Y7_N51
\counter_entity|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (!\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\counter_entity|Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # 
-- (\counter_entity|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\)) # (\counter_entity|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\))) ) + ( 
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	datab => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \counter_entity|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: MLABCELL_X87_Y7_N54
\counter_entity|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \counter_entity|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \counter_entity|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \counter_entity|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X87_Y7_N30
\counter_entity|temp_bcd2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd2~0_combout\ = (!\counter_entity|Equal0~1_combout\ & !\counter_entity|Div0|auto_generated|divider|divider|op_7~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Equal0~1_combout\,
	datac => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \counter_entity|temp_bcd2~0_combout\);

-- Location: FF_X87_Y7_N32
\counter_entity|bcd2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd2~0_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd2\(0));

-- Location: MLABCELL_X87_Y7_N9
\counter_entity|temp_bcd2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_entity|temp_bcd2~3_combout\ = (!\counter_entity|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\counter_entity|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_Equal0~1_combout\,
	datad => \counter_entity|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \counter_entity|temp_bcd2~3_combout\);

-- Location: FF_X87_Y7_N11
\counter_entity|bcd2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd2~3_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd2\(3));

-- Location: MLABCELL_X87_Y7_N12
\disp2_entity|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux6~0_combout\ = ( \counter_entity|bcd2\(3) & ( (\counter_entity|bcd2[2]~DUPLICATE_q\) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( (!\counter_entity|bcd2\(1) & (!\counter_entity|bcd2[2]~DUPLICATE_q\ $ 
-- (!\counter_entity|bcd2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y7_N15
\disp2_entity|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux5~0_combout\ = ( \counter_entity|bcd2\(3) & ( (\counter_entity|bcd2[2]~DUPLICATE_q\) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( (\counter_entity|bcd2[2]~DUPLICATE_q\ & (!\counter_entity|bcd2\(1) $ 
-- (!\counter_entity|bcd2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux5~0_combout\);

-- Location: FF_X87_Y7_N7
\counter_entity|bcd2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_entity|temp_bcd2~2_combout\,
	clrn => \reset~input_o\,
	ena => \list_det_entity|match~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_entity|bcd2\(2));

-- Location: MLABCELL_X87_Y7_N21
\disp2_entity|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux4~0_combout\ = ( \counter_entity|bcd2\(3) & ( (\counter_entity|bcd2\(2)) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( (\counter_entity|bcd2\(1) & (!\counter_entity|bcd2\(0) & !\counter_entity|bcd2\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datac => \counter_entity|ALT_INV_bcd2\(0),
	datad => \counter_entity|ALT_INV_bcd2\(2),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y7_N27
\disp2_entity|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux3~0_combout\ = ( \counter_entity|bcd2\(3) & ( (\counter_entity|bcd2[2]~DUPLICATE_q\) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( (!\counter_entity|bcd2\(1) & (!\counter_entity|bcd2[2]~DUPLICATE_q\ $ 
-- (!\counter_entity|bcd2\(0)))) # (\counter_entity|bcd2\(1) & (\counter_entity|bcd2[2]~DUPLICATE_q\ & \counter_entity|bcd2\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y7_N0
\disp2_entity|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux2~0_combout\ = ( \counter_entity|bcd2\(3) & ( ((\counter_entity|bcd2\(0)) # (\counter_entity|bcd2[2]~DUPLICATE_q\)) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( ((!\counter_entity|bcd2\(1) & 
-- \counter_entity|bcd2[2]~DUPLICATE_q\)) # (\counter_entity|bcd2\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y7_N3
\disp2_entity|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux1~0_combout\ = ( \counter_entity|bcd2\(3) & ( (\counter_entity|bcd2[2]~DUPLICATE_q\) # (\counter_entity|bcd2\(1)) ) ) # ( !\counter_entity|bcd2\(3) & ( (!\counter_entity|bcd2\(1) & (!\counter_entity|bcd2[2]~DUPLICATE_q\ & 
-- \counter_entity|bcd2\(0))) # (\counter_entity|bcd2\(1) & ((!\counter_entity|bcd2[2]~DUPLICATE_q\) # (\counter_entity|bcd2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y7_N24
\disp2_entity|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp2_entity|Mux0~0_combout\ = ( \counter_entity|bcd2\(3) ) # ( !\counter_entity|bcd2\(3) & ( (!\counter_entity|bcd2\(1) & (\counter_entity|bcd2[2]~DUPLICATE_q\)) # (\counter_entity|bcd2\(1) & ((!\counter_entity|bcd2[2]~DUPLICATE_q\) # 
-- (!\counter_entity|bcd2\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_entity|ALT_INV_bcd2\(1),
	datab => \counter_entity|ALT_INV_bcd2[2]~DUPLICATE_q\,
	datac => \counter_entity|ALT_INV_bcd2\(0),
	dataf => \counter_entity|ALT_INV_bcd2\(3),
	combout => \disp2_entity|Mux0~0_combout\);

-- Location: LABCELL_X10_Y13_N3
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


