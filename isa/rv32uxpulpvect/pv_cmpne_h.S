# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpne.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpne.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpne.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpne.h, 0x00010001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpne.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpne.h, 0x00010001, 0x0ff9a9cf, 0x0ff40ef2 )
  TEST_RR_OP( 8, pv.cmpne.h, 0x00010001, 0x0ffbff2a, 0x0ff5f2a1 )
  TEST_RR_OP( 9, pv.cmpne.h, 0x00010001, 0x0ff12921, 0x0ffe7850 )
  TEST_RR_OP( 10, pv.cmpne.h, 0x00010001, 0x0ff56156, 0x0ffd5898 )
  TEST_RR_OP( 11, pv.cmpne.h, 0x00010001, 0x0ff17d47, 0x0ff67b56 )
  TEST_RR_OP( 12, pv.cmpne.h, 0x00000001, 0x0ff5a72c, 0x0ff527e7 )
  TEST_RR_OP( 13, pv.cmpne.h, 0x00000001, 0x0ff8e0bc, 0x0ff8c640 )
  TEST_RR_OP( 14, pv.cmpne.h, 0x00010001, 0x0ff4608f, 0x0ffae0f3 )
  TEST_RR_OP( 15, pv.cmpne.h, 0x00010001, 0x0fff836c, 0x0ffd1bd5 )
  TEST_RR_OP( 16, pv.cmpne.h, 0x00010001, 0x0ff38865, 0x0ffd036f )
  TEST_RR_OP( 17, pv.cmpne.h, 0x00000001, 0x0ffd4188, 0x0ffdfafe )
  TEST_RR_OP( 18, pv.cmpne.h, 0x00010001, 0x0ffb2952, 0x0ff92568 )
  TEST_RR_OP( 19, pv.cmpne.h, 0x00010001, 0x0ff1c44d, 0x0ff0c0d1 )
  TEST_RR_OP( 20, pv.cmpne.h, 0x00010001, 0x0ff22e37, 0x0ffe09fa )
  TEST_RR_OP( 21, pv.cmpne.h, 0x00010001, 0x0ffc97ca, 0x0ff38a92 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpne.h, 0x00010001, 0x0ffd6aaa, 0x0ff9832c )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpne.h, 0x00010001, 0x0ff03dfe, 0x0ffdbe4f )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpne.h, 0x00010001, 0x0ff307c9, 0x0ff05e7f )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpne.h, 0x00010001, 0x0ffe78b6, 0x0ff35b68 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpne.h, 0x00000000, 0x0ffe3a76 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpne.h, 0x00000000, 0x0fffd5d4 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpne.h, 0x00000000, 0x0ff450c4, 0x0ff450c4 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpne.h, 0x00000000, 0x0ffc878f, 0x0ffc878f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpne.h, 0x00000000, 0x0ff6f2e2, 0x0ff6f2e2 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpne.h, 0x00000000, 0x0ff6874d, 0x0ff6874d )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpne.h, 0x00000000, 0x0ff27de2, 0x0ff27de2 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpne.h, 0x00000000, 0x0ff05867, 0x0ff05867 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpne.h, 0x00000001, 0x0ffb41bd, 0x0ffb2c13 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpne.h, 0x00010001, 0x0ff9da5b, 0x0ffe45b2 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpne.h, 0x00010001, 0x0ff62765, 0x0ff7e911 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpne.h, 0x00010001, 0x0ffd4e6c, 0x0ffed56b )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpne.h, 0x00010001, 0x0ff74f81, 0x0fff0618 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpne.h, 0x00010001, 0x0ff93550, 0x0ffe37bc )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpne.h, 0x00010001, 0x0ff14527, 0x0ff0f1c6 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpne.h, 0x00010001, 0x0ff02d91, 0x0ffee1c9 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpne.h, 0x00010001, 0x0ff8dd54, 0x0ff9eea1 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpne.h, 0x00000001, 0x0ff9ba7e, 0x0ff9e6ca )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpne.h, 0x00010001, 0x0ff92d09, 0x0ff41171 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpne.h, 0x00010001, 0x0ff161d6, 0x0ff868a6 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpne.h, 0x00010001, 0x0ff45a00, 0x0ff0adbf )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpne.h, 0x00010001, 0x0ff2faee, 0x0ff613e5 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpne.h, 0x00010001, 0x0ffa7a84, 0x0ff03993 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpne.h, 0x00010001, 0x0ff5a103, 0x0ff4f466 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpne.h, 0x00010001, 0x0ffe53e5, 0x0ff07285 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpne.h, 0x00010001, 0x0ffb626c, 0x0ff81427 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpne.h, 0x00010001, 0x0ff0cdd0 )
  TEST_RR_ZEROSRC1( 53, pv.cmpne.h, 0x00010001, 0x0ffa6ae6 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpne.h, 0x00010001, 0x0ffe1193 )
  TEST_RR_ZEROSRC2( 55, pv.cmpne.h, 0x00010001, 0x0ff83e19 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpne.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpne.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpne.h, 0x0ff04eb6, 0x0ffdd8c2 )
  TEST_RR_ZERODEST( 59, pv.cmpne.h, 0x0ffeb3ba, 0x0ff831c6 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
