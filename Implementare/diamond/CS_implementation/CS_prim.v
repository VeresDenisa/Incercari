// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Jun 17 23:26:49 2024
//
// Verilog Description of module CS
//

module CS (clk, rst_n, btnHS, btnVS, btnUART, btnVGA, in, HSYNC, 
           VSYNC, LEDS, RED, GREEN, BLUE) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(3[8:10])
    input clk;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    input rst_n;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(7[7:12])
    input btnHS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(9[7:12])
    input btnVS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(10[7:12])
    input btnUART;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(11[7:14])
    input btnVGA;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(12[7:13])
    input in;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(14[7:9])
    output HSYNC;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    output VSYNC;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    output [7:0]LEDS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    output [3:0]RED;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(21[13:16])
    output [3:0]GREEN;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:18])
    output [3:0]BLUE;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:17])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    
    wire GND_net, rst_n_c, btnHS_c, btnVS_c, btnUART_c, btnVGA_c, 
        in_c, VSYNC_c, LEDS_c_7, LEDS_c_6, LEDS_c_5, LEDS_c_4, LEDS_c_3, 
        LEDS_c_2, LEDS_c_1, LEDS_c_0, RED_c_3, RED_c_2, RED_c_1, 
        RED_c_0, GREEN_c_3, GREEN_c_2, GREEN_c_1, GREEN_c_0, BLUE_c_3, 
        BLUE_c_2, BLUE_c_1, BLUE_c_0, button_signal_HS, button_signal_VS, 
        button_signal_DEBUG_UART, button_signal_DEBUG_VGA, c_valid;
    wire [2:0]c_ready;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(40[11:18])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(41[12:18])
    wire [3:0]c_addr;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(42[11:17])
    wire [1:0]UART_error;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(56[11:21])
    
    wire UART_valid_error;
    wire [7:0]UART_out;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(59[11:19])
    
    wire UART_valid_out;
    wire [7:0]UART_out_CM_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(69[11:27])
    
    wire UART_out_CM_data_empty;
    wire [3:0]Config_Notification;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(78[12:31])
    
    wire Config_Notification_Valid;
    wire [3:0]Config_Error;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(80[12:24])
    
    wire Error_Valid;
    wire [3:0]VGA_Notification;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(82[12:28])
    
    wire VGA_Notification_Valid;
    wire [11:0]Data_VGA;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(84[13:21])
    
    wire UART_info_empty;
    wire [7:0]UART_out_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(109[11:24])
    
    wire UART_error_empty;
    wire [1:0]UART_error_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(112[11:26])
    
    wire VGA_error_empty;
    wire [3:0]VGA_error_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(115[11:25])
    wire [3:0]VGA_error_data_3__N_13;
    wire [3:0]VGA_error_data_3__N_6;
    
    wire c_VGA_ready, c_UART_ready, data, valid_data, n108, n128, 
        c_data_1_derived_1, n8118, Load_config;
    wire [8:0]H_left_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(31[30:43])
    wire [5:0]V_left_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(33[30:43])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(36[27:38])
    wire [7:0]H_sync_pulse;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(37[27:39])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(38[27:38])
    wire [7:0]V_sync_pulse;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(39[27:39])
    wire [11:0]Count_h;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(41[30:37])
    wire [11:0]Count_v;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(42[30:37])
    
    wire clk_c_enable_219, n125, n124, n2287, n123, n7396, n8878, 
        counter_31__N_87, n8876;
    wire [23:0]counter_adj_1205;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [24:0]counter_23__N_180;
    
    wire clkout_N_205, n7397, n8875, n8389, counter_31__N_87_adj_1146, 
        n8873, n7400, counter_31__N_87_adj_1147, n8264;
    wire [23:0]baudrate_next_23__N_264;
    
    wire n8866, n8865, n114, n107;
    wire [1:0]ctr_ff;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n2285, button_ff, n8864;
    wire [1:0]ctr_ff_adj_1224;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n2281, button_ff_adj_1149;
    wire [1:0]ctr_ff_adj_1231;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire button_ff_adj_1151, clk_c_enable_230, n8304, n122, n121, 
        n115, n14, n112, clk_c_enable_190, n12, n9132, n8862, 
        n8, n151, n150, n149, n148, n147, n146, n145, n144, 
        n143, n10, n120, flag_reg, out_next_N_452, n8861, n10_adj_1152, 
        n119, clk_c_enable_208, n1378, n1375, n8860, n14_adj_1153, 
        n6, c_valid_N_786;
    wire [7:0]H_BackPorch_nxt_7__N_775;
    
    wire clk_c_enable_43, n7747, n8261, n8478, n6_adj_1154, n8856, 
        n8657, n9131, n8851, c_ready_nxt_N_907, n7428, clk_c_enable_92, 
        clk_c_enable_209, n8804, clk_c_enable_225, clk_c_enable_207, 
        n7427, n7426, n111, n118, n117, Active_nxt_N_1069, n142, 
        n141, n113, clk_c_enable_52, n140, n139, n138, n137, n7425;
    wire [1:0]ctr_ff_adj_1312;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire n103, button_ff_adj_1156, clk_c_enable_81, VCC_net, n8839, 
        n8270, n4068, n10_adj_1157, H_Count_Max_nxt_11__N_1023, V_Count_Max_nxt_11__N_1041, 
        n136, n135, n134, n133, n132, n131, n130, n129, n8837, 
        n102, n4, n104, n106, n109, n110, n116, n4110, n105, 
        n8_adj_1158, n467, n468, n469, clk_c_enable_46, n8831, n4108, 
        n1384, n12_adj_1159, clk_c_enable_213, n4_adj_1160, n4063, 
        n8827, n8826, n1947, n1958, n4_adj_1161, n5, n6_adj_1162, 
        n8_adj_1163, n10_adj_1164, n8284, n8250, n4106, n4061, n4104, 
        n7, n8281, n8090, n4102, n4090, n8908, n4100, n4059, 
        n4925, n23, n8813, n7424, n8812, n7423, n3750, n8896, 
        clk_c_enable_51, n7422, n4098, n7421, n8895, clk_c_enable_222, 
        n8894, n7420, n7419, n8087, n7418, n7417, n7745, n7399, 
        n8808, n8890, n8889, n7398, clk_c_enable_224, n8887, n8886, 
        n8885, n8884;
    
    CCU2D sub_1062_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_adj_1205[0]), .B1(counter_23__N_180[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n7417));
    defparam sub_1062_add_2_1.INIT0 = 16'h0000;
    defparam sub_1062_add_2_1.INIT1 = 16'h5999;
    defparam sub_1062_add_2_1.INJECT1_0 = "NO";
    defparam sub_1062_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_1063_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(H_left_margin[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7396));
    defparam sub_1063_add_2_1.INIT0 = 16'h0000;
    defparam sub_1063_add_2_1.INIT1 = 16'h5999;
    defparam sub_1063_add_2_1.INJECT1_0 = "NO";
    defparam sub_1063_add_2_1.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    LUT4 VGA_error_data_3__I_2_i1_3_lut (.A(VGA_error_data_3__N_13[0]), .B(VGA_Notification[0]), 
         .C(VGA_Notification_Valid), .Z(VGA_error_data_3__N_6[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[11:157])
    defparam VGA_error_data_3__I_2_i1_3_lut.init = 16'hcaca;
    LUT4 i7301_4_lut (.A(n8895), .B(n8894), .C(n8861), .D(n8270), .Z(n8478)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7301_4_lut.init = 16'hefee;
    OB BLUE_pad_2 (.I(BLUE_c_2), .O(BLUE[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:17])
    OB BLUE_pad_3 (.I(BLUE_c_3), .O(BLUE[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:17])
    OB GREEN_pad_0 (.I(GREEN_c_0), .O(GREEN[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:18])
    OB GREEN_pad_1 (.I(GREEN_c_1), .O(GREEN[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:18])
    OB GREEN_pad_2 (.I(GREEN_c_2), .O(GREEN[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:18])
    OB GREEN_pad_3 (.I(GREEN_c_3), .O(GREEN[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:18])
    OB RED_pad_0 (.I(RED_c_0), .O(RED[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(21[13:16])
    OB RED_pad_1 (.I(RED_c_1), .O(RED[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(21[13:16])
    OB RED_pad_2 (.I(RED_c_2), .O(RED[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(21[13:16])
    PFUMX LessThan_854_i16 (.BLUT(n8_adj_1158), .ALUT(n14), .C0(n8284), 
          .Z(n1375));
    OB RED_pad_3 (.I(RED_c_3), .O(RED[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(21[13:16])
    OB LEDS_pad_0 (.I(LEDS_c_0), .O(LEDS[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_1 (.I(LEDS_c_1), .O(LEDS[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_2 (.I(LEDS_c_2), .O(LEDS[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    LUT4 mux_8_i1_4_lut (.A(Config_Notification[0]), .B(Config_Error[0]), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(VGA_error_data_3__N_13[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[59:157])
    defparam mux_8_i1_4_lut.init = 16'hcac0;
    OB LEDS_pad_3 (.I(LEDS_c_3), .O(LEDS[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_4 (.I(LEDS_c_4), .O(LEDS[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_5 (.I(LEDS_c_5), .O(LEDS[5]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_6 (.I(LEDS_c_6), .O(LEDS[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB LEDS_pad_7 (.I(LEDS_c_7), .O(LEDS[7]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(19[24:28])
    OB VSYNC_pad (.I(VSYNC_c), .O(VSYNC));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    LUT4 i7269_4_lut (.A(ctr_ff[1]), .B(n8808), .C(btnVS_c), .D(button_ff), 
         .Z(clk_c_enable_46)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i7269_4_lut.init = 16'h1331;
    LUT4 LessThan_863_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_left_margin[1]), 
         .D(V_left_margin[0]), .Z(n4_adj_1161)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i4_4_lut.init = 16'h8ecf;
    LUT4 i7250_4_lut (.A(n8885), .B(n8887), .C(n8886), .D(n5), .Z(n8304)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam i7250_4_lut.init = 16'haaab;
    LUT4 LessThan_863_i5_2_lut (.A(V_left_margin[2]), .B(Count_v[2]), .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i5_2_lut.init = 16'h6666;
    PFUMX LessThan_857_i16 (.BLUT(n8), .ALUT(n14_adj_1153), .C0(n8264), 
          .Z(n1378));
    LUT4 LessThan_854_i11_2_lut_rep_235 (.A(H_sync_pulse[5]), .B(Count_h[5]), 
         .Z(n8894)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i11_2_lut_rep_235.init = 16'h6666;
    LUT4 i74_2_lut_rep_149 (.A(clk_DB), .B(counter_31__N_87_adj_1147), .Z(n8808)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i74_2_lut_rep_149.init = 16'hbbbb;
    LUT4 LessThan_854_i13_2_lut_rep_236 (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .Z(n8895)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i13_2_lut_rep_236.init = 16'h6666;
    LUT4 i7079_2_lut_3_lut_4_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), .C(Count_h[5]), 
         .D(H_sync_pulse[5]), .Z(n8281)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7079_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_854_i10_3_lut_3_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .C(Count_h[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i10_3_lut_3_lut.init = 16'hd4d4;
    OB HSYNC_pad (.I(HSYNC_c), .O(HSYNC));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    LUT4 i1_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_87_adj_1147), .C(btnVS_c), 
         .D(button_ff), .Z(n7747)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut.init = 16'h0440;
    LUT4 i1_3_lut_4_lut_adj_46 (.A(clk_DB), .B(counter_31__N_87_adj_1147), 
         .C(btnUART_c), .D(button_ff_adj_1149), .Z(n7745)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_46.init = 16'h0440;
    LUT4 LessThan_854_i15_2_lut_rep_237 (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .Z(n8896)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i15_2_lut_rep_237.init = 16'h6666;
    LUT4 LessThan_854_i12_3_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7302_2_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), .C(n8478), 
         .Z(n8284)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7302_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i1_3_lut_4_lut_adj_47 (.A(clk_DB), .B(counter_31__N_87_adj_1147), 
         .C(btnVGA_c), .D(button_ff_adj_1151), .Z(n4068)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_47.init = 16'h0440;
    LUT4 i3_4_lut (.A(n1384), .B(Count_v[7]), .C(Count_v[6]), .D(n8087), 
         .Z(Active_nxt_N_1069)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i7129_4_lut_4_lut (.A(n8896), .B(n8281), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7129_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_adj_48 (.A(clk_DB), .B(counter_31__N_87_adj_1147), 
         .C(btnHS_c), .D(button_ff_adj_1156), .Z(n4059)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_48.init = 16'h0440;
    PFUMX LessThan_863_i12 (.BLUT(n8_adj_1163), .ALUT(n10_adj_1164), .C0(n8304), 
          .Z(n1384));
    LUT4 i1_2_lut_rep_145_3_lut (.A(clk_VGA), .B(counter_31__N_87), .C(c_valid), 
         .Z(n8804)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i1_2_lut_rep_145_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_VGA), .B(counter_31__N_87), .C(n3750), 
         .D(c_valid), .Z(clk_c_enable_43)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i7127_4_lut_4_lut (.A(n8856), .B(n8261), .C(n12_adj_1159), .D(n4_adj_1160), 
         .Z(n14_adj_1153)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7127_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i4022_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[6]), 
         .D(clk_c_enable_51), .Z(n4110)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4022_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i4016_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[0]), 
         .D(clk_c_enable_51), .Z(n4098)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4016_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i4021_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[5]), 
         .D(clk_c_enable_51), .Z(n4108)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4021_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i4020_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[4]), 
         .D(clk_c_enable_51), .Z(n4106)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4020_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i4019_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[3]), 
         .D(clk_c_enable_51), .Z(n4104)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4019_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 i4018_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[2]), 
         .D(clk_c_enable_51), .Z(n4102)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4018_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i4017_2_lut_3_lut_4_lut_4_lut (.A(n8866), .B(n469), .C(UART_out[1]), 
         .D(clk_c_enable_51), .Z(n4100)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i4017_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    CCU2D sub_1063_add_2_5 (.A0(Count_h[3]), .B0(H_left_margin[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_left_margin[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7397), .COUT(n7398));
    defparam sub_1063_add_2_5.INIT0 = 16'h5999;
    defparam sub_1063_add_2_5.INIT1 = 16'h5999;
    defparam sub_1063_add_2_5.INJECT1_0 = "NO";
    defparam sub_1063_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1063_add_2_9 (.A0(Count_h[7]), .B0(H_left_margin[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_left_margin[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7399), .COUT(n7400));
    defparam sub_1063_add_2_9.INIT0 = 16'h5999;
    defparam sub_1063_add_2_9.INIT1 = 16'h5999;
    defparam sub_1063_add_2_9.INJECT1_0 = "NO";
    defparam sub_1063_add_2_9.INJECT1_1 = "NO";
    LUT4 i7284_2_lut_rep_146_4_lut (.A(flag_reg), .B(n8812), .C(n8873), 
         .D(n8826), .Z(clk_c_enable_209)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i7284_2_lut_rep_146_4_lut.init = 16'h0200;
    LUT4 i4148_3_lut_4_lut (.A(valid_data), .B(n8812), .C(n467), .D(n8866), 
         .Z(clk_c_enable_207)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i4148_3_lut_4_lut.init = 16'h2220;
    LUT4 i7276_4_lut (.A(ctr_ff_adj_1231[1]), .B(n8808), .C(btnVGA_c), 
         .D(button_ff_adj_1151), .Z(clk_c_enable_81)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i7276_4_lut.init = 16'h1331;
    LUT4 i4143_3_lut_4_lut (.A(valid_data), .B(n8812), .C(n468), .D(n8866), 
         .Z(clk_c_enable_225)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i4143_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(valid_data), .B(n8812), .C(n468), .D(n8866), 
         .Z(n10_adj_1157)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_49.init = 16'h0200;
    LUT4 i7288_3_lut_rep_151_4_lut (.A(clk_UART), .B(n8813), .C(n8873), 
         .D(flag_reg), .Z(clk_c_enable_222)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i7288_3_lut_rep_151_4_lut.init = 16'h0400;
    DB db (.\ctr_ff[1] (ctr_ff[1]), .clk_c(clk_c), .clk_c_enable_46(clk_c_enable_46), 
       .n7747(n7747), .button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
       .button_signal_VS(button_signal_VS), .button_ff_adj_4(button_ff_adj_1156), 
       .btnHS_c(btnHS_c), .button_signal_HS(button_signal_HS), .\ctr_ff[1]_adj_5 (ctr_ff_adj_1312[1]), 
       .clk_c_enable_213(clk_c_enable_213), .n4059(n4059), .button_ff_adj_6(button_ff_adj_1151), 
       .btnVGA_c(btnVGA_c), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
       .\ctr_ff[1]_adj_7 (ctr_ff_adj_1231[1]), .clk_c_enable_81(clk_c_enable_81), 
       .n4068(n4068), .button_ff_adj_8(button_ff_adj_1149), .btnUART_c(btnUART_c), 
       .\ctr_ff[1]_adj_9 (ctr_ff_adj_1224[1]), .clk_c_enable_52(clk_c_enable_52), 
       .n7745(n7745), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(48[4] 53[2])
    OB BLUE_pad_1 (.I(BLUE_c_1), .O(BLUE[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:17])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n9132)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i7291_4_lut (.A(ctr_ff_adj_1312[1]), .B(n8808), .C(btnHS_c), 
         .D(button_ff_adj_1156), .Z(clk_c_enable_213)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i7291_4_lut.init = 16'h1331;
    LUT4 i4141_2_lut_rep_148_3_lut_4_lut (.A(clk_UART), .B(n8813), .C(n8837), 
         .D(valid_data), .Z(clk_c_enable_224)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i4141_2_lut_rep_148_3_lut_4_lut.init = 16'h4000;
    LUT4 LessThan_857_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_sync_pulse[1]), 
         .D(V_sync_pulse[0]), .Z(n4_adj_1160)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i4_4_lut.init = 16'h0c8e;
    LUT4 LessThan_854_i4_4_lut (.A(Count_h[0]), .B(Count_h[1]), .C(H_sync_pulse[1]), 
         .D(H_sync_pulse[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i4_4_lut.init = 16'h0c8e;
    LUT4 VGA_error_data_3__I_2_i4_4_lut (.A(Error_Valid), .B(VGA_Notification[3]), 
         .C(VGA_Notification_Valid), .D(n8876), .Z(VGA_error_data_3__N_6[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[11:157])
    defparam VGA_error_data_3__I_2_i4_4_lut.init = 16'hc5c0;
    LUT4 VGA_error_data_3__I_2_i2_3_lut (.A(VGA_error_data_3__N_13[1]), .B(VGA_Notification[1]), 
         .C(VGA_Notification_Valid), .Z(VGA_error_data_3__N_6[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[11:157])
    defparam VGA_error_data_3__I_2_i2_3_lut.init = 16'hcaca;
    LUT4 mux_8_i2_4_lut (.A(Config_Notification[1]), .B(Config_Error[1]), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(VGA_error_data_3__N_13[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[59:157])
    defparam mux_8_i2_4_lut.init = 16'hcac0;
    CCU2D sub_1063_add_2_3 (.A0(Count_h[1]), .B0(H_left_margin[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_left_margin[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7396), .COUT(n7397));
    defparam sub_1063_add_2_3.INIT0 = 16'h5999;
    defparam sub_1063_add_2_3.INIT1 = 16'h5999;
    defparam sub_1063_add_2_3.INJECT1_0 = "NO";
    defparam sub_1063_add_2_3.INJECT1_1 = "NO";
    OB BLUE_pad_0 (.I(BLUE_c_0), .O(BLUE[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(7[7:12])
    IB btnHS_pad (.I(btnHS), .O(btnHS_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(9[7:12])
    IB btnVS_pad (.I(btnVS), .O(btnVS_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(10[7:12])
    IB btnUART_pad (.I(btnUART), .O(btnUART_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(11[7:14])
    IB btnVGA_pad (.I(btnVGA), .O(btnVGA_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(12[7:13])
    IB in_pad (.I(in), .O(in_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(14[7:9])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i7281_3_lut (.A(n7), .B(clk_c_enable_222), .C(out_next_N_452), 
         .Z(clk_c_enable_208)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i7281_3_lut.init = 16'hc4c4;
    LUT4 LessThan_857_i15_2_lut_rep_197 (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .Z(n8856)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i15_2_lut_rep_197.init = 16'h6666;
    LUT4 LessThan_857_i12_3_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .C(n10_adj_1152), .Z(n12_adj_1159)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7213_2_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), .C(n8389), 
         .Z(n8264)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7213_2_lut_3_lut.init = 16'hf6f6;
    LUT4 m0_lut (.Z(n9131)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 LessThan_857_i11_2_lut_rep_201 (.A(V_sync_pulse[5]), .B(Count_v[5]), 
         .Z(n8860)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i11_2_lut_rep_201.init = 16'h6666;
    LUT4 LessThan_854_i6_3_lut_3_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), 
         .C(Count_h[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7068_3_lut_4_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), .C(Count_h[2]), 
         .D(H_sync_pulse[2]), .Z(n8270)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7068_3_lut_4_lut.init = 16'h9009;
    LUT4 i7221_2_lut_rep_147 (.A(clk_LM), .B(counter_31__N_87_adj_1146), 
         .Z(clk_c_enable_92)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam i7221_2_lut_rep_147.init = 16'h4444;
    LUT4 i1359_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_87_adj_1146), .C(UART_info_empty), 
         .Z(n2287)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam i1359_2_lut_3_lut.init = 16'h4040;
    LUT4 LessThan_854_i9_2_lut_rep_202 (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .Z(n8861)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i9_2_lut_rep_202.init = 16'h6666;
    LUT4 LessThan_854_i8_3_lut_3_lut (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .C(n6), .Z(n8_adj_1158)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_854_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_857_i13_2_lut_rep_203 (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .Z(n8862)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i13_2_lut_rep_203.init = 16'h6666;
    LUT4 i7059_2_lut_3_lut_4_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), .C(Count_v[5]), 
         .D(V_sync_pulse[5]), .Z(n8261)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7059_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_857_i10_3_lut_3_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .C(Count_v[5]), .Z(n10_adj_1152)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_857_i6_3_lut_3_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1154)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7048_3_lut_4_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), .C(Count_v[2]), 
         .D(V_sync_pulse[2]), .Z(n8250)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7048_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_857_i9_2_lut_rep_205 (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .Z(n8864)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i9_2_lut_rep_205.init = 16'h6666;
    LUT4 LessThan_857_i8_3_lut_3_lut (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .C(n6_adj_1154), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_857_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut (.A(n467), .B(clk_c_enable_51), .C(n23), .D(n8908), 
         .Z(clk_c_enable_219)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hc4c0;
    LUT4 i1_4_lut_adj_50 (.A(data), .B(n468), .C(n467), .D(n8851), .Z(n23)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_50.init = 16'h5054;
    \Sync_Reg(SIZE=2)  FIFO_UART_error (.clk_c(clk_c), .clk_c_enable_190(clk_c_enable_190), 
            .UART_error({UART_error}), .UART_error_data({UART_error_data}), 
            .clk_UART(clk_UART), .UART_error_empty(UART_error_empty), .clk_LM(clk_LM), 
            .n9131(n9131), .UART_valid_error(UART_valid_error), .counter_31__N_87(counter_31__N_87_adj_1146)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(122[22] 125[56])
    LUT4 i7273_4_lut (.A(ctr_ff_adj_1224[1]), .B(n8808), .C(btnUART_c), 
         .D(button_ff_adj_1149), .Z(clk_c_enable_52)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i7273_4_lut.init = 16'h1331;
    LUT4 i3916_2_lut_rep_217 (.A(Config_Notification[3]), .B(Config_Notification_Valid), 
         .Z(n8876)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[93:156])
    defparam i3916_2_lut_rep_217.init = 16'h8888;
    LUT4 mux_8_i3_3_lut_4_lut (.A(Config_Notification[3]), .B(Config_Notification_Valid), 
         .C(Error_Valid), .D(Config_Error[2]), .Z(VGA_error_data_3__N_13[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(129[93:156])
    defparam mux_8_i3_3_lut_4_lut.init = 16'hf808;
    CCU2D sub_1062_add_2_25 (.A0(counter_adj_1205[23]), .B0(counter_23__N_180[14]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7428), .S1(n1947));
    defparam sub_1062_add_2_25.INIT0 = 16'h5999;
    defparam sub_1062_add_2_25.INIT1 = 16'h0000;
    defparam sub_1062_add_2_25.INJECT1_0 = "NO";
    defparam sub_1062_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_23 (.A0(counter_adj_1205[21]), .B0(counter_23__N_180[14]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[22]), .B1(counter_23__N_180[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7427), .COUT(n7428));
    defparam sub_1062_add_2_23.INIT0 = 16'h5999;
    defparam sub_1062_add_2_23.INIT1 = 16'h5999;
    defparam sub_1062_add_2_23.INJECT1_0 = "NO";
    defparam sub_1062_add_2_23.INJECT1_1 = "NO";
    LUT4 i1353_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_87_adj_1146), .C(UART_error_empty), 
         .Z(n2281)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam i1353_2_lut_3_lut.init = 16'h4040;
    CM cm (.c_VGA_ready(c_VGA_ready), .Load_config(Load_config), .\c_ready[1] (c_ready[1]), 
       .c_UART_ready(c_UART_ready), .clk_c(clk_c), .VSYNC_c(VSYNC_c), 
       .GND_net(GND_net), .n4061(n4061), .HSYNC_c(HSYNC_c), .n4063(n4063), 
       .UART_out_CM_data({UART_out_CM_data}), .c_addr({c_addr}), .\c_data[0] (c_data[0]), 
       .\Config_Notification[0] (Config_Notification[0]), .c_valid(c_valid), 
       .Config_Notification_Valid(Config_Notification_Valid), .Error_Valid(Error_Valid), 
       .\c_data[1] (c_data[1]), .\Config_Error[0] (Config_Error[0]), .\c_data[2] (c_data[2]), 
       .\Config_Error[1] (Config_Error[1]), .\Config_Error[2] (Config_Error[2]), 
       .UART_out_CM_data_empty(UART_out_CM_data_empty), .\Config_Notification[3] (Config_Notification[3]), 
       .n9132(n9132), .\Config_Notification[1] (Config_Notification[1]), 
       .n8875(n8875), .clk_c_enable_230(clk_c_enable_230), .n4090(n4090), 
       .\VGA_Notification[0] (VGA_Notification[0]), .Data_VGA({Data_VGA}), 
       .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), .c_ready_nxt_N_907(c_ready_nxt_N_907), 
       .n8890(n8890), .n8839(n8839), .\c_data[1]_derived_1 (c_data_1_derived_1), 
       .\H_BackPorch_nxt_7__N_775[5] (H_BackPorch_nxt_7__N_775[5]), .n8865(n8865), 
       .\H_count_max[8] (H_count_max[8]), .H_Count_Max_nxt_11__N_1023(H_Count_Max_nxt_11__N_1023), 
       .\V_count_max[3] (V_count_max[3]), .V_Count_Max_nxt_11__N_1041(V_Count_Max_nxt_11__N_1041), 
       .VGA_Notification_Valid(VGA_Notification_Valid), .n8878(n8878), .n8889(n8889), 
       .\VGA_Notification[3] (VGA_Notification[3]), .n8884(n8884), .n4925(n4925), 
       .\VGA_Notification[1] (VGA_Notification[1]), .button_signal_HS(button_signal_HS), 
       .button_signal_VS(button_signal_VS), .c_valid_N_786(c_valid_N_786), 
       .n8827(n8827), .\baudrate_next_23__N_264[1] (baudrate_next_23__N_264[1]), 
       .n8657(n8657)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(86[4] 97[24])
    CCU2D sub_1063_add_2_7 (.A0(Count_h[5]), .B0(H_left_margin[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_left_margin[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7398), .COUT(n7399));
    defparam sub_1063_add_2_7.INIT0 = 16'h5999;
    defparam sub_1063_add_2_7.INIT1 = 16'h5999;
    defparam sub_1063_add_2_7.INJECT1_0 = "NO";
    defparam sub_1063_add_2_7.INJECT1_1 = "NO";
    LUT4 i1358_2_lut_3_lut (.A(clk_LM), .B(counter_31__N_87_adj_1146), .C(VGA_error_empty), 
         .Z(n2285)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam i1358_2_lut_3_lut.init = 16'h4040;
    CCU2D sub_1063_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7400), .S0(n1958));
    defparam sub_1063_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1063_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1063_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1063_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_21 (.A0(counter_adj_1205[19]), .B0(counter_23__N_180[14]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[20]), .B1(counter_23__N_180[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7426), .COUT(n7427));
    defparam sub_1062_add_2_21.INIT0 = 16'h5999;
    defparam sub_1062_add_2_21.INIT1 = 16'h5999;
    defparam sub_1062_add_2_21.INJECT1_0 = "NO";
    defparam sub_1062_add_2_21.INJECT1_1 = "NO";
    UART uart (.rst_n_c(rst_n_c), .\c_ready[1] (c_ready[1]), .UART_valid_out(UART_valid_out), 
         .UART_valid_error(UART_valid_error), .n8873(n8873), .flag_reg(flag_reg), 
         .out_next_N_452(out_next_N_452), .clk_UART(clk_UART), .data(data), 
         .n467(n467), .n468(n468), .n8851(n8851), .n469(n469), .clk_c(clk_c), 
         .clk_c_enable_51(clk_c_enable_51), .clk_c_enable_207(clk_c_enable_207), 
         .valid_data(valid_data), .n8812(n8812), .clk_c_enable_224(clk_c_enable_224), 
         .clk_c_enable_225(clk_c_enable_225), .UART_out({UART_out}), .n4110(n4110), 
         .n4108(n4108), .n4106(n4106), .n4104(n4104), .n4102(n4102), 
         .n4100(n4100), .UART_error({UART_error}), .clk_c_enable_219(clk_c_enable_219), 
         .n8866(n8866), .n4098(n4098), .n8837(n8837), .n10(n10_adj_1157), 
         .n8908(n8908), .clk_VGA(clk_VGA), .c_valid_N_786(c_valid_N_786), 
         .clk_c_enable_43(clk_c_enable_43), .\c_data[1] (c_data[1]), .n8884(n8884), 
         .c_valid(c_valid), .c_addr({c_addr}), .n8831(n8831), .n3750(n3750), 
         .\c_data[0] (c_data[0]), .clk_c_enable_208(clk_c_enable_208), .clk_c_enable_209(clk_c_enable_209), 
         .clk_c_enable_222(clk_c_enable_222), .in_c(in_c), .n7(n7), .n8826(n8826), 
         .n1947(n1947), .\counter_23__N_180[14] (counter_23__N_180[14]), 
         .n8813(n8813), .n101({n102, n103, n104, n105, n106, n107, 
         n108, n109, n110, n111, n112, n113, n114, n115, n116, 
         n117, n118, n119, n120, n121, n122, n123, n124, n125}), 
         .n127({n128, n129, n130, n131, n132, n133, n134, n135, 
         n136, n137, n138, n139, n140, n141, n142, n143, n144, 
         n145, n146, n147, n148, n149, n150, n151}), .clk_c_enable_190(clk_c_enable_190), 
         .clkout_N_205(clkout_N_205)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(62[6] 67[2])
    \Sync_Reg(SIZE=8)_U7  FIFO_UART_CM (.UART_out_CM_data({UART_out_CM_data}), 
            .clk_c(clk_c), .clk_UART(clk_UART), .UART_out({UART_out}), 
            .UART_out_CM_data_empty(UART_out_CM_data_empty), .clk_LM(clk_LM), 
            .n9131(n9131), .\counter_23__N_180[14] (counter_23__N_180[14]), 
            .n1947(n1947), .counter_31__N_87(counter_31__N_87_adj_1146), 
            .UART_valid_out(UART_valid_out), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(72[22] 75[63])
    LUT4 i3_4_lut_adj_51 (.A(Count_v[11]), .B(Count_v[9]), .C(Count_v[10]), 
         .D(Count_v[8]), .Z(n8087)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_51.init = 16'hfffe;
    Sync_Reg FIFO_CM_error (.clk_c(clk_c), .\VGA_error_data_3__N_6[0] (VGA_error_data_3__N_6[0]), 
            .VGA_error_data({VGA_error_data}), .clk_VGA(clk_VGA), .VGA_error_empty(VGA_error_empty), 
            .clk_LM(clk_LM), .n9131(n9131), .counter_31__N_87(counter_31__N_87), 
            .counter_31__N_87_adj_3(counter_31__N_87_adj_1146), .\VGA_error_data_3__N_6[3] (VGA_error_data_3__N_6[3]), 
            .\VGA_error_data_3__N_6[1] (VGA_error_data_3__N_6[1]), .n8118(n8118), 
            .\VGA_error_data_3__N_13[2] (VGA_error_data_3__N_13[2]), .VGA_Notification_Valid(VGA_Notification_Valid), 
            .button_signal_DEBUG_UART(button_signal_DEBUG_UART), .Error_Valid(Error_Valid), 
            .Config_Notification_Valid(Config_Notification_Valid)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(127[22] 130[54])
    LUT4 i2_3_lut (.A(Count_h[9]), .B(Count_h[10]), .C(Count_h[11]), .Z(n8090)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 LessThan_863_i11_2_lut_rep_226 (.A(V_left_margin[5]), .B(Count_v[5]), 
         .Z(n8885)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i11_2_lut_rep_226.init = 16'h6666;
    LUT4 LessThan_863_i10_3_lut_3_lut (.A(V_left_margin[5]), .B(Count_v[5]), 
         .C(n4_adj_1161), .Z(n10_adj_1164)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_863_i7_2_lut_rep_227 (.A(V_left_margin[3]), .B(Count_v[3]), 
         .Z(n8886)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i7_2_lut_rep_227.init = 16'h6666;
    LUT4 LessThan_863_i6_3_lut_3_lut (.A(V_left_margin[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1162)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_863_i9_2_lut_rep_228 (.A(V_left_margin[4]), .B(Count_v[4]), 
         .Z(n8887)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i9_2_lut_rep_228.init = 16'h6666;
    CCU2D sub_1062_add_2_19 (.A0(counter_adj_1205[17]), .B0(counter_23__N_180[14]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[18]), .B1(counter_23__N_180[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7425), .COUT(n7426));
    defparam sub_1062_add_2_19.INIT0 = 16'h5999;
    defparam sub_1062_add_2_19.INIT1 = 16'h5999;
    defparam sub_1062_add_2_19.INJECT1_0 = "NO";
    defparam sub_1062_add_2_19.INJECT1_1 = "NO";
    LUT4 LessThan_863_i8_3_lut_3_lut (.A(V_left_margin[4]), .B(Count_v[4]), 
         .C(n6_adj_1162), .Z(n8_adj_1163)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_863_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_4_lut (.A(clk_VGA), .B(button_signal_DEBUG_UART), .C(counter_31__N_87), 
         .D(VGA_Notification_Valid), .Z(n8118)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam i2_4_lut.init = 16'h1000;
    LUT4 i7212_4_lut (.A(n8862), .B(n8860), .C(n8864), .D(n8250), .Z(n8389)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i7212_4_lut.init = 16'hefee;
    LM lm (.button_signal_DEBUG_UART(button_signal_DEBUG_UART), .LEDS_c_0(LEDS_c_0), 
       .LEDS_c_1(LEDS_c_1), .LEDS_c_2(LEDS_c_2), .LEDS_c_3(LEDS_c_3), 
       .LEDS_c_4(LEDS_c_4), .LEDS_c_5(LEDS_c_5), .LEDS_c_6(LEDS_c_6), 
       .rst_n_c(rst_n_c), .LEDS_c_7(LEDS_c_7), .clk_c(clk_c), .clk_c_enable_92(clk_c_enable_92), 
       .n2287(n2287), .UART_out_data({UART_out_data}), .n2281(n2281), 
       .UART_error_data({UART_error_data}), .n2285(n2285), .VGA_error_data({VGA_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(132[4] 140[2])
    VGA vga (.clk_c(clk_c), .\c_data[0] (c_data[0]), .\c_data[1] (c_data[1]), 
        .n8865(n8865), .V_sync_pulse({V_sync_pulse}), .H_sync_pulse({H_sync_pulse}), 
        .V_left_margin({V_left_margin}), .H_left_margin({H_left_margin}), 
        .Load_config(Load_config), .\c_data[1]_derived_1 (c_data_1_derived_1), 
        .V_Count_Max_nxt_11__N_1041(V_Count_Max_nxt_11__N_1041), .H_Count_Max_nxt_11__N_1023(H_Count_Max_nxt_11__N_1023), 
        .\H_count_max[8] (H_count_max[8]), .\V_count_max[3] (V_count_max[3]), 
        .c_valid(c_valid), .\c_addr[3] (c_addr[3]), .\c_addr[2] (c_addr[2]), 
        .\c_data[2] (c_data[2]), .\baudrate_next_23__N_264[2] (baudrate_next_23__N_264[2]), 
        .\baudrate_next_23__N_264[8] (baudrate_next_23__N_264[8]), .n8889(n8889), 
        .Data_VGA({Data_VGA}), .RED_c_3(RED_c_3), .Count_h({Count_h}), 
        .GND_net(GND_net), .BLUE_c_1(BLUE_c_1), .Count_v({Count_v}), .BLUE_c_0(BLUE_c_0), 
        .BLUE_c_2(BLUE_c_2), .BLUE_c_3(BLUE_c_3), .GREEN_c_0(GREEN_c_0), 
        .GREEN_c_1(GREEN_c_1), .GREEN_c_2(GREEN_c_2), .GREEN_c_3(GREEN_c_3), 
        .RED_c_0(RED_c_0), .RED_c_1(RED_c_1), .RED_c_2(RED_c_2), .n1958(n1958), 
        .Active_nxt_N_1069(Active_nxt_N_1069), .n8090(n8090), .VSYNC_c(VSYNC_c), 
        .HSYNC_c(HSYNC_c), .n4061(n4061), .rst_n_c(rst_n_c), .n1378(n1378), 
        .n8087(n8087), .n4063(n4063), .n1375(n1375)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(99[5] 104[31])
    CCU2D sub_1062_add_2_17 (.A0(counter_adj_1205[15]), .B0(counter_23__N_180[14]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[16]), .B1(counter_23__N_180[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7424), .COUT(n7425));
    defparam sub_1062_add_2_17.INIT0 = 16'h5999;
    defparam sub_1062_add_2_17.INIT1 = 16'h5999;
    defparam sub_1062_add_2_17.INJECT1_0 = "NO";
    defparam sub_1062_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_15 (.A0(counter_adj_1205[13]), .B0(counter_23__N_180[13]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[14]), .B1(counter_23__N_180[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7423), .COUT(n7424));
    defparam sub_1062_add_2_15.INIT0 = 16'h5999;
    defparam sub_1062_add_2_15.INIT1 = 16'h5999;
    defparam sub_1062_add_2_15.INJECT1_0 = "NO";
    defparam sub_1062_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_13 (.A0(counter_adj_1205[11]), .B0(counter_23__N_180[11]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[12]), .B1(counter_23__N_180[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7422), .COUT(n7423));
    defparam sub_1062_add_2_13.INIT0 = 16'h5999;
    defparam sub_1062_add_2_13.INIT1 = 16'h5999;
    defparam sub_1062_add_2_13.INJECT1_0 = "NO";
    defparam sub_1062_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_11 (.A0(counter_adj_1205[9]), .B0(counter_23__N_180[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[10]), .B1(counter_23__N_180[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7421), .COUT(n7422));
    defparam sub_1062_add_2_11.INIT0 = 16'h5999;
    defparam sub_1062_add_2_11.INIT1 = 16'h5999;
    defparam sub_1062_add_2_11.INJECT1_0 = "NO";
    defparam sub_1062_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_9 (.A0(counter_adj_1205[7]), .B0(counter_23__N_180[7]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[8]), .B1(counter_23__N_180[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7420), .COUT(n7421));
    defparam sub_1062_add_2_9.INIT0 = 16'h5999;
    defparam sub_1062_add_2_9.INIT1 = 16'h5999;
    defparam sub_1062_add_2_9.INJECT1_0 = "NO";
    defparam sub_1062_add_2_9.INJECT1_1 = "NO";
    CD cd (.c_VGA_ready(c_VGA_ready), .rst_n_c(rst_n_c), .c_UART_ready(c_UART_ready), 
       .GND_net(GND_net), .clk_VGA(clk_VGA), .clk_c(clk_c), .counter_31__N_87(counter_31__N_87), 
       .clk_UART(clk_UART), .clkout_N_205(clkout_N_205), .counter({counter_adj_1205}), 
       .n127({n128, n129, n130, n131, n132, n133, n134, n135, 
       n136, n137, n138, n139, n140, n141, n142, n143, n144, 
       n145, n146, n147, n148, n149, n150, n151}), .\counter_23__N_180[13] (counter_23__N_180[13]), 
       .\counter_23__N_180[14] (counter_23__N_180[14]), .n101({n102, n103, 
       n104, n105, n106, n107, n108, n109, n110, n111, n112, 
       n113, n114, n115, n116, n117, n118, n119, n120, n121, 
       n122, n123, n124, n125}), .\counter_23__N_180[11] (counter_23__N_180[11]), 
       .\counter_23__N_180[12] (counter_23__N_180[12]), .\counter_23__N_180[9] (counter_23__N_180[9]), 
       .\counter_23__N_180[10] (counter_23__N_180[10]), .\counter_23__N_180[7] (counter_23__N_180[7]), 
       .\counter_23__N_180[8] (counter_23__N_180[8]), .\counter_23__N_180[5] (counter_23__N_180[5]), 
       .\counter_23__N_180[6] (counter_23__N_180[6]), .\counter_23__N_180[3] (counter_23__N_180[3]), 
       .\counter_23__N_180[4] (counter_23__N_180[4]), .\counter_23__N_180[1] (counter_23__N_180[1]), 
       .\counter_23__N_180[2] (counter_23__N_180[2]), .\counter_23__N_180[0] (counter_23__N_180[0]), 
       .clk_LM(clk_LM), .counter_31__N_87_adj_1(counter_31__N_87_adj_1146), 
       .clk_DB(clk_DB), .counter_31__N_87_adj_2(counter_31__N_87_adj_1147), 
       .clk_c_enable_230(clk_c_enable_230), .\c_data[0] (c_data[0]), .n4925(n4925), 
       .c_valid_N_786(c_valid_N_786), .n8831(n8831), .n8804(n8804), .\c_data[1] (c_data[1]), 
       .\c_data[2] (c_data[2]), .n8875(n8875), .c_addr({c_addr}), .n8878(n8878), 
       .c_valid(c_valid), .n8657(n8657), .c_ready_nxt_N_907(c_ready_nxt_N_907), 
       .n8827(n8827), .\c_data[1]_derived_1 (c_data_1_derived_1), .\H_BackPorch_nxt_7__N_775[5] (H_BackPorch_nxt_7__N_775[5]), 
       .n8890(n8890), .\baudrate_next_23__N_264[8] (baudrate_next_23__N_264[8]), 
       .\baudrate_next_23__N_264[2] (baudrate_next_23__N_264[2]), .\baudrate_next_23__N_264[1] (baudrate_next_23__N_264[1]), 
       .n8839(n8839), .n4090(n4090)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(44[4] 46[79])
    CCU2D sub_1062_add_2_7 (.A0(counter_adj_1205[5]), .B0(counter_23__N_180[5]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[6]), .B1(counter_23__N_180[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7419), .COUT(n7420));
    defparam sub_1062_add_2_7.INIT0 = 16'h5999;
    defparam sub_1062_add_2_7.INIT1 = 16'h5999;
    defparam sub_1062_add_2_7.INJECT1_0 = "NO";
    defparam sub_1062_add_2_7.INJECT1_1 = "NO";
    \Sync_Reg(SIZE=8)  FIFO_UART_info (.clk_c(clk_c), .UART_out({UART_out}), 
            .UART_out_data({UART_out_data}), .clk_UART(clk_UART), .UART_info_empty(UART_info_empty), 
            .clk_LM(clk_LM), .n9131(n9131), .counter_31__N_87(counter_31__N_87_adj_1146), 
            .\counter_23__N_180[14] (counter_23__N_180[14]), .n1947(n1947), 
            .UART_valid_out(UART_valid_out), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(117[22] 120[53])
    CCU2D sub_1062_add_2_5 (.A0(counter_adj_1205[3]), .B0(counter_23__N_180[3]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[4]), .B1(counter_23__N_180[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7418), .COUT(n7419));
    defparam sub_1062_add_2_5.INIT0 = 16'h5999;
    defparam sub_1062_add_2_5.INIT1 = 16'h5999;
    defparam sub_1062_add_2_5.INJECT1_0 = "NO";
    defparam sub_1062_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1062_add_2_3 (.A0(counter_adj_1205[1]), .B0(counter_23__N_180[1]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1205[2]), .B1(counter_23__N_180[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7417), .COUT(n7418));
    defparam sub_1062_add_2_3.INIT0 = 16'h5999;
    defparam sub_1062_add_2_3.INIT1 = 16'h5999;
    defparam sub_1062_add_2_3.INJECT1_0 = "NO";
    defparam sub_1062_add_2_3.INJECT1_1 = "NO";
    VHI i7530 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module DB
//

module DB (\ctr_ff[1] , clk_c, clk_c_enable_46, n7747, button_ff, 
           clk_DB, btnVS_c, button_signal_VS, button_ff_adj_4, btnHS_c, 
           button_signal_HS, \ctr_ff[1]_adj_5 , clk_c_enable_213, n4059, 
           button_ff_adj_6, btnVGA_c, button_signal_DEBUG_VGA, \ctr_ff[1]_adj_7 , 
           clk_c_enable_81, n4068, button_ff_adj_8, btnUART_c, \ctr_ff[1]_adj_9 , 
           clk_c_enable_52, n7745, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_46;
    input n7747;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    output button_signal_VS;
    output button_ff_adj_4;
    input btnHS_c;
    output button_signal_HS;
    output \ctr_ff[1]_adj_5 ;
    input clk_c_enable_213;
    input n4059;
    output button_ff_adj_6;
    input btnVGA_c;
    output button_signal_DEBUG_VGA;
    output \ctr_ff[1]_adj_7 ;
    input clk_c_enable_81;
    input n4068;
    output button_ff_adj_8;
    input btnUART_c;
    output \ctr_ff[1]_adj_9 ;
    input clk_c_enable_52;
    input n7745;
    output button_signal_DEBUG_UART;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    
    DB_debouncer DB_VS (.\ctr_ff[1] (\ctr_ff[1] ), .clk_c(clk_c), .clk_c_enable_46(clk_c_enable_46), 
            .n7747(n7747), .button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
            .button_signal_VS(button_signal_VS)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(20[14:74])
    DB_debouncer_U1 DB_HS (.button_ff(button_ff_adj_4), .clk_DB(clk_DB), 
            .btnHS_c(btnHS_c), .button_signal_HS(button_signal_HS), .\ctr_ff[1] (\ctr_ff[1]_adj_5 ), 
            .clk_c(clk_c), .clk_c_enable_213(clk_c_enable_213), .n4059(n4059)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(19[14:74])
    DB_debouncer_U2 DB_DF_VGA (.button_ff(button_ff_adj_6), .clk_DB(clk_DB), 
            .btnVGA_c(btnVGA_c), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .\ctr_ff[1] (\ctr_ff[1]_adj_7 ), .clk_c(clk_c), .clk_c_enable_81(clk_c_enable_81), 
            .n4068(n4068)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(22[14:86])
    DB_debouncer_U3 DB_DF_UART (.button_ff(button_ff_adj_8), .clk_DB(clk_DB), 
            .btnUART_c(btnUART_c), .\ctr_ff[1] (\ctr_ff[1]_adj_9 ), .clk_c(clk_c), 
            .clk_c_enable_52(clk_c_enable_52), .n7745(n7745), .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(21[14:89])
    
endmodule
//
// Verilog Description of module DB_debouncer
//

module DB_debouncer (\ctr_ff[1] , clk_c, clk_c_enable_46, n7747, button_ff, 
            clk_DB, btnVS_c, button_signal_VS) /* synthesis syn_module_defined=1 */ ;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_46;
    input n7747;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    output button_signal_VS;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire [1:0]n13;
    wire [1:0]n23;
    
    FD1P3IX ctr_ff_1278__i1 (.D(n13[1]), .SP(clk_c_enable_46), .CD(n7747), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1278__i1.GSR = "ENABLED";
    FD1S3AX button_ff_19 (.D(btnVS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_VS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i6395_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6395_1_lut.init = 16'h5555;
    FD1P3IX ctr_ff_1278__i0 (.D(n13[0]), .SP(clk_c_enable_46), .CD(n7747), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1278__i0.GSR = "ENABLED";
    LUT4 i6397_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6397_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module DB_debouncer_U1
//

module DB_debouncer_U1 (button_ff, clk_DB, btnHS_c, button_signal_HS, 
            \ctr_ff[1] , clk_c, clk_c_enable_213, n4059) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnHS_c;
    output button_signal_HS;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_213;
    input n4059;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n13;
    wire [1:0]n23;
    
    FD1S3AX button_ff_19 (.D(btnHS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_HS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    FD1P3IX ctr_ff_1300__i1 (.D(n13[1]), .SP(clk_c_enable_213), .CD(n4059), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1300__i1.GSR = "ENABLED";
    LUT4 i6229_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6229_2_lut.init = 16'h6666;
    FD1P3IX ctr_ff_1300__i0 (.D(n13[0]), .SP(clk_c_enable_213), .CD(n4059), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1300__i0.GSR = "ENABLED";
    LUT4 i6227_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6227_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module DB_debouncer_U2
//

module DB_debouncer_U2 (button_ff, clk_DB, btnVGA_c, button_signal_DEBUG_VGA, 
            \ctr_ff[1] , clk_c, clk_c_enable_81, n4068) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVGA_c;
    output button_signal_DEBUG_VGA;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_81;
    input n4068;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n13;
    wire [1:0]n23;
    
    FD1S3AX button_ff_19 (.D(btnVGA_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=86, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_DEBUG_VGA)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=86, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    FD1P3IX ctr_ff_1282__i1 (.D(n13[1]), .SP(clk_c_enable_81), .CD(n4068), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1282__i1.GSR = "ENABLED";
    FD1P3IX ctr_ff_1282__i0 (.D(n13[0]), .SP(clk_c_enable_81), .CD(n4068), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1282__i0.GSR = "ENABLED";
    LUT4 i6365_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6365_1_lut.init = 16'h5555;
    LUT4 i6367_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6367_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module DB_debouncer_U3
//

module DB_debouncer_U3 (button_ff, clk_DB, btnUART_c, \ctr_ff[1] , clk_c, 
            clk_c_enable_52, n7745, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnUART_c;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_52;
    input n7745;
    output button_signal_DEBUG_UART;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n13;
    wire [1:0]n23;
    
    FD1S3AX button_ff_19 (.D(btnUART_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=89, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3IX ctr_ff_1280__i1 (.D(n13[1]), .SP(clk_c_enable_52), .CD(n7745), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1280__i1.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_DEBUG_UART)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=89, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i6380_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6380_1_lut.init = 16'h5555;
    FD1P3IX ctr_ff_1280__i0 (.D(n13[0]), .SP(clk_c_enable_52), .CD(n7745), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_1280__i0.GSR = "ENABLED";
    LUT4 i6382_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i6382_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \Sync_Reg(SIZE=2) 
//

module \Sync_Reg(SIZE=2)  (clk_c, clk_c_enable_190, UART_error, UART_error_data, 
            clk_UART, UART_error_empty, clk_LM, n9131, UART_valid_error, 
            counter_31__N_87) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input clk_c_enable_190;
    input [1:0]UART_error;
    output [1:0]UART_error_data;
    input clk_UART;
    output UART_error_empty;
    input clk_LM;
    input n9131;
    input UART_valid_error;
    input counter_31__N_87;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    wire [1:0]w_data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_c_enable_180, w_empty_reg, w_en_N_1078, clk_LM_enable_1;
    
    FD1P3AX w_data_reg_i0_i0 (.D(UART_error[0]), .SP(clk_c_enable_190), 
            .CK(clk_c), .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_180), 
            .CK(clk_c), .Q(UART_error_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(w_en_N_1078), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9131), .SP(clk_LM_enable_1), .CK(clk_LM), 
            .Q(UART_error_empty)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 w_en_I_0_1_lut (.A(UART_valid_error), .Z(w_en_N_1078)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam w_en_I_0_1_lut.init = 16'h5555;
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_180), 
            .CK(clk_c), .Q(UART_error_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_error[1]), .SP(clk_c_enable_190), 
            .CK(clk_c), .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=56, LSE_LLINE=122, LSE_RLINE=125 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i7189_2_lut_rep_223 (.A(w_empty_reg), .B(UART_valid_error), .Z(clk_LM_enable_1)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7189_2_lut_rep_223.init = 16'h1111;
    LUT4 i7266_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(UART_valid_error), 
         .C(counter_31__N_87), .D(clk_LM), .Z(clk_c_enable_180)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7266_2_lut_3_lut_4_lut.init = 16'h0010;
    
endmodule
//
// Verilog Description of module CM
//

module CM (c_VGA_ready, Load_config, \c_ready[1] , c_UART_ready, clk_c, 
           VSYNC_c, GND_net, n4061, HSYNC_c, n4063, UART_out_CM_data, 
           c_addr, \c_data[0] , \Config_Notification[0] , c_valid, Config_Notification_Valid, 
           Error_Valid, \c_data[1] , \Config_Error[0] , \c_data[2] , 
           \Config_Error[1] , \Config_Error[2] , UART_out_CM_data_empty, 
           \Config_Notification[3] , n9132, \Config_Notification[1] , 
           n8875, clk_c_enable_230, n4090, \VGA_Notification[0] , Data_VGA, 
           button_signal_DEBUG_VGA, c_ready_nxt_N_907, n8890, n8839, 
           \c_data[1]_derived_1 , \H_BackPorch_nxt_7__N_775[5] , n8865, 
           \H_count_max[8] , H_Count_Max_nxt_11__N_1023, \V_count_max[3] , 
           V_Count_Max_nxt_11__N_1041, VGA_Notification_Valid, n8878, 
           n8889, \VGA_Notification[3] , n8884, n4925, \VGA_Notification[1] , 
           button_signal_HS, button_signal_VS, c_valid_N_786, n8827, 
           \baudrate_next_23__N_264[1] , n8657) /* synthesis syn_module_defined=1 */ ;
    input c_VGA_ready;
    input Load_config;
    input \c_ready[1] ;
    input c_UART_ready;
    input clk_c;
    input VSYNC_c;
    input GND_net;
    input n4061;
    input HSYNC_c;
    input n4063;
    input [7:0]UART_out_CM_data;
    output [3:0]c_addr;
    output \c_data[0] ;
    output \Config_Notification[0] ;
    output c_valid;
    output Config_Notification_Valid;
    output Error_Valid;
    output \c_data[1] ;
    output \Config_Error[0] ;
    output \c_data[2] ;
    output \Config_Error[1] ;
    output \Config_Error[2] ;
    input UART_out_CM_data_empty;
    output \Config_Notification[3] ;
    input n9132;
    output \Config_Notification[1] ;
    output n8875;
    input clk_c_enable_230;
    output n4090;
    output \VGA_Notification[0] ;
    output [11:0]Data_VGA;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_907;
    output n8890;
    input n8839;
    input \c_data[1]_derived_1 ;
    output \H_BackPorch_nxt_7__N_775[5] ;
    input n8865;
    input \H_count_max[8] ;
    output H_Count_Max_nxt_11__N_1023;
    input \V_count_max[3] ;
    output V_Count_Max_nxt_11__N_1041;
    output VGA_Notification_Valid;
    input n8878;
    input n8889;
    output \VGA_Notification[3] ;
    input n8884;
    output n4925;
    output \VGA_Notification[1] ;
    input button_signal_HS;
    input button_signal_VS;
    output c_valid_N_786;
    input n8827;
    output \baudrate_next_23__N_264[1] ;
    output n8657;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    
    wire n5, c_ready_Assign, c_addr_3__N_471, Counter_Y_Valid;
    wire [9:0]Counter_Y;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(34[27:36])
    wire [7:0]H_BackPorch;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(27[30:41])
    wire [7:0]V_BackPorch;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(29[30:41])
    
    wire Counter_X_Valid;
    wire [9:0]Counter_X;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(32[28:37])
    wire [13:0]c_data_adj_1139;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(15[28:34])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(41[12:18])
    wire [9:0]HalfY_nxt_9__N_825;
    
    LUT4 i3_4_lut (.A(n5), .B(c_VGA_ready), .C(Load_config), .D(c_ready_Assign), 
         .Z(c_addr_3__N_471)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(40[17:41])
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i1_2_lut (.A(\c_ready[1] ), .B(c_UART_ready), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(40[17:41])
    defparam i1_2_lut.init = 16'h8888;
    CM_Counter counterV (.Counter_Y_Valid(Counter_Y_Valid), .clk_c(clk_c), 
            .VSYNC_c(VSYNC_c), .GND_net(GND_net), .Counter_Y({Counter_Y}), 
            .\H_BackPorch[5] (H_BackPorch[5]), .\H_BackPorch[4] (H_BackPorch[4]), 
            .\H_BackPorch[3] (H_BackPorch[3]), .\H_BackPorch[7] (H_BackPorch[7]), 
            .\V_BackPorch[1] (V_BackPorch[1]), .n4061(n4061)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(81[13] 87[27])
    CM_Counter_U4 counterH (.GND_net(GND_net), .Counter_X_Valid(Counter_X_Valid), 
            .clk_c(clk_c), .HSYNC_c(HSYNC_c), .Counter_X({Counter_X}), 
            .\H_BackPorch[6] (H_BackPorch[6]), .\H_BackPorch[7] (H_BackPorch[7]), 
            .\H_BackPorch[4] (H_BackPorch[4]), .\H_BackPorch[5] (H_BackPorch[5]), 
            .\H_BackPorch[3] (H_BackPorch[3]), .n4063(n4063)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(73[13] 79[27])
    CM_Config_Manager configCM (.clk_c(clk_c), .UART_out_CM_data({UART_out_CM_data}), 
            .c_addr({c_addr}), .\c_data[0] (\c_data[0] ), .\Config_Notification[0] (\Config_Notification[0] ), 
            .c_valid(c_valid), .c_addr_3__N_471(c_addr_3__N_471), .Config_Notification_Valid(Config_Notification_Valid), 
            .Error_Valid(Error_Valid), .\c_data[1] (\c_data[1] ), .\Config_Error[0] (\Config_Error[0] ), 
            .\c_data[2] (\c_data[2] ), .\Config_Error[1] (\Config_Error[1] ), 
            .\Config_Error[2] (\Config_Error[2] ), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
            .\Config_Notification[3] (\Config_Notification[3] ), .n9132(n9132), 
            .\Config_Notification[1] (\Config_Notification[1] ), .\c_data[13] (c_data_adj_1139[13]), 
            .\c_data[12] (c_data_adj_1139[12]), .\c_data[11] (c_data_adj_1139[11]), 
            .\c_data[10] (c_data_adj_1139[10]), .\c_data[9] (c_data_adj_1139[9]), 
            .\c_data[8] (c_data_adj_1139[8]), .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), 
            .\c_data[5] (c_data[5]), .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), 
            .n8875(n8875), .\HalfY_nxt_9__N_825[2] (HalfY_nxt_9__N_825[2]), 
            .clk_c_enable_230(clk_c_enable_230), .n4090(n4090)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(37[20] 49[34])
    CM_Assign_Data assignCM (.\VGA_Notification[0] (\VGA_Notification[0] ), 
            .clk_c(clk_c), .Data_VGA({Data_VGA}), .\c_data[0] (\c_data[0] ), 
            .c_ready_Assign(c_ready_Assign), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .c_ready_nxt_N_907(c_ready_nxt_N_907), .\c_data[1] (\c_data[1] ), 
            .n8890(n8890), .\c_addr[0] (c_addr[0]), .n8839(n8839), .\c_data[1]_derived_1 (\c_data[1]_derived_1 ), 
            .\H_BackPorch_nxt_7__N_775[5] (\H_BackPorch_nxt_7__N_775[5] ), 
            .n8865(n8865), .\H_count_max[8] (\H_count_max[8] ), .H_Count_Max_nxt_11__N_1023(H_Count_Max_nxt_11__N_1023), 
            .\V_count_max[3] (\V_count_max[3] ), .V_Count_Max_nxt_11__N_1041(V_Count_Max_nxt_11__N_1041), 
            .GND_net(GND_net), .Counter_X({Counter_X}), .\H_BackPorch[7] (H_BackPorch[7]), 
            .\H_BackPorch[4] (H_BackPorch[4]), .\H_BackPorch[3] (H_BackPorch[3]), 
            .Counter_X_Valid(Counter_X_Valid), .Counter_Y_Valid(Counter_Y_Valid), 
            .VGA_Notification_Valid(VGA_Notification_Valid), .\c_addr[1] (c_addr[1]), 
            .c_valid(c_valid), .n8878(n8878), .Counter_Y({Counter_Y}), 
            .\H_BackPorch[5] (H_BackPorch[5]), .\V_BackPorch[1] (V_BackPorch[1]), 
            .\H_BackPorch[6] (H_BackPorch[6]), .n8889(n8889), .\HalfY_nxt_9__N_825[2] (HalfY_nxt_9__N_825[2]), 
            .\c_data[11] (c_data_adj_1139[11]), .\c_data[10] (c_data_adj_1139[10]), 
            .\c_data[9] (c_data_adj_1139[9]), .\c_data[8] (c_data_adj_1139[8]), 
            .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), .\c_data[5] (c_data[5]), 
            .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), .\c_data[2] (\c_data[2] ), 
            .\VGA_Notification[3] (\VGA_Notification[3] ), .n9132(n9132), 
            .n8884(n8884), .n4925(n4925), .\VGA_Notification[1] (\VGA_Notification[1] ), 
            .button_signal_HS(button_signal_HS), .button_signal_VS(button_signal_VS), 
            .c_valid_N_786(c_valid_N_786), .n8827(n8827), .\c_data[13] (c_data_adj_1139[13]), 
            .\c_data[12] (c_data_adj_1139[12]), .\baudrate_next_23__N_264[1] (\baudrate_next_23__N_264[1] ), 
            .n8657(n8657)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(51[17] 70[35])
    
endmodule
//
// Verilog Description of module CM_Counter
//

module CM_Counter (Counter_Y_Valid, clk_c, VSYNC_c, GND_net, Counter_Y, 
            \H_BackPorch[5] , \H_BackPorch[4] , \H_BackPorch[3] , \H_BackPorch[7] , 
            \V_BackPorch[1] , n4061) /* synthesis syn_module_defined=1 */ ;
    output Counter_Y_Valid;
    input clk_c;
    input VSYNC_c;
    input GND_net;
    output [9:0]Counter_Y;
    input \H_BackPorch[5] ;
    input \H_BackPorch[4] ;
    input \H_BackPorch[3] ;
    input \H_BackPorch[7] ;
    input \V_BackPorch[1] ;
    input n4061;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n8814, n7559;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    wire [9:0]n45;
    
    wire n7558, n7557, n7556, n7555, n7554;
    wire [9:0]n45_adj_1138;
    
    wire n7553, n7552, n7551, n7550, n7537, n1849, n7536, n7535, 
        n7534, n7533, n7532, n1862, n7531, n7530, n7529, n7528, 
        n4060;
    
    FD1P3AX Counter_Valid_reg_19 (.D(n8814), .SP(VSYNC_c), .CK(clk_c), 
            .Q(Counter_Y_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=81, LSE_RLINE=87 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    CCU2D Count_intern_reg_1294_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7559), .S0(n45[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_1294_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1294_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7558), .COUT(n7559), .S0(n45[7]), 
          .S1(n45[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1294_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7557), .COUT(n7558), .S0(n45[5]), 
          .S1(n45[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1294_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7556), .COUT(n7557), .S0(n45[3]), 
          .S1(n45[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1294_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7555), .COUT(n7556), .S0(n45[1]), 
          .S1(n45[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1294_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1294_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7555), .S1(n45[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_1294_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_1294_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_1294_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_11 (.A0(Counter_Y[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7554), .S0(n45_adj_1138[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1296_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_1296_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_9 (.A0(Counter_Y[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7553), .COUT(n7554), .S0(n45_adj_1138[7]), 
          .S1(n45_adj_1138[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1296_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1296_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_7 (.A0(Counter_Y[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7552), .COUT(n7553), .S0(n45_adj_1138[5]), 
          .S1(n45_adj_1138[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1296_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1296_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_5 (.A0(Counter_Y[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7551), .COUT(n7552), .S0(n45_adj_1138[3]), 
          .S1(n45_adj_1138[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1296_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1296_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_3 (.A0(Counter_Y[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7550), .COUT(n7551), .S0(n45_adj_1138[1]), 
          .S1(n45_adj_1138[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1296_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1296_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1296_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7550), .S1(n45_adj_1138[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1296_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1296_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1296_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7537), .S0(n1849));
    defparam sub_1052_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1052_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1052_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1052_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[5] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(\H_BackPorch[4] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7536), .COUT(n7537));
    defparam sub_1052_add_2_10.INIT0 = 16'h5999;
    defparam sub_1052_add_2_10.INIT1 = 16'h5999;
    defparam sub_1052_add_2_10.INJECT1_0 = "NO";
    defparam sub_1052_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_8 (.A0(Count_intern_reg[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7535), .COUT(n7536));
    defparam sub_1052_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1052_add_2_8.INIT1 = 16'h5999;
    defparam sub_1052_add_2_8.INJECT1_0 = "NO";
    defparam sub_1052_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7534), .COUT(n7535));
    defparam sub_1052_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1052_add_2_6.INIT1 = 16'h5999;
    defparam sub_1052_add_2_6.INJECT1_0 = "NO";
    defparam sub_1052_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7533), .COUT(n7534));
    defparam sub_1052_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1052_add_2_4.INIT1 = 16'h5999;
    defparam sub_1052_add_2_4.INJECT1_0 = "NO";
    defparam sub_1052_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1052_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7533));
    defparam sub_1052_add_2_2.INIT0 = 16'h5000;
    defparam sub_1052_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1052_add_2_2.INJECT1_0 = "NO";
    defparam sub_1052_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_11 (.A0(Count_intern_reg[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7532), .S1(n1862));
    defparam sub_1054_add_2_11.INIT0 = 16'hf555;
    defparam sub_1054_add_2_11.INIT1 = 16'h0000;
    defparam sub_1054_add_2_11.INJECT1_0 = "NO";
    defparam sub_1054_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_9 (.A0(Count_intern_reg[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7531), .COUT(n7532));
    defparam sub_1054_add_2_9.INIT0 = 16'hf555;
    defparam sub_1054_add_2_9.INIT1 = 16'hf555;
    defparam sub_1054_add_2_9.INJECT1_0 = "NO";
    defparam sub_1054_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_7 (.A0(Count_intern_reg[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7530), .COUT(n7531));
    defparam sub_1054_add_2_7.INIT0 = 16'hf555;
    defparam sub_1054_add_2_7.INIT1 = 16'hf555;
    defparam sub_1054_add_2_7.INJECT1_0 = "NO";
    defparam sub_1054_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_5 (.A0(\H_BackPorch[3] ), .B0(Count_intern_reg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7529), .COUT(n7530));
    defparam sub_1054_add_2_5.INIT0 = 16'h5999;
    defparam sub_1054_add_2_5.INIT1 = 16'h0aaa;
    defparam sub_1054_add_2_5.INJECT1_0 = "NO";
    defparam sub_1054_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_3 (.A0(\V_BackPorch[1] ), .B0(Count_intern_reg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7528), .COUT(n7529));
    defparam sub_1054_add_2_3.INIT0 = 16'h5999;
    defparam sub_1054_add_2_3.INIT1 = 16'h0aaa;
    defparam sub_1054_add_2_3.INJECT1_0 = "NO";
    defparam sub_1054_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1054_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7528));
    defparam sub_1054_add_2_1.INIT0 = 16'hF000;
    defparam sub_1054_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_1054_add_2_1.INJECT1_0 = "NO";
    defparam sub_1054_add_2_1.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_1294__i0 (.D(n45[0]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i0 (.D(n45_adj_1138[0]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i0.GSR = "ENABLED";
    LUT4 i7195_2_lut_rep_155_2_lut (.A(n1862), .B(n1849), .Z(n8814)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7195_2_lut_rep_155_2_lut.init = 16'h1111;
    LUT4 i7228_2_lut_3_lut_3_lut (.A(n1862), .B(VSYNC_c), .C(n1849), .Z(n4060)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i7228_2_lut_3_lut_3_lut.init = 16'hfbfb;
    FD1S3IX Count_reg_1296__i1 (.D(n45_adj_1138[1]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i1.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i2 (.D(n45_adj_1138[2]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i3 (.D(n45_adj_1138[3]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i4 (.D(n45_adj_1138[4]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i5 (.D(n45_adj_1138[5]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i6 (.D(n45_adj_1138[6]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i7 (.D(n45_adj_1138[7]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i8 (.D(n45_adj_1138[8]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_1296__i9 (.D(n45_adj_1138[9]), .CK(clk_c), .CD(n4060), 
            .Q(Counter_Y[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1296__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i1 (.D(n45[1]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i1.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i2 (.D(n45[2]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i3 (.D(n45[3]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i4 (.D(n45[4]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i5 (.D(n45[5]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i6 (.D(n45[6]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i7 (.D(n45[7]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i8 (.D(n45[8]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1294__i9 (.D(n45[9]), .CK(clk_c), .CD(n4061), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1294__i9.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module CM_Counter_U4
//

module CM_Counter_U4 (GND_net, Counter_X_Valid, clk_c, HSYNC_c, Counter_X, 
            \H_BackPorch[6] , \H_BackPorch[7] , \H_BackPorch[4] , \H_BackPorch[5] , 
            \H_BackPorch[3] , n4063) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output Counter_X_Valid;
    input clk_c;
    input HSYNC_c;
    output [9:0]Counter_X;
    input \H_BackPorch[6] ;
    input \H_BackPorch[7] ;
    input \H_BackPorch[4] ;
    input \H_BackPorch[5] ;
    input \H_BackPorch[3] ;
    input n4063;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    
    wire n7395, n1836, n7394;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    
    wire n7569;
    wire [9:0]n45;
    
    wire n8816, n7568, n7567, n7566, n7565, n7564;
    wire [9:0]n45_adj_1127;
    
    wire n7563, n7562, n7561, n7560, n7393, n7392, n4062, n1823, 
        n7433, n7432, n7431, n7430, n7429;
    
    CCU2D sub_1050_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7395), .S0(n1836));
    defparam sub_1050_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1050_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1050_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1050_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1050_add_2_7 (.A0(Count_intern_reg[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7394), .COUT(n7395));
    defparam sub_1050_add_2_7.INIT0 = 16'hf555;
    defparam sub_1050_add_2_7.INIT1 = 16'hf555;
    defparam sub_1050_add_2_7.INJECT1_0 = "NO";
    defparam sub_1050_add_2_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1290_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7569), .S0(n45[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_1290_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_11.INJECT1_1 = "NO";
    FD1P3AX Counter_Valid_reg_19 (.D(n8816), .SP(HSYNC_c), .CK(clk_c), 
            .Q(Counter_X_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=73, LSE_RLINE=79 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    CCU2D Count_intern_reg_1290_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7568), .COUT(n7569), .S0(n45[7]), 
          .S1(n45[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1290_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7567), .COUT(n7568), .S0(n45[5]), 
          .S1(n45[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1290_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7566), .COUT(n7567), .S0(n45[3]), 
          .S1(n45[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1290_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7565), .COUT(n7566), .S0(n45[1]), 
          .S1(n45[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_1290_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_1290_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7565), .S1(n45[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_1290_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_1290_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_1290_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_11 (.A0(Counter_X[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7564), .S0(n45_adj_1127[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1292_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_1292_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_9 (.A0(Counter_X[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7563), .COUT(n7564), .S0(n45_adj_1127[7]), 
          .S1(n45_adj_1127[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1292_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1292_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_7 (.A0(Counter_X[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7562), .COUT(n7563), .S0(n45_adj_1127[5]), 
          .S1(n45_adj_1127[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1292_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1292_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_5 (.A0(Counter_X[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7561), .COUT(n7562), .S0(n45_adj_1127[3]), 
          .S1(n45_adj_1127[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1292_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1292_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_3 (.A0(Counter_X[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7560), .COUT(n7561), .S0(n45_adj_1127[1]), 
          .S1(n45_adj_1127[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1292_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1292_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1292_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7560), .S1(n45_adj_1127[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1292_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1292_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1292_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1050_add_2_5 (.A0(\H_BackPorch[6] ), .B0(Count_intern_reg[6]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[7] ), .B1(Count_intern_reg[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7393), .COUT(n7394));
    defparam sub_1050_add_2_5.INIT0 = 16'h5999;
    defparam sub_1050_add_2_5.INIT1 = 16'h5999;
    defparam sub_1050_add_2_5.INJECT1_0 = "NO";
    defparam sub_1050_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1050_add_2_3 (.A0(\H_BackPorch[4] ), .B0(Count_intern_reg[4]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[5] ), .B1(Count_intern_reg[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n7392), .COUT(n7393));
    defparam sub_1050_add_2_3.INIT0 = 16'h5999;
    defparam sub_1050_add_2_3.INIT1 = 16'h5999;
    defparam sub_1050_add_2_3.INJECT1_0 = "NO";
    defparam sub_1050_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1050_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\H_BackPorch[3] ), .B1(Count_intern_reg[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n7392));
    defparam sub_1050_add_2_1.INIT0 = 16'h0000;
    defparam sub_1050_add_2_1.INIT1 = 16'h5999;
    defparam sub_1050_add_2_1.INJECT1_0 = "NO";
    defparam sub_1050_add_2_1.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_1290__i0 (.D(n45[0]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i0 (.D(n45_adj_1127[0]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i0.GSR = "ENABLED";
    LUT4 i7192_2_lut_rep_157_2_lut (.A(n1836), .B(n1823), .Z(n8816)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7192_2_lut_rep_157_2_lut.init = 16'h1111;
    LUT4 i7231_2_lut_3_lut_3_lut (.A(n1836), .B(HSYNC_c), .C(n1823), .Z(n4062)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i7231_2_lut_3_lut_3_lut.init = 16'hfbfb;
    FD1S3IX Count_reg_1292__i1 (.D(n45_adj_1127[1]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i1.GSR = "ENABLED";
    CCU2D sub_1048_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7433), .S0(n1823));
    defparam sub_1048_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1048_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1048_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1048_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1048_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7432), .COUT(n7433));
    defparam sub_1048_add_2_10.INIT0 = 16'h5999;
    defparam sub_1048_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_1048_add_2_10.INJECT1_0 = "NO";
    defparam sub_1048_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1048_add_2_8 (.A0(Count_intern_reg[6]), .B0(\H_BackPorch[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7431), .COUT(n7432));
    defparam sub_1048_add_2_8.INIT0 = 16'h5999;
    defparam sub_1048_add_2_8.INIT1 = 16'h5999;
    defparam sub_1048_add_2_8.INJECT1_0 = "NO";
    defparam sub_1048_add_2_8.INJECT1_1 = "NO";
    FD1S3IX Count_reg_1292__i2 (.D(n45_adj_1127[2]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i3 (.D(n45_adj_1127[3]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i4 (.D(n45_adj_1127[4]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i5 (.D(n45_adj_1127[5]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i6 (.D(n45_adj_1127[6]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i7 (.D(n45_adj_1127[7]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i8 (.D(n45_adj_1127[8]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_1292__i9 (.D(n45_adj_1127[9]), .CK(clk_c), .CD(n4062), 
            .Q(Counter_X[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_1292__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i1 (.D(n45[1]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i1.GSR = "ENABLED";
    CCU2D sub_1048_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n7430), .COUT(n7431));
    defparam sub_1048_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1048_add_2_6.INIT1 = 16'h5999;
    defparam sub_1048_add_2_6.INJECT1_0 = "NO";
    defparam sub_1048_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1048_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7429), .COUT(n7430));
    defparam sub_1048_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1048_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1048_add_2_4.INJECT1_0 = "NO";
    defparam sub_1048_add_2_4.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_1290__i2 (.D(n45[2]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i3 (.D(n45[3]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i4 (.D(n45[4]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i5 (.D(n45[5]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i6 (.D(n45[6]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i7 (.D(n45[7]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i8 (.D(n45[8]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_1290__i9 (.D(n45[9]), .CK(clk_c), .CD(n4063), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_1290__i9.GSR = "ENABLED";
    CCU2D sub_1048_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7429));
    defparam sub_1048_add_2_2.INIT0 = 16'h5000;
    defparam sub_1048_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1048_add_2_2.INJECT1_0 = "NO";
    defparam sub_1048_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CM_Config_Manager
//

module CM_Config_Manager (clk_c, UART_out_CM_data, c_addr, \c_data[0] , 
            \Config_Notification[0] , c_valid, c_addr_3__N_471, Config_Notification_Valid, 
            Error_Valid, \c_data[1] , \Config_Error[0] , \c_data[2] , 
            \Config_Error[1] , \Config_Error[2] , UART_out_CM_data_empty, 
            \Config_Notification[3] , n9132, \Config_Notification[1] , 
            \c_data[13] , \c_data[12] , \c_data[11] , \c_data[10] , 
            \c_data[9] , \c_data[8] , \c_data[7] , \c_data[6] , \c_data[5] , 
            \c_data[4] , \c_data[3] , n8875, \HalfY_nxt_9__N_825[2] , 
            clk_c_enable_230, n4090) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [7:0]UART_out_CM_data;
    output [3:0]c_addr;
    output \c_data[0] ;
    output \Config_Notification[0] ;
    output c_valid;
    input c_addr_3__N_471;
    output Config_Notification_Valid;
    output Error_Valid;
    output \c_data[1] ;
    output \Config_Error[0] ;
    output \c_data[2] ;
    output \Config_Error[1] ;
    output \Config_Error[2] ;
    input UART_out_CM_data_empty;
    output \Config_Notification[3] ;
    input n9132;
    output \Config_Notification[1] ;
    output \c_data[13] ;
    output \c_data[12] ;
    output \c_data[11] ;
    output \c_data[10] ;
    output \c_data[9] ;
    output \c_data[8] ;
    output \c_data[7] ;
    output \c_data[6] ;
    output \c_data[5] ;
    output \c_data[4] ;
    output \c_data[3] ;
    output n8875;
    output \HalfY_nxt_9__N_825[2] ;
    input clk_c_enable_230;
    output n4090;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [7:0]n598 /* synthesis is_clock=1, SET_AS_NETWORK=\cm/configCM/State_nxt_2__N_489 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    wire [15:0]RXD_Data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    
    wire clk_c_enable_226, clk_c_enable_80, n8836, n8834, n8898, n8897, 
        n9130, n8901, n8900, n8820, n15, n8863, n8140, n8848, 
        n8904, n8903, n7715;
    wire [2:0]State_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[24:33])
    
    wire n8857, n3380, n18, n33, clk_c_enable_93, n4875, n4889;
    wire [2:0]State_nxt_2__N_475;
    
    wire n8846, Err_nxt_N_613, n8913, clk_c_enable_30;
    wire [13:0]c_data_nxt_13__N_518;
    
    wire clk_c_enable_31, n7652, n8852, n2768, n8912, n8653, n8830, 
        n8822, clk_c_enable_42;
    wire [2:0]State_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    
    wire n7605, n16, clk_c_enable_41, n3776, clk_c_enable_34, clk_c_enable_38;
    wire [3:0]Config_Error_nxt_3__N_560;
    
    wire n8835, n8874, n22, n8802, n8914, n8107, n1683, n25, 
        clk_c_enable_40, n8832, n38, n18_adj_1113, n4, n15_adj_1114, 
        n8855, n8838, n9, n8823, n50, n35, n8858, n3772, n8854, 
        n8775, clk_c_enable_59, clk_c_enable_60;
    wire [3:0]n1672;
    
    wire clk_c_enable_71, n7637, n15_adj_1115, n8905, n8881, n29, 
        n8774, n21, n11, n4055, n8192, n3782, n8819, n8825, 
        n8226, n3783, n8238, n8902, n8867, n19, n16_adj_1116;
    
    FD1P3IX RXD_Data_reg_i6 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i6.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i7 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i7.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i1 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i1.GSR = "ENABLED";
    LUT4 i13_3_lut_then_4_lut (.A(RXD_Data_reg[10]), .B(RXD_Data_reg[11]), 
         .C(n8836), .D(n8834), .Z(n8898)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i13_3_lut_then_4_lut.init = 16'h0020;
    LUT4 i13_3_lut_else_4_lut (.A(RXD_Data_reg[2]), .Z(n8897)) /* synthesis lut_function=(A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i13_3_lut_else_4_lut.init = 16'haaaa;
    LUT4 i1_3_lut_rep_239 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), .C(RXD_Data_reg[11]), 
         .Z(n9130)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut_rep_239.init = 16'h5454;
    LUT4 i45_4_lut_then_4_lut (.A(n8834), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[13]), 
         .D(RXD_Data_reg[10]), .Z(n8901)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (D)))) */ ;
    defparam i45_4_lut_then_4_lut.init = 16'h4c08;
    LUT4 i45_4_lut_else_4_lut (.A(n8834), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[10]), 
         .Z(n8900)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i45_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i20_3_lut_rep_177_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[14]), .Z(n8836)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i20_3_lut_rep_177_4_lut_4_lut.init = 16'h540a;
    LUT4 i1_2_lut_rep_161_3_lut (.A(RXD_Data_reg[15]), .B(n8836), .C(RXD_Data_reg[11]), 
         .Z(n8820)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_161_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut (.A(RXD_Data_reg[15]), .B(n8836), .C(n15), .D(n8863), 
         .Z(n8140)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i7012_4_lut_then_4_lut (.A(n8848), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[12]), 
         .D(RXD_Data_reg[8]), .Z(n8904)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i7012_4_lut_then_4_lut.init = 16'hebaa;
    LUT4 i7012_4_lut_else_4_lut (.A(n8848), .B(RXD_Data_reg[10]), .C(RXD_Data_reg[9]), 
         .D(RXD_Data_reg[12]), .Z(n8903)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i7012_4_lut_else_4_lut.init = 16'haaea;
    PFUMX mux_232_Mux_5_i7 (.BLUT(n8140), .ALUT(n7715), .C0(State_reg[2]), 
          .Z(n598[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;
    LUT4 i1_2_lut_4_lut (.A(n8857), .B(n3380), .C(RXD_Data_reg[11]), .D(n18), 
         .Z(n33)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_2_lut_4_lut.init = 16'h3a00;
    FD1P3IX c_addr_reg_i1 (.D(n4889), .SP(clk_c_enable_93), .CD(n4875), 
            .CK(clk_c), .Q(c_addr[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i1.GSR = "ENABLED";
    FD1S3IX Err_reg_144 (.D(Err_nxt_N_613), .CK(clk_c), .CD(n8846), .Q(State_nxt_2__N_475[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Err_reg_144.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_then_3_lut (.A(RXD_Data_reg[15]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[13]), .Z(n8913)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_4_lut_then_3_lut.init = 16'hf7f7;
    FD1P3AX c_data_reg_i0 (.D(c_data_nxt_13__N_518[0]), .SP(clk_c_enable_30), 
            .CK(clk_c), .Q(\c_data[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i0.GSR = "ENABLED";
    FD1P3AX Config_Notification_reg_i0 (.D(RXD_Data_reg[11]), .SP(clk_c_enable_31), 
            .CK(clk_c), .Q(\Config_Notification[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i0.GSR = "ENABLED";
    FD1S3IX c_valid_reg_148 (.D(c_addr_3__N_471), .CK(clk_c), .CD(n7652), 
            .Q(c_valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_valid_reg_148.GSR = "ENABLED";
    FD1S3AX Config_Notification_Valid_reg_152 (.D(n598[5]), .CK(clk_c), 
            .Q(Config_Notification_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_Valid_reg_152.GSR = "ENABLED";
    FD1S3IX Error_Valid_reg_154 (.D(n2768), .CK(clk_c), .CD(n8852), .Q(Error_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Error_Valid_reg_154.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_else_3_lut (.A(RXD_Data_reg[15]), .B(RXD_Data_reg[11]), 
         .C(RXD_Data_reg[14]), .D(RXD_Data_reg[13]), .Z(n8912)) /* synthesis lut_function=((B ((D)+!C)+!B (C+!(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_3_lut_4_lut_else_3_lut.init = 16'hfd7f;
    LUT4 i1_4_lut_4_lut (.A(n8846), .B(n8653), .C(n8830), .D(n8822), 
         .Z(clk_c_enable_42)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h5150;
    FD1S1A State_nxt_2__I_0_i1 (.D(n598[0]), .CK(n598[2]), .Q(State_nxt[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i1.GSR = "DISABLED";
    LUT4 i7241_4_lut_4_lut (.A(n8846), .B(n8830), .C(n7605), .D(n16), 
         .Z(clk_c_enable_41)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i7241_4_lut_4_lut.init = 16'h0504;
    FD1P3IX c_addr_reg_i2 (.D(n3776), .SP(clk_c_enable_93), .CD(n4875), 
            .CK(clk_c), .Q(c_addr[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i2.GSR = "ENABLED";
    FD1S3AX State_reg_i0 (.D(State_nxt[0]), .CK(clk_c), .Q(State_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i0.GSR = "ENABLED";
    FD1P3AX c_data_reg_i1 (.D(c_data_nxt_13__N_518[1]), .SP(clk_c_enable_34), 
            .CK(clk_c), .Q(\c_data[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i1.GSR = "ENABLED";
    FD1S1A State_nxt_2__I_0_i3 (.D(n598[3]), .CK(n598[2]), .Q(State_nxt[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i3.GSR = "DISABLED";
    FD1P3AX Config_Error_reg_i0 (.D(Config_Error_nxt_3__N_560[0]), .SP(clk_c_enable_38), 
            .CK(clk_c), .Q(\Config_Error[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i0.GSR = "ENABLED";
    LUT4 n18_bdd_4_lut (.A(n8835), .B(n8874), .C(n22), .D(RXD_Data_reg[14]), 
         .Z(n8802)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n18_bdd_4_lut.init = 16'h88f0;
    LUT4 i1_4_lut_4_lut_adj_31 (.A(n8846), .B(n8914), .C(n8830), .D(n8107), 
         .Z(clk_c_enable_38)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_31.init = 16'h5051;
    LUT4 i2_3_lut_4_lut_adj_32 (.A(RXD_Data_reg[15]), .B(n8846), .C(n1683), 
         .D(n25), .Z(clk_c_enable_31)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_32.init = 16'h2000;
    FD1P3AX c_data_reg_i2 (.D(c_data_nxt_13__N_518[2]), .SP(clk_c_enable_40), 
            .CK(clk_c), .Q(\c_data[2] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i2.GSR = "ENABLED";
    FD1P3AX Config_Error_reg_i1 (.D(Config_Error_nxt_3__N_560[1]), .SP(clk_c_enable_41), 
            .CK(clk_c), .Q(\Config_Error[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i1.GSR = "ENABLED";
    FD1P3AX Config_Error_reg_i2 (.D(Config_Error_nxt_3__N_560[2]), .SP(clk_c_enable_42), 
            .CK(clk_c), .Q(\Config_Error[2] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Error_reg_i2.GSR = "ENABLED";
    LUT4 i7235_2_lut_rep_159_2_lut_4_lut (.A(RXD_Data_reg[14]), .B(n8836), 
         .C(RXD_Data_reg[15]), .D(n8832), .Z(clk_c_enable_93)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i7235_2_lut_rep_159_2_lut_4_lut.init = 16'h00c5;
    LUT4 i7209_2_lut_3_lut_3_lut_3_lut_4_lut_3_lut (.A(RXD_Data_reg[14]), 
         .B(RXD_Data_reg[15]), .C(n8832), .Z(n4875)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i7209_2_lut_3_lut_3_lut_3_lut_4_lut_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_4_lut_3_lut (.A(n8836), .B(RXD_Data_reg[15]), .C(n38), 
         .Z(Config_Error_nxt_3__N_560[2])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i2_3_lut_4_lut_3_lut.init = 16'h8080;
    LUT4 c_data_nxt_13__I_0_i2_4_lut (.A(RXD_Data_reg[1]), .B(n8836), .C(RXD_Data_reg[15]), 
         .D(n18_adj_1113), .Z(c_data_nxt_13__N_518[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam c_data_nxt_13__I_0_i2_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[9]), .C(n4), 
         .D(n15_adj_1114), .Z(n18_adj_1113)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_4_lut.init = 16'hdc50;
    LUT4 i20_4_lut_4_lut (.A(n8855), .B(RXD_Data_reg[12]), .C(n8838), 
         .D(RXD_Data_reg[11]), .Z(n9)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D))) */ ;
    defparam i20_4_lut_4_lut.init = 16'hcc08;
    LUT4 i1_3_lut_4_lut (.A(n8855), .B(RXD_Data_reg[12]), .C(n8823), .D(n50), 
         .Z(n35)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf800;
    PFUMX i58 (.BLUT(n35), .ALUT(n33), .C0(RXD_Data_reg[11]), .Z(n38));
    FD1S3AX State_reg_i2 (.D(State_nxt[2]), .CK(clk_c), .Q(State_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i2.GSR = "ENABLED";
    FD1S3AX State_reg_i1 (.D(State_nxt[1]), .CK(clk_c), .Q(State_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i1.GSR = "ENABLED";
    LUT4 i3583_3_lut_4_lut (.A(RXD_Data_reg[8]), .B(n8858), .C(RXD_Data_reg[11]), 
         .D(n3772), .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i3583_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i1_2_lut_rep_163_4_lut (.A(n8854), .B(n9130), .C(RXD_Data_reg[14]), 
         .D(RXD_Data_reg[15]), .Z(n8822)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_163_4_lut.init = 16'hca00;
    LUT4 i3476_3_lut_rep_171_4_lut (.A(n8854), .B(n9130), .C(RXD_Data_reg[14]), 
         .D(RXD_Data_reg[15]), .Z(n8830)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3476_3_lut_rep_171_4_lut.init = 16'h35f0;
    FD1P3IX RXD_Data_reg_i2 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i2.GSR = "ENABLED";
    LUT4 RXD_Data_reg_11__bdd_4_lut (.A(RXD_Data_reg[11]), .B(n8838), .C(n8823), 
         .D(n8834), .Z(n8653)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam RXD_Data_reg_11__bdd_4_lut.init = 16'h4e0f;
    FD1P3IX RXD_Data_reg_i3 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i3.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i4 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i4.GSR = "ENABLED";
    LUT4 State_reg_1__bdd_4_lut (.A(State_reg[2]), .B(State_nxt_2__N_475[1]), 
         .C(State_reg[0]), .D(UART_out_CM_data_empty), .Z(n8775)) /* synthesis lut_function=(A (B (C))+!A (C+!(D))) */ ;
    defparam State_reg_1__bdd_4_lut.init = 16'hd0d5;
    FD1P3AX Config_Notification_reg_i3 (.D(n9132), .SP(clk_c_enable_59), 
            .CK(clk_c), .Q(\Config_Notification[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i3.GSR = "ENABLED";
    FD1P3AX Config_Notification_reg_i1 (.D(n1672[1]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(\Config_Notification[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Config_Notification_reg_i1.GSR = "ENABLED";
    FD1P3AX c_data_reg_i13 (.D(RXD_Data_reg[13]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(\c_data[13] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i13.GSR = "ENABLED";
    FD1P3AX c_data_reg_i12 (.D(RXD_Data_reg[12]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(\c_data[12] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i12.GSR = "ENABLED";
    FD1P3AX c_data_reg_i11 (.D(RXD_Data_reg[11]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(\c_data[11] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i11.GSR = "ENABLED";
    FD1P3AX c_data_reg_i10 (.D(RXD_Data_reg[10]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(\c_data[10] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i10.GSR = "ENABLED";
    FD1P3AX c_data_reg_i9 (.D(RXD_Data_reg[9]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[9] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i9.GSR = "ENABLED";
    FD1P3AX c_data_reg_i8 (.D(RXD_Data_reg[8]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[8] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i8.GSR = "ENABLED";
    FD1P3AX c_data_reg_i7 (.D(RXD_Data_reg[7]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[7] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i7.GSR = "ENABLED";
    FD1P3AX c_data_reg_i6 (.D(RXD_Data_reg[6]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[6] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i6.GSR = "ENABLED";
    FD1P3AX c_data_reg_i5 (.D(RXD_Data_reg[5]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[5] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i5.GSR = "ENABLED";
    FD1P3AX c_data_reg_i4 (.D(RXD_Data_reg[4]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[4] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i4.GSR = "ENABLED";
    FD1P3AX c_data_reg_i3 (.D(RXD_Data_reg[3]), .SP(clk_c_enable_71), .CK(clk_c), 
            .Q(\c_data[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i3.GSR = "ENABLED";
    FD1P3AX c_addr_reg_i3 (.D(n7637), .SP(clk_c_enable_93), .CK(clk_c), 
            .Q(c_addr[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i3.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i15 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i15.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i14 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i14.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i13 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i13.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i12 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i12.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i11 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i11.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i10 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i10.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i9 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i9.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i8 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_80), 
            .CK(clk_c), .Q(RXD_Data_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i8.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(RXD_Data_reg[14]), .B(n8836), .C(RXD_Data_reg[15]), 
         .D(n15_adj_1115), .Z(Err_nxt_N_613)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i9_4_lut.init = 16'hfa3a;
    LUT4 i3520_3_lut_4_lut (.A(RXD_Data_reg[12]), .B(n8857), .C(RXD_Data_reg[11]), 
         .D(n3380), .Z(n25)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i3520_3_lut_4_lut.init = 16'hfb0b;
    FD1P3AX c_addr_reg_i0 (.D(n8820), .SP(clk_c_enable_93), .CK(clk_c), 
            .Q(c_addr[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n50), .B(RXD_Data_reg[8]), .C(RXD_Data_reg[11]), 
         .D(n8858), .Z(n15_adj_1115)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i8_4_lut.init = 16'h0aca;
    LUT4 i3_4_lut (.A(State_reg[0]), .B(n1683), .C(RXD_Data_reg[15]), 
         .D(n8905), .Z(clk_c_enable_59)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i3035_4_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[9]), .C(RXD_Data_reg[8]), 
         .D(RXD_Data_reg[11]), .Z(n1672[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B+!(C (D))))) */ ;
    defparam i3035_4_lut.init = 16'h3aaa;
    LUT4 i59_4_lut (.A(n8857), .B(RXD_Data_reg[13]), .C(n8834), .D(n8881), 
         .Z(n50)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i59_4_lut.init = 16'h3a0a;
    LUT4 i1_4_lut_adj_33 (.A(n8846), .B(RXD_Data_reg[14]), .C(n29), .D(RXD_Data_reg[15]), 
         .Z(clk_c_enable_30)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_33.init = 16'h5011;
    LUT4 i3_4_lut_adj_34 (.A(n8822), .B(RXD_Data_reg[11]), .C(n8834), 
         .D(RXD_Data_reg[13]), .Z(n7637)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i3_4_lut_adj_34.init = 16'hddfd;
    LUT4 i1_2_lut_3_lut_4_lut (.A(State_reg[2]), .B(n8863), .C(n8802), 
         .D(RXD_Data_reg[15]), .Z(clk_c_enable_60)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_adj_35 (.A(n8834), .B(n8836), .C(n8857), .D(RXD_Data_reg[11]), 
         .Z(n29)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_35.init = 16'hcc8c;
    LUT4 State_reg_1__bdd_2_lut (.A(State_reg[2]), .B(State_reg[0]), .Z(n8774)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam State_reg_1__bdd_2_lut.init = 16'h4444;
    LUT4 i33_4_lut (.A(RXD_Data_reg[0]), .B(RXD_Data_reg[8]), .C(RXD_Data_reg[15]), 
         .D(n21), .Z(c_data_nxt_13__N_518[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i33_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_36 (.A(\c_data[0] ), .B(n11), .C(n8858), .D(RXD_Data_reg[11]), 
         .Z(n21)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i1_4_lut_adj_36.init = 16'h0544;
    LUT4 i1609_1_lut_rep_193 (.A(State_reg[0]), .Z(n8852)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1609_1_lut_rep_193.init = 16'h5555;
    LUT4 c_addr_3__N_471_bdd_4_lut (.A(c_addr_3__N_471), .B(State_reg[2]), 
         .C(State_reg[0]), .D(State_reg[1]), .Z(n598[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (D)+!B !(C (D))))) */ ;
    defparam c_addr_3__N_471_bdd_4_lut.init = 16'h30c4;
    LUT4 i7265_3_lut_4_lut_4_lut (.A(State_reg[0]), .B(RXD_Data_reg[15]), 
         .C(RXD_Data_reg[14]), .D(n8848), .Z(clk_c_enable_71)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i7265_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_173_3_lut_3_lut_3_lut (.A(State_reg[1]), .B(State_reg[2]), 
         .C(State_reg[0]), .Z(n8832)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_173_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i3064_1_lut_2_lut_2_lut (.A(State_reg[1]), .B(State_reg[0]), .Z(n4055)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i3064_1_lut_2_lut_2_lut.init = 16'hbbbb;
    PFUMX i7380 (.BLUT(n8775), .ALUT(n8774), .C0(State_reg[1]), .Z(n598[0]));
    LUT4 i1_2_lut_rep_189_2_lut (.A(State_reg[1]), .B(State_reg[2]), .Z(n8848)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_189_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_3_lut_3_lut (.A(State_reg[1]), .B(c_addr_3__N_471), .C(State_reg[0]), 
         .Z(n7715)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i3947_2_lut_2_lut (.A(State_reg[1]), .B(State_reg[0]), .Z(n598[2])) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i3947_2_lut_2_lut.init = 16'hdddd;
    LUT4 i6992_2_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[15]), .Z(n8192)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i6992_2_lut_4_lut.init = 16'h5400;
    LUT4 i1_2_lut_rep_195 (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[13]), .Z(n8854)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_2_lut_rep_195.init = 16'h4444;
    LUT4 i2_3_lut (.A(State_reg[2]), .B(State_reg[1]), .C(State_reg[0]), 
         .Z(n7652)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i1788_2_lut (.A(State_reg[1]), .B(State_reg[2]), .Z(n2768)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i1788_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(n3380), .B(n3782), .C(RXD_Data_reg[11]), .Z(n8107)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha3a3;
    LUT4 i20_2_lut_rep_196 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .Z(n8855)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_196.init = 16'h6666;
    LUT4 i1_2_lut_rep_175_3_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .Z(n8834)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_rep_175_3_lut.init = 16'h6060;
    LUT4 i2792_4_lut (.A(n8857), .B(n8881), .C(n8834), .D(RXD_Data_reg[13]), 
         .Z(n3782)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2792_4_lut.init = 16'hfaca;
    LUT4 i3905_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .D(RXD_Data_reg[11]), .Z(n4889)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i3905_3_lut_4_lut.init = 16'hf060;
    LUT4 i1_2_lut_rep_160_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[12]), .Z(n8819)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_rep_160_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i2_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[9]), .D(RXD_Data_reg[12]), .Z(n11)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_166_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[11]), .D(RXD_Data_reg[12]), .Z(n8825)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_166_3_lut_4_lut.init = 16'hf6f0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .D(RXD_Data_reg[11]), .Z(n3776)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h00bf;
    LUT4 i2782_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(n8857), .D(RXD_Data_reg[12]), .Z(n3772)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i2782_3_lut_4_lut_4_lut.init = 16'h2b0f;
    FD1P3IX RXD_Data_reg_i0 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i0.GSR = "ENABLED";
    LUT4 i7026_2_lut_3_lut_4_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[12]), .D(n8881), .Z(n8226)) /* synthesis lut_function=(!(A (B+!(C))+!A (((D)+!C)+!B))) */ ;
    defparam i7026_2_lut_3_lut_4_lut_4_lut.init = 16'h2060;
    LUT4 i3924_2_lut_rep_198 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), 
         .Z(n8857)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3924_2_lut_rep_198.init = 16'h8888;
    LUT4 i2507_3_lut_rep_164_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), 
         .C(RXD_Data_reg[11]), .D(n3380), .Z(n8823)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2507_3_lut_rep_164_4_lut.init = 16'h08f8;
    LUT4 i44_2_lut_rep_199 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), .Z(n8858)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i44_2_lut_rep_199.init = 16'h6666;
    LUT4 i1_2_lut_rep_176_3_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[8]), .Z(n8835)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;
    defparam i1_2_lut_rep_176_3_lut.init = 16'h6f6f;
    FD1S1I State_nxt_2__I_0_i2 (.D(n3783), .CK(n598[2]), .CD(n4055), .Q(State_nxt[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_204 (.A(State_reg[0]), .B(State_reg[1]), .Z(n8863)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i1_2_lut_rep_204.init = 16'h8888;
    LUT4 i7173_2_lut_rep_187_3_lut (.A(State_reg[0]), .B(State_reg[1]), 
         .C(State_reg[2]), .Z(n8846)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i7173_2_lut_rep_187_3_lut.init = 16'hf7f7;
    LUT4 i1_4_lut_adj_37 (.A(n8846), .B(RXD_Data_reg[14]), .C(n8238), 
         .D(RXD_Data_reg[15]), .Z(clk_c_enable_40)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_37.init = 16'h0511;
    LUT4 i7037_3_lut_4_lut (.A(n8836), .B(n8819), .C(n8902), .D(RXD_Data_reg[11]), 
         .Z(n8238)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i7037_3_lut_4_lut.init = 16'hfffd;
    LUT4 mux_231_Mux_8_i1_3_lut_rep_208 (.A(RXD_Data_reg[9]), .B(\c_data[1] ), 
         .C(RXD_Data_reg[8]), .Z(n8867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam mux_231_Mux_8_i1_3_lut_rep_208.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_38 (.A(RXD_Data_reg[9]), .B(\c_data[1] ), .C(RXD_Data_reg[8]), 
         .D(RXD_Data_reg[11]), .Z(n4)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam i1_2_lut_4_lut_adj_38.init = 16'hca00;
    LUT4 i7201_2_lut_3_lut_4_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[0]), .D(State_reg[2]), .Z(clk_c_enable_80)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7201_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i7254_2_lut_rep_182_3_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[2]), .Z(clk_c_enable_226)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7254_2_lut_rep_182_3_lut.init = 16'h0101;
    LUT4 i2793_3_lut (.A(UART_out_CM_data_empty), .B(State_nxt_2__N_475[1]), 
         .C(State_reg[2]), .Z(n3783)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2793_3_lut.init = 16'hc5c5;
    LUT4 i2_4_lut_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), .C(n8854), 
         .D(RXD_Data_reg[10]), .Z(n22)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i2_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i7244_4_lut (.A(n8846), .B(n19), .C(RXD_Data_reg[14]), .D(n8192), 
         .Z(clk_c_enable_34)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i7244_4_lut.init = 16'h1101;
    LUT4 i1_4_lut_adj_39 (.A(n8822), .B(n8226), .C(n18), .D(RXD_Data_reg[11]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_39.init = 16'ha022;
    LUT4 i3_4_lut_adj_40 (.A(n8825), .B(RXD_Data_reg[15]), .C(n8836), 
         .D(n8857), .Z(n7605)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_40.init = 16'h0040;
    LUT4 i1_2_lut_rep_215 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[11]), .Z(n8874)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_215.init = 16'h4444;
    LUT4 i13_3_lut_4_lut_3_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[11]), 
         .C(RXD_Data_reg[14]), .Z(n1683)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;
    defparam i13_3_lut_4_lut_3_lut.init = 16'h4242;
    LUT4 i10_1_lut_rep_216 (.A(\c_data[0] ), .Z(n8875)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i10_1_lut_rep_216.init = 16'h5555;
    LUT4 i3906_2_lut_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\HalfY_nxt_9__N_825[2] )) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i3906_2_lut_2_lut.init = 16'hdddd;
    LUT4 i3099_2_lut_2_lut (.A(\c_data[0] ), .B(clk_c_enable_230), .Z(n4090)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i3099_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_41 (.A(RXD_Data_reg[15]), .B(RXD_Data_reg[14]), .C(n16_adj_1116), 
         .D(n8854), .Z(n19)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'ha0a2;
    LUT4 i2398_3_lut_4_lut_3_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[8]), 
         .C(RXD_Data_reg[9]), .Z(n3380)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam i2398_3_lut_4_lut_3_lut.init = 16'h7b7b;
    LUT4 i39_3_lut_4_lut_3_lut (.A(RXD_Data_reg[12]), .B(RXD_Data_reg[8]), 
         .C(RXD_Data_reg[9]), .Z(n18)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam i39_3_lut_4_lut_3_lut.init = 16'h8484;
    LUT4 i1_4_lut_adj_42 (.A(n8881), .B(n8830), .C(n8822), .D(n9), .Z(Config_Error_nxt_3__N_560[1])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    defparam i1_4_lut_adj_42.init = 16'heccc;
    LUT4 i1_4_lut_adj_43 (.A(RXD_Data_reg[11]), .B(n8857), .C(RXD_Data_reg[13]), 
         .D(n8834), .Z(n16_adj_1116)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_43.init = 16'h5044;
    FD1P3IX RXD_Data_reg_i5 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_226), 
            .CD(clk_c_enable_80), .CK(clk_c), .Q(RXD_Data_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_44 (.A(n8867), .B(n4889), .C(RXD_Data_reg[13]), 
         .D(RXD_Data_reg[11]), .Z(n15_adj_1114)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_4_lut_adj_44.init = 16'hbb3b;
    LUT4 i1_2_lut_rep_222 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[8]), .Z(n8881)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_222.init = 16'h8888;
    LUT4 i1_2_lut_rep_179_3_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[8]), 
         .C(RXD_Data_reg[13]), .Z(n8838)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_179_3_lut.init = 16'hf7f7;
    LUT4 i1_3_lut_4_lut_adj_45 (.A(RXD_Data_reg[11]), .B(n8822), .C(n8830), 
         .D(n3380), .Z(Config_Error_nxt_3__N_560[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam i1_3_lut_4_lut_adj_45.init = 16'hf0f8;
    PFUMX i7399 (.BLUT(n8912), .ALUT(n8913), .C0(RXD_Data_reg[12]), .Z(n8914));
    PFUMX i7393 (.BLUT(n8903), .ALUT(n8904), .C0(RXD_Data_reg[11]), .Z(n8905));
    PFUMX i7391 (.BLUT(n8900), .ALUT(n8901), .C0(RXD_Data_reg[8]), .Z(n8902));
    PFUMX i7389 (.BLUT(n8897), .ALUT(n8898), .C0(RXD_Data_reg[15]), .Z(c_data_nxt_13__N_518[2]));
    
endmodule
//
// Verilog Description of module CM_Assign_Data
//

module CM_Assign_Data (\VGA_Notification[0] , clk_c, Data_VGA, \c_data[0] , 
            c_ready_Assign, button_signal_DEBUG_VGA, c_ready_nxt_N_907, 
            \c_data[1] , n8890, \c_addr[0] , n8839, \c_data[1]_derived_1 , 
            \H_BackPorch_nxt_7__N_775[5] , n8865, \H_count_max[8] , H_Count_Max_nxt_11__N_1023, 
            \V_count_max[3] , V_Count_Max_nxt_11__N_1041, GND_net, Counter_X, 
            \H_BackPorch[7] , \H_BackPorch[4] , \H_BackPorch[3] , Counter_X_Valid, 
            Counter_Y_Valid, VGA_Notification_Valid, \c_addr[1] , c_valid, 
            n8878, Counter_Y, \H_BackPorch[5] , \V_BackPorch[1] , \H_BackPorch[6] , 
            n8889, \HalfY_nxt_9__N_825[2] , \c_data[11] , \c_data[10] , 
            \c_data[9] , \c_data[8] , \c_data[7] , \c_data[6] , \c_data[5] , 
            \c_data[4] , \c_data[3] , \c_data[2] , \VGA_Notification[3] , 
            n9132, n8884, n4925, \VGA_Notification[1] , button_signal_HS, 
            button_signal_VS, c_valid_N_786, n8827, \c_data[13] , \c_data[12] , 
            \baudrate_next_23__N_264[1] , n8657) /* synthesis syn_module_defined=1 */ ;
    output \VGA_Notification[0] ;
    input clk_c;
    output [11:0]Data_VGA;
    input \c_data[0] ;
    output c_ready_Assign;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_907;
    input \c_data[1] ;
    output n8890;
    input \c_addr[0] ;
    input n8839;
    input \c_data[1]_derived_1 ;
    output \H_BackPorch_nxt_7__N_775[5] ;
    input n8865;
    input \H_count_max[8] ;
    output H_Count_Max_nxt_11__N_1023;
    input \V_count_max[3] ;
    output V_Count_Max_nxt_11__N_1041;
    input GND_net;
    input [9:0]Counter_X;
    output \H_BackPorch[7] ;
    output \H_BackPorch[4] ;
    output \H_BackPorch[3] ;
    input Counter_X_Valid;
    input Counter_Y_Valid;
    output VGA_Notification_Valid;
    input \c_addr[1] ;
    input c_valid;
    input n8878;
    input [9:0]Counter_Y;
    output \H_BackPorch[5] ;
    output \V_BackPorch[1] ;
    output \H_BackPorch[6] ;
    input n8889;
    input \HalfY_nxt_9__N_825[2] ;
    input \c_data[11] ;
    input \c_data[10] ;
    input \c_data[9] ;
    input \c_data[8] ;
    input \c_data[7] ;
    input \c_data[6] ;
    input \c_data[5] ;
    input \c_data[4] ;
    input \c_data[3] ;
    input \c_data[2] ;
    output \VGA_Notification[3] ;
    input n9132;
    input n8884;
    output n4925;
    output \VGA_Notification[1] ;
    input button_signal_HS;
    input button_signal_VS;
    output c_valid_N_786;
    input n8827;
    input \c_data[13] ;
    input \c_data[12] ;
    output \baudrate_next_23__N_264[1] ;
    output n8657;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n6, n18, n8829, n21, clk_c_enable_161;
    wire [1:0]Current_Qudran_Config_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(48[26:51])
    
    wire n8703, n8702, n1352, n8704, clk_c_enable_159, n8706;
    wire [11:0]Left_UP_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(40[23:34])
    
    wire clk_c_enable_147;
    wire [11:0]Left_DOWN_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(41[23:36])
    
    wire clk_c_enable_136;
    wire [11:0]Right_UP_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(42[23:35])
    
    wire clk_c_enable_125;
    wire [11:0]Right_DOWN_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(43[23:37])
    
    wire clk_c_enable_114, clk_c_enable_103;
    wire [1:0]Current_Qudran_Config_nxt_1__N_758;
    wire [1:0]Previous_Qudran_Config_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(49[26:52])
    
    wire n1344;
    wire [11:0]n1192;
    
    wire clk_c_enable_101, n8869;
    wire [3:0]VGA_Notification_nxt_3__N_890;
    
    wire n8815, n8159, n8232, n29, n1358, n521, n523, n7467, 
        n7466, n5, n7465, n7464;
    wire [11:0]n1205;
    
    wire VGA_Notification_nxt_3__N_894, n7463, n8824, n15, n8317, 
        n7769, n8699, n8700, n7456, n12, n9, n7455, n7454, n8705, 
        n7791;
    wire [11:0]n1176;
    
    wire n8879, n7453, n7452, n7771, n8701;
    wire [11:0]n1247;
    
    wire n15_adj_1112, n8698, n8697;
    
    PFUMX i35 (.BLUT(n6), .ALUT(n18), .C0(n8829), .Z(n21));
    FD1P3AX VGA_Notification_reg_i0_i0 (.D(Current_Qudran_Config_reg[0]), 
            .SP(clk_c_enable_161), .CK(clk_c), .Q(\VGA_Notification[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i0.GSR = "ENABLED";
    PFUMX i7346 (.BLUT(n8703), .ALUT(n8702), .C0(n1352), .Z(n8704));
    FD1P3AX Data_VGA_reg_i0_i0 (.D(n8706), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i0 (.D(Current_Qudran_Config_nxt_1__N_758[0]), 
            .SP(clk_c_enable_103), .CK(clk_c), .Q(Current_Qudran_Config_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Previous_Qudran_Config_reg_i0_i0 (.D(Current_Qudran_Config_reg[0]), 
            .SP(clk_c_enable_103), .CK(clk_c), .Q(Previous_Qudran_Config_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Previous_Qudran_Config_reg_i0_i0.GSR = "ENABLED";
    FD1S3JX c_ready_reg_118 (.D(c_ready_nxt_N_907), .CK(clk_c), .PD(button_signal_DEBUG_VGA), 
            .Q(c_ready_Assign)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam c_ready_reg_118.GSR = "ENABLED";
    LUT4 mux_755_i2_3_lut (.A(Right_UP_reg[1]), .B(Left_DOWN_reg[1]), .C(n1344), 
         .Z(n1192[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i2_3_lut.init = 16'hcaca;
    LUT4 i3915_2_lut_rep_231 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n8890)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i3915_2_lut_rep_231.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(\c_addr[0] ), .B(n8839), .C(\c_data[1]_derived_1 ), 
         .D(button_signal_DEBUG_VGA), .Z(clk_c_enable_101)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i4157_1_lut_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\H_BackPorch_nxt_7__N_775[5] )) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4157_1_lut_2_lut.init = 16'h1111;
    LUT4 H_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(\H_count_max[8] ), .Z(H_Count_Max_nxt_11__N_1023)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_8__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 V_count_max_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(\V_count_max[3] ), .Z(V_Count_Max_nxt_11__N_1041)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_3__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 i458_2_lut_3_lut_4_lut (.A(\c_addr[0] ), .B(n8839), .C(button_signal_DEBUG_VGA), 
         .D(n8869), .Z(clk_c_enable_103)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i458_2_lut_3_lut_4_lut.init = 16'h0f04;
    LUT4 i3_4_lut (.A(VGA_Notification_nxt_3__N_890[1]), .B(clk_c_enable_159), 
         .C(n8815), .D(n8159), .Z(n1344)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 mux_755_i3_3_lut (.A(Right_UP_reg[2]), .B(Left_DOWN_reg[2]), .C(n1344), 
         .Z(n1192[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i3_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n8232), .B(button_signal_DEBUG_VGA), .C(n29), .D(clk_c_enable_159), 
         .Z(n1358)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i2_4_lut.init = 16'h3100;
    LUT4 i35_4_lut (.A(n521), .B(VGA_Notification_nxt_3__N_890[1]), .C(Current_Qudran_Config_reg[0]), 
         .D(n523), .Z(n29)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;
    defparam i35_4_lut.init = 16'h0545;
    CCU2D sub_1045_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7467), .S0(n523));
    defparam sub_1045_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1045_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1045_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1045_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_10 (.A0(Counter_X[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7466), .COUT(n7467));
    defparam sub_1045_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_1045_add_2_10.INIT1 = 16'h5555;
    defparam sub_1045_add_2_10.INJECT1_0 = "NO";
    defparam sub_1045_add_2_10.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_27 (.A(n5), .B(VGA_Notification_nxt_3__N_890[1]), 
         .C(n8159), .D(Current_Qudran_Config_reg[0]), .Z(n1352)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i3_4_lut_adj_27.init = 16'h8000;
    LUT4 mux_755_i6_3_lut (.A(Right_UP_reg[5]), .B(Left_DOWN_reg[5]), .C(n1344), 
         .Z(n1192[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i6_3_lut.init = 16'hcaca;
    CCU2D sub_1045_add_2_8 (.A0(Counter_X[6]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[7]), .B1(\H_BackPorch[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7465), .COUT(n7466));
    defparam sub_1045_add_2_8.INIT0 = 16'h5999;
    defparam sub_1045_add_2_8.INIT1 = 16'h5999;
    defparam sub_1045_add_2_8.INJECT1_0 = "NO";
    defparam sub_1045_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_6 (.A0(Counter_X[4]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[5]), .B1(\H_BackPorch[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7464), .COUT(n7465));
    defparam sub_1045_add_2_6.INIT0 = 16'h5999;
    defparam sub_1045_add_2_6.INIT1 = 16'h5999;
    defparam sub_1045_add_2_6.INJECT1_0 = "NO";
    defparam sub_1045_add_2_6.INJECT1_1 = "NO";
    LUT4 i4074_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[8]), .D(button_signal_DEBUG_VGA), .Z(n1205[8])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4074_2_lut_3_lut_4_lut.init = 16'h70f0;
    FD1S3IX VGA_Notification_Valid_reg_119 (.D(VGA_Notification_nxt_3__N_894), 
            .CK(clk_c), .CD(button_signal_DEBUG_VGA), .Q(VGA_Notification_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_Valid_reg_119.GSR = "ENABLED";
    LUT4 i4075_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[9]), .D(button_signal_DEBUG_VGA), .Z(n1205[9])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4075_2_lut_3_lut_4_lut.init = 16'h70f0;
    CCU2D sub_1045_add_2_4 (.A0(Counter_X[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7463), .COUT(n7464));
    defparam sub_1045_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1045_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1045_add_2_4.INJECT1_0 = "NO";
    defparam sub_1045_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1045_add_2_2 (.A0(Counter_X[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7463));
    defparam sub_1045_add_2_2.INIT0 = 16'h5000;
    defparam sub_1045_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1045_add_2_2.INJECT1_0 = "NO";
    defparam sub_1045_add_2_2.INJECT1_1 = "NO";
    LUT4 mux_755_i7_3_lut (.A(Right_UP_reg[6]), .B(Left_DOWN_reg[6]), .C(n1344), 
         .Z(n1192[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_165_4_lut (.A(\c_addr[1] ), .B(c_valid), .C(n8878), 
         .D(\c_addr[0] ), .Z(n8824)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_165_4_lut.init = 16'h0002;
    LUT4 mux_755_i9_3_lut (.A(Right_UP_reg[8]), .B(Left_DOWN_reg[8]), .C(n1344), 
         .Z(n1192[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i9_3_lut.init = 16'hcaca;
    PFUMX i30 (.BLUT(n1192[7]), .ALUT(n15), .C0(n8317), .Z(n7769));
    LUT4 n8699_bdd_3_lut_3_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_159), .C(n8699), .D(n523), .Z(n8700)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;
    defparam n8699_bdd_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    LUT4 i7180_2_lut_3_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_159), .C(n1358), .D(n1352), .Z(n8317)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i7180_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hfff8;
    CCU2D sub_1047_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7456), .S0(n521));
    defparam sub_1047_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1047_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1047_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1047_add_2_cout.INJECT1_1 = "NO";
    LUT4 i32_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_159), 
         .C(Right_DOWN_reg[7]), .D(n521), .Z(n12)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i32_4_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 i23_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_159), 
         .C(Right_DOWN_reg[11]), .D(n521), .Z(n9)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;
    defparam i23_4_lut_4_lut_4_lut.init = 16'h70f8;
    CCU2D sub_1047_add_2_10 (.A0(Counter_Y[8]), .B0(\H_BackPorch[4] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7455), .COUT(n7456));
    defparam sub_1047_add_2_10.INIT0 = 16'h5999;
    defparam sub_1047_add_2_10.INIT1 = 16'h5555;
    defparam sub_1047_add_2_10.INJECT1_0 = "NO";
    defparam sub_1047_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1047_add_2_8 (.A0(Counter_Y[6]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[7]), .B1(\H_BackPorch[5] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n7454), .COUT(n7455));
    defparam sub_1047_add_2_8.INIT0 = 16'h5999;
    defparam sub_1047_add_2_8.INIT1 = 16'h5999;
    defparam sub_1047_add_2_8.INJECT1_0 = "NO";
    defparam sub_1047_add_2_8.INJECT1_1 = "NO";
    LUT4 n8704_bdd_3_lut_3_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_159), .C(n8704), .D(n523), .Z(n8705)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;
    defparam n8704_bdd_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    PFUMX mux_751_i12 (.BLUT(n1192[11]), .ALUT(n7791), .C0(n8317), .Z(n1176[11]));
    FD1P3AY V_BackPorch_reg_i0_i1 (.D(n8879), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(\V_BackPorch[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam V_BackPorch_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i7 (.D(\c_data[1] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(\H_BackPorch[7] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i6 (.D(n8889), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(\H_BackPorch[6] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i5 (.D(\H_BackPorch_nxt_7__N_775[5] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(\H_BackPorch[5] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i4 (.D(n8890), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(\H_BackPorch[4] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i3 (.D(\HalfY_nxt_9__N_825[2] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(\H_BackPorch[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Previous_Qudran_Config_reg_i0_i1 (.D(VGA_Notification_nxt_3__N_890[1]), 
            .SP(clk_c_enable_103), .CK(clk_c), .Q(Previous_Qudran_Config_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Previous_Qudran_Config_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i1 (.D(Current_Qudran_Config_nxt_1__N_758[1]), 
            .SP(clk_c_enable_103), .CK(clk_c), .Q(VGA_Notification_nxt_3__N_890[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_114), 
            .CK(clk_c), .Q(Right_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_125), 
            .CK(clk_c), .Q(Right_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_136), 
            .CK(clk_c), .Q(Left_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_147), 
            .CK(clk_c), .Q(Left_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_147), 
            .CK(clk_c), .Q(Left_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_147), .CK(clk_c), 
            .Q(Left_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i11 (.D(n1176[11]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i11.GSR = "ENABLED";
    CCU2D sub_1047_add_2_6 (.A0(Counter_Y[4]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7453), .COUT(n7454));
    defparam sub_1047_add_2_6.INIT0 = 16'h5999;
    defparam sub_1047_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_1047_add_2_6.INJECT1_0 = "NO";
    defparam sub_1047_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1047_add_2_4 (.A0(Counter_Y[2]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7452), .COUT(n7453));
    defparam sub_1047_add_2_4.INIT0 = 16'h5999;
    defparam sub_1047_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1047_add_2_4.INJECT1_0 = "NO";
    defparam sub_1047_add_2_4.INJECT1_1 = "NO";
    FD1P3AX Data_VGA_reg_i0_i10 (.D(n1176[10]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i9 (.D(n1176[9]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i8 (.D(n1176[8]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i7 (.D(n7769), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i6 (.D(n1176[6]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i5 (.D(n1176[5]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i4 (.D(n7771), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i3 (.D(n8701), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i2 (.D(n1176[2]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i1 (.D(n1176[1]), .SP(clk_c_enable_159), .CK(clk_c), 
            .Q(Data_VGA[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX VGA_Notification_reg_i0_i3 (.D(n9132), .SP(clk_c_enable_161), 
            .CK(clk_c), .Q(\VGA_Notification[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i3.GSR = "ENABLED";
    CCU2D sub_1047_add_2_2 (.A0(Counter_Y[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7452));
    defparam sub_1047_add_2_2.INIT0 = 16'h5000;
    defparam sub_1047_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1047_add_2_2.INJECT1_0 = "NO";
    defparam sub_1047_add_2_2.INJECT1_1 = "NO";
    LUT4 mux_755_i10_3_lut (.A(Right_UP_reg[9]), .B(Left_DOWN_reg[9]), .C(n1344), 
         .Z(n1192[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i10_3_lut.init = 16'hcaca;
    LUT4 i7225_2_lut_3_lut_4_lut (.A(\c_addr[0] ), .B(n8884), .C(c_valid), 
         .D(\c_addr[1] ), .Z(n4925)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(205[8:36])
    defparam i7225_2_lut_3_lut_4_lut.init = 16'h0f1f;
    FD1P3AX VGA_Notification_reg_i0_i1 (.D(VGA_Notification_nxt_3__N_890[1]), 
            .SP(clk_c_enable_161), .CK(clk_c), .Q(\VGA_Notification[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam VGA_Notification_reg_i0_i1.GSR = "ENABLED";
    LUT4 i1739_4_lut (.A(n8824), .B(button_signal_HS), .C(button_signal_VS), 
         .D(\c_data[1] ), .Z(Current_Qudran_Config_nxt_1__N_758[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1739_4_lut.init = 16'hcecc;
    LUT4 mux_751_i11_4_lut (.A(n8829), .B(Left_UP_reg[10]), .C(n1358), 
         .D(n1247[10]), .Z(n1176[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i11_4_lut.init = 16'hcfca;
    LUT4 mux_755_i11_3_lut (.A(Right_UP_reg[10]), .B(Left_DOWN_reg[10]), 
         .C(n1344), .Z(n1192[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i11_3_lut.init = 16'hcaca;
    LUT4 mux_751_i10_4_lut (.A(n8829), .B(Left_UP_reg[9]), .C(n1358), 
         .D(n1247[9]), .Z(n1176[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i10_4_lut.init = 16'hcfca;
    PFUMX i34 (.BLUT(n1192[4]), .ALUT(n15_adj_1112), .C0(n8317), .Z(n7771));
    LUT4 mux_751_i9_4_lut (.A(n8829), .B(Left_UP_reg[8]), .C(n1358), .D(n1247[8]), 
         .Z(n1176[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i9_4_lut.init = 16'hcfca;
    LUT4 mux_751_i7_4_lut (.A(n8829), .B(Left_UP_reg[6]), .C(n1358), .D(n1247[6]), 
         .Z(n1176[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i7_4_lut.init = 16'hcfca;
    LUT4 mux_751_i6_4_lut (.A(n8829), .B(Left_UP_reg[5]), .C(n1358), .D(n1247[5]), 
         .Z(n1176[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i6_4_lut.init = 16'hcfca;
    LUT4 i36_3_lut (.A(n21), .B(Left_UP_reg[4]), .C(n1358), .Z(n15_adj_1112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i36_3_lut.init = 16'hcaca;
    LUT4 mux_751_i3_4_lut (.A(n1247[2]), .B(Left_UP_reg[2]), .C(n1358), 
         .D(n8829), .Z(n1176[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i3_4_lut.init = 16'hc0ca;
    LUT4 mux_751_i2_4_lut (.A(n1247[1]), .B(Left_UP_reg[1]), .C(n1358), 
         .D(n8829), .Z(n1176[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_751_i2_4_lut.init = 16'hc0ca;
    LUT4 mux_755_i5_3_lut (.A(Right_UP_reg[4]), .B(Left_DOWN_reg[4]), .C(n1344), 
         .Z(n1192[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i5_3_lut.init = 16'hcaca;
    LUT4 i22_3_lut (.A(n9), .B(Left_UP_reg[11]), .C(n1358), .Z(n7791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i22_3_lut.init = 16'hcaca;
    PFUMX i7342 (.BLUT(n8698), .ALUT(n8697), .C0(n1352), .Z(n8699));
    PFUMX mux_762_i11 (.BLUT(n1192[10]), .ALUT(n1205[10]), .C0(n1352), 
          .Z(n1247[10]));
    LUT4 c_valid_I_0_1_lut (.A(c_valid), .Z(c_valid_N_786)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(144[36:54])
    defparam c_valid_I_0_1_lut.init = 16'h5555;
    LUT4 mux_755_i12_3_lut (.A(Right_UP_reg[11]), .B(Left_DOWN_reg[11]), 
         .C(n1344), .Z(n1192[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i12_3_lut.init = 16'hcaca;
    PFUMX mux_762_i10 (.BLUT(n1192[9]), .ALUT(n1205[9]), .C0(n1352), .Z(n1247[9]));
    LUT4 i31_3_lut (.A(n12), .B(Left_UP_reg[7]), .C(n1358), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i31_3_lut.init = 16'hcaca;
    LUT4 mux_755_i8_3_lut (.A(Right_UP_reg[7]), .B(Left_DOWN_reg[7]), .C(n1344), 
         .Z(n1192[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_755_i8_3_lut.init = 16'hcaca;
    LUT4 i460_2_lut (.A(VGA_Notification_nxt_3__N_894), .B(button_signal_DEBUG_VGA), 
         .Z(clk_c_enable_161)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i460_2_lut.init = 16'h2222;
    LUT4 Previous_Qudran_Config_reg_1__I_0_i3_4_lut (.A(Previous_Qudran_Config_reg[0]), 
         .B(Previous_Qudran_Config_reg[1]), .C(Current_Qudran_Config_reg[0]), 
         .D(VGA_Notification_nxt_3__N_890[1]), .Z(VGA_Notification_nxt_3__N_894)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(214[7:62])
    defparam Previous_Qudran_Config_reg_1__I_0_i3_4_lut.init = 16'h7bde;
    LUT4 i1_2_lut_2_lut (.A(n523), .B(n521), .Z(n18)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i3907_2_lut_rep_156 (.A(n523), .B(Current_Qudran_Config_reg[0]), 
         .Z(n8815)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3907_2_lut_rep_156.init = 16'h8888;
    LUT4 i7032_2_lut_3_lut (.A(n523), .B(Current_Qudran_Config_reg[0]), 
         .C(VGA_Notification_nxt_3__N_890[1]), .Z(n8232)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i7032_2_lut_3_lut.init = 16'hf8f8;
    LUT4 n1344_bdd_3_lut_7345 (.A(n1344), .B(Right_UP_reg[3]), .C(Left_DOWN_reg[3]), 
         .Z(n8698)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1344_bdd_3_lut_7345.init = 16'he4e4;
    PFUMX mux_762_i9 (.BLUT(n1192[8]), .ALUT(n1205[8]), .C0(n1352), .Z(n1247[8]));
    PFUMX mux_762_i7 (.BLUT(n1192[6]), .ALUT(n1205[6]), .C0(n1352), .Z(n1247[6]));
    LUT4 Horizontal_Split_I_0_2_lut_rep_210 (.A(button_signal_HS), .B(button_signal_VS), 
         .Z(n8869)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(199[7:40])
    defparam Horizontal_Split_I_0_2_lut_rep_210.init = 16'heeee;
    LUT4 i1499_4_lut (.A(n8824), .B(button_signal_VS), .C(button_signal_HS), 
         .D(\c_data[0] ), .Z(Current_Qudran_Config_nxt_1__N_758[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1499_4_lut.init = 16'hcecc;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n8827), .B(button_signal_DEBUG_VGA), .C(\c_data[13] ), 
         .D(\c_data[12] ), .Z(clk_c_enable_125)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(n8827), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_114)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h1000;
    LUT4 i7262_2_lut_3_lut_4_lut (.A(n8827), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_136)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7262_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i7279_2_lut_3_lut_4_lut (.A(n8827), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_147)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7279_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 Counter_X_Valid_I_0_2_lut_rep_218 (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .Z(clk_c_enable_159)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam Counter_X_Valid_I_0_2_lut_rep_218.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_29 (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[4]), .D(button_signal_DEBUG_VGA), .Z(n6)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_3_lut_4_lut_adj_29.init = 16'h70f0;
    LUT4 i1_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), .C(n523), 
         .Z(n5)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i4076_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[10]), .D(button_signal_DEBUG_VGA), .Z(n1205[10])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4076_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1_2_lut_rep_170_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(button_signal_DEBUG_VGA), .Z(n8829)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_rep_170_2_lut_3_lut.init = 16'h8080;
    LUT4 n1344_bdd_2_lut_7344_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[3]), .D(button_signal_DEBUG_VGA), .Z(n8697)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam n1344_bdd_2_lut_7344_3_lut_4_lut.init = 16'h70f0;
    LUT4 i4072_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[6]), .D(button_signal_DEBUG_VGA), .Z(n1205[6])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4072_2_lut_3_lut_4_lut.init = 16'h70f0;
    PFUMX mux_762_i6 (.BLUT(n1192[5]), .ALUT(n1205[5]), .C0(n1352), .Z(n1247[5]));
    LUT4 n1344_bdd_2_lut_7348_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[0]), .D(button_signal_DEBUG_VGA), .Z(n8702)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam n1344_bdd_2_lut_7348_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3047_1_lut_rep_220 (.A(\c_data[1] ), .Z(n8879)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i3047_1_lut_rep_220.init = 16'h5555;
    LUT4 mux_10_Mux_1_i7_3_lut_3_lut (.A(\c_data[1] ), .B(\c_data[2] ), 
         .C(\c_data[0] ), .Z(\baudrate_next_23__N_264[1] )) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam mux_10_Mux_1_i7_3_lut_3_lut.init = 16'hd1d1;
    LUT4 i4068_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[2]), .D(button_signal_DEBUG_VGA), .Z(n1205[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4068_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 n8700_bdd_3_lut (.A(n8700), .B(Left_UP_reg[3]), .C(n1358), .Z(n8701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8700_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(n521), .D(button_signal_DEBUG_VGA), .Z(n8159)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'h70f0;
    LUT4 i4067_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[1]), .D(button_signal_DEBUG_VGA), .Z(n1205[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4067_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i4071_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[5]), .D(button_signal_DEBUG_VGA), .Z(n1205[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i4071_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 n1344_bdd_3_lut_7349 (.A(n1344), .B(Right_UP_reg[0]), .C(Left_DOWN_reg[0]), 
         .Z(n8703)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1344_bdd_3_lut_7349.init = 16'he4e4;
    PFUMX mux_762_i3 (.BLUT(n1192[2]), .ALUT(n1205[2]), .C0(n1352), .Z(n1247[2]));
    LUT4 n8705_bdd_3_lut (.A(n8705), .B(Left_UP_reg[0]), .C(n1358), .Z(n8706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8705_bdd_3_lut.init = 16'hcaca;
    LUT4 c_addr_1__bdd_4_lut (.A(\c_addr[1] ), .B(\c_data[1]_derived_1 ), 
         .C(n8869), .D(\c_addr[0] ), .Z(n8657)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(D))) */ ;
    defparam c_addr_1__bdd_4_lut.init = 16'h77a0;
    PFUMX mux_762_i2 (.BLUT(n1192[1]), .ALUT(n1205[1]), .C0(n1352), .Z(n1247[1]));
    
endmodule
//
// Verilog Description of module UART
//

module UART (rst_n_c, \c_ready[1] , UART_valid_out, UART_valid_error, 
            n8873, flag_reg, out_next_N_452, clk_UART, data, n467, 
            n468, n8851, n469, clk_c, clk_c_enable_51, clk_c_enable_207, 
            valid_data, n8812, clk_c_enable_224, clk_c_enable_225, UART_out, 
            n4110, n4108, n4106, n4104, n4102, n4100, UART_error, 
            clk_c_enable_219, n8866, n4098, n8837, n10, n8908, clk_VGA, 
            c_valid_N_786, clk_c_enable_43, \c_data[1] , n8884, c_valid, 
            c_addr, n8831, n3750, \c_data[0] , clk_c_enable_208, clk_c_enable_209, 
            clk_c_enable_222, in_c, n7, n8826, n1947, \counter_23__N_180[14] , 
            n8813, n101, n127, clk_c_enable_190, clkout_N_205) /* synthesis syn_module_defined=1 */ ;
    input rst_n_c;
    output \c_ready[1] ;
    output UART_valid_out;
    output UART_valid_error;
    output n8873;
    output flag_reg;
    output out_next_N_452;
    input clk_UART;
    output data;
    output n467;
    output n468;
    output n8851;
    output n469;
    input clk_c;
    output clk_c_enable_51;
    input clk_c_enable_207;
    output valid_data;
    output n8812;
    input clk_c_enable_224;
    input clk_c_enable_225;
    output [7:0]UART_out;
    input n4110;
    input n4108;
    input n4106;
    input n4104;
    input n4102;
    input n4100;
    output [1:0]UART_error;
    input clk_c_enable_219;
    output n8866;
    input n4098;
    output n8837;
    input n10;
    output n8908;
    input clk_VGA;
    input c_valid_N_786;
    input clk_c_enable_43;
    input \c_data[1] ;
    output n8884;
    input c_valid;
    input [3:0]c_addr;
    output n8831;
    output n3750;
    input \c_data[0] ;
    input clk_c_enable_208;
    input clk_c_enable_209;
    input clk_c_enable_222;
    input in_c;
    output n7;
    output n8826;
    input n1947;
    input \counter_23__N_180[14] ;
    output n8813;
    input [23:0]n101;
    output [23:0]n127;
    output clk_c_enable_190;
    output clkout_N_205;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    
    wire error_1__N_337, clk_UART_enable_2, clk_UART_enable_3;
    wire [0:0]n2289;
    
    wire stopbit;
    
    LUT4 rst_n_I_0_2_lut (.A(rst_n_c), .B(\c_ready[1] ), .Z(error_1__N_337)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(48[42:57])
    defparam rst_n_I_0_2_lut.init = 16'h8888;
    LUT4 valid_out_I_0_2_lut_rep_214 (.A(UART_valid_out), .B(UART_valid_error), 
         .Z(n8873)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam valid_out_I_0_2_lut_rep_214.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(UART_valid_out), .B(UART_valid_error), .C(flag_reg), 
         .Z(clk_UART_enable_2)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_4_lut (.A(UART_valid_out), .B(UART_valid_error), .C(flag_reg), 
         .D(out_next_N_452), .Z(clk_UART_enable_3)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    UART_state UART_STATE (.UART_valid_error(UART_valid_error), .clk_UART(clk_UART), 
            .error_1__N_337(error_1__N_337), .data(data), .n467(n467), 
            .n468(n468), .n8851(n8851), .n2289({n2289}), .n469(n469), 
            .stopbit(stopbit), .clk_c(clk_c), .clk_c_enable_51(clk_c_enable_51), 
            .clk_c_enable_207(clk_c_enable_207), .valid_data(valid_data), 
            .n8812(n8812), .clk_c_enable_224(clk_c_enable_224), .clk_c_enable_225(clk_c_enable_225), 
            .UART_out({UART_out}), .n4110(n4110), .n4108(n4108), .n4106(n4106), 
            .n4104(n4104), .n4102(n4102), .n4100(n4100), .UART_valid_out(UART_valid_out), 
            .UART_error({UART_error}), .clk_c_enable_219(clk_c_enable_219), 
            .n8866(n8866), .n4098(n4098), .n8837(n8837), .n10(n10), 
            .n8908(n8908)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(48[12] 52[63])
    UART_config UART_CONFIG (.\c_ready[1] (\c_ready[1] ), .clk_VGA(clk_VGA), 
            .c_valid_N_786(c_valid_N_786), .n2289({n2289}), .clk_c(clk_c), 
            .clk_c_enable_43(clk_c_enable_43), .\c_data[1] (\c_data[1] ), 
            .n8884(n8884), .c_valid(c_valid), .c_addr({c_addr}), .n8831(n8831), 
            .n3750(n3750), .stopbit(stopbit), .\c_data[0] (\c_data[0] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(43[13] 46[63])
    UART_sampler SAMPLER (.flag_reg(flag_reg), .clk_UART(clk_UART), .clk_UART_enable_2(clk_UART_enable_2), 
            .clk_c(clk_c), .clk_c_enable_208(clk_c_enable_208), .data(data), 
            .clk_UART_enable_3(clk_UART_enable_3), .clk_c_enable_209(clk_c_enable_209), 
            .valid_data(valid_data), .out_next_N_452(out_next_N_452), .clk_c_enable_222(clk_c_enable_222), 
            .in_c(in_c), .n7(n7), .n8826(n8826), .n1947(n1947), .\counter_23__N_180[14] (\counter_23__N_180[14] ), 
            .n8813(n8813), .n101({n101}), .n127({n127}), .UART_valid_error(UART_valid_error), 
            .clk_c_enable_190(clk_c_enable_190), .n8812(n8812), .clkout_N_205(clkout_N_205), 
            .clk_c_enable_51(clk_c_enable_51)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(54[14] 55[71])
    
endmodule
//
// Verilog Description of module UART_state
//

module UART_state (UART_valid_error, clk_UART, error_1__N_337, data, 
            n467, n468, n8851, n2289, n469, stopbit, clk_c, clk_c_enable_51, 
            clk_c_enable_207, valid_data, n8812, clk_c_enable_224, clk_c_enable_225, 
            UART_out, n4110, n4108, n4106, n4104, n4102, n4100, 
            UART_valid_out, UART_error, clk_c_enable_219, n8866, n4098, 
            n8837, n10, n8908) /* synthesis syn_module_defined=1 */ ;
    output UART_valid_error;
    input clk_UART;
    input error_1__N_337;
    input data;
    output n467;
    output n468;
    output n8851;
    input [0:0]n2289;
    output n469;
    input stopbit;
    input clk_c;
    input clk_c_enable_51;
    input clk_c_enable_207;
    input valid_data;
    input n8812;
    input clk_c_enable_224;
    input clk_c_enable_225;
    output [7:0]UART_out;
    input n4110;
    input n4108;
    input n4106;
    input n4104;
    input n4102;
    input n4100;
    output UART_valid_out;
    output [1:0]UART_error;
    input clk_c_enable_219;
    output n8866;
    input n4098;
    output n8837;
    input n10;
    output n8908;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clk_UART_enable_1, n2331, n8911, n508, parity_check_reg, 
        n8907;
    wire [7:0]n463;
    
    wire n8906;
    wire [1:0]stop_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(63[33:56])
    
    wire n8910, n8909, n10_c, n8891, n7925, n5114, n451, n2508, 
        n447, n8850;
    wire [2:0]data_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(61[33:56])
    wire [1:0]wait_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(64[33:56])
    
    wire n8840, n7973, n8126, n8892, n8893, clk_UART_enable_4, parity_check_next_N_417, 
        valid_error_next_N_412;
    wire [2:0]n22;
    
    wire n2506;
    wire [1:0]n17;
    
    wire clk_c_enable_227, n7621, n495, clk_UART_enable_5, n8110, 
        n4056, n8707, n6;
    
    FD1P3DX valid_error_reg_82 (.D(n2331), .SP(clk_UART_enable_1), .CK(clk_UART), 
            .CD(error_1__N_337), .Q(UART_valid_error)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_error_reg_82.GSR = "DISABLED";
    LUT4 reduce_or_198_i1_4_lut (.A(data), .B(n8911), .C(n467), .D(n468), 
         .Z(n508)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam reduce_or_198_i1_4_lut.init = 16'hdc50;
    LUT4 i35_3_lut_4_lut_then_3_lut (.A(n8851), .B(n468), .C(parity_check_reg), 
         .Z(n8907)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[9] 131[12])
    defparam i35_3_lut_4_lut_then_3_lut.init = 16'h0808;
    LUT4 i35_3_lut_4_lut_else_3_lut (.A(n8851), .B(n468), .C(n463[0]), 
         .D(parity_check_reg), .Z(n8906)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[9] 131[12])
    defparam i35_3_lut_4_lut_else_3_lut.init = 16'hb830;
    LUT4 i166_4_lut_then_4_lut (.A(parity_check_reg), .B(stop_iteration_step_reg[1]), 
         .C(n2289[0]), .D(stop_iteration_step_reg[0]), .Z(n8910)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[9] 131[12])
    defparam i166_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i166_4_lut_else_4_lut (.A(parity_check_reg), .B(stop_iteration_step_reg[1]), 
         .C(n2289[0]), .D(stop_iteration_step_reg[0]), .Z(n8909)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[9] 131[12])
    defparam i166_4_lut_else_4_lut.init = 16'hffef;
    LUT4 i1_4_lut (.A(data), .B(n467), .C(n10_c), .D(n8891), .Z(n7925)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_4_lut.init = 16'ha0a8;
    LUT4 i1529_4_lut (.A(n468), .B(n5114), .C(n451), .D(n469), .Z(n2508)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1529_4_lut.init = 16'heca0;
    LUT4 i168_4_lut (.A(n447), .B(n8850), .C(stopbit), .D(data), .Z(n451)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(148[10] 150[13])
    defparam i168_4_lut.init = 16'hbaaa;
    LUT4 i2_3_lut (.A(data_iteration_step_reg[1]), .B(data_iteration_step_reg[2]), 
         .C(data_iteration_step_reg[0]), .Z(n5114)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 equal_22_i3_2_lut_rep_232 (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .Z(n8891)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam equal_22_i3_2_lut_rep_232.init = 16'heeee;
    LUT4 i3938_2_lut_rep_181_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(data), .Z(n8840)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i3938_2_lut_rep_181_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_4_lut_2_lut (.A(wait_iteration_step_reg[0]), .B(n467), 
         .Z(n7973)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_3_lut_4_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(n467), .Z(n8126)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_4_lut_3_lut.init = 16'h6060;
    LUT4 equal_20_i3_2_lut_rep_233 (.A(stop_iteration_step_reg[0]), .B(stop_iteration_step_reg[1]), 
         .Z(n8892)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(126[10:38])
    defparam equal_20_i3_2_lut_rep_233.init = 16'heeee;
    LUT4 i159_2_lut_rep_192_3_lut (.A(stop_iteration_step_reg[0]), .B(stop_iteration_step_reg[1]), 
         .C(n2289[0]), .Z(n8851)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(126[10:38])
    defparam i159_2_lut_rep_192_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_234 (.A(n2289[0]), .B(stop_iteration_step_reg[0]), 
         .Z(n8893)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(132[17] 141[11])
    defparam i1_2_lut_rep_234.init = 16'h2222;
    LUT4 i1_2_lut_rep_191_3_lut (.A(n2289[0]), .B(stop_iteration_step_reg[0]), 
         .C(stop_iteration_step_reg[1]), .Z(n8850)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(132[17] 141[11])
    defparam i1_2_lut_rep_191_3_lut.init = 16'hf2f2;
    FD1P3DX parity_check_reg_85 (.D(parity_check_next_N_417), .SP(clk_UART_enable_4), 
            .CK(clk_UART), .CD(error_1__N_337), .Q(parity_check_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam parity_check_reg_85.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i5 (.D(n508), .SP(clk_c_enable_51), .CK(clk_c), 
            .CD(error_1__N_337), .Q(valid_error_next_N_412));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i5.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i4 (.D(n7925), .SP(clk_c_enable_51), .CK(clk_c), 
            .CD(error_1__N_337), .Q(n467));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i4.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i3 (.D(n2508), .SP(clk_c_enable_51), .CK(clk_c), 
            .CD(error_1__N_337), .Q(n468));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i3.GSR = "DISABLED";
    FD1P3DX wait_iteration_step_reg_1301__i0 (.D(n7973), .SP(clk_c_enable_207), 
            .CK(clk_c), .CD(error_1__N_337), .Q(wait_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_1301__i0.GSR = "DISABLED";
    LUT4 i3980_2_lut (.A(data_iteration_step_reg[0]), .B(n469), .Z(n22[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i3980_2_lut.init = 16'h4444;
    FD1P3DX state_reg_FSM__i2 (.D(n2506), .SP(clk_c_enable_51), .CK(clk_c), 
            .CD(error_1__N_337), .Q(n469));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i2.GSR = "DISABLED";
    LUT4 i3983_2_lut (.A(stop_iteration_step_reg[0]), .B(n468), .Z(n17[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i3983_2_lut.init = 16'h4444;
    LUT4 i7300_3_lut_4_lut (.A(valid_data), .B(n8812), .C(n463[0]), .D(data), 
         .Z(clk_c_enable_227)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i7300_3_lut_4_lut.init = 16'h0222;
    FD1P3DX data_iteration_step_reg_1284__i0 (.D(n22[0]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(error_1__N_337), .Q(data_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1284__i0.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_1283__i0 (.D(n17[0]), .SP(clk_c_enable_225), 
            .CK(clk_c), .CD(error_1__N_337), .Q(stop_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_1283__i0.GSR = "DISABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n8891), .B(data), .C(valid_data), .D(n467), 
         .Z(n7621)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 reduce_or_185_i1_2_lut_3_lut_4_lut (.A(n8891), .B(data), .C(valid_error_next_N_412), 
         .D(n467), .Z(n495)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam reduce_or_185_i1_2_lut_3_lut_4_lut.init = 16'hf8f0;
    FD1P3DX out_reg__i7 (.D(n4110), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i7.GSR = "DISABLED";
    FD1P3DX out_reg__i6 (.D(n4108), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i6.GSR = "DISABLED";
    FD1P3DX out_reg__i5 (.D(n4106), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i5.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(n8893), .B(stop_iteration_step_reg[1]), .C(stopbit), 
         .D(n468), .Z(n10_c)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(132[17] 141[11])
    defparam i1_4_lut_4_lut.init = 16'hcd00;
    FD1P3DX out_reg__i4 (.D(n4104), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i4.GSR = "DISABLED";
    FD1P3DX out_reg__i3 (.D(n4102), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i3.GSR = "DISABLED";
    FD1P3DX wait_iteration_step_reg_1301__i1 (.D(n8126), .SP(clk_c_enable_207), 
            .CK(clk_c), .CD(error_1__N_337), .Q(wait_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_1301__i1.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_26 (.A(valid_error_next_N_412), .B(valid_data), .C(n463[0]), 
         .Z(clk_UART_enable_1)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_adj_26.init = 16'hfbfb;
    LUT4 i3039_2_lut (.A(valid_error_next_N_412), .B(valid_data), .Z(n2331)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i3039_2_lut.init = 16'h8888;
    FD1P3DX out_reg__i2 (.D(n4100), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i2.GSR = "DISABLED";
    FD1P3DX valid_out_reg_83 (.D(n7621), .SP(clk_UART_enable_5), .CK(clk_UART), 
            .CD(error_1__N_337), .Q(UART_valid_out)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_out_reg_83.GSR = "DISABLED";
    FD1P3DX error_reg__i0 (.D(n8110), .SP(clk_c_enable_219), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_error[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam error_reg__i0.GSR = "DISABLED";
    FD1P3DX out_reg__i0 (.D(n4056), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i0.GSR = "DISABLED";
    LUT4 i188_2_lut_rep_207 (.A(data), .B(n463[0]), .Z(n8866)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i188_2_lut_rep_207.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut (.A(data), .B(n463[0]), .C(valid_data), 
         .D(n469), .Z(clk_UART_enable_4)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i7182_4_lut (.A(valid_data), .B(n463[0]), .C(n8840), .D(n467), 
         .Z(clk_UART_enable_5)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i7182_4_lut.init = 16'hf5dd;
    LUT4 i1527_3_lut_4_lut (.A(data), .B(n463[0]), .C(n5114), .D(n469), 
         .Z(n2506)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1527_3_lut_4_lut.init = 16'h4f44;
    FD1P3DX out_reg__i1 (.D(n4098), .SP(clk_c_enable_224), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_out[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i1.GSR = "DISABLED";
    LUT4 i3864_2_lut_rep_178_3_lut (.A(data), .B(n463[0]), .C(n469), .Z(n8837)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i3864_2_lut_rep_178_3_lut.init = 16'hf4f4;
    LUT4 i3893_2_lut_3_lut_4_lut_4_lut_1_lut (.A(data), .Z(n4056)) /* synthesis lut_function=(A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i3893_2_lut_3_lut_4_lut_4_lut_1_lut.init = 16'haaaa;
    LUT4 i164_2_lut_3_lut_4_lut (.A(data), .B(parity_check_reg), .C(n8892), 
         .D(n2289[0]), .Z(n447)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i164_2_lut_3_lut_4_lut.init = 16'h0900;
    LUT4 i3896_2_lut_3_lut (.A(data), .B(parity_check_reg), .C(n469), 
         .Z(parity_check_next_N_417)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i3896_2_lut_3_lut.init = 16'h6060;
    LUT4 i7298_3_lut (.A(n467), .B(n10), .C(n8707), .Z(n8110)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i7298_3_lut.init = 16'h0101;
    FD1P3DX error_reg__i1 (.D(n6), .SP(clk_c_enable_219), .CK(clk_c), 
            .CD(error_1__N_337), .Q(UART_error[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam error_reg__i1.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_1284__i1 (.D(n22[1]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(error_1__N_337), .Q(data_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1284__i1.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_1284__i2 (.D(n22[2]), .SP(clk_c_enable_224), 
            .CK(clk_c), .CD(error_1__N_337), .Q(data_iteration_step_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_1284__i2.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_1283__i1 (.D(n17[1]), .SP(clk_c_enable_225), 
            .CK(clk_c), .CD(error_1__N_337), .Q(stop_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_1283__i1.GSR = "DISABLED";
    FD1P3BX state_reg_FSM__i1 (.D(n495), .SP(clk_c_enable_227), .CK(clk_c), 
            .PD(error_1__N_337), .Q(n463[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i1.GSR = "DISABLED";
    LUT4 i7238_4_lut (.A(data), .B(n467), .C(n8851), .D(n10), .Z(n6)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i7238_4_lut.init = 16'h4445;
    LUT4 i4117_3_lut (.A(data_iteration_step_reg[1]), .B(n469), .C(data_iteration_step_reg[0]), 
         .Z(n22[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i4117_3_lut.init = 16'h4848;
    LUT4 i4118_4_lut (.A(data_iteration_step_reg[2]), .B(n469), .C(data_iteration_step_reg[1]), 
         .D(data_iteration_step_reg[0]), .Z(n22[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i4118_4_lut.init = 16'h4888;
    LUT4 i4119_3_lut (.A(stop_iteration_step_reg[1]), .B(n468), .C(stop_iteration_step_reg[0]), 
         .Z(n17[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i4119_3_lut.init = 16'h4848;
    LUT4 n3_bdd_4_lut (.A(n8892), .B(data), .C(parity_check_reg), .D(n2289[0]), 
         .Z(n8707)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B !(C+!(D)))) */ ;
    defparam n3_bdd_4_lut.init = 16'hc9cc;
    PFUMX i7397 (.BLUT(n8909), .ALUT(n8910), .C0(data), .Z(n8911));
    PFUMX i7395 (.BLUT(n8906), .ALUT(n8907), .C0(data), .Z(n8908));
    
endmodule
//
// Verilog Description of module UART_config
//

module UART_config (\c_ready[1] , clk_VGA, c_valid_N_786, n2289, clk_c, 
            clk_c_enable_43, \c_data[1] , n8884, c_valid, c_addr, 
            n8831, n3750, stopbit, \c_data[0] ) /* synthesis syn_module_defined=1 */ ;
    output \c_ready[1] ;
    input clk_VGA;
    input c_valid_N_786;
    output [0:0]n2289;
    input clk_c;
    input clk_c_enable_43;
    input \c_data[1] ;
    output n8884;
    input c_valid;
    input [3:0]c_addr;
    output n8831;
    output n3750;
    output stopbit;
    input \c_data[0] ;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire c_ready_next_N_347, clk_VGA_enable_1;
    
    FD1S3JX c_ready_reg_22 (.D(c_ready_next_N_347), .CK(clk_VGA), .PD(c_valid_N_786), 
            .Q(\c_ready[1] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam c_ready_reg_22.GSR = "ENABLED";
    FD1P3AX parity_bit_reg_i0_i0 (.D(\c_data[1] ), .SP(clk_c_enable_43), 
            .CK(clk_c), .Q(n2289[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam parity_bit_reg_i0_i0.GSR = "ENABLED";
    LUT4 n6_bdd_4_lut (.A(n8884), .B(c_valid), .C(c_addr[0]), .D(c_addr[1]), 
         .Z(clk_VGA_enable_1)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n6_bdd_4_lut.init = 16'h0400;
    LUT4 c_addr_3__I_0_i6_2_lut_rep_225 (.A(c_addr[2]), .B(c_addr[3]), .Z(n8884)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(58[15:39])
    defparam c_addr_3__I_0_i6_2_lut_rep_225.init = 16'hdddd;
    LUT4 i1_2_lut_rep_172_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[1]), 
         .D(c_addr[0]), .Z(n8831)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(58[15:39])
    defparam i1_2_lut_rep_172_3_lut_4_lut.init = 16'hfffd;
    LUT4 i2_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[1]), 
         .D(c_addr[0]), .Z(n3750)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(58[15:39])
    defparam i2_3_lut_4_lut.init = 16'hfdff;
    LUT4 n6_bdd_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(c_ready_next_N_347)) /* synthesis lut_function=((B+(C (D)+!C !(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(58[15:39])
    defparam n6_bdd_3_lut_4_lut.init = 16'hfddf;
    FD1P3AX stop_bit_reg_20 (.D(\c_data[0] ), .SP(clk_VGA_enable_1), .CK(clk_VGA), 
            .Q(stopbit)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam stop_bit_reg_20.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module UART_sampler
//

module UART_sampler (flag_reg, clk_UART, clk_UART_enable_2, clk_c, clk_c_enable_208, 
            data, clk_UART_enable_3, clk_c_enable_209, valid_data, out_next_N_452, 
            clk_c_enable_222, in_c, n7, n8826, n1947, \counter_23__N_180[14] , 
            n8813, n101, n127, UART_valid_error, clk_c_enable_190, 
            n8812, clkout_N_205, clk_c_enable_51) /* synthesis syn_module_defined=1 */ ;
    output flag_reg;
    input clk_UART;
    input clk_UART_enable_2;
    input clk_c;
    input clk_c_enable_208;
    output data;
    input clk_UART_enable_3;
    input clk_c_enable_209;
    output valid_data;
    output out_next_N_452;
    input clk_c_enable_222;
    input in_c;
    output n7;
    output n8826;
    input n1947;
    input \counter_23__N_180[14] ;
    output n8813;
    input [23:0]n101;
    output [23:0]n127;
    input UART_valid_error;
    output clk_c_enable_190;
    output n8812;
    output clkout_N_205;
    output clk_c_enable_51;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire flag_next;
    wire [3:0]nr_1_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(25[30:38])
    
    wire n4066;
    wire [3:0]n21;
    wire [3:0]nr_0_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(24[30:38])
    wire [3:0]n21_adj_1109;
    
    wire out_next_N_450, n4114;
    wire [3:0]val_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(26[30:37])
    wire [3:0]n21_adj_1110;
    
    wire n8319, n8290, n8872, n8870, n8318;
    
    FD1P3AX flag_reg_46 (.D(flag_next), .SP(clk_UART_enable_2), .CK(clk_UART), 
            .Q(flag_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam flag_reg_46.GSR = "ENABLED";
    FD1P3IX nr_1_reg_1286__i3 (.D(n21[3]), .SP(clk_c_enable_208), .CD(n4066), 
            .CK(clk_c), .Q(nr_1_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1286__i3.GSR = "ENABLED";
    FD1P3IX nr_1_reg_1286__i2 (.D(n21[2]), .SP(clk_c_enable_208), .CD(n4066), 
            .CK(clk_c), .Q(nr_1_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1286__i2.GSR = "ENABLED";
    LUT4 i6273_2_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .Z(n21_adj_1109[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6273_2_lut.init = 16'h6666;
    FD1P3IX nr_1_reg_1286__i1 (.D(n21[1]), .SP(clk_c_enable_208), .CD(n4066), 
            .CK(clk_c), .Q(nr_1_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1286__i1.GSR = "ENABLED";
    FD1P3AX out_reg_44 (.D(out_next_N_450), .SP(clk_UART_enable_3), .CK(clk_UART), 
            .Q(data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam out_reg_44.GSR = "ENABLED";
    FD1P3IX nr_0_reg_1287__i3 (.D(n21_adj_1109[3]), .SP(clk_c_enable_209), 
            .CD(n4114), .CK(clk_c), .Q(nr_0_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1287__i3.GSR = "ENABLED";
    FD1S3IX valid_reg_45 (.D(out_next_N_452), .CK(clk_UART), .CD(clk_UART_enable_2), 
            .Q(valid_data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam valid_reg_45.GSR = "ENABLED";
    FD1P3IX nr_0_reg_1287__i2 (.D(n21_adj_1109[2]), .SP(clk_c_enable_209), 
            .CD(n4114), .CK(clk_c), .Q(nr_0_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1287__i2.GSR = "ENABLED";
    LUT4 i6242_1_lut (.A(val_reg[0]), .Z(n21_adj_1110[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i6242_1_lut.init = 16'h5555;
    LUT4 i7117_1_lut_3_lut_3_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .Z(n8319)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i7117_1_lut_3_lut_3_lut.init = 16'h2b2b;
    FD1P3IX nr_0_reg_1287__i1 (.D(n21_adj_1109[1]), .SP(clk_c_enable_209), 
            .CD(n4114), .CK(clk_c), .Q(nr_0_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1287__i1.GSR = "ENABLED";
    LUT4 i7295_3_lut_4_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .D(nr_1_reg[2]), .Z(n8290)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i7295_3_lut_4_lut.init = 16'h6ff6;
    FD1P3AX val_reg_1288__i0 (.D(n21_adj_1110[0]), .SP(clk_c_enable_222), 
            .CK(clk_c), .Q(val_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1288__i0.GSR = "ENABLED";
    LUT4 i7282_2_lut_rep_167_3_lut (.A(in_c), .B(n7), .C(out_next_N_452), 
         .Z(n8826)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(72[8] 75[11])
    defparam i7282_2_lut_rep_167_3_lut.init = 16'hf1f1;
    LUT4 i3124_3_lut_4_lut_2_lut_2_lut (.A(clk_c_enable_222), .B(out_next_N_452), 
         .Z(n4114)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(72[8] 75[11])
    defparam i3124_3_lut_4_lut_2_lut_2_lut.init = 16'h8888;
    LUT4 i6315_3_lut_4_lut (.A(nr_1_reg[1]), .B(n8872), .C(nr_1_reg[2]), 
         .D(nr_1_reg[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6315_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3863_2_lut_rep_154 (.A(n1947), .B(\counter_23__N_180[14] ), .Z(n8813)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3863_2_lut_rep_154.init = 16'h2222;
    LUT4 i4033_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[9]), 
         .Z(n127[9])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4033_2_lut_3_lut.init = 16'hd0d0;
    LUT4 val_reg_1__bdd_4_lut (.A(val_reg[1]), .B(val_reg[2]), .C(val_reg[0]), 
         .D(val_reg[3]), .Z(n7)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam val_reg_1__bdd_4_lut.init = 16'hc813;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(clk_UART_enable_3), 
         .D(clk_UART), .Z(n4066)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i4032_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[8]), 
         .Z(n127[8])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4032_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4031_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[7]), 
         .Z(n127[7])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4031_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4030_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[6]), 
         .Z(n127[6])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4030_2_lut_3_lut.init = 16'hd0d0;
    FD1P3IX nr_1_reg_1286__i0 (.D(n21[0]), .SP(clk_c_enable_208), .CD(n4066), 
            .CK(clk_c), .Q(nr_1_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_1286__i0.GSR = "ENABLED";
    LUT4 i4029_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[5]), 
         .Z(n127[5])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4029_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i386_2_lut_3_lut_4_lut (.A(n1947), .B(\counter_23__N_180[14] ), 
         .C(UART_valid_error), .D(clk_UART), .Z(clk_c_enable_190)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i386_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i4028_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[4]), 
         .Z(n127[4])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4028_2_lut_3_lut.init = 16'hd0d0;
    FD1P3IX nr_0_reg_1287__i0 (.D(n8870), .SP(clk_c_enable_209), .CD(n4114), 
            .CK(clk_c), .Q(nr_0_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_1287__i0.GSR = "ENABLED";
    LUT4 i4027_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[3]), 
         .Z(n127[3])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4027_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4026_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[2]), 
         .Z(n127[2])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4026_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4025_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[1]), 
         .Z(n127[1])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4025_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i110_2_lut_rep_153_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), 
         .C(clk_UART), .Z(n8812)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i110_2_lut_rep_153_3_lut.init = 16'hfdfd;
    LUT4 i3910_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[0]), 
         .Z(n127[0])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3910_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i7185_2_lut (.A(in_c), .B(flag_reg), .Z(flag_next)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7185_2_lut.init = 16'h1111;
    LUT4 clkout_I_0_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), 
         .C(clk_UART), .Z(clkout_N_205)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam clkout_I_0_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i7294_2_lut_rep_150_3_lut_4_lut (.A(n1947), .B(\counter_23__N_180[14] ), 
         .C(valid_data), .D(clk_UART), .Z(clk_c_enable_51)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i7294_2_lut_rep_150_3_lut_4_lut.init = 16'h0020;
    LUT4 i4034_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[10]), 
         .Z(n127[10])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4034_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4035_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[11]), 
         .Z(n127[11])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4035_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4036_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[12]), 
         .Z(n127[12])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4036_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3_4_lut (.A(val_reg[2]), .B(val_reg[3]), .C(val_reg[0]), .D(val_reg[1]), 
         .Z(out_next_N_452)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(72[8] 75[11])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i6258_3_lut_4_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .D(val_reg[3]), .Z(n21_adj_1110[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i6258_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6251_2_lut_3_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .Z(n21_adj_1110[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6251_2_lut_3_lut.init = 16'h7878;
    LUT4 i4037_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[13]), 
         .Z(n127[13])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4037_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6293_2_lut (.A(in_c), .B(nr_1_reg[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6293_2_lut.init = 16'h6666;
    LUT4 i6271_1_lut_rep_211 (.A(nr_0_reg[0]), .Z(n8870)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6271_1_lut_rep_211.init = 16'h5555;
    LUT4 i7116_1_lut_4_lut_4_lut (.A(nr_0_reg[0]), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .D(nr_0_reg[1]), .Z(n8318)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i7116_1_lut_4_lut_4_lut.init = 16'h40f4;
    LUT4 i4038_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[14]), 
         .Z(n127[14])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4038_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6287_3_lut_4_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .D(nr_0_reg[3]), .Z(n21_adj_1109[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6287_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6280_2_lut_3_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .Z(n21_adj_1109[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i6280_2_lut_3_lut.init = 16'h7878;
    LUT4 i6295_2_lut_rep_213 (.A(in_c), .B(nr_1_reg[0]), .Z(n8872)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6295_2_lut_rep_213.init = 16'h8888;
    LUT4 i6308_2_lut_3_lut_4_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[2]), 
         .D(nr_1_reg[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6308_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i6301_2_lut_3_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i6301_2_lut_3_lut.init = 16'h7878;
    FD1P3AX val_reg_1288__i1 (.D(n21_adj_1110[1]), .SP(clk_c_enable_222), 
            .CK(clk_c), .Q(val_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1288__i1.GSR = "ENABLED";
    FD1P3AX val_reg_1288__i2 (.D(n21_adj_1110[2]), .SP(clk_c_enable_222), 
            .CK(clk_c), .Q(val_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1288__i2.GSR = "ENABLED";
    FD1P3AX val_reg_1288__i3 (.D(n21_adj_1110[3]), .SP(clk_c_enable_222), 
            .CK(clk_c), .Q(val_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_1288__i3.GSR = "ENABLED";
    LUT4 i4039_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[15]), 
         .Z(n127[15])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4039_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4040_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[16]), 
         .Z(n127[16])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4040_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4043_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[19]), 
         .Z(n127[19])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4043_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4042_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[18]), 
         .Z(n127[18])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4042_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4041_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[17]), 
         .Z(n127[17])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4041_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4044_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[20]), 
         .Z(n127[20])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4044_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4045_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[21]), 
         .Z(n127[21])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4045_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4046_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[22]), 
         .Z(n127[22])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4046_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6244_2_lut (.A(val_reg[1]), .B(val_reg[0]), .Z(n21_adj_1110[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i6244_2_lut.init = 16'h6666;
    PFUMX nr_1_reg_3__I_0_i8 (.BLUT(n8318), .ALUT(n8319), .C0(n8290), 
          .Z(out_next_N_450)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;
    LUT4 i4047_2_lut_3_lut (.A(n1947), .B(\counter_23__N_180[14] ), .C(n101[23]), 
         .Z(n127[23])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i4047_2_lut_3_lut.init = 16'hd0d0;
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=8)_U7 
//

module \Sync_Reg(SIZE=8)_U7  (UART_out_CM_data, clk_c, clk_UART, UART_out, 
            UART_out_CM_data_empty, clk_LM, n9131, \counter_23__N_180[14] , 
            n1947, counter_31__N_87, UART_valid_out, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    output [7:0]UART_out_CM_data;
    input clk_c;
    input clk_UART;
    input [7:0]UART_out;
    output UART_out_CM_data_empty;
    input clk_LM;
    input n9131;
    input \counter_23__N_180[14] ;
    input n1947;
    input counter_31__N_87;
    input UART_valid_out;
    input button_signal_DEBUG_UART;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    
    wire clk_c_enable_198;
    wire [7:0]w_data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire w_empty_reg, n8883, clk_c_enable_171, clk_LM_enable_4;
    
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n8883), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i0 (.D(UART_out[0]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9131), .SP(clk_LM_enable_4), .CK(clk_LM), 
            .Q(UART_out_CM_data_empty)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 i492_2_lut_3_lut_4_lut_4_lut (.A(n8883), .B(clk_UART), .C(\counter_23__N_180[14] ), 
         .D(n1947), .Z(clk_c_enable_171)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i492_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    FD1P3AX w_data_reg_i0_i7 (.D(UART_out[7]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i7.GSR = "ENABLED";
    LUT4 i7222_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n8883), .C(counter_31__N_87), 
         .D(clk_LM), .Z(clk_c_enable_198)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7222_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1P3AX w_data_reg_i0_i6 (.D(UART_out[6]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i5 (.D(UART_out[5]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i4 (.D(UART_out[4]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(UART_out[3]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i2 (.D(UART_out[2]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_out[1]), .SP(clk_c_enable_171), .CK(clk_c), 
            .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i7 (.D(w_data_reg[7]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i6 (.D(w_data_reg[6]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i5 (.D(w_data_reg[5]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i4 (.D(w_data_reg[4]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_198), 
            .CK(clk_c), .Q(UART_out_CM_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=72, LSE_RLINE=75 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i7148_2_lut_rep_224 (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .Z(n8883)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7148_2_lut_rep_224.init = 16'hdddd;
    LUT4 i7204_2_lut_rep_188_3_lut (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .C(w_empty_reg), .Z(clk_LM_enable_4)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7204_2_lut_rep_188_3_lut.init = 16'h0d0d;
    
endmodule
//
// Verilog Description of module Sync_Reg
//

module Sync_Reg (clk_c, \VGA_error_data_3__N_6[0] , VGA_error_data, clk_VGA, 
            VGA_error_empty, clk_LM, n9131, counter_31__N_87, counter_31__N_87_adj_3, 
            \VGA_error_data_3__N_6[3] , \VGA_error_data_3__N_6[1] , n8118, 
            \VGA_error_data_3__N_13[2] , VGA_Notification_Valid, button_signal_DEBUG_UART, 
            Error_Valid, Config_Notification_Valid) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input \VGA_error_data_3__N_6[0] ;
    output [3:0]VGA_error_data;
    input clk_VGA;
    output VGA_error_empty;
    input clk_LM;
    input n9131;
    input counter_31__N_87;
    input counter_31__N_87_adj_3;
    input \VGA_error_data_3__N_6[3] ;
    input \VGA_error_data_3__N_6[1] ;
    input n8118;
    input \VGA_error_data_3__N_13[2] ;
    input VGA_Notification_Valid;
    input button_signal_DEBUG_UART;
    input Error_Valid;
    input Config_Notification_Valid;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    wire [3:0]w_data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_c_enable_218, clk_c_enable_174, w_empty_reg, n8888, clk_LM_enable_3;
    
    FD1P3AX w_data_reg_i0_i0 (.D(\VGA_error_data_3__N_6[0] ), .SP(clk_c_enable_218), 
            .CK(clk_c), .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_174), 
            .CK(clk_c), .Q(VGA_error_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n8888), .CK(clk_VGA), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9131), .SP(clk_LM_enable_3), .CK(clk_LM), 
            .Q(VGA_error_empty)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 i381_2_lut_3_lut_3_lut (.A(n8888), .B(counter_31__N_87), .C(clk_VGA), 
         .Z(clk_c_enable_218)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i381_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i7176_2_lut_rep_186 (.A(w_empty_reg), .B(n8888), .Z(clk_LM_enable_3)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7176_2_lut_rep_186.init = 16'h4444;
    LUT4 i7270_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n8888), .C(counter_31__N_87_adj_3), 
         .D(clk_LM), .Z(clk_c_enable_174)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7270_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_174), 
            .CK(clk_c), .Q(VGA_error_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_174), 
            .CK(clk_c), .Q(VGA_error_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_174), 
            .CK(clk_c), .Q(VGA_error_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(\VGA_error_data_3__N_6[3] ), .SP(clk_c_enable_218), 
            .CK(clk_c), .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(\VGA_error_data_3__N_6[1] ), .SP(clk_c_enable_218), 
            .CK(clk_c), .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3IX w_data_reg_i0_i2 (.D(\VGA_error_data_3__N_13[2] ), .SP(clk_c_enable_218), 
            .CD(n8118), .CK(clk_c), .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=54, LSE_LLINE=127, LSE_RLINE=130 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    LUT4 i7160_4_lut_rep_229 (.A(VGA_Notification_Valid), .B(button_signal_DEBUG_UART), 
         .C(Error_Valid), .D(Config_Notification_Valid), .Z(n8888)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7160_4_lut_rep_229.init = 16'hcccd;
    
endmodule
//
// Verilog Description of module LM
//

module LM (button_signal_DEBUG_UART, LEDS_c_0, LEDS_c_1, LEDS_c_2, LEDS_c_3, 
           LEDS_c_4, LEDS_c_5, LEDS_c_6, rst_n_c, LEDS_c_7, clk_c, 
           clk_c_enable_92, n2287, UART_out_data, n2281, UART_error_data, 
           n2285, VGA_error_data) /* synthesis syn_module_defined=1 */ ;
    input button_signal_DEBUG_UART;
    output LEDS_c_0;
    output LEDS_c_1;
    output LEDS_c_2;
    output LEDS_c_3;
    output LEDS_c_4;
    output LEDS_c_5;
    output LEDS_c_6;
    input rst_n_c;
    output LEDS_c_7;
    input clk_c;
    input clk_c_enable_92;
    input n2287;
    input [7:0]UART_out_data;
    input n2281;
    input [1:0]UART_error_data;
    input n2285;
    input [3:0]VGA_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [3:0]leds_CM_error;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(34[28:41])
    wire [7:0]leds_UART_info;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(32[28:42])
    wire [1:0]leds_UART_error;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(33[28:43])
    
    LUT4 leds_UART_info_7__I_0_i1_3_lut (.A(leds_CM_error[0]), .B(leds_UART_info[0]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i2_3_lut (.A(leds_CM_error[1]), .B(leds_UART_info[1]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i3_3_lut (.A(leds_CM_error[2]), .B(leds_UART_info[2]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i4_3_lut (.A(leds_CM_error[3]), .B(leds_UART_info[3]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i5_3_lut (.A(leds_UART_error[0]), .B(leds_UART_info[4]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 leds_UART_info_7__I_0_i6_3_lut (.A(leds_UART_error[1]), .B(leds_UART_info[5]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1464_2_lut (.A(leds_UART_info[6]), .B(button_signal_DEBUG_UART), 
         .Z(LEDS_c_6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1464_2_lut.init = 16'h8888;
    LUT4 leds_UART_info_7__I_0_i8_3_lut (.A(rst_n_c), .B(leds_UART_info[7]), 
         .C(button_signal_DEBUG_UART), .Z(LEDS_c_7)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(48[15:126])
    defparam leds_UART_info_7__I_0_i8_3_lut.init = 16'hc5c5;
    \LM_decoder(WIDTH=8)  UART_info (.leds_UART_info({leds_UART_info}), .clk_c(clk_c), 
            .clk_c_enable_92(clk_c_enable_92), .n2287(n2287), .UART_out_data({UART_out_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(36[39] 38[25])
    \LM_decoder(WIDTH=2)  UART_error (.leds_UART_error({leds_UART_error}), 
            .clk_c(clk_c), .clk_c_enable_92(clk_c_enable_92), .n2281(n2281), 
            .UART_error_data({UART_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(40[40] 42[26])
    \LM_decoder(WIDTH=4)  CM_error (.leds_CM_error({leds_CM_error}), .clk_c(clk_c), 
            .clk_c_enable_92(clk_c_enable_92), .n2285(n2285), .VGA_error_data({VGA_error_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm.v(44[39] 46[24])
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=8) 
//

module \LM_decoder(WIDTH=8)  (leds_UART_info, clk_c, clk_c_enable_92, 
            n2287, UART_out_data) /* synthesis syn_module_defined=1 */ ;
    output [7:0]leds_UART_info;
    input clk_c;
    input clk_c_enable_92;
    input n2287;
    input [7:0]UART_out_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(UART_out_data[0]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i7 (.D(UART_out_data[7]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i7.GSR = "ENABLED";
    FD1P3IX leds_reg__i6 (.D(UART_out_data[6]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i6.GSR = "ENABLED";
    FD1P3IX leds_reg__i5 (.D(UART_out_data[5]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i5.GSR = "ENABLED";
    FD1P3IX leds_reg__i4 (.D(UART_out_data[4]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i4.GSR = "ENABLED";
    FD1P3IX leds_reg__i3 (.D(UART_out_data[3]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i3.GSR = "ENABLED";
    FD1P3IX leds_reg__i2 (.D(UART_out_data[2]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i2.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(UART_out_data[1]), .SP(clk_c_enable_92), .CD(n2287), 
            .CK(clk_c), .Q(leds_UART_info[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=25, LSE_LLINE=36, LSE_RLINE=38 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=2) 
//

module \LM_decoder(WIDTH=2)  (leds_UART_error, clk_c, clk_c_enable_92, 
            n2281, UART_error_data) /* synthesis syn_module_defined=1 */ ;
    output [1:0]leds_UART_error;
    input clk_c;
    input clk_c_enable_92;
    input n2281;
    input [1:0]UART_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(UART_error_data[0]), .SP(clk_c_enable_92), 
            .CD(n2281), .CK(clk_c), .Q(leds_UART_error[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=40, LSE_RCOL=26, LSE_LLINE=40, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(UART_error_data[1]), .SP(clk_c_enable_92), 
            .CD(n2281), .CK(clk_c), .Q(leds_UART_error[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=40, LSE_RCOL=26, LSE_LLINE=40, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \LM_decoder(WIDTH=4) 
//

module \LM_decoder(WIDTH=4)  (leds_CM_error, clk_c, clk_c_enable_92, n2285, 
            VGA_error_data) /* synthesis syn_module_defined=1 */ ;
    output [3:0]leds_CM_error;
    input clk_c;
    input clk_c_enable_92;
    input n2285;
    input [3:0]VGA_error_data;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    FD1P3IX leds_reg__i0 (.D(VGA_error_data[0]), .SP(clk_c_enable_92), .CD(n2285), 
            .CK(clk_c), .Q(leds_CM_error[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i0.GSR = "ENABLED";
    FD1P3IX leds_reg__i3 (.D(VGA_error_data[3]), .SP(clk_c_enable_92), .CD(n2285), 
            .CK(clk_c), .Q(leds_CM_error[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i3.GSR = "ENABLED";
    FD1P3IX leds_reg__i2 (.D(VGA_error_data[2]), .SP(clk_c_enable_92), .CD(n2285), 
            .CK(clk_c), .Q(leds_CM_error[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i2.GSR = "ENABLED";
    FD1P3IX leds_reg__i1 (.D(VGA_error_data[1]), .SP(clk_c_enable_92), .CD(n2285), 
            .CK(clk_c), .Q(leds_CM_error[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=39, LSE_RCOL=24, LSE_LLINE=44, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/lm_decoder.v(29[11] 31[5])
    defparam leds_reg__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module VGA
//

module VGA (clk_c, \c_data[0] , \c_data[1] , n8865, V_sync_pulse, 
            H_sync_pulse, V_left_margin, H_left_margin, Load_config, 
            \c_data[1]_derived_1 , V_Count_Max_nxt_11__N_1041, H_Count_Max_nxt_11__N_1023, 
            \H_count_max[8] , \V_count_max[3] , c_valid, \c_addr[3] , 
            \c_addr[2] , \c_data[2] , \baudrate_next_23__N_264[2] , \baudrate_next_23__N_264[8] , 
            n8889, Data_VGA, RED_c_3, Count_h, GND_net, BLUE_c_1, 
            Count_v, BLUE_c_0, BLUE_c_2, BLUE_c_3, GREEN_c_0, GREEN_c_1, 
            GREEN_c_2, GREEN_c_3, RED_c_0, RED_c_1, RED_c_2, n1958, 
            Active_nxt_N_1069, n8090, VSYNC_c, HSYNC_c, n4061, rst_n_c, 
            n1378, n8087, n4063, n1375) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input \c_data[0] ;
    input \c_data[1] ;
    output n8865;
    output [7:0]V_sync_pulse;
    output [7:0]H_sync_pulse;
    output [5:0]V_left_margin;
    output [8:0]H_left_margin;
    output Load_config;
    output \c_data[1]_derived_1 ;
    input V_Count_Max_nxt_11__N_1041;
    input H_Count_Max_nxt_11__N_1023;
    output \H_count_max[8] ;
    output \V_count_max[3] ;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    input \c_data[2] ;
    output \baudrate_next_23__N_264[2] ;
    output \baudrate_next_23__N_264[8] ;
    output n8889;
    input [11:0]Data_VGA;
    output RED_c_3;
    output [11:0]Count_h;
    input GND_net;
    output BLUE_c_1;
    output [11:0]Count_v;
    output BLUE_c_0;
    output BLUE_c_2;
    output BLUE_c_3;
    output GREEN_c_0;
    output GREEN_c_1;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    output RED_c_1;
    output RED_c_2;
    input n1958;
    input Active_nxt_N_1069;
    input n8090;
    output VSYNC_c;
    output HSYNC_c;
    output n4061;
    input rst_n_c;
    input n1378;
    input n8087;
    output n4063;
    input n1375;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(36[27:38])
    wire [9:0]V_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(34[30:44])
    wire [10:0]H_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(32[30:44])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(38[27:38])
    
    wire Count_h_11__N_951;
    
    VGA_Config config1 (.H_count_max({H_count_max[11:9], \H_count_max[8] , 
            H_count_max[7:0]}), .clk_c(clk_c), .\c_data[0] (\c_data[0] ), 
            .\c_data[1] (\c_data[1] ), .n8865(n8865), .V_right_margin({V_right_margin}), 
            .V_sync_pulse({V_sync_pulse}), .H_sync_pulse({H_sync_pulse}), 
            .H_right_margin({H_right_margin}), .V_left_margin({V_left_margin}), 
            .V_count_max({V_count_max[11:4], \V_count_max[3] , V_count_max[2:0]}), 
            .H_left_margin({H_left_margin}), .Load_config(Load_config), 
            .\c_data[1]_derived_1 (\c_data[1]_derived_1 ), .V_Count_Max_nxt_11__N_1041(V_Count_Max_nxt_11__N_1041), 
            .H_Count_Max_nxt_11__N_1023(H_Count_Max_nxt_11__N_1023), .c_valid(c_valid), 
            .\c_addr[3] (\c_addr[3] ), .\c_addr[2] (\c_addr[2] ), .\c_data[2] (\c_data[2] ), 
            .\baudrate_next_23__N_264[2] (\baudrate_next_23__N_264[2] ), .\baudrate_next_23__N_264[8] (\baudrate_next_23__N_264[8] ), 
            .n8889(n8889)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(44[13] 57[34])
    VGA_Assign_color assgncolor (.clk_c(clk_c), .Data_VGA({Data_VGA}), .RED_c_3(RED_c_3), 
            .Count_h({Count_h}), .GND_net(GND_net), .H_right_margin({H_right_margin}), 
            .BLUE_c_1(BLUE_c_1), .Count_v({Count_v}), .V_right_margin({V_right_margin}), 
            .BLUE_c_0(BLUE_c_0), .BLUE_c_2(BLUE_c_2), .BLUE_c_3(BLUE_c_3), 
            .GREEN_c_0(GREEN_c_0), .GREEN_c_1(GREEN_c_1), .GREEN_c_2(GREEN_c_2), 
            .GREEN_c_3(GREEN_c_3), .RED_c_0(RED_c_0), .RED_c_1(RED_c_1), 
            .RED_c_2(RED_c_2), .n1958(n1958), .Active_nxt_N_1069(Active_nxt_N_1069), 
            .n8090(n8090)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(74[19] 85[20])
    VGA_Counter CounterV (.VSYNC_c(VSYNC_c), .HSYNC_c(HSYNC_c), .Count_h_11__N_951(Count_h_11__N_951), 
            .Count_v({Count_v}), .GND_net(GND_net), .V_count_max({V_count_max[11:4], 
            \V_count_max[3] , V_count_max[2:0]}), .n4061(n4061), .rst_n_c(rst_n_c), 
            .Load_config(Load_config), .n1378(n1378), .n8087(n8087)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(67[14] 72[25])
    VGA_Counter_U0 CounterH (.HSYNC_c(HSYNC_c), .clk_c(clk_c), .Count_h_11__N_951(Count_h_11__N_951), 
            .Count_h({Count_h}), .GND_net(GND_net), .H_count_max({H_count_max[11:9], 
            \H_count_max[8] , H_count_max[7:0]}), .n4063(n4063), .n8090(n8090), 
            .n1375(n1375)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(60[14] 65[25])
    
endmodule
//
// Verilog Description of module VGA_Config
//

module VGA_Config (H_count_max, clk_c, \c_data[0] , \c_data[1] , n8865, 
            V_right_margin, V_sync_pulse, H_sync_pulse, H_right_margin, 
            V_left_margin, V_count_max, H_left_margin, Load_config, 
            \c_data[1]_derived_1 , V_Count_Max_nxt_11__N_1041, H_Count_Max_nxt_11__N_1023, 
            c_valid, \c_addr[3] , \c_addr[2] , \c_data[2] , \baudrate_next_23__N_264[2] , 
            \baudrate_next_23__N_264[8] , n8889) /* synthesis syn_module_defined=1 */ ;
    output [11:0]H_count_max;
    input clk_c;
    input \c_data[0] ;
    input \c_data[1] ;
    output n8865;
    output [9:0]V_right_margin;
    output [7:0]V_sync_pulse;
    output [7:0]H_sync_pulse;
    output [10:0]H_right_margin;
    output [5:0]V_left_margin;
    output [11:0]V_count_max;
    output [8:0]H_left_margin;
    output Load_config;
    output \c_data[1]_derived_1 ;
    input V_Count_Max_nxt_11__N_1041;
    input H_Count_Max_nxt_11__N_1023;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    input \c_data[2] ;
    output \baudrate_next_23__N_264[2] ;
    output \baudrate_next_23__N_264[8] ;
    output n8889;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire H_Left_Margin_nxt_8__N_970 /* synthesis is_clock=1, SET_AS_NETWORK=\vga/config1/H_Left_Margin_nxt_8__N_970 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(43[49:66])
    wire [11:0]H_Count_Max_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(49[48:63])
    
    wire V_Right_Margin_nxt_9__N_997, V_Sync_Pulse_nxt_7__N_1018, H_Sync_Pulse_nxt_7__N_1006, 
        H_Right_Margin_nxt_10__N_987, H_Right_Margin_nxt_10__N_986, V_Left_Margin_nxt_5__N_977, 
        V_Left_Margin_nxt_5__N_976;
    wire [7:0]V_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(48[49:65])
    
    wire V_Count_Max_nxt_11__N_1043, V_Count_Max_nxt_11__N_1036, H_Count_Max_nxt_11__N_1025;
    wire [11:0]V_Count_Max_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(50[49:64])
    wire [8:0]H_Left_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(43[49:66])
    wire [5:0]V_Left_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(44[49:66])
    wire [10:0]H_Right_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(45[51:69])
    wire [9:0]V_Right_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(46[51:69])
    wire [7:0]H_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(47[49:65])
    
    wire H_Count_Max_nxt_11__N_1020, V_Right_Margin_nxt_9__N_1003, V_Left_Margin_nxt_5__N_981, 
        Load_nxt, Load_nxt_N_1045, H_Left_Margin_nxt_8__N_965, V_Count_Max_nxt_11__N_1042, 
        V_Count_Max_nxt_11__N_1040, V_Count_Max_nxt_11__N_1039, V_Count_Max_nxt_11__N_1038, 
        V_Count_Max_nxt_11__N_1035, H_Count_Max_nxt_11__N_1027, H_Count_Max_nxt_11__N_1022, 
        H_Count_Max_nxt_11__N_1021, H_Left_Margin_nxt_8__N_966, H_Left_Margin_nxt_8__N_964, 
        H_Left_Margin_nxt_8__N_963, H_Left_Margin_nxt_8__N_961, H_Left_Margin_nxt_8__N_959, 
        H_Left_Margin_nxt_8__N_955, V_Right_Margin_nxt_9__N_1002, V_Right_Margin_nxt_9__N_999, 
        V_Right_Margin_nxt_9__N_998, V_Right_Margin_nxt_9__N_995, V_Right_Margin_nxt_9__N_994, 
        V_Sync_Pulse_nxt_7__N_1017, H_Sync_Pulse_nxt_7__N_1010, H_Sync_Pulse_nxt_7__N_1009, 
        H_Sync_Pulse_nxt_7__N_1008, H_Sync_Pulse_nxt_7__N_1007, H_Sync_Pulse_nxt_7__N_1005, 
        H_Sync_Pulse_nxt_7__N_1004, H_Right_Margin_nxt_10__N_990, H_Right_Margin_nxt_10__N_989, 
        H_Right_Margin_nxt_10__N_988, H_Right_Margin_nxt_10__N_985, H_Right_Margin_nxt_10__N_984, 
        H_Right_Margin_nxt_10__N_983, V_Left_Margin_nxt_5__N_979, V_Left_Margin_nxt_5__N_974;
    
    FD1S3AX H_Count_Max_reg_i3 (.D(H_Count_Max_nxt[3]), .CK(clk_c), .Q(H_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i3.GSR = "ENABLED";
    LUT4 V_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[6]), .Z(V_Right_Margin_nxt_9__N_997)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_sync_pulse[1]), .Z(V_Sync_Pulse_nxt_7__N_1018)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h2f20;
    FD1S3AX H_Count_Max_reg_i2 (.D(H_Count_Max_nxt[2]), .CK(clk_c), .Q(H_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i1 (.D(H_Count_Max_nxt[1]), .CK(clk_c), .Q(H_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i1.GSR = "ENABLED";
    LUT4 H_sync_pulse_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_sync_pulse[5]), .Z(H_Sync_Pulse_nxt_7__N_1006)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_5__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[6]), .Z(H_Right_Margin_nxt_10__N_987)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[7]), .Z(H_Right_Margin_nxt_10__N_986)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_7__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_left_margin[3]), .Z(V_Left_Margin_nxt_5__N_977)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_3__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_left_margin[4]), .Z(V_Left_Margin_nxt_5__N_976)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    FD1S3AX V_Sync_Pulse_reg_i7 (.D(V_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(V_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i6 (.D(V_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(V_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i5 (.D(V_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(V_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i4 (.D(V_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(V_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i3 (.D(V_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(V_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i3.GSR = "ENABLED";
    LUT4 V_count_max_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[1]), .Z(V_Count_Max_nxt_11__N_1043)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_1__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[8]), .Z(V_Count_Max_nxt_11__N_1036)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_count_max[7]), .Z(H_Count_Max_nxt_11__N_1025)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_7__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S3AX V_Sync_Pulse_reg_i2 (.D(V_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(V_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i1 (.D(V_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(V_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i1.GSR = "ENABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i1 (.D(V_count_max[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    FD1S3AX H_Left_Margin_reg_i0 (.D(H_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i0 (.D(V_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i0 (.D(H_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Right_Margin_reg_i0 (.D(V_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i0 (.D(H_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(H_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i0 (.D(V_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(V_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i0 (.D(H_Count_Max_nxt[0]), .CK(clk_c), .Q(H_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i0 (.D(V_Count_Max_nxt[0]), .CK(clk_c), .Q(V_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i7 (.D(H_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(H_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i6 (.D(H_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(H_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i5 (.D(H_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(H_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i4 (.D(H_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(H_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i1 (.D(H_count_max[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    LUT4 H_count_max_11__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_count_max[11]), .Z(H_Count_Max_nxt_11__N_1020)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_11__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S1I H_Left_Margin_nxt_8__I_0_i1 (.D(H_left_margin[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i1 (.D(V_Right_Margin_nxt_9__N_1003), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i1.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i1 (.D(V_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Sync_Pulse_nxt_7__I_0_i1 (.D(H_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i1 (.D(H_right_margin[0]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i1 (.D(V_Left_Margin_nxt_5__N_981), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i1.GSR = "DISABLED";
    FD1S3AY Load_reg_732 (.D(Load_nxt), .CK(clk_c), .Q(Load_config)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam Load_reg_732.GSR = "ENABLED";
    FD1S1D V_Left_Margin_nxt_5__N_982_I_0 (.D(\c_data[1]_derived_1 ), .CK(\c_data[1]_derived_1 ), 
           .CD(Load_nxt_N_1045), .Q(Load_nxt)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__N_982_I_0.GSR = "DISABLED";
    LUT4 H_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_left_margin[3]), .Z(H_Left_Margin_nxt_8__N_965)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_3__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S1A V_Count_Max_nxt_11__I_0_i2 (.D(V_Count_Max_nxt_11__N_1043), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i3 (.D(V_Count_Max_nxt_11__N_1042), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i4 (.D(V_Count_Max_nxt_11__N_1041), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i5 (.D(V_Count_Max_nxt_11__N_1040), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i6 (.D(V_Count_Max_nxt_11__N_1039), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i7 (.D(V_Count_Max_nxt_11__N_1038), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i8 (.D(V_count_max[7]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i9 (.D(V_Count_Max_nxt_11__N_1036), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i10 (.D(V_Count_Max_nxt_11__N_1035), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i11 (.D(V_count_max[10]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i12 (.D(V_count_max[11]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i2 (.D(H_count_max[1]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i3 (.D(H_count_max[2]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i4 (.D(H_count_max[3]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i5 (.D(H_count_max[4]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i6 (.D(H_Count_Max_nxt_11__N_1027), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i7 (.D(H_count_max[6]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i8 (.D(H_Count_Max_nxt_11__N_1025), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i9 (.D(H_Count_Max_nxt_11__N_1023), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i10 (.D(H_Count_Max_nxt_11__N_1022), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i11 (.D(H_Count_Max_nxt_11__N_1021), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i12 (.D(H_Count_Max_nxt_11__N_1020), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Left_Margin_nxt_8__I_0_i2 (.D(H_left_margin[1]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i3 (.D(H_Left_Margin_nxt_8__N_966), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i4 (.D(H_Left_Margin_nxt_8__N_965), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i5 (.D(H_Left_Margin_nxt_8__N_964), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i6 (.D(H_Left_Margin_nxt_8__N_963), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i7 (.D(H_Left_Margin_nxt_8__N_961), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i8 (.D(H_Left_Margin_nxt_8__N_959), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i9 (.D(H_Left_Margin_nxt_8__N_955), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Left_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i2 (.D(V_Right_Margin_nxt_9__N_1002), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i3 (.D(V_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i4 (.D(V_right_margin[3]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i5 (.D(V_Right_Margin_nxt_9__N_999), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i6 (.D(V_Right_Margin_nxt_9__N_998), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i7 (.D(V_Right_Margin_nxt_9__N_997), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i8 (.D(V_right_margin[7]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i9 (.D(V_Right_Margin_nxt_9__N_995), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i10 (.D(V_Right_Margin_nxt_9__N_994), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(V_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i10.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i2 (.D(V_Sync_Pulse_nxt_7__N_1018), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i3 (.D(V_Sync_Pulse_nxt_7__N_1017), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i4 (.D(V_sync_pulse[3]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i5 (.D(V_sync_pulse[4]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i6 (.D(V_sync_pulse[5]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i7 (.D(V_sync_pulse[6]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i8 (.D(V_sync_pulse[7]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i2 (.D(H_Sync_Pulse_nxt_7__N_1010), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i3 (.D(H_Sync_Pulse_nxt_7__N_1009), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i4 (.D(H_Sync_Pulse_nxt_7__N_1008), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i5 (.D(H_Sync_Pulse_nxt_7__N_1007), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i6 (.D(H_Sync_Pulse_nxt_7__N_1006), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i7 (.D(H_Sync_Pulse_nxt_7__N_1005), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i8 (.D(H_Sync_Pulse_nxt_7__N_1004), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(H_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i2 (.D(H_right_margin[1]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i3 (.D(H_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(H_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i4 (.D(H_Right_Margin_nxt_10__N_990), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i5 (.D(H_Right_Margin_nxt_10__N_989), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i6 (.D(H_Right_Margin_nxt_10__N_988), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i7 (.D(H_Right_Margin_nxt_10__N_987), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i8 (.D(H_Right_Margin_nxt_10__N_986), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i9 (.D(H_Right_Margin_nxt_10__N_985), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i10 (.D(H_Right_Margin_nxt_10__N_984), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i11 (.D(H_Right_Margin_nxt_10__N_983), 
           .CK(H_Left_Margin_nxt_8__N_970), .Q(H_Right_Margin_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i11.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i2 (.D(V_Left_Margin_nxt_5__N_979), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Left_Margin_nxt_5__I_0_i3 (.D(V_left_margin[2]), .CK(H_Left_Margin_nxt_8__N_970), 
           .CD(n8865), .Q(V_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i4 (.D(V_Left_Margin_nxt_5__N_977), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i5 (.D(V_Left_Margin_nxt_5__N_976), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i6 (.D(V_Left_Margin_nxt_5__N_974), .CK(H_Left_Margin_nxt_8__N_970), 
           .Q(V_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i6.GSR = "DISABLED";
    FD1S3AY H_Sync_Pulse_reg_i3 (.D(H_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(H_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i3.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i2 (.D(H_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(H_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i2.GSR = "ENABLED";
    LUT4 H_left_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_left_margin[5]), .Z(H_Left_Margin_nxt_8__N_963)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_5__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S3AY H_Sync_Pulse_reg_i1 (.D(H_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(H_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i1.GSR = "ENABLED";
    LUT4 H_left_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_left_margin[8]), .Z(H_Left_Margin_nxt_8__N_955)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S3AY V_Right_Margin_reg_i9 (.D(V_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(V_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i9.GSR = "ENABLED";
    LUT4 V_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[8]), .Z(V_Right_Margin_nxt_9__N_995)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S3AX V_Right_Margin_reg_i8 (.D(V_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(V_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i8.GSR = "ENABLED";
    LUT4 V_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_sync_pulse[2]), .Z(V_Sync_Pulse_nxt_7__N_1017)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_sync_pulse_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_sync_pulse[7]), .Z(H_Sync_Pulse_nxt_7__N_1004)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_7__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_right_margin_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[10]), .Z(H_Right_Margin_nxt_10__N_983)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_10__I_0_3_lut_4_lut.init = 16'h4f40;
    FD1S3AX V_Right_Margin_reg_i7 (.D(V_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(V_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i6 (.D(V_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(V_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i5 (.D(V_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i4 (.D(V_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i3 (.D(V_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i2 (.D(V_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i2.GSR = "ENABLED";
    LUT4 H_count_max_5__I_0_3_lut (.A(H_count_max[5]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Count_Max_nxt_11__N_1027)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_5__I_0_3_lut.init = 16'h3a3a;
    FD1S3AX V_Right_Margin_reg_i1 (.D(V_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i1.GSR = "ENABLED";
    LUT4 H_count_max_9__I_0_3_lut (.A(H_count_max[9]), .B(\c_data[0] ), 
         .C(n8865), .Z(H_Count_Max_nxt_11__N_1022)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_9__I_0_3_lut.init = 16'h3a3a;
    FD1S3AX H_Right_Margin_reg_i10 (.D(H_Right_Margin_nxt[10]), .CK(clk_c), 
            .Q(H_right_margin[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i10.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i9 (.D(H_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(H_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i9.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i8 (.D(H_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i7 (.D(H_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i6 (.D(H_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i5 (.D(H_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i4 (.D(H_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i3 (.D(H_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i2 (.D(H_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i1 (.D(H_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i5 (.D(V_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i4 (.D(V_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i3 (.D(V_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i2 (.D(V_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i1 (.D(V_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i8 (.D(H_Left_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_left_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i7 (.D(H_Left_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_left_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i6 (.D(H_Left_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_left_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i5 (.D(H_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i4 (.D(H_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i3 (.D(H_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i2 (.D(H_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i1 (.D(H_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i1.GSR = "ENABLED";
    LUT4 H_left_margin_4__I_0_3_lut (.A(H_left_margin[4]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Left_Margin_nxt_8__N_964)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_left_margin_7__I_0_3_lut (.A(H_left_margin[7]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Left_Margin_nxt_8__N_959)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_7__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_3__I_0_3_lut (.A(H_sync_pulse[3]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Sync_Pulse_nxt_7__N_1008)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_3__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_4__I_0_3_lut (.A(H_sync_pulse[4]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Sync_Pulse_nxt_7__N_1007)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_6__I_0_3_lut (.A(H_sync_pulse[6]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Sync_Pulse_nxt_7__N_1005)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_6__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_right_margin_4__I_0_3_lut (.A(H_right_margin[4]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Right_Margin_nxt_10__N_989)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_right_margin_9__I_0_3_lut (.A(H_right_margin[9]), .B(\c_data[1] ), 
         .C(n8865), .Z(H_Right_Margin_nxt_10__N_984)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_9__I_0_3_lut.init = 16'h3a3a;
    LUT4 V_left_margin_5__I_0_3_lut (.A(V_left_margin[5]), .B(\c_data[0] ), 
         .C(n8865), .Z(V_Left_Margin_nxt_5__N_974)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam V_left_margin_5__I_0_3_lut.init = 16'h3a3a;
    FD1S3AX H_Count_Max_reg_i4 (.D(H_Count_Max_nxt[4]), .CK(clk_c), .Q(H_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i5 (.D(H_Count_Max_nxt[5]), .CK(clk_c), .Q(H_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i6 (.D(H_Count_Max_nxt[6]), .CK(clk_c), .Q(H_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i7 (.D(H_Count_Max_nxt[7]), .CK(clk_c), .Q(H_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i8 (.D(H_Count_Max_nxt[8]), .CK(clk_c), .Q(H_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i9 (.D(H_Count_Max_nxt[9]), .CK(clk_c), .Q(H_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i10 (.D(H_Count_Max_nxt[10]), .CK(clk_c), .Q(H_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i11 (.D(H_Count_Max_nxt[11]), .CK(clk_c), .Q(H_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i11.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i1 (.D(V_Count_Max_nxt[1]), .CK(clk_c), .Q(V_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i2 (.D(V_Count_Max_nxt[2]), .CK(clk_c), .Q(V_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i3 (.D(V_Count_Max_nxt[3]), .CK(clk_c), .Q(V_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i4 (.D(V_Count_Max_nxt[4]), .CK(clk_c), .Q(V_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i5 (.D(V_Count_Max_nxt[5]), .CK(clk_c), .Q(V_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i6 (.D(V_Count_Max_nxt[6]), .CK(clk_c), .Q(V_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i7 (.D(V_Count_Max_nxt[7]), .CK(clk_c), .Q(V_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i8 (.D(V_Count_Max_nxt[8]), .CK(clk_c), .Q(V_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i9 (.D(V_Count_Max_nxt[9]), .CK(clk_c), .Q(V_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i10 (.D(V_Count_Max_nxt[10]), .CK(clk_c), .Q(V_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i11 (.D(V_Count_Max_nxt[11]), .CK(clk_c), .Q(V_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i11.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_206 (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .Z(n8865)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_206.init = 16'h8080;
    LUT4 i7206_2_lut_2_lut_4_lut (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .D(\c_data[1]_derived_1 ), .Z(H_Left_Margin_nxt_8__N_970)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i7206_2_lut_2_lut_4_lut.init = 16'hff7f;
    LUT4 Load_nxt_I_0_2_lut_4_lut (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .D(Load_config), .Z(Load_nxt_N_1045)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam Load_nxt_I_0_2_lut_4_lut.init = 16'hff7f;
    LUT4 i7166_2_lut_rep_221 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\c_data[1]_derived_1 )) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i7166_2_lut_rep_221.init = 16'h7777;
    LUT4 V_right_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[0]), .Z(V_Right_Margin_nxt_9__N_1003)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_left_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_left_margin[0]), .Z(V_Left_Margin_nxt_5__N_981)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_left_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_count_max_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[2]), .Z(V_Count_Max_nxt_11__N_1042)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_count_max_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[9]), .Z(V_Count_Max_nxt_11__N_1035)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_right_margin_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[9]), .Z(V_Right_Margin_nxt_9__N_994)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_sync_pulse[1]), .Z(H_Sync_Pulse_nxt_7__N_1010)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_sync_pulse[2]), .Z(H_Sync_Pulse_nxt_7__N_1009)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[8]), .Z(H_Right_Margin_nxt_10__N_985)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_right_margin_8__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 mux_10_Mux_2_i7_3_lut_3_lut_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(\c_data[2] ), .Z(\baudrate_next_23__N_264[2] )) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;
    defparam mux_10_Mux_2_i7_3_lut_3_lut_3_lut.init = 16'h5858;
    LUT4 V_count_max_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[5]), .Z(V_Count_Max_nxt_11__N_1039)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[1]), .Z(V_Right_Margin_nxt_9__N_1002)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[5]), .Z(V_Right_Margin_nxt_9__N_998)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_right_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[3]), .Z(H_Right_Margin_nxt_10__N_990)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_3__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_right_margin[5]), .Z(H_Right_Margin_nxt_10__N_988)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_left_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_left_margin[1]), .Z(V_Left_Margin_nxt_5__N_979)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 i4062_2_lut_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(\c_data[2] ), 
         .Z(\baudrate_next_23__N_264[8] )) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i4062_2_lut_3_lut.init = 16'h0606;
    LUT4 i3851_2_lut_rep_230 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n8889)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i3851_2_lut_rep_230.init = 16'h2222;
    LUT4 V_count_max_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[4]), .Z(V_Count_Max_nxt_11__N_1040)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_count_max_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_count_max[6]), .Z(V_Count_Max_nxt_11__N_1038)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_count_max_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_count_max[10]), .Z(H_Count_Max_nxt_11__N_1021)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_10__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_left_margin_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_left_margin[2]), .Z(H_Left_Margin_nxt_8__N_966)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_2__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_left_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(H_left_margin[6]), .Z(H_Left_Margin_nxt_8__N_961)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_right_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n8865), .D(V_right_margin[4]), .Z(V_Right_Margin_nxt_9__N_999)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    
endmodule
//
// Verilog Description of module VGA_Assign_color
//

module VGA_Assign_color (clk_c, Data_VGA, RED_c_3, Count_h, GND_net, 
            H_right_margin, BLUE_c_1, Count_v, V_right_margin, BLUE_c_0, 
            BLUE_c_2, BLUE_c_3, GREEN_c_0, GREEN_c_1, GREEN_c_2, GREEN_c_3, 
            RED_c_0, RED_c_1, RED_c_2, n1958, Active_nxt_N_1069, n8090) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [11:0]Data_VGA;
    output RED_c_3;
    input [11:0]Count_h;
    input GND_net;
    input [10:0]H_right_margin;
    output BLUE_c_1;
    input [11:0]Count_v;
    input [9:0]V_right_margin;
    output BLUE_c_0;
    output BLUE_c_2;
    output BLUE_c_3;
    output GREEN_c_0;
    output GREEN_c_1;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    output RED_c_1;
    output RED_c_2;
    input n1958;
    input Active_nxt_N_1069;
    input n8090;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire Active_nxt_N_1070, Active_nxt_N_1068, n6, Active_reg, Active_nxt, 
        n7462, n7461, n7460, n7459, n7458, n7457, n7451, n7450, 
        n7449, n7448, n7447, n7446;
    
    LUT4 i2_2_lut (.A(Active_nxt_N_1070), .B(Active_nxt_N_1068), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i2_2_lut.init = 16'h8888;
    FD1S3AX Active_reg_17 (.D(Active_nxt), .CK(clk_c), .Q(Active_reg)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=19, LSE_RCOL=20, LSE_LLINE=74, LSE_RLINE=85 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(31[8] 33[6])
    defparam Active_reg_17.GSR = "ENABLED";
    LUT4 i4006_2_lut (.A(Data_VGA[3]), .B(Active_reg), .Z(RED_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4006_2_lut.init = 16'h8888;
    CCU2D sub_1060_add_2_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7462), .S1(Active_nxt_N_1068));
    defparam sub_1060_add_2_13.INIT0 = 16'hf555;
    defparam sub_1060_add_2_13.INIT1 = 16'h0000;
    defparam sub_1060_add_2_13.INJECT1_0 = "NO";
    defparam sub_1060_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_11 (.A0(H_right_margin[9]), .B0(Count_h[9]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[10]), .B1(Count_h[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7461), .COUT(n7462));
    defparam sub_1060_add_2_11.INIT0 = 16'h5999;
    defparam sub_1060_add_2_11.INIT1 = 16'h5999;
    defparam sub_1060_add_2_11.INJECT1_0 = "NO";
    defparam sub_1060_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_9 (.A0(H_right_margin[7]), .B0(Count_h[7]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[8]), .B1(Count_h[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7460), .COUT(n7461));
    defparam sub_1060_add_2_9.INIT0 = 16'h5999;
    defparam sub_1060_add_2_9.INIT1 = 16'h5999;
    defparam sub_1060_add_2_9.INJECT1_0 = "NO";
    defparam sub_1060_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_7 (.A0(H_right_margin[5]), .B0(Count_h[5]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[6]), .B1(Count_h[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7459), .COUT(n7460));
    defparam sub_1060_add_2_7.INIT0 = 16'h5999;
    defparam sub_1060_add_2_7.INIT1 = 16'h5999;
    defparam sub_1060_add_2_7.INJECT1_0 = "NO";
    defparam sub_1060_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_5 (.A0(H_right_margin[3]), .B0(Count_h[3]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[4]), .B1(Count_h[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7458), .COUT(n7459));
    defparam sub_1060_add_2_5.INIT0 = 16'h5999;
    defparam sub_1060_add_2_5.INIT1 = 16'h5999;
    defparam sub_1060_add_2_5.INJECT1_0 = "NO";
    defparam sub_1060_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_3 (.A0(H_right_margin[1]), .B0(Count_h[1]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[2]), .B1(Count_h[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7457), .COUT(n7458));
    defparam sub_1060_add_2_3.INIT0 = 16'h5999;
    defparam sub_1060_add_2_3.INIT1 = 16'h5999;
    defparam sub_1060_add_2_3.INJECT1_0 = "NO";
    defparam sub_1060_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1060_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[0]), .B1(Count_h[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7457));
    defparam sub_1060_add_2_1.INIT0 = 16'h0000;
    defparam sub_1060_add_2_1.INIT1 = 16'h5999;
    defparam sub_1060_add_2_1.INJECT1_0 = "NO";
    defparam sub_1060_add_2_1.INJECT1_1 = "NO";
    LUT4 i4002_2_lut (.A(Data_VGA[9]), .B(Active_reg), .Z(BLUE_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4002_2_lut.init = 16'h8888;
    CCU2D sub_1061_add_2_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7451), .S1(Active_nxt_N_1070));
    defparam sub_1061_add_2_13.INIT0 = 16'hf555;
    defparam sub_1061_add_2_13.INIT1 = 16'h0000;
    defparam sub_1061_add_2_13.INJECT1_0 = "NO";
    defparam sub_1061_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_11 (.A0(V_right_margin[9]), .B0(Count_v[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7450), .COUT(n7451));
    defparam sub_1061_add_2_11.INIT0 = 16'h5999;
    defparam sub_1061_add_2_11.INIT1 = 16'hf555;
    defparam sub_1061_add_2_11.INJECT1_0 = "NO";
    defparam sub_1061_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_9 (.A0(V_right_margin[7]), .B0(Count_v[7]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[8]), .B1(Count_v[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7449), .COUT(n7450));
    defparam sub_1061_add_2_9.INIT0 = 16'h5999;
    defparam sub_1061_add_2_9.INIT1 = 16'h5999;
    defparam sub_1061_add_2_9.INJECT1_0 = "NO";
    defparam sub_1061_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_7 (.A0(V_right_margin[5]), .B0(Count_v[5]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[6]), .B1(Count_v[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7448), .COUT(n7449));
    defparam sub_1061_add_2_7.INIT0 = 16'h5999;
    defparam sub_1061_add_2_7.INIT1 = 16'h5999;
    defparam sub_1061_add_2_7.INJECT1_0 = "NO";
    defparam sub_1061_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_5 (.A0(V_right_margin[3]), .B0(Count_v[3]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[4]), .B1(Count_v[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7447), .COUT(n7448));
    defparam sub_1061_add_2_5.INIT0 = 16'h5999;
    defparam sub_1061_add_2_5.INIT1 = 16'h5999;
    defparam sub_1061_add_2_5.INJECT1_0 = "NO";
    defparam sub_1061_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_3 (.A0(V_right_margin[1]), .B0(Count_v[1]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[2]), .B1(Count_v[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7446), .COUT(n7447));
    defparam sub_1061_add_2_3.INIT0 = 16'h5999;
    defparam sub_1061_add_2_3.INIT1 = 16'h5999;
    defparam sub_1061_add_2_3.INJECT1_0 = "NO";
    defparam sub_1061_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1061_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[0]), .B1(Count_v[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7446));
    defparam sub_1061_add_2_1.INIT0 = 16'h0000;
    defparam sub_1061_add_2_1.INIT1 = 16'h5999;
    defparam sub_1061_add_2_1.INJECT1_0 = "NO";
    defparam sub_1061_add_2_1.INJECT1_1 = "NO";
    LUT4 i3876_2_lut (.A(Data_VGA[8]), .B(Active_reg), .Z(BLUE_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i3876_2_lut.init = 16'h8888;
    LUT4 i4001_2_lut (.A(Data_VGA[10]), .B(Active_reg), .Z(BLUE_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4001_2_lut.init = 16'h8888;
    LUT4 i4000_2_lut (.A(Data_VGA[11]), .B(Active_reg), .Z(BLUE_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i4000_2_lut.init = 16'h8888;
    LUT4 i3875_2_lut (.A(Data_VGA[4]), .B(Active_reg), .Z(GREEN_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i3875_2_lut.init = 16'h8888;
    LUT4 i4005_2_lut (.A(Data_VGA[5]), .B(Active_reg), .Z(GREEN_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4005_2_lut.init = 16'h8888;
    LUT4 i4004_2_lut (.A(Data_VGA[6]), .B(Active_reg), .Z(GREEN_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4004_2_lut.init = 16'h8888;
    LUT4 i4003_2_lut (.A(Data_VGA[7]), .B(Active_reg), .Z(GREEN_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i4003_2_lut.init = 16'h8888;
    LUT4 i3874_2_lut (.A(Data_VGA[0]), .B(Active_reg), .Z(RED_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i3874_2_lut.init = 16'h8888;
    LUT4 i4008_2_lut (.A(Data_VGA[1]), .B(Active_reg), .Z(RED_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4008_2_lut.init = 16'h8888;
    LUT4 i4007_2_lut (.A(Data_VGA[2]), .B(Active_reg), .Z(RED_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i4007_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n1958), .B(n6), .C(Active_nxt_N_1069), .D(n8090), 
         .Z(Active_nxt)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i3_4_lut.init = 16'hc080;
    
endmodule
//
// Verilog Description of module VGA_Counter
//

module VGA_Counter (VSYNC_c, HSYNC_c, Count_h_11__N_951, Count_v, GND_net, 
            V_count_max, n4061, rst_n_c, Load_config, n1378, n8087) /* synthesis syn_module_defined=1 */ ;
    output VSYNC_c;
    input HSYNC_c;
    output Count_h_11__N_951;
    output [11:0]Count_v;
    input GND_net;
    input [11:0]V_count_max;
    output n4061;
    input rst_n_c;
    input Load_config;
    input n1378;
    input n8087;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    
    wire n2341;
    wire [11:0]n53;
    
    wire n1892;
    wire [11:0]n67;
    
    wire n7543, n7542, n7541, n7540, n7539, n7538, n7505, n7504, 
        n7503, n7502, n7501, n7500;
    
    FD1S3DX Sync_State_reg_13 (.D(n2341), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(VSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=67, LSE_RLINE=72 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    LUT4 i3942_2_lut (.A(n53[0]), .B(n1892), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3942_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_1298__i0 (.D(n67[0]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i0.GSR = "DISABLED";
    CCU2D Count_reg_1298_add_4_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7543), .S0(n53[11]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_1298_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_11 (.A0(Count_v[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7542), .COUT(n7543), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_1298_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_9 (.A0(Count_v[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7541), .COUT(n7542), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1298_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_7 (.A0(Count_v[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7540), .COUT(n7541), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1298_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_5 (.A0(Count_v[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7539), .COUT(n7540), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1298_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_3 (.A0(Count_v[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7538), .COUT(n7539), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1298_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1298_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1298_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7538), .S1(n53[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1298_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1298_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1298_add_4_1.INJECT1_1 = "NO";
    FD1S3DX Count_reg_1298__i1 (.D(n67[1]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i1.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i2 (.D(n67[2]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i3 (.D(n67[3]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i4 (.D(n67[4]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i5 (.D(n67[5]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i6 (.D(n67[6]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i7 (.D(n67[7]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i8 (.D(n67[8]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i9 (.D(n67[9]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i10 (.D(n67[10]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_1298__i11 (.D(n67[11]), .CK(HSYNC_c), .CD(Count_h_11__N_951), 
            .Q(Count_v[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1298__i11.GSR = "DISABLED";
    CCU2D sub_1058_add_2_13 (.A0(Count_v[11]), .B0(V_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7505), .S1(n1892));
    defparam sub_1058_add_2_13.INIT0 = 16'h5999;
    defparam sub_1058_add_2_13.INIT1 = 16'h0000;
    defparam sub_1058_add_2_13.INJECT1_0 = "NO";
    defparam sub_1058_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1058_add_2_11 (.A0(Count_v[9]), .B0(V_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(V_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7504), .COUT(n7505));
    defparam sub_1058_add_2_11.INIT0 = 16'h5999;
    defparam sub_1058_add_2_11.INIT1 = 16'h5999;
    defparam sub_1058_add_2_11.INJECT1_0 = "NO";
    defparam sub_1058_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1058_add_2_9 (.A0(Count_v[7]), .B0(V_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(V_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7503), .COUT(n7504));
    defparam sub_1058_add_2_9.INIT0 = 16'h5999;
    defparam sub_1058_add_2_9.INIT1 = 16'h5999;
    defparam sub_1058_add_2_9.INJECT1_0 = "NO";
    defparam sub_1058_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1058_add_2_7 (.A0(Count_v[5]), .B0(V_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(V_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7502), .COUT(n7503));
    defparam sub_1058_add_2_7.INIT0 = 16'h5999;
    defparam sub_1058_add_2_7.INIT1 = 16'h5999;
    defparam sub_1058_add_2_7.INJECT1_0 = "NO";
    defparam sub_1058_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1058_add_2_5 (.A0(Count_v[3]), .B0(V_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(V_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7501), .COUT(n7502));
    defparam sub_1058_add_2_5.INIT0 = 16'h5999;
    defparam sub_1058_add_2_5.INIT1 = 16'h5999;
    defparam sub_1058_add_2_5.INJECT1_0 = "NO";
    defparam sub_1058_add_2_5.INJECT1_1 = "NO";
    LUT4 i3070_1_lut (.A(VSYNC_c), .Z(n4061)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3070_1_lut.init = 16'h5555;
    CCU2D sub_1058_add_2_3 (.A0(Count_v[1]), .B0(V_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(V_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7500), .COUT(n7501));
    defparam sub_1058_add_2_3.INIT0 = 16'h5999;
    defparam sub_1058_add_2_3.INIT1 = 16'h5999;
    defparam sub_1058_add_2_3.INJECT1_0 = "NO";
    defparam sub_1058_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1058_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[0]), .B1(V_count_max[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7500));
    defparam sub_1058_add_2_1.INIT0 = 16'h0000;
    defparam sub_1058_add_2_1.INIT1 = 16'h5999;
    defparam sub_1058_add_2_1.INJECT1_0 = "NO";
    defparam sub_1058_add_2_1.INJECT1_1 = "NO";
    LUT4 i4080_2_lut (.A(n53[1]), .B(n1892), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4080_2_lut.init = 16'h2222;
    LUT4 i4081_2_lut (.A(n53[2]), .B(n1892), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4081_2_lut.init = 16'h2222;
    LUT4 i4082_2_lut (.A(n53[3]), .B(n1892), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4082_2_lut.init = 16'h2222;
    LUT4 i4083_2_lut (.A(n53[4]), .B(n1892), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4083_2_lut.init = 16'h2222;
    LUT4 i4084_2_lut (.A(n53[5]), .B(n1892), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4084_2_lut.init = 16'h2222;
    LUT4 i4085_2_lut (.A(n53[6]), .B(n1892), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4085_2_lut.init = 16'h2222;
    LUT4 i4086_2_lut (.A(n53[7]), .B(n1892), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4086_2_lut.init = 16'h2222;
    LUT4 i4087_2_lut (.A(n53[8]), .B(n1892), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4087_2_lut.init = 16'h2222;
    LUT4 i4088_2_lut (.A(n53[9]), .B(n1892), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4088_2_lut.init = 16'h2222;
    LUT4 i4090_2_lut (.A(n53[11]), .B(n1892), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4090_2_lut.init = 16'h2222;
    LUT4 i4089_2_lut (.A(n53[10]), .B(n1892), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4089_2_lut.init = 16'h2222;
    LUT4 i7198_2_lut (.A(rst_n_c), .B(Load_config), .Z(Count_h_11__N_951)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(25[6:12])
    defparam i7198_2_lut.init = 16'h1111;
    LUT4 i3871_3_lut (.A(n1378), .B(n1892), .C(n8087), .Z(n2341)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3871_3_lut.init = 16'h3232;
    
endmodule
//
// Verilog Description of module VGA_Counter_U0
//

module VGA_Counter_U0 (HSYNC_c, clk_c, Count_h_11__N_951, Count_h, GND_net, 
            H_count_max, n4063, n8090, n1375) /* synthesis syn_module_defined=1 */ ;
    output HSYNC_c;
    input clk_c;
    input Count_h_11__N_951;
    output [11:0]Count_h;
    input GND_net;
    input [11:0]H_count_max;
    output n4063;
    input n8090;
    input n1375;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(16[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n2336;
    wire [11:0]n53;
    
    wire n1877;
    wire [11:0]n67;
    
    wire n7549, n7548, n7547, n7546, n7545, n7544, n7527, n7526, 
        n7525, n7524, n7523, n7522;
    
    FD1S3DX Sync_State_reg_13 (.D(n2336), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(HSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=60, LSE_RLINE=65 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    LUT4 i3945_2_lut (.A(n53[0]), .B(n1877), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3945_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_1297__i0 (.D(n67[0]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i0.GSR = "DISABLED";
    LUT4 i4091_2_lut (.A(n53[1]), .B(n1877), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4091_2_lut.init = 16'h2222;
    CCU2D Count_reg_1297_add_4_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7549), .S0(n53[11]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_1297_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_11 (.A0(Count_h[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7548), .COUT(n7549), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_1297_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_9 (.A0(Count_h[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7547), .COUT(n7548), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_1297_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_7 (.A0(Count_h[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7546), .COUT(n7547), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_1297_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_5 (.A0(Count_h[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7545), .COUT(n7546), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_1297_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_3 (.A0(Count_h[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7544), .COUT(n7545), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_1297_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_1297_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_1297_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7544), .S1(n53[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_1297_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_1297_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_1297_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_13 (.A0(Count_h[11]), .B0(H_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7527), .S1(n1877));
    defparam sub_1056_add_2_13.INIT0 = 16'h5999;
    defparam sub_1056_add_2_13.INIT1 = 16'h0000;
    defparam sub_1056_add_2_13.INJECT1_0 = "NO";
    defparam sub_1056_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_11 (.A0(Count_h[9]), .B0(H_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(H_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7526), .COUT(n7527));
    defparam sub_1056_add_2_11.INIT0 = 16'h5999;
    defparam sub_1056_add_2_11.INIT1 = 16'h5999;
    defparam sub_1056_add_2_11.INJECT1_0 = "NO";
    defparam sub_1056_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_9 (.A0(Count_h[7]), .B0(H_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7525), .COUT(n7526));
    defparam sub_1056_add_2_9.INIT0 = 16'h5999;
    defparam sub_1056_add_2_9.INIT1 = 16'h5999;
    defparam sub_1056_add_2_9.INJECT1_0 = "NO";
    defparam sub_1056_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_7 (.A0(Count_h[5]), .B0(H_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7524), .COUT(n7525));
    defparam sub_1056_add_2_7.INIT0 = 16'h5999;
    defparam sub_1056_add_2_7.INIT1 = 16'h5999;
    defparam sub_1056_add_2_7.INJECT1_0 = "NO";
    defparam sub_1056_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_5 (.A0(Count_h[3]), .B0(H_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7523), .COUT(n7524));
    defparam sub_1056_add_2_5.INIT0 = 16'h5999;
    defparam sub_1056_add_2_5.INIT1 = 16'h5999;
    defparam sub_1056_add_2_5.INJECT1_0 = "NO";
    defparam sub_1056_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_3 (.A0(Count_h[1]), .B0(H_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n7522), .COUT(n7523));
    defparam sub_1056_add_2_3.INIT0 = 16'h5999;
    defparam sub_1056_add_2_3.INIT1 = 16'h5999;
    defparam sub_1056_add_2_3.INJECT1_0 = "NO";
    defparam sub_1056_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1056_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(H_count_max[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n7522));
    defparam sub_1056_add_2_1.INIT0 = 16'h0000;
    defparam sub_1056_add_2_1.INIT1 = 16'h5999;
    defparam sub_1056_add_2_1.INJECT1_0 = "NO";
    defparam sub_1056_add_2_1.INJECT1_1 = "NO";
    FD1S3DX Count_reg_1297__i1 (.D(n67[1]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i1.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i2 (.D(n67[2]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i3 (.D(n67[3]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i4 (.D(n67[4]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i5 (.D(n67[5]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i6 (.D(n67[6]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i7 (.D(n67[7]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i8 (.D(n67[8]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i9 (.D(n67[9]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i10 (.D(n67[10]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_1297__i11 (.D(n67[11]), .CK(clk_c), .CD(Count_h_11__N_951), 
            .Q(Count_h[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_1297__i11.GSR = "DISABLED";
    LUT4 i3072_1_lut (.A(HSYNC_c), .Z(n4063)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3072_1_lut.init = 16'h5555;
    LUT4 i4092_2_lut (.A(n53[2]), .B(n1877), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4092_2_lut.init = 16'h2222;
    LUT4 i4093_2_lut (.A(n53[3]), .B(n1877), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4093_2_lut.init = 16'h2222;
    LUT4 i4094_2_lut (.A(n53[4]), .B(n1877), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4094_2_lut.init = 16'h2222;
    LUT4 i4095_2_lut (.A(n53[5]), .B(n1877), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4095_2_lut.init = 16'h2222;
    LUT4 i4096_2_lut (.A(n53[6]), .B(n1877), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4096_2_lut.init = 16'h2222;
    LUT4 i4097_2_lut (.A(n53[7]), .B(n1877), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4097_2_lut.init = 16'h2222;
    LUT4 i4098_2_lut (.A(n53[8]), .B(n1877), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4098_2_lut.init = 16'h2222;
    LUT4 i3845_4_lut (.A(n8090), .B(n1877), .C(n1375), .D(Count_h[8]), 
         .Z(n2336)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i3845_4_lut.init = 16'h3332;
    LUT4 i4099_2_lut (.A(n53[9]), .B(n1877), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4099_2_lut.init = 16'h2222;
    LUT4 i4100_2_lut (.A(n53[10]), .B(n1877), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4100_2_lut.init = 16'h2222;
    LUT4 i4101_2_lut (.A(n53[11]), .B(n1877), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i4101_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module CD
//

module CD (c_VGA_ready, rst_n_c, c_UART_ready, GND_net, clk_VGA, clk_c, 
           counter_31__N_87, clk_UART, clkout_N_205, counter, n127, 
           \counter_23__N_180[13] , \counter_23__N_180[14] , n101, \counter_23__N_180[11] , 
           \counter_23__N_180[12] , \counter_23__N_180[9] , \counter_23__N_180[10] , 
           \counter_23__N_180[7] , \counter_23__N_180[8] , \counter_23__N_180[5] , 
           \counter_23__N_180[6] , \counter_23__N_180[3] , \counter_23__N_180[4] , 
           \counter_23__N_180[1] , \counter_23__N_180[2] , \counter_23__N_180[0] , 
           clk_LM, counter_31__N_87_adj_1, clk_DB, counter_31__N_87_adj_2, 
           clk_c_enable_230, \c_data[0] , n4925, c_valid_N_786, n8831, 
           n8804, \c_data[1] , \c_data[2] , n8875, c_addr, n8878, 
           c_valid, n8657, c_ready_nxt_N_907, n8827, \c_data[1]_derived_1 , 
           \H_BackPorch_nxt_7__N_775[5] , n8890, \baudrate_next_23__N_264[8] , 
           \baudrate_next_23__N_264[2] , \baudrate_next_23__N_264[1] , n8839, 
           n4090) /* synthesis syn_module_defined=1 */ ;
    output c_VGA_ready;
    input rst_n_c;
    output c_UART_ready;
    input GND_net;
    output clk_VGA;
    input clk_c;
    output counter_31__N_87;
    output clk_UART;
    input clkout_N_205;
    output [23:0]counter;
    input [23:0]n127;
    output \counter_23__N_180[13] ;
    output \counter_23__N_180[14] ;
    output [23:0]n101;
    output \counter_23__N_180[11] ;
    output \counter_23__N_180[12] ;
    output \counter_23__N_180[9] ;
    output \counter_23__N_180[10] ;
    output \counter_23__N_180[7] ;
    output \counter_23__N_180[8] ;
    output \counter_23__N_180[5] ;
    output \counter_23__N_180[6] ;
    output \counter_23__N_180[3] ;
    output \counter_23__N_180[4] ;
    output \counter_23__N_180[1] ;
    output \counter_23__N_180[2] ;
    output \counter_23__N_180[0] ;
    output clk_LM;
    output counter_31__N_87_adj_1;
    output clk_DB;
    output counter_31__N_87_adj_2;
    output clk_c_enable_230;
    input \c_data[0] ;
    input n4925;
    input c_valid_N_786;
    input n8831;
    input n8804;
    input \c_data[1] ;
    input \c_data[2] ;
    input n8875;
    input [3:0]c_addr;
    output n8878;
    input c_valid;
    input n8657;
    output c_ready_nxt_N_907;
    output n8827;
    input \c_data[1]_derived_1 ;
    input \H_BackPorch_nxt_7__N_775[5] ;
    input n8890;
    input \baudrate_next_23__N_264[8] ;
    input \baudrate_next_23__N_264[2] ;
    input \baudrate_next_23__N_264[1] ;
    output n8839;
    input n4090;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    
    wire clk_VGA_N_18, clk_UART_N_20;
    wire [31:0]resolution;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(39[32:42])
    wire [23:0]baudrate;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(38[32:40])
    
    LUT4 c_VGA_ready_I_0_2_lut (.A(c_VGA_ready), .B(rst_n_c), .Z(clk_VGA_N_18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(41[70:89])
    defparam c_VGA_ready_I_0_2_lut.init = 16'h8888;
    LUT4 c_UART_ready_I_0_2_lut (.A(c_UART_ready), .B(rst_n_c), .Z(clk_UART_N_20)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(42[72:92])
    defparam c_UART_ready_I_0_2_lut.init = 16'h8888;
    \CD_counter(WIDTH=32)  CNT_VGA (.GND_net(GND_net), .clk_VGA(clk_VGA), 
            .clk_c(clk_c), .clk_VGA_N_18(clk_VGA_N_18), .counter_31__N_87(counter_31__N_87), 
            .\resolution[1] (resolution[1]), .\resolution[0] (resolution[0]), 
            .\resolution[2] (resolution[2]), .\resolution[3] (resolution[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(41[43:129])
    \CD_counter(WIDTH=24)  CNT_UART (.clk_UART(clk_UART), .clk_c(clk_c), 
            .clk_UART_N_20(clk_UART_N_20), .clkout_N_205(clkout_N_205), 
            .counter({counter}), .n127({n127}), .GND_net(GND_net), .\counter_23__N_180[13] (\counter_23__N_180[13] ), 
            .\counter_23__N_180[14] (\counter_23__N_180[14] ), .n101({n101}), 
            .\baudrate[11] (baudrate[11]), .\baudrate[12] (baudrate[12]), 
            .\counter_23__N_180[11] (\counter_23__N_180[11] ), .\counter_23__N_180[12] (\counter_23__N_180[12] ), 
            .\baudrate[9] (baudrate[9]), .\baudrate[0] (baudrate[0]), .\counter_23__N_180[9] (\counter_23__N_180[9] ), 
            .\counter_23__N_180[10] (\counter_23__N_180[10] ), .\baudrate[7] (baudrate[7]), 
            .\baudrate[8] (baudrate[8]), .\counter_23__N_180[7] (\counter_23__N_180[7] ), 
            .\counter_23__N_180[8] (\counter_23__N_180[8] ), .\baudrate[5] (baudrate[5]), 
            .\baudrate[6] (baudrate[6]), .\counter_23__N_180[5] (\counter_23__N_180[5] ), 
            .\counter_23__N_180[6] (\counter_23__N_180[6] ), .\baudrate[3] (baudrate[3]), 
            .\baudrate[4] (baudrate[4]), .\counter_23__N_180[3] (\counter_23__N_180[3] ), 
            .\counter_23__N_180[4] (\counter_23__N_180[4] ), .\baudrate[1] (baudrate[1]), 
            .\baudrate[2] (baudrate[2]), .\counter_23__N_180[1] (\counter_23__N_180[1] ), 
            .\counter_23__N_180[2] (\counter_23__N_180[2] ), .\counter_23__N_180[0] (\counter_23__N_180[0] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(42[44:131])
    \CD_counter(WIDTH=32)_U5  CNT_LM (.clk_LM(clk_LM), .clk_c(clk_c), .counter_31__N_87(counter_31__N_87_adj_1), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(43[51:125])
    \CD_counter(WIDTH=32)_U6  CNT_DB (.GND_net(GND_net), .clk_DB(clk_DB), 
            .clk_c(clk_c), .counter_31__N_87(counter_31__N_87_adj_2)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(44[49:121])
    CD_config CLOCK_DIVIDER_CONFIG (.\baudrate[9] (baudrate[9]), .clk_c(clk_c), 
            .clk_c_enable_230(clk_c_enable_230), .\baudrate[0] (baudrate[0]), 
            .\resolution[2] (resolution[2]), .\c_data[0] (\c_data[0] ), 
            .c_VGA_ready(c_VGA_ready), .clk_VGA(clk_VGA), .n4925(n4925), 
            .c_UART_ready(c_UART_ready), .c_valid_N_786(c_valid_N_786), 
            .n8831(n8831), .n8804(n8804), .\c_data[1] (\c_data[1] ), .\c_data[2] (\c_data[2] ), 
            .\baudrate[7] (baudrate[7]), .n8875(n8875), .c_addr({c_addr}), 
            .n8878(n8878), .c_valid(c_valid), .n8657(n8657), .c_ready_nxt_N_907(c_ready_nxt_N_907), 
            .n8827(n8827), .\c_data[1]_derived_1 (\c_data[1]_derived_1 ), 
            .\resolution[3] (resolution[3]), .\H_BackPorch_nxt_7__N_775[5] (\H_BackPorch_nxt_7__N_775[5] ), 
            .\resolution[1] (resolution[1]), .n8890(n8890), .\baudrate[8] (baudrate[8]), 
            .\baudrate_next_23__N_264[8] (\baudrate_next_23__N_264[8] ), .\baudrate[6] (baudrate[6]), 
            .\baudrate[3] (baudrate[3]), .\baudrate[2] (baudrate[2]), .\baudrate_next_23__N_264[2] (\baudrate_next_23__N_264[2] ), 
            .\baudrate[1] (baudrate[1]), .\baudrate_next_23__N_264[1] (\baudrate_next_23__N_264[1] ), 
            .\resolution[0] (resolution[0]), .n8839(n8839), .\baudrate[11] (baudrate[11]), 
            .n4090(n4090), .\baudrate[4] (baudrate[4]), .\baudrate[12] (baudrate[12]), 
            .\baudrate[5] (baudrate[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(46[11] 49[51])
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32) 
//

module \CD_counter(WIDTH=32)  (GND_net, clk_VGA, clk_c, clk_VGA_N_18, 
            counter_31__N_87, \resolution[1] , \resolution[0] , \resolution[2] , 
            \resolution[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_VGA;
    input clk_c;
    input clk_VGA_N_18;
    output counter_31__N_87;
    input \resolution[1] ;
    input \resolution[0] ;
    input \resolution[2] ;
    input \resolution[3] ;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7416;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire clkout_N_120, n7415, n7414;
    wire [31:0]n167;
    
    wire n7413, n7412, n7411, n7410, n7401, n7409, n7408, n7407, 
        n7406, n7405, n7404, n7403, n4, n7521, n7520, n7519, 
        n7518, n7402, n7517, n7516, n7515, n7514, n7513, n7512, 
        n7511, n7510, n7509, n7508, n7507, n7163, n7506, n7155;
    
    CCU2D counter_1273_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7416), .S0(n133[31]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_33.INIT1 = 16'h0000;
    defparam counter_1273_add_4_33.INJECT1_0 = "NO";
    defparam counter_1273_add_4_33.INJECT1_1 = "NO";
    FD1S3DX clkout_17 (.D(clkout_N_120), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(clk_VGA)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=43, LSE_RCOL=129, LSE_LLINE=41, LSE_RLINE=41 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "DISABLED";
    CCU2D counter_1273_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7415), .COUT(n7416), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_31.INJECT1_0 = "NO";
    defparam counter_1273_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7414), .COUT(n7415), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_29.INJECT1_0 = "NO";
    defparam counter_1273_add_4_29.INJECT1_1 = "NO";
    FD1S3DX counter_1273__i0 (.D(n167[0]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i0.GSR = "DISABLED";
    CCU2D counter_1273_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7413), .COUT(n7414), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_27.INJECT1_0 = "NO";
    defparam counter_1273_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7412), .COUT(n7413), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_25.INJECT1_0 = "NO";
    defparam counter_1273_add_4_25.INJECT1_1 = "NO";
    LUT4 i3948_2_lut (.A(n133[31]), .B(counter_31__N_87), .Z(n167[31])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3948_2_lut.init = 16'h2222;
    LUT4 i3949_2_lut (.A(n133[30]), .B(counter_31__N_87), .Z(n167[30])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3949_2_lut.init = 16'h2222;
    LUT4 i3950_2_lut (.A(n133[29]), .B(counter_31__N_87), .Z(n167[29])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3950_2_lut.init = 16'h2222;
    LUT4 i3951_2_lut (.A(n133[28]), .B(counter_31__N_87), .Z(n167[28])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3951_2_lut.init = 16'h2222;
    LUT4 i3952_2_lut (.A(n133[27]), .B(counter_31__N_87), .Z(n167[27])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3952_2_lut.init = 16'h2222;
    LUT4 i3955_2_lut (.A(n133[26]), .B(counter_31__N_87), .Z(n167[26])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3955_2_lut.init = 16'h2222;
    LUT4 i3956_2_lut (.A(n133[25]), .B(counter_31__N_87), .Z(n167[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3956_2_lut.init = 16'h2222;
    CCU2D counter_1273_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7411), .COUT(n7412), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_23.INJECT1_0 = "NO";
    defparam counter_1273_add_4_23.INJECT1_1 = "NO";
    LUT4 i3957_2_lut (.A(n133[24]), .B(counter_31__N_87), .Z(n167[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3957_2_lut.init = 16'h2222;
    LUT4 i3958_2_lut (.A(n133[23]), .B(counter_31__N_87), .Z(n167[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3958_2_lut.init = 16'h2222;
    LUT4 i3959_2_lut (.A(n133[22]), .B(counter_31__N_87), .Z(n167[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3959_2_lut.init = 16'h2222;
    LUT4 i3960_2_lut (.A(n133[21]), .B(counter_31__N_87), .Z(n167[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3960_2_lut.init = 16'h2222;
    LUT4 i3961_2_lut (.A(n133[20]), .B(counter_31__N_87), .Z(n167[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3961_2_lut.init = 16'h2222;
    LUT4 i3962_2_lut (.A(n133[19]), .B(counter_31__N_87), .Z(n167[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3962_2_lut.init = 16'h2222;
    CCU2D counter_1273_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7410), .COUT(n7411), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_21.INJECT1_0 = "NO";
    defparam counter_1273_add_4_21.INJECT1_1 = "NO";
    LUT4 i3963_2_lut (.A(n133[18]), .B(counter_31__N_87), .Z(n167[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3963_2_lut.init = 16'h2222;
    FD1S3DX counter_1273__i31 (.D(n167[31]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i31.GSR = "DISABLED";
    LUT4 i3964_2_lut (.A(n133[17]), .B(counter_31__N_87), .Z(n167[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3964_2_lut.init = 16'h2222;
    FD1S3DX counter_1273__i30 (.D(n167[30]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i30.GSR = "DISABLED";
    FD1S3DX counter_1273__i29 (.D(n167[29]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i29.GSR = "DISABLED";
    FD1S3DX counter_1273__i28 (.D(n167[28]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i28.GSR = "DISABLED";
    FD1S3DX counter_1273__i27 (.D(n167[27]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i27.GSR = "DISABLED";
    FD1S3DX counter_1273__i26 (.D(n167[26]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i26.GSR = "DISABLED";
    FD1S3DX counter_1273__i25 (.D(n167[25]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i25.GSR = "DISABLED";
    FD1S3DX counter_1273__i24 (.D(n167[24]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i24.GSR = "DISABLED";
    FD1S3DX counter_1273__i23 (.D(n167[23]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i23.GSR = "DISABLED";
    FD1S3DX counter_1273__i22 (.D(n167[22]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i22.GSR = "DISABLED";
    FD1S3DX counter_1273__i21 (.D(n167[21]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i21.GSR = "DISABLED";
    FD1S3DX counter_1273__i20 (.D(n167[20]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i20.GSR = "DISABLED";
    FD1S3DX counter_1273__i19 (.D(n167[19]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i19.GSR = "DISABLED";
    FD1S3DX counter_1273__i18 (.D(n167[18]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i18.GSR = "DISABLED";
    FD1S3DX counter_1273__i17 (.D(n167[17]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i17.GSR = "DISABLED";
    FD1S3DX counter_1273__i16 (.D(n167[16]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i16.GSR = "DISABLED";
    FD1S3DX counter_1273__i15 (.D(n167[15]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i15.GSR = "DISABLED";
    FD1S3DX counter_1273__i14 (.D(n167[14]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i14.GSR = "DISABLED";
    FD1S3DX counter_1273__i13 (.D(n167[13]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i13.GSR = "DISABLED";
    FD1S3DX counter_1273__i12 (.D(n167[12]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i12.GSR = "DISABLED";
    FD1S3DX counter_1273__i11 (.D(n167[11]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i11.GSR = "DISABLED";
    FD1S3DX counter_1273__i10 (.D(n167[10]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i10.GSR = "DISABLED";
    FD1S3DX counter_1273__i9 (.D(n167[9]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i9.GSR = "DISABLED";
    FD1S3DX counter_1273__i8 (.D(n167[8]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i8.GSR = "DISABLED";
    FD1S3DX counter_1273__i7 (.D(n167[7]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i7.GSR = "DISABLED";
    FD1S3DX counter_1273__i6 (.D(n167[6]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i6.GSR = "DISABLED";
    FD1S3DX counter_1273__i5 (.D(n167[5]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i5.GSR = "DISABLED";
    FD1S3DX counter_1273__i4 (.D(n167[4]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i4.GSR = "DISABLED";
    FD1S3DX counter_1273__i3 (.D(n167[3]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i3.GSR = "DISABLED";
    FD1S3DX counter_1273__i2 (.D(n167[2]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i2.GSR = "DISABLED";
    FD1S3DX counter_1273__i1 (.D(n167[1]), .CK(clk_c), .CD(clk_VGA_N_18), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273__i1.GSR = "DISABLED";
    LUT4 i3965_2_lut (.A(n133[16]), .B(counter_31__N_87), .Z(n167[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3965_2_lut.init = 16'h2222;
    LUT4 i3966_2_lut (.A(n133[15]), .B(counter_31__N_87), .Z(n167[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3966_2_lut.init = 16'h2222;
    LUT4 i3967_2_lut (.A(n133[14]), .B(counter_31__N_87), .Z(n167[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3967_2_lut.init = 16'h2222;
    LUT4 i3968_2_lut (.A(n133[13]), .B(counter_31__N_87), .Z(n167[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3968_2_lut.init = 16'h2222;
    LUT4 i3969_2_lut (.A(n133[12]), .B(counter_31__N_87), .Z(n167[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3969_2_lut.init = 16'h2222;
    LUT4 i3970_2_lut (.A(n133[11]), .B(counter_31__N_87), .Z(n167[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3970_2_lut.init = 16'h2222;
    CCU2D counter_1273_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7401), .S1(n133[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_1.INIT0 = 16'hF000;
    defparam counter_1273_add_4_1.INIT1 = 16'h0555;
    defparam counter_1273_add_4_1.INJECT1_0 = "NO";
    defparam counter_1273_add_4_1.INJECT1_1 = "NO";
    LUT4 i3971_2_lut (.A(n133[10]), .B(counter_31__N_87), .Z(n167[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3971_2_lut.init = 16'h2222;
    LUT4 i3972_2_lut (.A(n133[9]), .B(counter_31__N_87), .Z(n167[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3972_2_lut.init = 16'h2222;
    LUT4 i3973_2_lut (.A(n133[8]), .B(counter_31__N_87), .Z(n167[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3973_2_lut.init = 16'h2222;
    LUT4 i3974_2_lut (.A(n133[7]), .B(counter_31__N_87), .Z(n167[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3974_2_lut.init = 16'h2222;
    LUT4 i3975_2_lut (.A(n133[6]), .B(counter_31__N_87), .Z(n167[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3975_2_lut.init = 16'h2222;
    LUT4 i3976_2_lut (.A(n133[5]), .B(counter_31__N_87), .Z(n167[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3976_2_lut.init = 16'h2222;
    LUT4 i3977_2_lut (.A(n133[4]), .B(counter_31__N_87), .Z(n167[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3977_2_lut.init = 16'h2222;
    LUT4 i3978_2_lut (.A(n133[3]), .B(counter_31__N_87), .Z(n167[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3978_2_lut.init = 16'h2222;
    LUT4 i3979_2_lut (.A(n133[2]), .B(counter_31__N_87), .Z(n167[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3979_2_lut.init = 16'h2222;
    LUT4 i3981_2_lut (.A(n133[1]), .B(counter_31__N_87), .Z(n167[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3981_2_lut.init = 16'h2222;
    LUT4 clkout_I_0_2_lut (.A(clk_VGA), .B(counter_31__N_87), .Z(clkout_N_120)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    CCU2D counter_1273_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7409), .COUT(n7410), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_19.INJECT1_0 = "NO";
    defparam counter_1273_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7408), .COUT(n7409), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_17.INJECT1_0 = "NO";
    defparam counter_1273_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7407), .COUT(n7408), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_15.INJECT1_0 = "NO";
    defparam counter_1273_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7406), .COUT(n7407), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_13.INJECT1_0 = "NO";
    defparam counter_1273_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7405), .COUT(n7406), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_11.INJECT1_0 = "NO";
    defparam counter_1273_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7404), .COUT(n7405), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_9.INJECT1_0 = "NO";
    defparam counter_1273_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7403), .COUT(n7404), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_7.INJECT1_0 = "NO";
    defparam counter_1273_add_4_7.INJECT1_1 = "NO";
    LUT4 i6172_2_lut (.A(\resolution[1] ), .B(\resolution[0] ), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam i6172_2_lut.init = 16'heeee;
    CCU2D sub_1042_add_2_33 (.A0(counter[31]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7521), .S1(counter_31__N_87));
    defparam sub_1042_add_2_33.INIT0 = 16'h5556;
    defparam sub_1042_add_2_33.INIT1 = 16'h0000;
    defparam sub_1042_add_2_33.INJECT1_0 = "NO";
    defparam sub_1042_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_31 (.A0(counter[29]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[30]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7520), .COUT(n7521));
    defparam sub_1042_add_2_31.INIT0 = 16'h5556;
    defparam sub_1042_add_2_31.INIT1 = 16'h5556;
    defparam sub_1042_add_2_31.INJECT1_0 = "NO";
    defparam sub_1042_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_29 (.A0(counter[27]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[28]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7519), .COUT(n7520));
    defparam sub_1042_add_2_29.INIT0 = 16'h5556;
    defparam sub_1042_add_2_29.INIT1 = 16'h5556;
    defparam sub_1042_add_2_29.INJECT1_0 = "NO";
    defparam sub_1042_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_27 (.A0(counter[25]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[26]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7518), .COUT(n7519));
    defparam sub_1042_add_2_27.INIT0 = 16'h5556;
    defparam sub_1042_add_2_27.INIT1 = 16'h5556;
    defparam sub_1042_add_2_27.INJECT1_0 = "NO";
    defparam sub_1042_add_2_27.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7402), .COUT(n7403), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_5.INJECT1_0 = "NO";
    defparam counter_1273_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_25 (.A0(counter[23]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[24]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7517), .COUT(n7518));
    defparam sub_1042_add_2_25.INIT0 = 16'h5556;
    defparam sub_1042_add_2_25.INIT1 = 16'h5556;
    defparam sub_1042_add_2_25.INJECT1_0 = "NO";
    defparam sub_1042_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_23 (.A0(counter[21]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[22]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7516), .COUT(n7517));
    defparam sub_1042_add_2_23.INIT0 = 16'h5556;
    defparam sub_1042_add_2_23.INIT1 = 16'h5556;
    defparam sub_1042_add_2_23.INJECT1_0 = "NO";
    defparam sub_1042_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_21 (.A0(counter[19]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[20]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7515), .COUT(n7516));
    defparam sub_1042_add_2_21.INIT0 = 16'h5556;
    defparam sub_1042_add_2_21.INIT1 = 16'h5556;
    defparam sub_1042_add_2_21.INJECT1_0 = "NO";
    defparam sub_1042_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_19 (.A0(counter[17]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[18]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7514), .COUT(n7515));
    defparam sub_1042_add_2_19.INIT0 = 16'h5556;
    defparam sub_1042_add_2_19.INIT1 = 16'h5556;
    defparam sub_1042_add_2_19.INJECT1_0 = "NO";
    defparam sub_1042_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_17 (.A0(counter[15]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[16]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7513), .COUT(n7514));
    defparam sub_1042_add_2_17.INIT0 = 16'h5556;
    defparam sub_1042_add_2_17.INIT1 = 16'h5556;
    defparam sub_1042_add_2_17.INJECT1_0 = "NO";
    defparam sub_1042_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_15 (.A0(counter[13]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[14]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7512), .COUT(n7513));
    defparam sub_1042_add_2_15.INIT0 = 16'h5556;
    defparam sub_1042_add_2_15.INIT1 = 16'h5556;
    defparam sub_1042_add_2_15.INJECT1_0 = "NO";
    defparam sub_1042_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_13 (.A0(counter[11]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[12]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7511), .COUT(n7512));
    defparam sub_1042_add_2_13.INIT0 = 16'h5556;
    defparam sub_1042_add_2_13.INIT1 = 16'h5556;
    defparam sub_1042_add_2_13.INJECT1_0 = "NO";
    defparam sub_1042_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_11 (.A0(counter[9]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[10]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7510), .COUT(n7511));
    defparam sub_1042_add_2_11.INIT0 = 16'h5556;
    defparam sub_1042_add_2_11.INIT1 = 16'h5556;
    defparam sub_1042_add_2_11.INJECT1_0 = "NO";
    defparam sub_1042_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_9 (.A0(counter[7]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[8]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7509), .COUT(n7510));
    defparam sub_1042_add_2_9.INIT0 = 16'h5556;
    defparam sub_1042_add_2_9.INIT1 = 16'h5556;
    defparam sub_1042_add_2_9.INJECT1_0 = "NO";
    defparam sub_1042_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_7 (.A0(counter[5]), .B0(n4), .C0(\resolution[2] ), 
          .D0(\resolution[3] ), .A1(counter[6]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7508), .COUT(n7509));
    defparam sub_1042_add_2_7.INIT0 = 16'h5556;
    defparam sub_1042_add_2_7.INIT1 = 16'h5556;
    defparam sub_1042_add_2_7.INJECT1_0 = "NO";
    defparam sub_1042_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_5 (.A0(counter[3]), .B0(n4), .C0(\resolution[2] ), 
          .D0(n7163), .A1(counter[4]), .B1(n4), .C1(\resolution[2] ), 
          .D1(\resolution[3] ), .CIN(n7507), .COUT(n7508));
    defparam sub_1042_add_2_5.INIT0 = 16'h56a9;
    defparam sub_1042_add_2_5.INIT1 = 16'h5556;
    defparam sub_1042_add_2_5.INJECT1_0 = "NO";
    defparam sub_1042_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1042_add_2_3 (.A0(\resolution[0] ), .B0(\resolution[1] ), 
          .C0(counter[1]), .D0(GND_net), .A1(counter[2]), .B1(\resolution[0] ), 
          .C1(\resolution[1] ), .D1(n7155), .CIN(n7506), .COUT(n7507));
    defparam sub_1042_add_2_3.INIT0 = 16'h9696;
    defparam sub_1042_add_2_3.INIT1 = 16'h56a9;
    defparam sub_1042_add_2_3.INJECT1_0 = "NO";
    defparam sub_1042_add_2_3.INJECT1_1 = "NO";
    LUT4 i3887_2_lut (.A(n133[0]), .B(counter_31__N_87), .Z(n167[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam i3887_2_lut.init = 16'h2222;
    CCU2D sub_1042_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(\resolution[0] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n7506));
    defparam sub_1042_add_2_1.INIT0 = 16'h0000;
    defparam sub_1042_add_2_1.INIT1 = 16'h5666;
    defparam sub_1042_add_2_1.INJECT1_0 = "NO";
    defparam sub_1042_add_2_1.INJECT1_1 = "NO";
    CCU2D counter_1273_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7401), .COUT(n7402), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1273_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1273_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1273_add_4_3.INJECT1_0 = "NO";
    defparam counter_1273_add_4_3.INJECT1_1 = "NO";
    LUT4 i6189_1_lut (.A(\resolution[3] ), .Z(n7163)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam i6189_1_lut.init = 16'h5555;
    LUT4 i6181_1_lut (.A(\resolution[2] ), .Z(n7155)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam i6181_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=24) 
//

module \CD_counter(WIDTH=24)  (clk_UART, clk_c, clk_UART_N_20, clkout_N_205, 
            counter, n127, GND_net, \counter_23__N_180[13] , \counter_23__N_180[14] , 
            n101, \baudrate[11] , \baudrate[12] , \counter_23__N_180[11] , 
            \counter_23__N_180[12] , \baudrate[9] , \baudrate[0] , \counter_23__N_180[9] , 
            \counter_23__N_180[10] , \baudrate[7] , \baudrate[8] , \counter_23__N_180[7] , 
            \counter_23__N_180[8] , \baudrate[5] , \baudrate[6] , \counter_23__N_180[5] , 
            \counter_23__N_180[6] , \baudrate[3] , \baudrate[4] , \counter_23__N_180[3] , 
            \counter_23__N_180[4] , \baudrate[1] , \baudrate[2] , \counter_23__N_180[1] , 
            \counter_23__N_180[2] , \counter_23__N_180[0] ) /* synthesis syn_module_defined=1 */ ;
    output clk_UART;
    input clk_c;
    input clk_UART_N_20;
    input clkout_N_205;
    output [23:0]counter;
    input [23:0]n127;
    input GND_net;
    output \counter_23__N_180[13] ;
    output \counter_23__N_180[14] ;
    output [23:0]n101;
    input \baudrate[11] ;
    input \baudrate[12] ;
    output \counter_23__N_180[11] ;
    output \counter_23__N_180[12] ;
    input \baudrate[9] ;
    input \baudrate[0] ;
    output \counter_23__N_180[9] ;
    output \counter_23__N_180[10] ;
    input \baudrate[7] ;
    input \baudrate[8] ;
    output \counter_23__N_180[7] ;
    output \counter_23__N_180[8] ;
    input \baudrate[5] ;
    input \baudrate[6] ;
    output \counter_23__N_180[5] ;
    output \counter_23__N_180[6] ;
    input \baudrate[3] ;
    input \baudrate[4] ;
    output \counter_23__N_180[3] ;
    output \counter_23__N_180[4] ;
    input \baudrate[1] ;
    input \baudrate[2] ;
    output \counter_23__N_180[1] ;
    output \counter_23__N_180[2] ;
    output \counter_23__N_180[0] ;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7390, n7445, n7444, n7443, n7442, n7389, n7441, n7440, 
        n7439, n7438, n7437, n7436, n7435, n7434, n7388, n7387, 
        n7386, n7385, n7384;
    
    FD1S3DX clkout_17 (.D(clkout_N_205), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(clk_UART)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=44, LSE_RCOL=131, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "DISABLED";
    FD1S3DX counter_1274__i0 (.D(n127[0]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i0.GSR = "DISABLED";
    CCU2D limit_23__I_0_add_2_15 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7390), .S0(\counter_23__N_180[13] ), .S1(\counter_23__N_180[14] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_15.INIT0 = 16'hffff;
    defparam limit_23__I_0_add_2_15.INIT1 = 16'hffff;
    defparam limit_23__I_0_add_2_15.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_15.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7445), .S0(n101[23]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_25.INIT1 = 16'h0000;
    defparam counter_1274_add_4_25.INJECT1_0 = "NO";
    defparam counter_1274_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7444), .COUT(n7445), .S0(n101[21]), .S1(n101[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_23.INJECT1_0 = "NO";
    defparam counter_1274_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7443), .COUT(n7444), .S0(n101[19]), .S1(n101[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_21.INJECT1_0 = "NO";
    defparam counter_1274_add_4_21.INJECT1_1 = "NO";
    FD1S3DX counter_1274__i1 (.D(n127[1]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i1.GSR = "DISABLED";
    CCU2D counter_1274_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7442), .COUT(n7443), .S0(n101[17]), .S1(n101[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_19.INJECT1_0 = "NO";
    defparam counter_1274_add_4_19.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_13 (.A0(\baudrate[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[12] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7389), .COUT(n7390), .S0(\counter_23__N_180[11] ), 
          .S1(\counter_23__N_180[12] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_13.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_13.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_13.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_13.INJECT1_1 = "NO";
    FD1S3DX counter_1274__i2 (.D(n127[2]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i2.GSR = "DISABLED";
    FD1S3DX counter_1274__i3 (.D(n127[3]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i3.GSR = "DISABLED";
    FD1S3DX counter_1274__i4 (.D(n127[4]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i4.GSR = "DISABLED";
    FD1S3DX counter_1274__i5 (.D(n127[5]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i5.GSR = "DISABLED";
    FD1S3DX counter_1274__i6 (.D(n127[6]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i6.GSR = "DISABLED";
    FD1S3DX counter_1274__i7 (.D(n127[7]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i7.GSR = "DISABLED";
    FD1S3DX counter_1274__i8 (.D(n127[8]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i8.GSR = "DISABLED";
    FD1S3DX counter_1274__i9 (.D(n127[9]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i9.GSR = "DISABLED";
    FD1S3DX counter_1274__i10 (.D(n127[10]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i10.GSR = "DISABLED";
    FD1S3DX counter_1274__i11 (.D(n127[11]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i11.GSR = "DISABLED";
    FD1S3DX counter_1274__i12 (.D(n127[12]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i12.GSR = "DISABLED";
    FD1S3DX counter_1274__i13 (.D(n127[13]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i13.GSR = "DISABLED";
    FD1S3DX counter_1274__i14 (.D(n127[14]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i14.GSR = "DISABLED";
    FD1S3DX counter_1274__i15 (.D(n127[15]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i15.GSR = "DISABLED";
    FD1S3DX counter_1274__i16 (.D(n127[16]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i16.GSR = "DISABLED";
    FD1S3DX counter_1274__i17 (.D(n127[17]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i17.GSR = "DISABLED";
    FD1S3DX counter_1274__i18 (.D(n127[18]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i18.GSR = "DISABLED";
    FD1S3DX counter_1274__i19 (.D(n127[19]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i19.GSR = "DISABLED";
    FD1S3DX counter_1274__i20 (.D(n127[20]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i20.GSR = "DISABLED";
    FD1S3DX counter_1274__i21 (.D(n127[21]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i21.GSR = "DISABLED";
    FD1S3DX counter_1274__i22 (.D(n127[22]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i22.GSR = "DISABLED";
    FD1S3DX counter_1274__i23 (.D(n127[23]), .CK(clk_c), .CD(clk_UART_N_20), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274__i23.GSR = "DISABLED";
    CCU2D counter_1274_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7441), .COUT(n7442), .S0(n101[15]), .S1(n101[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_17.INJECT1_0 = "NO";
    defparam counter_1274_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7440), .COUT(n7441), .S0(n101[13]), .S1(n101[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_15.INJECT1_0 = "NO";
    defparam counter_1274_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7439), .COUT(n7440), .S0(n101[11]), .S1(n101[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_13.INJECT1_0 = "NO";
    defparam counter_1274_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7438), .COUT(n7439), .S0(n101[9]), .S1(n101[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_11.INJECT1_0 = "NO";
    defparam counter_1274_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7437), .COUT(n7438), .S0(n101[7]), .S1(n101[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_9.INJECT1_0 = "NO";
    defparam counter_1274_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7436), .COUT(n7437), .S0(n101[5]), .S1(n101[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_7.INJECT1_0 = "NO";
    defparam counter_1274_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7435), .COUT(n7436), .S0(n101[3]), .S1(n101[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_5.INJECT1_0 = "NO";
    defparam counter_1274_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7434), .COUT(n7435), .S0(n101[1]), .S1(n101[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1274_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1274_add_4_3.INJECT1_0 = "NO";
    defparam counter_1274_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7434), .S1(n101[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1274_add_4_1.INIT0 = 16'hF000;
    defparam counter_1274_add_4_1.INIT1 = 16'h0555;
    defparam counter_1274_add_4_1.INJECT1_0 = "NO";
    defparam counter_1274_add_4_1.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_11 (.A0(\baudrate[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7388), .COUT(n7389), .S0(\counter_23__N_180[9] ), 
          .S1(\counter_23__N_180[10] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_11.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_11.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_11.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_9 (.A0(\baudrate[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[8] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7387), .COUT(n7388), .S0(\counter_23__N_180[7] ), 
          .S1(\counter_23__N_180[8] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_9.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_9.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_9.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_7 (.A0(\baudrate[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7386), .COUT(n7387), .S0(\counter_23__N_180[5] ), 
          .S1(\counter_23__N_180[6] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_7.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_7.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_7.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_5 (.A0(\baudrate[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7385), .COUT(n7386), .S0(\counter_23__N_180[3] ), 
          .S1(\counter_23__N_180[4] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_5.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_3 (.A0(\baudrate[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7384), .COUT(n7385), .S0(\counter_23__N_180[1] ), 
          .S1(\counter_23__N_180[2] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_3.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7384), .S1(\counter_23__N_180[0] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_1.INIT0 = 16'hF000;
    defparam limit_23__I_0_add_2_1.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_1.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32)_U5 
//

module \CD_counter(WIDTH=32)_U5  (clk_LM, clk_c, counter_31__N_87, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_LM;
    input clk_c;
    output counter_31__N_87;
    input GND_net;
    
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clkout_N_120;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire n7499, n7601, n7498, n7600, n7599, n7497, n7598, n7496, 
        n7597, n7495, n7596, n7494, n7595, n7493, n7594, n7492, 
        n7593, n7491, n7592, n7490, n7591, n7489, n7590, n7589, 
        n7488, n7588, n7587, n7487, n7486, n7586, n7485, n7484;
    
    FD1S3AX clkout_17 (.D(clkout_N_120), .CK(clk_c), .Q(clk_LM)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=51, LSE_RCOL=125, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    FD1S3IX counter_1275__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i0.GSR = "ENABLED";
    LUT4 clkout_I_0_2_lut (.A(clk_LM), .B(counter_31__N_87), .Z(clkout_N_120)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    CCU2D sub_1043_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7499), .S0(counter_31__N_87));
    defparam sub_1043_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1043_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1043_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1043_add_2_cout.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7601), .S0(n133[31]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_33.INIT1 = 16'h0000;
    defparam counter_1275_add_4_33.INJECT1_0 = "NO";
    defparam counter_1275_add_4_33.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_32 (.A0(counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7498), .COUT(n7499));
    defparam sub_1043_add_2_32.INIT0 = 16'h5555;
    defparam sub_1043_add_2_32.INIT1 = 16'h5555;
    defparam sub_1043_add_2_32.INJECT1_0 = "NO";
    defparam sub_1043_add_2_32.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7600), .COUT(n7601), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_31.INJECT1_0 = "NO";
    defparam counter_1275_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7599), .COUT(n7600), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_29.INJECT1_0 = "NO";
    defparam counter_1275_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_30 (.A0(counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7497), .COUT(n7498));
    defparam sub_1043_add_2_30.INIT0 = 16'h5555;
    defparam sub_1043_add_2_30.INIT1 = 16'h5555;
    defparam sub_1043_add_2_30.INJECT1_0 = "NO";
    defparam sub_1043_add_2_30.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7598), .COUT(n7599), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_27.INJECT1_0 = "NO";
    defparam counter_1275_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_28 (.A0(counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7496), .COUT(n7497));
    defparam sub_1043_add_2_28.INIT0 = 16'h5555;
    defparam sub_1043_add_2_28.INIT1 = 16'h5555;
    defparam sub_1043_add_2_28.INJECT1_0 = "NO";
    defparam sub_1043_add_2_28.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7597), .COUT(n7598), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_25.INJECT1_0 = "NO";
    defparam counter_1275_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_26 (.A0(counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7495), .COUT(n7496));
    defparam sub_1043_add_2_26.INIT0 = 16'h5555;
    defparam sub_1043_add_2_26.INIT1 = 16'h5555;
    defparam sub_1043_add_2_26.INJECT1_0 = "NO";
    defparam sub_1043_add_2_26.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7596), .COUT(n7597), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_23.INJECT1_0 = "NO";
    defparam counter_1275_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_24 (.A0(counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7494), .COUT(n7495));
    defparam sub_1043_add_2_24.INIT0 = 16'h5555;
    defparam sub_1043_add_2_24.INIT1 = 16'h5555;
    defparam sub_1043_add_2_24.INJECT1_0 = "NO";
    defparam sub_1043_add_2_24.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7595), .COUT(n7596), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_21.INJECT1_0 = "NO";
    defparam counter_1275_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_22 (.A0(counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7493), .COUT(n7494));
    defparam sub_1043_add_2_22.INIT0 = 16'h5555;
    defparam sub_1043_add_2_22.INIT1 = 16'h5555;
    defparam sub_1043_add_2_22.INJECT1_0 = "NO";
    defparam sub_1043_add_2_22.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7594), .COUT(n7595), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_19.INJECT1_0 = "NO";
    defparam counter_1275_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_20 (.A0(counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7492), .COUT(n7493));
    defparam sub_1043_add_2_20.INIT0 = 16'h5555;
    defparam sub_1043_add_2_20.INIT1 = 16'h5555;
    defparam sub_1043_add_2_20.INJECT1_0 = "NO";
    defparam sub_1043_add_2_20.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7593), .COUT(n7594), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_17.INJECT1_0 = "NO";
    defparam counter_1275_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_18 (.A0(counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7491), .COUT(n7492));
    defparam sub_1043_add_2_18.INIT0 = 16'h5aaa;
    defparam sub_1043_add_2_18.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_18.INJECT1_0 = "NO";
    defparam sub_1043_add_2_18.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7592), .COUT(n7593), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_15.INJECT1_0 = "NO";
    defparam counter_1275_add_4_15.INJECT1_1 = "NO";
    FD1S3IX counter_1275__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i1.GSR = "ENABLED";
    CCU2D sub_1043_add_2_16 (.A0(counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7490), .COUT(n7491));
    defparam sub_1043_add_2_16.INIT0 = 16'h5aaa;
    defparam sub_1043_add_2_16.INIT1 = 16'h5555;
    defparam sub_1043_add_2_16.INJECT1_0 = "NO";
    defparam sub_1043_add_2_16.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7591), .COUT(n7592), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_13.INJECT1_0 = "NO";
    defparam counter_1275_add_4_13.INJECT1_1 = "NO";
    FD1S3IX counter_1275__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i2.GSR = "ENABLED";
    FD1S3IX counter_1275__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i3.GSR = "ENABLED";
    FD1S3IX counter_1275__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i4.GSR = "ENABLED";
    FD1S3IX counter_1275__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i5.GSR = "ENABLED";
    FD1S3IX counter_1275__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i6.GSR = "ENABLED";
    FD1S3IX counter_1275__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i7.GSR = "ENABLED";
    FD1S3IX counter_1275__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i8.GSR = "ENABLED";
    FD1S3IX counter_1275__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i9.GSR = "ENABLED";
    FD1S3IX counter_1275__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i10.GSR = "ENABLED";
    FD1S3IX counter_1275__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i11.GSR = "ENABLED";
    FD1S3IX counter_1275__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i12.GSR = "ENABLED";
    FD1S3IX counter_1275__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i13.GSR = "ENABLED";
    FD1S3IX counter_1275__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i14.GSR = "ENABLED";
    FD1S3IX counter_1275__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i15.GSR = "ENABLED";
    FD1S3IX counter_1275__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i16.GSR = "ENABLED";
    FD1S3IX counter_1275__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i17.GSR = "ENABLED";
    FD1S3IX counter_1275__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i18.GSR = "ENABLED";
    FD1S3IX counter_1275__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i19.GSR = "ENABLED";
    FD1S3IX counter_1275__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i20.GSR = "ENABLED";
    FD1S3IX counter_1275__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i21.GSR = "ENABLED";
    FD1S3IX counter_1275__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i22.GSR = "ENABLED";
    FD1S3IX counter_1275__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i23.GSR = "ENABLED";
    FD1S3IX counter_1275__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i24.GSR = "ENABLED";
    FD1S3IX counter_1275__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i25.GSR = "ENABLED";
    FD1S3IX counter_1275__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i26.GSR = "ENABLED";
    FD1S3IX counter_1275__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i27.GSR = "ENABLED";
    FD1S3IX counter_1275__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i28.GSR = "ENABLED";
    FD1S3IX counter_1275__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i29.GSR = "ENABLED";
    FD1S3IX counter_1275__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i30.GSR = "ENABLED";
    FD1S3IX counter_1275__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275__i31.GSR = "ENABLED";
    CCU2D sub_1043_add_2_14 (.A0(counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7489), .COUT(n7490));
    defparam sub_1043_add_2_14.INIT0 = 16'h5555;
    defparam sub_1043_add_2_14.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_14.INJECT1_0 = "NO";
    defparam sub_1043_add_2_14.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7590), .COUT(n7591), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_11.INJECT1_0 = "NO";
    defparam counter_1275_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7589), .COUT(n7590), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_9.INJECT1_0 = "NO";
    defparam counter_1275_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_12 (.A0(counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7488), .COUT(n7489));
    defparam sub_1043_add_2_12.INIT0 = 16'h5aaa;
    defparam sub_1043_add_2_12.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_12.INJECT1_0 = "NO";
    defparam sub_1043_add_2_12.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7588), .COUT(n7589), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_7.INJECT1_0 = "NO";
    defparam counter_1275_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7587), .COUT(n7588), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_5.INJECT1_0 = "NO";
    defparam counter_1275_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_10 (.A0(counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7487), .COUT(n7488));
    defparam sub_1043_add_2_10.INIT0 = 16'h5555;
    defparam sub_1043_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_10.INJECT1_0 = "NO";
    defparam sub_1043_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_8 (.A0(counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7486), .COUT(n7487));
    defparam sub_1043_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1043_add_2_8.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_8.INJECT1_0 = "NO";
    defparam sub_1043_add_2_8.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7586), .COUT(n7587), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1275_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1275_add_4_3.INJECT1_0 = "NO";
    defparam counter_1275_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1275_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7586), .S1(n133[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1275_add_4_1.INIT0 = 16'hF000;
    defparam counter_1275_add_4_1.INIT1 = 16'h0555;
    defparam counter_1275_add_4_1.INJECT1_0 = "NO";
    defparam counter_1275_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_6 (.A0(counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7485), .COUT(n7486));
    defparam sub_1043_add_2_6.INIT0 = 16'h5555;
    defparam sub_1043_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_6.INJECT1_0 = "NO";
    defparam sub_1043_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_4 (.A0(counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7484), .COUT(n7485));
    defparam sub_1043_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_1043_add_2_4.INIT1 = 16'h5555;
    defparam sub_1043_add_2_4.INJECT1_0 = "NO";
    defparam sub_1043_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1043_add_2_2 (.A0(counter[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7484));
    defparam sub_1043_add_2_2.INIT0 = 16'h5000;
    defparam sub_1043_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1043_add_2_2.INJECT1_0 = "NO";
    defparam sub_1043_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32)_U6 
//

module \CD_counter(WIDTH=32)_U6  (GND_net, clk_DB, clk_c, counter_31__N_87) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_DB;
    input clk_c;
    output counter_31__N_87;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(35[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7581;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire n7582, n7482, n7483, n7481, n7580, n7480, n7479, clkout_N_120, 
        n7579, n7578, n7478, n7477, n7577, n7476, n7576, n7475, 
        n7474, n7575, n7473, n7472, n7574, n7471, n7573, n7572, 
        n7470, n7571, n7469, n7570, n7468, n7585, n7584, n7583;
    
    CCU2D counter_1276_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7581), .COUT(n7582), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_25.INJECT1_0 = "NO";
    defparam counter_1276_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_32 (.A0(counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7482), .COUT(n7483));
    defparam sub_1044_add_2_32.INIT0 = 16'h5555;
    defparam sub_1044_add_2_32.INIT1 = 16'h5555;
    defparam sub_1044_add_2_32.INJECT1_0 = "NO";
    defparam sub_1044_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_30 (.A0(counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7481), .COUT(n7482));
    defparam sub_1044_add_2_30.INIT0 = 16'h5555;
    defparam sub_1044_add_2_30.INIT1 = 16'h5555;
    defparam sub_1044_add_2_30.INJECT1_0 = "NO";
    defparam sub_1044_add_2_30.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7580), .COUT(n7581), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_23.INJECT1_0 = "NO";
    defparam counter_1276_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_28 (.A0(counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7480), .COUT(n7481));
    defparam sub_1044_add_2_28.INIT0 = 16'h5555;
    defparam sub_1044_add_2_28.INIT1 = 16'h5555;
    defparam sub_1044_add_2_28.INJECT1_0 = "NO";
    defparam sub_1044_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_26 (.A0(counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7479), .COUT(n7480));
    defparam sub_1044_add_2_26.INIT0 = 16'h5555;
    defparam sub_1044_add_2_26.INIT1 = 16'h5555;
    defparam sub_1044_add_2_26.INJECT1_0 = "NO";
    defparam sub_1044_add_2_26.INJECT1_1 = "NO";
    FD1S3AX clkout_17 (.D(clkout_N_120), .CK(clk_c), .Q(clk_DB)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=49, LSE_RCOL=121, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    CCU2D counter_1276_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7579), .COUT(n7580), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_21.INJECT1_0 = "NO";
    defparam counter_1276_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7578), .COUT(n7579), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_19.INJECT1_0 = "NO";
    defparam counter_1276_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_24 (.A0(counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7478), .COUT(n7479));
    defparam sub_1044_add_2_24.INIT0 = 16'h5555;
    defparam sub_1044_add_2_24.INIT1 = 16'h5555;
    defparam sub_1044_add_2_24.INJECT1_0 = "NO";
    defparam sub_1044_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_22 (.A0(counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7477), .COUT(n7478));
    defparam sub_1044_add_2_22.INIT0 = 16'h5555;
    defparam sub_1044_add_2_22.INIT1 = 16'h5555;
    defparam sub_1044_add_2_22.INJECT1_0 = "NO";
    defparam sub_1044_add_2_22.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7577), .COUT(n7578), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_17.INJECT1_0 = "NO";
    defparam counter_1276_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_20 (.A0(counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7476), .COUT(n7477));
    defparam sub_1044_add_2_20.INIT0 = 16'h5555;
    defparam sub_1044_add_2_20.INIT1 = 16'h5555;
    defparam sub_1044_add_2_20.INJECT1_0 = "NO";
    defparam sub_1044_add_2_20.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7576), .COUT(n7577), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_15.INJECT1_0 = "NO";
    defparam counter_1276_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_18 (.A0(counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7475), .COUT(n7476));
    defparam sub_1044_add_2_18.INIT0 = 16'h5555;
    defparam sub_1044_add_2_18.INIT1 = 16'h5555;
    defparam sub_1044_add_2_18.INJECT1_0 = "NO";
    defparam sub_1044_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_16 (.A0(counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7474), .COUT(n7475));
    defparam sub_1044_add_2_16.INIT0 = 16'h5555;
    defparam sub_1044_add_2_16.INIT1 = 16'h5555;
    defparam sub_1044_add_2_16.INJECT1_0 = "NO";
    defparam sub_1044_add_2_16.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7575), .COUT(n7576), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_13.INJECT1_0 = "NO";
    defparam counter_1276_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_14 (.A0(counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7473), .COUT(n7474));
    defparam sub_1044_add_2_14.INIT0 = 16'h5555;
    defparam sub_1044_add_2_14.INIT1 = 16'h5aaa;
    defparam sub_1044_add_2_14.INJECT1_0 = "NO";
    defparam sub_1044_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_12 (.A0(counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7472), .COUT(n7473));
    defparam sub_1044_add_2_12.INIT0 = 16'h5555;
    defparam sub_1044_add_2_12.INIT1 = 16'h5aaa;
    defparam sub_1044_add_2_12.INJECT1_0 = "NO";
    defparam sub_1044_add_2_12.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7574), .COUT(n7575), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_11.INJECT1_0 = "NO";
    defparam counter_1276_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_10 (.A0(counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7471), .COUT(n7472));
    defparam sub_1044_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_1044_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_1044_add_2_10.INJECT1_0 = "NO";
    defparam sub_1044_add_2_10.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7573), .COUT(n7574), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_9.INJECT1_0 = "NO";
    defparam counter_1276_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7572), .COUT(n7573), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_7.INJECT1_0 = "NO";
    defparam counter_1276_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_8 (.A0(counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7470), .COUT(n7471));
    defparam sub_1044_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1044_add_2_8.INIT1 = 16'h5aaa;
    defparam sub_1044_add_2_8.INJECT1_0 = "NO";
    defparam sub_1044_add_2_8.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7571), .COUT(n7572), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_5.INJECT1_0 = "NO";
    defparam counter_1276_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_6 (.A0(counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7469), .COUT(n7470));
    defparam sub_1044_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_1044_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_1044_add_2_6.INJECT1_0 = "NO";
    defparam sub_1044_add_2_6.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7570), .COUT(n7571), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_3.INJECT1_0 = "NO";
    defparam counter_1276_add_4_3.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_4 (.A0(counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7468), .COUT(n7469));
    defparam sub_1044_add_2_4.INIT0 = 16'h5555;
    defparam sub_1044_add_2_4.INIT1 = 16'h5555;
    defparam sub_1044_add_2_4.INJECT1_0 = "NO";
    defparam sub_1044_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_2 (.A0(counter[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7468));
    defparam sub_1044_add_2_2.INIT0 = 16'h5000;
    defparam sub_1044_add_2_2.INIT1 = 16'h5555;
    defparam sub_1044_add_2_2.INJECT1_0 = "NO";
    defparam sub_1044_add_2_2.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7570), .S1(n133[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_1.INIT0 = 16'hF000;
    defparam counter_1276_add_4_1.INIT1 = 16'h0555;
    defparam counter_1276_add_4_1.INJECT1_0 = "NO";
    defparam counter_1276_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_1276__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i0.GSR = "ENABLED";
    LUT4 clkout_I_0_2_lut (.A(clk_DB), .B(counter_31__N_87), .Z(clkout_N_120)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    FD1S3IX counter_1276__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i1.GSR = "ENABLED";
    FD1S3IX counter_1276__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i2.GSR = "ENABLED";
    FD1S3IX counter_1276__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i3.GSR = "ENABLED";
    FD1S3IX counter_1276__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i4.GSR = "ENABLED";
    FD1S3IX counter_1276__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i5.GSR = "ENABLED";
    FD1S3IX counter_1276__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i6.GSR = "ENABLED";
    FD1S3IX counter_1276__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i7.GSR = "ENABLED";
    FD1S3IX counter_1276__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i8.GSR = "ENABLED";
    FD1S3IX counter_1276__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i9.GSR = "ENABLED";
    FD1S3IX counter_1276__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i10.GSR = "ENABLED";
    FD1S3IX counter_1276__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i11.GSR = "ENABLED";
    FD1S3IX counter_1276__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i12.GSR = "ENABLED";
    FD1S3IX counter_1276__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i13.GSR = "ENABLED";
    FD1S3IX counter_1276__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i14.GSR = "ENABLED";
    FD1S3IX counter_1276__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i15.GSR = "ENABLED";
    FD1S3IX counter_1276__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i16.GSR = "ENABLED";
    FD1S3IX counter_1276__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i17.GSR = "ENABLED";
    FD1S3IX counter_1276__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i18.GSR = "ENABLED";
    FD1S3IX counter_1276__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i19.GSR = "ENABLED";
    FD1S3IX counter_1276__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i20.GSR = "ENABLED";
    FD1S3IX counter_1276__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i21.GSR = "ENABLED";
    FD1S3IX counter_1276__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i22.GSR = "ENABLED";
    FD1S3IX counter_1276__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i23.GSR = "ENABLED";
    FD1S3IX counter_1276__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i24.GSR = "ENABLED";
    FD1S3IX counter_1276__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i25.GSR = "ENABLED";
    FD1S3IX counter_1276__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i26.GSR = "ENABLED";
    FD1S3IX counter_1276__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i27.GSR = "ENABLED";
    FD1S3IX counter_1276__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i28.GSR = "ENABLED";
    FD1S3IX counter_1276__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i29.GSR = "ENABLED";
    FD1S3IX counter_1276__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i30.GSR = "ENABLED";
    FD1S3IX counter_1276__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_87), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276__i31.GSR = "ENABLED";
    CCU2D counter_1276_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7585), .S0(n133[31]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_33.INIT1 = 16'h0000;
    defparam counter_1276_add_4_33.INJECT1_0 = "NO";
    defparam counter_1276_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7584), .COUT(n7585), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_31.INJECT1_0 = "NO";
    defparam counter_1276_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7583), .COUT(n7584), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_29.INJECT1_0 = "NO";
    defparam counter_1276_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_1276_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7582), .COUT(n7583), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_1276_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1276_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1276_add_4_27.INJECT1_0 = "NO";
    defparam counter_1276_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1044_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7483), .S0(counter_31__N_87));
    defparam sub_1044_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1044_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1044_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1044_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CD_config
//

module CD_config (\baudrate[9] , clk_c, clk_c_enable_230, \baudrate[0] , 
            \resolution[2] , \c_data[0] , c_VGA_ready, clk_VGA, n4925, 
            c_UART_ready, c_valid_N_786, n8831, n8804, \c_data[1] , 
            \c_data[2] , \baudrate[7] , n8875, c_addr, n8878, c_valid, 
            n8657, c_ready_nxt_N_907, n8827, \c_data[1]_derived_1 , 
            \resolution[3] , \H_BackPorch_nxt_7__N_775[5] , \resolution[1] , 
            n8890, \baudrate[8] , \baudrate_next_23__N_264[8] , \baudrate[6] , 
            \baudrate[3] , \baudrate[2] , \baudrate_next_23__N_264[2] , 
            \baudrate[1] , \baudrate_next_23__N_264[1] , \resolution[0] , 
            n8839, \baudrate[11] , n4090, \baudrate[4] , \baudrate[12] , 
            \baudrate[5] ) /* synthesis syn_module_defined=1 */ ;
    output \baudrate[9] ;
    input clk_c;
    output clk_c_enable_230;
    output \baudrate[0] ;
    output \resolution[2] ;
    input \c_data[0] ;
    output c_VGA_ready;
    input clk_VGA;
    input n4925;
    output c_UART_ready;
    input c_valid_N_786;
    input n8831;
    input n8804;
    input \c_data[1] ;
    input \c_data[2] ;
    output \baudrate[7] ;
    input n8875;
    input [3:0]c_addr;
    output n8878;
    input c_valid;
    input n8657;
    output c_ready_nxt_N_907;
    output n8827;
    input \c_data[1]_derived_1 ;
    output \resolution[3] ;
    input \H_BackPorch_nxt_7__N_775[5] ;
    output \resolution[1] ;
    input n8890;
    output \baudrate[8] ;
    input \baudrate_next_23__N_264[8] ;
    output \baudrate[6] ;
    output \baudrate[3] ;
    output \baudrate[2] ;
    input \baudrate_next_23__N_264[2] ;
    output \baudrate[1] ;
    input \baudrate_next_23__N_264[1] ;
    output \resolution[0] ;
    output n8839;
    output \baudrate[11] ;
    input n4090;
    output \baudrate[4] ;
    output \baudrate[12] ;
    output \baudrate[5] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(33[6:13])
    
    wire n4091;
    wire [23:0]baudrate_next_23__N_264;
    
    wire clk_c_enable_212, n7678, n8844, n4092, n4093, n8859, n4087, 
        n4088;
    
    FD1P3IX baudrate_reg_i0_i9 (.D(baudrate_next_23__N_264[6]), .SP(clk_c_enable_230), 
            .CD(n4091), .CK(clk_c), .Q(\baudrate[9] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i9.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i0 (.D(baudrate_next_23__N_264[0]), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i0.GSR = "ENABLED";
    FD1P3IX resolution_reg_i0_i2 (.D(\c_data[0] ), .SP(clk_c_enable_212), 
            .CD(n7678), .CK(clk_c), .Q(\resolution[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i2.GSR = "ENABLED";
    FD1S3JX c_VGA_ready_reg_27 (.D(n4925), .CK(clk_VGA), .PD(n8844), .Q(c_VGA_ready)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_VGA_ready_reg_27.GSR = "ENABLED";
    FD1S3JX c_UART_ready_reg_28 (.D(n8831), .CK(clk_VGA), .PD(c_valid_N_786), 
            .Q(c_UART_ready)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_UART_ready_reg_28.GSR = "ENABLED";
    LUT4 i3100_2_lut_4_lut (.A(n8804), .B(\c_data[1] ), .C(n8831), .D(\c_data[2] ), 
         .Z(n4091)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3100_2_lut_4_lut.init = 16'h0200;
    FD1P3JX baudrate_reg_i0_i7 (.D(n8875), .SP(clk_c_enable_230), .PD(n4092), 
            .CK(clk_c), .Q(\baudrate[7] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i7.GSR = "ENABLED";
    LUT4 i2_4_lut_rep_238 (.A(n8804), .B(\c_data[1] ), .C(n8831), .D(\c_data[2] ), 
         .Z(clk_c_enable_230)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i2_4_lut_rep_238.init = 16'h020a;
    LUT4 i3102_2_lut_2_lut_3_lut (.A(n8804), .B(\c_data[1] ), .C(n8831), 
         .Z(n4093)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i3102_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_219 (.A(c_addr[2]), .B(c_addr[3]), .Z(n8878)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_2_lut_rep_219.init = 16'hbbbb;
    LUT4 n8658_bdd_2_lut_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_valid), 
         .D(n8657), .Z(c_ready_nxt_N_907)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam n8658_bdd_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i4061_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(baudrate_next_23__N_264[6])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i4061_2_lut.init = 16'hbbbb;
    LUT4 i7259_2_lut (.A(\c_data[0] ), .B(\c_data[2] ), .Z(baudrate_next_23__N_264[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7259_2_lut.init = 16'h1111;
    LUT4 i3101_2_lut_4_lut (.A(n8804), .B(\c_data[1] ), .C(n8831), .D(\c_data[2] ), 
         .Z(n4092)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3101_2_lut_4_lut.init = 16'h0008;
    LUT4 i3856_2_lut_rep_168_4_lut (.A(n8878), .B(c_addr[1]), .C(c_addr[0]), 
         .D(c_valid), .Z(n8827)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i3856_2_lut_rep_168_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(\c_data[1]_derived_1 ), .B(n8844), .C(n8804), .D(n8831), 
         .Z(clk_c_enable_212)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i1_2_lut (.A(\c_data[1] ), .B(clk_c_enable_212), .Z(n7678)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AY resolution_reg_i0_i3 (.D(\H_BackPorch_nxt_7__N_775[5] ), .SP(clk_c_enable_212), 
            .CK(clk_c), .Q(\resolution[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX resolution_reg_i0_i1 (.D(n8890), .SP(clk_c_enable_212), .CK(clk_c), 
            .Q(\resolution[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i1.GSR = "ENABLED";
    LUT4 mux_10_Mux_3_i7_3_lut (.A(\c_data[1] ), .B(\c_data[0] ), .C(\c_data[2] ), 
         .Z(baudrate_next_23__N_264[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam mux_10_Mux_3_i7_3_lut.init = 16'hcaca;
    FD1P3AY baudrate_reg_i0_i8 (.D(\baudrate_next_23__N_264[8] ), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[8] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i6 (.D(baudrate_next_23__N_264[6]), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i3 (.D(baudrate_next_23__N_264[3]), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i2 (.D(\baudrate_next_23__N_264[2] ), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i1 (.D(\baudrate_next_23__N_264[1] ), .SP(clk_c_enable_230), 
            .CK(clk_c), .Q(\baudrate[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i1.GSR = "ENABLED";
    FD1P3JX resolution_reg_i0_i0 (.D(n8875), .SP(clk_c_enable_212), .PD(n7678), 
            .CK(clk_c), .Q(\resolution[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam resolution_reg_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_180_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_valid), 
         .D(c_addr[1]), .Z(n8839)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_3_lut_rep_180_4_lut.init = 16'h0400;
    LUT4 i3032_2_lut_rep_200 (.A(\c_data[1] ), .B(\c_data[2] ), .Z(n8859)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i3032_2_lut_rep_200.init = 16'heeee;
    LUT4 i3096_1_lut_2_lut (.A(\c_data[1] ), .B(\c_data[2] ), .Z(n4087)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i3096_1_lut_2_lut.init = 16'h1111;
    FD1P3IX baudrate_reg_i0_i11 (.D(n4087), .SP(clk_c_enable_230), .CD(n4090), 
            .CK(clk_c), .Q(\baudrate[11] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i11.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_185_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(n8844)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i2_3_lut_rep_185_4_lut.init = 16'hfffb;
    FD1P3JX baudrate_reg_i0_i4 (.D(n8859), .SP(clk_c_enable_230), .PD(n4088), 
            .CK(clk_c), .Q(\baudrate[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i4.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i12 (.D(n4087), .SP(clk_c_enable_230), .CD(n4088), 
            .CK(clk_c), .Q(\baudrate[12] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i12.GSR = "ENABLED";
    LUT4 i3097_2_lut (.A(clk_c_enable_230), .B(\c_data[0] ), .Z(n4088)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam i3097_2_lut.init = 16'h8888;
    FD1P3JX baudrate_reg_i0_i5 (.D(n8875), .SP(clk_c_enable_230), .PD(n4093), 
            .CK(clk_c), .Q(\baudrate[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=8) 
//

module \Sync_Reg(SIZE=8)  (clk_c, UART_out, UART_out_data, clk_UART, 
            UART_info_empty, clk_LM, n9131, counter_31__N_87, \counter_23__N_180[14] , 
            n1947, UART_valid_out, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [7:0]UART_out;
    output [7:0]UART_out_data;
    input clk_UART;
    output UART_info_empty;
    input clk_LM;
    input n9131;
    input counter_31__N_87;
    input \counter_23__N_180[14] ;
    input n1947;
    input UART_valid_out;
    input button_signal_DEBUG_UART;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(34[6:14])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:12])
    wire [7:0]w_data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_c_enable_205, clk_c_enable_189, w_empty_reg, n8871, clk_LM_enable_2;
    
    FD1P3AX w_data_reg_i0_i0 (.D(UART_out[0]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    FD1S3AY w_empty_reg_21 (.D(n8871), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n9131), .SP(clk_LM_enable_2), .CK(clk_LM), 
            .Q(UART_info_empty)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    LUT4 i7215_2_lut_3_lut_4_lut (.A(w_empty_reg), .B(n8871), .C(counter_31__N_87), 
         .D(clk_LM), .Z(clk_c_enable_189)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i7215_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i463_2_lut_3_lut_4_lut_4_lut (.A(n8871), .B(clk_UART), .C(\counter_23__N_180[14] ), 
         .D(n1947), .Z(clk_c_enable_205)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i463_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    FD1P3AX r_data_reg_i0_i7 (.D(w_data_reg[7]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i6 (.D(w_data_reg[6]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i5 (.D(w_data_reg[5]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i4 (.D(w_data_reg[4]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_189), 
            .CK(clk_c), .Q(UART_out_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i7 (.D(UART_out[7]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i6 (.D(UART_out[6]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i5 (.D(UART_out[5]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i4 (.D(UART_out[4]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(UART_out[3]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i2 (.D(UART_out[2]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_out[1]), .SP(clk_c_enable_205), .CK(clk_c), 
            .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=53, LSE_LLINE=117, LSE_RLINE=120 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i7153_2_lut_rep_212 (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .Z(n8871)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7153_2_lut_rep_212.init = 16'h7777;
    LUT4 i7156_2_lut_rep_183_3_lut (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .C(w_empty_reg), .Z(clk_LM_enable_2)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i7156_2_lut_rep_183_3_lut.init = 16'h0707;
    
endmodule
