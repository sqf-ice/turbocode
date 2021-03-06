----------------------------------------------------------------------
----                                                              ----
----  interleaver_e.vhd                                           ----
----                                                              ----
----  This file is part of the turbo decoder IP core project      ----
----  http://www.opencores.org/projects/turbocodes/               ----
----                                                              ----
----  Author(s):                                                  ----
----      - David Brochart(dbrochart@opencores.org)               ----
----                                                              ----
----  All additional information is available in the README.txt   ----
----  file.                                                       ----
----                                                              ----
----------------------------------------------------------------------
----                                                              ----
---- Copyright (C) 2005 Authors                                   ----
----                                                              ----
---- This source file may be used and distributed without         ----
---- restriction provided that this copyright statement is not    ----
---- removed from the file and that any derivative work contains  ----
---- the original copyright notice and the associated disclaimer. ----
----                                                              ----
---- This source file is free software; you can redistribute it   ----
---- and/or modify it under the terms of the GNU Lesser General   ----
---- Public License as published by the Free Software Foundation; ----
---- either version 2.1 of the License, or (at your option) any   ----
---- later version.                                               ----
----                                                              ----
---- This source is distributed in the hope that it will be       ----
---- useful, but WITHOUT ANY WARRANTY; without even the implied   ----
---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ----
---- PURPOSE. See the GNU Lesser General Public License for more  ----
---- details.                                                     ----
----                                                              ----
---- You should have received a copy of the GNU Lesser General    ----
---- Public License along with this source; if not, download it   ----
---- from http://www.opencores.org/lgpl.shtml                     ----
----                                                              ----
----------------------------------------------------------------------



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.turbopack.all;

entity interleaver is   -- DVB-RCS (de)interleaver
    generic (
            delay       : integer := 0;     -- number of clock cycles to wait before starting the (de)interleaver
            way         : integer := 0      -- 0 for interleaving, 1 for deinterleaving
            );
    port    (
            clk         : in  std_logic;        -- clock
            rst         : in  std_logic;        -- negative reset
            d           : in  std_logic_vector; -- input data
            q           : out std_logic_vector  -- (de)interleaved data
            );
end interleaver;
