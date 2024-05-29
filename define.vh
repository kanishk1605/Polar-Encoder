//### Select the Design you want to check for errors NxW 4/64/512/1024/2048 ###

// M = Number of message bits/Information Bits 
// F = Number of Frozen Bits

// Deside the block length of the polar Encoder/Decoder
`define BLOCK_LENGTH_32   // variable name

// Deside the Message length of the polar Encoder/Decoder
// For Block Length of 4 mssage length sub not be greater the 4

`define MESSAGE_LENGTH 32   // K bits message
//`define MESSAGE_LENGTH 4

// Deside the Message length of the polar Encoder/Decoder

`ifdef BLOCK_LENGTH_32
	 `define SIZE 8    					 
     `define N 32                        // Total number of bits to Encode/Decode
	 `define F (32 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 5 		 	 
`endif
