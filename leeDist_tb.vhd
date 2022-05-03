library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
library work;
use work.array_pkg.all;

entity leeDist_tb is
end leeDist_tb;

architecture test of leeDist_tb is 
    component leeDist is 
        port (
                x           : in array_type;
                y           : in array_type
                ans_array   : out unsigned(3 downto 0)
                --ans         : out integer;
             );
    end component;


    signal x, y : array_type;
    signal ans  : unsigned(3 downto 0);

begin
    
    x <= ("0011", "0001", "0100", "0000");
    y <= ("0010", "0101", "0100", "0011");

    dut : leeDist port map(x => x, y => y, ans_array => ans);

end test;
