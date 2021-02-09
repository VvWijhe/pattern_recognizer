library ieee;
use ieee.std_logic_1164.all;

PACKAGE seven_segment_display IS


	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector(6 DOWNTO 0);



	--FUNCTION intdec_to_display_vector IS
		--PORT(input: IN integer; output: OUT std_logic_vector(6 DOWNTO 0));
	--END FUNCTION;
	
	--COMPONENT inthex_to_display_vector IS
	--	PORT(input: IN integer;output: OUT std_logic_vector(6 DOWNTO 0));
	--END COMPONENT;
	--
	--COMPONENT vector_to_display_vector IS
	--	PORT(input: IN std_logic_vector(3 DOWNTO 0); output: out std_logic_vector(6 DOWNTO 0));
	--END COMPONENT;

END PACKAGE;

PACKAGE BODY seven_segment_display IS
	VARIABLE temp: std_logic_vector;
	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector(6 DOWNTO 0) IS
	BEGIN
		
		RETURN conv_std_logic_vector(input);
		
		
		
		--WITH input SELECT 
		--temp 	<=		"0111111" WHEN 0,
			--			"0000110" WHEN 1,
			--			"1011011" WHEN 2,
			--			"1001111" WHEN 3,
			--			"1100110" WHEN 4,
			--			"1101101" WHEN 5,
			--			"1111101" WHEN 6,
			--			"0000111" WHEN 7,
			--			"1111111" WHEN 8,
			--			"1101111" WHEN 9,
			--			"1000000" WHEN OTHERS;
	
	--RETURN temp;
	
	
	END int_to_dec_display_vector;


END seven_segment_display;