# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpgt.sci.b, 0x01010101, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpgt.sci.b, 0x00010101, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpgt.sci.b, 0x00010101, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpgt.sci.b, 0x01010001, 0x5c4b9c7a, 0x00d )
  TEST_SIMM6_OP( 6, pv.cmpgt.sci.b, 0x01010001, 0x5321b561, 0xfffffffa )
  TEST_SIMM6_OP( 7, pv.cmpgt.sci.b, 0x00000001, 0xedc1e76a, 0x009 )
  TEST_SIMM6_OP( 8, pv.cmpgt.sci.b, 0x00010000, 0xf932f2e3, 0x01e )
  TEST_SIMM6_OP( 9, pv.cmpgt.sci.b, 0x00010001, 0x854dd902, 0x000 )
  TEST_SIMM6_OP( 10, pv.cmpgt.sci.b, 0x00000001, 0x8392d42b, 0xfffffff2 )
  TEST_SIMM6_OP( 11, pv.cmpgt.sci.b, 0x01000101, 0x64d46611, 0xffffffe6 )
  TEST_SIMM6_OP( 12, pv.cmpgt.sci.b, 0x01000001, 0x5cc28037, 0x00f )
  TEST_SIMM6_OP( 13, pv.cmpgt.sci.b, 0x00000000, 0x9415ab05, 0x01e )
  TEST_SIMM6_OP( 14, pv.cmpgt.sci.b, 0x00010100, 0xc9410dad, 0xffffffe1 )
  TEST_SIMM6_OP( 15, pv.cmpgt.sci.b, 0x00010000, 0xa772ead9, 0x008 )
  TEST_SIMM6_OP( 16, pv.cmpgt.sci.b, 0x01010000, 0x14619de2, 0xffffffea )
  TEST_SIMM6_OP( 17, pv.cmpgt.sci.b, 0x01000101, 0x1e9b1df7, 0xffffffe9 )
  TEST_SIMM6_OP( 18, pv.cmpgt.sci.b, 0x01000000, 0x3bbda9e9, 0xfffffffd )
  TEST_SIMM6_OP( 19, pv.cmpgt.sci.b, 0x00010000, 0xc6e985e0, 0xffffffe0 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpgt.sci.b, 0x01010001, 0x563ca64f, 0x014 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpgt.sci.b, 0x00000100, 0xe9ee369f, 0xfffffffd )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpgt.sci.b, 0x00010001, 0x034cf06e, 0x014 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpgt.sci.b, 0x00010101, 0xd57c6f1c, 0x004 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpgt.sci.b, 0x00000101, 0xcb87644b, 0xffffffe5 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpgt.sci.b, 0x01000001, 0x54a0a961, 0x01d )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpgt.sci.b, 0x01010100, 0x167953bd, 0xffffffe4 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpgt.sci.b, 0x00010000, 0x8a44d3f2, 0x011 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpgt.sci.b, 0x00010001, 0x853fc97a, 0xfffffffd )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpgt.sci.b, 0x00010001, 0xe272d82e, 0x01e )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpgt.sci.b, 0x01000001, 0x2483c319, 0xffffffed )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpgt.sci.b, 0x01010001, 0x6212bf6b, 0xfffffff8 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpgt.sci.b, 0x01010100, 0x392412b9, 0x005 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpgt.sci.b, 0x01000000, 0x378caba8, 0x01c )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpgt.sci.b, 0x00000000, 0x019 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpgt.sci.b, 0x00000000, 0x00e )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpgt.sci.b, 0xaedcebd4, 0x01a )
  TEST_SIMM6_ZERODEST( 37, pv.cmpgt.sci.b, 0x111ceb25, 0x01a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
