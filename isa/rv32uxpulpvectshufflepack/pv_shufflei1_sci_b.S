# See LICENSE for license details.

#*****************************************************************************
# pv.shufflei1.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.shufflei1.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.shufflei1.sci.b, 0x22111111, 0x44332211, 0b00000000 )
  TEST_UIMM6_OP( 3, pv.shufflei1.sci.b, 0x22111122, 0x44332211, 0b00000001 )
  TEST_UIMM6_OP( 4, pv.shufflei1.sci.b, 0x22111133, 0x44332211, 0b00000010 )
  TEST_UIMM6_OP( 5, pv.shufflei1.sci.b, 0x22111144, 0x44332211, 0b00000011 )
  TEST_UIMM6_OP( 6, pv.shufflei1.sci.b, 0x22112211, 0x44332211, 0b00000100 )
  TEST_UIMM6_OP( 7, pv.shufflei1.sci.b, 0x22113311, 0x44332211, 0b00001000 )
  TEST_UIMM6_OP( 8, pv.shufflei1.sci.b, 0x22114411, 0x44332211, 0b00001100 )
  TEST_UIMM6_OP( 9, pv.shufflei1.sci.b, 0x22221111, 0x44332211, 0b00010000 )
  TEST_UIMM6_OP( 10, pv.shufflei1.sci.b, 0x22331111, 0x44332211, 0b00100000 )
  TEST_UIMM6_OP( 11, pv.shufflei1.sci.b, 0x22441111, 0x44332211, 0b00110000 )
  TEST_UIMM6_OP( 12, pv.shufflei1.sci.b, 0x01161616, 0x165b0126, 0b00111111 )
  TEST_UIMM6_OP( 13, pv.shufflei1.sci.b, 0xedcaa7a7, 0xcaa7edb3, 0b00111010 )
  TEST_UIMM6_OP( 14, pv.shufflei1.sci.b, 0x77b7b77c, 0x7c8877b7, 0b00000011 )
  TEST_UIMM6_OP( 15, pv.shufflei1.sci.b, 0xa31a1adc, 0xdc5da31a, 0b00000011 )
  TEST_UIMM6_OP( 16, pv.shufflei1.sci.b, 0xee7c7c7c, 0x0a7cee76, 0b00101010 )
  TEST_UIMM6_OP( 17, pv.shufflei1.sci.b, 0x1f1f1ff6, 0x4ad91ff6, 0b00010100 )
  TEST_UIMM6_OP( 18, pv.shufflei1.sci.b, 0x9b8bb219, 0xb28b9b19, 0b00101100 )
  TEST_UIMM6_OP( 19, pv.shufflei1.sci.b, 0xa46666a4, 0x665ea431, 0b00111101 )
  TEST_UIMM6_OP( 20, pv.shufflei1.sci.b, 0x8f0d8f85, 0x850d8f74, 0b00100111 )
  TEST_UIMM6_OP( 21, pv.shufflei1.sci.b, 0xd211d2ac, 0xdbacd211, 0b00000110 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 22, pv.shufflei1.sci.b, 0x9ebdbda3, 0xbd7f9ea3, 0b00111100 )
  TEST_UIMM6_SRC1_EQ_DEST( 23, pv.shufflei1.sci.b, 0x4e084ec7, 0xc71c4e08, 0b00000111 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.shufflei1.sci.b, 0xe006d8d8, 0x06b8e0d8, 0b00110000 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.shufflei1.sci.b, 0x08840391, 0x84030891, 0b00111000 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.shufflei1.sci.b, 0x25125c5c, 0x125c2571, 0b00111010 )
  TEST_UIMM6_SRC1_BYPASS( 27, 0, pv.shufflei1.sci.b, 0x8181eabb, 0xeabb81bd, 0b00011110 )
  TEST_UIMM6_SRC1_BYPASS( 28, 1, pv.shufflei1.sci.b, 0xfc805e5e, 0x7680fc5e, 0b00100000 )
  TEST_UIMM6_SRC1_BYPASS( 29, 2, pv.shufflei1.sci.b, 0x663a7dd8, 0x3ad8667d, 0b00110010 )
  
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.shufflei1.sci.b, 0x102a1013, 0x6a2a1013, 0b00100100 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.shufflei1.sci.b, 0xd9efefd9, 0x2f44d9ef, 0b00000001 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.shufflei1.sci.b, 0xb8b84141, 0x413bb816, 0b00011111 )
  TEST_UIMM6_DEST_BYPASS( 33, 0, pv.shufflei1.sci.b, 0xf3fe8080, 0xfe73f380, 0b00110000 )
  TEST_UIMM6_DEST_BYPASS( 34, 1, pv.shufflei1.sci.b, 0x3f4e3f3f, 0x644e3f5d, 0b00100101 )
  TEST_UIMM6_DEST_BYPASS( 35, 2, pv.shufflei1.sci.b, 0x181818d5, 0x5abf18d5, 0b00010100 )
  
  

  TEST_UIMM6_ZEROSRC1( 36, pv.shufflei1.sci.b, 0x00000000, 0b00011000 )
  TEST_UIMM6_ZEROSRC1( 37, pv.shufflei1.sci.b, 0x00000000, 0b00011100 )
  
  TEST_UIMM6_ZERODEST( 38, pv.shufflei1.sci.b, 0x942a19c7, 0b00010110 )
  TEST_UIMM6_ZERODEST( 39, pv.shufflei1.sci.b, 0xa1229bb4, 0b00000010 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
