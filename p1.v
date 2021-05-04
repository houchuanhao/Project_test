/*
module p1(
	input	rstn,//reset low active
	input clk, // clock
	output [3:0] cnt,//counter
	output cout);//carry bit
	
	reg [3:0] cnt_temp;//counter register
	always@ (posedge clk or negedge rstn)begin //时钟上升或者复位下降
			if(! rstn)begin// rstn==0 //before 51
				cnt_temp <= 4'b0;
			end
			else if (cnt_temp==4'd9) begin  // 9=1001
				cnt_temp <=4'b000;
			end
			else begin
				cnt_temp <=cnt_temp +1'b1; // 
			end
	end
	
	assign cout=(cnt_temp==4'd10);
	assign cnt=cnt_temp;
	
endmodule
*/
module p1(input rstn,
	input clk,
	input A,
	input B,
	input Ci,
	output C0,
	output S);
	reg C0_tem;
	reg S_tem;
	always@(posedge clk or negedge rstn)begin
		if(!rstn) begin //rstn=0
		C0_tem<=0;
		S_tem<=0;
		end
		else begin
			S_tem=A^B^Ci;
			C0_tem=A&B|B&Ci|A&Ci;
		end	
	end
	assign C0=C0_tem;
	assign S=S_tem;
endmodule	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	