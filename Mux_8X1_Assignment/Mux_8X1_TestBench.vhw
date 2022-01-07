--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : Mux_8X1_TestBench.vhw
-- /___/   /\     Timestamp : Sat Jan 08 02:16:26 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Mux_8X1_TestBench
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Mux_8X1_TestBench IS
END Mux_8X1_TestBench;

ARCHITECTURE testbench_arch OF Mux_8X1_TestBench IS
    COMPONENT Mux_8X1_VHDL
        PORT (
            A : In std_logic;
            B : In std_logic;
            C : In std_logic;
            D : In std_logic;
            E : In std_logic;
            F : In std_logic;
            G : In std_logic;
            H : In std_logic;
            S0 : In std_logic;
            S1 : In std_logic;
            S2 : In std_logic;
            Z : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic := '0';
    SIGNAL B : std_logic := '0';
    SIGNAL C : std_logic := '0';
    SIGNAL D : std_logic := '0';
    SIGNAL E : std_logic := '0';
    SIGNAL F : std_logic := '0';
    SIGNAL G : std_logic := '0';
    SIGNAL H : std_logic := '0';
    SIGNAL S0 : std_logic := '0';
    SIGNAL S1 : std_logic := '0';
    SIGNAL S2 : std_logic := '0';
    SIGNAL Z : std_logic := '0';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : Mux_8X1_VHDL
        PORT MAP (
            A => A,
            B => B,
            C => C,
            D => D,
            E => E,
            F => F,
            G => G,
            H => H,
            S0 => S0,
            S1 => S1,
            S2 => S2,
            Z => Z
        );

        PROCESS
            PROCEDURE CHECK_Z(
                next_Z : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Z /= next_Z) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Z="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Z);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Z);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                D <= '1';
                S1 <= '1';
                S2 <= '1';
                WAIT FOR 900 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

