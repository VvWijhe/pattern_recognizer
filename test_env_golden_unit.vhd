library ieee;
use ieee.std_logic_1164.all;


entity test_env_golden_unit is
end test_env_golden_unit;


architecture test of test_env_golden_unit is

	component pattern_recognizer is 
		port(	clk 	: in std_logic;
			reset : in std_logic;
			data 	: in std_logic;
			seg1	: out std_logic_vector(6 DOWNTO 0);
			seg2	: out std_logic_vector(6 DOWNTO 0)	
		);
	end component;



begin









end test;









configuration test_configuration of test_env_golden_unit is
 
 for test
	for insta : pattern_recognizer
		use entity work.pattern_recognizer(behaviour);
	end for;
	for instb : pattern_recognizer
		use entity work.pattern_recognizer(subsystems);
	end for;
	
 end for;
	
end test_configuration;



