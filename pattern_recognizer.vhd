library ieee;
use ieee.std_logic_1164.all;

entity pattern_recognizer is
	port(	clk : in std_logic;
			reset : in std_logic;
			x : in std_logic;
			z : out std_logic
	);
end pattern_recognizer;



architecture behaviour of pattern_recognizer is
	begin
		process(clk, reset)
			type State_type is (S0, S1, S11, S111, S1110, s11100);
			variable State : State_Type;
		begin
			
			if(reset='1') then
				State := S0; z <= '0';
			
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
					when S1101 => z <='1';
					when others => z <= '0';
				end case;
		
			end if;
		
		end process;
	
end behaviour;
