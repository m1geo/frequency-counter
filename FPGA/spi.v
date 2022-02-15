// Frequency Counter
//
// George Smart, M1GEO.
// https://www.george-smart.co.uk/
// 14 Feb 2022
//
// Modified for 32-bit from Fpga4fun SPI: https://www.fpga4fun.com/SPI2.html

module spi_peripheral(
	input          fastclk, // must be faster than SCK
	input          SCK,
	input          MOSI,
	input          SSEL,
	output         MISO,
	output [31:0] rcvd_word,
	output         rcvd_word_valid,
	input  [31:0] send_word
);

	// sync external inputs to the FPGA fast clock using a 3-bits shift register
	//  sync SCK
	reg [2:0] SCKr;
	always @(posedge fastclk) SCKr <= {SCKr[1:0], SCK};
	wire SCK_risingedge  = (SCKr[2:1]==2'b01);  // now we can detect SCK rising edges
	wire SCK_fallingedge = (SCKr[2:1]==2'b10);  // and falling edges

	// same thing for SSEL
	reg [2:0] SSELr;
	always @(posedge fastclk) SSELr <= {SSELr[1:0], SSEL};
	wire SSEL_active       = ~SSELr[1];  // SSEL is active low
	wire SSEL_startmessage = (SSELr[2:1]==2'b10);  // message starts at falling edge
	wire SSEL_endmessage   = (SSELr[2:1]==2'b01);  // message stops at rising edge

	// and for MOSI
	reg [1:0] MOSIr;
	always @(posedge fastclk) MOSIr <= {MOSIr[0], MOSI};
	wire MOSI_data = MOSIr[1];

	// we handle SPI in 32-bits format, so we need a 5 bit counter to count the bits as they come in
	reg [4:0] bitcnt;

	reg word_received;  // high when a byte has been received
	reg [31:0] byte_data_received;

	always @(posedge fastclk) begin
		if(~SSEL_active)
			bitcnt <= 3'b000;
		else
			if(SCK_risingedge) begin
				bitcnt <= bitcnt + 3'b001;
				// implement a shift-left register (since we receive the data MSB first)
				byte_data_received <= {byte_data_received[30:0], MOSI_data};
			end
	end

	// check when we have received a byte
	always @(posedge fastclk) word_received <= SSEL_active && SCK_risingedge && (bitcnt==5'b11111);

	// save the received data to the hold register so it's always there
	reg [31:0] byte_data_received_hold;
	always @(posedge fastclk) if(word_received) byte_data_received_hold <= byte_data_received;
	assign rcvd_word = byte_data_received_hold;
	assign rcvd_word_valid = word_received;
	
	// save the data to send into the hold register
	always @(posedge fastclk) if(word_received) byte_data_received_hold <= byte_data_received;
	
	// register to send data from
	reg [31:0] word_data_sent;

	always @(posedge fastclk)
		if(SSEL_active) begin
			if(SSEL_startmessage)
				word_data_sent <= send_word;  // first byte sent in a message is the message count
			else
				if(SCK_fallingedge) begin
					if(bitcnt==3'b000)
						word_data_sent <= 8'h00;  // after that, we send 0s
					else
						word_data_sent <= {word_data_sent[30:0], 1'b0};
				end
		end
	// MISO output - no tri-state here
	assign MISO = word_data_sent[31];  // send MSB first

endmodule