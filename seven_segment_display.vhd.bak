use ieee;
use ieee.std_logic_1164.all;

PACKAGE seven_segment_display IS

	COMPONENT intdec_to_display_vector IS
		PORT(input: IN integer(range 0 to 9); output: OUT bit_vector(6 DOWNTO 0));
	END COMPONENT
	
	COMPONENT inthex_to_display_vectyor IS
		PORT(input: IN integer(range 0 to 15);output: OUT bit_vector(6 DOWNTO 0));
	END COMPONENT

END PACKAGE;

PACKAGE BODY seven_segment_display IS

COMPONENT intdec_to_display_vector(input: IN integer(range 0 to 9); output: OUT bit_vector(6 DOWNTO 0)) IS
BEGIN
WITH input SELECT output <=
	"" WHEN 0,
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
	"" WHEN "",
END intdec_to_display_vector




END seven_segment_display;