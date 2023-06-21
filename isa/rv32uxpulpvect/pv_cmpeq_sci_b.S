# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpeq.sci.b, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpeq.sci.b, 0x00000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpeq.sci.b, 0x01000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpeq.sci.b, 0x00000000, 0x0ff67bfe, 0xffffffe7 )
  TEST_SIMM6_OP( 6, pv.cmpeq.sci.b, 0x00000000, 0x0ff7d2f0, 0x016 )
  TEST_SIMM6_OP( 7, pv.cmpeq.sci.b, 0x00000000, 0x0fffd3b9, 0xfffffffd )
  TEST_SIMM6_OP( 8, pv.cmpeq.sci.b, 0x00000000, 0x0ffb1df6, 0x014 )
  TEST_SIMM6_OP( 9, pv.cmpeq.sci.b, 0x00000000, 0x0ff36eef, 0x018 )
  TEST_SIMM6_OP( 10, pv.cmpeq.sci.b, 0x00010000, 0x0ff1829b, 0xfffffff1 )
  TEST_SIMM6_OP( 11, pv.cmpeq.sci.b, 0x00000000, 0x0ff5213c, 0xffffffff )
  TEST_SIMM6_OP( 12, pv.cmpeq.sci.b, 0x00000000, 0x0ff938bc, 0xfffffff8 )
  TEST_SIMM6_OP( 13, pv.cmpeq.sci.b, 0x00000000, 0x0ffc5046, 0xfffffff6 )
  TEST_SIMM6_OP( 14, pv.cmpeq.sci.b, 0x00000000, 0x0ffdda0e, 0x01f )
  TEST_SIMM6_OP( 15, pv.cmpeq.sci.b, 0x00000000, 0x0ff57045, 0xfffffffb )
  TEST_SIMM6_OP( 16, pv.cmpeq.sci.b, 0x00000000, 0x0fffd429, 0x009 )
  TEST_SIMM6_OP( 17, pv.cmpeq.sci.b, 0x00000000, 0x0ffbec8d, 0x00b )
  TEST_SIMM6_OP( 18, pv.cmpeq.sci.b, 0x00000000, 0x0ff6ff1a, 0xffffffef )
  TEST_SIMM6_OP( 19, pv.cmpeq.sci.b, 0x00000000, 0x0ffb5645, 0xffffffeb )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpeq.sci.b, 0x00000000, 0x0ffea398, 0xffffffe2 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpeq.sci.b, 0x00000000, 0x0ffb7f76, 0xfffffffd )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpeq.sci.b, 0x00000000, 0x0ff0f0f7, 0xfffffffb )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpeq.sci.b, 0x00000000, 0x0ff50a84, 0x00d )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpeq.sci.b, 0x00000000, 0x0ffeb381, 0x008 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpeq.sci.b, 0x00000000, 0x0ffcbd9f, 0x005 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpeq.sci.b, 0x00000000, 0x0ff1d410, 0xfffffff6 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpeq.sci.b, 0x00000000, 0x0ff0b830, 0xfffffff6 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpeq.sci.b, 0x00000000, 0x0ff64eb9, 0xffffffee )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpeq.sci.b, 0x00000000, 0x0ffd555b, 0xfffffffa )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpeq.sci.b, 0x00000000, 0x0ff70281, 0xfffffff5 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpeq.sci.b, 0x00000000, 0x0ff6c466, 0xffffffe3 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpeq.sci.b, 0x00000000, 0x0fff6d40, 0xfffffffe )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpeq.sci.b, 0x00000000, 0x0ffc1e01, 0x015 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpeq.sci.b, 0x00000000, 0xfffffff0 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpeq.sci.b, 0x00000000, 0x012 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpeq.sci.b, 0x0ffffd02, 0x002 )
  TEST_SIMM6_ZERODEST( 37, pv.cmpeq.sci.b, 0x0ffbe5fd, 0xffffffed )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
