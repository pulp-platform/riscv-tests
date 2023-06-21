# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmplt.sci.b, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmplt.sci.b, 0x01000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmplt.sci.b, 0x00000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmplt.sci.b, 0x01010101, 0xebcb8ec0, 0xffffffee )
  TEST_SIMM6_OP( 6, pv.cmplt.sci.b, 0x00000100, 0x355b8f4d, 0x01f )
  TEST_SIMM6_OP( 7, pv.cmplt.sci.b, 0x00000001, 0x386420c8, 0xffffffef )
  TEST_SIMM6_OP( 8, pv.cmplt.sci.b, 0x01000001, 0xfc7b35fb, 0x018 )
  TEST_SIMM6_OP( 9, pv.cmplt.sci.b, 0x00000101, 0x3b23d2bd, 0xffffffee )
  TEST_SIMM6_OP( 10, pv.cmplt.sci.b, 0x00010001, 0x38dd77bb, 0x01a )
  TEST_SIMM6_OP( 11, pv.cmplt.sci.b, 0x00000101, 0x1b4081bd, 0xffffffea )
  TEST_SIMM6_OP( 12, pv.cmplt.sci.b, 0x01000100, 0x996bb466, 0xfffffff1 )
  TEST_SIMM6_OP( 13, pv.cmplt.sci.b, 0x01000000, 0xc7745a6a, 0x01e )
  TEST_SIMM6_OP( 14, pv.cmplt.sci.b, 0x00010101, 0x20ef10fe, 0x014 )
  TEST_SIMM6_OP( 15, pv.cmplt.sci.b, 0x00000101, 0x1341bda8, 0x00c )
  TEST_SIMM6_OP( 16, pv.cmplt.sci.b, 0x00000100, 0x630dac23, 0xffffffea )
  TEST_SIMM6_OP( 17, pv.cmplt.sci.b, 0x00000100, 0x6866900f, 0x007 )
  TEST_SIMM6_OP( 18, pv.cmplt.sci.b, 0x00010000, 0x44bf614e, 0x000 )
  TEST_SIMM6_OP( 19, pv.cmplt.sci.b, 0x01010001, 0xc7f521f4, 0x00b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmplt.sci.b, 0x01010000, 0xab83635e, 0x007 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmplt.sci.b, 0x01000100, 0x99429f7b, 0x001 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmplt.sci.b, 0x00000100, 0x453d8258, 0x003 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmplt.sci.b, 0x01000001, 0xc64a62d2, 0x01f )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmplt.sci.b, 0x01010001, 0xb8e77412, 0x017 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmplt.sci.b, 0x01000101, 0xe049ea9c, 0xfffffffd )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmplt.sci.b, 0x01010001, 0x9bb258b8, 0x00a )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmplt.sci.b, 0x01010101, 0x80f3a49a, 0x01d )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmplt.sci.b, 0x00000100, 0x14700975, 0x011 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmplt.sci.b, 0x01000100, 0x8a4b8e1d, 0x00a )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmplt.sci.b, 0x01010101, 0xa2eefbb7, 0x017 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmplt.sci.b, 0x00010000, 0x40b41a74, 0xffffffe6 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmplt.sci.b, 0x01000001, 0xe16961d6, 0x001 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmplt.sci.b, 0x01000000, 0x8f673f42, 0x015 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmplt.sci.b, 0x01010101, 0x01b )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmplt.sci.b, 0x00000000, 0xffffffe1 )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmplt.sci.b, 0x1674c1fe, 0xffffffe1 )
  TEST_SIMM6_ZERODEST( 37, pv.cmplt.sci.b, 0xc5e203c9, 0xffffffff )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
