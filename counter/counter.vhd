library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
    port (
        clk                 : in STD_LOGIC;
        reset               : in STD_LOGIC;
        direction           : in STD_LOGIC;
        digit_selection_in  : in STD_LOGIC;
        digit_selection_out : out STD_LOGIC;
        led_result          : out STD_LOGIC_VECTOR(3 downto 0);
        seven_segment       : out STD_LOGIC_VECTOR(6 downto 0)       
    );
end entity Counter;

architecture Behavioral of Counter is

--27 = 1.37*10^8
signal internal_clk  : UNSIGNED(27 downto 0) := (others => '0'); 
signal digit         : UNSIGNED(3 downto 0)  := (others => '0');
signal upper_limit   : UNSIGNED(3 downto 0)  := "1001"; 
signal lower_limit   : UNSIGNED(3 downto 0)  := "0000";
signal clock_one_sec : out STD_LOGIC :='0';

begin
    
    --One cycle for every 10^8 cycles of the FPGA's clock
    onesec : process(clk,reset) is
    begin
        if reset = '1' then
            internal_clk <= (others => '0');
            clock_one_sec <= 0;
        elsif rising_edge(clk) then 
            if internal_clk = to_unsigned(99999999, 27) then
                clock_one_sec <= not clock_one_sec;
                internal_clk <= (others => '0');
            else
                internal_clk <= internal_clk + 1;
            end if;
        end if;
    end process;

    --Change the digit per one T of the new clock, which is 1 sec
    change : process(clock_one_sec,reset) is
    begin
        if reset = '1' then
            digit <= (others => '0');
        elsif rising_edge(clock_one_sec) then
            if direction = '1' then
                if digit = upper_limit then
                    digit <= (others => '0');
                else
                    digit <= digit + 1;
                end if;
            else
                if digit = lower_limit then
                    digit <= "1001";
                else
                    digit <= digit - 1;
                end if;
            end if;
        end if;    
    end process;

    --Digit to seven segments 
    seg : process(digit)  is 
    begin
        case digit is
            when "0000" => seven_segment <= "0111111";
            when "0001" => seven_segment <= "0000110";
            when "0010" => seven_segment <= "1011011";
            when "0011" => seven_segment <= "1001111";
            when "0100" => seven_segment <= "1100110";
            when "0101" => seven_segment <= "1101101";
            when "0110" => seven_segment <= "1111101";
            when "0111" => seven_segment <= "0000111";
            when "1000" => seven_segment <= "1111111";
            when "1001" => seven_segment <= "1101111";
            when others => seven_segment <= "1000000";
        end case;
    end process;

    digit_selection_out <= digit_selection_in;
    led_result <= STD_LOGIC_VECTOR(digit);

end architecture;