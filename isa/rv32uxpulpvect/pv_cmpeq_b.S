# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpeq.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpeq.b, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpeq.b, 0x01000100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpeq.b, 0x00000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpeq.b, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpeq.b, 0x01000000, 0x0ff532c2, 0x0ff1d97f )
  TEST_RR_OP( 8, pv.cmpeq.b, 0x01000000, 0x0ff7d170, 0x0ff2c50a )
  TEST_RR_OP( 9, pv.cmpeq.b, 0x01000000, 0x0ff7b219, 0x0ff42cc8 )
  TEST_RR_OP( 10, pv.cmpeq.b, 0x01000000, 0x0ff11ef0, 0x0ffa39ee )
  TEST_RR_OP( 11, pv.cmpeq.b, 0x01000000, 0x0ff0e21c, 0x0ffea993 )
  TEST_RR_OP( 12, pv.cmpeq.b, 0x01000000, 0x0ff95483, 0x0ff1c6eb )
  TEST_RR_OP( 13, pv.cmpeq.b, 0x01010000, 0x0ff292e9, 0x0ff2ebd3 )
  TEST_RR_OP( 14, pv.cmpeq.b, 0x01000000, 0x0ffdeb2f, 0x0ffc33f9 )
  TEST_RR_OP( 15, pv.cmpeq.b, 0x01000000, 0x0ffde42d, 0x0ff1b932 )
  TEST_RR_OP( 16, pv.cmpeq.b, 0x01000000, 0x0ff1e024, 0x0ff7f1d4 )
  TEST_RR_OP( 17, pv.cmpeq.b, 0x01010000, 0x0ff029a4, 0x0ff0a2a8 )
  TEST_RR_OP( 18, pv.cmpeq.b, 0x01000000, 0x0ffd6dc3, 0x0ff05a3a )
  TEST_RR_OP( 19, pv.cmpeq.b, 0x01000000, 0x0ffb51b0, 0x0ff3fe7f )
  TEST_RR_OP( 20, pv.cmpeq.b, 0x01000000, 0x0ff622d6, 0x0ff85aa5 )
  TEST_RR_OP( 21, pv.cmpeq.b, 0x01000000, 0x0ff1359e, 0x0ff86d16 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpeq.b, 0x01000000, 0x0ff2f92a, 0x0ff84bbf )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpeq.b, 0x01000000, 0x0ff4ac01, 0x0ff912fc )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpeq.b, 0x01000000, 0x0ff5d379, 0x0fff232a )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpeq.b, 0x01000000, 0x0ff3e259, 0x0ff91d62 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpeq.b, 0x01010101, 0x0ff54559 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpeq.b, 0x01010101, 0x0ff5146e )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpeq.b, 0x01010101, 0x0ffe4c9e, 0x0ffe4c9e )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpeq.b, 0x01010101, 0x0ffaadc4, 0x0ffaadc4 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpeq.b, 0x01010101, 0x0ff05f9c, 0x0ff05f9c )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpeq.b, 0x01010101, 0x0ff7001c, 0x0ff7001c )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpeq.b, 0x01010101, 0x0ffff2eb, 0x0ffff2eb )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpeq.b, 0x01010101, 0x0ff5eebc, 0x0ff5eebc )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpeq.b, 0x01000000, 0x0ff955c7, 0x0ff16b0c )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpeq.b, 0x01000000, 0x0ff6a4c6, 0x0ffab6cf )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpeq.b, 0x01000000, 0x0ffacd2c, 0x0ffe18ea )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpeq.b, 0x01000000, 0x0ff0c8b3, 0x0ffed9c6 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpeq.b, 0x01000000, 0x0ff0844d, 0x0ff7cd0f )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpeq.b, 0x01000000, 0x0ff289c5, 0x0ff05255 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpeq.b, 0x01000000, 0x0ffa5a0e, 0x0ffe04be )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpeq.b, 0x01000000, 0x0ff05e9a, 0x0ffa335c )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpeq.b, 0x01010000, 0x0ff59d42, 0x0ff51586 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpeq.b, 0x01000000, 0x0ff3287a, 0x0ff080f3 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpeq.b, 0x01000000, 0x0ffb0f2d, 0x0fff0b4f )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpeq.b, 0x01000000, 0x0ff0edf6, 0x0ff9b99f )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpeq.b, 0x01000000, 0x0ff45608, 0x0ffc6b51 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpeq.b, 0x01000000, 0x0ff88162, 0x0fff6379 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpeq.b, 0x01000000, 0x0ff8dd98, 0x0ff9b6a6 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpeq.b, 0x01000000, 0x0ff5a4e6, 0x0ff09ee5 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpeq.b, 0x01000000, 0x0ffa2a4c, 0x0ff813c9 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpeq.b, 0x01000000, 0x0ff3d7e1, 0x0ff4b994 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpeq.b, 0x00000000, 0x0ff74e25 )
  TEST_RR_ZEROSRC1( 53, pv.cmpeq.b, 0x00000000, 0x0ff9c9ef )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpeq.b, 0x00000000, 0x0ffe493b )
  TEST_RR_ZEROSRC2( 55, pv.cmpeq.b, 0x00000000, 0x0ffaba32 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpeq.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpeq.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpeq.b, 0x0ffa9ac8, 0x0fff17b7 )
  TEST_RR_ZERODEST( 59, pv.cmpeq.b, 0x0ff89a8d, 0x0ff56a31 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
