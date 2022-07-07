`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2022 03:29:41 PM
// Design Name: 
// Module Name: encoder_core
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
`define WIDTH 8
`define PROB_MUL 0.125  // 1/8 

module encoder_core(    input i_clk,
                        input i_rst,
                        input [`WIDTH-1:0] i_byte_sec,
                        //input i_byte_sec,
                        input [31:0] i_freq_byte                 
                    );
                    
                
                
                
         
                
    reg [31:0] r_range; //length
    reg [31:0] r_low;            
    reg [31:0] r_tmp; 
    integer i;
    reg [31:0] r_max_range;
    reg [31:0] r_high;
    
    // A = 0 a 0.6
    // B = 0.6 a 0.8 
    // C = 0.8 a 0.9 
    // D = 0.9 a 1
    
    initial
    begin
        i = 0;
        r_low = 0;
        r_high = 0;
        r_range = 256;
        r_max_range = 1;
        r_tmp = 0;
    end      

    always @(posedge i_clk) begin
        if(!i_rst) begin
//            t = range*0.75;
//            if(i_byte_sec == 8'b1) begin
//                high = low + range;
//                low = high - t;
//                range = t;
//            end else begin
//                range = range - t;
//                high = low - range;
//            end
//              for(i=0;i<`WIDTH;i=i+1)begin
//                t = range*0.75;
//                if(i_byte_sec[i] == 1'b1) begin
//                    high = low + range;
//                    low = high - t;
//                    range = t;
//                end else begin
//                    range = range - t;
//                    high = low - range;
//                end
              
//              end
//            for(i=0;i<256;i++)begin
//                if()
//            end


            r_tmp = r_range*0.75;
            if(i_byte_sec == 8'ha) begin
                r_high = r_low + r_range;
                r_low = r_high - r_tmp;
                r_range = r_tmp;
            end else begin
                r_range = r_range - r_tmp;
                r_high = r_low - r_range;
            end
           
            
        
            
        end

       

    end                  
                    
                    
endmodule
