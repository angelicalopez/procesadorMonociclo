----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:58 10/10/2016 
-- Design Name: 
-- Module Name:    Pc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pc is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (31 downto 0);
           datosalida : out  STD_LOGIC_VECTOR (31 downto 0));
end Pc;

architecture Behavioral of Pc is

begin
 process(clk,rst,dato)
  begin 
		 if rising_edge(clk) then
		          if rst= '1' then
					          datosalida<= x"00000000";
						  
				     else 
				             datosalida<=dato;
				           			 
											 
		            end if;
		   end if;
				 
  end process;
end Behavioral;

