----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2018 14:40:49
-- Design Name: 
-- Module Name: bit_expander - Behavioral
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

entity bit_expander is
    Port ( data_in : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR);
end bit_expander;

architecture Behavioral of bit_expander is

--signal data_out_i : std_logic_vector;
attribute dont_touch : string;
attribute dont_touch of data_out : signal is "true";
begin

process (data_in)
begin
    for i in 0 to data_out'high loop
        data_out(i) <= data_in;
    end loop;
end process;
--data_out <= data_out_i;

end Behavioral;
