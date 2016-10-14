--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:02:20 10/13/2016
-- Design Name:   
-- Module Name:   D:/Users/angelicabibiana/Desktop/procesadorangelica/procesador1/Tb_Rf.vhd
-- Project Name:  procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Rf
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
 
ENTITY Tb_Rf IS
END Tb_Rf;
 
ARCHITECTURE behavior OF Tb_Rf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Rf
    PORT(
         rf1 : IN  std_logic_vector(4 downto 0);
         rf2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         crf1 : OUT  std_logic_vector(31 downto 0);
         crf2 : OUT  std_logic_vector(31 downto 0);
         crd : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rf1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rf2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal crd : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';

 	--Outputs
   signal crf1 : std_logic_vector(31 downto 0);
   signal crf2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Rf PORT MAP (
          rf1 => rf1,
          rf2 => rf2,
          rd => rd,
          crf1 => crf1,
          crf2 => crf2,
          crd => crd,
          rst => rst
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst<='0';
			rf1 <= "10000";
			rf2 <= "10001";
			rd <= "10010";

      wait;
   end process;

END;
