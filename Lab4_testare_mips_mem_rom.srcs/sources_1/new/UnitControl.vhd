----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2025 09:23:26 AM
-- Design Name: 
-- Module Name: UnitControl - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UnitControl is
      Port ( 
      instr: in std_logic_vector(5 downto 0);
      br_gtz: out std_logic;
      reg_dst: out std_logic;
      ext_op: out std_logic;
      alu_src: out std_logic;
      branch: out std_logic;
      jump: out std_logic;
      alu_op: out std_logic_vector(2 downto 0);
      mem_write: out std_logic;
      mem_to_reg: out std_logic;
      reg_write: out std_logic
       );
end UnitControl;

architecture Behavioral of UnitControl is

begin
    
    process(instr)
        begin
            reg_dst <= '0';
            ext_op <= '0';
            alu_src<= '0';
            branch<= '0';
            jump<= '0';
            
            mem_write<= '0';
            mem_to_reg<= '0';
            reg_write<= '0';
            br_gtz <= '0';
        case instr is
            when "000000" => 
                reg_dst <= '1';
                reg_write <= '1';
                alu_op <= "000";
            -- tip R
            
            
            
            when "001000" =>
             alu_op <= "001";
                ext_op <= '1';
                alu_src <= '1';
                reg_write <= '1';
                
             -- addi
                
                
             when "100011" =>
             alu_op <= "001";
             ext_op <= '1';
             alu_src <= '1';
             mem_to_reg <= '1';
             reg_write <= '1';
             --lw
             
             
             when "101011" =>
             alu_op <= "001";
             ext_op <= '1';
             alu_src <= '1';
             mem_write <= '1';
             --sw
             
             
              when "000100" =>
             alu_op <= "010";
             ext_op <= '1';
             branch <= '1';
             alu_src <= '1';
             --beq
             
             
              when "001101" =>
             alu_op <= "011";
             alu_src <= '1';
             reg_write <= '1';
             --ori
             
             
              when "000111" =>
             alu_op <= "111";
             ext_op <= '1';
             br_gtz <= '1';
             alu_src <= '1';
             --btgz
             
             
             when "000010"=>
                alu_op <= "000";
                jump <= '1';
             when others =>jump <= '0' ;
             --jmp
        end case;
        
    end process;

end Behavioral;
