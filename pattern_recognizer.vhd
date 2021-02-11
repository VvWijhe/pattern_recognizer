library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_display.all;

entity pattern_recognizer is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			data 	: in std_logic;
			seg1	: out std_logic_vector(6 DOWNTO 0);
			seg2	: out std_logic_vector(6 DOWNTO 0)	
	);
end pattern_recognizer;



architecture behaviour of pattern_recognizer is
	begin
		process(clk, reset)
			variable pattern			: std_logic_vector(4 downto 0) := "11100";
			variable last_five_bits	: std_logic_vector(4 downto 0) := "UUUUU";
			variable counter			: integer range 0 to 100;
		begin
		
		
		if(reset = '0') then
			counter 			:= 0;							--Reset counter to zero
			last_five_bits	:= "UUUUU";					--Reset last_five_bits to unkowns
			seg1 <= int_to_dec_display_vector(0); 	--Reset segment display to zero
			seg2 <= int_to_dec_display_vector(0); 	--Reset segment display to zero
		
		elsif rising_edge(clk) then
			
			last_five_bits := last_five_bits(3 downto 0) & data;	-- append new data bit to the last_five_bits
			
			if(last_five_bits = pattern) then
				if(counter = 99) then
					seg1 <= int_to_dec_display_vector(10); --Set segment display to overflow
					seg2 <= int_to_dec_display_vector(10);	--Set segment display to overflow	
				else
					counter := counter + 1;										--Increment counter by one							
					seg1 <= int_to_dec_display_vector(counter mod 10); --Assign least significant number to segment display
					seg2 <= int_to_dec_display_vector(counter/10); 		--Assign most significant number to segment display
				end if;
			end if;
		
		
		end if;
		end process;
	
end behaviour;

architecture subsystems of pattern_recognizer is
signal match	: std_logic;
signal bcd1		: integer range 0 to 15;
signal bcd2		: integer range 0 to 15;	
begin 

list_det_entity	: entity work.list_det(structure) port map (clk, reset, data, match);
counter_entity		: entity work.counter(structure) port map (clk, reset, match, bcd1, bcd2);
disp1_entity		: entity work.disp_driver(structure) port map (bcd1, seg1);
disp2_entity		: entity work. disp_driver(structure) port map (bcd2, seg2);

end subsystems;

