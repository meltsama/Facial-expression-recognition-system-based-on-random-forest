`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: project_top
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


module project_top(
    input       wire            i_clk               ,
    input       wire            i_rst_n             ,
    input       wire            i_tmds_clk_p        ,
    input       wire            i_tmds_clk_n        ,
    input       wire    [2:0]   i_tmds_data_p       ,
    input       wire    [2:0]   i_tmds_data_n		,
	output		wire			o_uart_tx			,
	input		wire			i_uart_rx			
    );
	
	
	// defined parameters and signals
	wire		[23:0]		s_pixel_data		;
	wire					s_pixel_vsync		;
	wire					s_pixel_hsync		;	
	wire					s_pixel_clk			;
	wire 		[7:0]		s_gray_data			;		
	wire 					s_gray_hsync		;		
	wire 					s_gray_vsync   		;
	wire 		[7:0]		s_cclc_data			;		
	wire 					s_gray_hsync_out		;	
	wire 					s_gray_vsync_out	    ;	
    
	
	// main code
    dvi2rgb_0 dvi2rgb_0_inst(
		.TMDS_Clk_p		(i_tmds_clk_p			), // input wire TMDS_Clk_p
		.TMDS_Clk_n		(i_tmds_clk_n			), // input wire TMDS_Clk_n
		.TMDS_Data_p	(i_tmds_data_p			), // input wire [2 : 0] TMDS_Data_p
		.TMDS_Data_n	(i_tmds_data_n			), // input wire [2 : 0] TMDS_Data_n
		.RefClk			(i_clk					), // input wire RefClk
		.aRst			(~i_rst_n				), // input wire aRst_n
		.vid_pData		(s_pixel_data			), // output wire [23 : 0] vid_pData
		.vid_pVDE		(						), // output wire vid_pVDE
		.vid_pHSync		(s_pixel_hsync			), // output wire vid_pHSync
		.vid_pVSync		(s_pixel_vsync			), // output wire vid_pVSync
		.PixelClk		(s_pixel_clk			), // output wire PixelClk
		.aPixelClkLckd	(						), // output wire aPixelClkLckd
		.pLocked		(						), // output wire pLocked
		.pRst			(~i_rst_n				)  // input wire pRst_n
	);
	
	
	rgb2gray rgb2gray_inst(
	// camera data input
		.i_pixel_clk	(s_pixel_clk			),
		.i_rst_n		(i_rst_n				),
		.i_pixel_data	(s_pixel_data			),
		.i_pixel_hsync	(s_pixel_hsync			),
		.i_pixel_vsync	(s_pixel_vsync			),
	// rgb2gray data output	
		.o_gray_data	(s_gray_data			),
		.o_gray_hsync	(s_gray_hsync			),
		.o_gray_vsync   (s_gray_vsync   		)
    );
	
	
	cclc_algorithm cclc_algorithm_inst(
		.i_sys_clk		(s_pixel_clk			),
		.i_rst_n		(i_rst_n				),
		.i_gray_data	(s_gray_data			),
		.i_gray_hsync	(s_gray_hsync			),
		.i_gray_vsync	(s_gray_vsync			),
		.o_cclc_data	(s_cclc_data			),
		.o_gray_hsync	(s_gray_hsync_out			),
		.o_gray_vsync	(s_gray_vsync_out	    	)
    );
	
	wire empty;
	wire [7:0]		fifo_rd_data;
	wire			uart_tx_busy;
	fifo_generator_0 fifo_generator_0_inst(
		.clk			(s_pixel_clk					), 
		.srst			(i_rst_n						), 
		.din			(s_gray_data					), 
		.wr_en			(s_gray_hsync					), 
		.rd_en			(~empty	&& ~uart_tx_busy		), 
		.dout			(fifo_rd_data					), 
		.full			(								),   
		.empty			(empty							)  
	);
	
	
	reg		uart_tx_en;
	
	always @(posedge s_pixel_clk or negedge i_rst_n)
	begin	if(!i_rst_n)
				begin
					uart_tx_en <= 1'b0;
				end
			else
				begin
					uart_tx_en <= ~empty && ~uart_tx_busy;
				end
	end
	
	
	uart_tx uart_tx_inst(
		.clk         	(s_pixel_clk			), //系统时钟
		.rst_n       	(i_rst_n				), //系统复位，低有效
		.uart_tx_en  	(uart_tx_en				), //UART的发送使�?
		.uart_tx_data	(fifo_rd_data			), //UART要发送的数据
		.uart_txd    	(o_uart_tx				), //UART发�?�端�?
		.uart_tx_busy	(uart_tx_busy			)  //发�?�忙状�?�信�?
    );
    
    
endmodule
