// Frequency Counter
//
// George Smart, M1GEO.
// https://www.george-smart.co.uk/
// 14 Feb 2022

module top (
	input test_clk, // (pin 128cc) signal to test
	
	// leds
	output [7:0] leds, // devboard leds (pins 7-0: 107,106,105,104,100,99,98,97)
	
	// GPS
	input  gps_pps, // from gps (pin 55cc) assumed 1 Hz
	input  gps_txd, // from gps (pin 69)
	output gps_rxd,  // into gps (pin 68)
	
	// ftdi
	input  ftdi_txd, // from ftdi (pin 73)
	output ftdi_rxd,  // into ftdi (pin 74)
	
	input  SCK,
	input  MOSI,
	input  SSEL,
	output MISO
);

	// counter register
	reg [31:0] counter;
	reg [31:0] counter_gated;
	reg [31:0] counter_gated_old;
	wire [31:0] count;

	// spi stuff
	wire fastclk; //  internal fpga clock for syncing SPI
	//wire [31:0] test;
	OSCH #(.NOM_FREQ("133.00")) rc_oscillator(.STDBY(1'b0), .SEDSTDBY(), .OSC(fastclk));// FPGA primative for RC osc.
	spi_peripheral spi (.fastclk(fastclk), .SCK(SCK), .MOSI(MOSI), .SSEL(SSEL), .MISO(MISO), .send_word(count), .rcvd_word(), .rcvd_word_valid());
	

	// gps uart
	assign ftdi_rxd = gps_txd;
	assign gps_rxd = ftdi_txd;

	// every test sample, increment the counter
	always @ (posedge test_clk) counter <= counter + 1'b1;
	// every gate, latch the count
	always @ (posedge gps_pps) begin
		counter_gated_old <= counter_gated;
		counter_gated <= counter;
	end
	assign count = counter_gated-counter_gated_old;
	
	// test
	assign leds = ~count[7:0];
	//assign leds = ~test[7:0];

endmodule