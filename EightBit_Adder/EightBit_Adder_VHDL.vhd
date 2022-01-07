----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:17:11 01/07/2022 
-- Design Name: 
-- Module Name:    EightBit_Adder_VHDL - Behavioral 
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

entity EightBit_Adder_VHDL is
    Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (7 downto 0);
           co : out  STD_LOGIC);
end EightBit_Adder_VHDL;

architecture Behavioral of EightBit_Adder_VHDL is

signal cary : std_logic_vector(6 downto 0);

component full_adder is
port (p,q,r:in std_logic; sm,cr: out std_logic);
end component;

begin

a0:full_adder port map (x(0),y(0),cin,sum(0),cary(0));
a1:full_adder port map (x(1),y(1),cary(0),sum(1),cary(1));
a2:full_adder port map (x(2),y(2),cary(1),sum(2),cary(2));
a3:full_adder port map (x(3),y(3),cary(2),sum(3),cary(3));
a4:full_adder port map (x(4),y(4),cary(3),sum(4),cary(4));
a5:full_adder port map (x(5),y(5),cary(4),sum(5),cary(5));
a6:full_adder port map (x(6),y(6),cary(5),sum(6),cary(6));
a7:full_adder port map (x(7),y(7),cary(6),sum(7),co);

end Behavioral;
library ieee;
use ieee.std_logic_1164.all;
entity full_adder is
port (p,q,r:in std_logic; sm,cr: out std_logic);
end full_adder;

architecture Behavioral of full_adder is
begin
sm <= p xor q xor r;
cr <= (p and q) or (q and r) or (r and p);
end Behavioral ;

