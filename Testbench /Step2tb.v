module reg32_adtb();
reg reset_n,write_en,clk;
reg [3:0]write_line;
reg [31:0]data_in0,data_in1,data_in2,data_in3,data_in4,data_in5,data_in6,data_in7,data_in8,data_in9,data_in10,data_in11,data_in12,data_in13,data_in14,data_in15;
wire [31:0]data_out0,data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,data_out9,data_out10,data_out11,data_out12,data_out13,data_out14,data_out15;

reg32_ad register (.reset_n(reset_n),
.write_en(write_en),
.clk(clk),
.write_line(write_line),
.data_in0(data_in0),
.data_in1(data_in1),
.data_in2(data_in2),
.data_in3(data_in3),
.data_in4(data_in4),
.data_in5(data_in5),
.data_in6(data_in6),
.data_in7(data_in7),
.data_in8(data_in8),
.data_in9(data_in9),
.data_in10(data_in10),
.data_in11(data_in11),
.data_in12(data_in12),
.data_in13(data_in13),
.data_in14(data_in14),
.data_in15(data_in15),
.data_out0(data_out0),
.data_out1(data_out1),
.data_out2(data_out2),
.data_out3(data_out3),
.data_out4(data_out4),
.data_out5(data_out5),
.data_out6(data_out6),
.data_out7(data_out7),
.data_out8(data_out8),
.data_out9(data_out9),
.data_out10(data_out10),
.data_out11(data_out11),
.data_out12(data_out12),
.data_out13(data_out13),
.data_out14(data_out14),
.data_out15(data_out15)
);


initial begin
clk=1'd0;
forever begin
#5 clk=~clk;
end
$display("clock started");
end

initial begin
reset_n = 1'd0;
#20 reset_n = 1'b1;
@(posedge clk)
write_line = 4'b0010;
@(posedge clk)
write_en = 1'd1;
data_in2 = 32'hffff;
@(posedge clk)
write_en = 1'd0;
@(posedge clk)
if (data_out2 !== data_in2)
begin
$display("test 1 failed.");
end
else
begin
$display("test 1 cleared");
end
end
endmodule
