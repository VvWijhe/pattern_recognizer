library ieee;
use ieee.std_logic_1164.all;
use work.pattern_recognizer.all;


entity test_env_golden_unit is
end test_env_golden_unit;


architecture test of test_env_golden_unit is
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



