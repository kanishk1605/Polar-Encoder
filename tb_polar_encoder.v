`timescale 1ns/100ps
`include "../RTL/define.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Kanishk Agarwal 
// 
// Create Date:    
// Design Name: 
// Module Name:    TESTBENCH Polar Encoder
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
module tb_polar_encoder();
    
// data type declaration
reg 				            clk;
reg    [0 : `MESSAGE_LENGTH -1] INFORMATION_IN;
wire   [0 : `N -1]              ENCODED_OUT;

integer 						fp;
							
// Instansiation of POLAR ENCODER

polar_encoder POLAR_ENC(
                        .infor_i		(INFORMATION_IN),
						.encoded_o      (ENCODED_OUT)
					   );		
always
#10 clk = ~clk;		// clock period = 20 ns

initial
begin
clk = 1'b0; INFORMATION_IN = 0;

fp = $fopen("./result_output.txt","w");		//"file pointer" creates file "result_output.txt" and writes in it
$fmonitor(fp,"INFORMATION_IN = %b  ENCODED_OUT = %b",INFORMATION_IN,ENCODED_OUT);

repeat (200) @ (negedge clk)	// repeats for 200 cycles at -ve edge of clk
begin
	INFORMATION_IN = $urandom;		// generates random i/p
//	INFORMATION_IN = 32'd32;
end

$fclose(fp);
#150 $stop;
end
endmodule