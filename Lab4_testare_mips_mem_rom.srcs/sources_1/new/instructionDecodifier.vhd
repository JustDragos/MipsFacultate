
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2025 08:36:44 AM
-- Design Name: 
-- Module Name: instructionDecodifier - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

use IEEE.STD_LOGIC_ARITH.conv_integer;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instructionDecodifier is
  Port (
  reg_write: in std_logic;
  clk: in std_logic;
  instr: in std_logic_vector(25 downto 0);
  reg_dst: in std_logic;
  ext_op: in std_logic;
  WD: in std_logic_vector(31 downto 0);
  RD1: out std_logic_vector(31 downto 0);
  RD2: out std_logic_vector(31 downto 0);
  ext_imm: out std_logic_vector(31 downto 0);
  func: out std_logic_vector(5 downto 0);
  sa: out std_logic_vector(4 downto 0);
  en: in std_logic
   );
end instructionDecodifier;

architecture Behavioral of instructionDecodifier is
    type mem is array(0 to 31) of std_logic_vector(31 downto 0);
    signal mem_rom : mem := (others => X"00000000");
    signal RA1, RA2, WA : std_logic_vector(4 downto 0) := "00000"; 
begin
    -- Properly assign addresses in a process or concurrent statements
    RA1 <= instr(25 downto 21);  -- Concurrent assignment
    RA2 <= instr(20 downto 16);  -- Concurrent assignment
    
    WA <= instr(20 downto 16) when reg_dst = '0' else instr(15 downto 11);
    
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' and reg_write = '1' then
                mem_rom(to_integer(unsigned(WA))) <= WD;
            end if;
        end if;
    end process;
    
    RD1 <= mem_rom(to_integer(unsigned(RA1)));
    RD2 <= mem_rom(to_integer(unsigned(RA2)));
    func <= instr(5 downto 0);
    sa <= instr(10 downto 6);
    
    -- Sign extension fix
    ext_imm(15 downto 0) <= instr(15 downto 0);
    ext_imm(31 downto 16) <= (others => instr(15)) when ext_op = '1' else (others => '0');
end Behavioral;