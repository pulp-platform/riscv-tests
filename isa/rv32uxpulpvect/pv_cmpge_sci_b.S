# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmpge.sci.b, 0x01010101, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmpge.sci.b, 0x00010101, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmpge.sci.b, 0x01010101, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmpge.sci.b, 0x01000101, 0x64d2fd2a, 0xfffffff0 )
  TEST_SIMM6_OP( 6, pv.cmpge.sci.b, 0x01000001, 0x2cc4ef7d, 0xfffffff2 )
  TEST_SIMM6_OP( 7, pv.cmpge.sci.b, 0x00000101, 0xadac363d, 0x00c )
  TEST_SIMM6_OP( 8, pv.cmpge.sci.b, 0x00010101, 0xa5666c2d, 0x012 )
  TEST_SIMM6_OP( 9, pv.cmpge.sci.b, 0x01010101, 0x344b1dff, 0xffffffed )
  TEST_SIMM6_OP( 10, pv.cmpge.sci.b, 0x00010100, 0x925a5fc6, 0x014 )
  TEST_SIMM6_OP( 11, pv.cmpge.sci.b, 0x01010101, 0x7173657b, 0x018 )
  TEST_SIMM6_OP( 12, pv.cmpge.sci.b, 0x00010100, 0xb11858ad, 0xfffffff9 )
  TEST_SIMM6_OP( 13, pv.cmpge.sci.b, 0x00010101, 0xa2193b59, 0xffffffee )
  TEST_SIMM6_OP( 14, pv.cmpge.sci.b, 0x01000000, 0x04c9f6d6, 0xfffffff9 )
  TEST_SIMM6_OP( 15, pv.cmpge.sci.b, 0x01010101, 0x775b1d1b, 0xffffffeb )
  TEST_SIMM6_OP( 16, pv.cmpge.sci.b, 0x01000001, 0x0995d120, 0xfffffff0 )
  TEST_SIMM6_OP( 17, pv.cmpge.sci.b, 0x00010101, 0xd242f962, 0xfffffff9 )
  TEST_SIMM6_OP( 18, pv.cmpge.sci.b, 0x01010000, 0xf111b5a8, 0xffffffe5 )
  TEST_SIMM6_OP( 19, pv.cmpge.sci.b, 0x01010001, 0x691fc259, 0x01c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmpge.sci.b, 0x00000000, 0xeab3b092, 0xfffffffc )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmpge.sci.b, 0x00010001, 0xae0ae453, 0x009 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmpge.sci.b, 0x01010101, 0x36631163, 0xfffffffb )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmpge.sci.b, 0x00000101, 0x80a63512, 0xffffffe5 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmpge.sci.b, 0x01010001, 0x2425bb65, 0x009 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmpge.sci.b, 0x01010101, 0x3401104b, 0xfffffffe )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmpge.sci.b, 0x01010100, 0x28397ad1, 0xfffffff3 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmpge.sci.b, 0x00000001, 0xe7f1b51a, 0xfffffffd )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmpge.sci.b, 0x00000000, 0xe398cda7, 0xfffffff0 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmpge.sci.b, 0x01010001, 0x61f7925a, 0xffffffee )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmpge.sci.b, 0x00010000, 0xd333bdb0, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmpge.sci.b, 0x01010101, 0x18012578, 0xfffffff7 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmpge.sci.b, 0x01010001, 0x7b569f3b, 0xfffffffd )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmpge.sci.b, 0x01010101, 0x10490f39, 0xfffffff8 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmpge.sci.b, 0x00000000, 0x010 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmpge.sci.b, 0x01010101, 0xffffffe0 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmpge.sci.b, 0x50de23c7, 0x00b )
  TEST_SIMM6_ZERODEST( 37, pv.cmpge.sci.b, 0xc1fb8107, 0x01e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
