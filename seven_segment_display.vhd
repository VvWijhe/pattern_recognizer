library ieee;
use ieee.std_logic_1164.all;

PACKAGE seven_segment_display IS

	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector;

END PACKAGE;

PACKAGE BODY seven_segment_display IS
	FUNCTION int_to_dec_display_vector(input: integer) RETURN std_logic_vector IS VARIABLE temp : std_logic_vector(6 DOWNTO 0);
	BEGIN
		case input is 
			WHEN 0 => temp := "1000000"; -- 0, 
         WHEN 1 => temp := "1111001"; -- 1
         WHEN 2 => temp := "0100100"; -- 2
         WHEN 3 => temp := "0110000"; -- 3 
         WHEN 4 => temp := "0011001"; -- 4
         WHEN 5 => temp := "0010010"; -- 5
         WHEN 6 => temp := "0000010"; -- 6
         WHEN 7 => temp := "1111000"; -- 7
         WHEN 8 => temp := "0000000"; -- 8
         WHEN 9 => temp := "0010000"; -- 9
         WHEN OTHERS => temp := "0111111"; --
		END CASE;
		
	RETURN temp;
		
	END int_to_dec_display_vector;

END seven_segment_display;