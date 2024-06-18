`include "../RTL/define.vh"    
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Kanishk Agarwal 
// 
// Create Date:    
// Design Name: 
// Module Name:    POLAR ENCOdER
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
 
module polar_encoder(infor_i,encoded_o);

// Port Declaration  
  input  [0 : `MESSAGE_LENGTH -1] infor_i;
  output [0 : `N -1] encoded_o;
 
// internal variables
wire [0 : `N -1] polar_trans [`No_of_LEVELS:1];
wire [0 : `N -1] x;
       
// Code Starts 
`include "../RTL/rs_32.txt"     // This file defines Reliability Sequence

assign polar_trans[1] [0:1] = {x[0] ^ x[1],x[1]};
assign polar_trans[1] [2:3] = {x[2] ^ x[3],x[3]};
assign polar_trans[1] [4:5] = {x[4] ^ x[5],x[5]};
assign polar_trans[1] [6:7] = {x[6] ^ x[7],x[7]};
assign polar_trans[1] [8:9] = {x[8] ^ x[9],x[9]};
assign polar_trans[1] [10:11] = {x[10] ^ x[11],x[11]};
assign polar_trans[1] [12:13] = {x[12] ^ x[13],x[13]};
assign polar_trans[1] [14:15] = {x[14] ^ x[15],x[15]};
assign polar_trans[1] [16:17] = {x[16] ^ x[17],x[17]};
assign polar_trans[1] [18:19] = {x[18] ^ x[19],x[19]};
assign polar_trans[1] [20:21] = {x[20] ^ x[21],x[21]};
assign polar_trans[1] [22:23] = {x[22] ^ x[23],x[23]};
assign polar_trans[1] [24:25] = {x[24] ^ x[25],x[25]};
assign polar_trans[1] [26:27] = {x[26] ^ x[27],x[27]};
assign polar_trans[1] [28:29] = {x[28] ^ x[29],x[29]};
assign polar_trans[1] [30:31] = {x[30] ^ x[31],x[31]};

assign polar_trans[2] [0:3] = {polar_trans[1][0:1] ^ polar_trans[1][2:3], polar_trans[1][2:3]};
assign polar_trans[2] [4:7] = {polar_trans[1][4:5] ^ polar_trans[1][6:7], polar_trans[1][6:7]};
assign polar_trans[2] [8:11] = {polar_trans[1][8:9] ^ polar_trans[1][10:11], polar_trans[1][10:11]};
assign polar_trans[2] [12:15] = {polar_trans[1][12:13] ^ polar_trans[1][14:15], polar_trans[1][14:15]};
assign polar_trans[2] [16:19] = {polar_trans[1][16:17] ^ polar_trans[1][18:19], polar_trans[1][18:19]};
assign polar_trans[2] [20:23] = {polar_trans[1][20:21] ^ polar_trans[1][22:23], polar_trans[1][22:23]};
assign polar_trans[2] [24:27] = {polar_trans[1][24:25] ^ polar_trans[1][26:27], polar_trans[1][26:27]};
assign polar_trans[2] [28:31] = {polar_trans[1][28:29] ^ polar_trans[1][30:31], polar_trans[1][30:31]};

assign polar_trans[3] [0:7] = {polar_trans[2][0:3] ^ polar_trans[2][4:7], polar_trans[2][4:7]};
assign polar_trans[3] [8:15] = {polar_trans[2][8:11] ^ polar_trans[2][12:15], polar_trans[2][12:15]};
assign polar_trans[3] [16:23] = {polar_trans[2][16:19] ^ polar_trans[2][20:23], polar_trans[2][20:23]};
assign polar_trans[3] [24:31] = {polar_trans[2][24:27] ^ polar_trans[2][28:31], polar_trans[2][28:31]};

assign polar_trans[4] [0:15] = {polar_trans[3][0:7] ^ polar_trans[3][8:15], polar_trans[3][8:15]};
assign polar_trans[4] [16:31] = {polar_trans[3][16:23] ^ polar_trans[3][24:31], polar_trans[3][24:31]};

assign polar_trans[5] [0:31] = {polar_trans[4][0:15] ^ polar_trans[4][16:31], polar_trans[4][16:31]};

assign encoded_o = polar_trans[5];
endmodule // polar_en








coder
