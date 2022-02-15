// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Feb 15 00:11:55 2022
//
// Verilog Description of module top
//

module top (test_clk, leds, gps_pps, gps_txd, gps_rxd, ftdi_txd, 
            ftdi_rxd, SCK, MOSI, SSEL, MISO) /* synthesis syn_module_defined=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(7[8:11])
    input test_clk;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(8[8:16])
    output [7:0]leds;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    input gps_pps;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(14[9:16])
    input gps_txd;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(15[9:16])
    output gps_rxd;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(16[9:16])
    input ftdi_txd;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(19[9:17])
    output ftdi_rxd;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(20[9:17])
    input SCK;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(22[9:12])
    input MOSI;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(23[9:13])
    input SSEL;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(24[9:13])
    output MISO;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(25[9:13])
    
    wire test_clk_c /* synthesis SET_AS_NETWORK=test_clk_c, is_clock=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(8[8:16])
    wire gps_pps_c /* synthesis is_clock=1, SET_AS_NETWORK=gps_pps_c */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(14[9:16])
    wire fastclk /* synthesis SET_AS_NETWORK=fastclk, is_clock=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(35[7:14])
    
    wire GND_net, VCC_net, leds_c_7, leds_c_6, leds_c_5, leds_c_4, 
        leds_c_3, leds_c_2, leds_c_1, leds_c_0, ftdi_rxd_c_c, gps_rxd_c_c, 
        SCK_c, SSEL_c, MISO_c_31;
    wire [31:0]counter;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(29[13:20])
    wire [31:0]counter_gated;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(30[13:26])
    wire [31:0]counter_gated_old;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(31[13:30])
    wire [31:0]count;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(32[14:19])
    wire [2:0]SCKr;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(22[12:16])
    wire [2:0]SSELr;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(28[12:17])
    wire [4:0]bitcnt;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(40[12:18])
    
    wire n165, n164, n163, n162, n161, n160, n159, n158, n157, 
        n156, n155, n154, n153, n152, n503, n502, n501, n151, 
        n150, n149, n148, n147, n146, n145, n144, n143, n142, 
        n141, n140, n139, n138, n137, n136, n135, n134, n528, 
        n527, n526, n525, n524, n523, n522, n521, n520, n519, 
        n518, n500, n517, n516, n515, n514, n513, n512, n511, 
        n510, n509, n508, n507, n506, fastclk_enable_4, n505, 
        n504, n499, n14, n498, n497;
    
    VHI i2 (.Z(VCC_net));
    spi_peripheral spi (.bitcnt({Open_0, Open_1, Open_2, Open_3, bitcnt[0]}), 
            .fastclk(fastclk), .SSELr({Open_4, SSELr[1], Open_5}), .n14(n14), 
            .SSEL_c(SSEL_c), .count({count}), .SCK_c(SCK_c), .\SCKr[1] (SCKr[1]), 
            .\SCKr[2] (SCKr[2]), .fastclk_enable_4(fastclk_enable_4), .MISO_c_31(MISO_c_31)) /* synthesis syn_module_defined=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(38[17:143])
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    FD1S3AX counter_gated_old_i0 (.D(counter_gated[0]), .CK(gps_pps_c), 
            .Q(counter_gated_old[0]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i0.GSR = "ENABLED";
    OSCH rc_oscillator (.STDBY(GND_net), .OSC(fastclk)) /* synthesis syn_instantiated=1 */ ;
    defparam rc_oscillator.NOM_FREQ = "133.00";
    LUT4 i41_3_lut_rep_36 (.A(SCKr[1]), .B(SSELr[1]), .C(SCKr[2]), .Z(fastclk_enable_4)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i41_3_lut_rep_36.init = 16'hcece;
    FD1S3AX counter_gated_i0 (.D(counter[0]), .CK(gps_pps_c), .Q(counter_gated[0]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i0.GSR = "ENABLED";
    LUT4 i82_2_lut_4_lut (.A(SCKr[1]), .B(SSELr[1]), .C(SCKr[2]), .D(bitcnt[0]), 
         .Z(n14)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;
    defparam i82_2_lut_4_lut.init = 16'h31ce;
    CCU2D counter_gated_31__I_0_add_2_13 (.A0(counter_gated[11]), .B0(counter_gated_old[11]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[12]), .B1(counter_gated_old[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n502), .COUT(n503), .S0(count[11]), 
          .S1(count[12]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_13.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_13.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_13.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_13.INJECT1_1 = "NO";
    LUT4 count_7__I_0_i4_1_lut (.A(count[3]), .Z(leds_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i4_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 count_7__I_0_i3_1_lut (.A(count[2]), .Z(leds_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i3_1_lut.init = 16'h5555;
    FD1S3AX counter_39__i0 (.D(n165), .CK(test_clk_c), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i0.GSR = "ENABLED";
    LUT4 count_7__I_0_i2_1_lut (.A(count[1]), .Z(leds_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 count_7__I_0_i1_1_lut (.A(count[0]), .Z(leds_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i1_1_lut.init = 16'h5555;
    LUT4 count_7__I_0_i8_1_lut (.A(count[7]), .Z(leds_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i8_1_lut.init = 16'h5555;
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    CCU2D counter_39_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n528), .S0(n134));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_33.INIT1 = 16'h0000;
    defparam counter_39_add_4_33.INJECT1_0 = "NO";
    defparam counter_39_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n527), .COUT(n528), .S0(n136), .S1(n135));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_31.INJECT1_0 = "NO";
    defparam counter_39_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n526), .COUT(n527), .S0(n138), .S1(n137));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_29.INJECT1_0 = "NO";
    defparam counter_39_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n525), .COUT(n526), .S0(n140), .S1(n139));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_27.INJECT1_0 = "NO";
    defparam counter_39_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n524), .COUT(n525), .S0(n142), .S1(n141));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_25.INJECT1_0 = "NO";
    defparam counter_39_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n523), .COUT(n524), .S0(n144), .S1(n143));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_23.INJECT1_0 = "NO";
    defparam counter_39_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n522), .COUT(n523), .S0(n146), .S1(n145));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_21.INJECT1_0 = "NO";
    defparam counter_39_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n521), .COUT(n522), .S0(n148), .S1(n147));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_19.INJECT1_0 = "NO";
    defparam counter_39_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n520), .COUT(n521), .S0(n150), .S1(n149));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_17.INJECT1_0 = "NO";
    defparam counter_39_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n519), .COUT(n520), .S0(n152), .S1(n151));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_15.INJECT1_0 = "NO";
    defparam counter_39_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n518), .COUT(n519), .S0(n154), .S1(n153));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_13.INJECT1_0 = "NO";
    defparam counter_39_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n517), .COUT(n518), .S0(n156), .S1(n155));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_11.INJECT1_0 = "NO";
    defparam counter_39_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n516), .COUT(n517), .S0(n158), .S1(n157));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_9.INJECT1_0 = "NO";
    defparam counter_39_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n515), .COUT(n516), .S0(n160), .S1(n159));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_7.INJECT1_0 = "NO";
    defparam counter_39_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n514), .COUT(n515), .S0(n162), .S1(n161));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_5.INJECT1_0 = "NO";
    defparam counter_39_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n513), .COUT(n514), .S0(n164), .S1(n163));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_39_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_39_add_4_3.INJECT1_0 = "NO";
    defparam counter_39_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_39_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n513), .S1(n165));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39_add_4_1.INIT0 = 16'hF000;
    defparam counter_39_add_4_1.INIT1 = 16'h0555;
    defparam counter_39_add_4_1.INJECT1_0 = "NO";
    defparam counter_39_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_33 (.A0(counter_gated[31]), .B0(counter_gated_old[31]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n512), .S0(count[31]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_33.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_33.INIT1 = 16'h0000;
    defparam counter_gated_31__I_0_add_2_33.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_33.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_31 (.A0(counter_gated[29]), .B0(counter_gated_old[29]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[30]), .B1(counter_gated_old[30]), 
          .C1(GND_net), .D1(GND_net), .CIN(n511), .COUT(n512), .S0(count[29]), 
          .S1(count[30]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_31.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_31.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_31.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_31.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_29 (.A0(counter_gated[27]), .B0(counter_gated_old[27]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[28]), .B1(counter_gated_old[28]), 
          .C1(GND_net), .D1(GND_net), .CIN(n510), .COUT(n511), .S0(count[27]), 
          .S1(count[28]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_29.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_29.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_29.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_29.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_27 (.A0(counter_gated[25]), .B0(counter_gated_old[25]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[26]), .B1(counter_gated_old[26]), 
          .C1(GND_net), .D1(GND_net), .CIN(n509), .COUT(n510), .S0(count[25]), 
          .S1(count[26]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_27.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_27.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_27.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_27.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_25 (.A0(counter_gated[23]), .B0(counter_gated_old[23]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[24]), .B1(counter_gated_old[24]), 
          .C1(GND_net), .D1(GND_net), .CIN(n508), .COUT(n509), .S0(count[23]), 
          .S1(count[24]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_25.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_25.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_25.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_25.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_23 (.A0(counter_gated[21]), .B0(counter_gated_old[21]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[22]), .B1(counter_gated_old[22]), 
          .C1(GND_net), .D1(GND_net), .CIN(n507), .COUT(n508), .S0(count[21]), 
          .S1(count[22]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_23.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_23.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_23.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_23.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_21 (.A0(counter_gated[19]), .B0(counter_gated_old[19]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[20]), .B1(counter_gated_old[20]), 
          .C1(GND_net), .D1(GND_net), .CIN(n506), .COUT(n507), .S0(count[19]), 
          .S1(count[20]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_21.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_21.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_21.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_21.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_19 (.A0(counter_gated[17]), .B0(counter_gated_old[17]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[18]), .B1(counter_gated_old[18]), 
          .C1(GND_net), .D1(GND_net), .CIN(n505), .COUT(n506), .S0(count[17]), 
          .S1(count[18]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_19.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_19.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_19.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_19.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_17 (.A0(counter_gated[15]), .B0(counter_gated_old[15]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[16]), .B1(counter_gated_old[16]), 
          .C1(GND_net), .D1(GND_net), .CIN(n504), .COUT(n505), .S0(count[15]), 
          .S1(count[16]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_17.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_17.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_17.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_15 (.A0(counter_gated[13]), .B0(counter_gated_old[13]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[14]), .B1(counter_gated_old[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n503), .COUT(n504), .S0(count[13]), 
          .S1(count[14]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_15.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_15.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_15.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_11 (.A0(counter_gated[9]), .B0(counter_gated_old[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[10]), .B1(counter_gated_old[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n501), .COUT(n502), .S0(count[9]), 
          .S1(count[10]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_11.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_11.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_11.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_9 (.A0(counter_gated[7]), .B0(counter_gated_old[7]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[8]), .B1(counter_gated_old[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n500), .COUT(n501), .S0(count[7]), 
          .S1(count[8]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_9.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_9.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_9.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_7 (.A0(counter_gated[5]), .B0(counter_gated_old[5]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[6]), .B1(counter_gated_old[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n499), .COUT(n500), .S0(count[5]), 
          .S1(count[6]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_7.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_7.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_7.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_5 (.A0(counter_gated[3]), .B0(counter_gated_old[3]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[4]), .B1(counter_gated_old[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n498), .COUT(n499), .S0(count[3]), 
          .S1(count[4]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_5.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_5.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_5.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_3 (.A0(counter_gated[1]), .B0(counter_gated_old[1]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_gated[2]), .B1(counter_gated_old[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n497), .COUT(n498), .S0(count[1]), 
          .S1(count[2]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_3.INIT0 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_3.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_3.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D counter_gated_31__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_gated[0]), .B1(counter_gated_old[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n497), .S1(count[0]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(52[17:48])
    defparam counter_gated_31__I_0_add_2_1.INIT0 = 16'h0000;
    defparam counter_gated_31__I_0_add_2_1.INIT1 = 16'h5999;
    defparam counter_gated_31__I_0_add_2_1.INJECT1_0 = "NO";
    defparam counter_gated_31__I_0_add_2_1.INJECT1_1 = "NO";
    FD1S3AX counter_gated_i31 (.D(counter[31]), .CK(gps_pps_c), .Q(counter_gated[31]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i31.GSR = "ENABLED";
    FD1S3AX counter_gated_i30 (.D(counter[30]), .CK(gps_pps_c), .Q(counter_gated[30]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i30.GSR = "ENABLED";
    FD1S3AX counter_gated_i29 (.D(counter[29]), .CK(gps_pps_c), .Q(counter_gated[29]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i29.GSR = "ENABLED";
    FD1S3AX counter_gated_i28 (.D(counter[28]), .CK(gps_pps_c), .Q(counter_gated[28]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i28.GSR = "ENABLED";
    FD1S3AX counter_gated_i27 (.D(counter[27]), .CK(gps_pps_c), .Q(counter_gated[27]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i27.GSR = "ENABLED";
    FD1S3AX counter_gated_i26 (.D(counter[26]), .CK(gps_pps_c), .Q(counter_gated[26]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i26.GSR = "ENABLED";
    FD1S3AX counter_gated_i25 (.D(counter[25]), .CK(gps_pps_c), .Q(counter_gated[25]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i25.GSR = "ENABLED";
    FD1S3AX counter_gated_i24 (.D(counter[24]), .CK(gps_pps_c), .Q(counter_gated[24]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i24.GSR = "ENABLED";
    FD1S3AX counter_gated_i23 (.D(counter[23]), .CK(gps_pps_c), .Q(counter_gated[23]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i23.GSR = "ENABLED";
    FD1S3AX counter_gated_i22 (.D(counter[22]), .CK(gps_pps_c), .Q(counter_gated[22]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i22.GSR = "ENABLED";
    FD1S3AX counter_gated_i21 (.D(counter[21]), .CK(gps_pps_c), .Q(counter_gated[21]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i21.GSR = "ENABLED";
    FD1S3AX counter_gated_i20 (.D(counter[20]), .CK(gps_pps_c), .Q(counter_gated[20]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i20.GSR = "ENABLED";
    FD1S3AX counter_gated_i19 (.D(counter[19]), .CK(gps_pps_c), .Q(counter_gated[19]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i19.GSR = "ENABLED";
    FD1S3AX counter_gated_i18 (.D(counter[18]), .CK(gps_pps_c), .Q(counter_gated[18]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i18.GSR = "ENABLED";
    FD1S3AX counter_gated_i17 (.D(counter[17]), .CK(gps_pps_c), .Q(counter_gated[17]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i17.GSR = "ENABLED";
    FD1S3AX counter_gated_i16 (.D(counter[16]), .CK(gps_pps_c), .Q(counter_gated[16]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i16.GSR = "ENABLED";
    FD1S3AX counter_gated_i15 (.D(counter[15]), .CK(gps_pps_c), .Q(counter_gated[15]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i15.GSR = "ENABLED";
    FD1S3AX counter_gated_i14 (.D(counter[14]), .CK(gps_pps_c), .Q(counter_gated[14]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i14.GSR = "ENABLED";
    FD1S3AX counter_gated_i13 (.D(counter[13]), .CK(gps_pps_c), .Q(counter_gated[13]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i13.GSR = "ENABLED";
    FD1S3AX counter_gated_i12 (.D(counter[12]), .CK(gps_pps_c), .Q(counter_gated[12]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i12.GSR = "ENABLED";
    FD1S3AX counter_gated_i11 (.D(counter[11]), .CK(gps_pps_c), .Q(counter_gated[11]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i11.GSR = "ENABLED";
    FD1S3AX counter_gated_i10 (.D(counter[10]), .CK(gps_pps_c), .Q(counter_gated[10]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i10.GSR = "ENABLED";
    FD1S3AX counter_gated_i9 (.D(counter[9]), .CK(gps_pps_c), .Q(counter_gated[9]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i9.GSR = "ENABLED";
    FD1S3AX counter_gated_i8 (.D(counter[8]), .CK(gps_pps_c), .Q(counter_gated[8]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i8.GSR = "ENABLED";
    FD1S3AX counter_gated_i7 (.D(counter[7]), .CK(gps_pps_c), .Q(counter_gated[7]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i7.GSR = "ENABLED";
    FD1S3AX counter_gated_i6 (.D(counter[6]), .CK(gps_pps_c), .Q(counter_gated[6]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i6.GSR = "ENABLED";
    FD1S3AX counter_gated_i5 (.D(counter[5]), .CK(gps_pps_c), .Q(counter_gated[5]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i5.GSR = "ENABLED";
    FD1S3AX counter_gated_i4 (.D(counter[4]), .CK(gps_pps_c), .Q(counter_gated[4]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i4.GSR = "ENABLED";
    FD1S3AX counter_gated_i3 (.D(counter[3]), .CK(gps_pps_c), .Q(counter_gated[3]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i3.GSR = "ENABLED";
    FD1S3AX counter_gated_i2 (.D(counter[2]), .CK(gps_pps_c), .Q(counter_gated[2]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i2.GSR = "ENABLED";
    FD1S3AX counter_gated_i1 (.D(counter[1]), .CK(gps_pps_c), .Q(counter_gated[1]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_i1.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i31 (.D(counter_gated[31]), .CK(gps_pps_c), 
            .Q(counter_gated_old[31]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i31.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i30 (.D(counter_gated[30]), .CK(gps_pps_c), 
            .Q(counter_gated_old[30]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i30.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i29 (.D(counter_gated[29]), .CK(gps_pps_c), 
            .Q(counter_gated_old[29]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i29.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i28 (.D(counter_gated[28]), .CK(gps_pps_c), 
            .Q(counter_gated_old[28]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i28.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i27 (.D(counter_gated[27]), .CK(gps_pps_c), 
            .Q(counter_gated_old[27]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i27.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i26 (.D(counter_gated[26]), .CK(gps_pps_c), 
            .Q(counter_gated_old[26]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i26.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i25 (.D(counter_gated[25]), .CK(gps_pps_c), 
            .Q(counter_gated_old[25]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i25.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i24 (.D(counter_gated[24]), .CK(gps_pps_c), 
            .Q(counter_gated_old[24]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i24.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i23 (.D(counter_gated[23]), .CK(gps_pps_c), 
            .Q(counter_gated_old[23]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i23.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i22 (.D(counter_gated[22]), .CK(gps_pps_c), 
            .Q(counter_gated_old[22]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i22.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i21 (.D(counter_gated[21]), .CK(gps_pps_c), 
            .Q(counter_gated_old[21]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i21.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i20 (.D(counter_gated[20]), .CK(gps_pps_c), 
            .Q(counter_gated_old[20]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i20.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i19 (.D(counter_gated[19]), .CK(gps_pps_c), 
            .Q(counter_gated_old[19]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i19.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i18 (.D(counter_gated[18]), .CK(gps_pps_c), 
            .Q(counter_gated_old[18]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i18.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i17 (.D(counter_gated[17]), .CK(gps_pps_c), 
            .Q(counter_gated_old[17]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i17.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i16 (.D(counter_gated[16]), .CK(gps_pps_c), 
            .Q(counter_gated_old[16]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i16.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i15 (.D(counter_gated[15]), .CK(gps_pps_c), 
            .Q(counter_gated_old[15]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i15.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i14 (.D(counter_gated[14]), .CK(gps_pps_c), 
            .Q(counter_gated_old[14]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i14.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i13 (.D(counter_gated[13]), .CK(gps_pps_c), 
            .Q(counter_gated_old[13]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i13.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i12 (.D(counter_gated[12]), .CK(gps_pps_c), 
            .Q(counter_gated_old[12]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i12.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i11 (.D(counter_gated[11]), .CK(gps_pps_c), 
            .Q(counter_gated_old[11]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i11.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i10 (.D(counter_gated[10]), .CK(gps_pps_c), 
            .Q(counter_gated_old[10]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i10.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i9 (.D(counter_gated[9]), .CK(gps_pps_c), 
            .Q(counter_gated_old[9]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i9.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i8 (.D(counter_gated[8]), .CK(gps_pps_c), 
            .Q(counter_gated_old[8]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i8.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i7 (.D(counter_gated[7]), .CK(gps_pps_c), 
            .Q(counter_gated_old[7]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i7.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i6 (.D(counter_gated[6]), .CK(gps_pps_c), 
            .Q(counter_gated_old[6]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i6.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i5 (.D(counter_gated[5]), .CK(gps_pps_c), 
            .Q(counter_gated_old[5]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i5.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i4 (.D(counter_gated[4]), .CK(gps_pps_c), 
            .Q(counter_gated_old[4]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i4.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i3 (.D(counter_gated[3]), .CK(gps_pps_c), 
            .Q(counter_gated_old[3]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i3.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i2 (.D(counter_gated[2]), .CK(gps_pps_c), 
            .Q(counter_gated_old[2]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i2.GSR = "ENABLED";
    FD1S3AX counter_gated_old_i1 (.D(counter_gated[1]), .CK(gps_pps_c), 
            .Q(counter_gated_old[1]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(48[9] 51[5])
    defparam counter_gated_old_i1.GSR = "ENABLED";
    OB leds_pad_5 (.I(leds_c_5), .O(leds[5]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB leds_pad_0 (.I(leds_c_0), .O(leds[0]));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(11[15:19])
    OB gps_rxd_pad (.I(gps_rxd_c_c), .O(gps_rxd));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(16[9:16])
    OB ftdi_rxd_pad (.I(ftdi_rxd_c_c), .O(ftdi_rxd));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(20[9:17])
    OB MISO_pad (.I(MISO_c_31), .O(MISO));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(25[9:13])
    IB test_clk_pad (.I(test_clk), .O(test_clk_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(8[8:16])
    IB gps_pps_pad (.I(gps_pps), .O(gps_pps_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(14[9:16])
    IB ftdi_rxd_c_pad (.I(gps_txd), .O(ftdi_rxd_c_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(15[9:16])
    IB gps_rxd_c_pad (.I(ftdi_txd), .O(gps_rxd_c_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(19[9:17])
    IB SCK_pad (.I(SCK), .O(SCK_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(22[9:12])
    IB SSEL_pad (.I(SSEL), .O(SSEL_c));   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(24[9:13])
    FD1S3AX counter_39__i1 (.D(n164), .CK(test_clk_c), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i1.GSR = "ENABLED";
    FD1S3AX counter_39__i2 (.D(n163), .CK(test_clk_c), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i2.GSR = "ENABLED";
    FD1S3AX counter_39__i3 (.D(n162), .CK(test_clk_c), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i3.GSR = "ENABLED";
    FD1S3AX counter_39__i4 (.D(n161), .CK(test_clk_c), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i4.GSR = "ENABLED";
    FD1S3AX counter_39__i5 (.D(n160), .CK(test_clk_c), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i5.GSR = "ENABLED";
    FD1S3AX counter_39__i6 (.D(n159), .CK(test_clk_c), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i6.GSR = "ENABLED";
    FD1S3AX counter_39__i7 (.D(n158), .CK(test_clk_c), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i7.GSR = "ENABLED";
    FD1S3AX counter_39__i8 (.D(n157), .CK(test_clk_c), .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i8.GSR = "ENABLED";
    FD1S3AX counter_39__i9 (.D(n156), .CK(test_clk_c), .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i9.GSR = "ENABLED";
    FD1S3AX counter_39__i10 (.D(n155), .CK(test_clk_c), .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i10.GSR = "ENABLED";
    FD1S3AX counter_39__i11 (.D(n154), .CK(test_clk_c), .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i11.GSR = "ENABLED";
    FD1S3AX counter_39__i12 (.D(n153), .CK(test_clk_c), .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i12.GSR = "ENABLED";
    FD1S3AX counter_39__i13 (.D(n152), .CK(test_clk_c), .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i13.GSR = "ENABLED";
    FD1S3AX counter_39__i14 (.D(n151), .CK(test_clk_c), .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i14.GSR = "ENABLED";
    FD1S3AX counter_39__i15 (.D(n150), .CK(test_clk_c), .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i15.GSR = "ENABLED";
    FD1S3AX counter_39__i16 (.D(n149), .CK(test_clk_c), .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i16.GSR = "ENABLED";
    FD1S3AX counter_39__i17 (.D(n148), .CK(test_clk_c), .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i17.GSR = "ENABLED";
    FD1S3AX counter_39__i18 (.D(n147), .CK(test_clk_c), .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i18.GSR = "ENABLED";
    FD1S3AX counter_39__i19 (.D(n146), .CK(test_clk_c), .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i19.GSR = "ENABLED";
    FD1S3AX counter_39__i20 (.D(n145), .CK(test_clk_c), .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i20.GSR = "ENABLED";
    FD1S3AX counter_39__i21 (.D(n144), .CK(test_clk_c), .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i21.GSR = "ENABLED";
    FD1S3AX counter_39__i22 (.D(n143), .CK(test_clk_c), .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i22.GSR = "ENABLED";
    FD1S3AX counter_39__i23 (.D(n142), .CK(test_clk_c), .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i23.GSR = "ENABLED";
    FD1S3AX counter_39__i24 (.D(n141), .CK(test_clk_c), .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i24.GSR = "ENABLED";
    FD1S3AX counter_39__i25 (.D(n140), .CK(test_clk_c), .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i25.GSR = "ENABLED";
    FD1S3AX counter_39__i26 (.D(n139), .CK(test_clk_c), .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i26.GSR = "ENABLED";
    FD1S3AX counter_39__i27 (.D(n138), .CK(test_clk_c), .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i27.GSR = "ENABLED";
    FD1S3AX counter_39__i28 (.D(n137), .CK(test_clk_c), .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i28.GSR = "ENABLED";
    FD1S3AX counter_39__i29 (.D(n136), .CK(test_clk_c), .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i29.GSR = "ENABLED";
    FD1S3AX counter_39__i30 (.D(n135), .CK(test_clk_c), .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i30.GSR = "ENABLED";
    FD1S3AX counter_39__i31 (.D(n134), .CK(test_clk_c), .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(46[41:55])
    defparam counter_39__i31.GSR = "ENABLED";
    LUT4 count_7__I_0_i7_1_lut (.A(count[6]), .Z(leds_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 count_7__I_0_i6_1_lut (.A(count[5]), .Z(leds_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i6_1_lut.init = 16'h5555;
    LUT4 count_7__I_0_i5_1_lut (.A(count[4]), .Z(leds_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(55[16:27])
    defparam count_7__I_0_i5_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module spi_peripheral
//

module spi_peripheral (bitcnt, fastclk, SSELr, n14, SSEL_c, count, 
            SCK_c, \SCKr[1] , \SCKr[2] , fastclk_enable_4, MISO_c_31) /* synthesis syn_module_defined=1 */ ;
    output [4:0]bitcnt;
    input fastclk;
    output [2:0]SSELr;
    input n14;
    input SSEL_c;
    input [31:0]count;
    input SCK_c;
    output \SCKr[1] ;
    output \SCKr[2] ;
    input fastclk_enable_4;
    output MISO_c_31;
    
    wire fastclk /* synthesis SET_AS_NETWORK=fastclk, is_clock=1 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/top.v(35[7:14])
    wire [2:0]SSELr_c;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(28[12:17])
    wire [4:0]bitcnt_c;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(40[12:18])
    wire [4:0]n20;
    wire [31:0]word_data_sent;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(69[13:27])
    
    wire n566, n397;
    wire [31:0]word_data_sent_30__N_171;
    wire [2:0]SCKr;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(22[12:16])
    
    wire n565, n8, n567, n449, fastclk_enable_36;
    
    FD1S3IX bitcnt__i0 (.D(n14), .CK(fastclk), .CD(SSELr[1]), .Q(bitcnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(45[9] 54[5])
    defparam bitcnt__i0.GSR = "ENABLED";
    FD1S3AX SSELr_i0 (.D(SSEL_c), .CK(fastclk), .Q(SSELr_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(29[9:56])
    defparam SSELr_i0.GSR = "ENABLED";
    LUT4 i59_2_lut_3_lut (.A(bitcnt_c[1]), .B(bitcnt[0]), .C(bitcnt_c[2]), 
         .Z(n20[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(50[15:30])
    defparam i59_2_lut_3_lut.init = 16'h7878;
    LUT4 mux_31_i21_4_lut (.A(count[20]), .B(word_data_sent[19]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[20])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i21_4_lut.init = 16'h0aca;
    LUT4 mux_31_i20_4_lut (.A(count[19]), .B(word_data_sent[18]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[19])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i20_4_lut.init = 16'h0aca;
    LUT4 mux_31_i19_4_lut (.A(count[18]), .B(word_data_sent[17]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[18])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i19_4_lut.init = 16'h0aca;
    LUT4 mux_31_i18_4_lut (.A(count[17]), .B(word_data_sent[16]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[17])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i18_4_lut.init = 16'h0aca;
    FD1S3AX SCKr_i0 (.D(SCK_c), .CK(fastclk), .Q(SCKr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(23[9:53])
    defparam SCKr_i0.GSR = "ENABLED";
    LUT4 mux_31_i17_4_lut (.A(count[16]), .B(word_data_sent[15]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[16])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i17_4_lut.init = 16'h0aca;
    FD1S3AX SSELr_i2 (.D(SSELr[1]), .CK(fastclk), .Q(SSELr_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(29[9:56])
    defparam SSELr_i2.GSR = "ENABLED";
    LUT4 mux_31_i16_4_lut (.A(count[15]), .B(word_data_sent[14]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[15])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i16_4_lut.init = 16'h0aca;
    LUT4 mux_31_i15_4_lut (.A(count[14]), .B(word_data_sent[13]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[14])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i15_4_lut.init = 16'h0aca;
    LUT4 mux_31_i2_4_lut (.A(count[1]), .B(word_data_sent[0]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i2_4_lut.init = 16'h0aca;
    LUT4 i36_4_lut (.A(bitcnt_c[3]), .B(n565), .C(n8), .D(bitcnt[0]), 
         .Z(n397)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam i36_4_lut.init = 16'hcccd;
    LUT4 i3_3_lut (.A(bitcnt_c[2]), .B(bitcnt_c[1]), .C(bitcnt_c[4]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(77[9:23])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 mux_31_i3_4_lut (.A(count[2]), .B(word_data_sent[1]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i3_4_lut.init = 16'h0aca;
    LUT4 i73_3_lut_4_lut (.A(bitcnt_c[2]), .B(n567), .C(bitcnt_c[3]), 
         .D(bitcnt_c[4]), .Z(n20[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(50[15:30])
    defparam i73_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_31_i10_4_lut (.A(count[9]), .B(word_data_sent[8]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[9])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i10_4_lut.init = 16'h0aca;
    LUT4 mux_31_i4_4_lut (.A(count[3]), .B(word_data_sent[2]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i4_4_lut.init = 16'h0aca;
    LUT4 mux_31_i14_4_lut (.A(count[13]), .B(word_data_sent[12]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i14_4_lut.init = 16'h0aca;
    LUT4 mux_31_i13_4_lut (.A(count[12]), .B(word_data_sent[11]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[12])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i13_4_lut.init = 16'h0aca;
    LUT4 mux_31_i12_4_lut (.A(count[11]), .B(word_data_sent[10]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[11])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i12_4_lut.init = 16'h0aca;
    LUT4 i86_2_lut_4_lut_3_lut_4_lut (.A(SSELr[1]), .B(SSELr_c[2]), .C(\SCKr[1] ), 
         .D(\SCKr[2] ), .Z(n449)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(31[27:46])
    defparam i86_2_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 mux_31_i32_4_lut (.A(count[31]), .B(word_data_sent[30]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[31])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i32_4_lut.init = 16'h0aca;
    LUT4 mux_31_i31_4_lut (.A(count[30]), .B(word_data_sent[29]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[30])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i31_4_lut.init = 16'h0aca;
    LUT4 mux_31_i30_4_lut (.A(count[29]), .B(word_data_sent[28]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[29])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i30_4_lut.init = 16'h0aca;
    LUT4 SCKr_2__I_0_i3_2_lut_rep_33 (.A(\SCKr[1] ), .B(\SCKr[2] ), .Z(n565)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(25[25:43])
    defparam SCKr_2__I_0_i3_2_lut_rep_33.init = 16'hbbbb;
    LUT4 mux_31_i29_4_lut (.A(count[28]), .B(word_data_sent[27]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[28])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i29_4_lut.init = 16'h0aca;
    LUT4 i137_3_lut_rep_32_4_lut (.A(\SCKr[1] ), .B(\SCKr[2] ), .C(SSELr[1]), 
         .D(SSELr_c[2]), .Z(fastclk_enable_36)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(25[25:43])
    defparam i137_3_lut_rep_32_4_lut.init = 16'h0f04;
    LUT4 mux_31_i28_4_lut (.A(count[27]), .B(word_data_sent[26]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[27])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i28_4_lut.init = 16'h0aca;
    LUT4 mux_31_i27_4_lut (.A(count[26]), .B(word_data_sent[25]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[26])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i27_4_lut.init = 16'h0aca;
    LUT4 SSELr_2__I_0_i3_2_lut_rep_34 (.A(SSELr[1]), .B(SSELr_c[2]), .Z(n566)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(31[27:46])
    defparam SSELr_2__I_0_i3_2_lut_rep_34.init = 16'hbbbb;
    LUT4 mux_31_i26_4_lut (.A(count[25]), .B(word_data_sent[24]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[25])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i26_4_lut.init = 16'h0aca;
    LUT4 mux_31_i25_4_lut (.A(count[24]), .B(word_data_sent[23]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[24])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i25_4_lut.init = 16'h0aca;
    LUT4 i54_2_lut_rep_35 (.A(bitcnt_c[1]), .B(bitcnt[0]), .Z(n567)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(50[15:30])
    defparam i54_2_lut_rep_35.init = 16'h8888;
    LUT4 mux_31_i24_4_lut (.A(count[23]), .B(word_data_sent[22]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[23])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i24_4_lut.init = 16'h0aca;
    LUT4 mux_31_i23_4_lut (.A(count[22]), .B(word_data_sent[21]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[22])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i23_4_lut.init = 16'h0aca;
    LUT4 i66_2_lut_3_lut_4_lut (.A(bitcnt_c[1]), .B(bitcnt[0]), .C(bitcnt_c[3]), 
         .D(bitcnt_c[2]), .Z(n20[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(50[15:30])
    defparam i66_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 mux_31_i22_4_lut (.A(count[21]), .B(word_data_sent[20]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[21])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i22_4_lut.init = 16'h0aca;
    FD1S3AX SSELr_i1 (.D(SSELr_c[0]), .CK(fastclk), .Q(SSELr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(29[9:56])
    defparam SSELr_i1.GSR = "ENABLED";
    FD1P3IX bitcnt__i4 (.D(n20[4]), .SP(fastclk_enable_4), .CD(SSELr[1]), 
            .CK(fastclk), .Q(bitcnt_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(45[9] 54[5])
    defparam bitcnt__i4.GSR = "ENABLED";
    FD1P3IX bitcnt__i3 (.D(n20[3]), .SP(fastclk_enable_4), .CD(SSELr[1]), 
            .CK(fastclk), .Q(bitcnt_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(45[9] 54[5])
    defparam bitcnt__i3.GSR = "ENABLED";
    FD1P3IX bitcnt__i2 (.D(n20[2]), .SP(fastclk_enable_4), .CD(SSELr[1]), 
            .CK(fastclk), .Q(bitcnt_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(45[9] 54[5])
    defparam bitcnt__i2.GSR = "ENABLED";
    FD1P3IX bitcnt__i1 (.D(n20[1]), .SP(fastclk_enable_4), .CD(SSELr[1]), 
            .CK(fastclk), .Q(bitcnt_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(45[9] 54[5])
    defparam bitcnt__i1.GSR = "ENABLED";
    FD1S3AX SCKr_i1 (.D(SCKr[0]), .CK(fastclk), .Q(\SCKr[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(23[9:53])
    defparam SCKr_i1.GSR = "ENABLED";
    FD1S3AX SCKr_i2 (.D(\SCKr[1] ), .CK(fastclk), .Q(\SCKr[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(23[9:53])
    defparam SCKr_i2.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i1 (.D(word_data_sent_30__N_171[1]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i1.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i2 (.D(word_data_sent_30__N_171[2]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i2.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i3 (.D(word_data_sent_30__N_171[3]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i3.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i4 (.D(word_data_sent_30__N_171[4]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i4.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i5 (.D(word_data_sent_30__N_171[5]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i5.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i6 (.D(word_data_sent_30__N_171[6]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i6.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i7 (.D(word_data_sent_30__N_171[7]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i7.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i8 (.D(word_data_sent_30__N_171[8]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i8.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i9 (.D(word_data_sent_30__N_171[9]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i9.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i10 (.D(word_data_sent_30__N_171[10]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i10.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i11 (.D(word_data_sent_30__N_171[11]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i11.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i12 (.D(word_data_sent_30__N_171[12]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i12.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i13 (.D(word_data_sent_30__N_171[13]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i13.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i14 (.D(word_data_sent_30__N_171[14]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i14.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i15 (.D(word_data_sent_30__N_171[15]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i15.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i16 (.D(word_data_sent_30__N_171[16]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i16.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i17 (.D(word_data_sent_30__N_171[17]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i17.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i18 (.D(word_data_sent_30__N_171[18]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i18.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i19 (.D(word_data_sent_30__N_171[19]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i19.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i20 (.D(word_data_sent_30__N_171[20]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i20.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i21 (.D(word_data_sent_30__N_171[21]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i21.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i22 (.D(word_data_sent_30__N_171[22]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i22.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i23 (.D(word_data_sent_30__N_171[23]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i23.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i24 (.D(word_data_sent_30__N_171[24]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i24.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i25 (.D(word_data_sent_30__N_171[25]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i25.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i26 (.D(word_data_sent_30__N_171[26]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i26.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i27 (.D(word_data_sent_30__N_171[27]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i27.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i28 (.D(word_data_sent_30__N_171[28]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i28.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i29 (.D(word_data_sent_30__N_171[29]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i29.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i30 (.D(word_data_sent_30__N_171[30]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(word_data_sent[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i30.GSR = "ENABLED";
    FD1P3AX word_data_sent_i0_i31 (.D(word_data_sent_30__N_171[31]), .SP(fastclk_enable_36), 
            .CK(fastclk), .Q(MISO_c_31)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i31.GSR = "ENABLED";
    LUT4 mux_31_i11_4_lut (.A(count[10]), .B(word_data_sent[9]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[10])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i11_4_lut.init = 16'h0aca;
    FD1P3IX word_data_sent_i0_i0 (.D(count[0]), .SP(fastclk_enable_36), 
            .CD(n449), .CK(fastclk), .Q(word_data_sent[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=143, LSE_LLINE=38, LSE_RLINE=38 */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(71[9] 82[6])
    defparam word_data_sent_i0_i0.GSR = "ENABLED";
    LUT4 mux_31_i7_4_lut (.A(count[6]), .B(word_data_sent[5]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i7_4_lut.init = 16'h0aca;
    LUT4 mux_31_i8_4_lut (.A(count[7]), .B(word_data_sent[6]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i8_4_lut.init = 16'h0aca;
    LUT4 mux_31_i9_4_lut (.A(count[8]), .B(word_data_sent[7]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[8])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i9_4_lut.init = 16'h0aca;
    LUT4 mux_31_i6_4_lut (.A(count[5]), .B(word_data_sent[4]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i6_4_lut.init = 16'h0aca;
    LUT4 i52_2_lut (.A(bitcnt_c[1]), .B(bitcnt[0]), .Z(n20[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(50[15:30])
    defparam i52_2_lut.init = 16'h6666;
    LUT4 mux_31_i5_4_lut (.A(count[4]), .B(word_data_sent[3]), .C(n566), 
         .D(n397), .Z(word_data_sent_30__N_171[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/george smart/documents/latticefpga/pfd experiments/spi.v(76[5] 81[8])
    defparam mux_31_i5_4_lut.init = 16'h0aca;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

