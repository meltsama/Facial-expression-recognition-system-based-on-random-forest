`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: rgb2gray
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


module rgb2gray(
	// camera data input
	input			wire			i_pixel_clk		,
	input			wire			i_rst_n			,
	input			wire	[23:0]	i_pixel_data	,
	input			wire			i_pixel_hsync	,
	input			wire			i_pixel_vsync	,
	// rgb2gray data output	
	output			reg		[7:0]	o_gray_data		,
	output			wire				o_gray_hsync	,
	output			wire				o_gray_vsync
    );
	
	// defined paramters and signals
	reg		[15:0]		s_gray_r;
	reg		[15:0]		s_gray_g;
	reg		[15:0]		s_gray_b;
	reg		[15:0]		s_gray_sum;
	reg		[2:0]		s_hsync_r;
	reg		[2:0]		s_vsync_r;
	
	// Y = 77 * R + 150 * G + 29 * B
	always @(posedge i_pixel_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_gray_r <= 'd0;
					s_gray_g <= 'd0;
					s_gray_b <= 'd0;
				end
			else
				begin
					s_gray_r <= i_pixel_data[23:16] * 'd77;
					s_gray_g <= i_pixel_data[15:8] * 'd150;
					s_gray_b <= i_pixel_data[7:0] * 'd29;
				end
	end
	
	
	always @(posedge i_pixel_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_gray_sum <= 'd0;
				end
			else
				begin
					s_gray_sum <= s_gray_r + s_gray_g + s_gray_b;
				end
	end
	
	
	always @(posedge i_pixel_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					o_gray_data <= 'd0;
				end
			else
				begin
					o_gray_data <= s_gray_sum >> 8;
				end
	end
	
	
	always @(posedge i_pixel_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					s_hsync_r <= 'd0;
					s_vsync_r <= 'd0;
				end
			else
				begin
					s_hsync_r[0] <= i_pixel_hsync;
					s_hsync_r[1] <= s_hsync_r[0];
					s_hsync_r[2] <= s_hsync_r[1];
					s_vsync_r[0] <= i_pixel_vsync;
					s_vsync_r[1] <= s_vsync_r[0];
					s_vsync_r[2] <= s_vsync_r[1];
				end	
	end
	
	
	assign o_gray_hsync = s_hsync_r[2];
	assign o_gray_vsync = s_vsync_r[2];
	
	
	
endmodule
