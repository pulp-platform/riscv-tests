# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmple.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmple.sci.b, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmple.sci.b, 0x01000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmple.sci.b, 0x01000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmple.sci.b, 0x00000001, 0x5b5061de, 0xffffffe2 )
  TEST_SIMM6_OP( 6, pv.cmple.sci.b, 0x00000000, 0xf8302d61, 0xffffffea )
  TEST_SIMM6_OP( 7, pv.cmple.sci.b, 0x00000000, 0x7532ef41, 0xffffffe2 )
  TEST_SIMM6_OP( 8, pv.cmple.sci.b, 0x01010000, 0xc6ea5a18, 0x004 )
  TEST_SIMM6_OP( 9, pv.cmple.sci.b, 0x00000001, 0x6b4f70de, 0xfffffffb )
  TEST_SIMM6_OP( 10, pv.cmple.sci.b, 0x01000001, 0xa22d22a0, 0xfffffff3 )
  TEST_SIMM6_OP( 11, pv.cmple.sci.b, 0x01000001, 0xf67870fd, 0x01a )
  TEST_SIMM6_OP( 12, pv.cmple.sci.b, 0x01000001, 0xda2a6da2, 0xfffffffb )
  TEST_SIMM6_OP( 13, pv.cmple.sci.b, 0x00010000, 0x27bd737f, 0x013 )
  TEST_SIMM6_OP( 14, pv.cmple.sci.b, 0x00000001, 0x715c5fcd, 0x015 )
  TEST_SIMM6_OP( 15, pv.cmple.sci.b, 0x00000101, 0x267dadf6, 0x007 )
  TEST_SIMM6_OP( 16, pv.cmple.sci.b, 0x01010001, 0xd0073686, 0x009 )
  TEST_SIMM6_OP( 17, pv.cmple.sci.b, 0x01000101, 0xdb2bd5a0, 0x011 )
  TEST_SIMM6_OP( 18, pv.cmple.sci.b, 0x01000100, 0xad26ff23, 0x000 )
  TEST_SIMM6_OP( 19, pv.cmple.sci.b, 0x01000001, 0x0b3c4bc7, 0x01a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmple.sci.b, 0x01000001, 0x83784ea7, 0x01c )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmple.sci.b, 0x01010100, 0xe694cb1b, 0xfffffff4 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmple.sci.b, 0x01010001, 0xeff5148a, 0x008 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmple.sci.b, 0x00010100, 0x44fc0f7d, 0x011 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmple.sci.b, 0x00010101, 0x63b401f7, 0x00b )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmple.sci.b, 0x01000101, 0xd017bdfa, 0x012 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmple.sci.b, 0x00000001, 0x2364779c, 0xfffffffa )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmple.sci.b, 0x00000001, 0x7b364ddf, 0x015 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmple.sci.b, 0x00000100, 0x251bf030, 0x002 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmple.sci.b, 0x00000001, 0x693c29bd, 0x01a )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmple.sci.b, 0x00000001, 0x497d67ae, 0xfffffffc )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmple.sci.b, 0x01010101, 0x92d008aa, 0x017 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmple.sci.b, 0x00000001, 0xff1e60d3, 0xffffffe0 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmple.sci.b, 0x01000100, 0xb95dd420, 0x00d )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmple.sci.b, 0x00000000, 0xfffffff5 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmple.sci.b, 0x00000000, 0xfffffffd )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmple.sci.b, 0xfa6b7df5, 0x01b )
  TEST_SIMM6_ZERODEST( 37, pv.cmple.sci.b, 0xb8773acd, 0x008 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
