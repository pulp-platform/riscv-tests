# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.i.div8
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.i.div8 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.i.div8, 0x06465678, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.i.div8, 0x06465678, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.i.div8, 0x1fff5678, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.i.div8, 0xf72508f3, 0xc5dba328, 0x5f800376, 0xb7f308f3 )
  TEST_RRR_OP( 6, pv.cplxmul.h.i.div8, 0x0a0776aa, 0x8961197e, 0xa1d3952f, 0xcffa76aa )
  TEST_RRR_OP( 7, pv.cplxmul.h.i.div8, 0x05072ffb, 0x4f7150f2, 0x4391fbff, 0x99e42ffb )
  TEST_RRR_OP( 8, pv.cplxmul.h.i.div8, 0xf3450983, 0xb2ff81eb, 0x37274ef0, 0x5dde0983 )
  TEST_RRR_OP( 9, pv.cplxmul.h.i.div8, 0x02153637, 0x357ae4e3, 0x6c925efa, 0xaf713637 )
  TEST_RRR_OP( 10, pv.cplxmul.h.i.div8, 0x1194bd69, 0x3a58848e, 0x98ad59f2, 0xc763bd69 )
  TEST_RRR_OP( 11, pv.cplxmul.h.i.div8, 0xf70c484b, 0x903c069f, 0xce324f12, 0x4bec484b )
  TEST_RRR_OP( 12, pv.cplxmul.h.i.div8, 0xf07f34cc, 0x7d95c191, 0x19018e03, 0xbe6a34cc )
  TEST_RRR_OP( 13, pv.cplxmul.h.i.div8, 0x04bd37fc, 0x2a49568c, 0x5e6eb17f, 0x565e37fc )
  TEST_RRR_OP( 14, pv.cplxmul.h.i.div8, 0x086c4533, 0x9bfb3651, 0x22c8bca1, 0xa8b44533 )
  TEST_RRR_OP( 15, pv.cplxmul.h.i.div8, 0xf464b826, 0x655e7ead, 0xc1a1d8ac, 0x4ee7b826 )
  TEST_RRR_OP( 16, pv.cplxmul.h.i.div8, 0x01e6bfbc, 0x1284df55, 0xb9e5ed75, 0x813cbfbc )
  TEST_RRR_OP( 17, pv.cplxmul.h.i.div8, 0x09ff9ad4, 0xdf273d2e, 0x74eca222, 0x9c989ad4 )
  TEST_RRR_OP( 18, pv.cplxmul.h.i.div8, 0xffbf11d9, 0x6dd3e078, 0x427f10be, 0xdcc311d9 )
  TEST_RRR_OP( 19, pv.cplxmul.h.i.div8, 0xfafa6aa1, 0xa28e552e, 0x1235479e, 0x61e36aa1 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 20, pv.cplxmul.h.i.div8, 0xf99c3ba8, 0x4f8b3ba8, 0x170b9c73 )
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.i.div8, 0xf4f1d8b9, 0xc087d8b9, 0x6ab0705f )
  
  TEST_RRR_SRC2_EQ_DEST( 22, pv.cplxmul.h.i.div8, 0x060f30fd, 0x7799f92d, 0xcd1c30fd )
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.i.div8, 0x0263652c, 0x15d44650, 0x0362652c )
  
  TEST_RRR_SRC12_EQ_DEST( 24, pv.cplxmul.h.i.div8, 0xfdced7fc, 0x1c16d7fc )
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.i.div8, 0xef30bb96, 0x7dcfbb96 )
  
  TEST_RRR_DEST_BYPASS( 44, 0, pv.cplxmul.h.i.div8, 0x02237d37, 0xc0fd1147, 0x7abafee8, 0x777e7d37 )
  TEST_RRR_DEST_BYPASS( 45, 1, pv.cplxmul.h.i.div8, 0xf735a36c, 0xb26939e7, 0xa2dc2e86, 0x02e4a36c )
  TEST_RRR_DEST_BYPASS( 46, 2, pv.cplxmul.h.i.div8, 0xf7b8a2af, 0x4580096d, 0xe4c089bc, 0xb9afa2af )
  TEST_RRR_DEST_BYPASS( 47, 0, pv.cplxmul.h.i.div8, 0xf746e5d8, 0xaf8f49d4, 0xb35428ad, 0x7a60e5d8 )
  TEST_RRR_DEST_BYPASS( 48, 1, pv.cplxmul.h.i.div8, 0x06f26ecd, 0x5c8e1e7d, 0x2eb53d77, 0xae6d6ecd )
  TEST_RRR_DEST_BYPASS( 49, 2, pv.cplxmul.h.i.div8, 0x048831c2, 0xaebba0f8, 0x052fc0d1, 0x08e231c2 )
  TEST_RRR_SRC3_BYPASS( 50, 0, pv.cplxmul.h.i.div8, 0x01f73cc5, 0x0874b316, 0xdea1be95, 0x77053cc5 )
  TEST_RRR_SRC3_BYPASS( 51, 1, pv.cplxmul.h.i.div8, 0xfabff7a3, 0xff9d8d99, 0x2f35c624, 0x6b7df7a3 )
  TEST_RRR_SRC3_BYPASS( 52, 2, pv.cplxmul.h.i.div8, 0xff5dd40d, 0x06ef0425, 0x31af8460, 0x7a21d40d )
  TEST_RRR_SRC3_BYPASS( 53, 0, pv.cplxmul.h.i.div8, 0x07896273, 0xfc685e42, 0x5453407d, 0xd1f66273 )
  TEST_RRR_SRC3_BYPASS( 54, 1, pv.cplxmul.h.i.div8, 0xfb6f1427, 0xbf1c4a34, 0xa398de59, 0xbddf1427 )
  TEST_RRR_SRC3_BYPASS( 55, 2, pv.cplxmul.h.i.div8, 0x049a26a2, 0x4bb58301, 0xa24aa389, 0x9c0226a2 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 26, 0, 0, pv.cplxmul.h.i.div8, 0xf7ea4d12, 0xb668f8a7, 0x2f926bbc, 0xc5da4d12 )
  TEST_RRR_SRC12_BYPASS( 27, 0, 1, pv.cplxmul.h.i.div8, 0xf8687521, 0xa4390ba7, 0xee465272, 0xcfad7521 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 2, pv.cplxmul.h.i.div8, 0xe83eda57, 0x59db74d4, 0x91f28061, 0xe653da57 )
  TEST_RRR_SRC12_BYPASS( 29, 1, 0, pv.cplxmul.h.i.div8, 0xff3b5b42, 0x0e0ef6ad, 0x51bffe57, 0xe6935b42 )
  TEST_RRR_SRC12_BYPASS( 30, 1, 1, pv.cplxmul.h.i.div8, 0xebf0f8f0, 0x76385cfd, 0xc40a816a, 0xf301f8f0 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 2, pv.cplxmul.h.i.div8, 0x1393ec5f, 0xb31252b5, 0x7cf281c0, 0xbe80ec5f )
  TEST_RRR_SRC12_BYPASS( 32, 2, 0, pv.cplxmul.h.i.div8, 0x0c82613e, 0x4040592b, 0x69ab34b4, 0x5d54613e )
  TEST_RRR_SRC12_BYPASS( 33, 2, 1, pv.cplxmul.h.i.div8, 0xfd8bb80d, 0x6c28fc6b, 0xf055e840, 0x9ddeb80d )
  TEST_RRR_SRC12_BYPASS( 34, 2, 2, pv.cplxmul.h.i.div8, 0xfe74c2e5, 0x58fefdf4, 0x5cd4f05e, 0x82d9c2e5 )
  TEST_RRR_SRC12_BYPASS( 35, 0, 0, pv.cplxmul.h.i.div8, 0x010bbd61, 0x42f84991, 0xf81a18a5, 0xeb06bd61 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 1, pv.cplxmul.h.i.div8, 0xed370341, 0x67a4934f, 0x54c59f4d, 0x23990341 )
  TEST_RRR_SRC12_BYPASS( 37, 0, 2, pv.cplxmul.h.i.div8, 0xfe778939, 0x412fa2aa, 0x2817214c, 0xd5408939 )
  TEST_RRR_SRC12_BYPASS( 38, 1, 0, pv.cplxmul.h.i.div8, 0xfaddbbe9, 0xd141f38d, 0x4eb05b81, 0x7b62bbe9 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 1, pv.cplxmul.h.i.div8, 0x11f8a4f0, 0xa2768f77, 0x9b38b47f, 0x340ea4f0 )
  TEST_RRR_SRC12_BYPASS( 40, 1, 2, pv.cplxmul.h.i.div8, 0xff61b756, 0xbccff522, 0xadd916bd, 0x6c43b756 )
  TEST_RRR_SRC12_BYPASS( 41, 2, 0, pv.cplxmul.h.i.div8, 0xf6a05f90, 0x41aa474e, 0x878ef09d, 0x69dd5f90 )
  TEST_RRR_SRC12_BYPASS( 42, 2, 1, pv.cplxmul.h.i.div8, 0xf46f2dfd, 0x295e62ff, 0x977edbdd, 0x1c332dfd )
  TEST_RRR_SRC12_BYPASS( 43, 2, 2, pv.cplxmul.h.i.div8, 0x0094304b, 0xe9af2d6d, 0x25b93227, 0x3a97304b )
  
  

  TEST_RRR_ZEROSRC1( 56, pv.cplxmul.h.i.div8, 0x0000a9dd, 0x2c753efa, 0xa5d7a9dd )
  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.i.div8, 0x00005316, 0x1e9a4572, 0xcfd65316 )
  
  TEST_RRR_ZEROSRC2( 58, pv.cplxmul.h.i.div8, 0x00004bef, 0x7efde3c0, 0x47634bef )
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.i.div8, 0x0000e10e, 0xab074bda, 0xf169e10e )
  
  TEST_RRR_ZEROSRC3( 60, pv.cplxmul.h.i.div8, 0xf8d90000, 0x44876bae, 0x8c494afd )
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.i.div8, 0xfb2b0000, 0x6569b497, 0x7b3e2ae3 )
  
  TEST_RRR_ZEROSRC12( 62, pv.cplxmul.h.i.div8, 0x0000cbbb, 0x982bcbbb )
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.i.div8, 0x0000fa5f, 0x77c6fa5f )
  
  TEST_RRR_ZEROSRC123( 64, pv.cplxmul.h.i.div8, 0x00000000 )
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.i.div8, 0x00000000 )
  
  TEST_RRR_ZERODEST( 66, pv.cplxmul.h.i.div8, 0xc31b6237, 0x8b6b4ccd )
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.i.div8, 0xed06674f, 0x4f71eb68 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
