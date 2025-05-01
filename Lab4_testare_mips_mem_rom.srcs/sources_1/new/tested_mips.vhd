----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2025 10:56:05 AM
-- Design Name: 
-- Module Name: tested_mips - Behavioral
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
use IEEE.STD_LOGIC_ARITH.conv_integer;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tested_mips is
   Port (
    
    
    BT1: in std_logic;
    BT0: in std_logic;
    clk: in std_logic;
    an: out std_logic_vector(7 downto 0);
    cat: out std_logic_vector(6 downto 0);
    sw: in std_logic_vector(2 downto 0);
    led: out std_logic_vector(15 downto 0)
    );
end tested_mips;

architecture Behavioral of tested_mips is

component SSD is
    Port ( clk : in STD_LOGIC;
           digits : in STD_LOGIC_VECTOR(31 downto 0);
           an : out STD_LOGIC_VECTOR(7 downto 0);
           cat : out STD_LOGIC_VECTOR(6 downto 0));
end component;

component MPG is
    Port ( enable : out STD_LOGIC;
           btn : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;
component IFetch is
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
end component;

 component instructionDecodifier is
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
  sa: out std_logic_vector(10 downto 6);
  en: in std_logic;
  wa: in std_logic_vector(4 downto 0);
  rt: out std_logic_vector(4 downto 0);
  rd: out std_logic_vector(4 downto 0)
   );
end component;

component UnitControl is
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
end component;
   
component ExecutionElem is
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
  branch_address: out std_logic_vector(31 downto 0);
  rt: in std_logic_vector(4 downto 0);
  rd: in std_logic_vector(4 downto 0);
  reg_dst: in std_logic ;
  rWA: out std_logic_vector(4 downto 0)
  
   );
end component;   

component MEM is
  Port ( MemWrite: in std_logic;
    ALUResIn: in std_logic_vector(31 downto 0);
    RD2: in std_logic_vector(31 downto 0);
    clk: in std_logic;
    en: in std_logic;
    
    ALUResOut: out std_logic_vector(31 downto 0);
    MemData: out std_logic_vector(31 downto 0)
  );
end component;




signal pc_plus_4: std_logic_vector(31 downto 0) := X"00000000";
signal next_in_rom: std_logic_vector(4 downto 0) := "00000";
signal mips_en: std_logic := '0';
signal instr: std_logic_vector(31 downto 0) := X"00000000";
signal to_ssd: std_logic_vector(31 downto 0) := X"00000000";
signal jmp_address: std_logic_vector(31 downto 0) := X"00000000";
signal pc_src: std_logic := '0';
-- signals from i_fetch / ssd

signal       br_gtz:  std_logic := '0';
signal       reg_dst:  std_logic := '0';
signal       ext_op:  std_logic := '0';
signal       alu_src:  std_logic := '0';
signal       branch:  std_logic := '0';
signal       jump:  std_logic := '0';
signal       alu_op:  std_logic_vector(2 downto 0) := "000";
signal       mem_write:  std_logic := '0';
signal       mem_to_reg:  std_logic := '0';
signal       reg_write:  std_logic := '0';
-- signals from uc



signal      gtz: std_logic;
signal      branch_address: std_logic_vector(31 downto 0) := X"00000000";
signal      alu_res : std_logic_vector(31 downto 0) := X"00000000";
signal      zero: std_logic := '0';
-- signals from ex



signal alu_res_out: std_logic_vector(31 downto 0) := X"00000000";
signal mem_data : std_logic_vector(31 downto 0) := X"00000000";
-- signals from mem


signal wd: std_logic_vector(31 downto 0); -- this right here should come from the next lab, or be modified
signal rd1: std_logic_vector(31 downto 0) := X"00000000";
signal rd2: std_logic_vector(31 downto 0) := X"00000000";
signal ext_imm: std_logic_vector(31 downto 0) := X"00000000";
signal func: std_logic_vector(5 downto 0) := "000000";
signal sa: std_logic_vector(4 downto 0) := "00000";

signal alu_from_b_must_be_removed: std_logic_vector (31 downto 0) := X"00000000";

signal rt: std_logic_vector(4 downto 0) := "00000";
signal rd: std_logic_vector(4 downto 0) := "00000";
signal rWa: std_logic_vector(4 downto 0) := "00000";


-- for if/id
signal IF_ID_pc_plus_4: std_logic_vector(31 downto 0) := X"00000000";
signal IF_ID_instr: std_logic_vector(31 downto 0) := X"00000000";
signal IF_ID_en: std_logic := '0';


-- for id/ex
signal ID_EX_rd1: std_logic_vector(31 downto 0) := X"00000000";
signal ID_EX_rd2: std_logic_vector(31 downto 0) := X"00000000";
signal ID_EX_sa: std_logic_vector(4 downto 0) := "00000";
signal ID_EX_ext_imm: std_logic_vector(31 downto 0) := X"00000000";
signal ID_Ex_func: std_logic_vector(5 downto 0) := "000000";
signal ID_EX_RegDst: std_logic := '0';
signal ID_EX_Branch: std_logic := '0';
signal ID_EX_RegWr: std_logic := '0';
signal ID_EX_Br_gtz: std_logic := '0';
signal ID_EX_en: std_logic := '0';
signal ID_EX_rt: std_logic_vector(4 downto 0) := "00000";
signal ID_EX_rd: std_logic_vector(4 downto 0) := "00000";
signal ID_EX_mem_to_reg: std_logic := '0';
signal ID_EX_mem_write: std_logic := '0';
signal ID_EX_alu_op: std_logic_vector(2 downto 0) := "000";
signal ID_EX_alu_src: std_logic := '0';
signal ID_EX_pc_plus_4: std_logic_vector(31 downto 0) := X"00000000";


-- for EX/MEM
signal EX_MEM_Branch: std_logic := '0';
signal EX_MEM_RegWr: std_logic := '0';
signal EX_MEM_Zero: std_logic := '0';
signal EX_MEM_Wa: std_logic_vector(4 downto 0) := "00000";
signal EX_MEM_rd2: std_logic_vector(31 downto 0) := X"00000000";
signal EX_MEM_en: std_logic := '0';
signal EX_MEM_mem_to_reg: std_logic := '0';
signal EX_MEM_mem_write: std_logic := '0';
signal EX_MEM_Br_gtz: std_logic := '0';
signal EX_MEM_gtz: std_logic := '0';
signal EX_MEM_Branch_address: std_logic_vector(31 downto 0) := X"00000000";
signal EX_MEM_alu_res: std_logic_vector(31 downto 0) := X"00000000";

-- for MEM/WB
signal MEM_WB_RegWr: std_logic := '0';
signal MEM_WB_alu_res_out: std_logic_vector(31 downto 0) := X"00000000";
signal MEM_WB_mem_data: std_logic_vector(31 downto 0) := X"00000000";
signal MEM_WB_wa: std_logic_vector(4 downto 0) := "00000";
signal MEM_WB_en: std_logic := '0';
signal MEM_WB_mem_to_reg: std_logic := '0';





begin
   
    alu_from_b_must_be_removed <= (rd2  when alu_src = '0' else ext_imm);
    sd: SSD port map(
        clk => clk,
        digits => to_ssd,
        an => an,
        cat =>cat
    );
    mp: MPG port map(
        enable => mips_en,
        btn => BT0,
        clk => clk
    );
    
    jmp_address <=  IF_ID_pc_plus_4(31 downto 28) & IF_ID_instr(25 downto 0) & "00";
    -- rst here, led here, pcsrc in ifetc
    i_fetch: IFetch port map(
        jmp => jump,
        branch_address => EX_MEM_Branch_address,
        jmp_address => jmp_address,
        PCSrc => pc_src,
        rst => BT1,
        en => mips_en,
        clk => clk,
        pc_plus_4 => pc_plus_4,
        instr => instr
        
    
    );
    
    -- based on next_in_rom we show on ssd
    -- connect actual_info that is instruction
    
    
    
    UC: UnitControl port map(
        instr => IF_ID_instr(31 downto 26),
        br_gtz => br_gtz,
        reg_dst => reg_dst,
        ext_op => ext_op,
        alu_src => alu_src,
        branch => branch,
        jump => jump,
        alu_op => alu_op,
        mem_write => mem_write,
        mem_to_reg => mem_to_reg,
        reg_write => reg_write
    );
    ID: InstructionDecodifier port map(
        reg_write => MEM_WB_RegWr,
        clk => clk,
        instr => IF_ID_instr(25 downto 0),
        reg_dst => reg_dst,
        ext_op => ext_op,
        wd => wd, -- inafara componentei
        rd1 => rd1,
        rd2 => rd2,
        ext_imm => ext_imm,
        func => func,
        sa => sa,
        en => mips_en,
        wa => MEM_WB_wa,
        rt => rt,
        rd => rd
    ); -- here we will put the mips_en
    
    EX: ExecutionElem port map(
      rd1 => ID_EX_rd1,
      rd2 => ID_EX_rd2,
      ext_imm => ID_EX_ext_imm,
      sa => ID_EX_sa,
      func => ID_EX_func,
      alu_op => ID_EX_alu_op,
      pc_plus_4 => ID_EX_pc_plus_4,
      gtz => gtz,
      zero => zero,
      alu_res => alu_res,
      branch_address => branch_address,
      alu_src => ID_EX_alu_src,
      rt => ID_EX_rt,
      rd => ID_EX_rd,
      rWA => rWA,
      reg_dst => reg_dst
    );
    MEM_Elem: MEM port map(
        MemWrite => EX_MEM_mem_write,
        ALUResIn => EX_MEM_alu_res,
        en => mips_en,
        rd2 => EX_MEM_rd2,
        clk => clk,
        ALUResOut => alu_res_out,
        MemData => mem_data
    
    );
   
    
  wd <= MEM_WB_alu_res_out when MEM_WB_mem_to_reg = '0' else MEM_WB_mem_data; 
  pc_src <= (EX_MEM_Br_gtz and EX_MEM_gtz) or (EX_MEM_Branch and EX_MEM_zero);

  process(sw)
        
    begin
        case sw is
        
            when "000" => to_ssd <= instr;
            
            when "001" => to_ssd <= pc_plus_4;
            
            when "010" => to_ssd <= rd1;
            
            
            when "011" => to_ssd <= rd2;
            
            when "100" => to_ssd <= ext_imm;
            
            when "101" => to_ssd <= alu_res;
            
            when "110" => to_ssd <= mem_data;
            
            when "111" => to_ssd <= wd;
            
           
            
        end case;
    
    end process;
    -- after debugging
    led <= "00000" & alu_op(2 downto 0) & reg_dst & ext_op & alu_src & branch & br_gtz & mem_write & mem_to_reg & reg_write;
    
    
    -- for the pipeline architecture
    
    process(clk)
        begin
        -- reverse order, could be any order
        -- as the assignment are only done
        -- at the end. Temporary variables 
        -- are used.
        MEM_WB_mem_to_reg <= EX_MEM_mem_to_reg;
        MEM_WB_RegWr <= EX_MEM_RegWr;
        MEM_WB_alu_res_out <= alu_res_out;
        MEM_WB_mem_data <= mem_data;
        MEM_WB_wa <= EX_MEM_wa;
        MEM_WB_mem_to_reg <= EX_MEM_mem_to_reg;
        
        
        EX_MEM_Branch <= ID_EX_Branch;
        EX_MEM_RegWr <= ID_EX_RegWr;
        EX_MEM_Zero <= zero;
        EX_MEM_Wa <= rWa;
        EX_MEM_rd2 <= ID_EX_rd2;
        EX_MEM_mem_to_reg <= ID_EX_mem_to_reg;
        EX_MEM_mem_write <= ID_EX_mem_write;
        EX_MEM_Br_gtz <= ID_EX_Br_gtz;
        EX_MEM_gtz <= gtz;
        EX_MEM_Branch_address <= branch_address; 
        EX_MEM_alu_res <= alu_res; 

        ID_EX_rd1 <= rd1;
        ID_EX_rd2 <= rd2;
        ID_EX_sa <= sa;
        ID_EX_ext_imm <= ext_imm;
        ID_Ex_func <= func;
        ID_EX_RegDst <= reg_dst;
        ID_EX_Branch <= branch; 
        ID_EX_RegWr <= reg_write;
        ID_EX_Br_gtz <= br_gtz;
        ID_EX_rt <= rt;
        ID_EX_rd <= rd;
        ID_EX_mem_to_reg <= mem_to_reg;
        ID_EX_mem_write <= mem_write;
        ID_EX_alu_op <= alu_op;
        ID_EX_alu_src <= alu_src;
        ID_EX_pc_plus_4 <= pc_plus_4;
        
        IF_ID_instr <= instr;
        IF_ID_pc_plus_4 <= pc_plus_4;
        
        
        
    end process;
    
    
    
end Behavioral;
