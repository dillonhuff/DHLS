module channel_reduce_4(input [0:0] clk, input [0:0] rst, output [31:0] out_in_data, output [0:0] out_read_valid, output [0:0] out_rst, output [0:0] out_write_valid, input [31:0] out_out_data, input [0:0] out_read_ready, input [0:0] out_write_ready, output [0:0] valid, output [31:0] in_in_data, output [0:0] in_read_valid, output [0:0] in_rst, output [0:0] in_write_valid, input [31:0] in_out_data, input [0:0] in_read_ready, input [0:0] in_write_ready);

	reg [31:0] out_in_data_reg;
	reg [0:0] out_read_valid_reg;
	reg [0:0] out_rst_reg;
	reg [0:0] out_write_valid_reg;
	reg [0:0] valid_reg;
	reg [31:0] in_in_data_reg;
	reg [0:0] in_read_valid_reg;
	reg [0:0] in_rst_reg;
	reg [0:0] in_write_valid_reg;

	assign out_in_data = out_in_data_reg;
	assign out_read_valid = out_read_valid_reg;
	assign out_rst = out_rst_reg;
	assign out_write_valid = out_write_valid_reg;
	assign valid = valid_reg;
	assign in_in_data = in_in_data_reg;
	assign in_read_valid = in_read_valid_reg;
	assign in_rst = in_rst_reg;
	assign in_write_valid = in_write_valid_reg;

	// Start debug wires and ports

	initial begin
	end





	// End debug wires and ports

	// Start Functional Units
	reg [31:0] raddr_ram_0_reg;
	reg [31:0] waddr_ram_0_reg;
	reg [31:0] wdata_ram_0_reg;
	reg [0:0] wen_ram_0_reg;
	wire [31:0] rdata_ram_0;
	register #(.WIDTH(32)) ram_0(.clk(clk), .raddr(raddr_ram_0_reg), .rdata(rdata_ram_0), .rst(rst), .waddr(waddr_ram_0_reg), .wdata(wdata_ram_0_reg), .wen(wen_ram_0_reg));

	add call_18();

	add alloca_0();

	add bitcast_1();

	add call_2();

	br_dummy br_unit();

	add call_19();

	reg [63:0] phi_in_phi_5;
	reg [31:0] phi_last_block_phi_5;
	reg [63:0] phi_s_phi_5;
	wire [31:0] phi_out_phi_5;
	phi #(.NB_PAIR(2), .WIDTH(32)) phi_5(.in(phi_in_phi_5), .last_block(phi_last_block_phi_5), .out(phi_out_phi_5), .s(phi_s_phi_5));

	reg [31:0] add_in0_add_12;
	reg [31:0] add_in1_add_12;
	wire [31:0] add_out_add_12;
	add #(.WIDTH(32)) add_add_12(.in0(add_in0_add_12), .in1(add_in1_add_12), .out(add_out_add_12));

	reg [31:0] add_in0_add_7;
	reg [31:0] add_in1_add_7;
	wire [31:0] add_out_add_7;
	add #(.WIDTH(32)) add_add_7(.in0(add_in0_add_7), .in1(add_in1_add_7), .out(add_out_add_7));

	reg [31:0] cmp_in0_icmp_8;
	reg [31:0] cmp_in1_icmp_8;
	wire [0:0] cmp_out_icmp_8;
	eq #(.WIDTH(32)) icmp_8(.in0(cmp_in0_icmp_8), .in1(cmp_in1_icmp_8), .out(cmp_out_icmp_8));

	add call_10();

	reg [0:0] bb_0_active_in_data;
	wire [0:0] bb_0_active_out_data;
	hls_wire #(.WIDTH(1)) bb_0_active(.in_data(bb_0_active_in_data), .out_data(bb_0_active_out_data));

	reg [31:0] eq_0_in0;
	reg [31:0] eq_0_in1;
	wire [0:0] eq_0_out;
	eq #(.WIDTH(32)) eq_0(.in0(eq_0_in0), .in1(eq_0_in1), .out(eq_0_out));

	reg [0:0] andOp_1_in0;
	reg [0:0] andOp_1_in1;
	wire [0:0] andOp_1_out;
	andOp #(.WIDTH(1)) andOp_1(.in0(andOp_1_in0), .in1(andOp_1_in1), .out(andOp_1_out));

	reg [0:0] andOp_2_in0;
	reg [0:0] andOp_2_in1;
	wire [0:0] andOp_2_out;
	andOp #(.WIDTH(1)) andOp_2(.in0(andOp_2_in0), .in1(andOp_2_in1), .out(andOp_2_out));

	reg [0:0] br_0_happened_in_data;
	wire [0:0] br_0_happened_out_data;
	hls_wire #(.WIDTH(1)) br_0_happened(.in_data(br_0_happened_in_data), .out_data(br_0_happened_out_data));

	reg [0:0] notOp_3_in0;
	wire [0:0] notOp_3_out;
	notOp #(.WIDTH(1)) notOp_3(.in(notOp_3_in0), .out(notOp_3_out));

	reg [0:0] bb_1_active_in_data;
	wire [0:0] bb_1_active_out_data;
	hls_wire #(.WIDTH(1)) bb_1_active(.in_data(bb_1_active_in_data), .out_data(bb_1_active_out_data));

	reg [0:0] bb_2_active_in_data;
	wire [0:0] bb_2_active_out_data;
	hls_wire #(.WIDTH(1)) bb_2_active(.in_data(bb_2_active_in_data), .out_data(bb_2_active_out_data));

	reg [31:0] eq_4_in0;
	reg [31:0] eq_4_in1;
	wire [0:0] eq_4_out;
	eq #(.WIDTH(32)) eq_4(.in0(eq_4_in0), .in1(eq_4_in1), .out(eq_4_out));

	reg [0:0] andOp_5_in0;
	reg [0:0] andOp_5_in1;
	wire [0:0] andOp_5_out;
	andOp #(.WIDTH(1)) andOp_5(.in0(andOp_5_in0), .in1(andOp_5_in1), .out(andOp_5_out));

	reg [0:0] andOp_6_in0;
	reg [0:0] andOp_6_in1;
	wire [0:0] andOp_6_out;
	andOp #(.WIDTH(1)) andOp_6(.in0(andOp_6_in0), .in1(andOp_6_in1), .out(andOp_6_out));

	reg [0:0] br_2_happened_in_data;
	wire [0:0] br_2_happened_out_data;
	hls_wire #(.WIDTH(1)) br_2_happened(.in_data(br_2_happened_in_data), .out_data(br_2_happened_out_data));

	reg [0:0] notOp_7_in0;
	wire [0:0] notOp_7_out;
	notOp #(.WIDTH(1)) notOp_7(.in(notOp_7_in0), .out(notOp_7_out));

	reg [0:0] andOp_8_in0;
	reg [0:0] andOp_8_in1;
	wire [0:0] andOp_8_out;
	andOp #(.WIDTH(1)) andOp_8(.in0(andOp_8_in0), .in1(andOp_8_in1), .out(andOp_8_out));

	reg [0:0] notOp_9_in0;
	wire [0:0] notOp_9_out;
	notOp #(.WIDTH(1)) notOp_9(.in(notOp_9_in0), .out(notOp_9_out));

	reg [0:0] andOp_10_in0;
	reg [0:0] andOp_10_in1;
	wire [0:0] andOp_10_out;
	andOp #(.WIDTH(1)) andOp_10(.in0(andOp_10_in0), .in1(andOp_10_in1), .out(andOp_10_out));

	reg [31:0] eq_11_in0;
	reg [31:0] eq_11_in1;
	wire [0:0] eq_11_out;
	eq #(.WIDTH(32)) eq_11(.in0(eq_11_in0), .in1(eq_11_in1), .out(eq_11_out));

	reg [31:0] eq_12_in0;
	reg [31:0] eq_12_in1;
	wire [0:0] eq_12_out;
	eq #(.WIDTH(32)) eq_12(.in0(eq_12_in0), .in1(eq_12_in1), .out(eq_12_out));

	reg [31:0] eq_13_in0;
	reg [31:0] eq_13_in1;
	wire [0:0] eq_13_out;
	eq #(.WIDTH(32)) eq_13(.in0(eq_13_in0), .in1(eq_13_in1), .out(eq_13_out));

	reg [31:0] eq_14_in0;
	reg [31:0] eq_14_in1;
	wire [0:0] eq_14_out;
	eq #(.WIDTH(32)) eq_14(.in0(eq_14_in0), .in1(eq_14_in1), .out(eq_14_out));

	reg [0:0] andOp_15_in0;
	reg [0:0] andOp_15_in1;
	wire [0:0] andOp_15_out;
	andOp #(.WIDTH(1)) andOp_15(.in0(andOp_15_in0), .in1(andOp_15_in1), .out(andOp_15_out));

	reg [31:0] eq_16_in0;
	reg [31:0] eq_16_in1;
	wire [0:0] eq_16_out;
	eq #(.WIDTH(32)) eq_16(.in0(eq_16_in0), .in1(eq_16_in1), .out(eq_16_out));

	reg [0:0] andOp_17_in0;
	reg [0:0] andOp_17_in1;
	wire [0:0] andOp_17_out;
	andOp #(.WIDTH(1)) andOp_17(.in0(andOp_17_in0), .in1(andOp_17_in1), .out(andOp_17_out));

	reg [31:0] eq_18_in0;
	reg [31:0] eq_18_in1;
	wire [0:0] eq_18_out;
	eq #(.WIDTH(32)) eq_18(.in0(eq_18_in0), .in1(eq_18_in1), .out(eq_18_out));

	reg [0:0] andOp_19_in0;
	reg [0:0] andOp_19_in1;
	wire [0:0] andOp_19_out;
	andOp #(.WIDTH(1)) andOp_19(.in0(andOp_19_in0), .in1(andOp_19_in1), .out(andOp_19_out));

	reg [31:0] eq_20_in0;
	reg [31:0] eq_20_in1;
	wire [0:0] eq_20_out;
	eq #(.WIDTH(32)) eq_20(.in0(eq_20_in0), .in1(eq_20_in1), .out(eq_20_out));

	reg [0:0] andOp_21_in0;
	reg [0:0] andOp_21_in1;
	wire [0:0] andOp_21_out;
	andOp #(.WIDTH(1)) andOp_21(.in0(andOp_21_in0), .in1(andOp_21_in1), .out(andOp_21_out));

	reg [31:0] eq_22_in0;
	reg [31:0] eq_22_in1;
	wire [0:0] eq_22_out;
	eq #(.WIDTH(32)) eq_22(.in0(eq_22_in0), .in1(eq_22_in1), .out(eq_22_out));

	reg [0:0] andOp_23_in0;
	reg [0:0] andOp_23_in1;
	wire [0:0] andOp_23_out;
	andOp #(.WIDTH(1)) andOp_23(.in0(andOp_23_in0), .in1(andOp_23_in1), .out(andOp_23_out));

	reg [31:0] eq_24_in0;
	reg [31:0] eq_24_in1;
	wire [0:0] eq_24_out;
	eq #(.WIDTH(32)) eq_24(.in0(eq_24_in0), .in1(eq_24_in1), .out(eq_24_out));

	reg [0:0] andOp_25_in0;
	reg [0:0] andOp_25_in1;
	wire [0:0] andOp_25_out;
	andOp #(.WIDTH(1)) andOp_25(.in0(andOp_25_in0), .in1(andOp_25_in1), .out(andOp_25_out));

	reg [31:0] eq_26_in0;
	reg [31:0] eq_26_in1;
	wire [0:0] eq_26_out;
	eq #(.WIDTH(32)) eq_26(.in0(eq_26_in0), .in1(eq_26_in1), .out(eq_26_out));

	reg [0:0] andOp_27_in0;
	reg [0:0] andOp_27_in1;
	wire [0:0] andOp_27_out;
	andOp #(.WIDTH(1)) andOp_27(.in0(andOp_27_in0), .in1(andOp_27_in1), .out(andOp_27_out));

	reg [31:0] bb_0_predecessor_in_data;
	wire [31:0] bb_0_predecessor_out_data;
	hls_wire #(.WIDTH(32)) bb_0_predecessor(.in_data(bb_0_predecessor_in_data), .out_data(bb_0_predecessor_out_data));

	reg [31:0] eq_28_in0;
	reg [31:0] eq_28_in1;
	wire [0:0] eq_28_out;
	eq #(.WIDTH(32)) eq_28(.in0(eq_28_in0), .in1(eq_28_in1), .out(eq_28_out));

	reg [31:0] bb_1_predecessor_in_data;
	wire [31:0] bb_1_predecessor_out_data;
	hls_wire #(.WIDTH(32)) bb_1_predecessor(.in_data(bb_1_predecessor_in_data), .out_data(bb_1_predecessor_out_data));

	reg [31:0] eq_29_in0;
	reg [31:0] eq_29_in1;
	wire [0:0] eq_29_out;
	eq #(.WIDTH(32)) eq_29(.in0(eq_29_in0), .in1(eq_29_in1), .out(eq_29_out));

	reg [31:0] bb_2_predecessor_in_data;
	wire [31:0] bb_2_predecessor_out_data;
	hls_wire #(.WIDTH(32)) bb_2_predecessor(.in_data(bb_2_predecessor_in_data), .out_data(bb_2_predecessor_out_data));

	reg [31:0] eq_30_in0;
	reg [31:0] eq_30_in1;
	wire [0:0] eq_30_out;
	eq #(.WIDTH(32)) eq_30(.in0(eq_30_in0), .in1(eq_30_in1), .out(eq_30_out));

	reg [31:0] eq_31_in0;
	reg [31:0] eq_31_in1;
	wire [0:0] eq_31_out;
	eq #(.WIDTH(32)) eq_31(.in0(eq_31_in0), .in1(eq_31_in1), .out(eq_31_out));

	reg [0:0] andOp_32_in0;
	reg [0:0] andOp_32_in1;
	wire [0:0] andOp_32_out;
	andOp #(.WIDTH(1)) andOp_32(.in0(andOp_32_in0), .in1(andOp_32_in1), .out(andOp_32_out));

	reg [31:0] eq_33_in0;
	reg [31:0] eq_33_in1;
	wire [0:0] eq_33_out;
	eq #(.WIDTH(32)) eq_33(.in0(eq_33_in0), .in1(eq_33_in1), .out(eq_33_out));

	reg [0:0] andOp_34_in0;
	reg [0:0] andOp_34_in1;
	wire [0:0] andOp_34_out;
	andOp #(.WIDTH(1)) andOp_34(.in0(andOp_34_in0), .in1(andOp_34_in1), .out(andOp_34_out));

	reg [31:0] eq_35_in0;
	reg [31:0] eq_35_in1;
	wire [0:0] eq_35_out;
	eq #(.WIDTH(32)) eq_35(.in0(eq_35_in0), .in1(eq_35_in1), .out(eq_35_out));

	reg [0:0] andOp_36_in0;
	reg [0:0] andOp_36_in1;
	wire [0:0] andOp_36_out;
	andOp #(.WIDTH(1)) andOp_36(.in0(andOp_36_in0), .in1(andOp_36_in1), .out(andOp_36_out));

	reg [31:0] eq_37_in0;
	reg [31:0] eq_37_in1;
	wire [0:0] eq_37_out;
	eq #(.WIDTH(32)) eq_37(.in0(eq_37_in0), .in1(eq_37_in1), .out(eq_37_out));

	reg [0:0] andOp_38_in0;
	reg [0:0] andOp_38_in1;
	wire [0:0] andOp_38_out;
	andOp #(.WIDTH(1)) andOp_38(.in0(andOp_38_in0), .in1(andOp_38_in1), .out(andOp_38_out));

	reg [31:0] eq_39_in0;
	reg [31:0] eq_39_in1;
	wire [0:0] eq_39_out;
	eq #(.WIDTH(32)) eq_39(.in0(eq_39_in0), .in1(eq_39_in1), .out(eq_39_out));

	reg [0:0] andOp_40_in0;
	reg [0:0] andOp_40_in1;
	wire [0:0] andOp_40_out;
	andOp #(.WIDTH(1)) andOp_40(.in0(andOp_40_in0), .in1(andOp_40_in1), .out(andOp_40_out));

	reg [31:0] andOp_41_in0;
	reg [31:0] andOp_41_in1;
	wire [31:0] andOp_41_out;
	andOp #(.WIDTH(32)) andOp_41(.in0(andOp_41_in0), .in1(andOp_41_in1), .out(andOp_41_out));

	reg [31:0] eq_42_in0;
	reg [31:0] eq_42_in1;
	wire [0:0] eq_42_out;
	eq #(.WIDTH(32)) eq_42(.in0(eq_42_in0), .in1(eq_42_in1), .out(eq_42_out));

	reg [0:0] andOp_43_in0;
	reg [0:0] andOp_43_in1;
	wire [0:0] andOp_43_out;
	andOp #(.WIDTH(1)) andOp_43(.in0(andOp_43_in0), .in1(andOp_43_in1), .out(andOp_43_out));

	reg [31:0] eq_44_in0;
	reg [31:0] eq_44_in1;
	wire [0:0] eq_44_out;
	eq #(.WIDTH(32)) eq_44(.in0(eq_44_in0), .in1(eq_44_in1), .out(eq_44_out));

	reg [0:0] andOp_45_in0;
	reg [0:0] andOp_45_in1;
	wire [0:0] andOp_45_out;
	andOp #(.WIDTH(1)) andOp_45(.in0(andOp_45_in0), .in1(andOp_45_in1), .out(andOp_45_out));

	reg [31:0] eq_46_in0;
	reg [31:0] eq_46_in1;
	wire [0:0] eq_46_out;
	eq #(.WIDTH(32)) eq_46(.in0(eq_46_in0), .in1(eq_46_in1), .out(eq_46_out));

	reg [0:0] andOp_47_in0;
	reg [0:0] andOp_47_in1;
	wire [0:0] andOp_47_out;
	andOp #(.WIDTH(1)) andOp_47(.in0(andOp_47_in0), .in1(andOp_47_in1), .out(andOp_47_out));

	reg [31:0] andOp_48_in0;
	reg [31:0] andOp_48_in1;
	wire [31:0] andOp_48_out;
	andOp #(.WIDTH(32)) andOp_48(.in0(andOp_48_in0), .in1(andOp_48_in1), .out(andOp_48_out));

	reg [31:0] eq_49_in0;
	reg [31:0] eq_49_in1;
	wire [0:0] eq_49_out;
	eq #(.WIDTH(32)) eq_49(.in0(eq_49_in0), .in1(eq_49_in1), .out(eq_49_out));

	reg [0:0] andOp_50_in0;
	reg [0:0] andOp_50_in1;
	wire [0:0] andOp_50_out;
	andOp #(.WIDTH(1)) andOp_50(.in0(andOp_50_in0), .in1(andOp_50_in1), .out(andOp_50_out));

	reg [31:0] andOp_51_in0;
	reg [31:0] andOp_51_in1;
	wire [31:0] andOp_51_out;
	andOp #(.WIDTH(32)) andOp_51(.in0(andOp_51_in0), .in1(andOp_51_in1), .out(andOp_51_out));

	reg [31:0] eq_52_in0;
	reg [31:0] eq_52_in1;
	wire [0:0] eq_52_out;
	eq #(.WIDTH(32)) eq_52(.in0(eq_52_in0), .in1(eq_52_in1), .out(eq_52_out));

	reg [0:0] andOp_53_in0;
	reg [0:0] andOp_53_in1;
	wire [0:0] andOp_53_out;
	andOp #(.WIDTH(1)) andOp_53(.in0(andOp_53_in0), .in1(andOp_53_in1), .out(andOp_53_out));

	reg [31:0] andOp_54_in0;
	reg [31:0] andOp_54_in1;
	wire [31:0] andOp_54_out;
	andOp #(.WIDTH(32)) andOp_54(.in0(andOp_54_in0), .in1(andOp_54_in1), .out(andOp_54_out));

	reg [31:0] eq_55_in0;
	reg [31:0] eq_55_in1;
	wire [0:0] eq_55_out;
	eq #(.WIDTH(32)) eq_55(.in0(eq_55_in0), .in1(eq_55_in1), .out(eq_55_out));

	reg [0:0] andOp_56_in0;
	reg [0:0] andOp_56_in1;
	wire [0:0] andOp_56_out;
	andOp #(.WIDTH(1)) andOp_56(.in0(andOp_56_in0), .in1(andOp_56_in1), .out(andOp_56_out));

	reg [31:0] andOp_57_in0;
	reg [31:0] andOp_57_in1;
	wire [31:0] andOp_57_out;
	andOp #(.WIDTH(32)) andOp_57(.in0(andOp_57_in0), .in1(andOp_57_in1), .out(andOp_57_out));

	reg [31:0] eq_58_in0;
	reg [31:0] eq_58_in1;
	wire [0:0] eq_58_out;
	eq #(.WIDTH(32)) eq_58(.in0(eq_58_in0), .in1(eq_58_in1), .out(eq_58_out));

	reg [0:0] andOp_59_in0;
	reg [0:0] andOp_59_in1;
	wire [0:0] andOp_59_out;
	andOp #(.WIDTH(1)) andOp_59(.in0(andOp_59_in0), .in1(andOp_59_in1), .out(andOp_59_out));

	reg [31:0] eq_60_in0;
	reg [31:0] eq_60_in1;
	wire [0:0] eq_60_out;
	eq #(.WIDTH(32)) eq_60(.in0(eq_60_in0), .in1(eq_60_in1), .out(eq_60_out));

	reg [0:0] andOp_61_in0;
	reg [0:0] andOp_61_in1;
	wire [0:0] andOp_61_out;
	andOp #(.WIDTH(1)) andOp_61(.in0(andOp_61_in0), .in1(andOp_61_in1), .out(andOp_61_out));

	reg [31:0] eq_62_in0;
	reg [31:0] eq_62_in1;
	wire [0:0] eq_62_out;
	eq #(.WIDTH(32)) eq_62(.in0(eq_62_in0), .in1(eq_62_in1), .out(eq_62_out));

	reg [0:0] andOp_63_in0;
	reg [0:0] andOp_63_in1;
	wire [0:0] andOp_63_out;
	andOp #(.WIDTH(1)) andOp_63(.in0(andOp_63_in0), .in1(andOp_63_in1), .out(andOp_63_out));

	reg [31:0] eq_64_in0;
	reg [31:0] eq_64_in1;
	wire [0:0] eq_64_out;
	eq #(.WIDTH(32)) eq_64(.in0(eq_64_in0), .in1(eq_64_in1), .out(eq_64_out));

	reg [0:0] andOp_65_in0;
	reg [0:0] andOp_65_in1;
	wire [0:0] andOp_65_out;
	andOp #(.WIDTH(1)) andOp_65(.in0(andOp_65_in0), .in1(andOp_65_in1), .out(andOp_65_out));

	reg [31:0] eq_66_in0;
	reg [31:0] eq_66_in1;
	wire [0:0] eq_66_out;
	eq #(.WIDTH(32)) eq_66(.in0(eq_66_in0), .in1(eq_66_in1), .out(eq_66_out));

	reg [0:0] andOp_67_in0;
	reg [0:0] andOp_67_in1;
	wire [0:0] andOp_67_out;
	andOp #(.WIDTH(1)) andOp_67(.in0(andOp_67_in0), .in1(andOp_67_in1), .out(andOp_67_out));

	reg [31:0] eq_68_in0;
	reg [31:0] eq_68_in1;
	wire [0:0] eq_68_out;
	eq #(.WIDTH(32)) eq_68(.in0(eq_68_in0), .in1(eq_68_in1), .out(eq_68_out));

	reg [0:0] andOp_69_in0;
	reg [0:0] andOp_69_in1;
	wire [0:0] andOp_69_out;
	andOp #(.WIDTH(1)) andOp_69(.in0(andOp_69_in0), .in1(andOp_69_in1), .out(andOp_69_out));

	reg [31:0] andOp_70_in0;
	reg [31:0] andOp_70_in1;
	wire [31:0] andOp_70_out;
	andOp #(.WIDTH(32)) andOp_70(.in0(andOp_70_in0), .in1(andOp_70_in1), .out(andOp_70_out));

	reg [31:0] eq_71_in0;
	reg [31:0] eq_71_in1;
	wire [0:0] eq_71_out;
	eq #(.WIDTH(32)) eq_71(.in0(eq_71_in0), .in1(eq_71_in1), .out(eq_71_out));

	reg [0:0] andOp_72_in0;
	reg [0:0] andOp_72_in1;
	wire [0:0] andOp_72_out;
	andOp #(.WIDTH(1)) andOp_72(.in0(andOp_72_in0), .in1(andOp_72_in1), .out(andOp_72_out));

	reg [31:0] eq_73_in0;
	reg [31:0] eq_73_in1;
	wire [0:0] eq_73_out;
	eq #(.WIDTH(32)) eq_73(.in0(eq_73_in0), .in1(eq_73_in1), .out(eq_73_out));

	reg [0:0] andOp_74_in0;
	reg [0:0] andOp_74_in1;
	wire [0:0] andOp_74_out;
	andOp #(.WIDTH(1)) andOp_74(.in0(andOp_74_in0), .in1(andOp_74_in1), .out(andOp_74_out));

	reg [31:0] eq_75_in0;
	reg [31:0] eq_75_in1;
	wire [0:0] eq_75_out;
	eq #(.WIDTH(32)) eq_75(.in0(eq_75_in0), .in1(eq_75_in1), .out(eq_75_out));

	reg [0:0] andOp_76_in0;
	reg [0:0] andOp_76_in1;
	wire [0:0] andOp_76_out;
	andOp #(.WIDTH(1)) andOp_76(.in0(andOp_76_in0), .in1(andOp_76_in1), .out(andOp_76_out));

	reg [31:0] eq_77_in0;
	reg [31:0] eq_77_in1;
	wire [0:0] eq_77_out;
	eq #(.WIDTH(32)) eq_77(.in0(eq_77_in0), .in1(eq_77_in1), .out(eq_77_out));

	reg [0:0] andOp_78_in0;
	reg [0:0] andOp_78_in1;
	wire [0:0] andOp_78_out;
	andOp #(.WIDTH(1)) andOp_78(.in0(andOp_78_in0), .in1(andOp_78_in1), .out(andOp_78_out));

	reg [31:0] eq_79_in0;
	reg [31:0] eq_79_in1;
	wire [0:0] eq_79_out;
	eq #(.WIDTH(32)) eq_79(.in0(eq_79_in0), .in1(eq_79_in1), .out(eq_79_out));

	reg [0:0] andOp_80_in0;
	reg [0:0] andOp_80_in1;
	wire [0:0] andOp_80_out;
	andOp #(.WIDTH(1)) andOp_80(.in0(andOp_80_in0), .in1(andOp_80_in1), .out(andOp_80_out));

	reg [31:0] andOp_81_in0;
	reg [31:0] andOp_81_in1;
	wire [31:0] andOp_81_out;
	andOp #(.WIDTH(32)) andOp_81(.in0(andOp_81_in0), .in1(andOp_81_in1), .out(andOp_81_out));

	reg [31:0] eq_82_in0;
	reg [31:0] eq_82_in1;
	wire [0:0] eq_82_out;
	eq #(.WIDTH(32)) eq_82(.in0(eq_82_in0), .in1(eq_82_in1), .out(eq_82_out));

	reg [0:0] andOp_83_in0;
	reg [0:0] andOp_83_in1;
	wire [0:0] andOp_83_out;
	andOp #(.WIDTH(1)) andOp_83(.in0(andOp_83_in0), .in1(andOp_83_in1), .out(andOp_83_out));

	reg [31:0] eq_84_in0;
	reg [31:0] eq_84_in1;
	wire [0:0] eq_84_out;
	eq #(.WIDTH(32)) eq_84(.in0(eq_84_in0), .in1(eq_84_in1), .out(eq_84_out));

	reg [31:0] eq_85_in0;
	reg [31:0] eq_85_in1;
	wire [0:0] eq_85_out;
	eq #(.WIDTH(32)) eq_85(.in0(eq_85_in0), .in1(eq_85_in1), .out(eq_85_out));

	reg [31:0] eq_86_in0;
	reg [31:0] eq_86_in1;
	wire [0:0] eq_86_out;
	eq #(.WIDTH(32)) eq_86(.in0(eq_86_in0), .in1(eq_86_in1), .out(eq_86_out));

	reg [31:0] eq_87_in0;
	reg [31:0] eq_87_in1;
	wire [0:0] eq_87_out;
	eq #(.WIDTH(32)) eq_87(.in0(eq_87_in0), .in1(eq_87_in1), .out(eq_87_out));

	reg [0:0] andOp_88_in0;
	reg [0:0] andOp_88_in1;
	wire [0:0] andOp_88_out;
	andOp #(.WIDTH(1)) andOp_88(.in0(andOp_88_in0), .in1(andOp_88_in1), .out(andOp_88_out));

	reg [0:0] andOp_89_in0;
	reg [0:0] andOp_89_in1;
	wire [0:0] andOp_89_out;
	andOp #(.WIDTH(1)) andOp_89(.in0(andOp_89_in0), .in1(andOp_89_in1), .out(andOp_89_out));

	reg [31:0] eq_90_in0;
	reg [31:0] eq_90_in1;
	wire [0:0] eq_90_out;
	eq #(.WIDTH(32)) eq_90(.in0(eq_90_in0), .in1(eq_90_in1), .out(eq_90_out));

	reg [31:0] andOp_91_in0;
	reg [31:0] andOp_91_in1;
	wire [31:0] andOp_91_out;
	andOp #(.WIDTH(32)) andOp_91(.in0(andOp_91_in0), .in1(andOp_91_in1), .out(andOp_91_out));

	reg [31:0] eq_92_in0;
	reg [31:0] eq_92_in1;
	wire [0:0] eq_92_out;
	eq #(.WIDTH(32)) eq_92(.in0(eq_92_in0), .in1(eq_92_in1), .out(eq_92_out));

	reg [0:0] andOp_93_in0;
	reg [0:0] andOp_93_in1;
	wire [0:0] andOp_93_out;
	andOp #(.WIDTH(1)) andOp_93(.in0(andOp_93_in0), .in1(andOp_93_in1), .out(andOp_93_out));

	reg [0:0] andOp_94_in0;
	reg [0:0] andOp_94_in1;
	wire [0:0] andOp_94_out;
	andOp #(.WIDTH(1)) andOp_94(.in0(andOp_94_in0), .in1(andOp_94_in1), .out(andOp_94_out));

	reg [31:0] eq_95_in0;
	reg [31:0] eq_95_in1;
	wire [0:0] eq_95_out;
	eq #(.WIDTH(32)) eq_95(.in0(eq_95_in0), .in1(eq_95_in1), .out(eq_95_out));

	reg [31:0] andOp_96_in0;
	reg [31:0] andOp_96_in1;
	wire [31:0] andOp_96_out;
	andOp #(.WIDTH(32)) andOp_96(.in0(andOp_96_in0), .in1(andOp_96_in1), .out(andOp_96_out));

	reg [31:0] eq_97_in0;
	reg [31:0] eq_97_in1;
	wire [0:0] eq_97_out;
	eq #(.WIDTH(32)) eq_97(.in0(eq_97_in0), .in1(eq_97_in1), .out(eq_97_out));

	reg [0:0] andOp_98_in0;
	reg [0:0] andOp_98_in1;
	wire [0:0] andOp_98_out;
	andOp #(.WIDTH(1)) andOp_98(.in0(andOp_98_in0), .in1(andOp_98_in1), .out(andOp_98_out));

	reg [0:0] andOp_99_in0;
	reg [0:0] andOp_99_in1;
	wire [0:0] andOp_99_out;
	andOp #(.WIDTH(1)) andOp_99(.in0(andOp_99_in0), .in1(andOp_99_in1), .out(andOp_99_out));

	reg [31:0] eq_100_in0;
	reg [31:0] eq_100_in1;
	wire [0:0] eq_100_out;
	eq #(.WIDTH(32)) eq_100(.in0(eq_100_in0), .in1(eq_100_in1), .out(eq_100_out));

	reg [31:0] andOp_101_in0;
	reg [31:0] andOp_101_in1;
	wire [31:0] andOp_101_out;
	andOp #(.WIDTH(32)) andOp_101(.in0(andOp_101_in0), .in1(andOp_101_in1), .out(andOp_101_out));

	reg [31:0] andOp_102_in0;
	reg [31:0] andOp_102_in1;
	wire [31:0] andOp_102_out;
	andOp #(.WIDTH(32)) andOp_102(.in0(andOp_102_in0), .in1(andOp_102_in1), .out(andOp_102_out));

	reg [31:0] eq_103_in0;
	reg [31:0] eq_103_in1;
	wire [0:0] eq_103_out;
	eq #(.WIDTH(32)) eq_103(.in0(eq_103_in0), .in1(eq_103_in1), .out(eq_103_out));

	reg [0:0] andOp_104_in0;
	reg [0:0] andOp_104_in1;
	wire [0:0] andOp_104_out;
	andOp #(.WIDTH(1)) andOp_104(.in0(andOp_104_in0), .in1(andOp_104_in1), .out(andOp_104_out));

	reg [0:0] andOp_105_in0;
	reg [0:0] andOp_105_in1;
	wire [0:0] andOp_105_out;
	andOp #(.WIDTH(1)) andOp_105(.in0(andOp_105_in0), .in1(andOp_105_in1), .out(andOp_105_out));

	reg [31:0] eq_106_in0;
	reg [31:0] eq_106_in1;
	wire [0:0] eq_106_out;
	eq #(.WIDTH(32)) eq_106(.in0(eq_106_in0), .in1(eq_106_in1), .out(eq_106_out));

	reg [31:0] andOp_107_in0;
	reg [31:0] andOp_107_in1;
	wire [31:0] andOp_107_out;
	andOp #(.WIDTH(32)) andOp_107(.in0(andOp_107_in0), .in1(andOp_107_in1), .out(andOp_107_out));

	reg [31:0] eq_108_in0;
	reg [31:0] eq_108_in1;
	wire [0:0] eq_108_out;
	eq #(.WIDTH(32)) eq_108(.in0(eq_108_in0), .in1(eq_108_in1), .out(eq_108_out));

	reg [0:0] andOp_109_in0;
	reg [0:0] andOp_109_in1;
	wire [0:0] andOp_109_out;
	andOp #(.WIDTH(1)) andOp_109(.in0(andOp_109_in0), .in1(andOp_109_in1), .out(andOp_109_out));

	reg [0:0] andOp_110_in0;
	reg [0:0] andOp_110_in1;
	wire [0:0] andOp_110_out;
	andOp #(.WIDTH(1)) andOp_110(.in0(andOp_110_in0), .in1(andOp_110_in1), .out(andOp_110_out));

	reg [31:0] eq_111_in0;
	reg [31:0] eq_111_in1;
	wire [0:0] eq_111_out;
	eq #(.WIDTH(32)) eq_111(.in0(eq_111_in0), .in1(eq_111_in1), .out(eq_111_out));

	reg [31:0] andOp_112_in0;
	reg [31:0] andOp_112_in1;
	wire [31:0] andOp_112_out;
	andOp #(.WIDTH(32)) andOp_112(.in0(andOp_112_in0), .in1(andOp_112_in1), .out(andOp_112_out));

	reg [31:0] eq_113_in0;
	reg [31:0] eq_113_in1;
	wire [0:0] eq_113_out;
	eq #(.WIDTH(32)) eq_113(.in0(eq_113_in0), .in1(eq_113_in1), .out(eq_113_out));

	reg [0:0] andOp_114_in0;
	reg [0:0] andOp_114_in1;
	wire [0:0] andOp_114_out;
	andOp #(.WIDTH(1)) andOp_114(.in0(andOp_114_in0), .in1(andOp_114_in1), .out(andOp_114_out));

	reg [0:0] andOp_115_in0;
	reg [0:0] andOp_115_in1;
	wire [0:0] andOp_115_out;
	andOp #(.WIDTH(1)) andOp_115(.in0(andOp_115_in0), .in1(andOp_115_in1), .out(andOp_115_out));

	reg [31:0] eq_116_in0;
	reg [31:0] eq_116_in1;
	wire [0:0] eq_116_out;
	eq #(.WIDTH(32)) eq_116(.in0(eq_116_in0), .in1(eq_116_in1), .out(eq_116_out));

	reg [31:0] andOp_117_in0;
	reg [31:0] andOp_117_in1;
	wire [31:0] andOp_117_out;
	andOp #(.WIDTH(32)) andOp_117(.in0(andOp_117_in0), .in1(andOp_117_in1), .out(andOp_117_out));

	reg [0:0] notOp_118_in0;
	wire [0:0] notOp_118_out;
	notOp #(.WIDTH(1)) notOp_118(.in(notOp_118_in0), .out(notOp_118_out));

	reg [31:0] eq_119_in0;
	reg [31:0] eq_119_in1;
	wire [0:0] eq_119_out;
	eq #(.WIDTH(32)) eq_119(.in0(eq_119_in0), .in1(eq_119_in1), .out(eq_119_out));

	reg [0:0] andOp_120_in0;
	reg [0:0] andOp_120_in1;
	wire [0:0] andOp_120_out;
	andOp #(.WIDTH(1)) andOp_120(.in0(andOp_120_in0), .in1(andOp_120_in1), .out(andOp_120_out));

	reg [0:0] andOp_121_in0;
	reg [0:0] andOp_121_in1;
	wire [0:0] andOp_121_out;
	andOp #(.WIDTH(1)) andOp_121(.in0(andOp_121_in0), .in1(andOp_121_in1), .out(andOp_121_out));

	reg [31:0] eq_122_in0;
	reg [31:0] eq_122_in1;
	wire [0:0] eq_122_out;
	eq #(.WIDTH(32)) eq_122(.in0(eq_122_in0), .in1(eq_122_in1), .out(eq_122_out));

	reg [31:0] andOp_123_in0;
	reg [31:0] andOp_123_in1;
	wire [31:0] andOp_123_out;
	andOp #(.WIDTH(32)) andOp_123(.in0(andOp_123_in0), .in1(andOp_123_in1), .out(andOp_123_out));

	reg [31:0] eq_124_in0;
	reg [31:0] eq_124_in1;
	wire [0:0] eq_124_out;
	eq #(.WIDTH(32)) eq_124(.in0(eq_124_in0), .in1(eq_124_in1), .out(eq_124_out));

	reg [0:0] andOp_125_in0;
	reg [0:0] andOp_125_in1;
	wire [0:0] andOp_125_out;
	andOp #(.WIDTH(1)) andOp_125(.in0(andOp_125_in0), .in1(andOp_125_in1), .out(andOp_125_out));

	reg [0:0] andOp_126_in0;
	reg [0:0] andOp_126_in1;
	wire [0:0] andOp_126_out;
	andOp #(.WIDTH(1)) andOp_126(.in0(andOp_126_in0), .in1(andOp_126_in1), .out(andOp_126_out));

	reg [31:0] eq_127_in0;
	reg [31:0] eq_127_in1;
	wire [0:0] eq_127_out;
	eq #(.WIDTH(32)) eq_127(.in0(eq_127_in0), .in1(eq_127_in1), .out(eq_127_out));

	reg [31:0] andOp_128_in0;
	reg [31:0] andOp_128_in1;
	wire [31:0] andOp_128_out;
	andOp #(.WIDTH(32)) andOp_128(.in0(andOp_128_in0), .in1(andOp_128_in1), .out(andOp_128_out));

	reg [31:0] andOp_129_in0;
	reg [31:0] andOp_129_in1;
	wire [31:0] andOp_129_out;
	andOp #(.WIDTH(32)) andOp_129(.in0(andOp_129_in0), .in1(andOp_129_in1), .out(andOp_129_out));

	reg [31:0] eq_130_in0;
	reg [31:0] eq_130_in1;
	wire [0:0] eq_130_out;
	eq #(.WIDTH(32)) eq_130(.in0(eq_130_in0), .in1(eq_130_in1), .out(eq_130_out));

	reg [0:0] andOp_131_in0;
	reg [0:0] andOp_131_in1;
	wire [0:0] andOp_131_out;
	andOp #(.WIDTH(1)) andOp_131(.in0(andOp_131_in0), .in1(andOp_131_in1), .out(andOp_131_out));

	reg [0:0] andOp_132_in0;
	reg [0:0] andOp_132_in1;
	wire [0:0] andOp_132_out;
	andOp #(.WIDTH(1)) andOp_132(.in0(andOp_132_in0), .in1(andOp_132_in1), .out(andOp_132_out));

	reg [31:0] eq_133_in0;
	reg [31:0] eq_133_in1;
	wire [0:0] eq_133_out;
	eq #(.WIDTH(32)) eq_133(.in0(eq_133_in0), .in1(eq_133_in1), .out(eq_133_out));

	reg [31:0] andOp_134_in0;
	reg [31:0] andOp_134_in1;
	wire [31:0] andOp_134_out;
	andOp #(.WIDTH(32)) andOp_134(.in0(andOp_134_in0), .in1(andOp_134_in1), .out(andOp_134_out));

	reg [31:0] eq_135_in0;
	reg [31:0] eq_135_in1;
	wire [0:0] eq_135_out;
	eq #(.WIDTH(32)) eq_135(.in0(eq_135_in0), .in1(eq_135_in1), .out(eq_135_out));

	reg [0:0] andOp_136_in0;
	reg [0:0] andOp_136_in1;
	wire [0:0] andOp_136_out;
	andOp #(.WIDTH(1)) andOp_136(.in0(andOp_136_in0), .in1(andOp_136_in1), .out(andOp_136_out));

	reg [0:0] andOp_137_in0;
	reg [0:0] andOp_137_in1;
	wire [0:0] andOp_137_out;
	andOp #(.WIDTH(1)) andOp_137(.in0(andOp_137_in0), .in1(andOp_137_in1), .out(andOp_137_out));

	reg [31:0] eq_138_in0;
	reg [31:0] eq_138_in1;
	wire [0:0] eq_138_out;
	eq #(.WIDTH(32)) eq_138(.in0(eq_138_in0), .in1(eq_138_in1), .out(eq_138_out));

	reg [31:0] andOp_139_in0;
	reg [31:0] andOp_139_in1;
	wire [31:0] andOp_139_out;
	andOp #(.WIDTH(32)) andOp_139(.in0(andOp_139_in0), .in1(andOp_139_in1), .out(andOp_139_out));

	reg [31:0] eq_140_in0;
	reg [31:0] eq_140_in1;
	wire [0:0] eq_140_out;
	eq #(.WIDTH(32)) eq_140(.in0(eq_140_in0), .in1(eq_140_in1), .out(eq_140_out));

	reg [31:0] eq_141_in0;
	reg [31:0] eq_141_in1;
	wire [0:0] eq_141_out;
	eq #(.WIDTH(32)) eq_141(.in0(eq_141_in0), .in1(eq_141_in1), .out(eq_141_out));

	reg [31:0] eq_142_in0;
	reg [31:0] eq_142_in1;
	wire [0:0] eq_142_out;
	eq #(.WIDTH(32)) eq_142(.in0(eq_142_in0), .in1(eq_142_in1), .out(eq_142_out));

	reg [31:0] eq_143_in0;
	reg [31:0] eq_143_in1;
	wire [0:0] eq_143_out;
	eq #(.WIDTH(32)) eq_143(.in0(eq_143_in0), .in1(eq_143_in1), .out(eq_143_out));

	reg [0:0] andOp_144_in0;
	reg [0:0] andOp_144_in1;
	wire [0:0] andOp_144_out;
	andOp #(.WIDTH(1)) andOp_144(.in0(andOp_144_in0), .in1(andOp_144_in1), .out(andOp_144_out));

	reg [31:0] andOp_145_in0;
	reg [31:0] andOp_145_in1;
	wire [31:0] andOp_145_out;
	andOp #(.WIDTH(32)) andOp_145(.in0(andOp_145_in0), .in1(andOp_145_in1), .out(andOp_145_out));

	reg [31:0] andOp_146_in0;
	reg [31:0] andOp_146_in1;
	wire [31:0] andOp_146_out;
	andOp #(.WIDTH(32)) andOp_146(.in0(andOp_146_in0), .in1(andOp_146_in1), .out(andOp_146_out));

	reg [31:0] eq_147_in0;
	reg [31:0] eq_147_in1;
	wire [0:0] eq_147_out;
	eq #(.WIDTH(32)) eq_147(.in0(eq_147_in0), .in1(eq_147_in1), .out(eq_147_out));

	reg [0:0] andOp_148_in0;
	reg [0:0] andOp_148_in1;
	wire [0:0] andOp_148_out;
	andOp #(.WIDTH(1)) andOp_148(.in0(andOp_148_in0), .in1(andOp_148_in1), .out(andOp_148_out));

	reg [31:0] andOp_149_in0;
	reg [31:0] andOp_149_in1;
	wire [31:0] andOp_149_out;
	andOp #(.WIDTH(32)) andOp_149(.in0(andOp_149_in0), .in1(andOp_149_in1), .out(andOp_149_out));

	reg [31:0] andOp_150_in0;
	reg [31:0] andOp_150_in1;
	wire [31:0] andOp_150_out;
	andOp #(.WIDTH(32)) andOp_150(.in0(andOp_150_in0), .in1(andOp_150_in1), .out(andOp_150_out));

	reg [31:0] eq_151_in0;
	reg [31:0] eq_151_in1;
	wire [0:0] eq_151_out;
	eq #(.WIDTH(32)) eq_151(.in0(eq_151_in0), .in1(eq_151_in1), .out(eq_151_out));

	reg [0:0] andOp_152_in0;
	reg [0:0] andOp_152_in1;
	wire [0:0] andOp_152_out;
	andOp #(.WIDTH(1)) andOp_152(.in0(andOp_152_in0), .in1(andOp_152_in1), .out(andOp_152_out));

	reg [31:0] andOp_153_in0;
	reg [31:0] andOp_153_in1;
	wire [31:0] andOp_153_out;
	andOp #(.WIDTH(32)) andOp_153(.in0(andOp_153_in0), .in1(andOp_153_in1), .out(andOp_153_out));

	reg [31:0] andOp_154_in0;
	reg [31:0] andOp_154_in1;
	wire [31:0] andOp_154_out;
	andOp #(.WIDTH(32)) andOp_154(.in0(andOp_154_in0), .in1(andOp_154_in1), .out(andOp_154_out));

	reg [31:0] eq_155_in0;
	reg [31:0] eq_155_in1;
	wire [0:0] eq_155_out;
	eq #(.WIDTH(32)) eq_155(.in0(eq_155_in0), .in1(eq_155_in1), .out(eq_155_out));

	reg [31:0] eq_156_in0;
	reg [31:0] eq_156_in1;
	wire [0:0] eq_156_out;
	eq #(.WIDTH(32)) eq_156(.in0(eq_156_in0), .in1(eq_156_in1), .out(eq_156_out));

	reg [31:0] eq_157_in0;
	reg [31:0] eq_157_in1;
	wire [0:0] eq_157_out;
	eq #(.WIDTH(32)) eq_157(.in0(eq_157_in0), .in1(eq_157_in1), .out(eq_157_out));

	reg [31:0] eq_158_in0;
	reg [31:0] eq_158_in1;
	wire [0:0] eq_158_out;
	eq #(.WIDTH(32)) eq_158(.in0(eq_158_in0), .in1(eq_158_in1), .out(eq_158_out));

	reg [31:0] eq_159_in0;
	reg [31:0] eq_159_in1;
	wire [0:0] eq_159_out;
	eq #(.WIDTH(32)) eq_159(.in0(eq_159_in0), .in1(eq_159_in1), .out(eq_159_out));

	reg [31:0] eq_160_in0;
	reg [31:0] eq_160_in1;
	wire [0:0] eq_160_out;
	eq #(.WIDTH(32)) eq_160(.in0(eq_160_in0), .in1(eq_160_in1), .out(eq_160_out));

	// End Functional Units

	reg [31:0] add_tmp_2;
	reg [31:0] global_next_block;
	reg [31:0] global_state;
	reg [0:0] icmp_tmp_3;
	reg [31:0] last_BB_reg;
	reg [31:0] load_tmp_1;

	// controller for add_add_12.add_in0_add_12
	// controller for add_add_12.add_in1_add_12
	// Insensitive connections
	always @(*) begin
		add_in0_add_12 = valid ? load_tmp_1 : load_tmp_1;
		add_in1_add_12 = valid ? in_out_data : in_out_data;
	end
	// controller for add_add_7.add_in0_add_7
	// controller for add_add_7.add_in1_add_7
	// Insensitive connections
	always @(*) begin
		add_in0_add_7 = valid ? phi_out_phi_5 : phi_out_phi_5;
		add_in1_add_7 = valid ? (32'd1) : (32'd1);
	end
	// controller for andOp_1.andOp_1_in0
	// controller for andOp_1.andOp_1_in1
	// Insensitive connections
	always @(*) begin
		andOp_1_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_1_in1 = valid ? eq_0_out : eq_0_out;
	end
	// controller for andOp_10.andOp_10_in0
	// controller for andOp_10.andOp_10_in1
	// Insensitive connections
	always @(*) begin
		andOp_10_in0 = valid ? andOp_6_out : andOp_6_out;
		andOp_10_in1 = valid ? notOp_9_out : notOp_9_out;
	end
	// controller for andOp_101.andOp_101_in0
	// controller for andOp_101.andOp_101_in1
	// Insensitive connections
	always @(*) begin
		andOp_101_in0 = valid ? eq_100_out : eq_100_out;
		andOp_101_in1 = valid ? andOp_99_out : andOp_99_out;
	end
	// controller for andOp_102.andOp_102_in0
	// controller for andOp_102.andOp_102_in1
	// Insensitive connections
	always @(*) begin
		andOp_102_in0 = valid ? andOp_101_out : andOp_101_out;
		andOp_102_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_104.andOp_104_in0
	// controller for andOp_104.andOp_104_in1
	// Insensitive connections
	always @(*) begin
		andOp_104_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_104_in1 = valid ? eq_103_out : eq_103_out;
	end
	// controller for andOp_105.andOp_105_in0
	// controller for andOp_105.andOp_105_in1
	// Insensitive connections
	always @(*) begin
		andOp_105_in0 = valid ? andOp_104_out : andOp_104_out;
		andOp_105_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_107.andOp_107_in0
	// controller for andOp_107.andOp_107_in1
	// Insensitive connections
	always @(*) begin
		andOp_107_in0 = valid ? eq_106_out : eq_106_out;
		andOp_107_in1 = valid ? andOp_105_out : andOp_105_out;
	end
	// controller for andOp_109.andOp_109_in0
	// controller for andOp_109.andOp_109_in1
	// Insensitive connections
	always @(*) begin
		andOp_109_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_109_in1 = valid ? eq_108_out : eq_108_out;
	end
	// controller for andOp_110.andOp_110_in0
	// controller for andOp_110.andOp_110_in1
	// Insensitive connections
	always @(*) begin
		andOp_110_in0 = valid ? andOp_109_out : andOp_109_out;
		andOp_110_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_112.andOp_112_in0
	// controller for andOp_112.andOp_112_in1
	// Insensitive connections
	always @(*) begin
		andOp_112_in0 = valid ? eq_111_out : eq_111_out;
		andOp_112_in1 = valid ? andOp_110_out : andOp_110_out;
	end
	// controller for andOp_114.andOp_114_in0
	// controller for andOp_114.andOp_114_in1
	// Insensitive connections
	always @(*) begin
		andOp_114_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_114_in1 = valid ? eq_113_out : eq_113_out;
	end
	// controller for andOp_115.andOp_115_in0
	// controller for andOp_115.andOp_115_in1
	// Insensitive connections
	always @(*) begin
		andOp_115_in0 = valid ? andOp_114_out : andOp_114_out;
		andOp_115_in1 = valid ? icmp_tmp_3 : icmp_tmp_3;
	end
	// controller for andOp_117.andOp_117_in0
	// controller for andOp_117.andOp_117_in1
	// Insensitive connections
	always @(*) begin
		andOp_117_in0 = valid ? eq_116_out : eq_116_out;
		andOp_117_in1 = valid ? andOp_115_out : andOp_115_out;
	end
	// controller for andOp_120.andOp_120_in0
	// controller for andOp_120.andOp_120_in1
	// Insensitive connections
	always @(*) begin
		andOp_120_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_120_in1 = valid ? eq_119_out : eq_119_out;
	end
	// controller for andOp_121.andOp_121_in0
	// controller for andOp_121.andOp_121_in1
	// Insensitive connections
	always @(*) begin
		andOp_121_in0 = valid ? andOp_120_out : andOp_120_out;
		andOp_121_in1 = valid ? notOp_118_out : notOp_118_out;
	end
	// controller for andOp_123.andOp_123_in0
	// controller for andOp_123.andOp_123_in1
	// Insensitive connections
	always @(*) begin
		andOp_123_in0 = valid ? eq_122_out : eq_122_out;
		andOp_123_in1 = valid ? andOp_121_out : andOp_121_out;
	end
	// controller for andOp_125.andOp_125_in0
	// controller for andOp_125.andOp_125_in1
	// Insensitive connections
	always @(*) begin
		andOp_125_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_125_in1 = valid ? eq_124_out : eq_124_out;
	end
	// controller for andOp_126.andOp_126_in0
	// controller for andOp_126.andOp_126_in1
	// Insensitive connections
	always @(*) begin
		andOp_126_in0 = valid ? andOp_125_out : andOp_125_out;
		andOp_126_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_128.andOp_128_in0
	// controller for andOp_128.andOp_128_in1
	// Insensitive connections
	always @(*) begin
		andOp_128_in0 = valid ? eq_127_out : eq_127_out;
		andOp_128_in1 = valid ? andOp_126_out : andOp_126_out;
	end
	// controller for andOp_129.andOp_129_in0
	// controller for andOp_129.andOp_129_in1
	// Insensitive connections
	always @(*) begin
		andOp_129_in0 = valid ? andOp_128_out : andOp_128_out;
		andOp_129_in1 = valid ? out_write_ready : out_write_ready;
	end
	// controller for andOp_131.andOp_131_in0
	// controller for andOp_131.andOp_131_in1
	// Insensitive connections
	always @(*) begin
		andOp_131_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_131_in1 = valid ? eq_130_out : eq_130_out;
	end
	// controller for andOp_132.andOp_132_in0
	// controller for andOp_132.andOp_132_in1
	// Insensitive connections
	always @(*) begin
		andOp_132_in0 = valid ? andOp_131_out : andOp_131_out;
		andOp_132_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_134.andOp_134_in0
	// controller for andOp_134.andOp_134_in1
	// Insensitive connections
	always @(*) begin
		andOp_134_in0 = valid ? eq_133_out : eq_133_out;
		andOp_134_in1 = valid ? andOp_132_out : andOp_132_out;
	end
	// controller for andOp_136.andOp_136_in0
	// controller for andOp_136.andOp_136_in1
	// Insensitive connections
	always @(*) begin
		andOp_136_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_136_in1 = valid ? eq_135_out : eq_135_out;
	end
	// controller for andOp_137.andOp_137_in0
	// controller for andOp_137.andOp_137_in1
	// Insensitive connections
	always @(*) begin
		andOp_137_in0 = valid ? andOp_136_out : andOp_136_out;
		andOp_137_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_139.andOp_139_in0
	// controller for andOp_139.andOp_139_in1
	// Insensitive connections
	always @(*) begin
		andOp_139_in0 = valid ? eq_138_out : eq_138_out;
		andOp_139_in1 = valid ? andOp_137_out : andOp_137_out;
	end
	// controller for andOp_144.andOp_144_in0
	// controller for andOp_144.andOp_144_in1
	// Insensitive connections
	always @(*) begin
		andOp_144_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_144_in1 = valid ? eq_143_out : eq_143_out;
	end
	// controller for andOp_145.andOp_145_in0
	// controller for andOp_145.andOp_145_in1
	// Insensitive connections
	always @(*) begin
		andOp_145_in0 = valid ? eq_142_out : eq_142_out;
		andOp_145_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_146.andOp_146_in0
	// controller for andOp_146.andOp_146_in1
	// Insensitive connections
	always @(*) begin
		andOp_146_in0 = valid ? andOp_145_out : andOp_145_out;
		andOp_146_in1 = valid ? andOp_144_out : andOp_144_out;
	end
	// controller for andOp_148.andOp_148_in0
	// controller for andOp_148.andOp_148_in1
	// Insensitive connections
	always @(*) begin
		andOp_148_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_148_in1 = valid ? eq_147_out : eq_147_out;
	end
	// controller for andOp_149.andOp_149_in0
	// controller for andOp_149.andOp_149_in1
	// Insensitive connections
	always @(*) begin
		andOp_149_in0 = valid ? eq_142_out : eq_142_out;
		andOp_149_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_15.andOp_15_in0
	// controller for andOp_15.andOp_15_in1
	// Insensitive connections
	always @(*) begin
		andOp_15_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_15_in1 = valid ? eq_14_out : eq_14_out;
	end
	// controller for andOp_150.andOp_150_in0
	// controller for andOp_150.andOp_150_in1
	// Insensitive connections
	always @(*) begin
		andOp_150_in0 = valid ? andOp_149_out : andOp_149_out;
		andOp_150_in1 = valid ? andOp_148_out : andOp_148_out;
	end
	// controller for andOp_152.andOp_152_in0
	// controller for andOp_152.andOp_152_in1
	// Insensitive connections
	always @(*) begin
		andOp_152_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_152_in1 = valid ? eq_151_out : eq_151_out;
	end
	// controller for andOp_153.andOp_153_in0
	// controller for andOp_153.andOp_153_in1
	// Insensitive connections
	always @(*) begin
		andOp_153_in0 = valid ? eq_142_out : eq_142_out;
		andOp_153_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_154.andOp_154_in0
	// controller for andOp_154.andOp_154_in1
	// Insensitive connections
	always @(*) begin
		andOp_154_in0 = valid ? andOp_153_out : andOp_153_out;
		andOp_154_in1 = valid ? andOp_152_out : andOp_152_out;
	end
	// controller for andOp_17.andOp_17_in0
	// controller for andOp_17.andOp_17_in1
	// Insensitive connections
	always @(*) begin
		andOp_17_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_17_in1 = valid ? eq_16_out : eq_16_out;
	end
	// controller for andOp_19.andOp_19_in0
	// controller for andOp_19.andOp_19_in1
	// Insensitive connections
	always @(*) begin
		andOp_19_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_19_in1 = valid ? eq_18_out : eq_18_out;
	end
	// controller for andOp_2.andOp_2_in0
	// controller for andOp_2.andOp_2_in1
	// Insensitive connections
	always @(*) begin
		andOp_2_in0 = valid ? andOp_1_out : andOp_1_out;
		andOp_2_in1 = valid ? 1 : 1;
	end
	// controller for andOp_21.andOp_21_in0
	// controller for andOp_21.andOp_21_in1
	// Insensitive connections
	always @(*) begin
		andOp_21_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_21_in1 = valid ? eq_20_out : eq_20_out;
	end
	// controller for andOp_23.andOp_23_in0
	// controller for andOp_23.andOp_23_in1
	// Insensitive connections
	always @(*) begin
		andOp_23_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_23_in1 = valid ? eq_22_out : eq_22_out;
	end
	// controller for andOp_25.andOp_25_in0
	// controller for andOp_25.andOp_25_in1
	// Insensitive connections
	always @(*) begin
		andOp_25_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_25_in1 = valid ? eq_24_out : eq_24_out;
	end
	// controller for andOp_27.andOp_27_in0
	// controller for andOp_27.andOp_27_in1
	// Insensitive connections
	always @(*) begin
		andOp_27_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_27_in1 = valid ? eq_26_out : eq_26_out;
	end
	// controller for andOp_32.andOp_32_in0
	// controller for andOp_32.andOp_32_in1
	// Insensitive connections
	always @(*) begin
		andOp_32_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_32_in1 = valid ? eq_31_out : eq_31_out;
	end
	// controller for andOp_34.andOp_34_in0
	// controller for andOp_34.andOp_34_in1
	// Insensitive connections
	always @(*) begin
		andOp_34_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_34_in1 = valid ? eq_33_out : eq_33_out;
	end
	// controller for andOp_36.andOp_36_in0
	// controller for andOp_36.andOp_36_in1
	// Insensitive connections
	always @(*) begin
		andOp_36_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_36_in1 = valid ? eq_35_out : eq_35_out;
	end
	// controller for andOp_38.andOp_38_in0
	// controller for andOp_38.andOp_38_in1
	// Insensitive connections
	always @(*) begin
		andOp_38_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_38_in1 = valid ? eq_37_out : eq_37_out;
	end
	// controller for andOp_40.andOp_40_in0
	// controller for andOp_40.andOp_40_in1
	// Insensitive connections
	always @(*) begin
		andOp_40_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_40_in1 = valid ? eq_39_out : eq_39_out;
	end
	// controller for andOp_41.andOp_41_in0
	// controller for andOp_41.andOp_41_in1
	// Insensitive connections
	always @(*) begin
		andOp_41_in0 = valid ? in_read_ready : in_read_ready;
		andOp_41_in1 = valid ? andOp_40_out : andOp_40_out;
	end
	// controller for andOp_43.andOp_43_in0
	// controller for andOp_43.andOp_43_in1
	// Insensitive connections
	always @(*) begin
		andOp_43_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_43_in1 = valid ? eq_42_out : eq_42_out;
	end
	// controller for andOp_45.andOp_45_in0
	// controller for andOp_45.andOp_45_in1
	// Insensitive connections
	always @(*) begin
		andOp_45_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_45_in1 = valid ? eq_44_out : eq_44_out;
	end
	// controller for andOp_47.andOp_47_in0
	// controller for andOp_47.andOp_47_in1
	// Insensitive connections
	always @(*) begin
		andOp_47_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_47_in1 = valid ? eq_46_out : eq_46_out;
	end
	// controller for andOp_48.andOp_48_in0
	// controller for andOp_48.andOp_48_in1
	// Insensitive connections
	always @(*) begin
		andOp_48_in0 = valid ? in_read_ready : in_read_ready;
		andOp_48_in1 = valid ? andOp_47_out : andOp_47_out;
	end
	// controller for andOp_5.andOp_5_in0
	// controller for andOp_5.andOp_5_in1
	// Insensitive connections
	always @(*) begin
		andOp_5_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_5_in1 = valid ? eq_4_out : eq_4_out;
	end
	// controller for andOp_50.andOp_50_in0
	// controller for andOp_50.andOp_50_in1
	// Insensitive connections
	always @(*) begin
		andOp_50_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_50_in1 = valid ? eq_49_out : eq_49_out;
	end
	// controller for andOp_51.andOp_51_in0
	// controller for andOp_51.andOp_51_in1
	// Insensitive connections
	always @(*) begin
		andOp_51_in0 = valid ? in_read_ready : in_read_ready;
		andOp_51_in1 = valid ? andOp_50_out : andOp_50_out;
	end
	// controller for andOp_53.andOp_53_in0
	// controller for andOp_53.andOp_53_in1
	// Insensitive connections
	always @(*) begin
		andOp_53_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_53_in1 = valid ? eq_52_out : eq_52_out;
	end
	// controller for andOp_54.andOp_54_in0
	// controller for andOp_54.andOp_54_in1
	// Insensitive connections
	always @(*) begin
		andOp_54_in0 = valid ? in_read_ready : in_read_ready;
		andOp_54_in1 = valid ? andOp_53_out : andOp_53_out;
	end
	// controller for andOp_56.andOp_56_in0
	// controller for andOp_56.andOp_56_in1
	// Insensitive connections
	always @(*) begin
		andOp_56_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_56_in1 = valid ? eq_55_out : eq_55_out;
	end
	// controller for andOp_57.andOp_57_in0
	// controller for andOp_57.andOp_57_in1
	// Insensitive connections
	always @(*) begin
		andOp_57_in0 = valid ? in_read_ready : in_read_ready;
		andOp_57_in1 = valid ? andOp_56_out : andOp_56_out;
	end
	// controller for andOp_59.andOp_59_in0
	// controller for andOp_59.andOp_59_in1
	// Insensitive connections
	always @(*) begin
		andOp_59_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_59_in1 = valid ? eq_58_out : eq_58_out;
	end
	// controller for andOp_6.andOp_6_in0
	// controller for andOp_6.andOp_6_in1
	// Insensitive connections
	always @(*) begin
		andOp_6_in0 = valid ? andOp_5_out : andOp_5_out;
		andOp_6_in1 = valid ? 1 : 1;
	end
	// controller for andOp_61.andOp_61_in0
	// controller for andOp_61.andOp_61_in1
	// Insensitive connections
	always @(*) begin
		andOp_61_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_61_in1 = valid ? eq_60_out : eq_60_out;
	end
	// controller for andOp_63.andOp_63_in0
	// controller for andOp_63.andOp_63_in1
	// Insensitive connections
	always @(*) begin
		andOp_63_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_63_in1 = valid ? eq_62_out : eq_62_out;
	end
	// controller for andOp_65.andOp_65_in0
	// controller for andOp_65.andOp_65_in1
	// Insensitive connections
	always @(*) begin
		andOp_65_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_65_in1 = valid ? eq_64_out : eq_64_out;
	end
	// controller for andOp_67.andOp_67_in0
	// controller for andOp_67.andOp_67_in1
	// Insensitive connections
	always @(*) begin
		andOp_67_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_67_in1 = valid ? eq_66_out : eq_66_out;
	end
	// controller for andOp_69.andOp_69_in0
	// controller for andOp_69.andOp_69_in1
	// Insensitive connections
	always @(*) begin
		andOp_69_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_69_in1 = valid ? eq_68_out : eq_68_out;
	end
	// controller for andOp_70.andOp_70_in0
	// controller for andOp_70.andOp_70_in1
	// Insensitive connections
	always @(*) begin
		andOp_70_in0 = valid ? out_write_ready : out_write_ready;
		andOp_70_in1 = valid ? andOp_69_out : andOp_69_out;
	end
	// controller for andOp_72.andOp_72_in0
	// controller for andOp_72.andOp_72_in1
	// Insensitive connections
	always @(*) begin
		andOp_72_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_72_in1 = valid ? eq_71_out : eq_71_out;
	end
	// controller for andOp_74.andOp_74_in0
	// controller for andOp_74.andOp_74_in1
	// Insensitive connections
	always @(*) begin
		andOp_74_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_74_in1 = valid ? eq_73_out : eq_73_out;
	end
	// controller for andOp_76.andOp_76_in0
	// controller for andOp_76.andOp_76_in1
	// Insensitive connections
	always @(*) begin
		andOp_76_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_76_in1 = valid ? eq_75_out : eq_75_out;
	end
	// controller for andOp_78.andOp_78_in0
	// controller for andOp_78.andOp_78_in1
	// Insensitive connections
	always @(*) begin
		andOp_78_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_78_in1 = valid ? eq_77_out : eq_77_out;
	end
	// controller for andOp_8.andOp_8_in0
	// controller for andOp_8.andOp_8_in1
	// Insensitive connections
	always @(*) begin
		andOp_8_in0 = valid ? andOp_6_out : andOp_6_out;
		andOp_8_in1 = valid ? icmp_tmp_3 : icmp_tmp_3;
	end
	// controller for andOp_80.andOp_80_in0
	// controller for andOp_80.andOp_80_in1
	// Insensitive connections
	always @(*) begin
		andOp_80_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_80_in1 = valid ? eq_79_out : eq_79_out;
	end
	// controller for andOp_81.andOp_81_in0
	// controller for andOp_81.andOp_81_in1
	// Insensitive connections
	always @(*) begin
		andOp_81_in0 = valid ? out_write_ready : out_write_ready;
		andOp_81_in1 = valid ? andOp_80_out : andOp_80_out;
	end
	// controller for andOp_83.andOp_83_in0
	// controller for andOp_83.andOp_83_in1
	// Insensitive connections
	always @(*) begin
		andOp_83_in0 = valid ? bb_1_active_out_data : bb_1_active_out_data;
		andOp_83_in1 = valid ? eq_82_out : eq_82_out;
	end
	// controller for andOp_88.andOp_88_in0
	// controller for andOp_88.andOp_88_in1
	// Insensitive connections
	always @(*) begin
		andOp_88_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_88_in1 = valid ? eq_87_out : eq_87_out;
	end
	// controller for andOp_89.andOp_89_in0
	// controller for andOp_89.andOp_89_in1
	// Insensitive connections
	always @(*) begin
		andOp_89_in0 = valid ? andOp_88_out : andOp_88_out;
		andOp_89_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_91.andOp_91_in0
	// controller for andOp_91.andOp_91_in1
	// Insensitive connections
	always @(*) begin
		andOp_91_in0 = valid ? eq_90_out : eq_90_out;
		andOp_91_in1 = valid ? andOp_89_out : andOp_89_out;
	end
	// controller for andOp_93.andOp_93_in0
	// controller for andOp_93.andOp_93_in1
	// Insensitive connections
	always @(*) begin
		andOp_93_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_93_in1 = valid ? eq_92_out : eq_92_out;
	end
	// controller for andOp_94.andOp_94_in0
	// controller for andOp_94.andOp_94_in1
	// Insensitive connections
	always @(*) begin
		andOp_94_in0 = valid ? andOp_93_out : andOp_93_out;
		andOp_94_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for andOp_96.andOp_96_in0
	// controller for andOp_96.andOp_96_in1
	// Insensitive connections
	always @(*) begin
		andOp_96_in0 = valid ? eq_95_out : eq_95_out;
		andOp_96_in1 = valid ? andOp_94_out : andOp_94_out;
	end
	// controller for andOp_98.andOp_98_in0
	// controller for andOp_98.andOp_98_in1
	// Insensitive connections
	always @(*) begin
		andOp_98_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_98_in1 = valid ? eq_97_out : eq_97_out;
	end
	// controller for andOp_99.andOp_99_in0
	// controller for andOp_99.andOp_99_in1
	// Insensitive connections
	always @(*) begin
		andOp_99_in0 = valid ? andOp_98_out : andOp_98_out;
		andOp_99_in1 = valid ? 1'd1 : 1'd1;
	end
	// controller for bb_0_active.bb_0_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_0_active_in_data = eq_11_out;
		end else begin
			bb_0_active_in_data = 0;
		end
	end
	// controller for bb_0_predecessor.bb_0_predecessor_in_data
	always @(*) begin
		if (eq_28_out) begin 
			bb_0_predecessor_in_data = last_BB_reg;
		end else begin
			bb_0_predecessor_in_data = 0;
		end
	end
	// controller for bb_1_active.bb_1_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_1_active_in_data = eq_12_out;
		end else begin
			bb_1_active_in_data = 0;
		end
	end
	// controller for bb_1_predecessor.bb_1_predecessor_in_data
	always @(*) begin
		if (eq_29_out) begin 
			bb_1_predecessor_in_data = last_BB_reg;
		end else begin
			bb_1_predecessor_in_data = 0;
		end
	end
	// controller for bb_2_active.bb_2_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_2_active_in_data = eq_13_out;
		end else begin
			bb_2_active_in_data = 0;
		end
	end
	// controller for bb_2_predecessor.bb_2_predecessor_in_data
	always @(*) begin
		if (eq_30_out) begin 
			bb_2_predecessor_in_data = last_BB_reg;
		end else begin
			bb_2_predecessor_in_data = 0;
		end
	end
	// controller for br_0_happened.br_0_happened_in_data
	always @(*) begin
		if (andOp_2_out) begin 
			br_0_happened_in_data = 1'd1;
		end else if (notOp_3_out) begin 
			br_0_happened_in_data = 1'd0;
		end else begin
			br_0_happened_in_data = 0;
		end
	end
	// controller for br_2_happened.br_2_happened_in_data
	always @(*) begin
		if (andOp_6_out) begin 
			br_2_happened_in_data = 1'd1;
		end else if (notOp_7_out) begin 
			br_2_happened_in_data = 1'd0;
		end else begin
			br_2_happened_in_data = 0;
		end
	end
	// controller for eq_0.eq_0_in0
	// controller for eq_0.eq_0_in1
	// Insensitive connections
	always @(*) begin
		eq_0_in0 = valid ? 32'd1 : 32'd1;
		eq_0_in1 = valid ? global_state : global_state;
	end
	// controller for eq_100.eq_100_in0
	// controller for eq_100.eq_100_in1
	// Insensitive connections
	always @(*) begin
		eq_100_in0 = valid ? 32'd2 : 32'd2;
		eq_100_in1 = valid ? global_state : global_state;
	end
	// controller for eq_103.eq_103_in0
	// controller for eq_103.eq_103_in1
	// Insensitive connections
	always @(*) begin
		eq_103_in0 = valid ? 32'd3 : 32'd3;
		eq_103_in1 = valid ? global_state : global_state;
	end
	// controller for eq_106.eq_106_in0
	// controller for eq_106.eq_106_in1
	// Insensitive connections
	always @(*) begin
		eq_106_in0 = valid ? 32'd3 : 32'd3;
		eq_106_in1 = valid ? global_state : global_state;
	end
	// controller for eq_108.eq_108_in0
	// controller for eq_108.eq_108_in1
	// Insensitive connections
	always @(*) begin
		eq_108_in0 = valid ? 32'd4 : 32'd4;
		eq_108_in1 = valid ? global_state : global_state;
	end
	// controller for eq_11.eq_11_in0
	// controller for eq_11.eq_11_in1
	// Insensitive connections
	always @(*) begin
		eq_11_in0 = valid ? 32'd0 : 32'd0;
		eq_11_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_111.eq_111_in0
	// controller for eq_111.eq_111_in1
	// Insensitive connections
	always @(*) begin
		eq_111_in0 = valid ? 32'd4 : 32'd4;
		eq_111_in1 = valid ? global_state : global_state;
	end
	// controller for eq_113.eq_113_in0
	// controller for eq_113.eq_113_in1
	// Insensitive connections
	always @(*) begin
		eq_113_in0 = valid ? 32'd5 : 32'd5;
		eq_113_in1 = valid ? global_state : global_state;
	end
	// controller for eq_116.eq_116_in0
	// controller for eq_116.eq_116_in1
	// Insensitive connections
	always @(*) begin
		eq_116_in0 = valid ? 32'd5 : 32'd5;
		eq_116_in1 = valid ? global_state : global_state;
	end
	// controller for eq_119.eq_119_in0
	// controller for eq_119.eq_119_in1
	// Insensitive connections
	always @(*) begin
		eq_119_in0 = valid ? 32'd5 : 32'd5;
		eq_119_in1 = valid ? global_state : global_state;
	end
	// controller for eq_12.eq_12_in0
	// controller for eq_12.eq_12_in1
	// Insensitive connections
	always @(*) begin
		eq_12_in0 = valid ? 32'd1 : 32'd1;
		eq_12_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_122.eq_122_in0
	// controller for eq_122.eq_122_in1
	// Insensitive connections
	always @(*) begin
		eq_122_in0 = valid ? 32'd5 : 32'd5;
		eq_122_in1 = valid ? global_state : global_state;
	end
	// controller for eq_124.eq_124_in0
	// controller for eq_124.eq_124_in1
	// Insensitive connections
	always @(*) begin
		eq_124_in0 = valid ? 32'd6 : 32'd6;
		eq_124_in1 = valid ? global_state : global_state;
	end
	// controller for eq_127.eq_127_in0
	// controller for eq_127.eq_127_in1
	// Insensitive connections
	always @(*) begin
		eq_127_in0 = valid ? 32'd6 : 32'd6;
		eq_127_in1 = valid ? global_state : global_state;
	end
	// controller for eq_13.eq_13_in0
	// controller for eq_13.eq_13_in1
	// Insensitive connections
	always @(*) begin
		eq_13_in0 = valid ? 32'd2 : 32'd2;
		eq_13_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_130.eq_130_in0
	// controller for eq_130.eq_130_in1
	// Insensitive connections
	always @(*) begin
		eq_130_in0 = valid ? 32'd7 : 32'd7;
		eq_130_in1 = valid ? global_state : global_state;
	end
	// controller for eq_133.eq_133_in0
	// controller for eq_133.eq_133_in1
	// Insensitive connections
	always @(*) begin
		eq_133_in0 = valid ? 32'd7 : 32'd7;
		eq_133_in1 = valid ? global_state : global_state;
	end
	// controller for eq_135.eq_135_in0
	// controller for eq_135.eq_135_in1
	// Insensitive connections
	always @(*) begin
		eq_135_in0 = valid ? 32'd8 : 32'd8;
		eq_135_in1 = valid ? global_state : global_state;
	end
	// controller for eq_138.eq_138_in0
	// controller for eq_138.eq_138_in1
	// Insensitive connections
	always @(*) begin
		eq_138_in0 = valid ? 32'd8 : 32'd8;
		eq_138_in1 = valid ? global_state : global_state;
	end
	// controller for eq_14.eq_14_in0
	// controller for eq_14.eq_14_in1
	// Insensitive connections
	always @(*) begin
		eq_14_in0 = valid ? 32'd0 : 32'd0;
		eq_14_in1 = valid ? global_state : global_state;
	end
	// controller for eq_140.eq_140_in0
	// controller for eq_140.eq_140_in1
	// Insensitive connections
	always @(*) begin
		eq_140_in0 = valid ? 32'd0 : 32'd0;
		eq_140_in1 = valid ? global_state : global_state;
	end
	// controller for eq_141.eq_141_in0
	// controller for eq_141.eq_141_in1
	// Insensitive connections
	always @(*) begin
		eq_141_in0 = valid ? 32'd1 : 32'd1;
		eq_141_in1 = valid ? global_state : global_state;
	end
	// controller for eq_142.eq_142_in0
	// controller for eq_142.eq_142_in1
	// Insensitive connections
	always @(*) begin
		eq_142_in0 = valid ? 32'd2 : 32'd2;
		eq_142_in1 = valid ? global_state : global_state;
	end
	// controller for eq_143.eq_143_in0
	// controller for eq_143.eq_143_in1
	// Insensitive connections
	always @(*) begin
		eq_143_in0 = valid ? 32'd2 : 32'd2;
		eq_143_in1 = valid ? global_state : global_state;
	end
	// controller for eq_147.eq_147_in0
	// controller for eq_147.eq_147_in1
	// Insensitive connections
	always @(*) begin
		eq_147_in0 = valid ? 32'd2 : 32'd2;
		eq_147_in1 = valid ? global_state : global_state;
	end
	// controller for eq_151.eq_151_in0
	// controller for eq_151.eq_151_in1
	// Insensitive connections
	always @(*) begin
		eq_151_in0 = valid ? 32'd2 : 32'd2;
		eq_151_in1 = valid ? global_state : global_state;
	end
	// controller for eq_155.eq_155_in0
	// controller for eq_155.eq_155_in1
	// Insensitive connections
	always @(*) begin
		eq_155_in0 = valid ? 32'd3 : 32'd3;
		eq_155_in1 = valid ? global_state : global_state;
	end
	// controller for eq_156.eq_156_in0
	// controller for eq_156.eq_156_in1
	// Insensitive connections
	always @(*) begin
		eq_156_in0 = valid ? 32'd4 : 32'd4;
		eq_156_in1 = valid ? global_state : global_state;
	end
	// controller for eq_157.eq_157_in0
	// controller for eq_157.eq_157_in1
	// Insensitive connections
	always @(*) begin
		eq_157_in0 = valid ? 32'd5 : 32'd5;
		eq_157_in1 = valid ? global_state : global_state;
	end
	// controller for eq_158.eq_158_in0
	// controller for eq_158.eq_158_in1
	// Insensitive connections
	always @(*) begin
		eq_158_in0 = valid ? 32'd6 : 32'd6;
		eq_158_in1 = valid ? global_state : global_state;
	end
	// controller for eq_159.eq_159_in0
	// controller for eq_159.eq_159_in1
	// Insensitive connections
	always @(*) begin
		eq_159_in0 = valid ? 32'd7 : 32'd7;
		eq_159_in1 = valid ? global_state : global_state;
	end
	// controller for eq_16.eq_16_in0
	// controller for eq_16.eq_16_in1
	// Insensitive connections
	always @(*) begin
		eq_16_in0 = valid ? 32'd2 : 32'd2;
		eq_16_in1 = valid ? global_state : global_state;
	end
	// controller for eq_160.eq_160_in0
	// controller for eq_160.eq_160_in1
	// Insensitive connections
	always @(*) begin
		eq_160_in0 = valid ? 32'd8 : 32'd8;
		eq_160_in1 = valid ? global_state : global_state;
	end
	// controller for eq_18.eq_18_in0
	// controller for eq_18.eq_18_in1
	// Insensitive connections
	always @(*) begin
		eq_18_in0 = valid ? 32'd3 : 32'd3;
		eq_18_in1 = valid ? global_state : global_state;
	end
	// controller for eq_20.eq_20_in0
	// controller for eq_20.eq_20_in1
	// Insensitive connections
	always @(*) begin
		eq_20_in0 = valid ? 32'd4 : 32'd4;
		eq_20_in1 = valid ? global_state : global_state;
	end
	// controller for eq_22.eq_22_in0
	// controller for eq_22.eq_22_in1
	// Insensitive connections
	always @(*) begin
		eq_22_in0 = valid ? 32'd6 : 32'd6;
		eq_22_in1 = valid ? global_state : global_state;
	end
	// controller for eq_24.eq_24_in0
	// controller for eq_24.eq_24_in1
	// Insensitive connections
	always @(*) begin
		eq_24_in0 = valid ? 32'd7 : 32'd7;
		eq_24_in1 = valid ? global_state : global_state;
	end
	// controller for eq_26.eq_26_in0
	// controller for eq_26.eq_26_in1
	// Insensitive connections
	always @(*) begin
		eq_26_in0 = valid ? 32'd8 : 32'd8;
		eq_26_in1 = valid ? global_state : global_state;
	end
	// controller for eq_28.eq_28_in0
	// controller for eq_28.eq_28_in1
	// Insensitive connections
	always @(*) begin
		eq_28_in0 = valid ? 32'd0 : 32'd0;
		eq_28_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_29.eq_29_in0
	// controller for eq_29.eq_29_in1
	// Insensitive connections
	always @(*) begin
		eq_29_in0 = valid ? 32'd1 : 32'd1;
		eq_29_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_30.eq_30_in0
	// controller for eq_30.eq_30_in1
	// Insensitive connections
	always @(*) begin
		eq_30_in0 = valid ? 32'd2 : 32'd2;
		eq_30_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_31.eq_31_in0
	// controller for eq_31.eq_31_in1
	// Insensitive connections
	always @(*) begin
		eq_31_in0 = valid ? 32'd0 : 32'd0;
		eq_31_in1 = valid ? global_state : global_state;
	end
	// controller for eq_33.eq_33_in0
	// controller for eq_33.eq_33_in1
	// Insensitive connections
	always @(*) begin
		eq_33_in0 = valid ? 32'd0 : 32'd0;
		eq_33_in1 = valid ? global_state : global_state;
	end
	// controller for eq_35.eq_35_in0
	// controller for eq_35.eq_35_in1
	// Insensitive connections
	always @(*) begin
		eq_35_in0 = valid ? 32'd0 : 32'd0;
		eq_35_in1 = valid ? global_state : global_state;
	end
	// controller for eq_37.eq_37_in0
	// controller for eq_37.eq_37_in1
	// Insensitive connections
	always @(*) begin
		eq_37_in0 = valid ? 32'd0 : 32'd0;
		eq_37_in1 = valid ? global_state : global_state;
	end
	// controller for eq_39.eq_39_in0
	// controller for eq_39.eq_39_in1
	// Insensitive connections
	always @(*) begin
		eq_39_in0 = valid ? 32'd2 : 32'd2;
		eq_39_in1 = valid ? global_state : global_state;
	end
	// controller for eq_4.eq_4_in0
	// controller for eq_4.eq_4_in1
	// Insensitive connections
	always @(*) begin
		eq_4_in0 = valid ? 32'd5 : 32'd5;
		eq_4_in1 = valid ? global_state : global_state;
	end
	// controller for eq_42.eq_42_in0
	// controller for eq_42.eq_42_in1
	// Insensitive connections
	always @(*) begin
		eq_42_in0 = valid ? 32'd4 : 32'd4;
		eq_42_in1 = valid ? global_state : global_state;
	end
	// controller for eq_44.eq_44_in0
	// controller for eq_44.eq_44_in1
	// Insensitive connections
	always @(*) begin
		eq_44_in0 = valid ? 32'd7 : 32'd7;
		eq_44_in1 = valid ? global_state : global_state;
	end
	// controller for eq_46.eq_46_in0
	// controller for eq_46.eq_46_in1
	// Insensitive connections
	always @(*) begin
		eq_46_in0 = valid ? 32'd2 : 32'd2;
		eq_46_in1 = valid ? global_state : global_state;
	end
	// controller for eq_49.eq_49_in0
	// controller for eq_49.eq_49_in1
	// Insensitive connections
	always @(*) begin
		eq_49_in0 = valid ? 32'd2 : 32'd2;
		eq_49_in1 = valid ? global_state : global_state;
	end
	// controller for eq_52.eq_52_in0
	// controller for eq_52.eq_52_in1
	// Insensitive connections
	always @(*) begin
		eq_52_in0 = valid ? 32'd2 : 32'd2;
		eq_52_in1 = valid ? global_state : global_state;
	end
	// controller for eq_55.eq_55_in0
	// controller for eq_55.eq_55_in1
	// Insensitive connections
	always @(*) begin
		eq_55_in0 = valid ? 32'd2 : 32'd2;
		eq_55_in1 = valid ? global_state : global_state;
	end
	// controller for eq_58.eq_58_in0
	// controller for eq_58.eq_58_in1
	// Insensitive connections
	always @(*) begin
		eq_58_in0 = valid ? 32'd3 : 32'd3;
		eq_58_in1 = valid ? global_state : global_state;
	end
	// controller for eq_60.eq_60_in0
	// controller for eq_60.eq_60_in1
	// Insensitive connections
	always @(*) begin
		eq_60_in0 = valid ? 32'd4 : 32'd4;
		eq_60_in1 = valid ? global_state : global_state;
	end
	// controller for eq_62.eq_62_in0
	// controller for eq_62.eq_62_in1
	// Insensitive connections
	always @(*) begin
		eq_62_in0 = valid ? 32'd4 : 32'd4;
		eq_62_in1 = valid ? global_state : global_state;
	end
	// controller for eq_64.eq_64_in0
	// controller for eq_64.eq_64_in1
	// Insensitive connections
	always @(*) begin
		eq_64_in0 = valid ? 32'd2 : 32'd2;
		eq_64_in1 = valid ? global_state : global_state;
	end
	// controller for eq_66.eq_66_in0
	// controller for eq_66.eq_66_in1
	// Insensitive connections
	always @(*) begin
		eq_66_in0 = valid ? 32'd4 : 32'd4;
		eq_66_in1 = valid ? global_state : global_state;
	end
	// controller for eq_68.eq_68_in0
	// controller for eq_68.eq_68_in1
	// Insensitive connections
	always @(*) begin
		eq_68_in0 = valid ? 32'd6 : 32'd6;
		eq_68_in1 = valid ? global_state : global_state;
	end
	// controller for eq_71.eq_71_in0
	// controller for eq_71.eq_71_in1
	// Insensitive connections
	always @(*) begin
		eq_71_in0 = valid ? 32'd7 : 32'd7;
		eq_71_in1 = valid ? global_state : global_state;
	end
	// controller for eq_73.eq_73_in0
	// controller for eq_73.eq_73_in1
	// Insensitive connections
	always @(*) begin
		eq_73_in0 = valid ? 32'd7 : 32'd7;
		eq_73_in1 = valid ? global_state : global_state;
	end
	// controller for eq_75.eq_75_in0
	// controller for eq_75.eq_75_in1
	// Insensitive connections
	always @(*) begin
		eq_75_in0 = valid ? 32'd8 : 32'd8;
		eq_75_in1 = valid ? global_state : global_state;
	end
	// controller for eq_77.eq_77_in0
	// controller for eq_77.eq_77_in1
	// Insensitive connections
	always @(*) begin
		eq_77_in0 = valid ? 32'd6 : 32'd6;
		eq_77_in1 = valid ? global_state : global_state;
	end
	// controller for eq_79.eq_79_in0
	// controller for eq_79.eq_79_in1
	// Insensitive connections
	always @(*) begin
		eq_79_in0 = valid ? 32'd6 : 32'd6;
		eq_79_in1 = valid ? global_state : global_state;
	end
	// controller for eq_82.eq_82_in0
	// controller for eq_82.eq_82_in1
	// Insensitive connections
	always @(*) begin
		eq_82_in0 = valid ? 32'd8 : 32'd8;
		eq_82_in1 = valid ? global_state : global_state;
	end
	// controller for eq_84.eq_84_in0
	// controller for eq_84.eq_84_in1
	// Insensitive connections
	always @(*) begin
		eq_84_in0 = valid ? 32'd1 : 32'd1;
		eq_84_in1 = valid ? global_state : global_state;
	end
	// controller for eq_85.eq_85_in0
	// controller for eq_85.eq_85_in1
	// Insensitive connections
	always @(*) begin
		eq_85_in0 = valid ? 32'd5 : 32'd5;
		eq_85_in1 = valid ? global_state : global_state;
	end
	// controller for eq_86.eq_86_in0
	// controller for eq_86.eq_86_in1
	// Insensitive connections
	always @(*) begin
		eq_86_in0 = valid ? 32'd8 : 32'd8;
		eq_86_in1 = valid ? global_state : global_state;
	end
	// controller for eq_87.eq_87_in0
	// controller for eq_87.eq_87_in1
	// Insensitive connections
	always @(*) begin
		eq_87_in0 = valid ? 32'd0 : 32'd0;
		eq_87_in1 = valid ? global_state : global_state;
	end
	// controller for eq_90.eq_90_in0
	// controller for eq_90.eq_90_in1
	// Insensitive connections
	always @(*) begin
		eq_90_in0 = valid ? 32'd0 : 32'd0;
		eq_90_in1 = valid ? global_state : global_state;
	end
	// controller for eq_92.eq_92_in0
	// controller for eq_92.eq_92_in1
	// Insensitive connections
	always @(*) begin
		eq_92_in0 = valid ? 32'd1 : 32'd1;
		eq_92_in1 = valid ? global_state : global_state;
	end
	// controller for eq_95.eq_95_in0
	// controller for eq_95.eq_95_in1
	// Insensitive connections
	always @(*) begin
		eq_95_in0 = valid ? 32'd1 : 32'd1;
		eq_95_in1 = valid ? global_state : global_state;
	end
	// controller for eq_97.eq_97_in0
	// controller for eq_97.eq_97_in1
	// Insensitive connections
	always @(*) begin
		eq_97_in0 = valid ? 32'd2 : 32'd2;
		eq_97_in1 = valid ? global_state : global_state;
	end
	// controller for icmp_8.cmp_in0_icmp_8
	// controller for icmp_8.cmp_in1_icmp_8
	// Insensitive connections
	always @(*) begin
		cmp_in0_icmp_8 = valid ? add_out_add_7 : add_out_add_7;
		cmp_in1_icmp_8 = valid ? (32'd4) : (32'd4);
	end
	// controller for in.in_read_valid_reg
	always @(*) begin
		if (andOp_59_out) begin 
			in_read_valid_reg = -(1'd1);
		end else if (andOp_61_out) begin 
			in_read_valid_reg = (1'd0);
		end else begin
			in_read_valid_reg = 0;
		end
	end
	// controller for notOp_118.notOp_118_in0
	// Insensitive connections
	always @(*) begin
		notOp_118_in0 = valid ? icmp_tmp_3 : icmp_tmp_3;
	end
	// controller for notOp_3.notOp_3_in0
	// Insensitive connections
	always @(*) begin
		notOp_3_in0 = valid ? andOp_2_out : andOp_2_out;
	end
	// controller for notOp_7.notOp_7_in0
	// Insensitive connections
	always @(*) begin
		notOp_7_in0 = valid ? andOp_6_out : andOp_6_out;
	end
	// controller for notOp_9.notOp_9_in0
	// Insensitive connections
	always @(*) begin
		notOp_9_in0 = valid ? icmp_tmp_3 : icmp_tmp_3;
	end
	// controller for out.out_in_data_reg
	always @(*) begin
		if (andOp_74_out) begin 
			out_in_data_reg = rdata_ram_0;
		end else begin
			out_in_data_reg = 0;
		end
	end
	// controller for out.out_write_valid_reg
	always @(*) begin
		if (andOp_72_out) begin 
			out_write_valid_reg = -(1'd1);
		end else if (andOp_76_out) begin 
			out_write_valid_reg = (1'd0);
		end else begin
			out_write_valid_reg = 0;
		end
	end
	// controller for phi_5.phi_in_phi_5
	// controller for phi_5.phi_last_block_phi_5
	// controller for phi_5.phi_s_phi_5
	// Insensitive connections
	always @(*) begin
		phi_in_phi_5 = valid ? {(32'd0), add_tmp_2} : {(32'd0), add_tmp_2};
		phi_last_block_phi_5 = valid ? bb_2_predecessor_out_data : bb_2_predecessor_out_data;
		phi_s_phi_5 = valid ? {32'd0, 32'd2} : {32'd0, 32'd2};
	end
	// controller for ram_0.raddr_ram_0_reg
	always @(*) begin
		if (andOp_41_out) begin 
			raddr_ram_0_reg = 0;
		end else if (andOp_45_out) begin 
			raddr_ram_0_reg = 0;
		end else begin
			raddr_ram_0_reg = 0;
		end
	end
	// controller for ram_0.waddr_ram_0_reg
	always @(*) begin
		if (andOp_38_out) begin 
			waddr_ram_0_reg = 0;
		end else if (andOp_43_out) begin 
			waddr_ram_0_reg = 0;
		end else begin
			waddr_ram_0_reg = 0;
		end
	end
	// controller for ram_0.wdata_ram_0_reg
	always @(*) begin
		if (andOp_38_out) begin 
			wdata_ram_0_reg = (32'd0);
		end else if (andOp_43_out) begin 
			wdata_ram_0_reg = add_out_add_12;
		end else begin
			wdata_ram_0_reg = 0;
		end
	end
	// controller for ram_0.wen_ram_0_reg
	always @(*) begin
		if (andOp_38_out) begin 
			wen_ram_0_reg = 1;
		end else if (andOp_43_out) begin 
			wen_ram_0_reg = 1;
		end else begin
			wen_ram_0_reg = 0;
		end
	end
	// controller for ret_24.valid_reg
	always @(*) begin
		if (andOp_83_out) begin 
			valid_reg = 1;
		end else begin
			valid_reg = 0;
		end
	end
	// Register controllers
	always @(posedge clk) begin
		if (rst) begin
			add_tmp_2 <= 0;
		end else begin
			if (andOp_150_out) begin
				add_tmp_2 <= add_out_add_7;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_next_block <= 0;
		end else begin
			if (andOp_10_out) begin
				global_next_block <= 2;
			end
			if (andOp_15_out) begin
				global_next_block <= 0;
			end
			if (andOp_17_out) begin
				global_next_block <= 2;
			end
			if (andOp_19_out) begin
				global_next_block <= 2;
			end
			if (andOp_21_out) begin
				global_next_block <= 2;
			end
			if (andOp_23_out) begin
				global_next_block <= 1;
			end
			if (andOp_25_out) begin
				global_next_block <= 1;
			end
			if (andOp_27_out) begin
				global_next_block <= 1;
			end
			if (andOp_8_out) begin
				global_next_block <= 1;
			end
			if (br_0_happened_out_data) begin
				global_next_block <= 2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_state <= 0;
		end else begin
			if (andOp_102_out) begin
				global_state <= 3;
			end
			if (andOp_107_out) begin
				global_state <= 4;
			end
			if (andOp_112_out) begin
				global_state <= 5;
			end
			if (andOp_117_out) begin
				global_state <= 6;
			end
			if (andOp_123_out) begin
				global_state <= 2;
			end
			if (andOp_129_out) begin
				global_state <= 7;
			end
			if (andOp_134_out) begin
				global_state <= 8;
			end
			if (andOp_139_out) begin
				global_state <= 8;
			end
			if (andOp_91_out) begin
				global_state <= 1;
			end
			if (andOp_96_out) begin
				global_state <= 2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			icmp_tmp_3 <= 0;
		end else begin
			if (andOp_154_out) begin
				icmp_tmp_3 <= cmp_out_icmp_8;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			last_BB_reg <= 0;
		end else begin
			if (eq_84_out) begin
				last_BB_reg <= 0;
			end
			if (eq_85_out) begin
				last_BB_reg <= 2;
			end
			if (eq_86_out) begin
				last_BB_reg <= 1;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			load_tmp_1 <= 0;
		end else begin
			if (andOp_146_out) begin
				load_tmp_1 <= rdata_ram_0;
			end
		end
	end

endmodule

