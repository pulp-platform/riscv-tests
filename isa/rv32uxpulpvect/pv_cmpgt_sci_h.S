# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpgt.sci.h, 0x00010001, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpgt.sci.h, 0x00010001, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpgt.sci.h, 0x00010001, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpgt.sci.h, 0x00000001, 0xaf511a78, 0x000 )
  TEST_SIMM6_OP( 6, pv.cmpgt.sci.h, 0x00000001, 0xb2b463f4, 0x00b )
  TEST_SIMM6_OP( 7, pv.cmpgt.sci.h, 0x00010000, 0x2336efcd, 0x00e )
  TEST_SIMM6_OP( 8, pv.cmpgt.sci.h, 0x00010000, 0x23d7d29a, 0x00d )
  TEST_SIMM6_OP( 9, pv.cmpgt.sci.h, 0x00000001, 0xcc4a7a4c, 0x014 )
  TEST_SIMM6_OP( 10, pv.cmpgt.sci.h, 0x00010000, 0x7e34cf69, 0x01b )
  TEST_SIMM6_OP( 11, pv.cmpgt.sci.h, 0x00000000, 0x8a558361, 0xffffffe6 )
  TEST_SIMM6_OP( 12, pv.cmpgt.sci.h, 0x00010000, 0x49b6d6a7, 0x01d )
  TEST_SIMM6_OP( 13, pv.cmpgt.sci.h, 0x00000001, 0xd41d49c9, 0xffffffec )
  TEST_SIMM6_OP( 14, pv.cmpgt.sci.h, 0x00000001, 0xd1eb5810, 0xfffffffa )
  TEST_SIMM6_OP( 15, pv.cmpgt.sci.h, 0x00010001, 0x457951a3, 0xffffffe3 )
  TEST_SIMM6_OP( 16, pv.cmpgt.sci.h, 0x00010000, 0x6319c3bf, 0x002 )
  TEST_SIMM6_OP( 17, pv.cmpgt.sci.h, 0x00010000, 0x22f6849c, 0xfffffffb )
  TEST_SIMM6_OP( 18, pv.cmpgt.sci.h, 0x00010000, 0x2d5391e4, 0xfffffff3 )
  TEST_SIMM6_OP( 19, pv.cmpgt.sci.h, 0x00010001, 0x66d0762e, 0x007 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpgt.sci.h, 0x00010000, 0x456cc787, 0x005 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpgt.sci.h, 0x00010000, 0x771997d7, 0x007 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpgt.sci.h, 0x00010000, 0x533493ae, 0x01b )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpgt.sci.h, 0x00000000, 0x8d11d17c, 0x013 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpgt.sci.h, 0x00000001, 0x94344d9a, 0x01e )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpgt.sci.h, 0x00010000, 0x28cad819, 0x004 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpgt.sci.h, 0x00000000, 0x8204a0d1, 0x01b )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpgt.sci.h, 0x00010001, 0x6d485ff4, 0x008 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpgt.sci.h, 0x00000000, 0x83a7afb5, 0xffffffe7 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpgt.sci.h, 0x00000000, 0xf5e6e1e5, 0x000 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpgt.sci.h, 0x00010000, 0x4a50b84d, 0xffffffed )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpgt.sci.h, 0x00010001, 0x156609e0, 0xffffffe3 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpgt.sci.h, 0x00000000, 0x9f789b76, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpgt.sci.h, 0x00010000, 0x6619a582, 0xffffffe5 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpgt.sci.h, 0x00000000, 0x01a )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpgt.sci.h, 0x00010001, 0xfffffff4 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpgt.sci.h, 0xfa80e982, 0xfffffff0 )
  TEST_SIMM6_ZERODEST( 37, pv.cmpgt.sci.h, 0xb2438c27, 0xffffffff )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
