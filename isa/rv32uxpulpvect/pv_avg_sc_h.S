# See LICENSE for license details.

#*****************************************************************************
# pv.avg.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.avg.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avg.sc.h, 0xfc7bfb7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avg.sc.h, 0x03840486, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.avg.sc.h, 0x2aaa3bbb, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.avg.sc.h, 0xcdb31cd6, 0x93a131e7, 0xb74307c6 )
  TEST_RR_OP( 6, pv.avg.sc.h, 0xd41028ea, 0x8bd9358d, 0xb0d11c47 )
  TEST_RR_OP( 7, pv.avg.sc.h, 0xc964f731, 0xfbc5575e, 0xedb59704 )
  TEST_RR_OP( 8, pv.avg.sc.h, 0xe4c430f4, 0x194eb1af, 0x196eb03a )
  TEST_RR_OP( 9, pv.avg.sc.h, 0xf16738d4, 0xa383325e, 0x0bd23f4b )
  TEST_RR_OP( 10, pv.avg.sc.h, 0x03df3189, 0x9c19f76c, 0x48906ba6 )
  TEST_RR_OP( 11, pv.avg.sc.h, 0x1baf0718, 0xfd47d41a, 0x9c143a17 )
  TEST_RR_OP( 12, pv.avg.sc.h, 0x23051621, 0x8a8a70c1, 0x7e78bb81 )
  TEST_RR_OP( 13, pv.avg.sc.h, 0xecb0c6a3, 0x5e0b11f0, 0xe0477b56 )
  TEST_RR_OP( 14, pv.avg.sc.h, 0x32b0fee9, 0xf10e8981, 0x0dae7452 )
  TEST_RR_OP( 15, pv.avg.sc.h, 0x06631532, 0x5a747812, 0xe726b252 )
  TEST_RR_OP( 16, pv.avg.sc.h, 0x2191fc05, 0xe20696ee, 0xadea611c )
  TEST_RR_OP( 17, pv.avg.sc.h, 0x276c33e4, 0xec410531, 0xf75d6297 )
  TEST_RR_OP( 18, pv.avg.sc.h, 0xcdf12585, 0x802a2f52, 0x71561bb9 )
  TEST_RR_OP( 19, pv.avg.sc.h, 0xebb9306a, 0x7b0a046d, 0x07045c68 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.avg.sc.h, 0xd25f3ecc, 0x600038da, 0x395644be )
  TEST_RR_SRC1_EQ_DEST( 21, pv.avg.sc.h, 0x09e13c59, 0xde384328, 0x7b9a358a )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.avg.sc.h, 0xe4102c67, 0x3cb0cd5e, 0x2b9b8b71 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.avg.sc.h, 0x09c10e07, 0x2fda3865, 0x92f0e3a9 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.avg.sc.h, 0xdf8d3483, 0x8a983483 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.avg.sc.h, 0x0c50f229, 0xa6777229 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.avg.sc.h, 0xf6d8df63, 0x0e4ddf63, 0x0e4ddf63 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.avg.sc.h, 0xd080f1b5, 0xaf4bf1b5, 0xaf4bf1b5 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.avg.sc.h, 0xf5a4c332, 0x2816c332, 0x2816c332 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.avg.sc.h, 0xff9a31b1, 0x4d84b1b1, 0x4d84b1b1 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.avg.sc.h, 0xc053eec3, 0x91e4eec3, 0x91e4eec3 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.avg.sc.h, 0xe7ec0828, 0xc7b10828, 0xc7b10828 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.avg.sc.h, 0xe80a1c35, 0x470eaf64, 0xb91c8907 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.avg.sc.h, 0x3753f284, 0xc9ac400f, 0x0006a4fa )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.avg.sc.h, 0xe73d2c32, 0x08d392bc, 0x134bc5a8 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.avg.sc.h, 0xf9d70842, 0xe9ca06a1, 0xc15309e4 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.avg.sc.h, 0x2751e448, 0x7b28f516, 0x61d3d37b )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.avg.sc.h, 0x17003165, 0x919fc669, 0xcff79c62 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.avg.sc.h, 0xc04c354d, 0xc0e7aae9, 0xd694bfb1 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.avg.sc.h, 0x19d536ab, 0xb0d7ea83, 0x0eea82d3 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.avg.sc.h, 0x14e5fc2a, 0xea91b91a, 0x96fb3f3a )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.avg.sc.h, 0xcbe0cccc, 0xc164c33b, 0xf8c0d65d )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.avg.sc.h, 0xc62fd574, 0x5982780c, 0x430732dd )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.avg.sc.h, 0x3cf93340, 0x908a7d19, 0x545fe968 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.avg.sc.h, 0xe9a2244e, 0x8b7200cb, 0x76dc47d2 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.avg.sc.h, 0x1addeb94, 0x93b83525, 0x04dca203 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.avg.sc.h, 0xf29dccce, 0x90fb455e, 0xf71d543f )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.avg.sc.h, 0xe09a2cec, 0x27c4c067, 0x45a49971 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.avg.sc.h, 0xf039c730, 0x780b25f9, 0x255a6868 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.avg.sc.h, 0xe3eb0ee1, 0xb5820b6e, 0xb89d1255 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.avg.sc.h, 0xca4dca4d, 0xa6fb949b )
  TEST_RR_ZEROSRC1( 51, pv.avg.sc.h, 0xfcedfced, 0x06a0f9da )
  
  TEST_RR_ZEROSRC2( 52, pv.avg.sc.h, 0x02e6ec42, 0x05cdd884 )
  TEST_RR_ZEROSRC2( 53, pv.avg.sc.h, 0x1a242842, 0x34495084 )
  
  TEST_RR_ZEROSRC12( 54, pv.avg.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.avg.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.avg.sc.h, 0x253a6198, 0xb1cdb6cd )
  TEST_RR_ZERODEST( 57, pv.avg.sc.h, 0xb5e93735, 0x3e71f4da )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
