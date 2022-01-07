----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:11:41 01/08/2022 
-- Design Name: 
-- Module Name:    Mux_8X1_VHDL - Behavioral 
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

entity Mux_8X1_VHDL is
    Port ( A,B,C,D,E,F,G,H : in  STD_LOGIC;
           S0,S1,S2 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Mux_8X1_VHDL;

architecture Behavioral of Mux_8X1_VHDL is

begin
process (A,B,C,D,E,F,G,H,S0,S1,S2) is
begin
if (S0 ='0' and S1 = '0' and S2= '0') then
Z <= A;
elsif (S0 ='0' and S1 = '0' and S2= '1') then
Z <= B;
elsif (S0 ='0' and S1 = '1' and S2= '0') then
Z <= C;
elsif (S0 ='0' and S1 = '1' and S2= '1') then
Z <= D;
elsif (S0 ='1' and S1 = '0' and S2= '0') then
Z <= E;
elsif (S0 ='1' and S1 = '0' and S2= '1') then
Z <= F;
elsif (S0 ='1' and S1 = '1' and S2= '0') then
Z <= G;
else
Z <= H;
end if;
end process;


end Behavioral;

