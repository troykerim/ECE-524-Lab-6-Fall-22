----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2018 15:05:36
-- Design Name: 
-- Module Name: reg_clka_to_clkb - Behavioral
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

entity reg_clka_to_clkb is
    Generic ( DATA_WIDTH : integer := 1000);
    Port ( clka : in STD_LOGIC;
           clkb : in STD_LOGIC;
           a, a1, a2 : in STD_LOGIC;
           b : out STD_LOGIC);
end reg_clka_to_clkb;

architecture Behavioral of reg_clka_to_clkb is

component bit_expander is
    Port ( data_in : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR);
end component bit_expander;

component bit_reducer is
    Port (  clk : in STD_LOGIC;
            data_in : in STD_LOGIC_VECTOR;
           data_out : out STD_LOGIC);
end component bit_reducer;

signal expanded_sig0 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig1 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig2 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig3 : std_logic_vector(DATA_WIDTH-1 downto 0);

signal a_r, a_r2 : std_logic;
signal a1_2r, a2_2r : std_logic;
signal a1_r, a2_r, en : std_logic;

begin

bit_expander_i : bit_expander port map (
    data_in => a,
    data_out => expanded_sig0
);

process (clka)
begin
    if rising_edge (clka)  then     
       a1_r <= a1;
       a2_r <= a2;
       a1_2r <= a1_r;
       a2_2r <= a2_r;
       if (en = '1') then
           expanded_sig1 <= expanded_sig0;
       end if;
    end if;
end process;

 en <= a1_2r and a2_2r;
 
process (clkb)
begin
    if rising_edge (clkb)  then
       a_r <= a;
       a_r2 <= a_r;
        if (a_r2 = '1') then
            expanded_sig2 <= expanded_sig1;
        end if;  
        expanded_sig3 <= expanded_sig2;  
    end if;
end process;

bit_reducer_i : bit_reducer port map (
    clk => clkb,
    data_in => expanded_sig3,
    data_out => b
);

end Behavioral;
