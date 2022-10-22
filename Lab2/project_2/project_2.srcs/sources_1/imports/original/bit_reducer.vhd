----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2018 14:32:25
-- Design Name: 
-- Module Name: bit_reducer - Behavioral
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

entity bit_reducer is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR;
           data_out : out STD_LOGIC);
end bit_reducer;

architecture Behavioral of bit_reducer is

signal tmp_r, data_out_i : std_logic;
--attribute keep : string;
--attribute keep of tmp_r : signal is "true";

function and_reduct(slv : in std_logic_vector) return std_logic is
  variable res_v : std_logic := '1'; 
begin
  for i in slv'range loop
    res_v := res_v and slv(i);
  end loop;
  return res_v;
end function;

function or_reduct(slv : in std_logic_vector) return std_logic is
  variable res_v : std_logic := '0';  
begin
  for i in slv'range loop
    res_v := res_v or slv(i);
  end loop;
  return res_v;
end function;

begin

process (clk) 
begin
    if rising_edge (clk) then
        tmp_r <= or_reduct(data_in);
        data_out_i <= tmp_r;
        data_out <= data_out_i;
    end if;
end process;

end Behavioral;
