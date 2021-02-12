library ieee;
use ieee.std_logic_1164.all;

entity testbench is
	port(seg1, seg2 : out std_logic_vector(6 downto 0));
end testbench;

architecture behaviour of testbench is
	component pattern_recognizer is
		port(	clk	: in std_logic;
				reset : in std_logic;
				data	: in std_logic;
				seg1	: out std_logic_vector(6 downto 0);
				seg2	: out std_logic_vector(6 downto 0));
	end component;

	component testset is
		port(	data	:	out std_logic;
				reset	:	out std_logic;
				clk	:	out std_logic);
	end component;
	
	signal data_signal	: std_logic;
	signal reset_signal	: std_logic;
	signal clk_signal		: std_logic;
	
	begin
	
	pattern_recognizer_component	: pattern_recognizer port map(clk_signal, reset_signal, data_signal, seg1, seg2);
	testset_component					: testset port map(data_signal, reset_signal, clk_signal);
	
end behaviour;

