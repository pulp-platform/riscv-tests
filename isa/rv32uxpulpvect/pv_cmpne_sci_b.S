# See LICENSE for license details.

#*****************************************************************************
# pv.cmpne.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpne.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpne.sci.b, 0x01010101, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpne.sci.b, 0x01010101, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpne.sci.b, 0x00010101, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpne.sci.b, 0x01010101, 0x0ffa0a1e, 0xffffffe2 )
  TEST_SIMM6_OP( 6, pv.cmpne.sci.b, 0x01010101, 0x0ff387bd, 0x005 )
  TEST_SIMM6_OP( 7, pv.cmpne.sci.b, 0x01010101, 0x0ffa4997, 0x00b )
  TEST_SIMM6_OP( 8, pv.cmpne.sci.b, 0x01010101, 0x0ff869f4, 0xffffffe5 )
  TEST_SIMM6_OP( 9, pv.cmpne.sci.b, 0x01010101, 0x0ff076ce, 0x01b )
  TEST_SIMM6_OP( 10, pv.cmpne.sci.b, 0x01010101, 0x0ff72837, 0xfffffff4 )
  TEST_SIMM6_OP( 11, pv.cmpne.sci.b, 0x00010101, 0x0ff8d5f1, 0x00f )
  TEST_SIMM6_OP( 12, pv.cmpne.sci.b, 0x01010101, 0x0ffcbe5d, 0x003 )
  TEST_SIMM6_OP( 13, pv.cmpne.sci.b, 0x01010101, 0x0ff6bbe7, 0xffffffee )
  TEST_SIMM6_OP( 14, pv.cmpne.sci.b, 0x01010101, 0x0ff78a1d, 0x01a )
  TEST_SIMM6_OP( 15, pv.cmpne.sci.b, 0x01010101, 0x0ff2d816, 0xffffffea )
  TEST_SIMM6_OP( 16, pv.cmpne.sci.b, 0x01010101, 0x0ff53e49, 0x019 )
  TEST_SIMM6_OP( 17, pv.cmpne.sci.b, 0x01010101, 0x0ff5815e, 0xfffffffe )
  TEST_SIMM6_OP( 18, pv.cmpne.sci.b, 0x01010101, 0x0ff85ff1, 0x004 )
  TEST_SIMM6_OP( 19, pv.cmpne.sci.b, 0x01010101, 0x0ff7f775, 0x00e )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpne.sci.b, 0x01010101, 0x0ff3a7cd, 0x00a )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpne.sci.b, 0x01010101, 0x0ffdaed4, 0xfffffff5 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpne.sci.b, 0x01010101, 0x0ffecf2d, 0x019 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpne.sci.b, 0x01010101, 0x0ff4e7cb, 0x010 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpne.sci.b, 0x01010101, 0x0ff49fa6, 0x018 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpne.sci.b, 0x01010101, 0x0fff178a, 0x003 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpne.sci.b, 0x01000101, 0x0ff036b4, 0xfffffff0 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpne.sci.b, 0x01010101, 0x0ff950e3, 0xfffffffc )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpne.sci.b, 0x01010101, 0x0fffd471, 0x01b )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpne.sci.b, 0x01010101, 0x0fff1f59, 0x007 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpne.sci.b, 0x01010101, 0x0ffdb665, 0x00d )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpne.sci.b, 0x01010101, 0x0ffaed99, 0x01a )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpne.sci.b, 0x01010101, 0x0ff9489e, 0x010 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpne.sci.b, 0x01010101, 0x0ffb393e, 0xfffffff5 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpne.sci.b, 0x01010101, 0xfffffff4 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpne.sci.b, 0x01010101, 0x00e )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpne.sci.b, 0x0ff1aa1e, 0xffffffed )
  TEST_SIMM6_ZERODEST( 37, pv.cmpne.sci.b, 0x0ff19e6e, 0x00b )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
