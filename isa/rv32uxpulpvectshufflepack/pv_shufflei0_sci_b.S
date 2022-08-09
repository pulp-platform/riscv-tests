# See LICENSE for license details.

#*****************************************************************************
# pv.shufflei0.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.shufflei0.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.shufflei0.sci.b, 0x11111111, 0x44332211, 0b00000000 )
  TEST_UIMM6_OP( 3, pv.shufflei0.sci.b, 0x11111122, 0x44332211, 0b00000001 )
  TEST_UIMM6_OP( 4, pv.shufflei0.sci.b, 0x11111133, 0x44332211, 0b00000010 )
  TEST_UIMM6_OP( 5, pv.shufflei0.sci.b, 0x11111144, 0x44332211, 0b00000011 )
  TEST_UIMM6_OP( 6, pv.shufflei0.sci.b, 0x11112211, 0x44332211, 0b00000100 )
  TEST_UIMM6_OP( 7, pv.shufflei0.sci.b, 0x11113311, 0x44332211, 0b00001000 )
  TEST_UIMM6_OP( 8, pv.shufflei0.sci.b, 0x11114411, 0x44332211, 0b00001100 )
  TEST_UIMM6_OP( 9, pv.shufflei0.sci.b, 0x11221111, 0x44332211, 0b00010000 )
  TEST_UIMM6_OP( 10, pv.shufflei0.sci.b, 0x11331111, 0x44332211, 0b00100000 )
  TEST_UIMM6_OP( 11, pv.shufflei0.sci.b, 0x11441111, 0x44332211, 0b00110000 )
  TEST_UIMM6_OP( 12, pv.shufflei0.sci.b, 0xab72dc72, 0x72dc0aab, 0b00111011 )
  TEST_UIMM6_OP( 13, pv.shufflei0.sci.b, 0x838c7b24, 0x7b248c83, 0b00011110 )
  TEST_UIMM6_OP( 14, pv.shufflei0.sci.b, 0x27272c2c, 0xa0e22c27, 0b00000101 )
  TEST_UIMM6_OP( 15, pv.shufflei0.sci.b, 0xea71eaea, 0x223871ea, 0b00010000 )
  TEST_UIMM6_OP( 16, pv.shufflei0.sci.b, 0x56562f1f, 0x861f2f56, 0b00000110 )
  TEST_UIMM6_OP( 17, pv.shufflei0.sci.b, 0xc74242c7, 0x51428ac7, 0b00101000 )
  TEST_UIMM6_OP( 18, pv.shufflei0.sci.b, 0xcef4dece, 0xdef4d1ce, 0b00101100 )
  TEST_UIMM6_OP( 19, pv.shufflei0.sci.b, 0x1add1a1a, 0xdd4fe21a, 0b00110000 )
  TEST_UIMM6_OP( 20, pv.shufflei0.sci.b, 0x1d1d7d2c, 0x7d2ceb1d, 0b00001110 )
  TEST_UIMM6_OP( 21, pv.shufflei0.sci.b, 0x6a75c9fd, 0xc975fd6a, 0b00101101 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 22, pv.shufflei0.sci.b, 0xd4ceceea, 0x84eaced4, 0b00010110 )
  TEST_UIMM6_SRC1_EQ_DEST( 23, pv.shufflei0.sci.b, 0x75c18c8c, 0x8ce4c175, 0b00011111 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.shufflei0.sci.b, 0x58111158, 0x09261158, 0b00010100 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.shufflei0.sci.b, 0x310f8d7a, 0x8d7a0f31, 0b00011110 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.shufflei0.sci.b, 0x76fc8477, 0x8477fc76, 0b00011110 )
  TEST_UIMM6_SRC1_BYPASS( 27, 0, pv.shufflei0.sci.b, 0x6c3b3b6c, 0xb53b2b6c, 0b00101000 )
  TEST_UIMM6_SRC1_BYPASS( 28, 1, pv.shufflei0.sci.b, 0xde32de7f, 0x7f327fde, 0b00100011 )
  TEST_UIMM6_SRC1_BYPASS( 29, 2, pv.shufflei0.sci.b, 0x6078ed60, 0x7817ed60, 0b00110100 )
  
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.shufflei0.sci.b, 0x0a0ac80a, 0x0ec8bc0a, 0b00001000 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.shufflei0.sci.b, 0x68ca98ca, 0xcabc9868, 0b00110111 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.shufflei0.sci.b, 0xe9e935e9, 0x351ecae9, 0b00001100 )
  TEST_UIMM6_DEST_BYPASS( 33, 0, pv.shufflei0.sci.b, 0x3093a6a6, 0xf993a630, 0b00100101 )
  TEST_UIMM6_DEST_BYPASS( 34, 1, pv.shufflei0.sci.b, 0xe31b1b36, 0x1b36a4e3, 0b00111110 )
  TEST_UIMM6_DEST_BYPASS( 35, 2, pv.shufflei0.sci.b, 0x08b6b6b6, 0xb6b6e608, 0b00111010 )
  
  

  TEST_UIMM6_ZEROSRC1( 36, pv.shufflei0.sci.b, 0x00000000, 0b00101110 )
  TEST_UIMM6_ZEROSRC1( 37, pv.shufflei0.sci.b, 0x00000000, 0b00110101 )
  
  TEST_UIMM6_ZERODEST( 38, pv.shufflei0.sci.b, 0xa6e9c23c, 0b00100011 )
  TEST_UIMM6_ZERODEST( 39, pv.shufflei0.sci.b, 0xb05d0ac8, 0b00100001 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
