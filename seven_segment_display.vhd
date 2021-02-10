library ieee;
use ieee.std_logic_1164.all;

PACKAGE seven_segment_display IS

	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector;

END PACKAGE;

PACKAGE BODY seven_segment_display IS
	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector IS VARIABLE temp : std_logic_vector(6 DOWNTO 0);
	BEGIN
		case input is 
			WHEN 0 => temp := "0111111"; -- 0, 
         WHEN 1 => temp := "0000110"; -- 1
         WHEN 2 => temp := "1011011"; -- 2
         WHEN 3 => temp := "1001111"; -- 3 
         WHEN 4 => temp := "1100110"; -- 4
         WHEN 5 => temp := "1101101"; -- 5
         WHEN 6 => temp := "1111101"; -- 6
         WHEN 7 => temp := "0000111"; -- 7
         WHEN 8 => temp := "1111111"; -- 8
         WHEN 9 => temp := "1101111"; -- 9
         WHEN OTHERS => temp := "1000000"; --
		END CASE;
		
	RETURN temp;
		
	END int_to_dec_display_vector;

END seven_segment_display;