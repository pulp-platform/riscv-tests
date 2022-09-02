# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpne.sci.h, 0x00010001, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpne.sci.h, 0x00010001, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpne.sci.h, 0x00010001, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpne.sci.h, 0x00010001, 0x0ff20f87, 0xffffffe1 )
  TEST_SIMM6_OP( 6, pv.cmpne.sci.h, 0x00010001, 0x0ffe5504, 0x00e )
  TEST_SIMM6_OP( 7, pv.cmpne.sci.h, 0x00010001, 0x0ff764e4, 0xfffffffd )
  TEST_SIMM6_OP( 8, pv.cmpne.sci.h, 0x00010001, 0x0ff061e7, 0xffffffea )
  TEST_SIMM6_OP( 9, pv.cmpne.sci.h, 0x00010001, 0x0ff86c1e, 0xfffffff6 )
  TEST_SIMM6_OP( 10, pv.cmpne.sci.h, 0x00010001, 0x0ff5b45e, 0x006 )
  TEST_SIMM6_OP( 11, pv.cmpne.sci.h, 0x00010001, 0x0ffdb7c3, 0x00a )
  TEST_SIMM6_OP( 12, pv.cmpne.sci.h, 0x00010001, 0x0ff461cf, 0xffffffe4 )
  TEST_SIMM6_OP( 13, pv.cmpne.sci.h, 0x00010001, 0x0fff92f7, 0x01f )
  TEST_SIMM6_OP( 14, pv.cmpne.sci.h, 0x00010001, 0x0ff701b3, 0xffffffef )
  TEST_SIMM6_OP( 15, pv.cmpne.sci.h, 0x00010001, 0x0ffcb8dc, 0xffffffe6 )
  TEST_SIMM6_OP( 16, pv.cmpne.sci.h, 0x00010001, 0x0ff2d2de, 0xffffffe2 )
  TEST_SIMM6_OP( 17, pv.cmpne.sci.h, 0x00010001, 0x0ff8639e, 0xffffffea )
  TEST_SIMM6_OP( 18, pv.cmpne.sci.h, 0x00010001, 0x0ff48a19, 0x01e )
  TEST_SIMM6_OP( 19, pv.cmpne.sci.h, 0x00010001, 0x0ffbd018, 0x00d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpne.sci.h, 0x00010001, 0x0ffacfd5, 0x003 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpne.sci.h, 0x00010001, 0x0ff74f42, 0xfffffff4 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpne.sci.h, 0x00010001, 0x0ff33928, 0xfffffff6 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpne.sci.h, 0x00010001, 0x0ff9ecb4, 0x015 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpne.sci.h, 0x00010001, 0x0ff423f8, 0x006 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpne.sci.h, 0x00010001, 0x0ffbd9ae, 0xffffffeb )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpne.sci.h, 0x00010001, 0x0ffec856, 0x00b )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpne.sci.h, 0x00010001, 0x0ff8259b, 0x014 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpne.sci.h, 0x00010001, 0x0ffea891, 0xffffffe8 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpne.sci.h, 0x00010001, 0x0ff8b774, 0xffffffe4 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpne.sci.h, 0x00010001, 0x0ff44dcd, 0xfffffff6 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpne.sci.h, 0x00010001, 0x0ff7707a, 0x000 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpne.sci.h, 0x00010001, 0x0ff3836a, 0x000 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpne.sci.h, 0x00010001, 0x0ffa9d37, 0xffffffea )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpne.sci.h, 0x00010001, 0x008 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpne.sci.h, 0x00010001, 0x017 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpne.sci.h, 0x0ff80e23, 0x004 )
  TEST_SIMM6_ZERODEST( 37, pv.cmpne.sci.h, 0x0ff51775, 0x00f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
