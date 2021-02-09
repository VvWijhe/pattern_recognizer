use ieee;
use ieee.std_logic_1164.all;

PACKAGE seven_segment_display IS

	COMPONENT intdec_to_display_vector IS
		PORT(input: IN integer(range 0 to 10); output: OUT std_logic_vector(6 DOWNTO 0));
	END COMPONENT
	
	COMPONENT inthex_to_display_vectyor IS
		PORT(input: IN integer(range 0 to 16);output: OUT std_logic_vector(6 DOWNTO 0));
	END COMPONENT
	
	COMPONENT vector_to_display_vector IS
		PORT(input: IN std_logic_vector(3 DOWNTO 0); output: out std_logic_vector(6 DOWNTO 0);
	END COMPONENT

END PACKAGE;

PACKAGE BODY seven_segment_display IS

COMPONENT intdec_to_display_vector(input: IN integer(range 0 to 10); output: OUT bit_vector(6 DOWNTO 0)) IS
BEGIN
WITH input SELECT output <=
	"0111111" WHEN 0,
	"0000110" WHEN 1,
	"1011011" WHEN 2,
	"1001111" WHEN 3,
	"1100110" WHEN 4,
	"1101101" WHEN 5,
	"1111101" WHEN 6,
	"0000111" WHEN 7,
	"1111111" WHEN 8,
	"1101111" WHEN 9,
END intdec_to_display_vector


COMPONENT inthex_to_display_vector(input: IN integer(range 0 to 16);output: OUT bit_vector(6 DOWNTO 0)) IS
BEGIN
WITH input SELECT output <=
	"0111111" WHEN 0,
	"0000110" WHEN 1,
	"1011011" WHEN 2,
	"1001111" WHEN 3,
	"1100110" WHEN 4,
	"1101101" WHEN 5,
	"1111101" WHEN 6,
	"0000111" WHEN 7,
	"1111111" WHEN 8,
	"1101111" WHEN 9,
	"1110111" WHEN 10,
	"1111100" WHEN 11,
	"0111001" WHEN 12,
	"1011110" WHEN 13,
	"1111001" WHEN 14,
	"1110001" WHEN 15,
end inthex_to_display_vector

COMPONENT vector_to_display_vector(input: IN std_logic_vector(3 DOWNTO 0); output: out std_logic_vector(6 DOWNTO 0)) IS
	"0111111" WHEN "0000",
	"0000110" WHEN "0001",
	"1011011" WHEN "0010",
	"1001111" WHEN "0011",
	"1100110" WHEN "0100",
	"1101101" WHEN "0101",
	"1111101" WHEN "0110",
	"0000111" WHEN "0111",
	"1111111" WHEN "1000",
	"1101111" WHEN "1001"
END vector_to_display_vector

END seven_segment_display;