--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:21:14 10/13/2016
-- Design Name:   
-- Module Name:   D:/Users/angelicabibiana/Desktop/procesadorangelica/procesador1/TB_sumador.vhd
-- Project Name:  procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_sumador IS
END TB_sumador;
 
ARCHITECTURE behavior OF TB_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         salida_sumador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida_sumador : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador PORT MAP (
          A => A,
          B => B,
          salida_sumador => salida_sumador
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= x"00000002";
		B <= x"00000001";
		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		A<= x"00000004";
		B <= x"00000001";
		wait for 30 ns;
		A <= x"00000008";
		B <= x"00000001";
		
	
	
	

      -- insert stimulus here 

      wait;
   end process;

END;
