# See LICENSE for license details.

#*****************************************************************************
# pv.add.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.add.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.add.sci.h, 0x7f9d7d9b, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.add.sci.h, 0x80618264, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.add.sci.h, 0x00212243, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.add.sci.h, 0x599164d6, 0x598b64d0, 0x006 )
  TEST_SIMM6_OP( 6, pv.add.sci.h, 0xc9c55d4a, 0xc9e25d67, 0xffffffe3 )
  TEST_SIMM6_OP( 7, pv.add.sci.h, 0xc42fdbff, 0xc417dbe7, 0x018 )
  TEST_SIMM6_OP( 8, pv.add.sci.h, 0x6c13245e, 0x6bf72442, 0x01c )
  TEST_SIMM6_OP( 9, pv.add.sci.h, 0x86fc6248, 0x86df622b, 0x01d )
  TEST_SIMM6_OP( 10, pv.add.sci.h, 0x57aa21e3, 0x579c21d5, 0x00e )
  TEST_SIMM6_OP( 11, pv.add.sci.h, 0x713576af, 0x714176bb, 0xfffffff4 )
  TEST_SIMM6_OP( 12, pv.add.sci.h, 0x60c0c215, 0x60b9c20e, 0x007 )
  TEST_SIMM6_OP( 13, pv.add.sci.h, 0x4b5b6ffe, 0x4b4f6ff2, 0x00c )
  TEST_SIMM6_OP( 14, pv.add.sci.h, 0x8d31a2d0, 0x8d1ea2bd, 0x013 )
  TEST_SIMM6_OP( 15, pv.add.sci.h, 0x77b0604e, 0x77bc605a, 0xfffffff4 )
  TEST_SIMM6_OP( 16, pv.add.sci.h, 0x8822b4a0, 0x880db48b, 0x015 )
  TEST_SIMM6_OP( 17, pv.add.sci.h, 0x5edfffe9, 0x5ed8ffe2, 0x007 )
  TEST_SIMM6_OP( 18, pv.add.sci.h, 0x4e5990ad, 0x4e5990ad, 0x000 )
  TEST_SIMM6_OP( 19, pv.add.sci.h, 0x30ebd417, 0x30e5d411, 0x006 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.add.sci.h, 0xb9c169d1, 0xb9ca69da, 0xfffffff7 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.add.sci.h, 0x839bd5b0, 0x8393d5a8, 0x008 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.add.sci.h, 0xe63c771b, 0xe6387717, 0x004 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.add.sci.h, 0xde4f3b1b, 0xde453b11, 0x00a )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.add.sci.h, 0x7f739417, 0x7f66940a, 0x00d )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.add.sci.h, 0x65a82649, 0x65932634, 0x015 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.add.sci.h, 0xea241e89, 0xea211e86, 0x003 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.add.sci.h, 0x79c759d4, 0x79b059bd, 0x017 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.add.sci.h, 0x034f0c22, 0x03390c0c, 0x016 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.add.sci.h, 0xf645b7ee, 0xf64ab7f3, 0xfffffffb )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.add.sci.h, 0x0fd84eb0, 0x0fd64eae, 0x002 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.add.sci.h, 0xb3509a71, 0xb3589a79, 0xfffffff8 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.add.sci.h, 0x979173f9, 0x97ad7415, 0xffffffe4 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.add.sci.h, 0x8972027a, 0x898b0293, 0xffffffe7 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.add.sci.h, 0x000b000b, 0x00b )
  TEST_SIMM6_ZEROSRC1( 35, pv.add.sci.h, 0x00080008, 0x008 )
  
  TEST_SIMM6_ZERODEST( 36, pv.add.sci.h, 0x532ee551, 0xffffffe0 )
  TEST_SIMM6_ZERODEST( 37, pv.add.sci.h, 0x54320cbe, 0x001 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
