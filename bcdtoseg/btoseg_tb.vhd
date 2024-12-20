library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_vector.all;
use ieee.numeric_std.all;

entity lab3_tb is
end entity;

architecture behavioral of lab3_tb is

component lab3 is 
    port (
        digit : in std_logic_vector(3 downto 0);
        leftrightin : in std_logic;
        leftrightout : out std_logic;
        seg : out std_logic_vector(6 downto 0)
    );
end component;

signal digit_tb : std_logic_vector(3 downto 0) := (others => 'X');
signal leftrightin_tb : std_logic;
signal leftrightout_tb : std_logic;
signal seg_tb : std_logic_vector(6 downto 0);

begin

    uut: lab3 port map (
        digit => digit_tb,
        leftrightin => leftrightin_tb,
        leftrightout => leftrightout_tb,
        seg => seg_tb
    );
    
    sim_btoseg : process  is 
    begin
        
        digit_tb <= "1000"; 
        leftrightin_tb <= '1'; wait for 20ns;
        digit_tb <= "0100"; wait for 20ns;
        digit_tb <= "1001"; 
        leftrightin_tb <= '0'; wait for 20ns;
        digit_tb <= "1011"; wait for 20ns;
    end process;

end architecture;