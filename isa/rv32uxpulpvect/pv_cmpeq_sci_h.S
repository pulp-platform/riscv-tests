# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpeq.sci.h, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpeq.sci.h, 0x00000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpeq.sci.h, 0x00000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpeq.sci.h, 0x00000000, 0x0ffecf1b, 0x015 )
  TEST_SIMM6_OP( 6, pv.cmpeq.sci.h, 0x00000000, 0x0ff42408, 0xfffffffb )
  TEST_SIMM6_OP( 7, pv.cmpeq.sci.h, 0x00000000, 0x0fffcb83, 0x018 )
  TEST_SIMM6_OP( 8, pv.cmpeq.sci.h, 0x00000000, 0x0ff42b9d, 0x013 )
  TEST_SIMM6_OP( 9, pv.cmpeq.sci.h, 0x00000000, 0x0ff42351, 0x01e )
  TEST_SIMM6_OP( 10, pv.cmpeq.sci.h, 0x00000000, 0x0ff7a9b5, 0x001 )
  TEST_SIMM6_OP( 11, pv.cmpeq.sci.h, 0x00000000, 0x0ffcd92d, 0x01c )
  TEST_SIMM6_OP( 12, pv.cmpeq.sci.h, 0x00000000, 0x0ff5aed6, 0xffffffec )
  TEST_SIMM6_OP( 13, pv.cmpeq.sci.h, 0x00000000, 0x0ffa483d, 0xffffffee )
  TEST_SIMM6_OP( 14, pv.cmpeq.sci.h, 0x00000000, 0x0ffdf821, 0x013 )
  TEST_SIMM6_OP( 15, pv.cmpeq.sci.h, 0x00000000, 0x0ff91659, 0x01f )
  TEST_SIMM6_OP( 16, pv.cmpeq.sci.h, 0x00000000, 0x0ff88e51, 0xffffffe3 )
  TEST_SIMM6_OP( 17, pv.cmpeq.sci.h, 0x00000000, 0x0ffddd05, 0xfffffff9 )
  TEST_SIMM6_OP( 18, pv.cmpeq.sci.h, 0x00000000, 0x0ff6905b, 0xffffffee )
  TEST_SIMM6_OP( 19, pv.cmpeq.sci.h, 0x00000000, 0x0ffc36b4, 0x003 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpeq.sci.h, 0x00000000, 0x0ffea766, 0x017 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpeq.sci.h, 0x00000000, 0x0ff72df1, 0xffffffe3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpeq.sci.h, 0x00000000, 0x0ff03a51, 0xffffffef )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpeq.sci.h, 0x00000000, 0x0ff6eeee, 0x00e )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpeq.sci.h, 0x00000000, 0x0ff36e7d, 0xfffffffc )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpeq.sci.h, 0x00000000, 0x0ff0f24d, 0x00e )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpeq.sci.h, 0x00000000, 0x0ff1cd7d, 0x01b )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpeq.sci.h, 0x00000000, 0x0ff34ea3, 0x012 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpeq.sci.h, 0x00000000, 0x0ffa0ca4, 0xfffffffa )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpeq.sci.h, 0x00000000, 0x0ff5b129, 0xfffffff9 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpeq.sci.h, 0x00000000, 0x0ff5fd72, 0x01b )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpeq.sci.h, 0x00000000, 0x0ff1c748, 0x01e )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpeq.sci.h, 0x00000000, 0x0ffaa2e1, 0x00e )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpeq.sci.h, 0x00000000, 0x0fff3f0b, 0xfffffffa )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpeq.sci.h, 0x00000000, 0xfffffff1 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpeq.sci.h, 0x00000000, 0xfffffffe )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpeq.sci.h, 0x0ff1c9a7, 0xffffffe9 )
  TEST_SIMM6_ZERODEST( 37, pv.cmpeq.sci.h, 0x0ffe9c96, 0x01f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
