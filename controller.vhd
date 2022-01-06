-- Nguyen Kiem Hung
-- controller

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.sys_definition.all;

entity controller is             	
  Generic (
    DATA_WIDTH : integer   := 16;     -- Data Width
    ADDR_WIDTH : integer   := 16      -- Address width
    );
   port (-- you will need to add more ports here as design grows
         nReset   : in STD_LOGIC; -- low active reset signal
    	    start : in STD_LOGIC;    -- high active Start: enable cpu
         clk   : in STD_LOGIC;    -- Clock
         Addr_out : out STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
	       IR_in : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
	       ALU_in : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
         imm   : out std_logic_vector(3 downto 0);
         -- status signals from ALU
     	   ALUz  : in std_logic; 
     	    -- add ports as required here
     	   -- control signals
     	   RFs    : out std_logic_vector(1 downto 0);
     	   Mre, Mwe : out std_logic
     	   
     	    -- add ports as required here
          
        );                              
 
end controller;

architecture fsm of controller is
-- types and signals are declared here  
		

-- constants declared for ease of reading code

  

  
				 
begin
	-- state transition
  FSM_trans:process (nreset, start, clk)
   
  begin
    
  end process;	
  -- write codes to generate control signals 			
end fsm;









