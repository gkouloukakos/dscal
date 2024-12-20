library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_vector.all;

entity lab3 is
    port (
        digit : in std_logic_vector(3 downto 0);
        leftrightin : in std_logic;
        leftrightout : out std_logic;
        seg : out std_logic_vector(6 downto 0)
    );
end lab3;

architecture Behavioral of lab3 is 
begin

    leftrightout <= leftrightin; 
    
    dtos : process(digit) is
    begin
        case digit is
            when x"0" => seg <= "0111111";
            when x"1" => seg <= "0000110";
            when x"2" => seg <= "1011011";
            when x"3" => seg <= "1001111";
            when x"4" => seg <= "1100110";
            when x"5" => seg <= "1101101";
            when x"6" => seg <= "1111101";
            when x"7" => seg <= "0000111";
            when x"8" => seg <= "1111111";
            when x"9" => seg <= "1101111";
            when others => seg <= "1000000";
        end case;       
    end process; 

end Behavioral; 