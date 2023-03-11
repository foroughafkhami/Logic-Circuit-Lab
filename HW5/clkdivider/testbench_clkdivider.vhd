--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:47:37 12/05/2021
-- Design Name:   
-- Module Name:   D:/hwfive/clkdivider/testbench_clkdivider.vhd
-- Project Name:  clkdivider
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clkdivider
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
 
ENTITY testbench_clkdivider IS
END testbench_clkdivider;
 
ARCHITECTURE behavior OF testbench_clkdivider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clkdivider
    PORT(
         clk : IN  std_logic;
         mode_in : IN  std_logic_vector(1 downto 0);
         out_put : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal mode_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal out_put : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clkdivider PORT MAP (
          clk => clk,
          mode_in => mode_in,
          out_put => out_put
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
      -- hold reset state for 100 ns.
		mode_in <="00";
      wait for clk_period*200;
		mode_in <="01";
      wait for clk_period*200;
		mode_in <="10";
      wait for clk_period*200;
		mode_in <="11";
      wait for clk_period*200;
      -- insert stimulus here 
      wait;
   end process;

END;
