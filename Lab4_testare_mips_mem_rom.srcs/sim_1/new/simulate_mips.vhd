library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity simulate_mips is
end simulate_mips;

architecture Behavioral of simulate_mips is

    -- Component Declaration for the Unit Under Test (UUT)
    component tested_mips is
   Port (
    
    
    BT1: in std_logic;
    BT0: in std_logic;
    clk: in std_logic;
    an: out std_logic_vector(7 downto 0);
    cat: out std_logic_vector(6 downto 0);
    sw: in std_logic_vector(2 downto 0);
    led: out std_logic_vector(15 downto 0)
    --debug
    );
end component;

    -- Inputs
    signal BT1 : std_logic := '0';
    signal BT0 : std_logic := '0';
    signal clk : std_logic := '0';
    signal sw : std_logic_vector(2 downto 0) := "000";

    -- Outputs
    signal an : std_logic_vector(7 downto 0);
    signal cat : std_logic_vector(6 downto 0);
    signal led : std_logic_vector(15 downto 0);
    -- Clock period definitions
    constant clk_period : time := 10 ns;
    
    -- Enable signal control
    signal enable_pulse : std_logic := '1';
    signal instr: std_logic_vector(4 downto 0) := "00000";
    signal helping_signals: std_logic_vector(10 downto 0) := "00000000000";
    -- for debugging
    
    
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: tested_mips port map (
        BT1 => BT1,
        BT0 => enable_pulse,
        clk => clk,
        an => an,
        cat => cat,
        sw => sw,
        led => led
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    process
    begin
        enable_pulse <= '1';
        wait for clk_period * 2;
        enable_pulse <= '0';
    end process;
    -- Stimulus process
    helping_signals <= led(10 downto 0);
   -- debug things
     
    instr <= led(15 downto 11);
    -- Connect the enable pulse to BT0 (button input)
   

end Behavioral;