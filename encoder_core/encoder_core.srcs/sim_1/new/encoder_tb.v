`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2022 04:42:46 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();


reg clock;
reg byte_vec;
reg [7:0] byte_vec2;
reg reset;
reg [31:0] freq_byte;

initial
begin

    clock = 1;
    
    byte_vec2 = 08'ha;
    reset = 0;
    freq_byte = 0;
    byte_vec = 1;
    #20
    byte_vec = 1;
    byte_vec2 = 08'ha;
    #20
    byte_vec = 1;
    byte_vec2 = 08'ha;
    #20
    byte_vec = 1;
    byte_vec2 = 08'ha;
    #20
    byte_vec = 0;
    byte_vec2 = 08'hb;
    #20
    byte_vec = 1;
    byte_vec2 = 08'ha;
    #20
    byte_vec = 0;
    byte_vec2 = 08'hb;
    #20
    byte_vec = 1;
    byte_vec2 = 08'ha;
    #20
    
    


    
    $finish; 

end


always #10 clock <= ~clock;


encoder_core uut(.i_clk(clock),
                 .i_byte_sec(byte_vec2),
                 .i_rst(reset),
                 .i_freq_byte(freq_byte)
                );

endmodule
