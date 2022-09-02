# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpne.sc.h, 0x00010000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpne.sc.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpne.sc.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpne.sc.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpne.sc.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpne.sc.h, 0x00010001, 0x0ffc3248, 0x0ffd2126 )
  TEST_RR_OP( 8, pv.cmpne.sc.h, 0x00010001, 0x0ff95b05, 0x0ffdbe17 )
  TEST_RR_OP( 9, pv.cmpne.sc.h, 0x00010001, 0x0ffb7afb, 0x0ff9e5bc )
  TEST_RR_OP( 10, pv.cmpne.sc.h, 0x00010001, 0x0ff6dd30, 0x0ff497ba )
  TEST_RR_OP( 11, pv.cmpne.sc.h, 0x00010001, 0x0ff5597a, 0x0ff59a2e )
  TEST_RR_OP( 12, pv.cmpne.sc.h, 0x00010001, 0x0ff0b06d, 0x0ff513f6 )
  TEST_RR_OP( 13, pv.cmpne.sc.h, 0x00010001, 0x0ff61606, 0x0ffd7efb )
  TEST_RR_OP( 14, pv.cmpne.sc.h, 0x00010001, 0x0fffd758, 0x0ff4d40e )
  TEST_RR_OP( 15, pv.cmpne.sc.h, 0x00010001, 0x0fffe9f8, 0x0ff87626 )
  TEST_RR_OP( 16, pv.cmpne.sc.h, 0x00010001, 0x0ff74fc0, 0x0ff35592 )
  TEST_RR_OP( 17, pv.cmpne.sc.h, 0x00010001, 0x0fffbc33, 0x0ff04486 )
  TEST_RR_OP( 18, pv.cmpne.sc.h, 0x00010001, 0x0fff1281, 0x0ffabcf9 )
  TEST_RR_OP( 19, pv.cmpne.sc.h, 0x00010001, 0x0ff113d2, 0x0ff13aa8 )
  TEST_RR_OP( 20, pv.cmpne.sc.h, 0x00010001, 0x0ff7b1e9, 0x0ff24cfc )
  TEST_RR_OP( 21, pv.cmpne.sc.h, 0x00010001, 0x0ff9c51e, 0x0ff94049 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpne.sc.h, 0x00010001, 0x0ff1f7a2, 0x0ffbb605 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpne.sc.h, 0x00010001, 0x0fffb45e, 0x0ff38189 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpne.sc.h, 0x00010001, 0x0fffd9b7, 0x0fff6f71 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpne.sc.h, 0x00010001, 0x0ff09d1e, 0x0ff4c323 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpne.sc.h, 0x00010000, 0x0ffac2a8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpne.sc.h, 0x00010000, 0x0ff31229 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpne.sc.h, 0x00010000, 0x0ffe4615, 0x0ffe4615 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpne.sc.h, 0x00010000, 0x0ff4ae1a, 0x0ff4ae1a )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpne.sc.h, 0x00010000, 0x0ffb8e9e, 0x0ffb8e9e )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpne.sc.h, 0x00010000, 0x0ff9d955, 0x0ff9d955 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpne.sc.h, 0x00010000, 0x0ff63b4d, 0x0ff63b4d )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpne.sc.h, 0x00010000, 0x0ff52d60, 0x0ff52d60 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff00dab, 0x0ff2df95 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpne.sc.h, 0x00010001, 0x0ffdb648, 0x0ff066e1 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpne.sc.h, 0x00010001, 0x0ffb39ba, 0x0ff842ad )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff681e8, 0x0ff48ae8 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpne.sc.h, 0x00010001, 0x0ff642fb, 0x0ffbb19b )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpne.sc.h, 0x00010001, 0x0ffb10eb, 0x0ffcaebe )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff56c07, 0x0ffd94f4 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpne.sc.h, 0x00010001, 0x0ff09d48, 0x0ff23490 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpne.sc.h, 0x00010001, 0x0ffd87b3, 0x0ff2c4a6 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff5a896, 0x0ff26a93 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpne.sc.h, 0x00010001, 0x0ff11b44, 0x0ffbc792 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpne.sc.h, 0x00010001, 0x0ffee271, 0x0ff8dbec )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff1ba30, 0x0ff4279b )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpne.sc.h, 0x00010001, 0x0ff5b209, 0x0ff2f4a7 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpne.sc.h, 0x00010001, 0x0ff8eccd, 0x0ff36b54 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpne.sc.h, 0x00010001, 0x0ff22295, 0x0ffa2587 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpne.sc.h, 0x00010001, 0x0ffbdf1c, 0x0ff064c4 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpne.sc.h, 0x00010001, 0x0ff5fbd5, 0x0ff0082e )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpne.sc.h, 0x00010001, 0x0ffbdb1c )
  TEST_RR_ZEROSRC1( 53, pv.cmpne.sc.h, 0x00010001, 0x0ff3f171 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpne.sc.h, 0x00010001, 0x0ff69c0e )
  TEST_RR_ZEROSRC2( 55, pv.cmpne.sc.h, 0x00010001, 0x0ff98d63 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpne.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpne.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpne.sc.h, 0x0ffe4a38, 0x0ffe1e05 )
  TEST_RR_ZERODEST( 59, pv.cmpne.sc.h, 0x0ff93616, 0x0ff78968 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
