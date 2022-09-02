# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpeq.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpeq.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpeq.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpeq.h, 0x00000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpeq.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpeq.h, 0x00000000, 0x0ff025bd, 0x0ff7c741 )
  TEST_RR_OP( 8, pv.cmpeq.h, 0x00000000, 0x0ffd2614, 0x0ff3d223 )
  TEST_RR_OP( 9, pv.cmpeq.h, 0x00000000, 0x0ff31d36, 0x0ff4a97b )
  TEST_RR_OP( 10, pv.cmpeq.h, 0x00000000, 0x0ff75ba4, 0x0ff81365 )
  TEST_RR_OP( 11, pv.cmpeq.h, 0x00000000, 0x0ff07de4, 0x0ff6db5c )
  TEST_RR_OP( 12, pv.cmpeq.h, 0x00000000, 0x0ffe9716, 0x0ffd070f )
  TEST_RR_OP( 13, pv.cmpeq.h, 0x00000000, 0x0ffab17a, 0x0ff3d489 )
  TEST_RR_OP( 14, pv.cmpeq.h, 0x00000000, 0x0ff88929, 0x0ff5a3a7 )
  TEST_RR_OP( 15, pv.cmpeq.h, 0x00000000, 0x0ff304cb, 0x0ff9b951 )
  TEST_RR_OP( 16, pv.cmpeq.h, 0x00000000, 0x0ff54e4d, 0x0ffc6b94 )
  TEST_RR_OP( 17, pv.cmpeq.h, 0x00000000, 0x0ff54e3a, 0x0ff6e452 )
  TEST_RR_OP( 18, pv.cmpeq.h, 0x00000000, 0x0ff3aa39, 0x0fffdbc5 )
  TEST_RR_OP( 19, pv.cmpeq.h, 0x00000000, 0x0ffd3ac5, 0x0ff6f15a )
  TEST_RR_OP( 20, pv.cmpeq.h, 0x00000000, 0x0ff6da7e, 0x0ffaae88 )
  TEST_RR_OP( 21, pv.cmpeq.h, 0x00000000, 0x0ff16508, 0x0ff50965 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpeq.h, 0x00000000, 0x0ffa34ab, 0x0fff4abd )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpeq.h, 0x00000000, 0x0ffc2903, 0x0ffa31f6 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpeq.h, 0x00000000, 0x0ff315c9, 0x0ffc0b53 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpeq.h, 0x00000000, 0x0ff2003e, 0x0ff703f4 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpeq.h, 0x00010001, 0x0ff8938f )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpeq.h, 0x00010001, 0x0ffed7a4 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpeq.h, 0x00010001, 0x0ff3369a, 0x0ff3369a )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpeq.h, 0x00010001, 0x0fff4dba, 0x0fff4dba )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpeq.h, 0x00010001, 0x0ff28eba, 0x0ff28eba )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpeq.h, 0x00010001, 0x0ff1e121, 0x0ff1e121 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpeq.h, 0x00010001, 0x0ff01ce1, 0x0ff01ce1 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpeq.h, 0x00010001, 0x0ffc9cd7, 0x0ffc9cd7 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpeq.h, 0x00000000, 0x0ffbe7c7, 0x0ff42914 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpeq.h, 0x00000000, 0x0ffdab2c, 0x0ffc620f )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpeq.h, 0x00000000, 0x0ff4bb9f, 0x0ff08eb6 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpeq.h, 0x00000000, 0x0ff3eaa3, 0x0ffad548 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpeq.h, 0x00000000, 0x0fff4e28, 0x0ff81a12 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpeq.h, 0x00000000, 0x0ffa2fcf, 0x0fff4ef8 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpeq.h, 0x00000000, 0x0ffb9d4b, 0x0ff00d96 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpeq.h, 0x00000000, 0x0ff6e67d, 0x0ff07611 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpeq.h, 0x00000000, 0x0ffc0c56, 0x0ff73379 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpeq.h, 0x00000000, 0x0ff979c0, 0x0fff242a )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpeq.h, 0x00000000, 0x0ff55c50, 0x0ff6449b )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpeq.h, 0x00000000, 0x0ffe4bb0, 0x0ff2403b )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpeq.h, 0x00000000, 0x0ff8d7d0, 0x0ffeb1ba )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpeq.h, 0x00000000, 0x0ff33023, 0x0ffcf422 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpeq.h, 0x00000000, 0x0ff4d522, 0x0ff1eefc )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpeq.h, 0x00000000, 0x0ff73c6b, 0x0ffed3e2 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpeq.h, 0x00000000, 0x0ff22ea4, 0x0ffce614 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpeq.h, 0x00000000, 0x0fff28ac, 0x0ff6cfc6 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpeq.h, 0x00000000, 0x0ff4bb0a )
  TEST_RR_ZEROSRC1( 53, pv.cmpeq.h, 0x00000000, 0x0ffc472e )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpeq.h, 0x00000000, 0x0ff5953e )
  TEST_RR_ZEROSRC2( 55, pv.cmpeq.h, 0x00000000, 0x0ff61dde )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpeq.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpeq.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpeq.h, 0x0ffe450b, 0x0ff12f32 )
  TEST_RR_ZERODEST( 59, pv.cmpeq.h, 0x0ff5d4ec, 0x0ffa7ff3 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
