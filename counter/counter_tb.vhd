library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_tb is
end entity;

architecture Behavioral of Counter_tb is
    
component Counter is 
    port (
        clk                 : in STD_LOGIC;
        reset               : in STD_LOGIC;
        direction           : in STD_LOGIC;
        digit_selection_in  : in STD_LOGIC;
        digit_selection_out : out STD_LOGIC;
        led_result          : out STD_LOGIC_VECTOR(3 downto 0);
        seven_segment       : out STD_LOGIC_VECTOR(6 downto 0)
    );
end component;

signal clk_tb : STD_LOGIC := '0';
signal reset_tb : STD_LOGIC := '0';
signal direction_tb : STD_LOGIC := '0';
signal digit_selection_in_tb : STD_LOGIC := '0';
signal digit_selection_out_tb : STD_LOGIC; 
signal clock_one_sec_tb : STD_LOGIC;
signal led_result_tb : STD_LOGIC_VECTOR(3 downto 0);
signal seven_segment_tb : STD_LOGIC_VECTOR(6 downto 0);

begin

    uut: Counter port map (
        
        clk                  => clk_tb,
        reset                => reset_tb,
        direction            => direction_tb,
        digit_selection_in   => digit_selection_in_tb,
        digit_selection_out  => digit_selection_out_tb,
        led_result           => led_result_tb,
        seven_segment        => seven_segment_tb  
    );

    sim_clk : process is 
    begin
        clk_tb <= '0'; wait for 5ns;
        clk_tb <= '1'; wait for 5ns;
    end process;

    sim_inputs : process is
    begin
        reset_tb <= '0'; 
        direction_tb <= '1';
        digit_selection_in_tb <= '0';
        wait for 20ns;
        reset_tb <= '1'; wait for 20ns;
        reset_tb <= '0'; 
        wait for 2sec;
        digit_selection_in_tb <= '1'; 
        wait for 2sec;
        direction_tb <= '1';
        wait for 10sec;
    end process;

end architecture;