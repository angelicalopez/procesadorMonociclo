--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:19:39 10/10/2016
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/ce/Pc/test_Pc.vhd
-- Project Name:  Pc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Pc
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
 
ENTITY test_Pc IS
END test_Pc;
 
ARCHITECTURE behavior OF test_Pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pc
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         dato : IN  std_logic_vector(31 downto 0);
         datosalida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal dato : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal datosalida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pc PORT MAP (
          clk => clk,
          rst => rst,
          dato => dato,
          datosalida => datosalida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		rst<='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		rst<='0';
		dato <=x"00000002";

      wait for 100 ns;	
		rst<='0';
		dato <=x"00000004";
		wait for 100 ns;	
		rst<='0';
		dato <=x"00000003";
      -- insert stimulus here 

      wait;
   end process;

END;
