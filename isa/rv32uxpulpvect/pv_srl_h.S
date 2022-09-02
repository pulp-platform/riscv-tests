# See LICENSE for license details.

#*****************************************************************************
# pv.srl.h
#-----------------------------------------------------------------------------
#
# Test pv.srl.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.srl.h, 0x00100001, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.srl.h, 0x00108181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.srl.h, 0x001040c0, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.srl.h, 0x28230002, 0x2823b184, 0x7c609c6e )
  TEST_RR_OP( 6, pv.srl.h, 0x00210000, 0x42d41de9, 0x14f9242e )
  TEST_RR_OP( 7, pv.srl.h, 0x04e90071, 0x4e9de2fc, 0x01145f39 )
  TEST_RR_OP( 8, pv.srl.h, 0x00010000, 0xc3f802e6, 0x71cfb72d )
  TEST_RR_OP( 9, pv.srl.h, 0x00130655, 0x9a9ecaa3, 0x3b6ba495 )
  TEST_RR_OP( 10, pv.srl.h, 0x0291000a, 0xa4745634, 0x0856b09b )
  TEST_RR_OP( 11, pv.srl.h, 0x00640003, 0xc923735a, 0x1529264d )
  TEST_RR_OP( 12, pv.srl.h, 0x9d780004, 0x9d7826ab, 0x80d0335b )
  TEST_RR_OP( 13, pv.srl.h, 0x01e30012, 0xf1cb95a4, 0xddc7fbab )
  TEST_RR_OP( 14, pv.srl.h, 0x00a019cd, 0xa05ace6f, 0xe828b283 )
  TEST_RR_OP( 15, pv.srl.h, 0x00c60001, 0x6377b46a, 0x7e27ecff )
  TEST_RR_OP( 16, pv.srl.h, 0x00021730, 0x88f9b981, 0x4a6e0043 )
  TEST_RR_OP( 17, pv.srl.h, 0x00080006, 0x8007c716, 0xc21c1b1d )
  TEST_RR_OP( 18, pv.srl.h, 0x14f1000a, 0x29e2a2d4, 0xc4014b2c )
  TEST_RR_OP( 19, pv.srl.h, 0x0034001e, 0x68623c0b, 0xdd9911e9 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.srl.h, 0x00cc00b4, 0xccb7b46c, 0x9508e5a8 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.srl.h, 0x00060013, 0x34c09a95, 0x3e1b334b )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.srl.h, 0x003513e6, 0x6a359f31, 0x42e99b33 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.srl.h, 0x007f000e, 0x3fda71e5, 0xe04767fb )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.srl.h, 0x008d3d30, 0x8d487a61 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.srl.h, 0x00290199, 0x29a83335 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.srl.h, 0x1fe4021e, 0x7f928796, 0x7f928796 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.srl.h, 0x164000d4, 0x1640d4f8, 0x1640d4f8 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.srl.h, 0x000d3268, 0x344ac9a2, 0x344ac9a2 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.srl.h, 0x00d35988, 0xd388b311, 0xd388b311 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.srl.h, 0x0002001e, 0x959ef5cb, 0x959ef5cb )
  TEST_RR_DEST_BYPASS( 49, 2, pv.srl.h, 0x02c8001c, 0xb23670ba, 0xb23670ba )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.srl.h, 0x00326f50, 0xcbb2dea1, 0x715a22a1 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.srl.h, 0xbb5402a5, 0xbb54a946, 0x64c051a6 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.srl.h, 0x00000121, 0x0d4c2427, 0xfd6e9655 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.srl.h, 0x05682a3d, 0xad04a8f5, 0x05558ad2 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.srl.h, 0x00000007, 0x4ef1fa85, 0x929f478d )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.srl.h, 0x00770005, 0xeeb82c86, 0x5c8957fb )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.srl.h, 0x90f40f98, 0x90f47cc4, 0x1b103a03 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.srl.h, 0x0038001c, 0xe3fbe6a7, 0xe65ad74b )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.srl.h, 0x6e2a0049, 0xdc54024e, 0x0f8165c3 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.srl.h, 0x548c0fa4, 0xa918fa47, 0xcd51b704 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.srl.h, 0x00012e17, 0x3410b85c, 0x195d2ee2 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.srl.h, 0x00000010, 0x263884ca, 0xa4de6e8b )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.srl.h, 0x025800d6, 0x25873584, 0x9a94ede6 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.srl.h, 0x00d60009, 0xd62b4dfb, 0x3c58094b )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.srl.h, 0x00050001, 0x1606baa1, 0xbcaab74f )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.srl.h, 0x35400002, 0xd502b51e, 0x8dc20bfe )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.srl.h, 0x00010036, 0xa480d8f3, 0x5cdf382a )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.srl.h, 0x00000025, 0x1dca95d9, 0xd74e352a )
  
  

  TEST_RR_ZEROSRC1( 50, pv.srl.h, 0x00000000, 0x660fa500 )
  TEST_RR_ZEROSRC1( 51, pv.srl.h, 0x00000000, 0x3d9a10a7 )
  
  TEST_RR_ZEROSRC2( 52, pv.srl.h, 0xc9f5927a, 0xc9f5927a )
  TEST_RR_ZEROSRC2( 53, pv.srl.h, 0xf88a88c6, 0xf88a88c6 )
  
  TEST_RR_ZEROSRC12( 54, pv.srl.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.srl.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.srl.h, 0x987cd339, 0x5617999a )
  TEST_RR_ZERODEST( 57, pv.srl.h, 0x685a7e11, 0x8aa2a321 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
