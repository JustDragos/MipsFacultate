----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2025 09:24:29 PM
-- Design Name: 
-- Module Name: MEM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEM is
  Port ( MemWrite: in std_logic;
    ALUResIn: in std_logic_vector(31 downto 0);
    RD2: in std_logic_vector(31 downto 0);
    clk: in std_logic;
    en: in std_logic;
    
    ALUResOut: out std_logic_vector(31 downto 0);
    MemData: out std_logic_vector(31 downto 0)
  );
end MEM;

architecture Behavioral of MEM is
type mem_ram is array(0 to 63) of std_logic_vector(31 downto 0);
signal mem_matrix: mem_ram := (others => X"00000000");
signal address: std_logic_vector(5 downto 0) := "000000";
begin
    address <= ALUResIn(7 downto 2);
    data_memory: process(clk)
        begin
              if rising_edge(clk) then
                if en = '1' and MemWrite = '1' then
                    mem_matrix(conv_integer(unsigned(address))) <= RD2;
                end if;
              end if;
        end process;
    MemData <=  mem_matrix(conv_integer(unsigned(address)));
    ALUResOut <= ALUResIn;
end Behavioral;
