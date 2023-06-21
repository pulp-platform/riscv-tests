# See LICENSE for license details.

#*****************************************************************************
# pv.shufflei2.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.shufflei2.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.shufflei2.sci.b, 0x33111111, 0x44332211, 0b00000000 )
  TEST_UIMM6_OP( 3, pv.shufflei2.sci.b, 0x33111122, 0x44332211, 0b00000001 )
  TEST_UIMM6_OP( 4, pv.shufflei2.sci.b, 0x33111133, 0x44332211, 0b00000010 )
  TEST_UIMM6_OP( 5, pv.shufflei2.sci.b, 0x33111144, 0x44332211, 0b00000011 )
  TEST_UIMM6_OP( 6, pv.shufflei2.sci.b, 0x33112211, 0x44332211, 0b00000100 )
  TEST_UIMM6_OP( 7, pv.shufflei2.sci.b, 0x33113311, 0x44332211, 0b00001000 )
  TEST_UIMM6_OP( 8, pv.shufflei2.sci.b, 0x33114411, 0x44332211, 0b00001100 )
  TEST_UIMM6_OP( 9, pv.shufflei2.sci.b, 0x33221111, 0x44332211, 0b00010000 )
  TEST_UIMM6_OP( 10, pv.shufflei2.sci.b, 0x33331111, 0x44332211, 0b00100000 )
  TEST_UIMM6_OP( 11, pv.shufflei2.sci.b, 0x33441111, 0x44332211, 0b00110000 )
  TEST_UIMM6_OP( 12, pv.shufflei2.sci.b, 0x26582626, 0xb3260f58, 0b00001010 )
  TEST_UIMM6_OP( 13, pv.shufflei2.sci.b, 0x5c5c174c, 0xf85c174c, 0b00100100 )
  TEST_UIMM6_OP( 14, pv.shufflei2.sci.b, 0xc98ec9f9, 0x8ec9f96b, 0b00111001 )
  TEST_UIMM6_OP( 15, pv.shufflei2.sci.b, 0xe7e7e7b1, 0xf5e7b1a7, 0b00101001 )
  TEST_UIMM6_OP( 16, pv.shufflei2.sci.b, 0xcade2a36, 0xdeca2a36, 0b00110100 )
  TEST_UIMM6_OP( 17, pv.shufflei2.sci.b, 0x0dd5288a, 0x280d8ad5, 0b00001101 )
  TEST_UIMM6_OP( 18, pv.shufflei2.sci.b, 0x92f192bf, 0xbf92dff1, 0b00001011 )
  TEST_UIMM6_OP( 19, pv.shufflei2.sci.b, 0x74747468, 0xd5741c68, 0b00101000 )
  TEST_UIMM6_OP( 20, pv.shufflei2.sci.b, 0x42422f42, 0x2f422292, 0b00101110 )
  TEST_UIMM6_OP( 21, pv.shufflei2.sci.b, 0xbb37b7bb, 0x95bb37b7, 0b00010010 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 22, pv.shufflei2.sci.b, 0xbfb8bfe1, 0x66bfb8e1, 0b00011000 )
  TEST_UIMM6_SRC1_EQ_DEST( 23, pv.shufflei2.sci.b, 0x46464747, 0xb3467d47, 0b00100000 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.shufflei2.sci.b, 0x05dbdb51, 0xdb05f751, 0b00111100 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.shufflei2.sci.b, 0x94a8ebb1, 0xb194a8eb, 0b00010011 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.shufflei2.sci.b, 0xa9bf9f84, 0x84a9bf9f, 0b00010011 )
  TEST_UIMM6_SRC1_BYPASS( 27, 0, pv.shufflei2.sci.b, 0xf9f9d0d0, 0x24f9d01f, 0b00100101 )
  TEST_UIMM6_SRC1_BYPASS( 28, 1, pv.shufflei2.sci.b, 0xe5e5a4e5, 0xa4e5e599, 0b00101110 )
  TEST_UIMM6_SRC1_BYPASS( 29, 2, pv.shufflei2.sci.b, 0xff0c9a9a, 0x0cff989a, 0b00110000 )
  
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.shufflei2.sci.b, 0x78785a5a, 0x8778325a, 0b00100000 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.shufflei2.sci.b, 0x69695b69, 0x68695bd2, 0b00100110 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.shufflei2.sci.b, 0x97addede, 0xde97c6ad, 0b00001111 )
  TEST_UIMM6_DEST_BYPASS( 33, 0, pv.shufflei2.sci.b, 0x4fa64f4f, 0xca4f64a6, 0b00001010 )
  TEST_UIMM6_DEST_BYPASS( 34, 1, pv.shufflei2.sci.b, 0x5dab7dab, 0xab5d337d, 0b00110011 )
  TEST_UIMM6_DEST_BYPASS( 35, 2, pv.shufflei2.sci.b, 0x72725b06, 0x06725bfc, 0b00100111 )
  
  

  TEST_UIMM6_ZEROSRC1( 36, pv.shufflei2.sci.b, 0x00000000, 0b00110110 )
  TEST_UIMM6_ZEROSRC1( 37, pv.shufflei2.sci.b, 0x00000000, 0b00110011 )
  
  TEST_UIMM6_ZERODEST( 38, pv.shufflei2.sci.b, 0x7ddbcb85, 0b00001100 )
  TEST_UIMM6_ZERODEST( 39, pv.shufflei2.sci.b, 0xa73354fe, 0b00001010 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
