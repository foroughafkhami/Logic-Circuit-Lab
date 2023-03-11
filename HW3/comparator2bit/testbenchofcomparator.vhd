--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:07:32 11/20/2021
-- Design Name:   
-- Module Name:   D:/hw32/comparator2bit/testbenchofcomparator.vhd
-- Project Name:  comparator2bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator
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
 
ENTITY testbenchofcomparator IS
END testbenchofcomparator;
 
ARCHITECTURE behavior OF testbenchofcomparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator
    PORT(
         clk : IN  std_logic;
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         A_grater_B : OUT  std_logic;
         A_equal_B : OUT  std_logic;
         A_less_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal A_grater_B : std_logic;
   signal A_equal_B : std_logic;
   signal A_less_B : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          clk => clk,
          A => A,
          B => B,
          A_grater_B => A_grater_B,
          A_equal_B => A_equal_B,
          A_less_B => A_less_B
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
      A <= "00";
		B <= "01";
     wait for clk_period;	
      A <= "00";
		B <= "10";
     wait for clk_period;	
      A <= "00";
		B <= "00";
     wait for clk_period;
      A <= "01";
		B <= "10";
     wait for clk_period;
	   A <= "01";
		B <= "01";
     wait for clk_period;
	  A <= "01";
		B <= "00";
     wait for clk_period;	
      A <= "10";
		B <= "01";
     wait for clk_period;
      A <= "10";
		B <= "11";
     wait for clk_period;
	   A <= "11";
		B <= "10";
     wait for clk_period;
      -- insert stimulus here 

      -- insert stimulus here 
		--wait;
   end process;

END;
