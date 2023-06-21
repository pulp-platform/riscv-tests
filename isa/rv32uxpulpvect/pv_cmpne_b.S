# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpne.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpne.b, 0x01000100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpne.b, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpne.b, 0x01010101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpne.b, 0x01010101, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpne.b, 0x00010101, 0x0ff02ed3, 0x0ffb02bf )
  TEST_RR_OP( 8, pv.cmpne.b, 0x00010101, 0x0ff2c30a, 0x0ff441a3 )
  TEST_RR_OP( 9, pv.cmpne.b, 0x00010101, 0x0ffd4c32, 0x0ff338f4 )
  TEST_RR_OP( 10, pv.cmpne.b, 0x00010101, 0x0ff1792b, 0x0fff1712 )
  TEST_RR_OP( 11, pv.cmpne.b, 0x00010100, 0x0ff09b8f, 0x0ffab68f )
  TEST_RR_OP( 12, pv.cmpne.b, 0x00010101, 0x0ff9ea4a, 0x0ff3e2a0 )
  TEST_RR_OP( 13, pv.cmpne.b, 0x00010101, 0x0ff8006e, 0x0ff1a13d )
  TEST_RR_OP( 14, pv.cmpne.b, 0x00010101, 0x0ff00397, 0x0ff8449b )
  TEST_RR_OP( 15, pv.cmpne.b, 0x00010101, 0x0ffcdaf0, 0x0ff4500d )
  TEST_RR_OP( 16, pv.cmpne.b, 0x00010101, 0x0fff67c7, 0x0ff16459 )
  TEST_RR_OP( 17, pv.cmpne.b, 0x00010101, 0x0ff5b1a0, 0x0ff08acf )
  TEST_RR_OP( 18, pv.cmpne.b, 0x00010101, 0x0fff7157, 0x0ff04eca )
  TEST_RR_OP( 19, pv.cmpne.b, 0x00010101, 0x0ffe7846, 0x0fff6383 )
  TEST_RR_OP( 20, pv.cmpne.b, 0x00000101, 0x0ff02a42, 0x0ff01563 )
  TEST_RR_OP( 21, pv.cmpne.b, 0x00010101, 0x0ffabd48, 0x0ff69083 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpne.b, 0x00010101, 0x0ff8ee3e, 0x0ff12fd4 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpne.b, 0x00010101, 0x0ffb4470, 0x0ff6db45 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpne.b, 0x00010101, 0x0ffa4ea1, 0x0ff350c4 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpne.b, 0x00010101, 0x0ff24fe8, 0x0ffc34ae )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpne.b, 0x00000000, 0x0ffa43aa )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpne.b, 0x00000000, 0x0ffc32cc )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpne.b, 0x00000000, 0x0ff920e4, 0x0ff920e4 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpne.b, 0x00000000, 0x0ff3ca40, 0x0ff3ca40 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpne.b, 0x00000000, 0x0ffdc0a0, 0x0ffdc0a0 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpne.b, 0x00000000, 0x0ffa715d, 0x0ffa715d )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpne.b, 0x00000000, 0x0ff1ca9c, 0x0ff1ca9c )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpne.b, 0x00000000, 0x0ffdf78e, 0x0ffdf78e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpne.b, 0x00010101, 0x0ff2981a, 0x0fff1e64 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpne.b, 0x00010101, 0x0ff4210a, 0x0ff52ce1 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpne.b, 0x00010101, 0x0ff4b664, 0x0ff3d005 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpne.b, 0x00010101, 0x0ffcb783, 0x0ff722e1 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpne.b, 0x00010101, 0x0ff91cb0, 0x0ff3adae )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpne.b, 0x00010101, 0x0ff187d4, 0x0ff64aee )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpne.b, 0x00010101, 0x0ff39f51, 0x0ff4c3da )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpne.b, 0x00000101, 0x0ff1480b, 0x0ff13003 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpne.b, 0x00010101, 0x0ff4994b, 0x0ffa9d7b )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpne.b, 0x00010101, 0x0ff65854, 0x0ff241e2 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpne.b, 0x00010101, 0x0ffe3fa3, 0x0ff92ec2 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpne.b, 0x00010101, 0x0ffd3ebc, 0x0fffbd7a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpne.b, 0x00010101, 0x0ff8a1eb, 0x0ff78d0c )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpne.b, 0x00010101, 0x0fff393e, 0x0ffe9ce9 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpne.b, 0x00010101, 0x0ffad5b5, 0x0ff572f0 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpne.b, 0x00010101, 0x0ff0bc9e, 0x0ff2ce8f )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpne.b, 0x00010101, 0x0ffeb131, 0x0ff69ae6 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpne.b, 0x00010101, 0x0ff53840, 0x0ff6e2eb )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpne.b, 0x01010101, 0x0ffd72a8 )
  TEST_RR_ZEROSRC1( 53, pv.cmpne.b, 0x01010101, 0x0ff8dc03 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpne.b, 0x01010101, 0x0ff0744d )
  TEST_RR_ZEROSRC2( 55, pv.cmpne.b, 0x01010101, 0x0ff7b473 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpne.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpne.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpne.b, 0x0ff92fb8, 0x0ff50f58 )
  TEST_RR_ZERODEST( 59, pv.cmpne.b, 0x0ff50847, 0x0ff70658 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
