# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpeq.sc.b, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpeq.sc.b, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpeq.sc.b, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpeq.sc.b, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpeq.sc.b, 0x00000100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpeq.sc.b, 0x00000000, 0x0ff386b2, 0x0ff30925 )
  TEST_RR_OP( 8, pv.cmpeq.sc.b, 0x00000000, 0x0ffaa419, 0x0ffd9bd0 )
  TEST_RR_OP( 9, pv.cmpeq.sc.b, 0x00000000, 0x0ff3212f, 0x0ff3d54c )
  TEST_RR_OP( 10, pv.cmpeq.sc.b, 0x00000000, 0x0ff132cc, 0x0ff13cf3 )
  TEST_RR_OP( 11, pv.cmpeq.sc.b, 0x00000000, 0x0ff1726e, 0x0ff5eea8 )
  TEST_RR_OP( 12, pv.cmpeq.sc.b, 0x00000000, 0x0ffe6f81, 0x0ffe7a14 )
  TEST_RR_OP( 13, pv.cmpeq.sc.b, 0x00000000, 0x0ffb7385, 0x0ff8cc96 )
  TEST_RR_OP( 14, pv.cmpeq.sc.b, 0x00000000, 0x0ff3a405, 0x0ff5ff99 )
  TEST_RR_OP( 15, pv.cmpeq.sc.b, 0x00000000, 0x0ffb9420, 0x0ffddd16 )
  TEST_RR_OP( 16, pv.cmpeq.sc.b, 0x00000000, 0x0ff8569e, 0x0ff08f95 )
  TEST_RR_OP( 17, pv.cmpeq.sc.b, 0x00000000, 0x0ffa536a, 0x0ff8af0d )
  TEST_RR_OP( 18, pv.cmpeq.sc.b, 0x00000000, 0x0ff4ac61, 0x0ff676bf )
  TEST_RR_OP( 19, pv.cmpeq.sc.b, 0x00000000, 0x0ff33463, 0x0ff1233b )
  TEST_RR_OP( 20, pv.cmpeq.sc.b, 0x00000000, 0x0ffa0e3e, 0x0ffd735d )
  TEST_RR_OP( 21, pv.cmpeq.sc.b, 0x00000000, 0x0ff2ca40, 0x0ffbe0a5 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpeq.sc.b, 0x00000000, 0x0ff6520e, 0x0ff41411 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpeq.sc.b, 0x00000000, 0x0ff44515, 0x0ff56ca0 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpeq.sc.b, 0x00000000, 0x0ffe8d78, 0x0ffadae7 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpeq.sc.b, 0x00000000, 0x0ff8fcc3, 0x0ff2aea3 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpeq.sc.b, 0x00000001, 0x0ff1a971 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpeq.sc.b, 0x00000001, 0x0ff22b09 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpeq.sc.b, 0x00000001, 0x0ffdb0e6, 0x0ffdb0e6 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpeq.sc.b, 0x00000001, 0x0ff84915, 0x0ff84915 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpeq.sc.b, 0x00000001, 0x0ff5e0b5, 0x0ff5e0b5 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpeq.sc.b, 0x00000001, 0x0ff28e87, 0x0ff28e87 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpeq.sc.b, 0x00000001, 0x0ffcef45, 0x0ffcef45 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpeq.sc.b, 0x00000001, 0x0ff0ed2b, 0x0ff0ed2b )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpeq.sc.b, 0x00000000, 0x0fffb84e, 0x0ff2ea6b )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ffc11bb, 0x0ffe8280 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ff2c9d5, 0x0ffaaa5d )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpeq.sc.b, 0x00000000, 0x0ffd52f5, 0x0ff9b112 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ffba06e, 0x0ff7e854 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ffcbecf, 0x0ff4ce7e )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpeq.sc.b, 0x00000000, 0x0ff27bf3, 0x0ff89d49 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ff7e80e, 0x0ff611c6 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ffd5698, 0x0ff7a97d )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpeq.sc.b, 0x00000000, 0x0ff84ce2, 0x0ff178fe )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ffe045d, 0x0ffb75f9 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ff78930, 0x0ff1732b )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpeq.sc.b, 0x00000000, 0x0ff8f7eb, 0x0ffc10d1 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ff47415, 0x0ffda081 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ffde350, 0x0ffc4a37 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpeq.sc.b, 0x00000000, 0x0ff38b97, 0x0ff393de )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpeq.sc.b, 0x00000000, 0x0ff6d53f, 0x0ff9eb75 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpeq.sc.b, 0x00000000, 0x0ffb3394, 0x0ffc8854 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpeq.sc.b, 0x00000000, 0x0ff2a3ec )
  TEST_RR_ZEROSRC1( 53, pv.cmpeq.sc.b, 0x00000000, 0x0ff9cf0a )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpeq.sc.b, 0x00000000, 0x0ff1b534 )
  TEST_RR_ZEROSRC2( 55, pv.cmpeq.sc.b, 0x00000000, 0x0ff4eb60 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpeq.sc.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpeq.sc.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpeq.sc.b, 0x0ff9ee0a, 0x0ff35fb1 )
  TEST_RR_ZERODEST( 59, pv.cmpeq.sc.b, 0x0ff815da, 0x0ffc7c37 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
