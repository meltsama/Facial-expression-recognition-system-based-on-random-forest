// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Mar 18 22:08:28 2025
// Host        : DESKTOP-O4N5DF9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/project_file/xiong_fpga/project_1/project_1.gen/sources_1/ip/dvi2rgb_0/dvi2rgb_0_sim_netlist.v
// Design      : dvi2rgb_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dvi2rgb_0,dvi2rgb,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dvi2rgb,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dvi2rgb_0
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    RefClk,
    aRst,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    aPixelClkLckd,
    pLocked,
    pRst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK, digilentinc.com:interface:tmds:1.0 TMDS CLK_P" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, ASSOCIATED_RESET pRst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input TMDS_Clk_p;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK, digilentinc.com:interface:tmds:1.0 TMDS CLK_N" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n:AsyncRst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input TMDS_Clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) input [2:0]TMDS_Data_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) input [2:0]TMDS_Data_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RefClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME RefClk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input RefClk;
  input aRst;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) output [23:0]vid_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) output vid_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) output vid_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) output vid_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output PixelClk;
  output aPixelClkLckd;
  output pLocked;
  input pRst;

  wire PixelClk;
  wire RefClk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire TMDS_Clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire TMDS_Clk_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire [2:0]TMDS_Data_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire [2:0]TMDS_Data_p;
  wire aPixelClkLckd;
  wire aRst;
  wire pLocked;
  wire pRst;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;
  wire NLW_U0_SCL_O_UNCONNECTED;
  wire NLW_U0_SCL_T_UNCONNECTED;
  wire NLW_U0_SDA_O_UNCONNECTED;
  wire NLW_U0_SDA_T_UNCONNECTED;
  wire NLW_U0_SerialClk_UNCONNECTED;

  (* kAddBUFG = "TRUE" *) 
  (* kClkRange = "2" *) 
  (* kDebug = "FALSE" *) 
  (* kEdidFileName = "dgl_720p_cea.data" *) 
  (* kEmulateDDC = "FALSE" *) 
  (* kIDLY_TapValuePs = "78" *) 
  (* kIDLY_TapWidth = "5" *) 
  (* kRstActiveHigh = "TRUE" *) 
  dvi2rgb_0_dvi2rgb U0
       (.PixelClk(PixelClk),
        .RefClk(RefClk),
        .SCL_I(1'b0),
        .SCL_O(NLW_U0_SCL_O_UNCONNECTED),
        .SCL_T(NLW_U0_SCL_T_UNCONNECTED),
        .SDA_I(1'b0),
        .SDA_O(NLW_U0_SDA_O_UNCONNECTED),
        .SDA_T(NLW_U0_SDA_T_UNCONNECTED),
        .SerialClk(NLW_U0_SerialClk_UNCONNECTED),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .aPixelClkLckd(aPixelClkLckd),
        .aRst(aRst),
        .aRst_n(1'b1),
        .pLocked(pLocked),
        .pRst(pRst),
        .pRst_n(1'b1),
        .vid_pData(vid_pData),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_0_ChannelBond
   (D,
    SR,
    pMeRdy_int_reg_0,
    CLK,
    pRdEn_reg_0,
    pRdy_0,
    pRdy_1,
    pAllVldBgnFlag,
    pAllVld,
    pDataInRaw);
  output [7:0]D;
  output [0:0]SR;
  output pMeRdy_int_reg_0;
  input CLK;
  input pRdEn_reg_0;
  input pRdy_0;
  input pRdy_1;
  input pAllVldBgnFlag;
  input pAllVld;
  input [9:0]pDataInRaw;

  wire CLK;
  wire [7:0]D;
  wire [0:0]SR;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag0;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire [9:0]pDataInRaw;
  wire \pDataIn[0]_i_2__0_n_0 ;
  wire \pDataIn[0]_i_3__0_n_0 ;
  wire \pDataIn[1]_i_2_n_0 ;
  wire \pDataIn[4]_i_2_n_0 ;
  wire \pDataIn[5]_i_2__0_n_0 ;
  wire \pDataIn[7]_i_3_n_0 ;
  wire pMeRdy_int_i_2_n_0;
  wire pMeRdy_int_reg_0;
  wire [4:0]pRdA;
  wire \pRdA[0]_i_1_n_0 ;
  wire \pRdA[1]_i_1_n_0 ;
  wire \pRdA[2]_i_1_n_0 ;
  wire \pRdA[3]_i_1_n_0 ;
  wire \pRdA[4]_i_1_n_0 ;
  wire pRdEn;
  wire pRdEn_i_1_n_0;
  wire pRdEn_reg_0;
  wire pRdy_0;
  wire pRdy_1;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_i_2__0_n_0;
  wire pTokenFlag_i_3__0_n_0;
  wire pTokenFlag_i_4_n_0;
  wire pTokenFlag_q;
  wire [4:0]pWrA_reg;
  wire [4:0]p_0_in__0;
  wire [9:0]p_0_out__0;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag0));
  FDRE pBlnkBgnFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlnkBgnFlag0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  FDRE \pDataFIFO_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out__0[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1__0 
       (.I0(\pDataIn[0]_i_2__0_n_0 ),
        .I1(pTokenFlag_i_2__0_n_0),
        .I2(\pDataIn[0]_i_3__0_n_0 ),
        .I3(pTokenFlag_i_4_n_0),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[0]_i_2__0 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[0]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_3__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1__0 
       (.I0(\pDataIn[1]_i_2_n_0 ),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \pDataIn[1]_i_2 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(\pDataIn[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1__0 
       (.I0(pTokenFlag_i_3__0_n_0),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1__0 
       (.I0(pDataInBnd[1]),
        .I1(pTokenFlag_i_3__0_n_0),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1__0 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2_n_0 ),
        .I2(\pDataIn[5]_i_2__0_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1__0 
       (.I0(\pDataIn[5]_i_2__0_n_0 ),
        .I1(pTokenFlag_i_2__0_n_0),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[7]_i_3_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1 
       (.I0(pMeRdy_int_reg_0),
        .I1(pRdy_0),
        .I2(pRdy_1),
        .O(SR));
  LUT6 #(
    .INIT(64'h3CC338C33CC33CC3)) 
    \pDataIn[7]_i_2__0 
       (.I0(\pDataIn[7]_i_3_n_0 ),
        .I1(pDataInBnd[8]),
        .I2(pDataInBnd[7]),
        .I3(pDataInBnd[6]),
        .I4(pDataInBnd[5]),
        .I5(pDataInBnd[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[7]_i_3 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[7]_i_3_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[2].DecoderX/ChannelBondX/pFIFO_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg),
        .DIA(pDataInRaw[1:0]),
        .DIB(pDataInRaw[3:2]),
        .DIC(pDataInRaw[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out__0[1:0]),
        .DOB(p_0_out__0[3:2]),
        .DOC(p_0_out__0[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[2].DecoderX/ChannelBondX/pFIFO_reg_0_31_6_9" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "9" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg),
        .DIA(pDataInRaw[7:6]),
        .DIB(pDataInRaw[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out__0[7:6]),
        .DOB(p_0_out__0[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_2
       (.I0(pBlnkBgnFlag),
        .I1(pMeRdy_int_reg_0),
        .O(pMeRdy_int_i_2_n_0));
  FDRE pMeRdy_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pMeRdy_int_i_2_n_0),
        .Q(pMeRdy_int_reg_0),
        .R(pRdEn_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA[0]_i_1 
       (.I0(pRdA[0]),
        .O(\pRdA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA[1]_i_1 
       (.I0(pRdA[0]),
        .I1(pRdA[1]),
        .O(\pRdA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA[2]_i_1 
       (.I0(pRdA[1]),
        .I1(pRdA[0]),
        .I2(pRdA[2]),
        .O(\pRdA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA[3]_i_1 
       (.I0(pRdA[2]),
        .I1(pRdA[0]),
        .I2(pRdA[1]),
        .I3(pRdA[3]),
        .O(\pRdA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA[4]_i_1 
       (.I0(pRdA[3]),
        .I1(pRdA[1]),
        .I2(pRdA[0]),
        .I3(pRdA[2]),
        .I4(pRdA[4]),
        .O(\pRdA[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[0] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[0]_i_1_n_0 ),
        .Q(pRdA[0]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[1] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[1]_i_1_n_0 ),
        .Q(pRdA[1]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[2] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[2]_i_1_n_0 ),
        .Q(pRdA[2]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[3] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[3]_i_1_n_0 ),
        .Q(pRdA[3]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[4] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[4]_i_1_n_0 ),
        .Q(pRdA[4]),
        .R(pRdEn_reg_0));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1
       (.I0(pAllVldBgnFlag),
        .I1(pMeRdy_int_reg_0),
        .I2(pRdy_0),
        .I3(pRdy_1),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1_n_0));
  FDRE pRdEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pRdEn_i_1_n_0),
        .Q(pRdEn),
        .R(pRdEn_reg_0));
  LUT6 #(
    .INIT(64'h5575FFFF55755575)) 
    pTokenFlag_i_1__0
       (.I0(pRdEn),
        .I1(pTokenFlag_i_2__0_n_0),
        .I2(pDataInBnd[8]),
        .I3(pTokenFlag_i_3__0_n_0),
        .I4(pTokenFlag_i_4_n_0),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    pTokenFlag_i_2__0
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(pTokenFlag_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    pTokenFlag_i_3__0
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(pTokenFlag_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    pTokenFlag_i_4
       (.I0(\pDataIn[1]_i_2_n_0 ),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(pTokenFlag_i_4_n_0));
  FDRE pTokenFlag_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1 
       (.I0(pWrA_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1 
       (.I0(pWrA_reg[0]),
        .I1(pWrA_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1 
       (.I0(pWrA_reg[1]),
        .I1(pWrA_reg[0]),
        .I2(pWrA_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1 
       (.I0(pWrA_reg[2]),
        .I1(pWrA_reg[0]),
        .I2(pWrA_reg[1]),
        .I3(pWrA_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1 
       (.I0(pWrA_reg[3]),
        .I1(pWrA_reg[1]),
        .I2(pWrA_reg[0]),
        .I3(pWrA_reg[2]),
        .I4(pWrA_reg[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(pWrA_reg[0]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(pWrA_reg[1]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(pWrA_reg[2]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(pWrA_reg[3]),
        .R(pRdEn_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(pWrA_reg[4]),
        .R(pRdEn_reg_0));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_0_ChannelBond_15
   (pAllVld_q,
    pAllVldBgnFlag,
    D,
    pVde_1,
    SR,
    pMeRdy_int_reg_0,
    \pDataFIFO_reg[9]_0 ,
    \pDataFIFO_reg[8]_0 ,
    pAllVld,
    CLK,
    pAllVldBgnFlag0,
    pMeRdy_int_reg_1,
    pRdy_1,
    pRdy_2,
    pC1,
    pC0,
    I62);
  output pAllVld_q;
  output pAllVldBgnFlag;
  output [7:0]D;
  output pVde_1;
  output [0:0]SR;
  output pMeRdy_int_reg_0;
  output \pDataFIFO_reg[9]_0 ;
  output \pDataFIFO_reg[8]_0 ;
  input pAllVld;
  input CLK;
  input pAllVldBgnFlag0;
  input pMeRdy_int_reg_1;
  input pRdy_1;
  input pRdy_2;
  input pC1;
  input pC0;
  input [9:0]I62;

  wire CLK;
  wire [7:0]D;
  wire [9:0]I62;
  wire [0:0]SR;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag0;
  wire pC0;
  wire pC0_0;
  wire pC1;
  wire \pDataFIFO_reg[8]_0 ;
  wire \pDataFIFO_reg[9]_0 ;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire \pDataIn[0]_i_2_n_0 ;
  wire \pDataIn[0]_i_3_n_0 ;
  wire \pDataIn[0]_i_4_n_0 ;
  wire \pDataIn[3]_i_2_n_0 ;
  wire \pDataIn[4]_i_2__1_n_0 ;
  wire \pDataIn[5]_i_2_n_0 ;
  wire \pDataIn[5]_i_3_n_0 ;
  wire \pDataIn[7]_i_3__1_n_0 ;
  wire pMeRdy_int_i_1_n_0;
  wire pMeRdy_int_reg_0;
  wire pMeRdy_int_reg_1;
  wire [4:0]pRdA;
  wire \pRdA[0]_i_1__0_n_0 ;
  wire \pRdA[1]_i_1__0_n_0 ;
  wire \pRdA[2]_i_1__0_n_0 ;
  wire \pRdA[3]_i_1__0_n_0 ;
  wire \pRdA[4]_i_1__0_n_0 ;
  wire pRdEn;
  wire pRdEn_i_1__1_n_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_i_2_n_0;
  wire pTokenFlag_i_3_n_0;
  wire pTokenFlag_q;
  wire pVde_1;
  wire pVde_i_2_n_0;
  wire \pWrA_reg_n_0_[0] ;
  wire \pWrA_reg_n_0_[1] ;
  wire \pWrA_reg_n_0_[2] ;
  wire \pWrA_reg_n_0_[3] ;
  wire \pWrA_reg_n_0_[4] ;
  wire [4:0]p_0_in__0;
  wire [9:0]p_0_out;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  FDRE pAllVldBgnFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAllVldBgnFlag0),
        .Q(pAllVldBgnFlag),
        .R(1'b0));
  FDRE pAllVld_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAllVld),
        .Q(pAllVld_q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1__1
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag0));
  FDRE pBlnkBgnFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlnkBgnFlag0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h74)) 
    pC0_i_1
       (.I0(pDataInBnd[8]),
        .I1(pC0_0),
        .I2(pC0),
        .O(\pDataFIFO_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h11110F0011110000)) 
    pC0_i_2
       (.I0(\pDataIn[3]_i_2_n_0 ),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(pTokenFlag_i_3_n_0),
        .I3(pDataInBnd[1]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[0]),
        .O(pC0_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    pC1_i_1
       (.I0(\pDataFIFO_reg_n_0_[9] ),
        .I1(pDataInBnd[8]),
        .I2(pC0_0),
        .I3(pC1),
        .O(\pDataFIFO_reg[9]_0 ));
  FDRE \pDataFIFO_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1 
       (.I0(\pDataIn[0]_i_2_n_0 ),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(\pDataIn[0]_i_3_n_0 ),
        .I3(\pDataIn[0]_i_4_n_0 ),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[0]_i_2 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_3 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \pDataIn[0]_i_4 
       (.I0(pTokenFlag_i_3_n_0),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1 
       (.I0(pTokenFlag_i_3_n_0),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1 
       (.I0(\pDataIn[3]_i_2_n_0 ),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1 
       (.I0(pDataInBnd[1]),
        .I1(\pDataIn[3]_i_2_n_0 ),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \pDataIn[3]_i_2 
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(\pDataIn[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2__1_n_0 ),
        .I2(\pDataIn[5]_i_2_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2__1 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1 
       (.I0(\pDataIn[5]_i_2_n_0 ),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_3 
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(\pDataIn[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1__1 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[7]_i_3__1_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1__0 
       (.I0(pMeRdy_int_reg_0),
        .I1(pRdy_1),
        .I2(pRdy_2),
        .O(SR));
  LUT6 #(
    .INIT(64'h3CC338C33CC33CC3)) 
    \pDataIn[7]_i_2 
       (.I0(\pDataIn[7]_i_3__1_n_0 ),
        .I1(pDataInBnd[8]),
        .I2(pDataInBnd[7]),
        .I3(pDataInBnd[6]),
        .I4(pDataInBnd[5]),
        .I5(pDataInBnd[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[7]_i_3__1 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[7]_i_3__1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[0].DecoderX/ChannelBondX/pFIFO_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD({\pWrA_reg_n_0_[4] ,\pWrA_reg_n_0_[3] ,\pWrA_reg_n_0_[2] ,\pWrA_reg_n_0_[1] ,\pWrA_reg_n_0_[0] }),
        .DIA(I62[1:0]),
        .DIB(I62[3:2]),
        .DIC(I62[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[0].DecoderX/ChannelBondX/pFIFO_reg_0_31_6_9" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "9" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD({\pWrA_reg_n_0_[4] ,\pWrA_reg_n_0_[3] ,\pWrA_reg_n_0_[2] ,\pWrA_reg_n_0_[1] ,\pWrA_reg_n_0_[0] }),
        .DIA(I62[7:6]),
        .DIB(I62[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_1
       (.I0(pBlnkBgnFlag),
        .I1(pMeRdy_int_reg_0),
        .O(pMeRdy_int_i_1_n_0));
  FDRE pMeRdy_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pMeRdy_int_i_1_n_0),
        .Q(pMeRdy_int_reg_0),
        .R(pMeRdy_int_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA[0]_i_1__0 
       (.I0(pRdA[0]),
        .O(\pRdA[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA[1]_i_1__0 
       (.I0(pRdA[0]),
        .I1(pRdA[1]),
        .O(\pRdA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA[2]_i_1__0 
       (.I0(pRdA[1]),
        .I1(pRdA[0]),
        .I2(pRdA[2]),
        .O(\pRdA[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA[3]_i_1__0 
       (.I0(pRdA[2]),
        .I1(pRdA[0]),
        .I2(pRdA[1]),
        .I3(pRdA[3]),
        .O(\pRdA[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA[4]_i_1__0 
       (.I0(pRdA[3]),
        .I1(pRdA[1]),
        .I2(pRdA[0]),
        .I3(pRdA[2]),
        .I4(pRdA[4]),
        .O(\pRdA[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[0] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[0]_i_1__0_n_0 ),
        .Q(pRdA[0]),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[1] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[1]_i_1__0_n_0 ),
        .Q(pRdA[1]),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[2] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[2]_i_1__0_n_0 ),
        .Q(pRdA[2]),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[3] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[3]_i_1__0_n_0 ),
        .Q(pRdA[3]),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[4] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[4]_i_1__0_n_0 ),
        .Q(pRdA[4]),
        .R(pMeRdy_int_reg_1));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1__1
       (.I0(pAllVldBgnFlag),
        .I1(pMeRdy_int_reg_0),
        .I2(pRdy_1),
        .I3(pRdy_2),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1__1_n_0));
  FDRE pRdEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pRdEn_i_1__1_n_0),
        .Q(pRdEn),
        .R(pMeRdy_int_reg_1));
  LUT6 #(
    .INIT(64'hDDDDDFDDDDDDDDDD)) 
    pTokenFlag_i_1
       (.I0(pRdEn),
        .I1(pTokenFlag_i_2_n_0),
        .I2(pTokenFlag_i_3_n_0),
        .I3(pDataInBnd[1]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    pTokenFlag_i_2
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(\pDataIn[3]_i_2_n_0 ),
        .O(pTokenFlag_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    pTokenFlag_i_3
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(pTokenFlag_i_3_n_0));
  FDRE pTokenFlag_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0BFBFFFFFBFBF)) 
    pVde_i_1
       (.I0(pVde_i_2_n_0),
        .I1(pDataInBnd[2]),
        .I2(pDataInBnd[8]),
        .I3(pTokenFlag_i_3_n_0),
        .I4(pDataInBnd[1]),
        .I5(pDataInBnd[0]),
        .O(pVde_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    pVde_i_2
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[7]),
        .I4(pDataInBnd[0]),
        .I5(pDataInBnd[3]),
        .O(pVde_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1__1 
       (.I0(\pWrA_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1__1 
       (.I0(\pWrA_reg_n_0_[0] ),
        .I1(\pWrA_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1__1 
       (.I0(\pWrA_reg_n_0_[1] ),
        .I1(\pWrA_reg_n_0_[0] ),
        .I2(\pWrA_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1__1 
       (.I0(\pWrA_reg_n_0_[2] ),
        .I1(\pWrA_reg_n_0_[0] ),
        .I2(\pWrA_reg_n_0_[1] ),
        .I3(\pWrA_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1__1 
       (.I0(\pWrA_reg_n_0_[3] ),
        .I1(\pWrA_reg_n_0_[1] ),
        .I2(\pWrA_reg_n_0_[0] ),
        .I3(\pWrA_reg_n_0_[2] ),
        .I4(\pWrA_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\pWrA_reg_n_0_[0] ),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\pWrA_reg_n_0_[1] ),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\pWrA_reg_n_0_[2] ),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\pWrA_reg_n_0_[3] ),
        .R(pMeRdy_int_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\pWrA_reg_n_0_[4] ),
        .R(pMeRdy_int_reg_1));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_0_ChannelBond_8
   (D,
    pMeRdy_int_reg_0,
    pMeRdy_int_reg_1,
    CLK,
    SR,
    pRdy_2,
    pRdy_0,
    pAllVldBgnFlag,
    pAllVld,
    I35);
  output [7:0]D;
  output [0:0]pMeRdy_int_reg_0;
  output pMeRdy_int_reg_1;
  input CLK;
  input [0:0]SR;
  input pRdy_2;
  input pRdy_0;
  input pAllVldBgnFlag;
  input pAllVld;
  input [9:0]I35;

  wire CLK;
  wire [7:0]D;
  wire [9:0]I35;
  wire [0:0]SR;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag0;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire \pDataIn[0]_i_2__1_n_0 ;
  wire \pDataIn[0]_i_3__1_n_0 ;
  wire \pDataIn[1]_i_2__0_n_0 ;
  wire \pDataIn[4]_i_2__0_n_0 ;
  wire \pDataIn[5]_i_2__1_n_0 ;
  wire \pDataIn[7]_i_3__0_n_0 ;
  wire pMeRdy_int_i_1_n_0;
  wire [0:0]pMeRdy_int_reg_0;
  wire pMeRdy_int_reg_1;
  wire [4:0]pRdA;
  wire \pRdA[0]_i_1__1_n_0 ;
  wire \pRdA[1]_i_1__1_n_0 ;
  wire \pRdA[2]_i_1__1_n_0 ;
  wire \pRdA[3]_i_1__1_n_0 ;
  wire \pRdA[4]_i_1__1_n_0 ;
  wire pRdEn;
  wire pRdEn_i_1__0_n_0;
  wire pRdy_0;
  wire pRdy_2;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_i_2__1_n_0;
  wire pTokenFlag_i_3__1_n_0;
  wire pTokenFlag_i_4__0_n_0;
  wire pTokenFlag_q;
  wire \pWrA_reg_n_0_[0] ;
  wire \pWrA_reg_n_0_[1] ;
  wire \pWrA_reg_n_0_[2] ;
  wire \pWrA_reg_n_0_[3] ;
  wire \pWrA_reg_n_0_[4] ;
  wire [4:0]p_0_in__0;
  wire [9:0]p_0_out;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1__0
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag0));
  FDRE pBlnkBgnFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlnkBgnFlag0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  FDRE \pDataFIFO_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1__1 
       (.I0(\pDataIn[0]_i_2__1_n_0 ),
        .I1(pTokenFlag_i_2__1_n_0),
        .I2(\pDataIn[0]_i_3__1_n_0 ),
        .I3(pTokenFlag_i_4__0_n_0),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[0]_i_2__1 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[0]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_3__1 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1__1 
       (.I0(\pDataIn[1]_i_2__0_n_0 ),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \pDataIn[1]_i_2__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(\pDataIn[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1__1 
       (.I0(pTokenFlag_i_3__1_n_0),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1__1 
       (.I0(pDataInBnd[1]),
        .I1(pTokenFlag_i_3__1_n_0),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1__1 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2__0_n_0 ),
        .I2(\pDataIn[5]_i_2__1_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2__0 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1__1 
       (.I0(\pDataIn[5]_i_2__1_n_0 ),
        .I1(pTokenFlag_i_2__1_n_0),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2__1 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1__0 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[7]_i_3__0_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1__1 
       (.I0(pMeRdy_int_reg_1),
        .I1(pRdy_2),
        .I2(pRdy_0),
        .O(pMeRdy_int_reg_0));
  LUT6 #(
    .INIT(64'h3CC338C33CC33CC3)) 
    \pDataIn[7]_i_2__1 
       (.I0(\pDataIn[7]_i_3__0_n_0 ),
        .I1(pDataInBnd[8]),
        .I2(pDataInBnd[7]),
        .I3(pDataInBnd[6]),
        .I4(pDataInBnd[5]),
        .I5(pDataInBnd[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[7]_i_3__0 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[7]_i_3__0_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[1].DecoderX/ChannelBondX/pFIFO_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD({\pWrA_reg_n_0_[4] ,\pWrA_reg_n_0_[3] ,\pWrA_reg_n_0_[2] ,\pWrA_reg_n_0_[1] ,\pWrA_reg_n_0_[0] }),
        .DIA(I35[1:0]),
        .DIB(I35[3:2]),
        .DIC(I35[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "320" *) 
  (* RTL_RAM_NAME = "DataDecoders[1].DecoderX/ChannelBondX/pFIFO_reg_0_31_6_9" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "9" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD({\pWrA_reg_n_0_[4] ,\pWrA_reg_n_0_[3] ,\pWrA_reg_n_0_[2] ,\pWrA_reg_n_0_[1] ,\pWrA_reg_n_0_[0] }),
        .DIA(I35[7:6]),
        .DIB(I35[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_1
       (.I0(pBlnkBgnFlag),
        .I1(pMeRdy_int_reg_1),
        .O(pMeRdy_int_i_1_n_0));
  FDRE pMeRdy_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pMeRdy_int_i_1_n_0),
        .Q(pMeRdy_int_reg_1),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA[0]_i_1__1 
       (.I0(pRdA[0]),
        .O(\pRdA[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA[1]_i_1__1 
       (.I0(pRdA[0]),
        .I1(pRdA[1]),
        .O(\pRdA[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA[2]_i_1__1 
       (.I0(pRdA[1]),
        .I1(pRdA[0]),
        .I2(pRdA[2]),
        .O(\pRdA[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA[3]_i_1__1 
       (.I0(pRdA[2]),
        .I1(pRdA[0]),
        .I2(pRdA[1]),
        .I3(pRdA[3]),
        .O(\pRdA[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA[4]_i_1__1 
       (.I0(pRdA[3]),
        .I1(pRdA[1]),
        .I2(pRdA[0]),
        .I3(pRdA[2]),
        .I4(pRdA[4]),
        .O(\pRdA[4]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[0] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[0]_i_1__1_n_0 ),
        .Q(pRdA[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[1] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[1]_i_1__1_n_0 ),
        .Q(pRdA[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[2] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[2]_i_1__1_n_0 ),
        .Q(pRdA[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[3] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[3]_i_1__1_n_0 ),
        .Q(pRdA[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pRdA_reg[4] 
       (.C(CLK),
        .CE(pRdEn),
        .D(\pRdA[4]_i_1__1_n_0 ),
        .Q(pRdA[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1__0
       (.I0(pAllVldBgnFlag),
        .I1(pMeRdy_int_reg_1),
        .I2(pRdy_2),
        .I3(pRdy_0),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1__0_n_0));
  FDRE pRdEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pRdEn_i_1__0_n_0),
        .Q(pRdEn),
        .R(SR));
  LUT6 #(
    .INIT(64'h5575FFFF55755575)) 
    pTokenFlag_i_1__1
       (.I0(pRdEn),
        .I1(pTokenFlag_i_2__1_n_0),
        .I2(pDataInBnd[8]),
        .I3(pTokenFlag_i_3__1_n_0),
        .I4(pTokenFlag_i_4__0_n_0),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    pTokenFlag_i_2__1
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(pTokenFlag_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    pTokenFlag_i_3__1
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(pTokenFlag_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    pTokenFlag_i_4__0
       (.I0(\pDataIn[1]_i_2__0_n_0 ),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(pTokenFlag_i_4__0_n_0));
  FDRE pTokenFlag_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1__0 
       (.I0(\pWrA_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1__0 
       (.I0(\pWrA_reg_n_0_[0] ),
        .I1(\pWrA_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1__0 
       (.I0(\pWrA_reg_n_0_[1] ),
        .I1(\pWrA_reg_n_0_[0] ),
        .I2(\pWrA_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1__0 
       (.I0(\pWrA_reg_n_0_[2] ),
        .I1(\pWrA_reg_n_0_[0] ),
        .I2(\pWrA_reg_n_0_[1] ),
        .I3(\pWrA_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1__0 
       (.I0(\pWrA_reg_n_0_[3] ),
        .I1(\pWrA_reg_n_0_[1] ),
        .I2(\pWrA_reg_n_0_[0] ),
        .I3(\pWrA_reg_n_0_[2] ),
        .I4(\pWrA_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\pWrA_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\pWrA_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\pWrA_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\pWrA_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pWrA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\pWrA_reg_n_0_[4] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_0_InputSERDES
   (D,
    pDataInRaw,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    DeserializerSlave_0,
    DeserializerMaster_0,
    CLKB,
    out);
  output [4:0]D;
  output [9:0]pDataInRaw;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input DeserializerSlave_0;
  input DeserializerMaster_0;
  input CLKB;
  input [0:0]out;

  wire CLK;
  wire CLKB;
  wire [4:0]D;
  wire DeserializerMaster_0;
  wire DeserializerSlave_0;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire icascade1;
  wire icascade2;
  wire [0:0]out;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire sDataIn;
  wire sDataInDly;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerMaster_0),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(sDataInDly),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(pDataInRaw[9]),
        .Q2(pDataInRaw[8]),
        .Q3(pDataInRaw[7]),
        .Q4(pDataInRaw[6]),
        .Q5(pDataInRaw[5]),
        .Q6(pDataInRaw[4]),
        .Q7(pDataInRaw[3]),
        .Q8(pDataInRaw[2]),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(icascade1),
        .SHIFTOUT2(icascade2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerMaster_0),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(pDataInRaw[1]),
        .Q4(pDataInRaw[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(icascade1),
        .SHIFTIN2(icascade2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(sDataIn));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(CLK),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(sDataInDly),
        .IDATAIN(sDataIn),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_0_InputSERDES_16
   (D,
    I62,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    DeserializerSlave_0,
    DeserializerMaster_0,
    CLKB,
    AS);
  output [4:0]D;
  output [9:0]I62;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input DeserializerSlave_0;
  input DeserializerMaster_0;
  input CLKB;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire [4:0]D;
  wire DeserializerMaster_0;
  wire DeserializerSlave_0;
  wire [9:0]I62;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire icascade1;
  wire icascade2;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire sDataIn;
  wire sDataInDly;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerMaster_0),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(sDataInDly),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(I62[9]),
        .Q2(I62[8]),
        .Q3(I62[7]),
        .Q4(I62[6]),
        .Q5(I62[5]),
        .Q6(I62[4]),
        .Q7(I62[3]),
        .Q8(I62[2]),
        .RST(AS),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(icascade1),
        .SHIFTOUT2(icascade2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerMaster_0),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(I62[1]),
        .Q4(I62[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(AS),
        .SHIFTIN1(icascade1),
        .SHIFTIN2(icascade2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(sDataIn));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(CLK),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(sDataInDly),
        .IDATAIN(sDataIn),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_0_InputSERDES_9
   (D,
    I35,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    DeserializerSlave_0,
    DeserializerSlave_1,
    CLKB,
    AS);
  output [4:0]D;
  output [9:0]I35;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input DeserializerSlave_0;
  input DeserializerSlave_1;
  input CLKB;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire [4:0]D;
  wire DeserializerSlave_0;
  wire DeserializerSlave_1;
  wire [9:0]I35;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire icascade1;
  wire icascade2;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire sDataIn;
  wire sDataInDly;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerSlave_1),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(sDataInDly),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(I35[9]),
        .Q2(I35[8]),
        .Q3(I35[7]),
        .Q4(I35[6]),
        .Q5(I35[5]),
        .Q6(I35[4]),
        .Q7(I35[3]),
        .Q8(I35[2]),
        .RST(AS),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(icascade1),
        .SHIFTOUT2(icascade2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(DeserializerSlave_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(DeserializerSlave_1),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(I35[1]),
        .Q4(I35[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(AS),
        .SHIFTIN1(icascade1),
        .SHIFTIN2(icascade2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(sDataIn));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(CLK),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(sDataInDly),
        .IDATAIN(sDataIn),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_0_PhaseAlign
   (pIDLY_LD,
    pIDLY_CE,
    pIDLY_INC,
    pVld_2,
    pError_reg_0,
    \pState_reg[9]_0 ,
    pBitslip0,
    CLK,
    out,
    pAlignErr_q,
    SS,
    D,
    \pIDLY_CNT_Q_reg[4]_0 );
  output pIDLY_LD;
  output pIDLY_CE;
  output pIDLY_INC;
  output pVld_2;
  output pError_reg_0;
  output \pState_reg[9]_0 ;
  output pBitslip0;
  input CLK;
  input [0:0]out;
  input pAlignErr_q;
  input [0:0]SS;
  input [8:0]D;
  input [4:0]\pIDLY_CNT_Q_reg[4]_0 ;

  wire CLK;
  wire [8:0]D;
  wire [0:0]SS;
  wire iIn_q_i_2_n_0;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAligned_i_1_n_0;
  wire pBitslip0;
  wire pBlankBegin;
  wire pBlankBegin0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1_n_0 ;
  wire \pCenterTap[2]_i_1_n_0 ;
  wire \pCenterTap[3]_i_1_n_0 ;
  wire \pCenterTap[3]_i_2_n_0 ;
  wire \pCenterTap[4]_i_1_n_0 ;
  wire \pCenterTap[5]_i_1_n_0 ;
  wire \pCenterTap[5]_i_2_n_0 ;
  wire \pCenterTap[5]_i_3_n_0 ;
  wire \pCenterTap[5]_i_4_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire \pCtlTknCnt[6]_i_3_n_0 ;
  wire [6:0]pCtlTknCnt_reg;
  wire pCtlTknOvf_i_1_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire [8:0]pDataQ;
  wire pDelayCenter;
  wire pDelayCenter_i_1_n_0;
  wire pDelayCenter_i_2_n_0;
  wire pDelayOvf;
  wire pDelayOvf_i_1_n_0;
  wire [1:0]pDelayWaitCnt;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[0]_i_2_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_2_n_0 ;
  wire \pDelayWaitCnt[1]_i_3_n_0 ;
  wire pDelayWaitOvf_i_1_n_0;
  wire pDelayWaitOvf_i_2_n_0;
  wire pDelayWaitOvf_reg_n_0;
  wire pError_i_1_n_0;
  wire pError_reg_0;
  wire \pEyeOpenCnt[4]_i_4_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pEyeOpenEn;
  wire pEyeOpenRst;
  wire pFoundEyeFlag_i_1_n_0;
  wire pFoundEyeFlag_i_2_n_0;
  wire pFoundEyeFlag_reg_n_0;
  wire pFoundJtrFlag_i_1_n_0;
  wire pFoundJtrFlag_i_2_n_0;
  wire pFoundJtrFlag_reg_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_i_1_n_0;
  wire [4:0]\pIDLY_CNT_Q_reg[4]_0 ;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1_n_0;
  wire pIDLY_INC_i_2_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_i_1_n_0;
  wire pIDLY_LD_i_2_n_0;
  wire [10:0]pState;
  wire [10:0]pStateNxt;
  wire \pStateNxt_inferred__8/i___0_n_0 ;
  wire \pStateNxt_inferred__8/i___1_n_0 ;
  wire \pStateNxt_inferred__8/i___2_n_0 ;
  wire \pStateNxt_inferred__8/i___3_n_0 ;
  wire \pStateNxt_inferred__8/i__n_0 ;
  wire \pState[10]_i_1_n_0 ;
  wire \pState[10]_i_3_n_0 ;
  wire \pState[10]_i_4_n_0 ;
  wire \pState[10]_i_5_n_0 ;
  wire \pState[10]_i_6_n_0 ;
  wire \pState[5]_i_2_n_0 ;
  wire \pState_reg[9]_0 ;
  wire \pState_reg_n_0_[4] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2_n_0;
  wire pTknFlag_i_3_n_0;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire [4:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    iIn_q_i_1
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2_n_0),
        .O(\pState_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .I5(\pState[10]_i_6_n_0 ),
        .O(iIn_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pAligned_i_1
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2_n_0),
        .O(pAligned_i_1_n_0));
  FDRE pAligned_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAligned_i_1_n_0),
        .Q(pVld_2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1
       (.I0(pError_reg_0),
        .I1(pAlignErr_q),
        .O(pBitslip0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin0));
  FDRE pBlankBegin_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlankBegin0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF62)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(pEyeOpenEn),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(pEyeOpenRst),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \pCenterTap[1]_i_1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \pCenterTap[2]_i_1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[3]_i_1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pCenterTap[3]_i_2_n_0 ),
        .I4(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pCenterTap[3]_i_2 
       (.I0(\pCenterTap_reg_n_0_[1] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[4]_i_1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pCenterTap[5]_i_4_n_0 ),
        .I4(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pCenterTap[5]_i_1 
       (.I0(pEyeOpenEn),
        .I1(pEyeOpenRst),
        .O(\pCenterTap[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F88888F888)) 
    \pCenterTap[5]_i_2 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pCenterTap[5]_i_4_n_0 ),
        .I5(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD9)) 
    \pCenterTap[5]_i_3 
       (.I0(pState[0]),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag_reg_n_0),
        .I3(\pEyeOpenCnt[4]_i_4_n_0 ),
        .I4(pIDLY_LD_i_2_n_0),
        .O(\pCenterTap[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_4 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_4_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[1]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[2]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[3]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[4]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[5]_i_2_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1 
       (.I0(pCtlTknCnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1 
       (.I0(pCtlTknCnt_reg[0]),
        .I1(pCtlTknCnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1 
       (.I0(pCtlTknCnt_reg[1]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1 
       (.I0(pCtlTknCnt_reg[2]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[1]),
        .I3(pCtlTknCnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1 
       (.I0(pCtlTknCnt_reg[3]),
        .I1(pCtlTknCnt_reg[1]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[2]),
        .I4(pCtlTknCnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \pCtlTknCnt[6]_i_1 
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(iIn_q_i_2_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2 
       (.I0(\pCtlTknCnt[6]_i_3_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pCtlTknCnt[6]_i_3 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(\pCtlTknCnt[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg[0]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg[1]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg[2]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg[3]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg[4]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg[5]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg[6]),
        .R(pCtlTknRst));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F044F0)) 
    pCtlTknOvf_i_1
       (.I0(\pCtlTknCnt[6]_i_3_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pState[2]),
        .I4(\pDelayWaitCnt[0]_i_2_n_0 ),
        .I5(iIn_q_i_2_n_0),
        .O(pCtlTknOvf_i_1_n_0));
  FDRE pCtlTknOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(pDataQ[0]),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(pDataQ[1]),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(pDataQ[2]),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(pDataQ[3]),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(pDataQ[4]),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(pDataQ[5]),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(pDataQ[6]),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(pDataQ[7]),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(pDataQ[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1
       (.I0(pDelayCenter_i_2_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2_n_0));
  FDRE pDelayCenter_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayCenter_i_1_n_0),
        .Q(pDelayCenter),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1_n_0));
  FDRE pDelayOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayOvf_i_1_n_0),
        .Q(pDelayOvf),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(pDelayWaitCnt[0]),
        .I1(pState[8]),
        .I2(pState[6]),
        .I3(\pDelayWaitCnt[0]_i_2_n_0 ),
        .I4(pState[2]),
        .I5(\pDelayWaitCnt[1]_i_3_n_0 ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pDelayWaitCnt[0]_i_2 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .O(\pDelayWaitCnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000660)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(pDelayWaitCnt[1]),
        .I1(pDelayWaitCnt[0]),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(\pDelayWaitCnt[1]_i_2_n_0 ),
        .I5(\pDelayWaitCnt[1]_i_3_n_0 ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pDelayWaitCnt[1]_i_2 
       (.I0(pState[1]),
        .I1(pState[9]),
        .I2(pState[10]),
        .I3(pState[2]),
        .O(\pDelayWaitCnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pDelayWaitCnt[1]_i_3 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[3]),
        .I3(pState[5]),
        .I4(pState[7]),
        .O(\pDelayWaitCnt[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(pDelayWaitCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(pDelayWaitCnt[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF44F00000440)) 
    pDelayWaitOvf_i_1
       (.I0(pDelayWaitCnt[0]),
        .I1(pDelayWaitCnt[1]),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(pDelayWaitOvf_i_2_n_0),
        .I5(pDelayWaitOvf_reg_n_0),
        .O(pDelayWaitOvf_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pDelayWaitOvf_i_2
       (.I0(\pDelayWaitCnt[1]_i_3_n_0 ),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .O(pDelayWaitOvf_i_2_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1_n_0),
        .Q(pDelayWaitOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pError_i_1
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2_n_0),
        .O(pError_i_1_n_0));
  FDRE pError_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pError_i_1_n_0),
        .Q(pError_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pEyeOpenCnt[0]_i_1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pEyeOpenCnt[1]_i_1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pEyeOpenCnt[2]_i_1 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pEyeOpenCnt[3]_i_1 
       (.I0(\pEyeOpenCnt_reg_n_0_[2] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00010300)) 
    \pEyeOpenCnt[4]_i_1 
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pIDLY_LD_i_2_n_0),
        .I2(\pEyeOpenCnt[4]_i_4_n_0 ),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .O(pEyeOpenRst));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \pEyeOpenCnt[4]_i_2 
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_LD_i_2_n_0),
        .I4(pState[0]),
        .I5(\pState_reg_n_0_[4] ),
        .O(pEyeOpenEn));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pEyeOpenCnt[4]_i_3 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pEyeOpenCnt[4]_i_4 
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .O(\pEyeOpenCnt[4]_i_4_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[0]),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[1]),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[2]),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[3]),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[4]),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(pEyeOpenRst));
  LUT5 #(
    .INIT(32'h0000EAFA)) 
    pFoundEyeFlag_i_1
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pFoundEyeFlag_i_2_n_0),
        .I2(pEyeOpenEn),
        .I3(\pState[5]_i_2_n_0 ),
        .I4(pIDLY_LD_i_1_n_0),
        .O(pFoundEyeFlag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    pFoundEyeFlag_i_2
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(pFoundJtrFlag_reg_n_0),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[3] ),
        .I5(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(pFoundEyeFlag_i_2_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1_n_0),
        .Q(pFoundEyeFlag_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF04)) 
    pFoundJtrFlag_i_1
       (.I0(pFoundJtrFlag_i_2_n_0),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pState[0]),
        .I3(pFoundJtrFlag_reg_n_0),
        .O(pFoundJtrFlag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pFoundJtrFlag_i_2
       (.I0(pIDLY_LD_i_2_n_0),
        .I1(pState[3]),
        .I2(pState[5]),
        .I3(pState[7]),
        .O(pFoundJtrFlag_i_2_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1_n_0),
        .Q(pFoundJtrFlag_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    pIDLY_CE_i_1
       (.I0(pIDLY_LD_i_2_n_0),
        .I1(pState[0]),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pState[3]),
        .I4(pState[5]),
        .I5(pState[7]),
        .O(pIDLY_CE_i_1_n_0));
  FDRE pIDLY_CE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_CE_i_1_n_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0200)) 
    pIDLY_INC_i_1
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_INC_i_2_n_0),
        .I4(pIDLY_INC),
        .O(pIDLY_INC_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pIDLY_INC_i_2
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[6]),
        .I3(pState[8]),
        .I4(\pDelayWaitCnt[0]_i_2_n_0 ),
        .I5(pState[2]),
        .O(pIDLY_INC_i_2_n_0));
  FDRE pIDLY_INC_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_INC_i_1_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    pIDLY_LD_i_1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[7]),
        .I3(pState[5]),
        .I4(pState[3]),
        .I5(pIDLY_LD_i_2_n_0),
        .O(pIDLY_LD_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pIDLY_LD_i_2
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(pState[8]),
        .I5(pState[6]),
        .O(pIDLY_LD_i_2_n_0));
  FDRE pIDLY_LD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_LD_i_1_n_0),
        .Q(pIDLY_LD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \pStateNxt_inferred__8/i_ 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \pStateNxt_inferred__8/i___0 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i___0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \pStateNxt_inferred__8/i___1 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
    \pStateNxt_inferred__8/i___2 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \pStateNxt_inferred__8/i___3 
       (.I0(\pStateNxt_inferred__8/i__n_0 ),
        .I1(\pStateNxt_inferred__8/i___0_n_0 ),
        .I2(\pStateNxt_inferred__8/i___1_n_0 ),
        .I3(\pStateNxt_inferred__8/i___2_n_0 ),
        .O(\pStateNxt_inferred__8/i___3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pState[0]_i_1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1 
       (.I0(\pState[10]_i_3_n_0 ),
        .I1(out),
        .I2(pState[1]),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4_n_0 ),
        .I5(\pState[10]_i_5_n_0 ),
        .O(\pState[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[10]_i_2 
       (.I0(pDelayOvf),
        .I1(pState[6]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[10]));
  LUT6 #(
    .INIT(64'h0000000000000045)) 
    \pState[10]_i_3 
       (.I0(\pState[10]_i_6_n_0 ),
        .I1(pCtlTknOvf_reg_n_0),
        .I2(pTknFlagQ),
        .I3(pState[1]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pState[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE8E8E8)) 
    \pState[10]_i_4 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[8]),
        .I4(pState[6]),
        .I5(\pDelayWaitCnt[1]_i_3_n_0 ),
        .O(\pState[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFECCCCCCC3)) 
    \pState[10]_i_5 
       (.I0(pDelayWaitOvf_reg_n_0),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .I5(\pState[10]_i_6_n_0 ),
        .O(\pState[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6 
       (.I0(pState[6]),
        .I1(pState[8]),
        .O(\pState[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \pState[1]_i_1 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(pDelayOvf),
        .I3(pState[6]),
        .I4(pState[0]),
        .I5(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[2]_i_1 
       (.I0(pBlankBegin),
        .I1(pState[1]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[3]_i_1 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h4040F040)) 
    \pState[4]_i_1 
       (.I0(\pState[5]_i_2_n_0 ),
        .I1(pState[3]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(pState[1]),
        .I4(pBlankBegin),
        .O(pStateNxt[4]));
  LUT5 #(
    .INIT(32'hF2002200)) 
    \pState[5]_i_1 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pFoundEyeFlag_reg_n_0),
        .I2(\pState[5]_i_2_n_0 ),
        .I3(\pStateNxt_inferred__8/i___3_n_0 ),
        .I4(pState[3]),
        .O(pStateNxt[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \pState[5]_i_2 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[2] ),
        .I2(\pEyeOpenCnt_reg_n_0_[3] ),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[6]_i_1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[5]),
        .O(pStateNxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hF0202020)) 
    \pState[7]_i_1 
       (.I0(pState[8]),
        .I1(pDelayCenter),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(pFoundEyeFlag_reg_n_0),
        .O(pStateNxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[8]_i_1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[7]),
        .O(pStateNxt[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[9]_i_1 
       (.I0(pDelayCenter),
        .I1(pState[8]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[9]));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDSE \pState_reg[0] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[0]),
        .Q(pState[0]),
        .S(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[10] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[10]),
        .Q(pState[10]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[1] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[1]),
        .Q(pState[1]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[2] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[2]),
        .Q(pState[2]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[3] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[3]),
        .Q(pState[3]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[4] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[4]),
        .Q(\pState_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[5] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[5]),
        .Q(pState[5]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[6] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[6]),
        .Q(pState[6]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[7] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[7]),
        .Q(pState[7]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[8] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[8]),
        .Q(pState[8]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[9] 
       (.C(CLK),
        .CE(\pState[10]_i_1_n_0 ),
        .D(pStateNxt[9]),
        .Q(pState[9]),
        .R(SS));
  FDRE pTknFlagQ_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h22400040)) 
    pTknFlag_i_1
       (.I0(pDataQ[8]),
        .I1(pDataQ[7]),
        .I2(pTknFlag_i_2_n_0),
        .I3(pDataQ[6]),
        .I4(pTknFlag_i_3_n_0),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    pTknFlag_i_2
       (.I0(pDataQ[0]),
        .I1(pDataQ[1]),
        .I2(pDataQ[2]),
        .I3(pDataQ[3]),
        .I4(pDataQ[5]),
        .I5(pDataQ[4]),
        .O(pTknFlag_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    pTknFlag_i_3
       (.I0(pDataQ[3]),
        .I1(pDataQ[1]),
        .I2(pDataQ[0]),
        .I3(pDataQ[2]),
        .I4(pDataQ[4]),
        .I5(pDataQ[5]),
        .O(pTknFlag_i_3_n_0));
  FDRE pTknFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_0_PhaseAlign_10
   (pIDLY_LD,
    pIDLY_CE,
    pIDLY_INC,
    pVld_1,
    pError_reg_0,
    pAligned_reg_0,
    \pState_reg[9]_0 ,
    pBitslip0,
    CLK,
    pVld_2,
    pVld_0,
    out,
    pAlignErr_q,
    SS,
    D,
    \pIDLY_CNT_Q_reg[4]_0 );
  output pIDLY_LD;
  output pIDLY_CE;
  output pIDLY_INC;
  output pVld_1;
  output pError_reg_0;
  output pAligned_reg_0;
  output \pState_reg[9]_0 ;
  output pBitslip0;
  input CLK;
  input pVld_2;
  input pVld_0;
  input [0:0]out;
  input pAlignErr_q;
  input [0:0]SS;
  input [8:0]D;
  input [4:0]\pIDLY_CNT_Q_reg[4]_0 ;

  wire CLK;
  wire [8:0]D;
  wire [0:0]SS;
  wire iIn_q_i_2__0_n_0;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAligned_i_1__0_n_0;
  wire pAligned_reg_0;
  wire pBitslip0;
  wire pBlankBegin;
  wire pBlankBegin0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1__0_n_0 ;
  wire \pCenterTap[2]_i_1__0_n_0 ;
  wire \pCenterTap[3]_i_1__0_n_0 ;
  wire \pCenterTap[3]_i_2__0_n_0 ;
  wire \pCenterTap[4]_i_1__0_n_0 ;
  wire \pCenterTap[5]_i_1__0_n_0 ;
  wire \pCenterTap[5]_i_2__0_n_0 ;
  wire \pCenterTap[5]_i_3__0_n_0 ;
  wire \pCenterTap[5]_i_4__0_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire \pCtlTknCnt[6]_i_3__0_n_0 ;
  wire [6:0]pCtlTknCnt_reg;
  wire pCtlTknOvf_i_1__0_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire \pDataQ_reg_n_0_[0] ;
  wire \pDataQ_reg_n_0_[1] ;
  wire \pDataQ_reg_n_0_[2] ;
  wire \pDataQ_reg_n_0_[3] ;
  wire \pDataQ_reg_n_0_[4] ;
  wire \pDataQ_reg_n_0_[5] ;
  wire \pDataQ_reg_n_0_[6] ;
  wire \pDataQ_reg_n_0_[7] ;
  wire \pDataQ_reg_n_0_[8] ;
  wire pDelayCenter_i_1__0_n_0;
  wire pDelayCenter_i_2__0_n_0;
  wire pDelayCenter_reg_n_0;
  wire pDelayOvf_i_1__0_n_0;
  wire pDelayOvf_reg_n_0;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[0]_i_2__0_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_2__0_n_0 ;
  wire \pDelayWaitCnt[1]_i_3__0_n_0 ;
  wire \pDelayWaitCnt_reg_n_0_[0] ;
  wire \pDelayWaitCnt_reg_n_0_[1] ;
  wire pDelayWaitOvf_i_1__0_n_0;
  wire pDelayWaitOvf_i_2__0_n_0;
  wire pDelayWaitOvf_reg_n_0;
  wire pError_i_1__0_n_0;
  wire pError_reg_0;
  wire \pEyeOpenCnt[4]_i_4__0_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pEyeOpenEn;
  wire pEyeOpenRst;
  wire pFoundEyeFlag_i_1__0_n_0;
  wire pFoundEyeFlag_i_2__0_n_0;
  wire pFoundEyeFlag_reg_n_0;
  wire pFoundJtrFlag_i_1__0_n_0;
  wire pFoundJtrFlag_i_2__0_n_0;
  wire pFoundJtrFlag_reg_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_i_1__0_n_0;
  wire [4:0]\pIDLY_CNT_Q_reg[4]_0 ;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1__0_n_0;
  wire pIDLY_INC_i_2__0_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_i_1__0_n_0;
  wire pIDLY_LD_i_2__0_n_0;
  wire [10:0]pState;
  wire [10:0]pStateNxt;
  wire \pStateNxt_inferred__8/i___0_n_0 ;
  wire \pStateNxt_inferred__8/i___1_n_0 ;
  wire \pStateNxt_inferred__8/i___2_n_0 ;
  wire \pStateNxt_inferred__8/i___3_n_0 ;
  wire \pStateNxt_inferred__8/i__n_0 ;
  wire \pState[10]_i_1__0_n_0 ;
  wire \pState[10]_i_3__0_n_0 ;
  wire \pState[10]_i_4__0_n_0 ;
  wire \pState[10]_i_5__0_n_0 ;
  wire \pState[10]_i_6__0_n_0 ;
  wire \pState[5]_i_2__0_n_0 ;
  wire \pState_reg[9]_0 ;
  wire \pState_reg_n_0_[4] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2__0_n_0;
  wire pTknFlag_i_3__0_n_0;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire [4:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    iIn_q_i_1__0
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__0_n_0),
        .O(\pState_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2__0
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .I5(\pState[10]_i_6__0_n_0 ),
        .O(iIn_q_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pAligned_i_1__0
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__0_n_0),
        .O(pAligned_i_1__0_n_0));
  FDRE pAligned_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAligned_i_1__0_n_0),
        .Q(pVld_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1__0
       (.I0(pError_reg_0),
        .I1(pAlignErr_q),
        .O(pBitslip0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1__0
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin0));
  FDRE pBlankBegin_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlankBegin0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF62)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(pEyeOpenEn),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(pEyeOpenRst),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \pCenterTap[1]_i_1__0 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \pCenterTap[2]_i_1__0 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[3]_i_1__0 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pCenterTap[3]_i_2__0_n_0 ),
        .I4(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pCenterTap[3]_i_2__0 
       (.I0(\pCenterTap_reg_n_0_[1] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[4]_i_1__0 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pCenterTap[5]_i_4__0_n_0 ),
        .I4(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pCenterTap[5]_i_1__0 
       (.I0(pEyeOpenEn),
        .I1(pEyeOpenRst),
        .O(\pCenterTap[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F88888F888)) 
    \pCenterTap[5]_i_2__0 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pCenterTap[5]_i_4__0_n_0 ),
        .I5(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD9)) 
    \pCenterTap[5]_i_3__0 
       (.I0(pState[0]),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag_reg_n_0),
        .I3(\pEyeOpenCnt[4]_i_4__0_n_0 ),
        .I4(pIDLY_LD_i_2__0_n_0),
        .O(\pCenterTap[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_4__0 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_4__0_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[1]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[2]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[3]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[4]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[5]_i_2__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1__0 
       (.I0(pCtlTknCnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1__0 
       (.I0(pCtlTknCnt_reg[0]),
        .I1(pCtlTknCnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1__0 
       (.I0(pCtlTknCnt_reg[1]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1__0 
       (.I0(pCtlTknCnt_reg[2]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[1]),
        .I3(pCtlTknCnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1__0 
       (.I0(pCtlTknCnt_reg[3]),
        .I1(pCtlTknCnt_reg[1]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[2]),
        .I4(pCtlTknCnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1__0 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \pCtlTknCnt[6]_i_1__0 
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(iIn_q_i_2__0_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2__0 
       (.I0(\pCtlTknCnt[6]_i_3__0_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pCtlTknCnt[6]_i_3__0 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(\pCtlTknCnt[6]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg[0]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg[1]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg[2]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg[3]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg[4]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg[5]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg[6]),
        .R(pCtlTknRst));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F044F0)) 
    pCtlTknOvf_i_1__0
       (.I0(\pCtlTknCnt[6]_i_3__0_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pState[2]),
        .I4(\pDelayWaitCnt[0]_i_2__0_n_0 ),
        .I5(iIn_q_i_2__0_n_0),
        .O(pCtlTknOvf_i_1__0_n_0));
  FDRE pCtlTknOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1__0_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\pDataQ_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\pDataQ_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\pDataQ_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\pDataQ_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\pDataQ_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\pDataQ_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\pDataQ_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\pDataQ_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(\pDataQ_reg_n_0_[8] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1__0
       (.I0(pDelayCenter_i_2__0_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2__0
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2__0_n_0));
  FDRE pDelayCenter_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayCenter_i_1__0_n_0),
        .Q(pDelayCenter_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1__0
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1__0_n_0));
  FDRE pDelayOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayOvf_i_1__0_n_0),
        .Q(pDelayOvf_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(\pDelayWaitCnt_reg_n_0_[0] ),
        .I1(pState[8]),
        .I2(pState[6]),
        .I3(\pDelayWaitCnt[0]_i_2__0_n_0 ),
        .I4(pState[2]),
        .I5(\pDelayWaitCnt[1]_i_3__0_n_0 ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pDelayWaitCnt[0]_i_2__0 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .O(\pDelayWaitCnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000660)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(\pDelayWaitCnt_reg_n_0_[1] ),
        .I1(\pDelayWaitCnt_reg_n_0_[0] ),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(\pDelayWaitCnt[1]_i_2__0_n_0 ),
        .I5(\pDelayWaitCnt[1]_i_3__0_n_0 ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pDelayWaitCnt[1]_i_2__0 
       (.I0(pState[1]),
        .I1(pState[9]),
        .I2(pState[10]),
        .I3(pState[2]),
        .O(\pDelayWaitCnt[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pDelayWaitCnt[1]_i_3__0 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[3]),
        .I3(pState[5]),
        .I4(pState[7]),
        .O(\pDelayWaitCnt[1]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(\pDelayWaitCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(\pDelayWaitCnt_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF44F00000440)) 
    pDelayWaitOvf_i_1__0
       (.I0(\pDelayWaitCnt_reg_n_0_[0] ),
        .I1(\pDelayWaitCnt_reg_n_0_[1] ),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(pDelayWaitOvf_i_2__0_n_0),
        .I5(pDelayWaitOvf_reg_n_0),
        .O(pDelayWaitOvf_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pDelayWaitOvf_i_2__0
       (.I0(\pDelayWaitCnt[1]_i_3__0_n_0 ),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .O(pDelayWaitOvf_i_2__0_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1__0_n_0),
        .Q(pDelayWaitOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pError_i_1__0
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__0_n_0),
        .O(pError_i_1__0_n_0));
  FDRE pError_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pError_i_1__0_n_0),
        .Q(pError_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pEyeOpenCnt[0]_i_1__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pEyeOpenCnt[1]_i_1__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pEyeOpenCnt[2]_i_1__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pEyeOpenCnt[3]_i_1__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[2] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00010300)) 
    \pEyeOpenCnt[4]_i_1__0 
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pIDLY_LD_i_2__0_n_0),
        .I2(\pEyeOpenCnt[4]_i_4__0_n_0 ),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .O(pEyeOpenRst));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \pEyeOpenCnt[4]_i_2__0 
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_LD_i_2__0_n_0),
        .I4(pState[0]),
        .I5(\pState_reg_n_0_[4] ),
        .O(pEyeOpenEn));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pEyeOpenCnt[4]_i_3__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pEyeOpenCnt[4]_i_4__0 
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .O(\pEyeOpenCnt[4]_i_4__0_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[0]),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[1]),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[2]),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[3]),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[4]),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(pEyeOpenRst));
  LUT5 #(
    .INIT(32'h0000EAFA)) 
    pFoundEyeFlag_i_1__0
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pFoundEyeFlag_i_2__0_n_0),
        .I2(pEyeOpenEn),
        .I3(\pState[5]_i_2__0_n_0 ),
        .I4(pIDLY_LD_i_1__0_n_0),
        .O(pFoundEyeFlag_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    pFoundEyeFlag_i_2__0
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(pFoundJtrFlag_reg_n_0),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[3] ),
        .I5(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(pFoundEyeFlag_i_2__0_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1__0_n_0),
        .Q(pFoundEyeFlag_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF04)) 
    pFoundJtrFlag_i_1__0
       (.I0(pFoundJtrFlag_i_2__0_n_0),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pState[0]),
        .I3(pFoundJtrFlag_reg_n_0),
        .O(pFoundJtrFlag_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pFoundJtrFlag_i_2__0
       (.I0(pIDLY_LD_i_2__0_n_0),
        .I1(pState[3]),
        .I2(pState[5]),
        .I3(pState[7]),
        .O(pFoundJtrFlag_i_2__0_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1__0_n_0),
        .Q(pFoundJtrFlag_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    pIDLY_CE_i_1__0
       (.I0(pIDLY_LD_i_2__0_n_0),
        .I1(pState[0]),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pState[3]),
        .I4(pState[5]),
        .I5(pState[7]),
        .O(pIDLY_CE_i_1__0_n_0));
  FDRE pIDLY_CE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_CE_i_1__0_n_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0200)) 
    pIDLY_INC_i_1__0
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_INC_i_2__0_n_0),
        .I4(pIDLY_INC),
        .O(pIDLY_INC_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pIDLY_INC_i_2__0
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[6]),
        .I3(pState[8]),
        .I4(\pDelayWaitCnt[0]_i_2__0_n_0 ),
        .I5(pState[2]),
        .O(pIDLY_INC_i_2__0_n_0));
  FDRE pIDLY_INC_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_INC_i_1__0_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    pIDLY_LD_i_1__0
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[7]),
        .I3(pState[5]),
        .I4(pState[3]),
        .I5(pIDLY_LD_i_2__0_n_0),
        .O(pIDLY_LD_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pIDLY_LD_i_2__0
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(pState[8]),
        .I5(pState[6]),
        .O(pIDLY_LD_i_2__0_n_0));
  FDRE pIDLY_LD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_LD_i_1__0_n_0),
        .Q(pIDLY_LD),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    pMeRdy_int_i_1
       (.I0(pVld_1),
        .I1(pVld_2),
        .I2(pVld_0),
        .O(pAligned_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \pStateNxt_inferred__8/i_ 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \pStateNxt_inferred__8/i___0 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i___0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \pStateNxt_inferred__8/i___1 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
    \pStateNxt_inferred__8/i___2 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \pStateNxt_inferred__8/i___3 
       (.I0(\pStateNxt_inferred__8/i__n_0 ),
        .I1(\pStateNxt_inferred__8/i___0_n_0 ),
        .I2(\pStateNxt_inferred__8/i___1_n_0 ),
        .I3(\pStateNxt_inferred__8/i___2_n_0 ),
        .O(\pStateNxt_inferred__8/i___3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pState[0]_i_1__0 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1__0 
       (.I0(\pState[10]_i_3__0_n_0 ),
        .I1(out),
        .I2(pState[1]),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4__0_n_0 ),
        .I5(\pState[10]_i_5__0_n_0 ),
        .O(\pState[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[10]_i_2__0 
       (.I0(pDelayOvf_reg_n_0),
        .I1(pState[6]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[10]));
  LUT6 #(
    .INIT(64'h0000000000000045)) 
    \pState[10]_i_3__0 
       (.I0(\pState[10]_i_6__0_n_0 ),
        .I1(pCtlTknOvf_reg_n_0),
        .I2(pTknFlagQ),
        .I3(pState[1]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pState[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE8E8E8)) 
    \pState[10]_i_4__0 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[8]),
        .I4(pState[6]),
        .I5(\pDelayWaitCnt[1]_i_3__0_n_0 ),
        .O(\pState[10]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFECCCCCCC3)) 
    \pState[10]_i_5__0 
       (.I0(pDelayWaitOvf_reg_n_0),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .I5(\pState[10]_i_6__0_n_0 ),
        .O(\pState[10]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6__0 
       (.I0(pState[6]),
        .I1(pState[8]),
        .O(\pState[10]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \pState[1]_i_1__0 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(pDelayOvf_reg_n_0),
        .I3(pState[6]),
        .I4(pState[0]),
        .I5(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[2]_i_1__0 
       (.I0(pBlankBegin),
        .I1(pState[1]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[3]_i_1__0 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h4040F040)) 
    \pState[4]_i_1__0 
       (.I0(\pState[5]_i_2__0_n_0 ),
        .I1(pState[3]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(pState[1]),
        .I4(pBlankBegin),
        .O(pStateNxt[4]));
  LUT5 #(
    .INIT(32'hF2002200)) 
    \pState[5]_i_1__0 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pFoundEyeFlag_reg_n_0),
        .I2(\pState[5]_i_2__0_n_0 ),
        .I3(\pStateNxt_inferred__8/i___3_n_0 ),
        .I4(pState[3]),
        .O(pStateNxt[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \pState[5]_i_2__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[2] ),
        .I2(\pEyeOpenCnt_reg_n_0_[3] ),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pState[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[6]_i_1__0 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[5]),
        .O(pStateNxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hF0202020)) 
    \pState[7]_i_1__0 
       (.I0(pState[8]),
        .I1(pDelayCenter_reg_n_0),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(pFoundEyeFlag_reg_n_0),
        .O(pStateNxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[8]_i_1__0 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[7]),
        .O(pStateNxt[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[9]_i_1__0 
       (.I0(pDelayCenter_reg_n_0),
        .I1(pState[8]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[9]));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDSE \pState_reg[0] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[0]),
        .Q(pState[0]),
        .S(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[10] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[10]),
        .Q(pState[10]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[1] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[1]),
        .Q(pState[1]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[2] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[2]),
        .Q(pState[2]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[3] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[3]),
        .Q(pState[3]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[4] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[4]),
        .Q(\pState_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[5] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[5]),
        .Q(pState[5]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[6] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[6]),
        .Q(pState[6]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[7] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[7]),
        .Q(pState[7]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[8] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[8]),
        .Q(pState[8]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[9] 
       (.C(CLK),
        .CE(\pState[10]_i_1__0_n_0 ),
        .D(pStateNxt[9]),
        .Q(pState[9]),
        .R(SS));
  FDRE pTknFlagQ_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h22400040)) 
    pTknFlag_i_1__0
       (.I0(\pDataQ_reg_n_0_[8] ),
        .I1(\pDataQ_reg_n_0_[7] ),
        .I2(pTknFlag_i_2__0_n_0),
        .I3(\pDataQ_reg_n_0_[6] ),
        .I4(pTknFlag_i_3__0_n_0),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    pTknFlag_i_2__0
       (.I0(\pDataQ_reg_n_0_[0] ),
        .I1(\pDataQ_reg_n_0_[1] ),
        .I2(\pDataQ_reg_n_0_[2] ),
        .I3(\pDataQ_reg_n_0_[3] ),
        .I4(\pDataQ_reg_n_0_[5] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    pTknFlag_i_3__0
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[1] ),
        .I2(\pDataQ_reg_n_0_[0] ),
        .I3(\pDataQ_reg_n_0_[2] ),
        .I4(\pDataQ_reg_n_0_[4] ),
        .I5(\pDataQ_reg_n_0_[5] ),
        .O(pTknFlag_i_3__0_n_0));
  FDRE pTknFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_0_PhaseAlign_17
   (pIDLY_LD,
    pVld_0,
    pIDLY_CE,
    pIDLY_INC,
    pError_reg_0,
    pAllVldBgnFlag0,
    pAllVld,
    \pState_reg[9]_0 ,
    pBitslip0,
    CLK,
    pVld_2,
    pVld_1,
    pAllVld_q,
    out,
    pAlignErr_q,
    SS,
    D,
    \pIDLY_CNT_Q_reg[4]_0 );
  output pIDLY_LD;
  output pVld_0;
  output pIDLY_CE;
  output pIDLY_INC;
  output pError_reg_0;
  output pAllVldBgnFlag0;
  output pAllVld;
  output \pState_reg[9]_0 ;
  output pBitslip0;
  input CLK;
  input pVld_2;
  input pVld_1;
  input pAllVld_q;
  input [0:0]out;
  input pAlignErr_q;
  input [0:0]SS;
  input [8:0]D;
  input [4:0]\pIDLY_CNT_Q_reg[4]_0 ;

  wire CLK;
  wire [8:0]D;
  wire [0:0]SS;
  wire iIn_q_i_2__1_n_0;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAligned_i_1__1_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip0;
  wire pBlankBegin;
  wire pBlankBegin0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1__1_n_0 ;
  wire \pCenterTap[2]_i_1__1_n_0 ;
  wire \pCenterTap[3]_i_1__1_n_0 ;
  wire \pCenterTap[3]_i_2__1_n_0 ;
  wire \pCenterTap[4]_i_1__1_n_0 ;
  wire \pCenterTap[5]_i_1__1_n_0 ;
  wire \pCenterTap[5]_i_2__1_n_0 ;
  wire \pCenterTap[5]_i_3__1_n_0 ;
  wire \pCenterTap[5]_i_4__1_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire \pCtlTknCnt[6]_i_3__1_n_0 ;
  wire [6:0]pCtlTknCnt_reg;
  wire pCtlTknOvf_i_1__1_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire \pDataQ_reg_n_0_[0] ;
  wire \pDataQ_reg_n_0_[1] ;
  wire \pDataQ_reg_n_0_[2] ;
  wire \pDataQ_reg_n_0_[3] ;
  wire \pDataQ_reg_n_0_[4] ;
  wire \pDataQ_reg_n_0_[5] ;
  wire \pDataQ_reg_n_0_[6] ;
  wire \pDataQ_reg_n_0_[7] ;
  wire \pDataQ_reg_n_0_[8] ;
  wire pDelayCenter_i_1__1_n_0;
  wire pDelayCenter_i_2__1_n_0;
  wire pDelayCenter_reg_n_0;
  wire pDelayOvf_i_1__1_n_0;
  wire pDelayOvf_reg_n_0;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[0]_i_2__1_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_2__1_n_0 ;
  wire \pDelayWaitCnt[1]_i_3__1_n_0 ;
  wire \pDelayWaitCnt_reg_n_0_[0] ;
  wire \pDelayWaitCnt_reg_n_0_[1] ;
  wire pDelayWaitOvf_i_1__1_n_0;
  wire pDelayWaitOvf_i_2__1_n_0;
  wire pDelayWaitOvf_reg_n_0;
  wire pError_i_1__1_n_0;
  wire pError_reg_0;
  wire \pEyeOpenCnt[4]_i_4__1_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pEyeOpenEn;
  wire pEyeOpenRst;
  wire pFoundEyeFlag_i_1__1_n_0;
  wire pFoundEyeFlag_i_2__1_n_0;
  wire pFoundEyeFlag_reg_n_0;
  wire pFoundJtrFlag_i_1__1_n_0;
  wire pFoundJtrFlag_i_2__1_n_0;
  wire pFoundJtrFlag_reg_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_i_1__1_n_0;
  wire [4:0]\pIDLY_CNT_Q_reg[4]_0 ;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1__1_n_0;
  wire pIDLY_INC_i_2__1_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_i_1__1_n_0;
  wire pIDLY_LD_i_2__1_n_0;
  wire [10:0]pState;
  wire [10:0]pStateNxt;
  wire \pStateNxt_inferred__8/i___0_n_0 ;
  wire \pStateNxt_inferred__8/i___1_n_0 ;
  wire \pStateNxt_inferred__8/i___2_n_0 ;
  wire \pStateNxt_inferred__8/i___3_n_0 ;
  wire \pStateNxt_inferred__8/i__n_0 ;
  wire \pState[10]_i_1__1_n_0 ;
  wire \pState[10]_i_3__1_n_0 ;
  wire \pState[10]_i_4__1_n_0 ;
  wire \pState[10]_i_5__1_n_0 ;
  wire \pState[10]_i_6__1_n_0 ;
  wire \pState[5]_i_2__1_n_0 ;
  wire \pState_reg[9]_0 ;
  wire \pState_reg_n_0_[4] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2__1_n_0;
  wire pTknFlag_i_3__1_n_0;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire [4:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    iIn_q_i_1__1
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__1_n_0),
        .O(\pState_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2__1
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .I5(\pState[10]_i_6__1_n_0 ),
        .O(iIn_q_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pAligned_i_1__1
       (.I0(pState[9]),
        .I1(pState[10]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__1_n_0),
        .O(pAligned_i_1__1_n_0));
  FDRE pAligned_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAligned_i_1__1_n_0),
        .Q(pVld_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    pAllVldBgnFlag_i_1
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .I3(pAllVld_q),
        .O(pAllVldBgnFlag0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1__1
       (.I0(pError_reg_0),
        .I1(pAlignErr_q),
        .O(pBitslip0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1__1
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin0));
  FDRE pBlankBegin_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBlankBegin0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF62)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(pEyeOpenEn),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(pEyeOpenRst),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \pCenterTap[1]_i_1__1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8F8F8F8888888)) 
    \pCenterTap[2]_i_1__1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pCenterTap_reg_n_0_[1] ),
        .I4(\pCenterTap_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[3]_i_1__1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pCenterTap[3]_i_2__1_n_0 ),
        .I4(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pCenterTap[3]_i_2__1 
       (.I0(\pCenterTap_reg_n_0_[1] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \pCenterTap[4]_i_1__1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pCenterTap[5]_i_4__1_n_0 ),
        .I4(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pCenterTap[5]_i_1__1 
       (.I0(pEyeOpenEn),
        .I1(pEyeOpenRst),
        .O(\pCenterTap[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F888F88888F888)) 
    \pCenterTap[5]_i_2__1 
       (.I0(pEyeOpenRst),
        .I1(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pCenterTap[5]_i_4__1_n_0 ),
        .I5(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD9)) 
    \pCenterTap[5]_i_3__1 
       (.I0(pState[0]),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag_reg_n_0),
        .I3(\pEyeOpenCnt[4]_i_4__1_n_0 ),
        .I4(pIDLY_LD_i_2__1_n_0),
        .O(\pCenterTap[5]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_4__1 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_4__1_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[1]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[2]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[3]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[4]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(CLK),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[5]_i_2__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1__1 
       (.I0(pCtlTknCnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1__1 
       (.I0(pCtlTknCnt_reg[0]),
        .I1(pCtlTknCnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1__1 
       (.I0(pCtlTknCnt_reg[1]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1__1 
       (.I0(pCtlTknCnt_reg[2]),
        .I1(pCtlTknCnt_reg[0]),
        .I2(pCtlTknCnt_reg[1]),
        .I3(pCtlTknCnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1__1 
       (.I0(pCtlTknCnt_reg[3]),
        .I1(pCtlTknCnt_reg[1]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[2]),
        .I4(pCtlTknCnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1__1 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \pCtlTknCnt[6]_i_1__1 
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(iIn_q_i_2__1_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2__1 
       (.I0(\pCtlTknCnt[6]_i_3__1_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pCtlTknCnt[6]_i_3__1 
       (.I0(pCtlTknCnt_reg[4]),
        .I1(pCtlTknCnt_reg[2]),
        .I2(pCtlTknCnt_reg[0]),
        .I3(pCtlTknCnt_reg[1]),
        .I4(pCtlTknCnt_reg[3]),
        .I5(pCtlTknCnt_reg[5]),
        .O(\pCtlTknCnt[6]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg[0]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg[1]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg[2]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg[3]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg[4]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg[5]),
        .R(pCtlTknRst));
  FDRE #(
    .INIT(1'b0)) 
    \pCtlTknCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg[6]),
        .R(pCtlTknRst));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F044F0)) 
    pCtlTknOvf_i_1__1
       (.I0(\pCtlTknCnt[6]_i_3__1_n_0 ),
        .I1(pCtlTknCnt_reg[6]),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pState[2]),
        .I4(\pDelayWaitCnt[0]_i_2__1_n_0 ),
        .I5(iIn_q_i_2__1_n_0),
        .O(pCtlTknOvf_i_1__1_n_0));
  FDRE pCtlTknOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1__1_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\pDataQ_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\pDataQ_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\pDataQ_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\pDataQ_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\pDataQ_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\pDataQ_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\pDataQ_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\pDataQ_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(\pDataQ_reg_n_0_[8] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1__1
       (.I0(pDelayCenter_i_2__1_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2__1
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2__1_n_0));
  FDRE pDelayCenter_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayCenter_i_1__1_n_0),
        .Q(pDelayCenter_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1__1
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1__1_n_0));
  FDRE pDelayOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayOvf_i_1__1_n_0),
        .Q(pDelayOvf_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(\pDelayWaitCnt_reg_n_0_[0] ),
        .I1(pState[8]),
        .I2(pState[6]),
        .I3(\pDelayWaitCnt[0]_i_2__1_n_0 ),
        .I4(pState[2]),
        .I5(\pDelayWaitCnt[1]_i_3__1_n_0 ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pDelayWaitCnt[0]_i_2__1 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .O(\pDelayWaitCnt[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000660)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(\pDelayWaitCnt_reg_n_0_[1] ),
        .I1(\pDelayWaitCnt_reg_n_0_[0] ),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(\pDelayWaitCnt[1]_i_2__1_n_0 ),
        .I5(\pDelayWaitCnt[1]_i_3__1_n_0 ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pDelayWaitCnt[1]_i_2__1 
       (.I0(pState[1]),
        .I1(pState[9]),
        .I2(pState[10]),
        .I3(pState[2]),
        .O(\pDelayWaitCnt[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pDelayWaitCnt[1]_i_3__1 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[3]),
        .I3(pState[5]),
        .I4(pState[7]),
        .O(\pDelayWaitCnt[1]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(\pDelayWaitCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pDelayWaitCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(\pDelayWaitCnt_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF44F00000440)) 
    pDelayWaitOvf_i_1__1
       (.I0(\pDelayWaitCnt_reg_n_0_[0] ),
        .I1(\pDelayWaitCnt_reg_n_0_[1] ),
        .I2(pState[8]),
        .I3(pState[6]),
        .I4(pDelayWaitOvf_i_2__1_n_0),
        .I5(pDelayWaitOvf_reg_n_0),
        .O(pDelayWaitOvf_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pDelayWaitOvf_i_2__1
       (.I0(\pDelayWaitCnt[1]_i_3__1_n_0 ),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .O(pDelayWaitOvf_i_2__1_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1__1_n_0),
        .Q(pDelayWaitOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    pError_i_1__1
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[2]),
        .I4(iIn_q_i_2__1_n_0),
        .O(pError_i_1__1_n_0));
  FDRE pError_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pError_i_1__1_n_0),
        .Q(pError_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pEyeOpenCnt[0]_i_1__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pEyeOpenCnt[1]_i_1__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pEyeOpenCnt[2]_i_1__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pEyeOpenCnt[3]_i_1__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[2] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h00010300)) 
    \pEyeOpenCnt[4]_i_1__1 
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pIDLY_LD_i_2__1_n_0),
        .I2(\pEyeOpenCnt[4]_i_4__1_n_0 ),
        .I3(pState[0]),
        .I4(\pState_reg_n_0_[4] ),
        .O(pEyeOpenRst));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \pEyeOpenCnt[4]_i_2__1 
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_LD_i_2__1_n_0),
        .I4(pState[0]),
        .I5(\pState_reg_n_0_[4] ),
        .O(pEyeOpenEn));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pEyeOpenCnt[4]_i_3__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pEyeOpenCnt[4]_i_4__1 
       (.I0(pState[7]),
        .I1(pState[5]),
        .I2(pState[3]),
        .O(\pEyeOpenCnt[4]_i_4__1_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[0]),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[1]),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[2]),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[3]),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(pEyeOpenRst));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(CLK),
        .CE(pEyeOpenEn),
        .D(plusOp[4]),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(pEyeOpenRst));
  LUT3 #(
    .INIT(8'h80)) 
    pFIFO_reg_0_31_0_5_i_1
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .O(pAllVld));
  LUT5 #(
    .INIT(32'h0000EAFA)) 
    pFoundEyeFlag_i_1__1
       (.I0(pFoundEyeFlag_reg_n_0),
        .I1(pFoundEyeFlag_i_2__1_n_0),
        .I2(pEyeOpenEn),
        .I3(\pState[5]_i_2__1_n_0 ),
        .I4(pIDLY_LD_i_1__1_n_0),
        .O(pFoundEyeFlag_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    pFoundEyeFlag_i_2__1
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .I2(pFoundJtrFlag_reg_n_0),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[3] ),
        .I5(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(pFoundEyeFlag_i_2__1_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1__1_n_0),
        .Q(pFoundEyeFlag_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF04)) 
    pFoundJtrFlag_i_1__1
       (.I0(pFoundJtrFlag_i_2__1_n_0),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pState[0]),
        .I3(pFoundJtrFlag_reg_n_0),
        .O(pFoundJtrFlag_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    pFoundJtrFlag_i_2__1
       (.I0(pIDLY_LD_i_2__1_n_0),
        .I1(pState[3]),
        .I2(pState[5]),
        .I3(pState[7]),
        .O(pFoundJtrFlag_i_2__1_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1__1_n_0),
        .Q(pFoundJtrFlag_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    pIDLY_CE_i_1__1
       (.I0(pIDLY_LD_i_2__1_n_0),
        .I1(pState[0]),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pState[3]),
        .I4(pState[5]),
        .I5(pState[7]),
        .O(pIDLY_CE_i_1__1_n_0));
  FDRE pIDLY_CE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_CE_i_1__1_n_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pIDLY_CNT_Q_reg[4]_0 [4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0200)) 
    pIDLY_INC_i_1__1
       (.I0(pState[5]),
        .I1(pState[7]),
        .I2(pState[3]),
        .I3(pIDLY_INC_i_2__1_n_0),
        .I4(pIDLY_INC),
        .O(pIDLY_INC_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pIDLY_INC_i_2__1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[6]),
        .I3(pState[8]),
        .I4(\pDelayWaitCnt[0]_i_2__1_n_0 ),
        .I5(pState[2]),
        .O(pIDLY_INC_i_2__1_n_0));
  FDRE pIDLY_INC_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_INC_i_1__1_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    pIDLY_LD_i_1__1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pState[0]),
        .I2(pState[7]),
        .I3(pState[5]),
        .I4(pState[3]),
        .I5(pIDLY_LD_i_2__1_n_0),
        .O(pIDLY_LD_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pIDLY_LD_i_2__1
       (.I0(pState[2]),
        .I1(pState[10]),
        .I2(pState[9]),
        .I3(pState[1]),
        .I4(pState[8]),
        .I5(pState[6]),
        .O(pIDLY_LD_i_2__1_n_0));
  FDRE pIDLY_LD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pIDLY_LD_i_1__1_n_0),
        .Q(pIDLY_LD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \pStateNxt_inferred__8/i_ 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \pStateNxt_inferred__8/i___0 
       (.I0(pState[0]),
        .I1(pState[1]),
        .I2(pState[2]),
        .I3(pState[3]),
        .I4(\pState_reg_n_0_[4] ),
        .O(\pStateNxt_inferred__8/i___0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \pStateNxt_inferred__8/i___1 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
    \pStateNxt_inferred__8/i___2 
       (.I0(pState[5]),
        .I1(pState[6]),
        .I2(pState[7]),
        .I3(pState[8]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pStateNxt_inferred__8/i___2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \pStateNxt_inferred__8/i___3 
       (.I0(\pStateNxt_inferred__8/i__n_0 ),
        .I1(\pStateNxt_inferred__8/i___0_n_0 ),
        .I2(\pStateNxt_inferred__8/i___1_n_0 ),
        .I3(\pStateNxt_inferred__8/i___2_n_0 ),
        .O(\pStateNxt_inferred__8/i___3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pState[0]_i_1__1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1__1 
       (.I0(\pState[10]_i_3__1_n_0 ),
        .I1(out),
        .I2(pState[1]),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4__1_n_0 ),
        .I5(\pState[10]_i_5__1_n_0 ),
        .O(\pState[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[10]_i_2__1 
       (.I0(pDelayOvf_reg_n_0),
        .I1(pState[6]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[10]));
  LUT6 #(
    .INIT(64'h0000000000000045)) 
    \pState[10]_i_3__1 
       (.I0(\pState[10]_i_6__1_n_0 ),
        .I1(pCtlTknOvf_reg_n_0),
        .I2(pTknFlagQ),
        .I3(pState[1]),
        .I4(pState[9]),
        .I5(pState[10]),
        .O(\pState[10]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE8E8E8)) 
    \pState[10]_i_4__1 
       (.I0(pState[10]),
        .I1(pState[9]),
        .I2(pState[1]),
        .I3(pState[8]),
        .I4(pState[6]),
        .I5(\pDelayWaitCnt[1]_i_3__1_n_0 ),
        .O(\pState[10]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFECCCCCCC3)) 
    \pState[10]_i_5__1 
       (.I0(pDelayWaitOvf_reg_n_0),
        .I1(pState[2]),
        .I2(pState[10]),
        .I3(pState[9]),
        .I4(pState[1]),
        .I5(\pState[10]_i_6__1_n_0 ),
        .O(\pState[10]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6__1 
       (.I0(pState[6]),
        .I1(pState[8]),
        .O(\pState[10]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4400000000)) 
    \pState[1]_i_1__1 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(pDelayOvf_reg_n_0),
        .I3(pState[6]),
        .I4(pState[0]),
        .I5(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[2]_i_1__1 
       (.I0(pBlankBegin),
        .I1(pState[1]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[3]_i_1__1 
       (.I0(pTknFlagQ),
        .I1(pState[2]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h4040F040)) 
    \pState[4]_i_1__1 
       (.I0(\pState[5]_i_2__1_n_0 ),
        .I1(pState[3]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(pState[1]),
        .I4(pBlankBegin),
        .O(pStateNxt[4]));
  LUT5 #(
    .INIT(32'hF2002200)) 
    \pState[5]_i_1__1 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(pFoundEyeFlag_reg_n_0),
        .I2(\pState[5]_i_2__1_n_0 ),
        .I3(\pStateNxt_inferred__8/i___3_n_0 ),
        .I4(pState[3]),
        .O(pStateNxt[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \pState[5]_i_2__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[2] ),
        .I2(\pEyeOpenCnt_reg_n_0_[3] ),
        .I3(\pEyeOpenCnt_reg_n_0_[4] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pState[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[6]_i_1__1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[5]),
        .O(pStateNxt[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF0202020)) 
    \pState[7]_i_1__1 
       (.I0(pState[8]),
        .I1(pDelayCenter_reg_n_0),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(pFoundEyeFlag_reg_n_0),
        .O(pStateNxt[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pState[8]_i_1__1 
       (.I0(\pStateNxt_inferred__8/i___3_n_0 ),
        .I1(pState[7]),
        .O(pStateNxt[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pState[9]_i_1__1 
       (.I0(pDelayCenter_reg_n_0),
        .I1(pState[8]),
        .I2(\pStateNxt_inferred__8/i___3_n_0 ),
        .O(pStateNxt[9]));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDSE \pState_reg[0] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[0]),
        .Q(pState[0]),
        .S(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[10] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[10]),
        .Q(pState[10]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[1] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[1]),
        .Q(pState[1]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[2] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[2]),
        .Q(pState[2]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[3] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[3]),
        .Q(pState[3]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[4] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[4]),
        .Q(\pState_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[5] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[5]),
        .Q(pState[5]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[6] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[6]),
        .Q(pState[6]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[7] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[7]),
        .Q(pState[7]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[8] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[8]),
        .Q(pState[8]),
        .R(SS));
  (* FSM_ENCODED_STATES = "dlyincst:00000100000,alignerrorst:10000000000,resetst:00000000001,dlytstcenterst:00100000000,eyeopenst:00000001000,tokenst:00000000100,dlydecst:00010000000,dlytstovfst:00001000000,idlest:00000000010,jtrzonest:00000010000,alignedst:01000000000" *) 
  FDRE \pState_reg[9] 
       (.C(CLK),
        .CE(\pState[10]_i_1__1_n_0 ),
        .D(pStateNxt[9]),
        .Q(pState[9]),
        .R(SS));
  FDRE pTknFlagQ_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h22400040)) 
    pTknFlag_i_1__1
       (.I0(\pDataQ_reg_n_0_[8] ),
        .I1(\pDataQ_reg_n_0_[7] ),
        .I2(pTknFlag_i_2__1_n_0),
        .I3(\pDataQ_reg_n_0_[6] ),
        .I4(pTknFlag_i_3__1_n_0),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    pTknFlag_i_2__1
       (.I0(\pDataQ_reg_n_0_[0] ),
        .I1(\pDataQ_reg_n_0_[1] ),
        .I2(\pDataQ_reg_n_0_[2] ),
        .I3(\pDataQ_reg_n_0_[3] ),
        .I4(\pDataQ_reg_n_0_[5] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    pTknFlag_i_3__1
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[1] ),
        .I2(\pDataQ_reg_n_0_[0] ),
        .I3(\pDataQ_reg_n_0_[2] ),
        .I4(\pDataQ_reg_n_0_[4] ),
        .I5(\pDataQ_reg_n_0_[5] ),
        .O(pTknFlag_i_3__1_n_0));
  FDRE pTknFlag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_0_ResetBridge
   (out,
    in0,
    \oSyncStages_reg[1] );
  output [0:0]out;
  input in0;
  input \oSyncStages_reg[1] ;

  (* RTL_KEEP = "true" *) wire aRst_int;
  wire \oSyncStages_reg[1] ;
  wire [0:0]out;

  assign aRst_int = in0;
  dvi2rgb_0_SyncAsync_5 SyncAsyncx
       (.AS(aRst_int),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_0_ResetBridge_2
   (SS,
    aRst,
    RefClk);
  output [0:0]SS;
  input aRst;
  input RefClk;

  wire RefClk;
  wire [0:0]SS;
  (* RTL_KEEP = "true" *) wire aRst_int;

  assign aRst_int = aRst;
  dvi2rgb_0_SyncAsync_4 SyncAsyncx
       (.AS(aRst_int),
        .RefClk(RefClk),
        .SS(SS));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_0_ResetBridge_3
   (out,
    aDlyLckd,
    RefClk);
  output [0:0]out;
  input aDlyLckd;
  input RefClk;

  wire RefClk;
  wire aDlyLckd;
  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;

  dvi2rgb_0_SyncAsync SyncAsyncx
       (.AS(aRst_int),
        .RefClk(RefClk),
        .out(out));
  LUT1 #(
    .INIT(2'h1)) 
    aRst_int_inferred_i_1
       (.I0(aDlyLckd),
        .O(aRst_int));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_0_ResetBridge__parameterized0
   (pLocked,
    in0,
    \oSyncStages_reg[1] );
  output pLocked;
  input in0;
  input \oSyncStages_reg[1] ;

  (* RTL_KEEP = "true" *) wire aRst_int;
  wire \oSyncStages_reg[1] ;
  wire pLocked;

  assign aRst_int = in0;
  dvi2rgb_0_SyncAsync__parameterized1 SyncAsyncx
       (.AR(aRst_int),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .pLocked(pLocked));
endmodule

(* ORIG_REF_NAME = "ResyncToBUFG" *) 
module dvi2rgb_0_ResyncToBUFG
   (CLK,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    vid_pData,
    InstBUFG_0,
    pVde,
    pC0,
    pC1,
    D);
  output CLK;
  output vid_pVDE;
  output vid_pHSync;
  output vid_pVSync;
  output [23:0]vid_pData;
  input InstBUFG_0;
  input pVde;
  input pC0;
  input pC1;
  input [23:0]D;

  wire CLK;
  wire [23:0]D;
  wire InstBUFG_0;
  wire pC0;
  wire pC1;
  wire pVde;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  (* box_type = "PRIMITIVE" *) 
  BUFG InstBUFG
       (.I(InstBUFG_0),
        .O(CLK));
  FDRE \poData_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(vid_pData[0]),
        .R(1'b0));
  FDRE \poData_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(vid_pData[10]),
        .R(1'b0));
  FDRE \poData_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(vid_pData[11]),
        .R(1'b0));
  FDRE \poData_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(vid_pData[12]),
        .R(1'b0));
  FDRE \poData_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(vid_pData[13]),
        .R(1'b0));
  FDRE \poData_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(vid_pData[14]),
        .R(1'b0));
  FDRE \poData_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(vid_pData[15]),
        .R(1'b0));
  FDRE \poData_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(vid_pData[16]),
        .R(1'b0));
  FDRE \poData_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(vid_pData[17]),
        .R(1'b0));
  FDRE \poData_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(vid_pData[18]),
        .R(1'b0));
  FDRE \poData_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(vid_pData[19]),
        .R(1'b0));
  FDRE \poData_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(vid_pData[1]),
        .R(1'b0));
  FDRE \poData_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(vid_pData[20]),
        .R(1'b0));
  FDRE \poData_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(vid_pData[21]),
        .R(1'b0));
  FDRE \poData_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(vid_pData[22]),
        .R(1'b0));
  FDRE \poData_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(vid_pData[23]),
        .R(1'b0));
  FDRE \poData_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(vid_pData[2]),
        .R(1'b0));
  FDRE \poData_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(vid_pData[3]),
        .R(1'b0));
  FDRE \poData_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(vid_pData[4]),
        .R(1'b0));
  FDRE \poData_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(vid_pData[5]),
        .R(1'b0));
  FDRE \poData_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(vid_pData[6]),
        .R(1'b0));
  FDRE \poData_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(vid_pData[7]),
        .R(1'b0));
  FDRE \poData_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(vid_pData[8]),
        .R(1'b0));
  FDRE \poData_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(vid_pData[9]),
        .R(1'b0));
  FDRE poHSync_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pC0),
        .Q(vid_pHSync),
        .R(1'b0));
  FDRE poVDE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pVde),
        .Q(vid_pVDE),
        .R(1'b0));
  FDRE poVSync_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pC1),
        .Q(vid_pVSync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync
   (out,
    RefClk,
    AS);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync_13
   (out,
    RefClk,
    AS,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync_20
   (out,
    RefClk,
    AS,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync_4
   (SS,
    RefClk,
    AS);
  output [0:0]SS;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign SS[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync_5
   (out,
    \oSyncStages_reg[1]_0 ,
    AS);
  output [0:0]out;
  input \oSyncStages_reg[1]_0 ;
  input [0:0]AS;

  wire [0:0]AS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(\oSyncStages_reg[1]_0 ),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(\oSyncStages_reg[1]_0 ),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync_6
   (out,
    RefClk,
    \oSyncStages_reg[1]_0 ,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(\oSyncStages_reg[1]_0 ),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(\oSyncStages_reg[1]_0 ),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync__parameterized0
   (D,
    rMMCM_LckdFallingFlag0,
    rMMCM_LckdRisingFlag0,
    RefClk,
    \oSyncStages_reg[0]_0 ,
    Q);
  output [0:0]D;
  output rMMCM_LckdFallingFlag0;
  output rMMCM_LckdRisingFlag0;
  input RefClk;
  input [0:0]\oSyncStages_reg[0]_0 ;
  input [0:0]Q;

  wire [0:0]Q;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[0]_0 ;
  wire rMMCM_LckdFallingFlag0;
  wire rMMCM_LckdRisingFlag0;

  assign D[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\oSyncStages_reg[0]_0 ),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rMMCM_LckdFallingFlag_i_1
       (.I0(Q),
        .I1(oSyncStages[1]),
        .O(rMMCM_LckdFallingFlag0));
  LUT2 #(
    .INIT(4'h2)) 
    rMMCM_LckdRisingFlag_i_1
       (.I0(oSyncStages[1]),
        .I1(Q),
        .O(rMMCM_LckdRisingFlag0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync__parameterized1
   (pLocked,
    \oSyncStages_reg[1]_0 ,
    AR);
  output pLocked;
  input \oSyncStages_reg[1]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;

  assign pLocked = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(\oSyncStages_reg[1]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(1'b1),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(\oSyncStages_reg[1]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync__parameterized1_14
   (out,
    CLK,
    AS,
    D);
  output [0:0]out;
  input CLK;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire CLK;
  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync__parameterized1_21
   (out,
    CLK,
    AS,
    D);
  output [0:0]out;
  input CLK;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire CLK;
  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_0_SyncAsync__parameterized1_7
   (out,
    CLK,
    \oSyncStages_reg[1]_0 ,
    D);
  output [0:0]out;
  input CLK;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase
   (out,
    rTimeoutCnt_reg_14_sp_1,
    rTimeoutCnt_reg_21_sp_1,
    rTimeoutCnt_reg_3_sp_1,
    rTimeoutCnt_reg_20_sp_1,
    rTimeoutCnt_reg_8_sp_1,
    rTimeoutCnt_reg_10_sp_1,
    RefClk,
    \oSyncStages_reg[1] ,
    rTimeoutCnt_reg,
    CLK);
  output [0:0]out;
  output rTimeoutCnt_reg_14_sp_1;
  output rTimeoutCnt_reg_21_sp_1;
  output rTimeoutCnt_reg_3_sp_1;
  output rTimeoutCnt_reg_20_sp_1;
  output rTimeoutCnt_reg_8_sp_1;
  output rTimeoutCnt_reg_10_sp_1;
  input RefClk;
  input [0:0]\oSyncStages_reg[1] ;
  input [23:0]rTimeoutCnt_reg;
  input CLK;

  wire CLK;
  wire RefClk;
  wire iIn_q;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire p_0_out;
  wire [23:0]rTimeoutCnt_reg;
  wire rTimeoutCnt_reg_10_sn_1;
  wire rTimeoutCnt_reg_14_sn_1;
  wire rTimeoutCnt_reg_20_sn_1;
  wire rTimeoutCnt_reg_21_sn_1;
  wire rTimeoutCnt_reg_3_sn_1;
  wire rTimeoutCnt_reg_8_sn_1;

  assign rTimeoutCnt_reg_10_sp_1 = rTimeoutCnt_reg_10_sn_1;
  assign rTimeoutCnt_reg_14_sp_1 = rTimeoutCnt_reg_14_sn_1;
  assign rTimeoutCnt_reg_20_sp_1 = rTimeoutCnt_reg_20_sn_1;
  assign rTimeoutCnt_reg_21_sp_1 = rTimeoutCnt_reg_21_sn_1;
  assign rTimeoutCnt_reg_3_sp_1 = rTimeoutCnt_reg_3_sn_1;
  assign rTimeoutCnt_reg_8_sp_1 = rTimeoutCnt_reg_8_sn_1;
  dvi2rgb_0_SyncAsync__parameterized1_7 SyncAsyncx
       (.CLK(CLK),
        .D(iIn_q),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_1__2
       (.I0(rTimeoutCnt_reg_14_sn_1),
        .I1(rTimeoutCnt_reg_21_sn_1),
        .I2(rTimeoutCnt_reg_3_sn_1),
        .I3(rTimeoutCnt_reg_20_sn_1),
        .I4(rTimeoutCnt_reg_8_sn_1),
        .I5(rTimeoutCnt_reg_10_sn_1),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_2__2
       (.I0(rTimeoutCnt_reg[14]),
        .I1(rTimeoutCnt_reg[16]),
        .I2(rTimeoutCnt_reg[11]),
        .I3(rTimeoutCnt_reg[13]),
        .O(rTimeoutCnt_reg_14_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_3
       (.I0(rTimeoutCnt_reg[21]),
        .I1(rTimeoutCnt_reg[22]),
        .I2(rTimeoutCnt_reg[17]),
        .I3(rTimeoutCnt_reg[18]),
        .O(rTimeoutCnt_reg_21_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_4
       (.I0(rTimeoutCnt_reg[3]),
        .I1(rTimeoutCnt_reg[15]),
        .I2(rTimeoutCnt_reg[1]),
        .I3(rTimeoutCnt_reg[2]),
        .O(rTimeoutCnt_reg_3_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_5
       (.I0(rTimeoutCnt_reg[20]),
        .I1(rTimeoutCnt_reg[19]),
        .I2(rTimeoutCnt_reg[23]),
        .I3(rTimeoutCnt_reg[0]),
        .O(rTimeoutCnt_reg_20_sn_1));
  LUT4 #(
    .INIT(16'hEFFF)) 
    iIn_q_i_6
       (.I0(rTimeoutCnt_reg[8]),
        .I1(rTimeoutCnt_reg[7]),
        .I2(rTimeoutCnt_reg[12]),
        .I3(rTimeoutCnt_reg[9]),
        .O(rTimeoutCnt_reg_8_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_7
       (.I0(rTimeoutCnt_reg[10]),
        .I1(rTimeoutCnt_reg[6]),
        .I2(rTimeoutCnt_reg[4]),
        .I3(rTimeoutCnt_reg[5]),
        .O(rTimeoutCnt_reg_10_sn_1));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(p_0_out),
        .Q(iIn_q));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase_11
   (out,
    rTimeoutCnt_reg_14_sp_1,
    rTimeoutCnt_reg_21_sp_1,
    rTimeoutCnt_reg_3_sp_1,
    rTimeoutCnt_reg_20_sp_1,
    rTimeoutCnt_reg_8_sp_1,
    rTimeoutCnt_reg_10_sp_1,
    RefClk,
    AS,
    rTimeoutCnt_reg,
    CLK);
  output [0:0]out;
  output rTimeoutCnt_reg_14_sp_1;
  output rTimeoutCnt_reg_21_sp_1;
  output rTimeoutCnt_reg_3_sp_1;
  output rTimeoutCnt_reg_20_sp_1;
  output rTimeoutCnt_reg_8_sp_1;
  output rTimeoutCnt_reg_10_sp_1;
  input RefClk;
  input [0:0]AS;
  input [23:0]rTimeoutCnt_reg;
  input CLK;

  wire [0:0]AS;
  wire CLK;
  wire RefClk;
  wire iIn_q_i_1__3_n_0;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire [23:0]rTimeoutCnt_reg;
  wire rTimeoutCnt_reg_10_sn_1;
  wire rTimeoutCnt_reg_14_sn_1;
  wire rTimeoutCnt_reg_20_sn_1;
  wire rTimeoutCnt_reg_21_sn_1;
  wire rTimeoutCnt_reg_3_sn_1;
  wire rTimeoutCnt_reg_8_sn_1;

  assign rTimeoutCnt_reg_10_sp_1 = rTimeoutCnt_reg_10_sn_1;
  assign rTimeoutCnt_reg_14_sp_1 = rTimeoutCnt_reg_14_sn_1;
  assign rTimeoutCnt_reg_20_sp_1 = rTimeoutCnt_reg_20_sn_1;
  assign rTimeoutCnt_reg_21_sp_1 = rTimeoutCnt_reg_21_sn_1;
  assign rTimeoutCnt_reg_3_sp_1 = rTimeoutCnt_reg_3_sn_1;
  assign rTimeoutCnt_reg_8_sp_1 = rTimeoutCnt_reg_8_sn_1;
  dvi2rgb_0_SyncAsync__parameterized1_14 SyncAsyncx
       (.AS(AS),
        .CLK(CLK),
        .D(iIn_q_reg_n_0),
        .out(out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_1__3
       (.I0(rTimeoutCnt_reg_14_sn_1),
        .I1(rTimeoutCnt_reg_21_sn_1),
        .I2(rTimeoutCnt_reg_3_sn_1),
        .I3(rTimeoutCnt_reg_20_sn_1),
        .I4(rTimeoutCnt_reg_8_sn_1),
        .I5(rTimeoutCnt_reg_10_sn_1),
        .O(iIn_q_i_1__3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_2__3
       (.I0(rTimeoutCnt_reg[14]),
        .I1(rTimeoutCnt_reg[16]),
        .I2(rTimeoutCnt_reg[11]),
        .I3(rTimeoutCnt_reg[13]),
        .O(rTimeoutCnt_reg_14_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_3__0
       (.I0(rTimeoutCnt_reg[21]),
        .I1(rTimeoutCnt_reg[22]),
        .I2(rTimeoutCnt_reg[17]),
        .I3(rTimeoutCnt_reg[18]),
        .O(rTimeoutCnt_reg_21_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_4__0
       (.I0(rTimeoutCnt_reg[3]),
        .I1(rTimeoutCnt_reg[15]),
        .I2(rTimeoutCnt_reg[1]),
        .I3(rTimeoutCnt_reg[2]),
        .O(rTimeoutCnt_reg_3_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_5__0
       (.I0(rTimeoutCnt_reg[20]),
        .I1(rTimeoutCnt_reg[19]),
        .I2(rTimeoutCnt_reg[23]),
        .I3(rTimeoutCnt_reg[0]),
        .O(rTimeoutCnt_reg_20_sn_1));
  LUT4 #(
    .INIT(16'hEFFF)) 
    iIn_q_i_6__0
       (.I0(rTimeoutCnt_reg[8]),
        .I1(rTimeoutCnt_reg[7]),
        .I2(rTimeoutCnt_reg[12]),
        .I3(rTimeoutCnt_reg[9]),
        .O(rTimeoutCnt_reg_8_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_7__0
       (.I0(rTimeoutCnt_reg[10]),
        .I1(rTimeoutCnt_reg[6]),
        .I2(rTimeoutCnt_reg[4]),
        .I3(rTimeoutCnt_reg[5]),
        .O(rTimeoutCnt_reg_10_sn_1));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AS),
        .D(iIn_q_i_1__3_n_0),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase_18
   (out,
    rTimeoutCnt_reg_14_sp_1,
    rTimeoutCnt_reg_21_sp_1,
    rTimeoutCnt_reg_3_sp_1,
    rTimeoutCnt_reg_20_sp_1,
    rTimeoutCnt_reg_8_sp_1,
    rTimeoutCnt_reg_10_sp_1,
    RefClk,
    AS,
    rTimeoutCnt_reg,
    CLK);
  output [0:0]out;
  output rTimeoutCnt_reg_14_sp_1;
  output rTimeoutCnt_reg_21_sp_1;
  output rTimeoutCnt_reg_3_sp_1;
  output rTimeoutCnt_reg_20_sp_1;
  output rTimeoutCnt_reg_8_sp_1;
  output rTimeoutCnt_reg_10_sp_1;
  input RefClk;
  input [0:0]AS;
  input [23:0]rTimeoutCnt_reg;
  input CLK;

  wire [0:0]AS;
  wire CLK;
  wire RefClk;
  wire iIn_q_i_1__4_n_0;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire [23:0]rTimeoutCnt_reg;
  wire rTimeoutCnt_reg_10_sn_1;
  wire rTimeoutCnt_reg_14_sn_1;
  wire rTimeoutCnt_reg_20_sn_1;
  wire rTimeoutCnt_reg_21_sn_1;
  wire rTimeoutCnt_reg_3_sn_1;
  wire rTimeoutCnt_reg_8_sn_1;

  assign rTimeoutCnt_reg_10_sp_1 = rTimeoutCnt_reg_10_sn_1;
  assign rTimeoutCnt_reg_14_sp_1 = rTimeoutCnt_reg_14_sn_1;
  assign rTimeoutCnt_reg_20_sp_1 = rTimeoutCnt_reg_20_sn_1;
  assign rTimeoutCnt_reg_21_sp_1 = rTimeoutCnt_reg_21_sn_1;
  assign rTimeoutCnt_reg_3_sp_1 = rTimeoutCnt_reg_3_sn_1;
  assign rTimeoutCnt_reg_8_sp_1 = rTimeoutCnt_reg_8_sn_1;
  dvi2rgb_0_SyncAsync__parameterized1_21 SyncAsyncx
       (.AS(AS),
        .CLK(CLK),
        .D(iIn_q_reg_n_0),
        .out(out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_1__4
       (.I0(rTimeoutCnt_reg_14_sn_1),
        .I1(rTimeoutCnt_reg_21_sn_1),
        .I2(rTimeoutCnt_reg_3_sn_1),
        .I3(rTimeoutCnt_reg_20_sn_1),
        .I4(rTimeoutCnt_reg_8_sn_1),
        .I5(rTimeoutCnt_reg_10_sn_1),
        .O(iIn_q_i_1__4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_2__4
       (.I0(rTimeoutCnt_reg[14]),
        .I1(rTimeoutCnt_reg[16]),
        .I2(rTimeoutCnt_reg[11]),
        .I3(rTimeoutCnt_reg[13]),
        .O(rTimeoutCnt_reg_14_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    iIn_q_i_3__1
       (.I0(rTimeoutCnt_reg[21]),
        .I1(rTimeoutCnt_reg[22]),
        .I2(rTimeoutCnt_reg[17]),
        .I3(rTimeoutCnt_reg[18]),
        .O(rTimeoutCnt_reg_21_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_4__1
       (.I0(rTimeoutCnt_reg[3]),
        .I1(rTimeoutCnt_reg[15]),
        .I2(rTimeoutCnt_reg[1]),
        .I3(rTimeoutCnt_reg[2]),
        .O(rTimeoutCnt_reg_3_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_5__1
       (.I0(rTimeoutCnt_reg[20]),
        .I1(rTimeoutCnt_reg[19]),
        .I2(rTimeoutCnt_reg[23]),
        .I3(rTimeoutCnt_reg[0]),
        .O(rTimeoutCnt_reg_20_sn_1));
  LUT4 #(
    .INIT(16'hEFFF)) 
    iIn_q_i_6__1
       (.I0(rTimeoutCnt_reg[8]),
        .I1(rTimeoutCnt_reg[7]),
        .I2(rTimeoutCnt_reg[12]),
        .I3(rTimeoutCnt_reg[9]),
        .O(rTimeoutCnt_reg_8_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    iIn_q_i_7__1
       (.I0(rTimeoutCnt_reg[10]),
        .I1(rTimeoutCnt_reg[6]),
        .I2(rTimeoutCnt_reg[4]),
        .I3(rTimeoutCnt_reg[5]),
        .O(rTimeoutCnt_reg_10_sn_1));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AS),
        .D(iIn_q_i_1__4_n_0),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase__parameterized0
   (out,
    iIn_q_reg_0,
    CLK,
    \oSyncStages_reg[1] ,
    RefClk);
  output [0:0]out;
  input iIn_q_reg_0;
  input CLK;
  input [0:0]\oSyncStages_reg[1] ;
  input RefClk;

  wire CLK;
  wire RefClk;
  wire iIn_q_reg_0;
  wire iIn_q_reg_n_0;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;

  dvi2rgb_0_SyncAsync_6 SyncAsyncx
       (.D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
  FDPE iIn_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iIn_q_reg_0),
        .PRE(\oSyncStages_reg[1] ),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase__parameterized0_12
   (out,
    iIn_q_reg_0,
    CLK,
    AS,
    RefClk);
  output [0:0]out;
  input iIn_q_reg_0;
  input CLK;
  input [0:0]AS;
  input RefClk;

  wire [0:0]AS;
  wire CLK;
  wire RefClk;
  wire iIn_q_reg_0;
  wire iIn_q_reg_n_0;
  wire [0:0]out;

  dvi2rgb_0_SyncAsync_13 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .out(out));
  FDPE iIn_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iIn_q_reg_0),
        .PRE(AS),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_0_SyncBase__parameterized0_19
   (out,
    iIn_q_reg_0,
    CLK,
    AS,
    RefClk);
  output [0:0]out;
  input iIn_q_reg_0;
  input CLK;
  input [0:0]AS;
  input RefClk;

  wire [0:0]AS;
  wire CLK;
  wire RefClk;
  wire iIn_q_reg_0;
  wire iIn_q_reg_n_0;
  wire [0:0]out;

  dvi2rgb_0_SyncAsync_20 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .out(out));
  FDPE iIn_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(iIn_q_reg_0),
        .PRE(AS),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "TMDS_Clocking" *) 
module dvi2rgb_0_TMDS_Clocking
   (SerialClkBuffer_0,
    PixelClkBuffer_0,
    aPixelClkLckd,
    in0,
    aRst,
    RefClk,
    TMDS_Clk_p,
    TMDS_Clk_n);
  output SerialClkBuffer_0;
  output PixelClkBuffer_0;
  output aPixelClkLckd;
  output in0;
  input aRst;
  input RefClk;
  input TMDS_Clk_p;
  input TMDS_Clk_n;

  wire CLKFBIN;
  wire CLK_IN_hdmi_clk;
  wire CLK_OUT_5x_hdmi_clk;
  wire MMCM_LockSync_n_0;
  wire PixelClkBuffer_0;
  wire RdyLostReset_n_0;
  wire RefClk;
  wire SerialClkBuffer_0;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire aDlyLckd;
  wire aMMCM_Locked;
  wire aPixelClkLckd;
  wire aRst;
  wire in0;
  wire p_0_in;
  wire [0:0]rDlyRstCnt0;
  wire \rDlyRstCnt[1]_i_1_n_0 ;
  wire \rDlyRstCnt[2]_i_1_n_0 ;
  wire \rDlyRstCnt[3]_i_2_n_0 ;
  wire \rDlyRstCnt[4]_i_1_n_0 ;
  wire [4:0]rDlyRstCnt_reg;
  wire rDlyRst_i_1_n_0;
  wire rDlyRst_reg_n_0;
  wire rLockLostRst;
  wire rMMCM_LckdFallingFlag;
  wire rMMCM_LckdFallingFlag0;
  wire rMMCM_LckdRisingFlag0;
  wire rMMCM_LckdRisingFlag_reg_n_0;
  wire \rMMCM_Locked_q_reg_n_0_[0] ;
  wire [1:1]rMMCM_Reset_q;
  wire \rMMCM_Reset_q[0]_i_1_n_0 ;
  wire \rMMCM_Reset_q_reg_n_0_[0] ;
  wire sel;
  wire NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_DRDY_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED;
  wire [15:0]NLW_DVI_ClkGenerator_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(12.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(2.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    DVI_ClkGenerator
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKFBOUTB(NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK_IN_hdmi_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(CLK_OUT_5x_hdmi_clk),
        .CLKOUT0B(NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_DVI_ClkGenerator_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_DVI_ClkGenerator_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(aMMCM_Locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(\rMMCM_Reset_q_reg_n_0_[0] ));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDelayCtrlX
       (.RDY(aDlyLckd),
        .REFCLK(RefClk),
        .RST(rDlyRst_reg_n_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS InputBuffer
       (.I(TMDS_Clk_p),
        .IB(TMDS_Clk_n),
        .O(CLK_IN_hdmi_clk));
  dvi2rgb_0_ResetBridge_2 LockLostReset
       (.RefClk(RefClk),
        .SS(rLockLostRst),
        .aRst(aRst));
  dvi2rgb_0_SyncAsync__parameterized0 MMCM_LockSync
       (.D(MMCM_LockSync_n_0),
        .Q(p_0_in),
        .RefClk(RefClk),
        .\oSyncStages_reg[0]_0 (aMMCM_Locked),
        .rMMCM_LckdFallingFlag0(rMMCM_LckdFallingFlag0),
        .rMMCM_LckdRisingFlag0(rMMCM_LckdRisingFlag0));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("5"),
    .SIM_DEVICE("7SERIES")) 
    PixelClkBuffer
       (.CE(1'b1),
        .CLR(rMMCM_LckdRisingFlag_reg_n_0),
        .I(CLK_OUT_5x_hdmi_clk),
        .O(PixelClkBuffer_0));
  dvi2rgb_0_ResetBridge_3 RdyLostReset
       (.RefClk(RefClk),
        .aDlyLckd(aDlyLckd),
        .out(RdyLostReset_n_0));
  (* box_type = "PRIMITIVE" *) 
  BUFIO SerialClkBuffer
       (.I(CLK_OUT_5x_hdmi_clk),
        .O(SerialClkBuffer_0));
  FDCE aLocked_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(RdyLostReset_n_0),
        .D(\rMMCM_Locked_q_reg_n_0_[0] ),
        .Q(aPixelClkLckd));
  LUT1 #(
    .INIT(2'h1)) 
    aRst_int_inferred_i_1__0
       (.I0(aPixelClkLckd),
        .O(in0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rDlyRstCnt[0]_i_1 
       (.I0(rDlyRstCnt_reg[0]),
        .O(rDlyRstCnt0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rDlyRstCnt[1]_i_1 
       (.I0(rDlyRstCnt_reg[0]),
        .I1(rDlyRstCnt_reg[1]),
        .O(\rDlyRstCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \rDlyRstCnt[2]_i_1 
       (.I0(rDlyRstCnt_reg[1]),
        .I1(rDlyRstCnt_reg[0]),
        .I2(rDlyRstCnt_reg[2]),
        .O(\rDlyRstCnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rDlyRstCnt[3]_i_1 
       (.I0(rDlyRstCnt_reg[2]),
        .I1(rDlyRstCnt_reg[0]),
        .I2(rDlyRstCnt_reg[1]),
        .I3(rDlyRstCnt_reg[3]),
        .I4(rDlyRstCnt_reg[4]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \rDlyRstCnt[3]_i_2 
       (.I0(rDlyRstCnt_reg[1]),
        .I1(rDlyRstCnt_reg[0]),
        .I2(rDlyRstCnt_reg[2]),
        .I3(rDlyRstCnt_reg[3]),
        .O(\rDlyRstCnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rDlyRstCnt[4]_i_1 
       (.I0(rDlyRstCnt_reg[2]),
        .I1(rDlyRstCnt_reg[0]),
        .I2(rDlyRstCnt_reg[1]),
        .I3(rDlyRstCnt_reg[3]),
        .I4(rDlyRstCnt_reg[4]),
        .O(\rDlyRstCnt[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[0] 
       (.C(RefClk),
        .CE(sel),
        .D(rDlyRstCnt0),
        .Q(rDlyRstCnt_reg[0]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[1] 
       (.C(RefClk),
        .CE(sel),
        .D(\rDlyRstCnt[1]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg[1]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[2] 
       (.C(RefClk),
        .CE(sel),
        .D(\rDlyRstCnt[2]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg[2]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[3] 
       (.C(RefClk),
        .CE(sel),
        .D(\rDlyRstCnt[3]_i_2_n_0 ),
        .Q(rDlyRstCnt_reg[3]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[4] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\rDlyRstCnt[4]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg[4]),
        .S(rLockLostRst));
  LUT3 #(
    .INIT(8'hF8)) 
    rDlyRst_i_1
       (.I0(rDlyRst_reg_n_0),
        .I1(sel),
        .I2(rLockLostRst),
        .O(rDlyRst_i_1_n_0));
  FDRE rDlyRst_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(rDlyRst_i_1_n_0),
        .Q(rDlyRst_reg_n_0),
        .R(1'b0));
  FDRE rMMCM_LckdFallingFlag_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(rMMCM_LckdFallingFlag0),
        .Q(rMMCM_LckdFallingFlag),
        .R(1'b0));
  FDRE rMMCM_LckdRisingFlag_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(rMMCM_LckdRisingFlag0),
        .Q(rMMCM_LckdRisingFlag_reg_n_0),
        .R(1'b0));
  FDRE \rMMCM_Locked_q_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\rMMCM_Locked_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rMMCM_Locked_q_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(MMCM_LockSync_n_0),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \rMMCM_Reset_q[0]_i_1 
       (.I0(rMMCM_LckdFallingFlag),
        .I1(rMMCM_Reset_q),
        .O(\rMMCM_Reset_q[0]_i_1_n_0 ));
  FDPE \rMMCM_Reset_q_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\rMMCM_Reset_q[0]_i_1_n_0 ),
        .PRE(rLockLostRst),
        .Q(\rMMCM_Reset_q_reg_n_0_[0] ));
  FDPE \rMMCM_Reset_q_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(rMMCM_LckdFallingFlag),
        .PRE(rLockLostRst),
        .Q(rMMCM_Reset_q));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_0_TMDS_Decoder
   (pAllVld,
    pAllVldBgnFlag,
    pVde,
    pVld_0,
    pC0,
    pC1,
    pRdy_0,
    Q,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    DeserializerMaster,
    CLKB,
    AS,
    RefClk,
    pMeRdy_int_reg,
    pVld_2,
    pVld_1,
    pRdy_1,
    pRdy_2,
    pRst);
  output pAllVld;
  output pAllVldBgnFlag;
  output pVde;
  output pVld_0;
  output pC0;
  output pC1;
  output pRdy_0;
  output [7:0]Q;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input DeserializerMaster;
  input CLKB;
  input [0:0]AS;
  input RefClk;
  input pMeRdy_int_reg;
  input pVld_2;
  input pVld_1;
  input pRdy_1;
  input pRdy_2;
  input pRst;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire ChannelBondX_n_11;
  wire ChannelBondX_n_13;
  wire ChannelBondX_n_14;
  wire DeserializerMaster;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_7;
  wire [7:0]Q;
  wire RefClk;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire SyncBaseOvf_n_5;
  wire SyncBaseOvf_n_6;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pAlignErr_q;
  wire pAlignRst_i_1__1_n_0;
  wire pAlignRst_reg_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip0;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire \pBitslipCnt_reg_n_0_[0] ;
  wire \pBitslipCnt_reg_n_0_[1] ;
  wire pBitslip_reg_n_0;
  wire pC0;
  wire pC1;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire pMeRdy_int_reg;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst;
  wire pTimeoutOvf;
  wire pVde;
  wire pVde_1;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire \rTimeoutCnt[0]_i_1__1_n_0 ;
  wire \rTimeoutCnt[0]_i_3__1_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_7 ;
  wire rTimeoutRst;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED ;

  dvi2rgb_0_ChannelBond_15 ChannelBondX
       (.CLK(CLK),
        .D(pDataIn),
        .I62(pDataInRaw),
        .SR(ChannelBondX_n_11),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(pAllVldBgnFlag),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pC0(pC0),
        .pC1(pC1),
        .\pDataFIFO_reg[8]_0 (ChannelBondX_n_14),
        .\pDataFIFO_reg[9]_0 (ChannelBondX_n_13),
        .pMeRdy_int_reg_0(pRdy_0),
        .pMeRdy_int_reg_1(pMeRdy_int_reg),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pVde_1(pVde_1));
  dvi2rgb_0_InputSERDES_16 InputSERDES_X
       (.AS(AS),
        .CLK(CLK),
        .CLKB(CLKB),
        .D(pIDLY_CNT),
        .DeserializerMaster_0(DeserializerMaster),
        .DeserializerSlave_0(pBitslip_reg_n_0),
        .I62(pDataInRaw),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD));
  dvi2rgb_0_PhaseAlign_17 PhaseAlignX
       (.CLK(CLK),
        .D(pDataInRaw[8:0]),
        .SS(pAlignRst_reg_n_0),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pBitslip0(pBitslip0),
        .pError_reg_0(PhaseAlignX_n_4),
        .pIDLY_CE(pIDLY_CE),
        .\pIDLY_CNT_Q_reg[4]_0 (pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .\pState_reg[9]_0 (PhaseAlignX_n_7),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2));
  dvi2rgb_0_SyncBase_18 SyncBaseOvf
       (.AS(AS),
        .CLK(CLK),
        .RefClk(RefClk),
        .out(pTimeoutOvf),
        .rTimeoutCnt_reg(rTimeoutCnt_reg),
        .rTimeoutCnt_reg_10_sp_1(SyncBaseOvf_n_6),
        .rTimeoutCnt_reg_14_sp_1(SyncBaseOvf_n_1),
        .rTimeoutCnt_reg_20_sp_1(SyncBaseOvf_n_4),
        .rTimeoutCnt_reg_21_sp_1(SyncBaseOvf_n_2),
        .rTimeoutCnt_reg_3_sp_1(SyncBaseOvf_n_3),
        .rTimeoutCnt_reg_8_sp_1(SyncBaseOvf_n_5));
  dvi2rgb_0_SyncBase__parameterized0_19 SyncBaseRst
       (.AS(AS),
        .CLK(CLK),
        .RefClk(RefClk),
        .iIn_q_reg_0(PhaseAlignX_n_7),
        .out(rTimeoutRst));
  FDRE pAlignErr_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(PhaseAlignX_n_4),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    pAlignRst_i_1__1
       (.I0(pBitslip_reg_n_0),
        .I1(pRst),
        .I2(\pBitslipCnt_reg_n_0_[1] ),
        .I3(\pBitslipCnt_reg_n_0_[0] ),
        .I4(pAlignRst_reg_n_0),
        .O(pAlignRst_i_1__1_n_0));
  FDPE pAlignRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAlignRst_i_1__1_n_0),
        .PRE(AS),
        .Q(pAlignRst_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(\pBitslipCnt_reg_n_0_[0] ),
        .I1(\pBitslipCnt_reg_n_0_[1] ),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(\pBitslipCnt_reg_n_0_[0] ),
        .I1(\pBitslipCnt_reg_n_0_[1] ),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(\pBitslipCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(\pBitslipCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBitslip0),
        .Q(pBitslip_reg_n_0),
        .R(1'b0));
  FDRE pC0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ChannelBondX_n_14),
        .Q(pC0),
        .R(ChannelBondX_n_11));
  FDRE pC1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ChannelBondX_n_13),
        .Q(pC1),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(Q[0]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(Q[1]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(Q[2]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(Q[3]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(Q[4]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(Q[5]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(Q[6]),
        .R(ChannelBondX_n_11));
  FDRE \pDataIn_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(Q[7]),
        .R(ChannelBondX_n_11));
  FDRE pVde_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pVde_1),
        .Q(pVde),
        .R(ChannelBondX_n_11));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rTimeoutCnt[0]_i_1__1 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .I4(SyncBaseOvf_n_5),
        .I5(SyncBaseOvf_n_6),
        .O(\rTimeoutCnt[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_3__1 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2__1_n_0 ,\rTimeoutCnt_reg[0]_i_2__1_n_1 ,\rTimeoutCnt_reg[0]_i_2__1_n_2 ,\rTimeoutCnt_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2__1_n_4 ,\rTimeoutCnt_reg[0]_i_2__1_n_5 ,\rTimeoutCnt_reg[0]_i_2__1_n_6 ,\rTimeoutCnt_reg[0]_i_2__1_n_7 }),
        .S({rTimeoutCnt_reg[3:1],\rTimeoutCnt[0]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[12]_i_1__1 
       (.CI(\rTimeoutCnt_reg[8]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1__1_n_0 ,\rTimeoutCnt_reg[12]_i_1__1_n_1 ,\rTimeoutCnt_reg[12]_i_1__1_n_2 ,\rTimeoutCnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1__1_n_4 ,\rTimeoutCnt_reg[12]_i_1__1_n_5 ,\rTimeoutCnt_reg[12]_i_1__1_n_6 ,\rTimeoutCnt_reg[12]_i_1__1_n_7 }),
        .S(rTimeoutCnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[16]_i_1__1 
       (.CI(\rTimeoutCnt_reg[12]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1__1_n_0 ,\rTimeoutCnt_reg[16]_i_1__1_n_1 ,\rTimeoutCnt_reg[16]_i_1__1_n_2 ,\rTimeoutCnt_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1__1_n_4 ,\rTimeoutCnt_reg[16]_i_1__1_n_5 ,\rTimeoutCnt_reg[16]_i_1__1_n_6 ,\rTimeoutCnt_reg[16]_i_1__1_n_7 }),
        .S(rTimeoutCnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[20]_i_1__1 
       (.CI(\rTimeoutCnt_reg[16]_i_1__1_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1__1_n_1 ,\rTimeoutCnt_reg[20]_i_1__1_n_2 ,\rTimeoutCnt_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1__1_n_4 ,\rTimeoutCnt_reg[20]_i_1__1_n_5 ,\rTimeoutCnt_reg[20]_i_1__1_n_6 ,\rTimeoutCnt_reg[20]_i_1__1_n_7 }),
        .S(rTimeoutCnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[4]_i_1__1 
       (.CI(\rTimeoutCnt_reg[0]_i_2__1_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1__1_n_0 ,\rTimeoutCnt_reg[4]_i_1__1_n_1 ,\rTimeoutCnt_reg[4]_i_1__1_n_2 ,\rTimeoutCnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1__1_n_4 ,\rTimeoutCnt_reg[4]_i_1__1_n_5 ,\rTimeoutCnt_reg[4]_i_1__1_n_6 ,\rTimeoutCnt_reg[4]_i_1__1_n_7 }),
        .S(rTimeoutCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[8]_i_1__1 
       (.CI(\rTimeoutCnt_reg[4]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1__1_n_0 ,\rTimeoutCnt_reg[8]_i_1__1_n_1 ,\rTimeoutCnt_reg[8]_i_1__1_n_2 ,\rTimeoutCnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1__1_n_4 ,\rTimeoutCnt_reg[8]_i_1__1_n_5 ,\rTimeoutCnt_reg[8]_i_1__1_n_6 ,\rTimeoutCnt_reg[8]_i_1__1_n_7 }),
        .S(rTimeoutCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_0_TMDS_Decoder_0
   (pAligned_reg,
    pVld_1,
    pRdy_1,
    Q,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    DeserializerSlave,
    CLKB,
    AS,
    RefClk,
    pVld_2,
    pVld_0,
    pRdy_2,
    pRdy_0,
    pAllVldBgnFlag,
    pRst,
    pAllVld);
  output pAligned_reg;
  output pVld_1;
  output pRdy_1;
  output [7:0]Q;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input DeserializerSlave;
  input CLKB;
  input [0:0]AS;
  input RefClk;
  input pVld_2;
  input pVld_0;
  input pRdy_2;
  input pRdy_0;
  input pAllVldBgnFlag;
  input pRst;
  input pAllVld;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire ChannelBondX_n_8;
  wire DeserializerSlave;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_6;
  wire [7:0]Q;
  wire RefClk;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire SyncBaseOvf_n_5;
  wire SyncBaseOvf_n_6;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pAlignErr_q;
  wire pAlignRst_i_1__0_n_0;
  wire pAlignRst_reg_n_0;
  wire pAligned_reg;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pBitslip0;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire \pBitslipCnt_reg_n_0_[0] ;
  wire \pBitslipCnt_reg_n_0_[1] ;
  wire pBitslip_reg_n_0;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst;
  wire pTimeoutOvf;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire \rTimeoutCnt[0]_i_1__0_n_0 ;
  wire \rTimeoutCnt[0]_i_3__0_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_7 ;
  wire rTimeoutRst;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED ;

  dvi2rgb_0_ChannelBond_8 ChannelBondX
       (.CLK(CLK),
        .D(pDataIn),
        .I35(pDataInRaw),
        .SR(pAligned_reg),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(pAllVldBgnFlag),
        .pMeRdy_int_reg_0(ChannelBondX_n_8),
        .pMeRdy_int_reg_1(pRdy_1),
        .pRdy_0(pRdy_0),
        .pRdy_2(pRdy_2));
  dvi2rgb_0_InputSERDES_9 InputSERDES_X
       (.AS(AS),
        .CLK(CLK),
        .CLKB(CLKB),
        .D(pIDLY_CNT),
        .DeserializerSlave_0(pBitslip_reg_n_0),
        .DeserializerSlave_1(DeserializerSlave),
        .I35(pDataInRaw),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD));
  dvi2rgb_0_PhaseAlign_10 PhaseAlignX
       (.CLK(CLK),
        .D(pDataInRaw[8:0]),
        .SS(pAlignRst_reg_n_0),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pAligned_reg_0(pAligned_reg),
        .pBitslip0(pBitslip0),
        .pError_reg_0(PhaseAlignX_n_4),
        .pIDLY_CE(pIDLY_CE),
        .\pIDLY_CNT_Q_reg[4]_0 (pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .\pState_reg[9]_0 (PhaseAlignX_n_6),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2));
  dvi2rgb_0_SyncBase_11 SyncBaseOvf
       (.AS(AS),
        .CLK(CLK),
        .RefClk(RefClk),
        .out(pTimeoutOvf),
        .rTimeoutCnt_reg(rTimeoutCnt_reg),
        .rTimeoutCnt_reg_10_sp_1(SyncBaseOvf_n_6),
        .rTimeoutCnt_reg_14_sp_1(SyncBaseOvf_n_1),
        .rTimeoutCnt_reg_20_sp_1(SyncBaseOvf_n_4),
        .rTimeoutCnt_reg_21_sp_1(SyncBaseOvf_n_2),
        .rTimeoutCnt_reg_3_sp_1(SyncBaseOvf_n_3),
        .rTimeoutCnt_reg_8_sp_1(SyncBaseOvf_n_5));
  dvi2rgb_0_SyncBase__parameterized0_12 SyncBaseRst
       (.AS(AS),
        .CLK(CLK),
        .RefClk(RefClk),
        .iIn_q_reg_0(PhaseAlignX_n_6),
        .out(rTimeoutRst));
  FDRE pAlignErr_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(PhaseAlignX_n_4),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    pAlignRst_i_1__0
       (.I0(pBitslip_reg_n_0),
        .I1(pRst),
        .I2(\pBitslipCnt_reg_n_0_[1] ),
        .I3(\pBitslipCnt_reg_n_0_[0] ),
        .I4(pAlignRst_reg_n_0),
        .O(pAlignRst_i_1__0_n_0));
  FDPE pAlignRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAlignRst_i_1__0_n_0),
        .PRE(AS),
        .Q(pAlignRst_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(\pBitslipCnt_reg_n_0_[0] ),
        .I1(\pBitslipCnt_reg_n_0_[1] ),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(\pBitslipCnt_reg_n_0_[0] ),
        .I1(\pBitslipCnt_reg_n_0_[1] ),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(\pBitslipCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(\pBitslipCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBitslip0),
        .Q(pBitslip_reg_n_0),
        .R(1'b0));
  FDRE \pDataIn_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(Q[0]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(Q[1]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(Q[2]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(Q[3]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(Q[4]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(Q[5]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(Q[6]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(Q[7]),
        .R(ChannelBondX_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rTimeoutCnt[0]_i_1__0 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .I4(SyncBaseOvf_n_5),
        .I5(SyncBaseOvf_n_6),
        .O(\rTimeoutCnt[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_3__0 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2__0_n_0 ,\rTimeoutCnt_reg[0]_i_2__0_n_1 ,\rTimeoutCnt_reg[0]_i_2__0_n_2 ,\rTimeoutCnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2__0_n_4 ,\rTimeoutCnt_reg[0]_i_2__0_n_5 ,\rTimeoutCnt_reg[0]_i_2__0_n_6 ,\rTimeoutCnt_reg[0]_i_2__0_n_7 }),
        .S({rTimeoutCnt_reg[3:1],\rTimeoutCnt[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[12]_i_1__0 
       (.CI(\rTimeoutCnt_reg[8]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1__0_n_0 ,\rTimeoutCnt_reg[12]_i_1__0_n_1 ,\rTimeoutCnt_reg[12]_i_1__0_n_2 ,\rTimeoutCnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1__0_n_4 ,\rTimeoutCnt_reg[12]_i_1__0_n_5 ,\rTimeoutCnt_reg[12]_i_1__0_n_6 ,\rTimeoutCnt_reg[12]_i_1__0_n_7 }),
        .S(rTimeoutCnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[16]_i_1__0 
       (.CI(\rTimeoutCnt_reg[12]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1__0_n_0 ,\rTimeoutCnt_reg[16]_i_1__0_n_1 ,\rTimeoutCnt_reg[16]_i_1__0_n_2 ,\rTimeoutCnt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1__0_n_4 ,\rTimeoutCnt_reg[16]_i_1__0_n_5 ,\rTimeoutCnt_reg[16]_i_1__0_n_6 ,\rTimeoutCnt_reg[16]_i_1__0_n_7 }),
        .S(rTimeoutCnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[20]_i_1__0 
       (.CI(\rTimeoutCnt_reg[16]_i_1__0_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1__0_n_1 ,\rTimeoutCnt_reg[20]_i_1__0_n_2 ,\rTimeoutCnt_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1__0_n_4 ,\rTimeoutCnt_reg[20]_i_1__0_n_5 ,\rTimeoutCnt_reg[20]_i_1__0_n_6 ,\rTimeoutCnt_reg[20]_i_1__0_n_7 }),
        .S(rTimeoutCnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[4]_i_1__0 
       (.CI(\rTimeoutCnt_reg[0]_i_2__0_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1__0_n_0 ,\rTimeoutCnt_reg[4]_i_1__0_n_1 ,\rTimeoutCnt_reg[4]_i_1__0_n_2 ,\rTimeoutCnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1__0_n_4 ,\rTimeoutCnt_reg[4]_i_1__0_n_5 ,\rTimeoutCnt_reg[4]_i_1__0_n_6 ,\rTimeoutCnt_reg[4]_i_1__0_n_7 }),
        .S(rTimeoutCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[8]_i_1__0 
       (.CI(\rTimeoutCnt_reg[4]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1__0_n_0 ,\rTimeoutCnt_reg[8]_i_1__0_n_1 ,\rTimeoutCnt_reg[8]_i_1__0_n_2 ,\rTimeoutCnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1__0_n_4 ,\rTimeoutCnt_reg[8]_i_1__0_n_5 ,\rTimeoutCnt_reg[8]_i_1__0_n_6 ,\rTimeoutCnt_reg[8]_i_1__0_n_7 }),
        .S(rTimeoutCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_0_TMDS_Decoder_1
   (pVld_2,
    pRdy_2,
    Q,
    TMDS_Data_p,
    TMDS_Data_n,
    CLK,
    DeserializerMaster,
    CLKB,
    out,
    RefClk,
    pRdEn_reg,
    pRdy_0,
    pRdy_1,
    pAllVldBgnFlag,
    pRst,
    pAllVld);
  output pVld_2;
  output pRdy_2;
  output [7:0]Q;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input CLK;
  input DeserializerMaster;
  input CLKB;
  input [0:0]out;
  input RefClk;
  input pRdEn_reg;
  input pRdy_0;
  input pRdy_1;
  input pAllVldBgnFlag;
  input pRst;
  input pAllVld;

  wire CLK;
  wire CLKB;
  wire ChannelBondX_n_8;
  wire DeserializerMaster;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_5;
  wire [7:0]Q;
  wire RefClk;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire SyncBaseOvf_n_5;
  wire SyncBaseOvf_n_6;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAlignRst_i_1_n_0;
  wire pAlignRst_reg_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pBitslip0;
  wire [1:0]pBitslipCnt;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire pBitslip_reg_n_0;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire pRdEn_reg;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst;
  wire pTimeoutOvf;
  wire pVld_2;
  wire \rTimeoutCnt[0]_i_1_n_0 ;
  wire \rTimeoutCnt[0]_i_3_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_7 ;
  wire rTimeoutRst;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED ;

  dvi2rgb_0_ChannelBond ChannelBondX
       (.CLK(CLK),
        .D(pDataIn),
        .SR(ChannelBondX_n_8),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(pAllVldBgnFlag),
        .pDataInRaw(pDataInRaw),
        .pMeRdy_int_reg_0(pRdy_2),
        .pRdEn_reg_0(pRdEn_reg),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1));
  dvi2rgb_0_InputSERDES InputSERDES_X
       (.CLK(CLK),
        .CLKB(CLKB),
        .D(pIDLY_CNT),
        .DeserializerMaster_0(DeserializerMaster),
        .DeserializerSlave_0(pBitslip_reg_n_0),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .out(out),
        .pDataInRaw(pDataInRaw),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD));
  dvi2rgb_0_PhaseAlign PhaseAlignX
       (.CLK(CLK),
        .D(pDataInRaw[8:0]),
        .SS(pAlignRst_reg_n_0),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pBitslip0(pBitslip0),
        .pError_reg_0(PhaseAlignX_n_4),
        .pIDLY_CE(pIDLY_CE),
        .\pIDLY_CNT_Q_reg[4]_0 (pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .\pState_reg[9]_0 (PhaseAlignX_n_5),
        .pVld_2(pVld_2));
  dvi2rgb_0_SyncBase SyncBaseOvf
       (.CLK(CLK),
        .RefClk(RefClk),
        .\oSyncStages_reg[1] (out),
        .out(pTimeoutOvf),
        .rTimeoutCnt_reg(rTimeoutCnt_reg),
        .rTimeoutCnt_reg_10_sp_1(SyncBaseOvf_n_6),
        .rTimeoutCnt_reg_14_sp_1(SyncBaseOvf_n_1),
        .rTimeoutCnt_reg_20_sp_1(SyncBaseOvf_n_4),
        .rTimeoutCnt_reg_21_sp_1(SyncBaseOvf_n_2),
        .rTimeoutCnt_reg_3_sp_1(SyncBaseOvf_n_3),
        .rTimeoutCnt_reg_8_sp_1(SyncBaseOvf_n_5));
  dvi2rgb_0_SyncBase__parameterized0 SyncBaseRst
       (.CLK(CLK),
        .RefClk(RefClk),
        .iIn_q_reg_0(PhaseAlignX_n_5),
        .\oSyncStages_reg[1] (out),
        .out(rTimeoutRst));
  FDRE pAlignErr_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(PhaseAlignX_n_4),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    pAlignRst_i_1
       (.I0(pBitslip_reg_n_0),
        .I1(pRst),
        .I2(pBitslipCnt[1]),
        .I3(pBitslipCnt[0]),
        .I4(pAlignRst_reg_n_0),
        .O(pAlignRst_i_1_n_0));
  FDPE pAlignRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pAlignRst_i_1_n_0),
        .PRE(out),
        .Q(pAlignRst_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip_reg_n_0),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(pBitslipCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(pBitslipCnt[1]),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pBitslip0),
        .Q(pBitslip_reg_n_0),
        .R(1'b0));
  FDRE \pDataIn_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(Q[0]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(Q[1]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(Q[2]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(Q[3]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(Q[4]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(Q[5]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(Q[6]),
        .R(ChannelBondX_n_8));
  FDRE \pDataIn_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(Q[7]),
        .R(ChannelBondX_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rTimeoutCnt[0]_i_1 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .I4(SyncBaseOvf_n_5),
        .I5(SyncBaseOvf_n_6),
        .O(\rTimeoutCnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_3 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2_n_0 ,\rTimeoutCnt_reg[0]_i_2_n_1 ,\rTimeoutCnt_reg[0]_i_2_n_2 ,\rTimeoutCnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2_n_4 ,\rTimeoutCnt_reg[0]_i_2_n_5 ,\rTimeoutCnt_reg[0]_i_2_n_6 ,\rTimeoutCnt_reg[0]_i_2_n_7 }),
        .S({rTimeoutCnt_reg[3:1],\rTimeoutCnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[12]_i_1 
       (.CI(\rTimeoutCnt_reg[8]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1_n_0 ,\rTimeoutCnt_reg[12]_i_1_n_1 ,\rTimeoutCnt_reg[12]_i_1_n_2 ,\rTimeoutCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1_n_4 ,\rTimeoutCnt_reg[12]_i_1_n_5 ,\rTimeoutCnt_reg[12]_i_1_n_6 ,\rTimeoutCnt_reg[12]_i_1_n_7 }),
        .S(rTimeoutCnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[16]_i_1 
       (.CI(\rTimeoutCnt_reg[12]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1_n_0 ,\rTimeoutCnt_reg[16]_i_1_n_1 ,\rTimeoutCnt_reg[16]_i_1_n_2 ,\rTimeoutCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1_n_4 ,\rTimeoutCnt_reg[16]_i_1_n_5 ,\rTimeoutCnt_reg[16]_i_1_n_6 ,\rTimeoutCnt_reg[16]_i_1_n_7 }),
        .S(rTimeoutCnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[20]_i_1 
       (.CI(\rTimeoutCnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1_n_1 ,\rTimeoutCnt_reg[20]_i_1_n_2 ,\rTimeoutCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1_n_4 ,\rTimeoutCnt_reg[20]_i_1_n_5 ,\rTimeoutCnt_reg[20]_i_1_n_6 ,\rTimeoutCnt_reg[20]_i_1_n_7 }),
        .S(rTimeoutCnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[4]_i_1 
       (.CI(\rTimeoutCnt_reg[0]_i_2_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1_n_0 ,\rTimeoutCnt_reg[4]_i_1_n_1 ,\rTimeoutCnt_reg[4]_i_1_n_2 ,\rTimeoutCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1_n_4 ,\rTimeoutCnt_reg[4]_i_1_n_5 ,\rTimeoutCnt_reg[4]_i_1_n_6 ,\rTimeoutCnt_reg[4]_i_1_n_7 }),
        .S(rTimeoutCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rTimeoutCnt_reg[8]_i_1 
       (.CI(\rTimeoutCnt_reg[4]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1_n_0 ,\rTimeoutCnt_reg[8]_i_1_n_1 ,\rTimeoutCnt_reg[8]_i_1_n_2 ,\rTimeoutCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1_n_4 ,\rTimeoutCnt_reg[8]_i_1_n_5 ,\rTimeoutCnt_reg[8]_i_1_n_6 ,\rTimeoutCnt_reg[8]_i_1_n_7 }),
        .S(rTimeoutCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "dvi2rgb" *) (* kAddBUFG = "TRUE" *) (* kClkRange = "2" *) 
(* kDebug = "FALSE" *) (* kEdidFileName = "dgl_720p_cea.data" *) (* kEmulateDDC = "FALSE" *) 
(* kIDLY_TapValuePs = "78" *) (* kIDLY_TapWidth = "5" *) (* kRstActiveHigh = "TRUE" *) 
module dvi2rgb_0_dvi2rgb
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    RefClk,
    aRst,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk,
    aPixelClkLckd,
    pLocked,
    SDA_I,
    SDA_O,
    SDA_T,
    SCL_I,
    SCL_O,
    SCL_T,
    pRst,
    pRst_n);
  input TMDS_Clk_p;
  input TMDS_Clk_n;
  input [2:0]TMDS_Data_p;
  input [2:0]TMDS_Data_n;
  input RefClk;
  input aRst;
  input aRst_n;
  output [23:0]vid_pData;
  output vid_pVDE;
  output vid_pHSync;
  output vid_pVSync;
  output PixelClk;
  output SerialClk;
  output aPixelClkLckd;
  output pLocked;
  input SDA_I;
  output SDA_O;
  output SDA_T;
  input SCL_I;
  output SCL_O;
  output SCL_T;
  input pRst;
  input pRst_n;

  wire \<const0> ;
  wire \ChannelBondX/pAllVldBgnFlag ;
  wire \DataDecoders[1].DecoderX_n_0 ;
  wire PixelClk;
  wire PixelClk_int;
  wire RefClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire TMDS_ClockingX_n_0;
  wire TMDS_ClockingX_n_3;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aPixelClkLckd;
  wire aRst;
  wire pAllVld;
  wire pC0;
  wire pC1;
  wire pLockLostRst;
  wire pLocked;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst;
  wire pVde;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [23:0]piData;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  assign SCL_O = \<const0> ;
  assign SCL_T = \<const0> ;
  assign SDA_O = \<const0> ;
  assign SDA_T = \<const0> ;
  assign SerialClk = \<const0> ;
  dvi2rgb_0_TMDS_Decoder \DataDecoders[0].DecoderX 
       (.AS(pLockLostRst),
        .CLK(PixelClk_int),
        .CLKB(TMDS_ClockingX_n_0),
        .DeserializerMaster(TMDS_ClockingX_n_0),
        .Q(piData[15:8]),
        .RefClk(RefClk),
        .TMDS_Data_n(TMDS_Data_n[0]),
        .TMDS_Data_p(TMDS_Data_p[0]),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(\ChannelBondX/pAllVldBgnFlag ),
        .pC0(pC0),
        .pC1(pC1),
        .pMeRdy_int_reg(\DataDecoders[1].DecoderX_n_0 ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst(pRst),
        .pVde(pVde),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2));
  dvi2rgb_0_TMDS_Decoder_0 \DataDecoders[1].DecoderX 
       (.AS(pLockLostRst),
        .CLK(PixelClk_int),
        .CLKB(TMDS_ClockingX_n_0),
        .DeserializerSlave(TMDS_ClockingX_n_0),
        .Q(piData[7:0]),
        .RefClk(RefClk),
        .TMDS_Data_n(TMDS_Data_n[1]),
        .TMDS_Data_p(TMDS_Data_p[1]),
        .pAligned_reg(\DataDecoders[1].DecoderX_n_0 ),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(\ChannelBondX/pAllVldBgnFlag ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst(pRst),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2));
  dvi2rgb_0_TMDS_Decoder_1 \DataDecoders[2].DecoderX 
       (.CLK(PixelClk_int),
        .CLKB(TMDS_ClockingX_n_0),
        .DeserializerMaster(TMDS_ClockingX_n_0),
        .Q(piData[23:16]),
        .RefClk(RefClk),
        .TMDS_Data_n(TMDS_Data_n[2]),
        .TMDS_Data_p(TMDS_Data_p[2]),
        .out(pLockLostRst),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag(\ChannelBondX/pAllVldBgnFlag ),
        .pRdEn_reg(\DataDecoders[1].DecoderX_n_0 ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst(pRst),
        .pVld_2(pVld_2));
  GND GND
       (.G(\<const0> ));
  dvi2rgb_0_ResyncToBUFG \GenerateBUFG.ResyncToBUFG_X 
       (.CLK(PixelClk),
        .D(piData),
        .InstBUFG_0(PixelClk_int),
        .pC0(pC0),
        .pC1(pC1),
        .pVde(pVde),
        .vid_pData(vid_pData),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
  dvi2rgb_0_ResetBridge LockLostReset
       (.in0(TMDS_ClockingX_n_3),
        .\oSyncStages_reg[1] (PixelClk_int),
        .out(pLockLostRst));
  dvi2rgb_0_ResetBridge__parameterized0 LockedSync
       (.in0(TMDS_ClockingX_n_3),
        .\oSyncStages_reg[1] (PixelClk_int),
        .pLocked(pLocked));
  dvi2rgb_0_TMDS_Clocking TMDS_ClockingX
       (.PixelClkBuffer_0(PixelClk_int),
        .RefClk(RefClk),
        .SerialClkBuffer_0(TMDS_ClockingX_n_0),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .aPixelClkLckd(aPixelClkLckd),
        .aRst(aRst),
        .in0(TMDS_ClockingX_n_3));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
