# See LICENSE for license details.

#*****************************************************************************
# pv.sll.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.sll.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.sll.sci.b, 0x81818181, 0x81818181, 0x00 )
  TEST_UIMM6_OP( 3, pv.sll.sci.b, 0x80808080, 0x81818181, 0x1f )
  TEST_UIMM6_OP( 4, pv.sll.sci.b, 0x81818181, 0x81818181, 0x10 )
  TEST_UIMM6_OP( 5, pv.sll.sci.b, 0xb958b6ad, 0xb958b6ad, 0x18 )
  TEST_UIMM6_OP( 6, pv.sll.sci.b, 0x1cac1482, 0x8ed60ac1, 0x11 )
  TEST_UIMM6_OP( 7, pv.sll.sci.b, 0x00004040, 0xd424f10d, 0x0e )
  TEST_UIMM6_OP( 8, pv.sll.sci.b, 0xc0f01090, 0x1c0fb1c9, 0x04 )
  TEST_UIMM6_OP( 9, pv.sll.sci.b, 0x80000000, 0xdf9674d8, 0x17 )
  TEST_UIMM6_OP( 10, pv.sll.sci.b, 0x060ed0fc, 0x8387e87e, 0x01 )
  TEST_UIMM6_OP( 11, pv.sll.sci.b, 0xa8983000, 0x157306a0, 0x0b )
  TEST_UIMM6_OP( 12, pv.sll.sci.b, 0x2ca0c05a, 0x9650e02d, 0x01 )
  TEST_UIMM6_OP( 13, pv.sll.sci.b, 0x00c04040, 0x1863a1b5, 0x1e )
  TEST_UIMM6_OP( 14, pv.sll.sci.b, 0x80800000, 0x5d6300ce, 0x1f )
  TEST_UIMM6_OP( 15, pv.sll.sci.b, 0xc06000d0, 0x186c201a, 0x03 )
  TEST_UIMM6_OP( 16, pv.sll.sci.b, 0xaa1a600a, 0xd50d3085, 0x01 )
  TEST_UIMM6_OP( 17, pv.sll.sci.b, 0xc00060c0, 0x4e10d39e, 0x1d )
  TEST_UIMM6_OP( 18, pv.sll.sci.b, 0x808080c0, 0x9e8e72f7, 0x1e )
  TEST_UIMM6_OP( 19, pv.sll.sci.b, 0x428f0635, 0x428f0635, 0x08 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.sll.sci.b, 0x50bc3d73, 0x50bc3d73, 0x08 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.sll.sci.b, 0x08d88fbc, 0x08d88fbc, 0x18 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.sll.sci.b, 0xac2d00a0, 0xac2d00a0, 0x08 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.sll.sci.b, 0x3020b008, 0x86243681, 0x1b )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.sll.sci.b, 0x4a6cc24a, 0xa536e1a5, 0x11 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.sll.sci.b, 0x20a02060, 0x7105192b, 0x15 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.sll.sci.b, 0xa05020c0, 0x0af502ac, 0x0c )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.sll.sci.b, 0x00808000, 0x02d7f7e2, 0x17 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.sll.sci.b, 0xce88c62e, 0xe744e317, 0x19 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.sll.sci.b, 0xe0e03040, 0x0eee5344, 0x0c )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.sll.sci.b, 0x03bd2367, 0x03bd2367, 0x08 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.sll.sci.b, 0x8ab89a48, 0x455c4d24, 0x09 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.sll.sci.b, 0x18f41488, 0x06bdc5e2, 0x1a )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.sll.sci.b, 0x00008080, 0x946069fd, 0x1f )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.sll.sci.b, 0x00000000, 0x0d )
  TEST_UIMM6_ZEROSRC1( 35, pv.sll.sci.b, 0x00000000, 0x13 )
  
  TEST_UIMM6_ZERODEST( 36, pv.sll.sci.b, 0xdc341c1b, 0x05 )
  TEST_UIMM6_ZERODEST( 37, pv.sll.sci.b, 0x7b541e8f, 0x02 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
