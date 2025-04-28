----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 08:32:34 AM
-- Design Name: 
-- Module Name: ExecutionElem - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ExecutionElem is
  Port (
  rd1: in std_logic_vector(31 downto 0);
  alu_src: in std_logic;
  rd2: in std_logic_vector(31 downto 0);
  ext_imm: in std_logic_vector(31 downto 0);
  sa: in std_logic_vector(4 downto 0);
  func: in std_logic_vector(5 downto 0);
  alu_op: in std_logic_vector(2 downto 0);
  pc_plus_4: in std_logic_vector(31 downto 0);
  gtz: out std_logic;
  zero: out std_logic;
  alu_res: out std_logic_vector(31 downto 0);
  branch_address: out std_logic_vector(31 downto 0)

   );
end ExecutionElem;

architecture Behavioral of ExecutionElem is
signal alu_ctrl: std_logic_vector(2 downto 0) := "000";
signal is_left: std_logic := '0';
signal b_for_alu: std_logic_vector(31 downto 0) := X"00000000";
signal interm: std_logic_vector(31 downto 0) := X"00000000";
signal is_var: std_logic := '0';
signal rez: std_logic_vector(31 downto 0) := X"00000000";
signal is_zero: std_logic := '0';
begin
    
    b_for_alu <= rd2 when alu_src = '0' else ext_imm;
   
    
    process(alu_op, func)
        begin
            case alu_op is
                when "000" => 
                    case func is
                        when "100000" => alu_ctrl <= "001";
                        when "100010" => alu_ctrl <= "010";
                        when "000000" => alu_ctrl <= "101";
                        is_left <= '1';
                        when "000010" => alu_ctrl <= "101";
                        when "100100" => alu_ctrl <= "100";
                        when "100110" => alu_ctrl <= "110";
                        when "000100" => alu_ctrl <= "101";
                        is_left <= '1';
                        is_var <= '1';
                        when "100101" => alu_ctrl <= "011";
                        when others => alu_ctrl <= "000";
                    end case;
                
                when others=> alu_ctrl <= alu_op;
            end case;
    
    end process;
    process(rd1, b_for_alu, alu_ctrl, sa) 
        begin
            case alu_ctrl is
                when "001" => rez <= rd1 + b_for_alu;
                
                when "010" => rez <= rd1 - b_for_alu; -- sub operation
                when "011" => rez <= rd1 or b_for_alu;
                when "100" => rez <= rd1 and b_for_alu;
                when "101" => 
                    if is_left = '1' then
                        if is_var = '0' then
                            rez <= to_stdlogicvector(to_bitvector(b_for_alu) sll conv_integer (sa));
                        else
                            rez <= to_stdlogicvector(to_bitvector(b_for_alu) sll conv_integer(rd1));
                        end if;
                    else
                        rez <= to_stdlogicvector(to_bitvector(b_for_alu) srl conv_integer (sa));
                    end if;
                    
                when "110" => rez <= rd1 xor b_for_alu;
                
                when "111" => 
                    
                    if signed(rd1) > 0 then
                    -- with jump, the ext_imm is the address where we go
                        rez <= X"00000001";
                    else
                        rez <= X"00000000";
                        
                    
                    end if;
                when others => rez <= X"00000000";
            end case;
    end process;
    -- maybe i'll create a new signal for the inverter
    alu_res <= rez;
    is_zero <= '1' when rez = X"00000000" else '0';
    zero <= is_zero;
    gtz <= not (is_zero) and not(rez(31)); 
    branch_address <= pc_plus_4 + (ext_imm(29 downto 0) & "00");
    
    
end Behavioral;
