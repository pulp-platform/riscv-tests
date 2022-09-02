# See LICENSE for license details.

#*****************************************************************************
# pv.max.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.max.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.max.sci.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.max.sci.b, 0xe0e0e0e0, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.max.sci.b, 0x10112233, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.max.sci.b, 0x1a1a1a1a, 0xc4d79a8d, 0x01a )
  TEST_SIMM6_OP( 6, pv.max.sci.b, 0x2ceb6deb, 0x2ca46db1, 0xffffffeb )
  TEST_SIMM6_OP( 7, pv.max.sci.b, 0x4f5d0404, 0x4f5d97d8, 0x004 )
  TEST_SIMM6_OP( 8, pv.max.sci.b, 0x0f0f0f0f, 0xb3f106e4, 0x00f )
  TEST_SIMM6_OP( 9, pv.max.sci.b, 0x135f4813, 0x955f480d, 0x013 )
  TEST_SIMM6_OP( 10, pv.max.sci.b, 0x704322e8, 0x704322a8, 0xffffffe8 )
  TEST_SIMM6_OP( 11, pv.max.sci.b, 0x43522ef4, 0x43522e9d, 0xfffffff4 )
  TEST_SIMM6_OP( 12, pv.max.sci.b, 0xf2f23846, 0x87cf3846, 0xfffffff2 )
  TEST_SIMM6_OP( 13, pv.max.sci.b, 0x0d1e0d0d, 0xad1eff9f, 0x00d )
  TEST_SIMM6_OP( 14, pv.max.sci.b, 0x02020202, 0xf38b9d95, 0x002 )
  TEST_SIMM6_OP( 15, pv.max.sci.b, 0xececec34, 0xa6d6b534, 0xffffffec )
  TEST_SIMM6_OP( 16, pv.max.sci.b, 0x10101010, 0x96f7cc07, 0x010 )
  TEST_SIMM6_OP( 17, pv.max.sci.b, 0x491e4324, 0x49d54324, 0x01e )
  TEST_SIMM6_OP( 18, pv.max.sci.b, 0xf640f6f6, 0xaa4084dc, 0xfffffff6 )
  TEST_SIMM6_OP( 19, pv.max.sci.b, 0xf7f7f7f7, 0x8c97b09d, 0xfffffff7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.max.sci.b, 0x201f501f, 0x20a350da, 0x01f )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.max.sci.b, 0x0000006e, 0xd2f4ea6e, 0x000 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.max.sci.b, 0x1e1e791e, 0x8dcd79af, 0x01e )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.max.sci.b, 0x51131313, 0x510eb8dd, 0x013 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.max.sci.b, 0x1a1a361a, 0xd9cd3606, 0x01a )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.max.sci.b, 0x162f0202, 0x162fe19a, 0x002 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.max.sci.b, 0x3eefef5b, 0x3e8fc75b, 0xffffffef )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.max.sci.b, 0x1c63521c, 0xb2635280, 0x01c )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.max.sci.b, 0xfbf54f06, 0xfb944f06, 0xfffffff5 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.max.sci.b, 0x605c5fec, 0x605c5fa0, 0xffffffec )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.max.sci.b, 0xf4f92060, 0xb5f92060, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.max.sci.b, 0x3ce1e1e9, 0x3ccebee9, 0xffffffe1 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.max.sci.b, 0x0d0d1044, 0x06c81044, 0x00d )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.max.sci.b, 0x0f260f6b, 0xab260d6b, 0x00f )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.max.sci.b, 0x04040404, 0x004 )
  TEST_SIMM6_ZEROSRC1( 35, pv.max.sci.b, 0x00000000, 0xfffffffb )
  
  TEST_SIMM6_ZERODEST( 36, pv.max.sci.b, 0x88079cac, 0xffffffe3 )
  TEST_SIMM6_ZERODEST( 37, pv.max.sci.b, 0x85362f18, 0xfffffffe )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
