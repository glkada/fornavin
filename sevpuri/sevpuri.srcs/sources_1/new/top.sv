`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2021 13:03:05
// Design Name: 
// Module Name: top
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


module top(
    input real in_sig_1,
    input real in_sig_2,
    input real in_sig_3,
    input real in_sig_4,
    input [1:0] select_line,
    input clk,
    output real fin_real_one_1,
    output real fin_imag_one_1,
    output real fin_real_one_2,
    output real fin_imag_one_2,
    output real fin_real_one_3,
    output real fin_imag_one_3,
    output real fin_real_one_4,
    output real fin_imag_one_4
    );

bin wrapper(
.in_sig_1(in_sig_1),
.in_sig_2(in_sig_2),
.in_sig_3(in_sig_3),
.in_sig_4(in_sig_4),
.select_line(select_line),
.clk(clk),
.fin_real_one_1(fin_real_one_1),
.fin_imag_one_1(fin_imag_one_1),
.fin_real_one_2(fin_real_one_2),
.fin_imag_one_2(fin_imag_one_2),
.fin_real_one_3(fin_real_one_3),
.fin_imag_one_3(fin_imag_one_3),
.fin_real_one_4(fin_real_one_4),
.fin_imag_one_4(fin_imag_one_4)
); 

endmodule