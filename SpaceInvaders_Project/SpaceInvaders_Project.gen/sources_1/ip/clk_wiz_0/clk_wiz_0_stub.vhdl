-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Aug 12 16:54:41 2021
-- Host        : Ingenuity running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {g:/My
--               Drive/Uni/2-Anno_20-21/RetiLogiche/SpaceInvaders/SpaceInvaders_Project/SpaceInvaders_Project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.vhdl}
-- Design      : clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_0 is
  Port ( 
    px_clk : out STD_LOGIC;
    locked : out STD_LOGIC;
    sys_clk : in STD_LOGIC
  );

end clk_wiz_0;

architecture stub of clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "px_clk,locked,sys_clk";
begin
end;
