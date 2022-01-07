----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:45 01/06/2022 
-- Design Name: 
-- Module Name:    Full_Adder_VHDL - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_VHDL is
    Port ( X,Y,Z : in  STD_LOGIC;
           Sum,Carry : out  STD_LOGIC);
end Full_Adder_VHDL;

architecture Behavioral of Full_Adder_VHDL is

begin
Sum <= X XOR Y XOR Z;
Carry <= (X AND Y) OR ((X XOR Y)OR Z);

end Behavioral;

