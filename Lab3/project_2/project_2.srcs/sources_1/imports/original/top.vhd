----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2018 13:55:22
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Generic ( REGA_TO_REGB_DATA_WIDTH : integer := 2000;
              --LUT_COMBINER_NUM_LUTS : integer := 6000;
			  --CROSS_LC_AREA_WIRES : integer := 2000;
			  CLKIN_PERIOD : real := 10.000
              );
    Port ( clkin, reset : in STD_LOGIC;
           locked : out std_logic;
           data_in_300 : in STD_LOGIC_VECTOR (5 downto 0);
           data_in_600 : in STD_LOGIC_VECTOR (5 downto 0);
           data_out_600 : out STD_LOGIC_VECTOR (5 downto 0);
           data_out_300 : out STD_LOGIC_VECTOR (5 downto 0)
           );
end top;

architecture Behavioral of top is

component clocking_module
generic (CLKIN_PERIOD : real );
port
 (-- Clock in ports
  -- Clock out ports
  clk_600          : out    std_logic;
  clk_300          : out    std_logic;
  clk_150          : out    std_logic;
  clk_400          : out    std_logic;
  clk_500          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;



component reg_clka_to_clkb is
    Generic ( DATA_WIDTH : integer := 1000);
    Port ( clka : in STD_LOGIC;
           clkb : in STD_LOGIC;
           a, a1, a2 : in STD_LOGIC;
           b : out STD_LOGIC);
end component reg_clka_to_clkb;

component lut_combiner is
    Generic ( NUM_LUTS : integer := 1000);
    Port ( clka : in STD_LOGIC;
           a : in STD_LOGIC;
           b : out STD_LOGIC
           );
end component lut_combiner;

component bus_double_register is
    Generic ( DATA_WIDTH : integer := 1000
	);
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC;
           b : out STD_LOGIC
           );
end component bus_double_register;

signal clk_600 : std_logic;
signal clk_300 : std_logic;
signal clk_150 : std_logic;
signal clk_400 : std_logic;
signal clk_500 : std_logic;

signal data_in_600_i, data_in_300_i, data_out_300_i, data_out_600_i : std_logic_vector(5 downto 0);

 
begin

mmcm_inst : clocking_module
   generic map ( CLKIN_PERIOD => CLKIN_PERIOD
   )
   port map (
  -- Clock out ports  
   clk_600 => clk_600,
   clk_300 => clk_300,
   clk_150 => clk_150,
   clk_400 => clk_400,
   clk_500 => clk_500,   
  -- Status and control signals                
   reset => reset,
   locked => locked,
   -- Clock in ports
   clk_in1 => clkin
 );

clk300_to_clk600_ffs_i : reg_clka_to_clkb 
   generic map ( DATA_WIDTH => REGA_TO_REGB_DATA_WIDTH)
   port map (
    clka => clk_300,
    clkb => clk_600,
    a => data_in_300_i(0),
    a1 => data_in_300_i(1),
    a2 => data_in_300_i(2),
    b => data_out_600_i(0)
);

clk600_to_clk300_ffs_i : reg_clka_to_clkb 
   generic map ( DATA_WIDTH => REGA_TO_REGB_DATA_WIDTH)
   port map (
    clka => clk_600,
    clkb => clk_300,
    a => data_in_600_i(0),
    a1 => data_in_600_i(1),
    a2 => data_in_600_i(2),
    b => data_out_300_i(0)
);
--lut_combiner_i : lut_combiner 
--    generic map ( NUM_LUTS => LUT_COMBINER_NUM_LUTS) 
--    port map (
--       clka => clk_150,
--       a => data_in_i(1),
--       b => data_out_i(1)
--   );
   
--bus_double_register_down_up : bus_double_register
--    generic map ( DATA_WIDTH => CROSS_LC_AREA_WIRES)
--	port map (
--		clk => clk_400,
--		a => data_in_i(2),
--		b => data_out_i(2)
--	);
	
--bus_double_register_up_down : bus_double_register
--    generic map ( DATA_WIDTH => CROSS_LC_AREA_WIRES)
--	port map (
--		clk => clk_400,
--		a => data_in_i(3),
--		b => data_out_i(3)
--	);
	
--bus_double_register_right_left : bus_double_register
--    generic map ( DATA_WIDTH => CROSS_LC_AREA_WIRES)
--	port map (
--		clk => clk_400,
--		a => data_in_i(4),
--		b => data_out_i(4)
--	);
	
--bus_double_register_left_right : bus_double_register
--    generic map ( DATA_WIDTH => CROSS_LC_AREA_WIRES)
--	port map (
--		clk => clk_400,
--		a => data_in_i(5),
--		b => data_out_i(5)
--	);

process (clk_300)
begin
    if rising_edge (clk_300) then
       data_in_300_i <= data_in_300;
       data_out_300 <= data_out_300_i;
    end if;
end process;


process (clk_600)
begin
    if rising_edge (clk_600) then
       data_in_600_i <= data_in_600;
       data_out_600 <= data_out_600_i;
    end if;
end process;
   
end Behavioral;
