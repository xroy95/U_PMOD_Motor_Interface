--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: PMOD_MOTOR.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S025> <Package::256 VF>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity PMOD_MOTOR is
port (
    --<port_name> : <direction> <type>;
	PMOD1 : inout std_logic_vector(3 downto 0)  ; -- example
	PMOD2 : inout std_logic_vector(3 downto 0)  ; -- example
    Motor_EN1 :IN std_logic;
    Motor_EN2 : IN std_logic;
    Motor_DIR2: IN std_logic;
    Motor_DIR1 :IN std_logic;
    
    ENC1 : OUT std_logic_vector(1 downto 0);  -- example
    ENC2 : OUT std_logic_vector(1 downto 0)  -- example
    --<other_ports>;
);
end PMOD_MOTOR;
architecture architecture_PMOD_MOTOR of PMOD_MOTOR is
   -- signal, component etc. declarations
	signal signal_name1 : std_logic; -- example
	signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin
    ENC1<= PMOD1(3 downto 2);
    ENC2<= PMOD2(3 downto 2);
    PMOD1(1 downto 0)<=Motor_DIR1 & Motor_EN1;
    PMOD2(1 downto 0)<=Motor_DIR2 & Motor_EN2;
   -- architecture body
end architecture_PMOD_MOTOR;
