library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_display.all;

entity pattern_recognizer is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			x 		: in std_logic;
			seg1	: out std_logic_vector(6 DOWNTO 0);
			seg2	: out std_logic_vector(6 DOWNTO 0)	
	);
end pattern_recognizer;



architecture behaviour of pattern_recognizer is
	begin
		process(clk, reset)
			type State_type is (S0, S1, S11, S111, S1110, S11100);
			variable State 	: State_Type;
			variable counter	: integer range 0 to 100;
			variable temp		: integer range 0 to 9;
		begin
			
			if(reset='0') then
				State := S0; counter := 0;
			
			elsif rising_edge(clk) then
				case State is
					when S0 =>
						if(X = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when S1 =>
						if(X = '1') then
							State := S11;
						else 
							State := S0;
						end if;
			
					when S11 =>
						if(X = '1') then
							State := S111;
						else
							State := S0;
						end if;
						
					when S111 =>
						if(X = '1') then
							State := S111;
						else
							State := S1110;
						end if;
						
					when S1110 =>
						if(X = '1') then
							State := S1;
						else
							State := S11100;
						end if;
						
					when S11100 =>
						if(X = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when others =>
						State := S0;
						
				end case; 
			
				case State is

						when S11100 =>
								if(counter = 100) then
									seg1 <= int_to_dec_display_vector(10); --sent overflow to segment display
									seg2 <= int_to_dec_display_vector(10); --sent overflow to segment display
								else
				
									counter := counter + 1;
						
									seg1 <= int_to_dec_display_vector(counter mod 10); --sent least significant number to segment display
									temp := counter/10;
									seg2 <= int_to_dec_display_vector(temp mod 10); --sent most significant number to segment display
						
								end if;
								
						when others =>
							null;
					
				end case;
		
			end if;
		
		end process;
	
end behaviour;
