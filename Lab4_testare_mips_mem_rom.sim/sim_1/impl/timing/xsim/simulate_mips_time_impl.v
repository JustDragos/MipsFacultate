// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr 20 10:47:17 2025
// Host        : Dragos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Facultate/An_II/Semestrul
//               II/AC/Lab4_testare_mips_mem_rom/Lab4_testare_mips_mem_rom.sim/sim_1/impl/timing/xsim/simulate_mips_time_impl.v}
// Design      : tested_mips
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM64X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD11
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD12
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD13
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD14
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD15
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD16
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD17
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD18
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD19
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD20
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD21
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD22
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD23
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD24
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD25
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD26
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD27
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD28
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD29
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD30
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD31
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD32
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD33
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD34
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD35
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD36
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD37
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD38
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD39
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD40
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD41
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module ExecutionElem
   (data0,
    RD1,
    S,
    \cat_OBUF[6]_inst_i_37 ,
    \cat_OBUF[6]_inst_i_34 ,
    \cat_OBUF[6]_inst_i_35 ,
    \cat_OBUF[6]_inst_i_32 ,
    \cat_OBUF[6]_inst_i_33 ,
    \cat_OBUF[6]_inst_i_30 ,
    \cat_OBUF[6]_inst_i_31 );
  output [31:0]data0;
  input [30:0]RD1;
  input [3:0]S;
  input [3:0]\cat_OBUF[6]_inst_i_37 ;
  input [3:0]\cat_OBUF[6]_inst_i_34 ;
  input [3:0]\cat_OBUF[6]_inst_i_35 ;
  input [3:0]\cat_OBUF[6]_inst_i_32 ;
  input [3:0]\cat_OBUF[6]_inst_i_33 ;
  input [3:0]\cat_OBUF[6]_inst_i_30 ;
  input [3:0]\cat_OBUF[6]_inst_i_31 ;

  wire [30:0]RD1;
  wire [3:0]S;
  wire [3:0]\cat_OBUF[6]_inst_i_30 ;
  wire [3:0]\cat_OBUF[6]_inst_i_31 ;
  wire [3:0]\cat_OBUF[6]_inst_i_32 ;
  wire [3:0]\cat_OBUF[6]_inst_i_33 ;
  wire [3:0]\cat_OBUF[6]_inst_i_34 ;
  wire [3:0]\cat_OBUF[6]_inst_i_35 ;
  wire [3:0]\cat_OBUF[6]_inst_i_37 ;
  wire [31:0]data0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry_n_0;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[3:0]),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[7:4]),
        .O(data0[7:4]),
        .S(\cat_OBUF[6]_inst_i_37 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[11:8]),
        .O(data0[11:8]),
        .S(\cat_OBUF[6]_inst_i_34 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,NLW_plusOp_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[15:12]),
        .O(data0[15:12]),
        .S(\cat_OBUF[6]_inst_i_35 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,NLW_plusOp_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[19:16]),
        .O(data0[19:16]),
        .S(\cat_OBUF[6]_inst_i_32 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,NLW_plusOp_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[23:20]),
        .O(data0[23:20]),
        .S(\cat_OBUF[6]_inst_i_33 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,NLW_plusOp_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(RD1[27:24]),
        .O(data0[27:24]),
        .S(\cat_OBUF[6]_inst_i_30 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO(NLW_plusOp_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,RD1[30:28]}),
        .O(data0[31:28]),
        .S(\cat_OBUF[6]_inst_i_31 ));
endmodule

module IFetch
   (\PC_reg[7]_0 ,
    enable,
    clk_IBUF_BUFG,
    BT1_IBUF);
  output \PC_reg[7]_0 ;
  input enable;
  input clk_IBUF_BUFG;
  input BT1_IBUF;

  wire BT1_IBUF;
  wire \PC_reg[7]_0 ;
  wire clk_IBUF_BUFG;
  wire enable;

  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(enable),
        .CLR(BT1_IBUF),
        .D(1'b1),
        .Q(\PC_reg[7]_0 ));
endmodule

module MEM
   (\cnt_reg[14] ,
    \sw[1] ,
    MemData,
    \cnt_reg[14]_0 ,
    \cnt_reg[14]_1 ,
    \cnt_reg[14]_2 ,
    \cnt_reg[14]_3 ,
    \cnt_reg[14]_4 ,
    \cnt_reg[14]_5 ,
    \cnt_reg[14]_6 ,
    \cnt_reg[14]_7 ,
    \cnt_reg[14]_8 ,
    \cnt_reg[14]_9 ,
    \cnt_reg[14]_10 ,
    sel0,
    sw_IBUF,
    data0,
    \cat_OBUF[6]_inst_i_13_0 ,
    \cat_OBUF[6]_inst_i_21_0 ,
    \cat_OBUF[6]_inst_i_17_0 ,
    \cat_OBUF[6]_inst_i_9_0 ,
    \cat_OBUF[6]_inst_i_13_1 ,
    \cat_OBUF[6]_inst_i_21_1 ,
    \cat_OBUF[6]_inst_i_17_1 ,
    \cat_OBUF[6]_inst_i_9_1 ,
    \cat_OBUF[6]_inst_i_12_0 ,
    \cat_OBUF[6]_inst_i_20_0 ,
    \cat_OBUF[6]_inst_i_16_0 ,
    \cat_OBUF[6]_inst_i_8_0 ,
    \cat_OBUF[6]_inst_i_12_1 ,
    \cat_OBUF[6]_inst_i_20_1 ,
    \cat_OBUF[6]_inst_i_16_1 ,
    \cat_OBUF[6]_inst_i_8_1 ,
    \cat_OBUF[6]_inst_i_11_0 ,
    \cat_OBUF[6]_inst_i_19_0 ,
    \cat_OBUF[6]_inst_i_15_0 ,
    \cat_OBUF[6]_inst_i_7_0 ,
    \cat_OBUF[6]_inst_i_11_1 ,
    \cat_OBUF[6]_inst_i_19_1 ,
    \cat_OBUF[6]_inst_i_15_1 ,
    \cat_OBUF[6]_inst_i_7_1 ,
    \cat_OBUF[6]_inst_i_10 ,
    \cat_OBUF[6]_inst_i_18 ,
    \cat_OBUF[6]_inst_i_14 ,
    \cat_OBUF[6]_inst_i_6 ,
    clk_IBUF_BUFG,
    RD2);
  output \cnt_reg[14] ;
  output [3:0]\sw[1] ;
  output [31:0]MemData;
  output \cnt_reg[14]_0 ;
  output \cnt_reg[14]_1 ;
  output \cnt_reg[14]_2 ;
  output \cnt_reg[14]_3 ;
  output \cnt_reg[14]_4 ;
  output \cnt_reg[14]_5 ;
  output \cnt_reg[14]_6 ;
  output \cnt_reg[14]_7 ;
  output \cnt_reg[14]_8 ;
  output \cnt_reg[14]_9 ;
  output \cnt_reg[14]_10 ;
  input [0:0]sel0;
  input [2:0]sw_IBUF;
  input [27:0]data0;
  input \cat_OBUF[6]_inst_i_13_0 ;
  input \cat_OBUF[6]_inst_i_21_0 ;
  input \cat_OBUF[6]_inst_i_17_0 ;
  input \cat_OBUF[6]_inst_i_9_0 ;
  input \cat_OBUF[6]_inst_i_13_1 ;
  input \cat_OBUF[6]_inst_i_21_1 ;
  input \cat_OBUF[6]_inst_i_17_1 ;
  input \cat_OBUF[6]_inst_i_9_1 ;
  input \cat_OBUF[6]_inst_i_12_0 ;
  input \cat_OBUF[6]_inst_i_20_0 ;
  input \cat_OBUF[6]_inst_i_16_0 ;
  input \cat_OBUF[6]_inst_i_8_0 ;
  input \cat_OBUF[6]_inst_i_12_1 ;
  input \cat_OBUF[6]_inst_i_20_1 ;
  input \cat_OBUF[6]_inst_i_16_1 ;
  input \cat_OBUF[6]_inst_i_8_1 ;
  input \cat_OBUF[6]_inst_i_11_0 ;
  input \cat_OBUF[6]_inst_i_19_0 ;
  input \cat_OBUF[6]_inst_i_15_0 ;
  input \cat_OBUF[6]_inst_i_7_0 ;
  input \cat_OBUF[6]_inst_i_11_1 ;
  input \cat_OBUF[6]_inst_i_19_1 ;
  input \cat_OBUF[6]_inst_i_15_1 ;
  input \cat_OBUF[6]_inst_i_7_1 ;
  input \cat_OBUF[6]_inst_i_10 ;
  input \cat_OBUF[6]_inst_i_18 ;
  input \cat_OBUF[6]_inst_i_14 ;
  input \cat_OBUF[6]_inst_i_6 ;
  input clk_IBUF_BUFG;
  input [31:0]RD2;

  wire [31:0]MemData;
  wire [31:0]RD2;
  wire \cat_OBUF[6]_inst_i_10 ;
  wire \cat_OBUF[6]_inst_i_11_0 ;
  wire \cat_OBUF[6]_inst_i_11_1 ;
  wire \cat_OBUF[6]_inst_i_12_0 ;
  wire \cat_OBUF[6]_inst_i_12_1 ;
  wire \cat_OBUF[6]_inst_i_13_0 ;
  wire \cat_OBUF[6]_inst_i_13_1 ;
  wire \cat_OBUF[6]_inst_i_14 ;
  wire \cat_OBUF[6]_inst_i_15_0 ;
  wire \cat_OBUF[6]_inst_i_15_1 ;
  wire \cat_OBUF[6]_inst_i_16_0 ;
  wire \cat_OBUF[6]_inst_i_16_1 ;
  wire \cat_OBUF[6]_inst_i_17_0 ;
  wire \cat_OBUF[6]_inst_i_17_1 ;
  wire \cat_OBUF[6]_inst_i_18 ;
  wire \cat_OBUF[6]_inst_i_19_0 ;
  wire \cat_OBUF[6]_inst_i_19_1 ;
  wire \cat_OBUF[6]_inst_i_20_0 ;
  wire \cat_OBUF[6]_inst_i_20_1 ;
  wire \cat_OBUF[6]_inst_i_21_0 ;
  wire \cat_OBUF[6]_inst_i_21_1 ;
  wire \cat_OBUF[6]_inst_i_6 ;
  wire \cat_OBUF[6]_inst_i_7_0 ;
  wire \cat_OBUF[6]_inst_i_7_1 ;
  wire \cat_OBUF[6]_inst_i_8_0 ;
  wire \cat_OBUF[6]_inst_i_8_1 ;
  wire \cat_OBUF[6]_inst_i_9_0 ;
  wire \cat_OBUF[6]_inst_i_9_1 ;
  wire clk_IBUF_BUFG;
  wire \cnt_reg[14] ;
  wire \cnt_reg[14]_0 ;
  wire \cnt_reg[14]_1 ;
  wire \cnt_reg[14]_10 ;
  wire \cnt_reg[14]_2 ;
  wire \cnt_reg[14]_3 ;
  wire \cnt_reg[14]_4 ;
  wire \cnt_reg[14]_5 ;
  wire \cnt_reg[14]_6 ;
  wire \cnt_reg[14]_7 ;
  wire \cnt_reg[14]_8 ;
  wire \cnt_reg[14]_9 ;
  wire [27:0]data0;
  wire [0:0]sel0;
  wire [3:0]\sw[1] ;
  wire [2:0]sw_IBUF;
  wire [23:0]to_ssd;

  MUXF7 \cat_OBUF[6]_inst_i_11 
       (.I0(to_ssd[16]),
        .I1(to_ssd[20]),
        .O(\cnt_reg[14]_7 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_12 
       (.I0(to_ssd[8]),
        .I1(to_ssd[12]),
        .O(\cnt_reg[14]_3 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_13 
       (.I0(to_ssd[0]),
        .I1(to_ssd[4]),
        .O(\cnt_reg[14] ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_15 
       (.I0(to_ssd[18]),
        .I1(to_ssd[22]),
        .O(\cnt_reg[14]_9 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_16 
       (.I0(to_ssd[10]),
        .I1(to_ssd[14]),
        .O(\cnt_reg[14]_5 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_17 
       (.I0(to_ssd[2]),
        .I1(to_ssd[6]),
        .O(\cnt_reg[14]_1 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_19 
       (.I0(to_ssd[17]),
        .I1(to_ssd[21]),
        .O(\cnt_reg[14]_8 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_20 
       (.I0(to_ssd[9]),
        .I1(to_ssd[13]),
        .O(\cnt_reg[14]_4 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_21 
       (.I0(to_ssd[1]),
        .I1(to_ssd[5]),
        .O(\cnt_reg[14]_0 ),
        .S(sel0));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_22 
       (.I0(MemData[27]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[27]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_6 ),
        .O(\sw[1] [3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_24 
       (.I0(MemData[19]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[19]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_7_0 ),
        .O(to_ssd[19]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_25 
       (.I0(MemData[23]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[23]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_7_1 ),
        .O(to_ssd[23]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \cat_OBUF[6]_inst_i_26 
       (.I0(MemData[11]),
        .I1(sw_IBUF[1]),
        .I2(data0[11]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_8_0 ),
        .O(to_ssd[11]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_27 
       (.I0(MemData[15]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[15]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_8_1 ),
        .O(to_ssd[15]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_28 
       (.I0(MemData[3]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[3]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_9_0 ),
        .O(to_ssd[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_29 
       (.I0(MemData[7]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[7]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_9_1 ),
        .O(to_ssd[7]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_30 
       (.I0(MemData[24]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[24]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_10 ),
        .O(\sw[1] [0]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_32 
       (.I0(MemData[16]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[16]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_11_0 ),
        .O(to_ssd[16]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_33 
       (.I0(MemData[20]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[20]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_11_1 ),
        .O(to_ssd[20]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_34 
       (.I0(MemData[8]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[8]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_12_0 ),
        .O(to_ssd[8]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_35 
       (.I0(MemData[12]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[12]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_12_1 ),
        .O(to_ssd[12]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_36 
       (.I0(MemData[0]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[0]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_13_0 ),
        .O(to_ssd[0]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_37 
       (.I0(MemData[4]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[4]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_13_1 ),
        .O(to_ssd[4]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_38 
       (.I0(MemData[26]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[26]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_14 ),
        .O(\sw[1] [2]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_40 
       (.I0(MemData[18]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[18]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_15_0 ),
        .O(to_ssd[18]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_41 
       (.I0(MemData[22]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[22]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_15_1 ),
        .O(to_ssd[22]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_42 
       (.I0(MemData[10]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[10]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_16_0 ),
        .O(to_ssd[10]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_43 
       (.I0(MemData[14]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[14]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_16_1 ),
        .O(to_ssd[14]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_44 
       (.I0(MemData[2]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[2]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_17_0 ),
        .O(to_ssd[2]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_45 
       (.I0(MemData[6]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[6]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_17_1 ),
        .O(to_ssd[6]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_46 
       (.I0(MemData[25]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[25]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_18 ),
        .O(\sw[1] [1]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_48 
       (.I0(MemData[17]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[17]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_19_0 ),
        .O(to_ssd[17]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_49 
       (.I0(MemData[21]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[21]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_19_1 ),
        .O(to_ssd[21]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_50 
       (.I0(MemData[9]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[9]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_20_0 ),
        .O(to_ssd[9]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_51 
       (.I0(MemData[13]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[13]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_20_1 ),
        .O(to_ssd[13]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_52 
       (.I0(MemData[1]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[1]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_21_0 ),
        .O(to_ssd[1]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \cat_OBUF[6]_inst_i_53 
       (.I0(MemData[5]),
        .I1(sw_IBUF[1]),
        .I2(data0[5]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_21_1 ),
        .O(to_ssd[5]));
  MUXF7 \cat_OBUF[6]_inst_i_7 
       (.I0(to_ssd[19]),
        .I1(to_ssd[23]),
        .O(\cnt_reg[14]_10 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_8 
       (.I0(to_ssd[11]),
        .I1(to_ssd[15]),
        .O(\cnt_reg[14]_6 ),
        .S(sel0));
  MUXF7 \cat_OBUF[6]_inst_i_9 
       (.I0(to_ssd[3]),
        .I1(to_ssd[7]),
        .O(\cnt_reg[14]_2 ),
        .S(sel0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM64X1S_UNIQ_BASE_ mem_matrix_reg_0_63_0_0
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[0]),
        .O(MemData[0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM64X1S_HD11 mem_matrix_reg_0_63_10_10
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[10]),
        .O(MemData[10]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM64X1S_HD12 mem_matrix_reg_0_63_11_11
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[11]),
        .O(MemData[11]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1S_HD13 mem_matrix_reg_0_63_12_12
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[12]),
        .O(MemData[12]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM64X1S_HD14 mem_matrix_reg_0_63_13_13
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[13]),
        .O(MemData[13]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM64X1S_HD15 mem_matrix_reg_0_63_14_14
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[14]),
        .O(MemData[14]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1S_HD16 mem_matrix_reg_0_63_15_15
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[15]),
        .O(MemData[15]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM64X1S_HD17 mem_matrix_reg_0_63_16_16
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[16]),
        .O(MemData[16]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM64X1S_HD18 mem_matrix_reg_0_63_17_17
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[17]),
        .O(MemData[17]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM64X1S_HD19 mem_matrix_reg_0_63_18_18
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[18]),
        .O(MemData[18]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM64X1S_HD20 mem_matrix_reg_0_63_19_19
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[19]),
        .O(MemData[19]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM64X1S_HD21 mem_matrix_reg_0_63_1_1
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[1]),
        .O(MemData[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM64X1S_HD22 mem_matrix_reg_0_63_20_20
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[20]),
        .O(MemData[20]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM64X1S_HD23 mem_matrix_reg_0_63_21_21
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[21]),
        .O(MemData[21]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM64X1S_HD24 mem_matrix_reg_0_63_22_22
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[22]),
        .O(MemData[22]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM64X1S_HD25 mem_matrix_reg_0_63_23_23
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[23]),
        .O(MemData[23]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM64X1S_HD26 mem_matrix_reg_0_63_24_24
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[24]),
        .O(MemData[24]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM64X1S_HD27 mem_matrix_reg_0_63_25_25
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[25]),
        .O(MemData[25]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM64X1S_HD28 mem_matrix_reg_0_63_26_26
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[26]),
        .O(MemData[26]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM64X1S_HD29 mem_matrix_reg_0_63_27_27
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[27]),
        .O(MemData[27]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM64X1S_HD30 mem_matrix_reg_0_63_28_28
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[28]),
        .O(MemData[28]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM64X1S_HD31 mem_matrix_reg_0_63_29_29
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[29]),
        .O(MemData[29]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM64X1S_HD32 mem_matrix_reg_0_63_2_2
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[2]),
        .O(MemData[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1S_HD33 mem_matrix_reg_0_63_30_30
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[30]),
        .O(MemData[30]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1S_HD34 mem_matrix_reg_0_63_31_31
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[31]),
        .O(MemData[31]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM64X1S_HD35 mem_matrix_reg_0_63_3_3
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[3]),
        .O(MemData[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM64X1S_HD36 mem_matrix_reg_0_63_4_4
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[4]),
        .O(MemData[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM64X1S_HD37 mem_matrix_reg_0_63_5_5
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[5]),
        .O(MemData[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1S_HD38 mem_matrix_reg_0_63_6_6
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[6]),
        .O(MemData[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1S_HD39 mem_matrix_reg_0_63_7_7
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[7]),
        .O(MemData[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM64X1S_HD40 mem_matrix_reg_0_63_8_8
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[8]),
        .O(MemData[8]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
  (* INIT = "64'h0000000000000000" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "MEM_Elem/mem_matrix_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM64X1S_HD41 mem_matrix_reg_0_63_9_9
       (.A0(data0[2]),
        .A1(data0[3]),
        .A2(data0[4]),
        .A3(data0[5]),
        .A4(data0[6]),
        .A5(data0[7]),
        .D(RD2[9]),
        .O(MemData[9]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b0));
endmodule

module MPG
   (enable,
    BT0_IBUF,
    clk_IBUF_BUFG);
  output enable;
  input BT0_IBUF;
  input clk_IBUF_BUFG;

  wire BT0_IBUF;
  wire Q1;
  wire Q1_i_2_n_0;
  wire Q1_i_3_n_0;
  wire Q1_i_4_n_0;
  wire Q2;
  wire Q3;
  wire clk_IBUF_BUFG;
  wire \cnt_int[0]_i_2_n_0 ;
  wire [17:0]cnt_int_reg;
  wire \cnt_int_reg[0]_i_1_n_0 ;
  wire \cnt_int_reg[0]_i_1_n_4 ;
  wire \cnt_int_reg[0]_i_1_n_5 ;
  wire \cnt_int_reg[0]_i_1_n_6 ;
  wire \cnt_int_reg[0]_i_1_n_7 ;
  wire \cnt_int_reg[12]_i_1_n_0 ;
  wire \cnt_int_reg[12]_i_1_n_4 ;
  wire \cnt_int_reg[12]_i_1_n_5 ;
  wire \cnt_int_reg[12]_i_1_n_6 ;
  wire \cnt_int_reg[12]_i_1_n_7 ;
  wire \cnt_int_reg[16]_i_1_n_6 ;
  wire \cnt_int_reg[16]_i_1_n_7 ;
  wire \cnt_int_reg[4]_i_1_n_0 ;
  wire \cnt_int_reg[4]_i_1_n_4 ;
  wire \cnt_int_reg[4]_i_1_n_5 ;
  wire \cnt_int_reg[4]_i_1_n_6 ;
  wire \cnt_int_reg[4]_i_1_n_7 ;
  wire \cnt_int_reg[8]_i_1_n_0 ;
  wire \cnt_int_reg[8]_i_1_n_4 ;
  wire \cnt_int_reg[8]_i_1_n_5 ;
  wire \cnt_int_reg[8]_i_1_n_6 ;
  wire \cnt_int_reg[8]_i_1_n_7 ;
  wire enable;
  wire eqOp;
  wire [2:0]\NLW_cnt_int_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_int_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_int_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_int_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_int_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_int_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \PC[7]_i_1 
       (.I0(Q2),
        .I1(Q3),
        .O(enable));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    Q1_i_1
       (.I0(Q1_i_2_n_0),
        .I1(cnt_int_reg[15]),
        .I2(cnt_int_reg[14]),
        .I3(cnt_int_reg[16]),
        .I4(cnt_int_reg[17]),
        .I5(Q1_i_3_n_0),
        .O(eqOp));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    Q1_i_2
       (.I0(cnt_int_reg[13]),
        .I1(cnt_int_reg[12]),
        .I2(cnt_int_reg[9]),
        .I3(cnt_int_reg[10]),
        .I4(cnt_int_reg[11]),
        .O(Q1_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    Q1_i_3
       (.I0(Q1_i_4_n_0),
        .I1(cnt_int_reg[7]),
        .I2(cnt_int_reg[8]),
        .I3(cnt_int_reg[5]),
        .I4(cnt_int_reg[6]),
        .O(Q1_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    Q1_i_4
       (.I0(cnt_int_reg[0]),
        .I1(cnt_int_reg[1]),
        .I2(cnt_int_reg[2]),
        .I3(cnt_int_reg[4]),
        .I4(cnt_int_reg[3]),
        .O(Q1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q1_reg
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(BT0_IBUF),
        .Q(Q1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Q2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q1),
        .Q(Q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Q3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q2),
        .Q(Q3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_int[0]_i_2 
       (.I0(cnt_int_reg[0]),
        .O(\cnt_int[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[0]_i_1_n_7 ),
        .Q(cnt_int_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_int_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_int_reg[0]_i_1_n_0 ,\NLW_cnt_int_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_int_reg[0]_i_1_n_4 ,\cnt_int_reg[0]_i_1_n_5 ,\cnt_int_reg[0]_i_1_n_6 ,\cnt_int_reg[0]_i_1_n_7 }),
        .S({cnt_int_reg[3:1],\cnt_int[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[8]_i_1_n_5 ),
        .Q(cnt_int_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[8]_i_1_n_4 ),
        .Q(cnt_int_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[12]_i_1_n_7 ),
        .Q(cnt_int_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_int_reg[12]_i_1 
       (.CI(\cnt_int_reg[8]_i_1_n_0 ),
        .CO({\cnt_int_reg[12]_i_1_n_0 ,\NLW_cnt_int_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[12]_i_1_n_4 ,\cnt_int_reg[12]_i_1_n_5 ,\cnt_int_reg[12]_i_1_n_6 ,\cnt_int_reg[12]_i_1_n_7 }),
        .S(cnt_int_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[12]_i_1_n_6 ),
        .Q(cnt_int_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[12]_i_1_n_5 ),
        .Q(cnt_int_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[12]_i_1_n_4 ),
        .Q(cnt_int_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[16]_i_1_n_7 ),
        .Q(cnt_int_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_int_reg[16]_i_1 
       (.CI(\cnt_int_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_int_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_int_reg[16]_i_1_O_UNCONNECTED [3:2],\cnt_int_reg[16]_i_1_n_6 ,\cnt_int_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,cnt_int_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[16]_i_1_n_6 ),
        .Q(cnt_int_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[0]_i_1_n_6 ),
        .Q(cnt_int_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[0]_i_1_n_5 ),
        .Q(cnt_int_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[0]_i_1_n_4 ),
        .Q(cnt_int_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[4]_i_1_n_7 ),
        .Q(cnt_int_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_int_reg[4]_i_1 
       (.CI(\cnt_int_reg[0]_i_1_n_0 ),
        .CO({\cnt_int_reg[4]_i_1_n_0 ,\NLW_cnt_int_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[4]_i_1_n_4 ,\cnt_int_reg[4]_i_1_n_5 ,\cnt_int_reg[4]_i_1_n_6 ,\cnt_int_reg[4]_i_1_n_7 }),
        .S(cnt_int_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[4]_i_1_n_6 ),
        .Q(cnt_int_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[4]_i_1_n_5 ),
        .Q(cnt_int_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[4]_i_1_n_4 ),
        .Q(cnt_int_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[8]_i_1_n_7 ),
        .Q(cnt_int_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_int_reg[8]_i_1 
       (.CI(\cnt_int_reg[4]_i_1_n_0 ),
        .CO({\cnt_int_reg[8]_i_1_n_0 ,\NLW_cnt_int_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[8]_i_1_n_4 ,\cnt_int_reg[8]_i_1_n_5 ,\cnt_int_reg[8]_i_1_n_6 ,\cnt_int_reg[8]_i_1_n_7 }),
        .S(cnt_int_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_int_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_int_reg[8]_i_1_n_6 ),
        .Q(cnt_int_reg[9]),
        .R(1'b0));
endmodule

module SSD
   (\cnt_reg[14]_0 ,
    cat_OBUF,
    an_OBUF,
    clk_IBUF_BUFG,
    \cat_OBUF[1]_inst_i_1_0 ,
    \cat_OBUF[1]_inst_i_1_1 ,
    \cat_OBUF[1]_inst_i_1_2 ,
    \cat_OBUF[1]_inst_i_1_3 ,
    \cat_OBUF[1]_inst_i_1_4 ,
    \cat_OBUF[1]_inst_i_1_5 ,
    \cat_OBUF[1]_inst_i_1_6 ,
    \cat_OBUF[1]_inst_i_1_7 ,
    \cat_OBUF[1]_inst_i_1_8 ,
    \cat_OBUF[1]_inst_i_1_9 ,
    \cat_OBUF[1]_inst_i_1_10 ,
    \cat_OBUF[1]_inst_i_1_11 ,
    to_ssd);
  output [0:0]\cnt_reg[14]_0 ;
  output [6:0]cat_OBUF;
  output [7:0]an_OBUF;
  input clk_IBUF_BUFG;
  input \cat_OBUF[1]_inst_i_1_0 ;
  input \cat_OBUF[1]_inst_i_1_1 ;
  input \cat_OBUF[1]_inst_i_1_2 ;
  input \cat_OBUF[1]_inst_i_1_3 ;
  input \cat_OBUF[1]_inst_i_1_4 ;
  input \cat_OBUF[1]_inst_i_1_5 ;
  input \cat_OBUF[1]_inst_i_1_6 ;
  input \cat_OBUF[1]_inst_i_1_7 ;
  input \cat_OBUF[1]_inst_i_1_8 ;
  input \cat_OBUF[1]_inst_i_1_9 ;
  input \cat_OBUF[1]_inst_i_1_10 ;
  input \cat_OBUF[1]_inst_i_1_11 ;
  input [7:0]to_ssd;

  wire [7:0]an_OBUF;
  wire [6:0]cat_OBUF;
  wire \cat_OBUF[1]_inst_i_1_0 ;
  wire \cat_OBUF[1]_inst_i_1_1 ;
  wire \cat_OBUF[1]_inst_i_1_10 ;
  wire \cat_OBUF[1]_inst_i_1_11 ;
  wire \cat_OBUF[1]_inst_i_1_2 ;
  wire \cat_OBUF[1]_inst_i_1_3 ;
  wire \cat_OBUF[1]_inst_i_1_4 ;
  wire \cat_OBUF[1]_inst_i_1_5 ;
  wire \cat_OBUF[1]_inst_i_1_6 ;
  wire \cat_OBUF[1]_inst_i_1_7 ;
  wire \cat_OBUF[1]_inst_i_1_8 ;
  wire \cat_OBUF[1]_inst_i_1_9 ;
  wire \cat_OBUF[6]_inst_i_10_n_0 ;
  wire \cat_OBUF[6]_inst_i_14_n_0 ;
  wire \cat_OBUF[6]_inst_i_18_n_0 ;
  wire \cat_OBUF[6]_inst_i_2_n_0 ;
  wire \cat_OBUF[6]_inst_i_3_n_0 ;
  wire \cat_OBUF[6]_inst_i_4_n_0 ;
  wire \cat_OBUF[6]_inst_i_5_n_0 ;
  wire \cat_OBUF[6]_inst_i_6_n_0 ;
  wire clk_IBUF_BUFG;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire [0:0]\cnt_reg[14]_0 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [2:1]sel0;
  wire [7:0]to_ssd;
  wire [2:0]\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(\cnt_reg[14]_0 ),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(\cnt_reg[14]_0 ),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(sel0[2]),
        .I1(\cnt_reg[14]_0 ),
        .I2(sel0[1]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(sel0[1]),
        .I1(\cnt_reg[14]_0 ),
        .I2(sel0[2]),
        .O(an_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \an_OBUF[4]_inst_i_1 
       (.I0(sel0[1]),
        .I1(\cnt_reg[14]_0 ),
        .I2(sel0[2]),
        .O(an_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[5]_inst_i_1 
       (.I0(sel0[2]),
        .I1(\cnt_reg[14]_0 ),
        .I2(sel0[1]),
        .O(an_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \an_OBUF[6]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(\cnt_reg[14]_0 ),
        .O(an_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \an_OBUF[7]_inst_i_1 
       (.I0(sel0[2]),
        .I1(\cnt_reg[14]_0 ),
        .I2(sel0[1]),
        .O(an_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \cat_OBUF[0]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_3_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \cat_OBUF[1]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_3_n_0 ),
        .O(cat_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \cat_OBUF[2]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_3_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_4_n_0 ),
        .O(cat_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \cat_OBUF[3]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_3_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \cat_OBUF[4]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_5_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_3_n_0 ),
        .O(cat_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \cat_OBUF[5]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_3_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \cat_OBUF[6]_inst_i_1 
       (.I0(\cat_OBUF[6]_inst_i_2_n_0 ),
        .I1(\cat_OBUF[6]_inst_i_3_n_0 ),
        .I2(\cat_OBUF[6]_inst_i_4_n_0 ),
        .I3(\cat_OBUF[6]_inst_i_5_n_0 ),
        .O(cat_OBUF[6]));
  MUXF7 \cat_OBUF[6]_inst_i_10 
       (.I0(to_ssd[0]),
        .I1(to_ssd[4]),
        .O(\cat_OBUF[6]_inst_i_10_n_0 ),
        .S(\cnt_reg[14]_0 ));
  MUXF7 \cat_OBUF[6]_inst_i_14 
       (.I0(to_ssd[2]),
        .I1(to_ssd[6]),
        .O(\cat_OBUF[6]_inst_i_14_n_0 ),
        .S(\cnt_reg[14]_0 ));
  MUXF7 \cat_OBUF[6]_inst_i_18 
       (.I0(to_ssd[1]),
        .I1(to_ssd[5]),
        .O(\cat_OBUF[6]_inst_i_18_n_0 ),
        .S(\cnt_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cat_OBUF[6]_inst_i_2 
       (.I0(\cat_OBUF[6]_inst_i_6_n_0 ),
        .I1(\cat_OBUF[1]_inst_i_1_9 ),
        .I2(sel0[2]),
        .I3(\cat_OBUF[1]_inst_i_1_10 ),
        .I4(sel0[1]),
        .I5(\cat_OBUF[1]_inst_i_1_11 ),
        .O(\cat_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cat_OBUF[6]_inst_i_3 
       (.I0(\cat_OBUF[6]_inst_i_10_n_0 ),
        .I1(\cat_OBUF[1]_inst_i_1_0 ),
        .I2(sel0[2]),
        .I3(\cat_OBUF[1]_inst_i_1_1 ),
        .I4(sel0[1]),
        .I5(\cat_OBUF[1]_inst_i_1_2 ),
        .O(\cat_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cat_OBUF[6]_inst_i_4 
       (.I0(\cat_OBUF[6]_inst_i_14_n_0 ),
        .I1(\cat_OBUF[1]_inst_i_1_6 ),
        .I2(sel0[2]),
        .I3(\cat_OBUF[1]_inst_i_1_7 ),
        .I4(sel0[1]),
        .I5(\cat_OBUF[1]_inst_i_1_8 ),
        .O(\cat_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cat_OBUF[6]_inst_i_5 
       (.I0(\cat_OBUF[6]_inst_i_18_n_0 ),
        .I1(\cat_OBUF[1]_inst_i_1_3 ),
        .I2(sel0[2]),
        .I3(\cat_OBUF[1]_inst_i_1_4 ),
        .I4(sel0[1]),
        .I5(\cat_OBUF[1]_inst_i_1_5 ),
        .O(\cat_OBUF[6]_inst_i_5_n_0 ));
  MUXF7 \cat_OBUF[6]_inst_i_6 
       (.I0(to_ssd[3]),
        .I1(to_ssd[7]),
        .O(\cat_OBUF[6]_inst_i_6_n_0 ),
        .S(\cnt_reg[14]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({sel0[1],\cnt_reg[14]_0 ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg[14]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(sel0[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,sel0[2]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module instructionDecodifier
   (mem_rom_reg_r2_0_31_30_31_0,
    mem_matrix_reg_0_63_30_30,
    RD2,
    \sw[1] ,
    \sw[1]_0 ,
    \sw[1]_1 ,
    \PC_reg[7] ,
    \sw[1]_2 ,
    \PC_reg[7]_0 ,
    \sw[1]_3 ,
    \PC_reg[7]_1 ,
    \sw[1]_4 ,
    \sw[1]_5 ,
    \PC_reg[7]_2 ,
    \sw[1]_6 ,
    to_ssd,
    S,
    mem_rom_reg_r2_0_31_6_11_0,
    mem_rom_reg_r2_0_31_6_11_1,
    mem_rom_reg_r2_0_31_12_17_0,
    mem_rom_reg_r2_0_31_18_23_0,
    mem_rom_reg_r2_0_31_18_23_1,
    mem_rom_reg_r2_0_31_24_29_0,
    \sw[1]_7 ,
    \sw[1]_8 ,
    \sw[1]_9 ,
    \sw[1]_10 ,
    \sw[1]_11 ,
    \sw[1]_12 ,
    \sw[1]_13 ,
    \sw[1]_14 ,
    \sw[1]_15 ,
    \sw[1]_16 ,
    \sw[1]_17 ,
    \sw[1]_18 ,
    \sw[1]_19 ,
    \sw[1]_20 ,
    \sw[1]_21 ,
    \sw[1]_22 ,
    sw_IBUF,
    \cat_OBUF[6]_inst_i_25 ,
    MemData,
    data0,
    clk_IBUF_BUFG);
  output [3:0]mem_rom_reg_r2_0_31_30_31_0;
  output [30:0]mem_matrix_reg_0_63_30_30;
  output [31:0]RD2;
  output \sw[1] ;
  output \sw[1]_0 ;
  output \sw[1]_1 ;
  output \PC_reg[7] ;
  output \sw[1]_2 ;
  output \PC_reg[7]_0 ;
  output \sw[1]_3 ;
  output \PC_reg[7]_1 ;
  output \sw[1]_4 ;
  output \sw[1]_5 ;
  output \PC_reg[7]_2 ;
  output \sw[1]_6 ;
  output [3:0]to_ssd;
  output [3:0]S;
  output [3:0]mem_rom_reg_r2_0_31_6_11_0;
  output [3:0]mem_rom_reg_r2_0_31_6_11_1;
  output [3:0]mem_rom_reg_r2_0_31_12_17_0;
  output [3:0]mem_rom_reg_r2_0_31_18_23_0;
  output [3:0]mem_rom_reg_r2_0_31_18_23_1;
  output [3:0]mem_rom_reg_r2_0_31_24_29_0;
  output \sw[1]_7 ;
  output \sw[1]_8 ;
  output \sw[1]_9 ;
  output \sw[1]_10 ;
  output \sw[1]_11 ;
  output \sw[1]_12 ;
  output \sw[1]_13 ;
  output \sw[1]_14 ;
  output \sw[1]_15 ;
  output \sw[1]_16 ;
  output \sw[1]_17 ;
  output \sw[1]_18 ;
  output \sw[1]_19 ;
  output \sw[1]_20 ;
  output \sw[1]_21 ;
  output \sw[1]_22 ;
  input [2:0]sw_IBUF;
  input \cat_OBUF[6]_inst_i_25 ;
  input [31:0]MemData;
  input [3:0]data0;
  input clk_IBUF_BUFG;

  wire [31:0]MemData;
  wire \PC_reg[7] ;
  wire \PC_reg[7]_0 ;
  wire \PC_reg[7]_1 ;
  wire \PC_reg[7]_2 ;
  wire [31:31]RD1;
  wire [31:0]RD2;
  wire [3:0]S;
  wire \cat_OBUF[6]_inst_i_25 ;
  wire \cat_OBUF[6]_inst_i_55_n_0 ;
  wire \cat_OBUF[6]_inst_i_63_n_0 ;
  wire \cat_OBUF[6]_inst_i_71_n_0 ;
  wire \cat_OBUF[6]_inst_i_79_n_0 ;
  wire clk_IBUF_BUFG;
  wire [3:0]data0;
  wire [30:0]mem_matrix_reg_0_63_30_30;
  wire [3:0]mem_rom_reg_r2_0_31_12_17_0;
  wire [3:0]mem_rom_reg_r2_0_31_18_23_0;
  wire [3:0]mem_rom_reg_r2_0_31_18_23_1;
  wire [3:0]mem_rom_reg_r2_0_31_24_29_0;
  wire [3:0]mem_rom_reg_r2_0_31_30_31_0;
  wire [3:0]mem_rom_reg_r2_0_31_6_11_0;
  wire [3:0]mem_rom_reg_r2_0_31_6_11_1;
  wire \sw[1] ;
  wire \sw[1]_0 ;
  wire \sw[1]_1 ;
  wire \sw[1]_10 ;
  wire \sw[1]_11 ;
  wire \sw[1]_12 ;
  wire \sw[1]_13 ;
  wire \sw[1]_14 ;
  wire \sw[1]_15 ;
  wire \sw[1]_16 ;
  wire \sw[1]_17 ;
  wire \sw[1]_18 ;
  wire \sw[1]_19 ;
  wire \sw[1]_2 ;
  wire \sw[1]_20 ;
  wire \sw[1]_21 ;
  wire \sw[1]_22 ;
  wire \sw[1]_3 ;
  wire \sw[1]_4 ;
  wire \sw[1]_5 ;
  wire \sw[1]_6 ;
  wire \sw[1]_7 ;
  wire \sw[1]_8 ;
  wire \sw[1]_9 ;
  wire [2:0]sw_IBUF;
  wire [3:0]to_ssd;
  wire [1:0]NLW_mem_rom_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_rom_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_23 
       (.I0(MemData[31]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[3]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_55_n_0 ),
        .O(to_ssd[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_31 
       (.I0(MemData[28]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[0]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_63_n_0 ),
        .O(to_ssd[0]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_39 
       (.I0(MemData[30]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[2]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_71_n_0 ),
        .O(to_ssd[2]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \cat_OBUF[6]_inst_i_47 
       (.I0(MemData[29]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(data0[1]),
        .I4(sw_IBUF[2]),
        .I5(\cat_OBUF[6]_inst_i_79_n_0 ),
        .O(to_ssd[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_54 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[27]),
        .I2(sw_IBUF[0]),
        .I3(RD2[27]),
        .O(\sw[1]_22 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_55 
       (.I0(sw_IBUF[1]),
        .I1(RD1),
        .I2(sw_IBUF[0]),
        .I3(RD2[31]),
        .O(\cat_OBUF[6]_inst_i_55_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_56 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[19]),
        .I2(sw_IBUF[0]),
        .I3(RD2[19]),
        .O(\sw[1]_18 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cat_OBUF[6]_inst_i_57 
       (.I0(RD2[23]),
        .I1(mem_matrix_reg_0_63_30_30[23]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\cat_OBUF[6]_inst_i_25 ),
        .O(\PC_reg[7]_2 ));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \cat_OBUF[6]_inst_i_58 
       (.I0(RD2[11]),
        .I1(mem_matrix_reg_0_63_30_30[11]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\sw[1]_2 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_59 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[15]),
        .I2(sw_IBUF[0]),
        .I3(RD2[15]),
        .O(\sw[1]_16 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_60 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[3]),
        .I2(sw_IBUF[0]),
        .I3(RD2[3]),
        .O(\sw[1]_8 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cat_OBUF[6]_inst_i_61 
       (.I0(RD2[7]),
        .I1(mem_matrix_reg_0_63_30_30[7]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\cat_OBUF[6]_inst_i_25 ),
        .O(\PC_reg[7] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_62 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[24]),
        .I2(sw_IBUF[0]),
        .I3(RD2[24]),
        .O(\sw[1]_20 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_63 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[28]),
        .I2(sw_IBUF[0]),
        .I3(RD2[28]),
        .O(\cat_OBUF[6]_inst_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \cat_OBUF[6]_inst_i_64 
       (.I0(RD2[16]),
        .I1(mem_matrix_reg_0_63_30_30[16]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\sw[1]_3 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_65 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[20]),
        .I2(sw_IBUF[0]),
        .I3(RD2[20]),
        .O(\sw[1]_4 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_66 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[8]),
        .I2(sw_IBUF[0]),
        .I3(RD2[8]),
        .O(\sw[1]_11 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_67 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[12]),
        .I2(sw_IBUF[0]),
        .I3(RD2[12]),
        .O(\sw[1]_14 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_68 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[0]),
        .I2(sw_IBUF[0]),
        .I3(RD2[0]),
        .O(\sw[1] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_69 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[4]),
        .I2(sw_IBUF[0]),
        .I3(RD2[4]),
        .O(\sw[1]_9 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_70 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[26]),
        .I2(sw_IBUF[0]),
        .I3(RD2[26]),
        .O(\sw[1]_21 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_71 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[30]),
        .I2(sw_IBUF[0]),
        .I3(RD2[30]),
        .O(\cat_OBUF[6]_inst_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cat_OBUF[6]_inst_i_72 
       (.I0(RD2[18]),
        .I1(mem_matrix_reg_0_63_30_30[18]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\cat_OBUF[6]_inst_i_25 ),
        .O(\PC_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_73 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[22]),
        .I2(sw_IBUF[0]),
        .I3(RD2[22]),
        .O(\sw[1]_19 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_74 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[10]),
        .I2(sw_IBUF[0]),
        .I3(RD2[10]),
        .O(\sw[1]_13 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_75 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[14]),
        .I2(sw_IBUF[0]),
        .I3(RD2[14]),
        .O(\sw[1]_15 ));
  LUT4 #(
    .INIT(16'hAFC0)) 
    \cat_OBUF[6]_inst_i_76 
       (.I0(RD2[2]),
        .I1(mem_matrix_reg_0_63_30_30[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\sw[1]_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_77 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[6]),
        .I2(sw_IBUF[0]),
        .I3(RD2[6]),
        .O(\sw[1]_10 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_78 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[25]),
        .I2(sw_IBUF[0]),
        .I3(RD2[25]),
        .O(\sw[1]_6 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_79 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[29]),
        .I2(sw_IBUF[0]),
        .I3(RD2[29]),
        .O(\cat_OBUF[6]_inst_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_80 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[17]),
        .I2(sw_IBUF[0]),
        .I3(RD2[17]),
        .O(\sw[1]_17 ));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \cat_OBUF[6]_inst_i_81 
       (.I0(RD2[21]),
        .I1(mem_matrix_reg_0_63_30_30[21]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\sw[1]_5 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_82 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[9]),
        .I2(sw_IBUF[0]),
        .I3(RD2[9]),
        .O(\sw[1]_12 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cat_OBUF[6]_inst_i_83 
       (.I0(RD2[13]),
        .I1(mem_matrix_reg_0_63_30_30[13]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(\cat_OBUF[6]_inst_i_25 ),
        .O(\PC_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \cat_OBUF[6]_inst_i_84 
       (.I0(sw_IBUF[1]),
        .I1(mem_matrix_reg_0_63_30_30[1]),
        .I2(sw_IBUF[0]),
        .I3(RD2[1]),
        .O(\sw[1]_7 ));
  LUT4 #(
    .INIT(16'hA0CF)) 
    \cat_OBUF[6]_inst_i_85 
       (.I0(RD2[5]),
        .I1(mem_matrix_reg_0_63_30_30[5]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\sw[1]_1 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ mem_rom_reg_r1_0_31_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[1:0]),
        .DIB(MemData[3:2]),
        .DIC(MemData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(mem_matrix_reg_0_63_30_30[1:0]),
        .DOB(mem_matrix_reg_0_63_30_30[3:2]),
        .DOC(mem_matrix_reg_0_63_30_30[5:4]),
        .DOD(NLW_mem_rom_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD1 mem_rom_reg_r1_0_31_12_17
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[13:12]),
        .DIB(MemData[15:14]),
        .DIC(MemData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(mem_matrix_reg_0_63_30_30[13:12]),
        .DOB(mem_matrix_reg_0_63_30_30[15:14]),
        .DOC(mem_matrix_reg_0_63_30_30[17:16]),
        .DOD(NLW_mem_rom_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD2 mem_rom_reg_r1_0_31_18_23
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[19:18]),
        .DIB(MemData[21:20]),
        .DIC(MemData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(mem_matrix_reg_0_63_30_30[19:18]),
        .DOB(mem_matrix_reg_0_63_30_30[21:20]),
        .DOC(mem_matrix_reg_0_63_30_30[23:22]),
        .DOD(NLW_mem_rom_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD3 mem_rom_reg_r1_0_31_24_29
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[25:24]),
        .DIB(MemData[27:26]),
        .DIC(MemData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(mem_matrix_reg_0_63_30_30[25:24]),
        .DOB(mem_matrix_reg_0_63_30_30[27:26]),
        .DOC(mem_matrix_reg_0_63_30_30[29:28]),
        .DOD(NLW_mem_rom_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD4 mem_rom_reg_r1_0_31_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[7:6]),
        .DIB(MemData[9:8]),
        .DIC(MemData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(mem_matrix_reg_0_63_30_30[7:6]),
        .DOB(mem_matrix_reg_0_63_30_30[9:8]),
        .DOC(mem_matrix_reg_0_63_30_30[11:10]),
        .DOD(NLW_mem_rom_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD5 mem_rom_reg_r2_0_31_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[1:0]),
        .DIB(MemData[3:2]),
        .DIC(MemData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[1:0]),
        .DOB(RD2[3:2]),
        .DOC(RD2[5:4]),
        .DOD(NLW_mem_rom_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD6 mem_rom_reg_r2_0_31_12_17
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[13:12]),
        .DIB(MemData[15:14]),
        .DIC(MemData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[13:12]),
        .DOB(RD2[15:14]),
        .DOC(RD2[17:16]),
        .DOD(NLW_mem_rom_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD7 mem_rom_reg_r2_0_31_18_23
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[19:18]),
        .DIB(MemData[21:20]),
        .DIC(MemData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[19:18]),
        .DOB(RD2[21:20]),
        .DOC(RD2[23:22]),
        .DOD(NLW_mem_rom_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD8 mem_rom_reg_r2_0_31_24_29
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[25:24]),
        .DIB(MemData[27:26]),
        .DIC(MemData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[25:24]),
        .DOB(RD2[27:26]),
        .DOC(RD2[29:28]),
        .DOD(NLW_mem_rom_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M_HD9 mem_rom_reg_r2_0_31_30_31
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[31:30]),
        .DIB(MemData[31:30]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(RD2[31:30]),
        .DOB({RD1,mem_matrix_reg_0_63_30_30[30]}),
        .DOC(NLW_mem_rom_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_rom_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "ID/mem_rom_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD10 mem_rom_reg_r2_0_31_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIA(MemData[7:6]),
        .DIB(MemData[9:8]),
        .DIC(MemData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RD2[7:6]),
        .DOB(RD2[9:8]),
        .DOC(RD2[11:10]),
        .DOD(NLW_mem_rom_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(1'b1));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_1
       (.I0(mem_matrix_reg_0_63_30_30[7]),
        .I1(RD2[7]),
        .O(mem_rom_reg_r2_0_31_6_11_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_2
       (.I0(mem_matrix_reg_0_63_30_30[6]),
        .I1(RD2[6]),
        .O(mem_rom_reg_r2_0_31_6_11_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_3
       (.I0(mem_matrix_reg_0_63_30_30[5]),
        .I1(RD2[5]),
        .O(mem_rom_reg_r2_0_31_6_11_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_4
       (.I0(mem_matrix_reg_0_63_30_30[4]),
        .I1(RD2[4]),
        .O(mem_rom_reg_r2_0_31_6_11_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_1
       (.I0(mem_matrix_reg_0_63_30_30[11]),
        .I1(RD2[11]),
        .O(mem_rom_reg_r2_0_31_6_11_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_2
       (.I0(mem_matrix_reg_0_63_30_30[10]),
        .I1(RD2[10]),
        .O(mem_rom_reg_r2_0_31_6_11_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_3
       (.I0(mem_matrix_reg_0_63_30_30[9]),
        .I1(RD2[9]),
        .O(mem_rom_reg_r2_0_31_6_11_1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_4
       (.I0(mem_matrix_reg_0_63_30_30[8]),
        .I1(RD2[8]),
        .O(mem_rom_reg_r2_0_31_6_11_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_1
       (.I0(mem_matrix_reg_0_63_30_30[15]),
        .I1(RD2[15]),
        .O(mem_rom_reg_r2_0_31_12_17_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_2
       (.I0(mem_matrix_reg_0_63_30_30[14]),
        .I1(RD2[14]),
        .O(mem_rom_reg_r2_0_31_12_17_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_3
       (.I0(mem_matrix_reg_0_63_30_30[13]),
        .I1(RD2[13]),
        .O(mem_rom_reg_r2_0_31_12_17_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_4
       (.I0(mem_matrix_reg_0_63_30_30[12]),
        .I1(RD2[12]),
        .O(mem_rom_reg_r2_0_31_12_17_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_1
       (.I0(mem_matrix_reg_0_63_30_30[19]),
        .I1(RD2[19]),
        .O(mem_rom_reg_r2_0_31_18_23_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_2
       (.I0(mem_matrix_reg_0_63_30_30[18]),
        .I1(RD2[18]),
        .O(mem_rom_reg_r2_0_31_18_23_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_3
       (.I0(mem_matrix_reg_0_63_30_30[17]),
        .I1(RD2[17]),
        .O(mem_rom_reg_r2_0_31_18_23_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_4
       (.I0(mem_matrix_reg_0_63_30_30[16]),
        .I1(RD2[16]),
        .O(mem_rom_reg_r2_0_31_18_23_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_1
       (.I0(mem_matrix_reg_0_63_30_30[23]),
        .I1(RD2[23]),
        .O(mem_rom_reg_r2_0_31_18_23_1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_2
       (.I0(mem_matrix_reg_0_63_30_30[22]),
        .I1(RD2[22]),
        .O(mem_rom_reg_r2_0_31_18_23_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_3
       (.I0(mem_matrix_reg_0_63_30_30[21]),
        .I1(RD2[21]),
        .O(mem_rom_reg_r2_0_31_18_23_1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_4
       (.I0(mem_matrix_reg_0_63_30_30[20]),
        .I1(RD2[20]),
        .O(mem_rom_reg_r2_0_31_18_23_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_1
       (.I0(mem_matrix_reg_0_63_30_30[27]),
        .I1(RD2[27]),
        .O(mem_rom_reg_r2_0_31_24_29_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_2
       (.I0(mem_matrix_reg_0_63_30_30[26]),
        .I1(RD2[26]),
        .O(mem_rom_reg_r2_0_31_24_29_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_3
       (.I0(mem_matrix_reg_0_63_30_30[25]),
        .I1(RD2[25]),
        .O(mem_rom_reg_r2_0_31_24_29_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_4
       (.I0(mem_matrix_reg_0_63_30_30[24]),
        .I1(RD2[24]),
        .O(mem_rom_reg_r2_0_31_24_29_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_1
       (.I0(RD1),
        .I1(RD2[31]),
        .O(mem_rom_reg_r2_0_31_30_31_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_2
       (.I0(mem_matrix_reg_0_63_30_30[30]),
        .I1(RD2[30]),
        .O(mem_rom_reg_r2_0_31_30_31_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_3
       (.I0(mem_matrix_reg_0_63_30_30[29]),
        .I1(RD2[29]),
        .O(mem_rom_reg_r2_0_31_30_31_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__6_i_4
       (.I0(mem_matrix_reg_0_63_30_30[28]),
        .I1(RD2[28]),
        .O(mem_rom_reg_r2_0_31_30_31_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1
       (.I0(mem_matrix_reg_0_63_30_30[3]),
        .I1(RD2[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2
       (.I0(mem_matrix_reg_0_63_30_30[2]),
        .I1(RD2[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3
       (.I0(mem_matrix_reg_0_63_30_30[1]),
        .I1(RD2[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4
       (.I0(mem_matrix_reg_0_63_30_30[0]),
        .I1(RD2[0]),
        .O(S[0]));
endmodule

(* ECO_CHECKSUM = "7897dc0b" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module tested_mips
   (BT1,
    BT0,
    clk,
    an,
    cat,
    sw,
    led);
  input BT1;
  input BT0;
  input clk;
  output [7:0]an;
  output [6:0]cat;
  input [2:0]sw;
  output [15:0]led;

  wire BT0;
  wire BT0_IBUF;
  wire BT1;
  wire BT1_IBUF;
  wire ID_n_0;
  wire ID_n_1;
  wire ID_n_100;
  wire ID_n_101;
  wire ID_n_102;
  wire ID_n_103;
  wire ID_n_104;
  wire ID_n_105;
  wire ID_n_106;
  wire ID_n_107;
  wire ID_n_108;
  wire ID_n_109;
  wire ID_n_110;
  wire ID_n_111;
  wire ID_n_112;
  wire ID_n_113;
  wire ID_n_114;
  wire ID_n_115;
  wire ID_n_116;
  wire ID_n_117;
  wire ID_n_118;
  wire ID_n_119;
  wire ID_n_120;
  wire ID_n_121;
  wire ID_n_122;
  wire ID_n_123;
  wire ID_n_124;
  wire ID_n_125;
  wire ID_n_126;
  wire ID_n_2;
  wire ID_n_3;
  wire ID_n_67;
  wire ID_n_68;
  wire ID_n_69;
  wire ID_n_70;
  wire ID_n_71;
  wire ID_n_72;
  wire ID_n_73;
  wire ID_n_74;
  wire ID_n_75;
  wire ID_n_76;
  wire ID_n_77;
  wire ID_n_78;
  wire ID_n_83;
  wire ID_n_84;
  wire ID_n_85;
  wire ID_n_86;
  wire ID_n_87;
  wire ID_n_88;
  wire ID_n_89;
  wire ID_n_90;
  wire ID_n_91;
  wire ID_n_92;
  wire ID_n_93;
  wire ID_n_94;
  wire ID_n_95;
  wire ID_n_96;
  wire ID_n_97;
  wire ID_n_98;
  wire ID_n_99;
  wire MEM_Elem_n_0;
  wire MEM_Elem_n_37;
  wire MEM_Elem_n_38;
  wire MEM_Elem_n_39;
  wire MEM_Elem_n_40;
  wire MEM_Elem_n_41;
  wire MEM_Elem_n_42;
  wire MEM_Elem_n_43;
  wire MEM_Elem_n_44;
  wire MEM_Elem_n_45;
  wire MEM_Elem_n_46;
  wire MEM_Elem_n_47;
  wire [31:0]MemData;
  wire [30:0]RD1;
  wire [31:0]RD2;
  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire [6:0]cat;
  wire [6:0]cat_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data0;
  wire enable;
  wire i_fetch_n_0;
  wire [15:0]led;
  wire [0:0]sel0;
  wire [2:0]sw;
  wire [2:0]sw_IBUF;
  wire [31:24]to_ssd;

initial begin
 $sdf_annotate("simulate_mips_time_impl.sdf",,,,"tool_control");
end
  IBUF BT0_IBUF_inst
       (.I(BT0),
        .O(BT0_IBUF));
  IBUF BT1_IBUF_inst
       (.I(BT1),
        .O(BT1_IBUF));
  ExecutionElem EX
       (.RD1(RD1),
        .S({ID_n_83,ID_n_84,ID_n_85,ID_n_86}),
        .\cat_OBUF[6]_inst_i_30 ({ID_n_107,ID_n_108,ID_n_109,ID_n_110}),
        .\cat_OBUF[6]_inst_i_31 ({ID_n_0,ID_n_1,ID_n_2,ID_n_3}),
        .\cat_OBUF[6]_inst_i_32 ({ID_n_99,ID_n_100,ID_n_101,ID_n_102}),
        .\cat_OBUF[6]_inst_i_33 ({ID_n_103,ID_n_104,ID_n_105,ID_n_106}),
        .\cat_OBUF[6]_inst_i_34 ({ID_n_91,ID_n_92,ID_n_93,ID_n_94}),
        .\cat_OBUF[6]_inst_i_35 ({ID_n_95,ID_n_96,ID_n_97,ID_n_98}),
        .\cat_OBUF[6]_inst_i_37 ({ID_n_87,ID_n_88,ID_n_89,ID_n_90}),
        .data0(data0));
  instructionDecodifier ID
       (.MemData(MemData),
        .\PC_reg[7] (ID_n_70),
        .\PC_reg[7]_0 (ID_n_72),
        .\PC_reg[7]_1 (ID_n_74),
        .\PC_reg[7]_2 (ID_n_77),
        .RD2(RD2),
        .S({ID_n_83,ID_n_84,ID_n_85,ID_n_86}),
        .\cat_OBUF[6]_inst_i_25 (i_fetch_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0[31:28]),
        .mem_matrix_reg_0_63_30_30(RD1),
        .mem_rom_reg_r2_0_31_12_17_0({ID_n_95,ID_n_96,ID_n_97,ID_n_98}),
        .mem_rom_reg_r2_0_31_18_23_0({ID_n_99,ID_n_100,ID_n_101,ID_n_102}),
        .mem_rom_reg_r2_0_31_18_23_1({ID_n_103,ID_n_104,ID_n_105,ID_n_106}),
        .mem_rom_reg_r2_0_31_24_29_0({ID_n_107,ID_n_108,ID_n_109,ID_n_110}),
        .mem_rom_reg_r2_0_31_30_31_0({ID_n_0,ID_n_1,ID_n_2,ID_n_3}),
        .mem_rom_reg_r2_0_31_6_11_0({ID_n_87,ID_n_88,ID_n_89,ID_n_90}),
        .mem_rom_reg_r2_0_31_6_11_1({ID_n_91,ID_n_92,ID_n_93,ID_n_94}),
        .\sw[1] (ID_n_67),
        .\sw[1]_0 (ID_n_68),
        .\sw[1]_1 (ID_n_69),
        .\sw[1]_10 (ID_n_114),
        .\sw[1]_11 (ID_n_115),
        .\sw[1]_12 (ID_n_116),
        .\sw[1]_13 (ID_n_117),
        .\sw[1]_14 (ID_n_118),
        .\sw[1]_15 (ID_n_119),
        .\sw[1]_16 (ID_n_120),
        .\sw[1]_17 (ID_n_121),
        .\sw[1]_18 (ID_n_122),
        .\sw[1]_19 (ID_n_123),
        .\sw[1]_2 (ID_n_71),
        .\sw[1]_20 (ID_n_124),
        .\sw[1]_21 (ID_n_125),
        .\sw[1]_22 (ID_n_126),
        .\sw[1]_3 (ID_n_73),
        .\sw[1]_4 (ID_n_75),
        .\sw[1]_5 (ID_n_76),
        .\sw[1]_6 (ID_n_78),
        .\sw[1]_7 (ID_n_111),
        .\sw[1]_8 (ID_n_112),
        .\sw[1]_9 (ID_n_113),
        .sw_IBUF(sw_IBUF),
        .to_ssd(to_ssd[31:28]));
  MEM MEM_Elem
       (.MemData(MemData),
        .RD2(RD2),
        .\cat_OBUF[6]_inst_i_10 (ID_n_124),
        .\cat_OBUF[6]_inst_i_11_0 (ID_n_73),
        .\cat_OBUF[6]_inst_i_11_1 (ID_n_75),
        .\cat_OBUF[6]_inst_i_12_0 (ID_n_115),
        .\cat_OBUF[6]_inst_i_12_1 (ID_n_118),
        .\cat_OBUF[6]_inst_i_13_0 (ID_n_67),
        .\cat_OBUF[6]_inst_i_13_1 (ID_n_113),
        .\cat_OBUF[6]_inst_i_14 (ID_n_125),
        .\cat_OBUF[6]_inst_i_15_0 (ID_n_74),
        .\cat_OBUF[6]_inst_i_15_1 (ID_n_123),
        .\cat_OBUF[6]_inst_i_16_0 (ID_n_117),
        .\cat_OBUF[6]_inst_i_16_1 (ID_n_119),
        .\cat_OBUF[6]_inst_i_17_0 (ID_n_68),
        .\cat_OBUF[6]_inst_i_17_1 (ID_n_114),
        .\cat_OBUF[6]_inst_i_18 (ID_n_78),
        .\cat_OBUF[6]_inst_i_19_0 (ID_n_121),
        .\cat_OBUF[6]_inst_i_19_1 (ID_n_76),
        .\cat_OBUF[6]_inst_i_20_0 (ID_n_116),
        .\cat_OBUF[6]_inst_i_20_1 (ID_n_72),
        .\cat_OBUF[6]_inst_i_21_0 (ID_n_111),
        .\cat_OBUF[6]_inst_i_21_1 (ID_n_69),
        .\cat_OBUF[6]_inst_i_6 (ID_n_126),
        .\cat_OBUF[6]_inst_i_7_0 (ID_n_122),
        .\cat_OBUF[6]_inst_i_7_1 (ID_n_77),
        .\cat_OBUF[6]_inst_i_8_0 (ID_n_71),
        .\cat_OBUF[6]_inst_i_8_1 (ID_n_120),
        .\cat_OBUF[6]_inst_i_9_0 (ID_n_112),
        .\cat_OBUF[6]_inst_i_9_1 (ID_n_70),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_reg[14] (MEM_Elem_n_0),
        .\cnt_reg[14]_0 (MEM_Elem_n_37),
        .\cnt_reg[14]_1 (MEM_Elem_n_38),
        .\cnt_reg[14]_10 (MEM_Elem_n_47),
        .\cnt_reg[14]_2 (MEM_Elem_n_39),
        .\cnt_reg[14]_3 (MEM_Elem_n_40),
        .\cnt_reg[14]_4 (MEM_Elem_n_41),
        .\cnt_reg[14]_5 (MEM_Elem_n_42),
        .\cnt_reg[14]_6 (MEM_Elem_n_43),
        .\cnt_reg[14]_7 (MEM_Elem_n_44),
        .\cnt_reg[14]_8 (MEM_Elem_n_45),
        .\cnt_reg[14]_9 (MEM_Elem_n_46),
        .data0(data0[27:0]),
        .sel0(sel0),
        .\sw[1] (to_ssd[27:24]),
        .sw_IBUF(sw_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF[5]),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(an_OBUF[6]),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF[7]),
        .O(an[7]));
  OBUF \cat_OBUF[0]_inst 
       (.I(cat_OBUF[0]),
        .O(cat[0]));
  OBUF \cat_OBUF[1]_inst 
       (.I(cat_OBUF[1]),
        .O(cat[1]));
  OBUF \cat_OBUF[2]_inst 
       (.I(cat_OBUF[2]),
        .O(cat[2]));
  OBUF \cat_OBUF[3]_inst 
       (.I(cat_OBUF[3]),
        .O(cat[3]));
  OBUF \cat_OBUF[4]_inst 
       (.I(cat_OBUF[4]),
        .O(cat[4]));
  OBUF \cat_OBUF[5]_inst 
       (.I(cat_OBUF[5]),
        .O(cat[5]));
  OBUF \cat_OBUF[6]_inst 
       (.I(cat_OBUF[6]),
        .O(cat[6]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IFetch i_fetch
       (.BT1_IBUF(BT1_IBUF),
        .\PC_reg[7]_0 (i_fetch_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable(enable));
  OBUF \led_OBUF[0]_inst 
       (.I(1'b1),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(1'b0),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(1'b0),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(1'b1),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]));
  MPG mp
       (.BT0_IBUF(BT0_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable(enable));
  SSD sd
       (.an_OBUF(an_OBUF),
        .cat_OBUF(cat_OBUF),
        .\cat_OBUF[1]_inst_i_1_0 (MEM_Elem_n_44),
        .\cat_OBUF[1]_inst_i_1_1 (MEM_Elem_n_40),
        .\cat_OBUF[1]_inst_i_1_10 (MEM_Elem_n_43),
        .\cat_OBUF[1]_inst_i_1_11 (MEM_Elem_n_39),
        .\cat_OBUF[1]_inst_i_1_2 (MEM_Elem_n_0),
        .\cat_OBUF[1]_inst_i_1_3 (MEM_Elem_n_45),
        .\cat_OBUF[1]_inst_i_1_4 (MEM_Elem_n_41),
        .\cat_OBUF[1]_inst_i_1_5 (MEM_Elem_n_37),
        .\cat_OBUF[1]_inst_i_1_6 (MEM_Elem_n_46),
        .\cat_OBUF[1]_inst_i_1_7 (MEM_Elem_n_42),
        .\cat_OBUF[1]_inst_i_1_8 (MEM_Elem_n_38),
        .\cat_OBUF[1]_inst_i_1_9 (MEM_Elem_n_47),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_reg[14]_0 (sel0),
        .to_ssd(to_ssd));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
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
