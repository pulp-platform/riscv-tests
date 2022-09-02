# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgt.sc.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgt.sc.h, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgt.sc.h, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgt.sc.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgt.sc.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgt.sc.h, 0x00010000, 0x78118699, 0x3e890988 )
  TEST_RR_OP( 8, pv.cmpgt.sc.h, 0x00010001, 0x2588216a, 0x0381bc7e )
  TEST_RR_OP( 9, pv.cmpgt.sc.h, 0x00010001, 0x4a354e32, 0xb97f312a )
  TEST_RR_OP( 10, pv.cmpgt.sc.h, 0x00010001, 0xb744fc71, 0xf709b45a )
  TEST_RR_OP( 11, pv.cmpgt.sc.h, 0x00010000, 0x5f8bc2da, 0x5129156e )
  TEST_RR_OP( 12, pv.cmpgt.sc.h, 0x00000000, 0x01c0110d, 0x1e293854 )
  TEST_RR_OP( 13, pv.cmpgt.sc.h, 0x00010001, 0x40322c52, 0xb0069128 )
  TEST_RR_OP( 14, pv.cmpgt.sc.h, 0x00010001, 0x77504fb2, 0xbc1ac1bd )
  TEST_RR_OP( 15, pv.cmpgt.sc.h, 0x00010001, 0x62c2d8c6, 0x0430992b )
  TEST_RR_OP( 16, pv.cmpgt.sc.h, 0x00000000, 0xbeca955f, 0xda232b3a )
  TEST_RR_OP( 17, pv.cmpgt.sc.h, 0x00000001, 0x9feb0fea, 0xdb40aaef )
  TEST_RR_OP( 18, pv.cmpgt.sc.h, 0x00010001, 0x25e5626b, 0x61dfae4a )
  TEST_RR_OP( 19, pv.cmpgt.sc.h, 0x00010001, 0x1d721553, 0x9672ab57 )
  TEST_RR_OP( 20, pv.cmpgt.sc.h, 0x00010001, 0x776173cd, 0x68e9da0b )
  TEST_RR_OP( 21, pv.cmpgt.sc.h, 0x00000000, 0xbdcee609, 0x94c42b90 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgt.sc.h, 0x00000001, 0xe42d60ad, 0xba4cf2af )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgt.sc.h, 0x00010001, 0x3e7d472b, 0x92c00940 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgt.sc.h, 0x00010001, 0xc85548e2, 0x85378e03 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgt.sc.h, 0x00000000, 0x528593fa, 0x120c591f )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgt.sc.h, 0x00000000, 0xa88e2772 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgt.sc.h, 0x00010000, 0x7f3cdd52 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgt.sc.h, 0x00010000, 0x3044bd10, 0x3044bd10 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgt.sc.h, 0x00000000, 0xaab3196f, 0xaab3196f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgt.sc.h, 0x00000000, 0xf1fb5057, 0xf1fb5057 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgt.sc.h, 0x00010000, 0x63ffe472, 0x63ffe472 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgt.sc.h, 0x00010000, 0xa6f984ef, 0xa6f984ef )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgt.sc.h, 0x00010000, 0x24b0c0ea, 0x24b0c0ea )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgt.sc.h, 0x00000000, 0xe466bc10, 0x98845470 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgt.sc.h, 0x00010000, 0x5b8a9738, 0x55670490 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgt.sc.h, 0x00010001, 0x7ca74ed7, 0xa12b1a8e )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgt.sc.h, 0x00000000, 0x90f5a8a4, 0xe122e4e5 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgt.sc.h, 0x00000000, 0xd4209c34, 0x90f52e4d )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgt.sc.h, 0x00000001, 0xa2e4301c, 0x472ab23c )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgt.sc.h, 0x00010000, 0x6a9390cd, 0x44d3e4c8 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgt.sc.h, 0x00000000, 0x1a2f9fd3, 0xc9025237 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgt.sc.h, 0x00010001, 0x781be48c, 0x3dd4e33c )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgt.sc.h, 0x00000000, 0x27523173, 0x7d813a34 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgt.sc.h, 0x00010001, 0x3ec13f1c, 0xf6650915 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgt.sc.h, 0x00000001, 0xe5ff50d6, 0x4230435a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgt.sc.h, 0x00010001, 0xcf032ac2, 0x429da566 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgt.sc.h, 0x00010001, 0xeb71d3ee, 0x4aacbac4 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgt.sc.h, 0x00010001, 0x62694245, 0xdc0dfcc8 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgt.sc.h, 0x00010001, 0x6ef54949, 0x7430d853 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgt.sc.h, 0x00010000, 0xd6039936, 0x2259bab3 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgt.sc.h, 0x00010001, 0x4f931d6f, 0x1f5b088c )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgt.sc.h, 0x00010001, 0x6cdf8d95 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgt.sc.h, 0x00010001, 0x412bd7cb )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgt.sc.h, 0x00010000, 0x0c26a2f6 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgt.sc.h, 0x00000000, 0xf2a183bd )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgt.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgt.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgt.sc.h, 0x7103dae0, 0xe768340f )
  TEST_RR_ZERODEST( 59, pv.cmpgt.sc.h, 0x8ede4c24, 0x1d49f360 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
