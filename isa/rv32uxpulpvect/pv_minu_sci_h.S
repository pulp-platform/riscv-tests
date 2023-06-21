# See LICENSE for license details.

#*****************************************************************************
# pv.minu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.minu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.minu.sci.h, 0x001f001f, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.minu.sci.h, 0x00100010, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.minu.sci.h, 0x003c003c, 0x6108cb39, 0x03c )
  TEST_UIMM6_OP( 5, pv.minu.sci.h, 0x00250025, 0x1639a129, 0x025 )
  TEST_UIMM6_OP( 6, pv.minu.sci.h, 0x00290029, 0xf8beb0b7, 0x029 )
  TEST_UIMM6_OP( 7, pv.minu.sci.h, 0x003c003c, 0xc4a0e6f1, 0x03c )
  TEST_UIMM6_OP( 8, pv.minu.sci.h, 0x00050005, 0x719f4fc5, 0x005 )
  TEST_UIMM6_OP( 9, pv.minu.sci.h, 0x002a002a, 0x753b7dab, 0x02a )
  TEST_UIMM6_OP( 10, pv.minu.sci.h, 0x00380038, 0x22ed3f1a, 0x038 )
  TEST_UIMM6_OP( 11, pv.minu.sci.h, 0x000d000d, 0x841e5625, 0x00d )
  TEST_UIMM6_OP( 12, pv.minu.sci.h, 0x002d002d, 0x96d7e52b, 0x02d )
  TEST_UIMM6_OP( 13, pv.minu.sci.h, 0x00040004, 0x87d70cc7, 0x004 )
  TEST_UIMM6_OP( 14, pv.minu.sci.h, 0x00170017, 0x51c70266, 0x017 )
  TEST_UIMM6_OP( 15, pv.minu.sci.h, 0x003e003e, 0x073cf0d7, 0x03e )
  TEST_UIMM6_OP( 16, pv.minu.sci.h, 0x00300030, 0x3905dfd2, 0x030 )
  TEST_UIMM6_OP( 17, pv.minu.sci.h, 0x00300030, 0xe2df9b5c, 0x030 )
  TEST_UIMM6_OP( 18, pv.minu.sci.h, 0x00090009, 0xc039de1a, 0x009 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.minu.sci.h, 0x001b001b, 0xac34c07e, 0x01b )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.minu.sci.h, 0x002d002d, 0x81e2428d, 0x02d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.minu.sci.h, 0x000b000b, 0x8e2a5a9c, 0x00b )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.minu.sci.h, 0x00150015, 0x2c4a2851, 0x015 )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.minu.sci.h, 0x00240024, 0xb547c79a, 0x024 )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.minu.sci.h, 0x003c003c, 0x697eb50e, 0x03c )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.minu.sci.h, 0x00040004, 0xa52e74ab, 0x004 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.minu.sci.h, 0x000d000d, 0x8a3dc34b, 0x00d )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.minu.sci.h, 0x002f002f, 0xcf9e056f, 0x02f )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.minu.sci.h, 0x00200020, 0xaa18104a, 0x020 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.minu.sci.h, 0x00350035, 0xb7f4253c, 0x035 )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.minu.sci.h, 0x00100010, 0x8c89c06f, 0x010 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.minu.sci.h, 0x00100010, 0x4d5ef572, 0x010 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.minu.sci.h, 0x00360036, 0x4505b51a, 0x036 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.minu.sci.h, 0x00000000, 0x03b )
  TEST_UIMM6_ZEROSRC1( 34, pv.minu.sci.h, 0x00000000, 0x02c )
  
  TEST_UIMM6_ZERODEST( 35, pv.minu.sci.h, 0x70c9e3ce, 0x01d )
  TEST_UIMM6_ZERODEST( 36, pv.minu.sci.h, 0xf5f799ee, 0x03d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
