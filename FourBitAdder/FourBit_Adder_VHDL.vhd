----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:00:32 01/07/2022 
-- Design Name: 
-- Module Name:    FourBit_Adder_VHDL - Behavioral 
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

entity FourBit_Adder_VHDL is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Carryout : out  STD_LOGIC);
end FourBit_Adder_VHDL;

architecture Behavioral of FourBit_Adder_VHDL is
component fa is
port(
a,b,c:in std_logic;
co:out std_logic;
s:out std_logic
);
end component;
signal temp1,temp2,temp3:std_logic;

begin

fa0:fa port map(a=>A(0),b=>B(0),c=>Cin,co=>temp1,s=>S(0));
fa1:fa port map(a=>A(1),b=>B(1),c=>temp1,co=>temp2,s=>S(1));
fa2:fa port map(a=>A(2),b=>B(2),c=>temp2,co=>temp3,s=>S(2));
fa3:fa port map(a=>A(3),b=>B(3),c=>temp3,co=>Carryout,s=>S(3));

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa is
port(
a,b,c:in std_logic;
co:out std_logic;
s:out std_logic
);
end fa;

architecture fa_arch of fa is
begin
s<=a xor b xor c;
co<=(a and b) or (c and (A OR B));
end fa_arch;
