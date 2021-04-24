`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2021 12:22:58
// Design Name: 
// Module Name: bin_tb
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


module bin_tb;
real in_sig_1;
real in_sig_2;
real in_sig_3;
real in_sig_4;
reg [1:0] select_line;
reg clk = 0;
real fin_real_one_1;
real fin_imag_one_1;
real fin_real_one_2;
real fin_imag_one_2;
real fin_real_one_3;
real fin_imag_one_3;
real fin_real_one_4;
real fin_imag_one_4;

top UUT(
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


initial
    begin
        in_sig_1 = 4'd1;
        in_sig_2 = 4'd4;
        in_sig_3 = 4'd7;
        in_sig_4 = 4'd10;
        select_line = 2'b00;
    end

always #5 clk = ~clk;

always
    begin
        #10  select_line = 2'b01;
        #10  select_line = 2'b10;
        #10  select_line = 2'b11;
        #10  select_line = 2'b00;
        $finish;

    end
endmodule