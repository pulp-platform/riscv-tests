# See LICENSE for license details.

#*****************************************************************************
# pv.sra.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.sra.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.sra.sci.h, 0x40000000, 0x40000000, 0x00 )
  TEST_UIMM6_OP( 3, pv.sra.sci.h, 0xffff0000, 0x80000000, 0x1f )
  TEST_UIMM6_OP( 4, pv.sra.sci.h, 0x40000000, 0x40000000, 0x10 )
  TEST_UIMM6_OP( 5, pv.sra.sci.h, 0xfff0002c, 0xf07c2c04, 0x18 )
  TEST_UIMM6_OP( 6, pv.sra.sci.h, 0x000a0000, 0x568e0195, 0x1b )
  TEST_UIMM6_OP( 7, pv.sra.sci.h, 0xfc930084, 0x927f1081, 0x05 )
  TEST_UIMM6_OP( 8, pv.sra.sci.h, 0xfffe0001, 0x8f7a5f0b, 0x0e )
  TEST_UIMM6_OP( 9, pv.sra.sci.h, 0xfff6fff4, 0xb1aaa41a, 0x1b )
  TEST_UIMM6_OP( 10, pv.sra.sci.h, 0xffbcff84, 0xbc6b84d3, 0x08 )
  TEST_UIMM6_OP( 11, pv.sra.sci.h, 0xfffd0002, 0xa460550f, 0x0d )
  TEST_UIMM6_OP( 12, pv.sra.sci.h, 0x3d1f5548, 0x3d1f5548, 0x10 )
  TEST_UIMM6_OP( 13, pv.sra.sci.h, 0x0000ffff, 0x0946ea32, 0x1d )
  TEST_UIMM6_OP( 14, pv.sra.sci.h, 0xff0e00d2, 0xc3ab34a1, 0x06 )
  TEST_UIMM6_OP( 15, pv.sra.sci.h, 0x01f601aa, 0x7d816ab3, 0x06 )
  TEST_UIMM6_OP( 16, pv.sra.sci.h, 0x0042fe1c, 0x10868711, 0x16 )
  TEST_UIMM6_OP( 17, pv.sra.sci.h, 0xffddffaf, 0xeea8d79a, 0x17 )
  TEST_UIMM6_OP( 18, pv.sra.sci.h, 0x0000fffd, 0x0ad4da30, 0x1c )
  TEST_UIMM6_OP( 19, pv.sra.sci.h, 0x5240bf90, 0x5240bf90, 0x00 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.sra.sci.h, 0xe5ae00fc, 0x96b803f3, 0x12 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.sra.sci.h, 0xff280091, 0x942648b0, 0x17 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.sra.sci.h, 0xffff000d, 0xfb286894, 0x1b )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.sra.sci.h, 0x001d001a, 0x75bf6a90, 0x1a )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.sra.sci.h, 0x0000ffff, 0x25929e52, 0x0f )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.sra.sci.h, 0x0002ffd7, 0x0495afc9, 0x19 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.sra.sci.h, 0xfd63ffef, 0xd633fef9, 0x04 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.sra.sci.h, 0xfffffff1, 0xfe06c673, 0x0a )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.sra.sci.h, 0xfb3a046c, 0xb3a746c4, 0x14 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.sra.sci.h, 0xffc0ffd4, 0x81b7a898, 0x09 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.sra.sci.h, 0x23f5c1cd, 0x47ea839a, 0x11 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.sra.sci.h, 0xff1cff89, 0xc714e24a, 0x16 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.sra.sci.h, 0xfffdfff4, 0xee65a68b, 0x1b )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.sra.sci.h, 0x0000ffff, 0x5b7ff3aa, 0x1f )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.sra.sci.h, 0x00000000, 0x1f )
  TEST_UIMM6_ZEROSRC1( 35, pv.sra.sci.h, 0x00000000, 0x0a )
  
  TEST_UIMM6_ZERODEST( 36, pv.sra.sci.h, 0xc6eb03fe, 0x19 )
  TEST_UIMM6_ZERODEST( 37, pv.sra.sci.h, 0x7afc82a4, 0x13 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
