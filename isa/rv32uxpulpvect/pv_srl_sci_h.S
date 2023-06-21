# See LICENSE for license details.

#*****************************************************************************
# pv.srl.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.srl.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.srl.sci.h, 0x81818181, 0x81818181, 0x00 )
  TEST_UIMM6_OP( 3, pv.srl.sci.h, 0x00010001, 0x81818181, 0x1f )
  TEST_UIMM6_OP( 4, pv.srl.sci.h, 0x81818181, 0x81818181, 0x10 )
  TEST_UIMM6_OP( 5, pv.srl.sci.h, 0x0fa40406, 0xfa484061, 0x14 )
  TEST_UIMM6_OP( 6, pv.srl.sci.h, 0x00010002, 0x62b8a611, 0x1e )
  TEST_UIMM6_OP( 7, pv.srl.sci.h, 0x000b0004, 0x5ff822e6, 0x1b )
  TEST_UIMM6_OP( 8, pv.srl.sci.h, 0x291f2b8f, 0xa47cae3f, 0x12 )
  TEST_UIMM6_OP( 9, pv.srl.sci.h, 0x0038000e, 0xe07c39a0, 0x1a )
  TEST_UIMM6_OP( 10, pv.srl.sci.h, 0x00050005, 0xba92b92a, 0x0d )
  TEST_UIMM6_OP( 11, pv.srl.sci.h, 0x1e183144, 0x7863c512, 0x12 )
  TEST_UIMM6_OP( 12, pv.srl.sci.h, 0x068d0fad, 0x68d1fad7, 0x04 )
  TEST_UIMM6_OP( 13, pv.srl.sci.h, 0x00000001, 0x5977c182, 0x0f )
  TEST_UIMM6_OP( 14, pv.srl.sci.h, 0x00010002, 0x1fad2f4c, 0x0c )
  TEST_UIMM6_OP( 15, pv.srl.sci.h, 0x00000098, 0x00494c28, 0x07 )
  TEST_UIMM6_OP( 16, pv.srl.sci.h, 0x00050003, 0x5a173390, 0x0c )
  TEST_UIMM6_OP( 17, pv.srl.sci.h, 0x00010003, 0x16aa3967, 0x1c )
  TEST_UIMM6_OP( 18, pv.srl.sci.h, 0x0014001f, 0xa430f8d8, 0x1b )
  TEST_UIMM6_OP( 19, pv.srl.sci.h, 0x00040006, 0x9a8fcce6, 0x1d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.srl.sci.h, 0x0c4b0027, 0xc4b6027f, 0x04 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.srl.sci.h, 0x00030002, 0xc05aa04f, 0x0e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.srl.sci.h, 0x00010000, 0x9c203b86, 0x1f )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.srl.sci.h, 0x32d6318f, 0x65ac631e, 0x11 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.srl.sci.h, 0x1814189b, 0x6050626d, 0x12 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.srl.sci.h, 0x006805f2, 0x0d1fbe59, 0x15 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.srl.sci.h, 0x0005001e, 0x2873f1ae, 0x0b )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.srl.sci.h, 0x00020002, 0x8e3abe77, 0x1e )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.srl.sci.h, 0x00040006, 0x8b6fc469, 0x0d )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.srl.sci.h, 0xafc1cf3e, 0xafc1cf3e, 0x00 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.srl.sci.h, 0x038e26bb, 0x0e389aec, 0x02 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.srl.sci.h, 0x000f0016, 0x7b74b03b, 0x0b )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.srl.sci.h, 0x04b83bda, 0x12e2ef68, 0x12 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.srl.sci.h, 0x00110013, 0x89699996, 0x1b )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.srl.sci.h, 0x00000000, 0x07 )
  TEST_UIMM6_ZEROSRC1( 35, pv.srl.sci.h, 0x00000000, 0x03 )
  
  TEST_UIMM6_ZERODEST( 36, pv.srl.sci.h, 0x68ee8db9, 0x11 )
  TEST_UIMM6_ZERODEST( 37, pv.srl.sci.h, 0x7aae6d07, 0x03 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
