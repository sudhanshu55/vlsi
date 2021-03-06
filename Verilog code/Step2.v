module reg32_ad(
input reset_n,
input clk,
input write_en,
input [3:0]write_line,
input wire[31:0]data_in0,data_in1,data_in2,data_in3,data_in4,data_in5,data_in6,data_in7,data_in8,data_in9,data_in10,data_in11,data_in12,data_in13,data_in14,data_in15,
output reg[31:0]data_out0,data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,data_out9,data_out10,data_out11,data_out12,data_out13,data_out14,data_out15
);
wire sel0,sel1,sel2,sel3,sel4,sel5,sle6,sel7,sel8,sel9,sel10,sel11,sel12,sel13,sel14,sel15;

assign sel0=(write_line == 4'b0000);
assign sel1=(write_line == 4'b0001);
assign sel2=(write_line == 4'b0010);
assign sel3=(write_line == 4'b0011);
assign sel4=(write_line == 4'b0100);
assign sel5=(write_line == 4'b0101);
assign sel6=(write_line == 4'b0110);
assign sel7=(write_line == 4'b0111);
assign sel8=(write_line == 4'b1000);
assign sel9 =(write_line == 4'b1001);
assign sel10=(write_line == 4'b1010);
assign sel11=(write_line == 4'b1011);
assign sel12=(write_line == 4'b1100);
assign sel13=(write_line == 4'b1101);
assign sel14=(write_line == 4'b1110);
assign sel15=(write_line == 4'b1111);

always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out0<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel0)
      						data_out0<=data_in0;
  					end
			end


  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out1<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel1)
      						data_out1<=data_in1;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out2<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel2)
      						data_out2<=data_in2;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out3<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel3)
      						data_out3<=data_in3;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out4<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel4)
      						data_out4<=data_in4;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out5<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel5)
      						data_out5<=data_in5;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out6<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel6)
      						data_out6<=data_in6;
  					end
			end


  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out7<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel7)
      						data_out7<=data_in7;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out8<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel8)
      						data_out8<=data_in8;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out9<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel9)
      						data_out9<=data_in9;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out10<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel10)
      						data_out10<=data_in10;
  						end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out11<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel11)
      						data_out11<=data_in11;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out12<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel12)
      						data_out12<=data_in12;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out13<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel13)
      						data_out13<=data_in13;
  					end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out14<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel14)
      						data_out14<=data_in14;
  						end
			end

  		always@ (posedge clk or negedge reset_n)
			begin
				if (!reset_n)
  					begin
    					data_out15<=32'b0;
  					end
				else
  					begin
    					if (write_en & sel15)
      						data_out15<=data_in15;
  					end
			end


endmodule
