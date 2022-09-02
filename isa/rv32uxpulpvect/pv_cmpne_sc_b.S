# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpne.sc.b, 0x01010100, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpne.sc.b, 0x01010100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpne.sc.b, 0x01010101, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpne.sc.b, 0x01000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpne.sc.b, 0x01010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpne.sc.b, 0x01010101, 0x0ff1526a, 0x0ffac510 )
  TEST_RR_OP( 8, pv.cmpne.sc.b, 0x01010101, 0x0ff72764, 0x0ff57baf )
  TEST_RR_OP( 9, pv.cmpne.sc.b, 0x01010101, 0x0fff547b, 0x0ffa826e )
  TEST_RR_OP( 10, pv.cmpne.sc.b, 0x01010101, 0x0ffb392b, 0x0ffab269 )
  TEST_RR_OP( 11, pv.cmpne.sc.b, 0x01010101, 0x0ff07f42, 0x0ff44940 )
  TEST_RR_OP( 12, pv.cmpne.sc.b, 0x01010101, 0x0ff59081, 0x0fffd367 )
  TEST_RR_OP( 13, pv.cmpne.sc.b, 0x01010101, 0x0ff435f7, 0x0ff7dd04 )
  TEST_RR_OP( 14, pv.cmpne.sc.b, 0x01010101, 0x0ffe4159, 0x0ffda4bc )
  TEST_RR_OP( 15, pv.cmpne.sc.b, 0x01010101, 0x0ff296a8, 0x0ffb05eb )
  TEST_RR_OP( 16, pv.cmpne.sc.b, 0x01010101, 0x0ffef8b7, 0x0ff42461 )
  TEST_RR_OP( 17, pv.cmpne.sc.b, 0x01010101, 0x0ff4e169, 0x0ff02083 )
  TEST_RR_OP( 18, pv.cmpne.sc.b, 0x01010101, 0x0ff09bea, 0x0ffad51d )
  TEST_RR_OP( 19, pv.cmpne.sc.b, 0x01010101, 0x0ff21f91, 0x0ffb92e7 )
  TEST_RR_OP( 20, pv.cmpne.sc.b, 0x01010101, 0x0ff5f48d, 0x0ff495d9 )
  TEST_RR_OP( 21, pv.cmpne.sc.b, 0x01010101, 0x0ff9aa00, 0x0ff64c82 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpne.sc.b, 0x01010101, 0x0ff6eeb4, 0x0ff146c7 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpne.sc.b, 0x01010101, 0x0ff18d5e, 0x0ff76d7b )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpne.sc.b, 0x01010101, 0x0fffaaf0, 0x0ff0dd6c )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpne.sc.b, 0x01010101, 0x0ffbffd6, 0x0ff09961 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpne.sc.b, 0x01010100, 0x0ffb7062 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpne.sc.b, 0x01010100, 0x0ff76392 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpne.sc.b, 0x01010100, 0x0ff5e870, 0x0ff5e870 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpne.sc.b, 0x01010100, 0x0ff5d54f, 0x0ff5d54f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpne.sc.b, 0x01010100, 0x0ffa01eb, 0x0ffa01eb )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpne.sc.b, 0x01010100, 0x0ff0124a, 0x0ff0124a )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpne.sc.b, 0x01010100, 0x0ff6d5fb, 0x0ff6d5fb )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpne.sc.b, 0x01010100, 0x0ff1d588, 0x0ff1d588 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpne.sc.b, 0x01010101, 0x0ff11dcd, 0x0ffbbe9b )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpne.sc.b, 0x01010101, 0x0ffb48fa, 0x0ff54faa )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpne.sc.b, 0x01010101, 0x0ffad791, 0x0ff835b3 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpne.sc.b, 0x01010101, 0x0ffc5560, 0x0ff64c5c )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpne.sc.b, 0x01010101, 0x0ff08e58, 0x0ff401a8 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpne.sc.b, 0x01010101, 0x0fff9263, 0x0ff52d11 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpne.sc.b, 0x01010101, 0x0fffc6f0, 0x0ff64fe7 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpne.sc.b, 0x01010101, 0x0ff290b7, 0x0ffd3c94 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpne.sc.b, 0x01010101, 0x0fff8542, 0x0ff07992 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpne.sc.b, 0x01010101, 0x0ff7cd1a, 0x0ffcedde )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpne.sc.b, 0x01010101, 0x0ff4589d, 0x0ff2ddff )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpne.sc.b, 0x01010101, 0x0ff1a9c9, 0x0ff5c773 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpne.sc.b, 0x01010101, 0x0ffaaedd, 0x0ffc8b06 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpne.sc.b, 0x01010101, 0x0ff79949, 0x0ff75b42 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpne.sc.b, 0x01010101, 0x0ff63d3c, 0x0ffa93fb )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpne.sc.b, 0x01010101, 0x0ff6a5a5, 0x0fff09be )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpne.sc.b, 0x01010101, 0x0ff8f2b8, 0x0ffa971c )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpne.sc.b, 0x01010101, 0x0ff72e79, 0x0ffa0418 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpne.sc.b, 0x01010101, 0x0ff77f08 )
  TEST_RR_ZEROSRC1( 53, pv.cmpne.sc.b, 0x01010101, 0x0ff92cd6 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpne.sc.b, 0x01010101, 0x0ff6b4c6 )
  TEST_RR_ZEROSRC2( 55, pv.cmpne.sc.b, 0x01010101, 0x0ff58b2a )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpne.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpne.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpne.sc.b, 0x0ffe8ab0, 0x0ffa0d64 )
  TEST_RR_ZERODEST( 59, pv.cmpne.sc.b, 0x0ff7fcc9, 0x0ff0431b )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
