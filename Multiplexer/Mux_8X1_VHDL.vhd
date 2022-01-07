----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:46:23 01/07/2022 
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
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC);
end Mux_8X1_VHDL;

architecture Behavioral of Mux_8X1_VHDL is

component Mux2x1 is
port( A,B,S: in std_logic;
F: out std_logic);
end component;

component Mux4x1 is
port( A,B,C,D: in std_logic;
S: in std_logic_vector(1 downto 0);
F: out std_logic);
end component;
Signal F1, F2: std_logic;

begin

M2: Mux4x1 port map(A(0),A(1),A(2),A(3),S(1 downto 0),F1);
M3: Mux4x1 port map(A(4),A(5),A(6),A(7),S(1 downto 0),F2);
M1: Mux2x1 port map(F1,F2,S(2),F);

end Behavioral;

