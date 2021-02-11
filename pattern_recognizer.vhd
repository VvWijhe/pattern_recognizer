library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_display.all;

entity pattern_recognizer is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			data 		: in std_logic;
			seg1	: out std_logic_vector(6 DOWNTO 0);
			seg2	: out std_logic_vector(6 DOWNTO 0)	
	);
end pattern_recognizer;



architecture behaviour of pattern_recognizer is
	begin
		process(clk, reset)
			type State_type is (S0, S1, S11, S111, S1110, S11100);
			variable State 		: State_Type;
			variable counter		: integer range 0 to 100;
			variable temp_seg1	: std_logic_vector(6 DOWNTO 0);
			variable temp_seg2	: std_logic_vector(6 DOWNTO 0);
		begin
			
			if(reset='0') then
				State := S0; 
				counter := 0;
				seg1 <= "1000000";
				seg2 <= "1000000";
			
			elsif rising_edge(clk) then
				case State is
					when S0 =>
						if(data = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when S1 =>
						if(data = '1') then
							State := S11;
						else 
							State := S0;
						end if;
			
					when S11 =>
						if(data = '1') then
							State := S111;
						else
							State := S0;
						end if;
						
					when S111 =>
						if(data = '1') then
							State := S111;
						else
							State := S1110;
						end if;
						
					when S1110 =>
						if(data = '1') then
							State := S1;
						else
							State := S11100;
						end if;
						
					when S11100 =>
						if(data = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when others =>
						State := S0;
						
				end case; 
			
				case State is

						when S11100 =>
								if(counter = 99) then
									temp_seg1 := "0111111"; --sent overflow to segment display
									temp_seg2 := "0111111"; --sent overflow to segment display
								else
				
									counter := counter + 1;									
									temp_seg1 := int_to_dec_display_vector(counter mod 10); --sent least significant number to segment display
									temp_seg2 := int_to_dec_display_vector(counter/10); --sent most significant number to segment display
						
								end if;
								
								seg1 <= temp_seg1;
								seg2 <= temp_seg2;
								
						when others =>
							null;
					
				end case;
		
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

