//### Select the Design you want to check for errors NxW 4/64/512/1024/2048 ###

// M = Number of message bits/Information Bits 
// F = Number of Frozen Bits

// Deside the block length of the polar Encoder/Decoder
//`define BLOCK_LENGTH_4
//`define BLOCK_LENGTH_8
//`define BLOCK_LENGTH_16
`define BLOCK_LENGTH_32
//`define BLOCK_LENGTH_64
//`define BLOCK_LENGTH_128
//`define BLOCK_LENGTH_256
//`define BLOCK_LENGTH_512
//`define BLOCK_LENGTH_1024

// Deside the Message length of the polar Encoder/Decoder
// For Block Length of 4 mssage length sub not be greater the 4

`define MESSAGE_LENGTH 32
//`define MESSAGE_LENGTH_4

// Deside the Message length of the polar Encoder/Decoder

`ifdef BLOCK_LENGTH_4
	 `define SIZE 8
     `define N 4                        // Total number of bits to Encode/Decode
	 `define F (4 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 2 	 
`elsif BLOCK_LENGTH_8
	 `define SIZE 8
     `define N 8                        // Total number of bits to Encode/Decode
	 `define F (8 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 3 
`elsif BLOCK_LENGTH_16
	 `define SIZE 8
     `define N 16                        // Total number of bits to Encode/Decode
	 `define F (16 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 4 		 
`elsif BLOCK_LENGTH_32
	 `define SIZE 8
     `define N 32                        // Total number of bits to Encode/Decode
	 `define F (32 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 5 		 	 
`elsif BLOCK_LENGTH_64
	 `define SIZE 8
     `define N 64                        // Total number of bits to Encode/Decode
	 `define F (64 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 6 		 	 	 
`elsif BLOCK_LENGTH_128
	 `define SIZE 16
     `define N 128                        // Total number of bits to Encode/Decode
	 `define F (128 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 7 		 	 	 	
`elsif BLOCK_LENGTH_256
	 `define SIZE 16
     `define N 256                        // Total number of bits to Encode/Decode
	 `define F (256 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 8 		 	 	 		 
`elsif BLOCK_LENGTH_512
	 `define SIZE 16
     `define N 512                        // Total number of bits to Encode/Decode
	 `define F (512 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 9 		 	 	 		 	 
`elsif BLOCK_LENGTH_1024
	 `define SIZE 16
     `define N 1024                        // Total number of bits to Encode/Decode
	 `define F (1024 - `MESSAGE_LENGTH)    // No of Frozen bits = BLOCK_LENGTH - MESSAGE_LENGTH.
	 `define No_of_LEVELS 10 	 	 
`endif
