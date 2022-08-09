# See LICENSE for license details.

#*****************************************************************************
# pv.shuffle.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.shuffle.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.shuffle.sci.h, 0x22112211, 0x44332211, 0b00000000 )
  TEST_UIMM6_OP( 3, pv.shuffle.sci.h, 0x22114433, 0x44332211, 0b00000001 )
  TEST_UIMM6_OP( 4, pv.shuffle.sci.h, 0x44332211, 0x44332211, 0b00000010 )
  TEST_UIMM6_OP( 5, pv.shuffle.sci.h, 0x44334433, 0x44332211, 0b00000011 )
  TEST_UIMM6_OP( 6, pv.shuffle.sci.h, 0x12791279, 0x1279594b, 0b00111011 )
  TEST_UIMM6_OP( 7, pv.shuffle.sci.h, 0xeedbeedb, 0x381beedb, 0b00100000 )
  TEST_UIMM6_OP( 8, pv.shuffle.sci.h, 0xd5e65b87, 0xd5e65b87, 0b00100010 )
  TEST_UIMM6_OP( 9, pv.shuffle.sci.h, 0x0e920e92, 0x008f0e92, 0b00010000 )
  TEST_UIMM6_OP( 10, pv.shuffle.sci.h, 0x6951a981, 0x6951a981, 0b00010010 )
  TEST_UIMM6_OP( 11, pv.shuffle.sci.h, 0x0aac0aac, 0x0aac6e6d, 0b00111011 )
  TEST_UIMM6_OP( 12, pv.shuffle.sci.h, 0xf0ea8535, 0x8535f0ea, 0b00101001 )
  TEST_UIMM6_OP( 13, pv.shuffle.sci.h, 0xea89058d, 0x058dea89, 0b00100101 )
  TEST_UIMM6_OP( 14, pv.shuffle.sci.h, 0x0b3ba191, 0xa1910b3b, 0b00110101 )
  TEST_UIMM6_OP( 15, pv.shuffle.sci.h, 0xa1dca1dc, 0xe9d1a1dc, 0b00000000 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 16, pv.shuffle.sci.h, 0xa9c27e09, 0xa9c27e09, 0b00011010 )
  TEST_UIMM6_SRC1_EQ_DEST( 17, pv.shuffle.sci.h, 0xd7b3f4e2, 0xf4e2d7b3, 0b00111001 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 18, 0, pv.shuffle.sci.h, 0x78317831, 0x18c47831, 0b00110000 )
  TEST_UIMM6_SRC1_BYPASS( 19, 1, pv.shuffle.sci.h, 0x60e8b8c5, 0xb8c560e8, 0b00010001 )
  TEST_UIMM6_SRC1_BYPASS( 20, 2, pv.shuffle.sci.h, 0x8301d1c5, 0xd1c58301, 0b00001101 )
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.shuffle.sci.h, 0xa686a686, 0xa6865bca, 0b00001111 )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.shuffle.sci.h, 0xd20fd20f, 0x2123d20f, 0b00110000 )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.shuffle.sci.h, 0x57740337, 0x57740337, 0b00101110 )
  
  TEST_UIMM6_DEST_BYPASS( 24, 0, pv.shuffle.sci.h, 0x7fa672de, 0x7fa672de, 0b00011110 )
  TEST_UIMM6_DEST_BYPASS( 25, 1, pv.shuffle.sci.h, 0x015c5cfa, 0x5cfa015c, 0b00111101 )
  TEST_UIMM6_DEST_BYPASS( 26, 2, pv.shuffle.sci.h, 0x2c452c45, 0xc2282c45, 0b00000000 )
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.shuffle.sci.h, 0xa9100ac4, 0xa9100ac4, 0b00010010 )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.shuffle.sci.h, 0x54f154f1, 0x07c854f1, 0b00010100 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.shuffle.sci.h, 0x88c788c7, 0x1d1388c7, 0b00000000 )
  
  

  TEST_UIMM6_ZEROSRC1( 30, pv.shuffle.sci.h, 0x00000000, 0b00010011 )
  TEST_UIMM6_ZEROSRC1( 31, pv.shuffle.sci.h, 0x00000000, 0b00111001 )
  
  TEST_UIMM6_ZERODEST( 32, pv.shuffle.sci.h, 0x789f3ae0, 0b00110010 )
  TEST_UIMM6_ZERODEST( 33, pv.shuffle.sci.h, 0x9183ee83, 0b00001011 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
