----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:36 01/07/2022 
-- Design Name: 
-- Module Name:    Mux_4X1_VHDL - Behavioral 
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

entity Mux_4X1_VHDL is
    Port ( A,B,C,D,S0,S1 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Mux_4X1_VHDL;

architecture Behavioral of Mux_4X1_VHDL is

begin
process (A,B,C,D,S0,S1) is
begin
if (S0 ='0' and S1 = '0') then
Z <= A;
elsif (S0 ='1' and S1 = '0') then
Z <= B;
elsif (S0 ='0' and S1 = '1') then
Z <= C;
else
Z <= D;
end if;
end process;

end Behavioral;

