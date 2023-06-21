# See LICENSE for license details.

#*****************************************************************************
# pv.abs.b
#-----------------------------------------------------------------------------
#
# Test pv.abs.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_R_OP( 2, pv.abs.b, 0x00000000, 0x00000000 )
  TEST_R_OP( 3, pv.abs.b, 0x01010101, 0xffffffff )
  TEST_R_OP( 4, pv.abs.b, 0x00000001, 0x00000001 )
  TEST_R_OP( 5, pv.abs.b, 0x80000000, 0x80000000 )
  TEST_R_OP( 6, pv.abs.b, 0x7f010101, 0x7fffffff )
  TEST_R_OP( 7, pv.abs.b, 0x062e2b62, 0xfad22b62 )
  TEST_R_OP( 8, pv.abs.b, 0x33790e38, 0xcd870ec8 )
  TEST_R_OP( 9, pv.abs.b, 0x0444271f, 0xfcbcd91f )
  TEST_R_OP( 10, pv.abs.b, 0x21625071, 0x21625071 )
  TEST_R_OP( 11, pv.abs.b, 0x21327433, 0xdfce7433 )
  TEST_R_OP( 12, pv.abs.b, 0x79022f15, 0x79fe2feb )
  TEST_R_OP( 13, pv.abs.b, 0x5b105932, 0x5bf059ce )
  TEST_R_OP( 14, pv.abs.b, 0x061b6035, 0x06e560cb )
  TEST_R_OP( 15, pv.abs.b, 0x423a4f35, 0xbec64f35 )
  TEST_R_OP( 16, pv.abs.b, 0x6e24672e, 0x6e2499d2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_R_SRC1_EQ_DEST( 17, pv.abs.b, 0x2d7e2608, 0xd37e26f8 )
  TEST_R_SRC1_EQ_DEST( 18, pv.abs.b, 0x0c794a78, 0xf4874a78 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_R_DEST_BYPASS( 19, 0, pv.abs.b, 0x58234b1e, 0x5823b51e )
  TEST_R_DEST_BYPASS( 20, 1, pv.abs.b, 0x6a786703, 0x967899fd )
  TEST_R_DEST_BYPASS( 21, 2, pv.abs.b, 0x64350846, 0x64cb0846 )
  TEST_R_DEST_BYPASS( 22, 0, pv.abs.b, 0x2c6d800e, 0x2c6d80f2 )
  TEST_R_DEST_BYPASS( 23, 1, pv.abs.b, 0x41176101, 0xbf179fff )
  TEST_R_DEST_BYPASS( 24, 2, pv.abs.b, 0x73755f53, 0x8d75a153 )
  

  TEST_R_ZEROSRC1( 25, pv.abs.b, 0x00000000 )
  TEST_R_ZEROSRC1( 26, pv.abs.b, 0x00000000 )
  
  TEST_R_ZERODEST( 27, pv.abs.b, 0x77023cea )
  TEST_R_ZERODEST( 28, pv.abs.b, 0xb3a821a9 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
