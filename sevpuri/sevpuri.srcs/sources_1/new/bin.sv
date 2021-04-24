`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2021 12:18:35
// Design Name: 
// Module Name: bin
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


module bin(
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
real temp_st [1:0];

reg temp_st_cnt = 0;  
reg [1:0] temp_twd_cnt = 0;

real demo_a = 0;
real demo_b = 0;
real out_sig_add;
real out_sig_sub;

real ans_real [3:0];
real ans_imag [3:0];
real fin_real_one [3:0];
real fin_imag_one [3:0];

always@ (posedge clk)
    begin
        
        case (select_line)
        2'b00: begin 
            temp_st[temp_st_cnt] = 1.0;//in_sig_1;
            end
        2'b01: begin
            temp_st[temp_st_cnt] = 7.0;//in_sig_3;
            end    
        2'b10: begin
            temp_st[temp_st_cnt] = 4.0;//in_sig_2;
            end    
        2'b11: begin
            temp_st[temp_st_cnt] = 10.0;//in_sig_4;
            end    
        endcase
         if (temp_st_cnt == 0) begin
            demo_a = temp_st[0];
            temp_st_cnt = temp_st_cnt + 1;
            end
         else if (temp_st_cnt == 1) begin
              demo_b = temp_st[1];
              /*assign out_sig_add = demo_a + demo_b;
              assign out_sig_sub = demo_a - demo_b;*/
              out_sig_add = demo_a + demo_b;
              out_sig_sub = demo_a - demo_b;
            
              temp_twd_cnt = temp_twd_cnt + 1;
              temp_st_cnt = 0;
              end
              
         if (temp_twd_cnt == 1) begin
            out_sig_sub = out_sig_sub;
            ans_real[0] = out_sig_add; ans_imag[0] = 0;
            ans_real[2] = out_sig_sub; ans_imag[2] = 0;
            end
         else if (temp_twd_cnt == 2) begin
              //assign out_sig_sub = out_sig_sub * (-1);
              out_sig_sub = out_sig_sub * (-1);
              ans_real[1] = out_sig_add; ans_imag[1] = 0;
              ans_real[3] = 0; ans_imag[3] = out_sig_sub;
              temp_twd_cnt = 0;
              
              /*assign fin_real_one_1 = ans_real[0] + ans_real[1];
              assign fin_imag_one_1 = ans_imag[0] + ans_imag[1];
              assign fin_real_one_2 = ans_real[0] - ans_real[1];
              assign fin_imag_one_2 = ans_imag[0] - ans_imag[1];
              assign fin_real_one_3 = ans_real[2] + ans_real[3];
              assign fin_imag_one_3 = ans_imag[2] + ans_imag[3];
              assign fin_real_one_4 = ans_real[2] - ans_real[3];
              assign fin_imag_one_4 = ans_imag[2] - ans_imag[3];*/
              
              fin_real_one_1 = ans_real[0] + ans_real[1];
              fin_imag_one_1 = ans_imag[0] + ans_imag[1];
              fin_real_one_2 = ans_real[0] - ans_real[1];
              fin_imag_one_2 = ans_imag[0] - ans_imag[1];
              fin_real_one_3 = ans_real[2] + ans_real[3];
              fin_imag_one_3 = ans_imag[2] + ans_imag[3];
              fin_real_one_4 = ans_real[2] - ans_real[3];
              fin_imag_one_4 = ans_imag[2] - ans_imag[3];
              
              fin_real_one[0] = fin_real_one_1; fin_imag_one[0] = fin_imag_one_1;      
              fin_real_one[2] = fin_real_one_2; fin_imag_one[2] = fin_imag_one_2; 
              fin_real_one[1] = fin_real_one_3; fin_imag_one[1] = fin_imag_one_3; 
              fin_real_one[3] = fin_real_one_4; fin_imag_one[3] = fin_imag_one_4;       

              end
             
    end
endmodule