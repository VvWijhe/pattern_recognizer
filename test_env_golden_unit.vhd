library ieee;
use ieee.std_logic_1164.all;


entity test_env_golden_unit is
end test_env_golden_unit;


architecture test of test_env_golden_unit is

	component testset is
		port(	clk	: out std_logic;
				reset	: out std_logic;
				data 	: out std_logic);	
	end component;

	component pattern_recognizer is 
		port(	clk 	: in std_logic;
				reset : in std_logic;
				data 	: in std_logic;
				seg1	: out std_logic_vector(6 DOWNTO 0);
				seg2	: out std_logic_vector(6 DOWNTO 0));
	end component;
	
	component compare is
		port(	clk					: in std_logic;
				reset					: in std_logic;
				seg1_behaviour 	: in std_logic_vector(6 downto 0);
				seg2_behaviour 	: in std_logic_vector(6 downto 0);
				seg1_subsystems	: in std_logic_vector(6 downto 0);
				seg2_subsystems	: in std_logic_vector(6 downto 0));
	end component;

	signal clk_signal 				: std_logic;
	signal reset_signal 				: std_logic;
	signal data_signal				: std_logic;
	signal seg1_behaviour_signal 	: std_logic_vector(6 downto 0);
	signal seg2_behaviour_signal 	: std_logic_vector(6 downto 0);
	signal seg1_subsystems_signal : std_logic_vector(6 downto 0);
	signal seg2_subsystems_signal : std_logic_vector(6 downto 0);
	
	
begin

	
	inst_pattern_behaviour : pattern_recognizer port map(clk_signal, reset_signal, data_signal, seg1_behaviour_signal, seg2_behaviour_signal);
	inst_pattern_subsystems : pattern_recognizer port map(clk_signal, reset_signal, data_signal, seg1_subsystems_signal, seg2_subsystems_signal);
	inst_compare : compare port map(clk_signal, reset_signal, seg1_behaviour_signal, seg2_behaviour_signal, seg1_subsystems_signal, seg2_subsystems_signal);
	inst_testset : testset port map(clk_signal, reset_signal, data_signal);
	
end test;

configuration test_configuration of test_env_golden_unit is
 
 for test
	for inst_pattern_behaviour : pattern_recognizer
		use entity work.pattern_recognizer(behaviour);
	end for;
	for inst_pattern_subsystems : pattern_recognizer
		use entity work.pattern_recognizer(subsystems);
	end for;

 end for;
	
end test_configuration;



