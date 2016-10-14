--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:30:55 10/13/2016
-- Design Name:   
-- Module Name:   D:/Users/angelicabibiana/Desktop/procesadorangelica/procesador1/Tb-nPC.vhd
-- Project Name:  procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPC
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
 
ENTITY Tb_nPC IS
END Tb_nPC;
 
ARCHITECTURE behavior OF Tb_nPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPC
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         direccion : IN  std_logic_vector(31 downto 0);
         salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal direccion : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPC PORT MAP (
          clk => clk,
          rst => rst,
          direccion => direccion,
          salida => salida
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
      wait for 30 ns;
		rst<='0';
		direccion<=  x"00000010"; 
		wait for 30 ns;
		direccion <=  x"00000011";
		wait for 30 ns;
		direccion <=  x"00000012";




	
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
