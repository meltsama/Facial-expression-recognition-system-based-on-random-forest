`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: cclc_algorithm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cclc_algorithm(
	input			wire					i_sys_clk		,
	input			wire					i_rst_n			,
	input			wire		[7:0]		i_gray_data		,
	input			wire					i_gray_hsync	,
	input			wire					i_gray_vsync	,
	output			wire		[7:0]		o_cclc_data		,
	output			wire					o_gray_hsync	,
	output			wire					o_gray_vsync
    );
	
	// defined parameters and parameters
	
	parameter Cclc_Pixel_Data_Level_1 = 50;
	parameter Cclc_Pixel_Data_Level_2 = 100;
	parameter Cclc_Pixel_Data_Level_3 = 150;
	parameter Cclc_Pixel_Data_Level_4 = 200;
	
	
	reg		[15:0]			s_cclc_data;
	reg		[15:0]			s_cclc_data_reg;
	reg		[1:0]			s_gray_hsync;
	reg		[1:0]			s_gray_vsync;
	
	
	
	// main code
	always @(posedge i_sys_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_cclc_data <= 'd0;
				end	
			else
				begin
					s_cclc_data <= i_gray_data * 100;
				end
	end
	
	
	always @(posedge i_sys_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_cclc_data_reg <= 'd0;
				end	
			else	if(i_gray_data < 50)
				begin
					s_cclc_data_reg <= s_cclc_data / 93;
				end
			else	if(i_gray_data >= 50 && i_gray_data < 100)
				begin
					s_cclc_data_reg <= s_cclc_data / 96;
				end
			else	if(i_gray_data >= 100 && i_gray_data < 150)
				begin
					s_cclc_data_reg <= s_cclc_data / 98;
				end
			else	if(i_gray_data >= 150 && i_gray_data < 200)
				begin
					s_cclc_data_reg <= s_cclc_data / 110;
				end
			else	
				begin
					s_cclc_data_reg <= s_cclc_data / 100;
				end	
	end
	
	
	
	always @(posedge i_sys_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_gray_hsync <= 'd0;
				end	
			else
				begin
					s_gray_hsync[0] <= i_gray_hsync;
					s_gray_hsync[1] <= s_gray_hsync[0];
				end
	end
	
	
	always @(posedge i_sys_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_gray_vsync <= 'd0;
				end	
			else
				begin
					s_gray_vsync[0] <= i_gray_vsync;
					s_gray_vsync[1] <= s_gray_vsync[0];
				end
	end
	
	
	assign o_cclc_data = s_cclc_data_reg[7:0];
	assign o_gray_hsync = s_gray_hsync[1];
	assign o_gray_vsync = s_gray_vsync[1];
	
	
endmodule
