`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2023 15:54:45
// Design Name: 
// Module Name: jk_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_flipflop_tb();
reg j;
reg k;
reg clk;
wire q;
jk_flipflop ab(.j(j) ,.k(k) ,.clk(clk) ,.q(q));
initial begin
 clk=0; j=0; k=0;
#100 clk=1; j=0; k=0;
#100 clk=0; j=0; k=1;
#100 clk=1; j=0; k=1;
#100 clk=0; j=1; k=0;
#100 clk=1; j=1; k=0;
#100 clk=0; j=1; k=1;
#100 clk=1; j=1; k=1;
end
endmodule
