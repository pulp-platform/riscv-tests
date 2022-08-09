# See LICENSE for license details.

#*****************************************************************************
# pv.shufflei3.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.shufflei3.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.shufflei3.sci.b, 0x44111111, 0x44332211, 0b00000000 )
  TEST_UIMM6_OP( 3, pv.shufflei3.sci.b, 0x44111122, 0x44332211, 0b00000001 )
  TEST_UIMM6_OP( 4, pv.shufflei3.sci.b, 0x44111133, 0x44332211, 0b00000010 )
  TEST_UIMM6_OP( 5, pv.shufflei3.sci.b, 0x44111144, 0x44332211, 0b00000011 )
  TEST_UIMM6_OP( 6, pv.shufflei3.sci.b, 0x44112211, 0x44332211, 0b00000100 )
  TEST_UIMM6_OP( 7, pv.shufflei3.sci.b, 0x44113311, 0x44332211, 0b00001000 )
  TEST_UIMM6_OP( 8, pv.shufflei3.sci.b, 0x44114411, 0x44332211, 0b00001100 )
  TEST_UIMM6_OP( 9, pv.shufflei3.sci.b, 0x44221111, 0x44332211, 0b00010000 )
  TEST_UIMM6_OP( 10, pv.shufflei3.sci.b, 0x44331111, 0x44332211, 0b00100000 )
  TEST_UIMM6_OP( 11, pv.shufflei3.sci.b, 0x44441111, 0x44332211, 0b00110000 )
  TEST_UIMM6_OP( 12, pv.shufflei3.sci.b, 0x4296c2c2, 0x4296b9c2, 0b00100000 )
  TEST_UIMM6_OP( 13, pv.shufflei3.sci.b, 0x99598d99, 0x9959318d, 0b00100011 )
  TEST_UIMM6_OP( 14, pv.shufflei3.sci.b, 0x04f00404, 0x04f032e3, 0b00101111 )
  TEST_UIMM6_OP( 15, pv.shufflei3.sci.b, 0x55e35590, 0x55e39690, 0b00101100 )
  TEST_UIMM6_OP( 16, pv.shufflei3.sci.b, 0x15151548, 0x1548738c, 0b00111110 )
  TEST_UIMM6_OP( 17, pv.shufflei3.sci.b, 0x1afa941a, 0x1a9410fa, 0b00001011 )
  TEST_UIMM6_OP( 18, pv.shufflei3.sci.b, 0x88011d1d, 0x880e1d01, 0b00000101 )
  TEST_UIMM6_OP( 19, pv.shufflei3.sci.b, 0xea40e640, 0xeae6f340, 0b00001000 )
  TEST_UIMM6_OP( 20, pv.shufflei3.sci.b, 0x63636363, 0x63f737db, 0b00111111 )
  TEST_UIMM6_OP( 21, pv.shufflei3.sci.b, 0x805d5dd1, 0x80495dd1, 0b00010100 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 22, pv.shufflei3.sci.b, 0xe6a9a99f, 0xe64c9fa9, 0b00000001 )
  TEST_UIMM6_SRC1_EQ_DEST( 23, pv.shufflei3.sci.b, 0xd60e0e51, 0xd60c510e, 0b00000001 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.shufflei3.sci.b, 0x5d5d80db, 0x5ddb802f, 0b00110110 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.shufflei3.sci.b, 0xc00e0e45, 0xc045560e, 0b00000010 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.shufflei3.sci.b, 0x7373c68a, 0x738ac651, 0b00110110 )
  TEST_UIMM6_SRC1_BYPASS( 27, 0, pv.shufflei3.sci.b, 0xc1f1c1f1, 0xc13df19e, 0b00011101 )
  TEST_UIMM6_SRC1_BYPASS( 28, 1, pv.shufflei3.sci.b, 0xc01e0d0d, 0xc01e0dbc, 0b00100101 )
  TEST_UIMM6_SRC1_BYPASS( 29, 2, pv.shufflei3.sci.b, 0xd80909d8, 0xd809b378, 0b00101011 )
  
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.shufflei3.sci.b, 0x9c916b9c, 0x9c6b913e, 0b00011011 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.shufflei3.sci.b, 0x6c3bf23b, 0x6c9af23b, 0b00000100 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.shufflei3.sci.b, 0xa6c67777, 0xa6c6c777, 0b00100000 )
  TEST_UIMM6_DEST_BYPASS( 33, 0, pv.shufflei3.sci.b, 0xa3668aa0, 0xa38a66a0, 0b00011000 )
  TEST_UIMM6_DEST_BYPASS( 34, 1, pv.shufflei3.sci.b, 0x5635dc56, 0x56b135dc, 0b00010011 )
  TEST_UIMM6_DEST_BYPASS( 35, 2, pv.shufflei3.sci.b, 0x25aed725, 0x2520d7ae, 0b00000111 )
  
  

  TEST_UIMM6_ZEROSRC1( 36, pv.shufflei3.sci.b, 0x00000000, 0b00111110 )
  TEST_UIMM6_ZEROSRC1( 37, pv.shufflei3.sci.b, 0x00000000, 0b00000000 )
  
  TEST_UIMM6_ZERODEST( 38, pv.shufflei3.sci.b, 0x522464ee, 0b00100111 )
  TEST_UIMM6_ZERODEST( 39, pv.shufflei3.sci.b, 0x323cdd33, 0b00101001 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
