----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2025 08:26:23 AM
-- Design Name: 
-- Module Name: IFetch - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IFetch is
      Port ( jmp: in std_logic;
        jmp_address: in std_logic_vector(31 downto 0);
        PCSrc: in std_logic;
        branch_address: in std_logic_vector(31 downto 0);
        en: in std_logic;
        rst: in std_logic;
        clk: in std_logic;
        pc_plus_4: out std_logic_vector(31 downto 0);
        instr: out std_logic_vector(31 downto 0)
      );
end IFetch;

architecture Behavioral of IFetch is
signal PC: std_logic_vector(31 downto 0) := X"00000000";
signal q_from_jmp: std_logic_vector(31 downto 0) := X"00000000";
signal added_next: std_logic_vector(31 downto 0) := X"00000004";
signal d_from_pc: std_logic_vector(31 downto 0) := X"00000000";



   
type rom_type is array(0 to 31) of std_logic_vector(31 downto 0);
signal matr: rom_type := (
    B"000000_00011_00011_00011_00000_100010", -- sub $3, $3, $3    -- 0x00639802 -- creez un 0
    B"000000_00001_00001_00001_00000_100010", -- sub $1, $1, $1    -- 0x00208802 
    B"000000_00010_00010_00010_00000_100010", -- sub $2, $2, $2    -- 0x00429002
    B"001000_00001_00001_0000000000001001", -- addi $1, $1, 9     -- 0x20210009 -- numarul initial
    B"001000_00010_00010_0000000000000001", -- addi $2, $2, 1     -- 0x20420001 -- creez un 1
    B"001000_00011_00011_0000000000000001", -- addi $3, $3, 1     -- 0x20630001 -- cel mai mare numar putere 
    -- a lui 2 din numarul initial
    B"101011_00000_00001_0000001010001100", -- sw $1, 652($0)     -- 0xAC0128C  -- il stochez la 652 (oriunde)
    B"000000_00000_00011_00011_00010_000000", -- sll $3, $3, $2   -- 0x00031880 -- *2
    B"000000_00000_00001_00001_00010_000010", -- srl $1, $1, $2   -- 0x00010882 -- /2 numarul initial
    B"000111_00001_00000_1111111111111101", -- bgtz $1, -3        -- 0x1C20FFFD -- continui pana devine 0
    B"000000_00000_00011_00011_00010_000010", -- srl $3, $3, $2   -- 0x00031882 -- mereu e cu 1 mai mult
    B"100011_00000_00001_0000001010001100", -- lw $1, 652($0)     -- 0x8C0128C -- iau iarasi numarul initial
    B"000000_00011_00001_00001_00000_100010", -- sub $1, $3, $1   -- 0x00610802 -- vad daca numarul initial e mai 
    --mic decat ce am gasit eu (cazul 0)
     
    B"000111_00001_00000_0000000000000001", -- bgtz $1, 1         -- 0x1C200001 -- sar peste cazul 0, e tratat deja
    B"101011_00000_00011_0000001010001100", -- sw $3, 652($0)     -- 0xAC0328C -- pun cel mai mare numar putere
    -- a lui 2 in memorie la 652
    others => X"00000000"
    
    
);


begin

    pc_plus_4 <= X"00000004" + PC;
    added_next <= X"00000004" + PC;
    q_from_jmp <= added_next when PCSrc = '0' else  branch_address;
    d_from_pc <= q_from_jmp when jmp = '0' else jmp_address;
    process(clk, rst, en)
        begin
            
                if rst = '1' then
                    PC <= X"00000000";
                elsif rising_edge(clk) and en = '1' then
                    PC <= d_from_pc;
                     --instr <= matr( to_integer(unsigned(PC)));
                end if;
                
                
            
    end process;
    
    instr <= matr( to_integer(unsigned(PC(6 downto 2))));

end Behavioral;
