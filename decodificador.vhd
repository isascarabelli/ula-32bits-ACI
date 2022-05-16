library ieee;

use ieee.std_logic_1164.all;

entity decodificador is

    port (opcode: in std_logic_vector(3 downto 0); --opcode vem da ula de 32 bits testbench
          sel: out std_logic_vector(1 downto 0);
          
end decodificador;

architecture archDecode of decodificador is
    signal a1: in std_logic;
    signal b1: in std_logic;
    signal c1: in std_logic;
    signal sSel1: in std_logic;
    signal sSel2: in std_logic;
    signal sSel31: in std_logic;

begin
    a1 <= opcode(0);
    c1 <= opcode(1);
    b1 <= opcode(2);

    sSel1 <= (b1 or c1) and (a1 or b1);
    sSel2 <= b1;
    sSel3 <= c1;
    
    sel(0) <= sSel1;
    sel(1) <= (sSel2 xor sSel3);
          
end archDecode;
