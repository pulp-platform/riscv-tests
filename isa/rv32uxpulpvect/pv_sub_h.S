# See LICENSE for license details.

#*****************************************************************************
# pv.sub.h
#-----------------------------------------------------------------------------
#
# Test pv.sub.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.h, 0x04040404, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.sub.h, 0xfbfcfbfc, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.sub.h, 0x88abccef, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.sub.h, 0xa2de0837, 0x8488ef5a, 0xe1aae723 )
  TEST_RR_OP( 6, pv.sub.h, 0x4f49ea2e, 0x62e64ec3, 0x139d6495 )
  TEST_RR_OP( 7, pv.sub.h, 0x6fb48339, 0x7987f948, 0x09d3760f )
  TEST_RR_OP( 8, pv.sub.h, 0x49a6a1cf, 0x809ce851, 0x36f64682 )
  TEST_RR_OP( 9, pv.sub.h, 0x2926edab, 0xd3054d40, 0xa9df5f95 )
  TEST_RR_OP( 10, pv.sub.h, 0x52c0e0ad, 0xc54c33f5, 0x728c5348 )
  TEST_RR_OP( 11, pv.sub.h, 0xeb3dc7d3, 0x2db4ae02, 0x4277e62f )
  TEST_RR_OP( 12, pv.sub.h, 0x97a5b21a, 0xfc7632f2, 0x64d180d8 )
  TEST_RR_OP( 13, pv.sub.h, 0xfd032203, 0x2f2c87c9, 0x322965c6 )
  TEST_RR_OP( 14, pv.sub.h, 0xb610b9d5, 0xa147b492, 0xeb37fabd )
  TEST_RR_OP( 15, pv.sub.h, 0x76b74662, 0x24811519, 0xadcaceb7 )
  TEST_RR_OP( 16, pv.sub.h, 0xa5c28cf8, 0x36da6614, 0x9118d91c )
  TEST_RR_OP( 17, pv.sub.h, 0x550a6a8b, 0x4b2ae4b9, 0xf6207a2e )
  TEST_RR_OP( 18, pv.sub.h, 0x82f92d3e, 0x028e8211, 0x7f9554d3 )
  TEST_RR_OP( 19, pv.sub.h, 0x29d6fff1, 0xa786b7a3, 0x7db0b7b2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sub.h, 0x6b2ba35c, 0x136dd081, 0xa8422d25 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sub.h, 0x76660ed2, 0xe19fc9c9, 0x6b39baf7 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sub.h, 0x92bab31d, 0xed11b6d3, 0x5a5703b6 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sub.h, 0xed45ddd7, 0x843a1fd9, 0x96f54202 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sub.h, 0x00000000, 0x3802fe0c )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sub.h, 0x00000000, 0xf58d7de9 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sub.h, 0x00000000, 0xd00742a6, 0xd00742a6 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sub.h, 0x00000000, 0x8ac79eda, 0x8ac79eda )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sub.h, 0x00000000, 0x4ee1abc3, 0x4ee1abc3 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sub.h, 0x00000000, 0x6e580e59, 0x6e580e59 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sub.h, 0x00000000, 0x8ce395c3, 0x8ce395c3 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sub.h, 0x00000000, 0x1d3f5ba3, 0x1d3f5ba3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sub.h, 0xc005d96e, 0x53036cf7, 0x92fe9389 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sub.h, 0xf501c9e9, 0x97533e0f, 0xa2527426 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sub.h, 0x34fd0dca, 0x8b8992b9, 0x568c84ef )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sub.h, 0x156ff0b8, 0x1d16c90d, 0x07a7d855 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sub.h, 0xc50ba417, 0xe6543943, 0x2149952c )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sub.h, 0x609d5710, 0x1824c979, 0xb7877269 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sub.h, 0xdc270133, 0xbd5d02c2, 0xe136018f )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sub.h, 0x6883a014, 0x1854e4c8, 0xafd144b4 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sub.h, 0x54b1f01c, 0x2310ce3f, 0xce5fde23 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sub.h, 0x22801329, 0x895c5afd, 0x66dc47d4 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sub.h, 0x6b3c96eb, 0x1bd88f0f, 0xb09cf824 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sub.h, 0xb5c4a3fe, 0xaa129424, 0xf44ef026 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sub.h, 0x393b7ff9, 0x15316724, 0xdbf6e72b )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sub.h, 0x619664aa, 0xf5671d08, 0x93d1b85e )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sub.h, 0xa52f986f, 0x01bfddf3, 0x5c904584 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sub.h, 0x7b3c26f8, 0x4c0e2610, 0xd0d2ff18 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sub.h, 0xb710146b, 0xc0be7195, 0x09ae5d2a )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sub.h, 0x0e2576cb, 0x52cd0b29, 0x44a8945e )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sub.h, 0x1d4531c9, 0xe2bbce37 )
  TEST_RR_ZEROSRC1( 51, pv.sub.h, 0x341233b3, 0xcbeecc4d )
  
  TEST_RR_ZEROSRC2( 52, pv.sub.h, 0xe8ca5709, 0xe8ca5709 )
  TEST_RR_ZEROSRC2( 53, pv.sub.h, 0x04cde3c4, 0x04cde3c4 )
  
  TEST_RR_ZEROSRC12( 54, pv.sub.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sub.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sub.h, 0x0dcb5c02, 0x94813aec )
  TEST_RR_ZERODEST( 57, pv.sub.h, 0x4d41e096, 0x55db86b7 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
