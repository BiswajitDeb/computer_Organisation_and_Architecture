----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:44 01/07/2022 
-- Design Name: 
-- Module Name:    Demux_1X8_VHDL - Behavioral 
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

entity Demux_1X8_VHDL is
    Port ( S0,S1,S2 : in  STD_LOGIC;
           A,B,C,D,E,F,G,H : out  STD_LOGIC;
           Z : in  STD_LOGIC);
end Demux_1X8_VHDL;

architecture Behavioral of Demux_1X8_VHDL is

begin

process (Z,S0,S1,S2) is

begin
if (S0 ='0' and S1 = '0' and S2= '0') then
A <= Z;
B <= '0';
C <= '0';
D <= '0';
E <= '0';
F <= '0';
G <= '0';
H <= '0';
elsif (S0 ='0' and S1 = '0' and S2= '1') then
A <= '0';
B <= Z;
C <= '0';
D <= '0';
E <= '0';
F <= '0';
G <= '0';
H <= '0';
elsif (S0 ='0' and S1 = '1' and S2= '0') then
A <= '0';
B <= '0';
C <= Z;
D <= '0';
E <= '0';
F <= '0';
G <= '0';
H <= '0';
elsif (S0 ='0' and S1 = '1' and S2= '1') then
A <= '0';
B <= '0';
C <= '0';
D <= Z;
E <= '0';
F <= '0';
G <= '0';
H <= '0';
elsif (S0 ='1' and S1 = '0' and S2= '0') then
A <= '0';
B <= '0';
C <= '0';
D <= '0';
E <= Z;
F <= '0';
G <= '0';
H <= '0';
elsif (S0 ='1' and S1 = '0' and S2= '1') then
A <= '0';
B <= '0';
C <= '0';
D <= '0';
E <= '0';
F <= Z;
G <= '0';
H <= '0';
elsif (S0 ='1' and S1 = '1' and S2= '0') then
A <= '0';
B <= '0';
C <= '0';
D <= '0';
E <= '0';
F <= '0';
G <= Z;
H <= '0';
else
A <= '0';
B <= '0';
C <= '0';
D <= '0';
E <= '0';
F <= '0';
G <= '0';
H <= Z;
end if;
end process;


end Behavioral;

