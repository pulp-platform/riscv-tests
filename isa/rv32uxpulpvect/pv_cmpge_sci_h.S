# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpge.sci.h, 0x00010001, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpge.sci.h, 0x00010001, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpge.sci.h, 0x00010001, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpge.sci.h, 0x00000000, 0xd162e289, 0x000 )
  TEST_SIMM6_OP( 6, pv.cmpge.sci.h, 0x00010001, 0x2f365673, 0xffffffec )
  TEST_SIMM6_OP( 7, pv.cmpge.sci.h, 0x00010001, 0x7bf534d6, 0xfffffff1 )
  TEST_SIMM6_OP( 8, pv.cmpge.sci.h, 0x00010000, 0x3b0988b5, 0xffffffed )
  TEST_SIMM6_OP( 9, pv.cmpge.sci.h, 0x00010000, 0x1862aa4e, 0xffffffe6 )
  TEST_SIMM6_OP( 10, pv.cmpge.sci.h, 0x00010000, 0x3d14c11a, 0x012 )
  TEST_SIMM6_OP( 11, pv.cmpge.sci.h, 0x00010001, 0x65c63c9d, 0xfffffff3 )
  TEST_SIMM6_OP( 12, pv.cmpge.sci.h, 0x00000000, 0xfe42b764, 0x00f )
  TEST_SIMM6_OP( 13, pv.cmpge.sci.h, 0x00000000, 0xc527fd19, 0xfffffff2 )
  TEST_SIMM6_OP( 14, pv.cmpge.sci.h, 0x00000000, 0xffd9b1d2, 0x017 )
  TEST_SIMM6_OP( 15, pv.cmpge.sci.h, 0x00000001, 0xf8bb043f, 0x002 )
  TEST_SIMM6_OP( 16, pv.cmpge.sci.h, 0x00010001, 0x4d161f02, 0xffffffed )
  TEST_SIMM6_OP( 17, pv.cmpge.sci.h, 0x00010001, 0x66c14284, 0xfffffff1 )
  TEST_SIMM6_OP( 18, pv.cmpge.sci.h, 0x00000000, 0x911ad9f0, 0x004 )
  TEST_SIMM6_OP( 19, pv.cmpge.sci.h, 0x00000001, 0xac5731f9, 0x017 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpge.sci.h, 0x00000001, 0xd3d920ae, 0xffffffea )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpge.sci.h, 0x00010001, 0x0efd1995, 0x01e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpge.sci.h, 0x00000000, 0xea7d9686, 0xfffffff9 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpge.sci.h, 0x00000001, 0xc9ed4232, 0xfffffff0 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpge.sci.h, 0x00010001, 0x0b982235, 0xffffffec )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpge.sci.h, 0x00000000, 0x819bdfab, 0xfffffffc )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpge.sci.h, 0x00000000, 0xa0a3f1e7, 0x00b )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpge.sci.h, 0x00010001, 0x436f6e05, 0x003 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpge.sci.h, 0x00000001, 0x82b62f54, 0x01b )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpge.sci.h, 0x00000001, 0xc08f0b99, 0x01c )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpge.sci.h, 0x00010000, 0x2235baa8, 0xfffffff9 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpge.sci.h, 0x00010001, 0x30346e30, 0xffffffeb )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpge.sci.h, 0x00000000, 0x9ebea939, 0xfffffff6 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpge.sci.h, 0x00000000, 0xce8a9f95, 0xfffffff9 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpge.sci.h, 0x00010001, 0xfffffff9 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpge.sci.h, 0x00000000, 0x014 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpge.sci.h, 0xa0270c78, 0xffffffee )
  TEST_SIMM6_ZERODEST( 37, pv.cmpge.sci.h, 0x1c3b3958, 0xfffffff0 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
