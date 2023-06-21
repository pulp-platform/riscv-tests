# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmple.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmple.sci.h, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmple.sci.h, 0x00000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmple.sci.h, 0x00000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmple.sci.h, 0x00010000, 0xe9ec11f0, 0xfffffff4 )
  TEST_SIMM6_OP( 6, pv.cmple.sci.h, 0x00000001, 0x3b5dcea9, 0xfffffffb )
  TEST_SIMM6_OP( 7, pv.cmple.sci.h, 0x00010001, 0xd317a58a, 0xfffffff8 )
  TEST_SIMM6_OP( 8, pv.cmple.sci.h, 0x00010000, 0xaf151ee9, 0x004 )
  TEST_SIMM6_OP( 9, pv.cmple.sci.h, 0x00010001, 0x9b358976, 0xfffffff9 )
  TEST_SIMM6_OP( 10, pv.cmple.sci.h, 0x00010000, 0xdae478ea, 0xffffffe5 )
  TEST_SIMM6_OP( 11, pv.cmple.sci.h, 0x00010001, 0xec318b4f, 0xffffffe2 )
  TEST_SIMM6_OP( 12, pv.cmple.sci.h, 0x00000001, 0x6f6fbc53, 0x01a )
  TEST_SIMM6_OP( 13, pv.cmple.sci.h, 0x00000000, 0x3035597f, 0x011 )
  TEST_SIMM6_OP( 14, pv.cmple.sci.h, 0x00000000, 0x06d737e7, 0xfffffff8 )
  TEST_SIMM6_OP( 15, pv.cmple.sci.h, 0x00010000, 0xcd994a5e, 0x015 )
  TEST_SIMM6_OP( 16, pv.cmple.sci.h, 0x00010001, 0xc2bcfe09, 0x011 )
  TEST_SIMM6_OP( 17, pv.cmple.sci.h, 0x00000001, 0x3b79bf84, 0x00d )
  TEST_SIMM6_OP( 18, pv.cmple.sci.h, 0x00000000, 0x73e00b42, 0x01b )
  TEST_SIMM6_OP( 19, pv.cmple.sci.h, 0x00010000, 0x9fa43c89, 0x005 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmple.sci.h, 0x00000000, 0x00a847b3, 0xfffffff7 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmple.sci.h, 0x00000001, 0x73dd8eef, 0x002 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmple.sci.h, 0x00000001, 0x5951f4a6, 0x014 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmple.sci.h, 0x00010000, 0xcc9d1a42, 0xfffffff1 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmple.sci.h, 0x00010001, 0xdf8bf78c, 0x004 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmple.sci.h, 0x00000001, 0x3296a230, 0xffffffe8 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmple.sci.h, 0x00010000, 0x873c6372, 0xfffffff3 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmple.sci.h, 0x00010001, 0xde8fb9e0, 0x003 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmple.sci.h, 0x00000000, 0x7c9d763f, 0x00e )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmple.sci.h, 0x00000001, 0x6907ea03, 0x01f )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmple.sci.h, 0x00010001, 0x8d78ca14, 0xfffffff8 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmple.sci.h, 0x00000000, 0x1c614a61, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmple.sci.h, 0x00010000, 0x9a8418e9, 0x01f )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmple.sci.h, 0x00000001, 0x6cf8fce7, 0xfffffff9 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmple.sci.h, 0x00000000, 0xfffffff4 )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmple.sci.h, 0x00000000, 0xffffffef )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmple.sci.h, 0x4b1799c7, 0x007 )
  TEST_SIMM6_ZERODEST( 37, pv.cmple.sci.h, 0xcd65327e, 0xfffffffc )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
