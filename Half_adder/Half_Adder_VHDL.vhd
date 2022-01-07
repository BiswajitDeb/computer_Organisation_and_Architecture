----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:08 11/08/2021 
-- Design Name: 
-- Module Name:    Half_Adder_VHDL - Behavioral 
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

entity Half_Adder_VHDL is
    Port ( A,B : in  STD_LOGIC;
           Sum,Carry : out  STD_LOGIC);
end Half_Adder_VHDL;

architecture Behavioral of Half_Adder_VHDL is

begin
Sum <= A xor B; 
Carry <= A and B;

end Behavioral;

