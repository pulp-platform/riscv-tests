# See LICENSE for license details.

#*****************************************************************************
# pv.sub.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.sub.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.sub.sci.b, 0x605f5e5d, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.sub.sci.b, 0xa0a1a2a4, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.sub.sci.b, 0xf0011223, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.sub.sci.b, 0x9328bcdb, 0x9a2fc3e2, 0x007 )
  TEST_SIMM6_OP( 6, pv.sub.sci.b, 0x917d5caf, 0x8f7b5aad, 0xfffffffe )
  TEST_SIMM6_OP( 7, pv.sub.sci.b, 0x4a95ae32, 0x327d961a, 0xffffffe8 )
  TEST_SIMM6_OP( 8, pv.sub.sci.b, 0xb4fd0914, 0xc30c1823, 0x00f )
  TEST_SIMM6_OP( 9, pv.sub.sci.b, 0xeca5bd42, 0xdd96ae33, 0xfffffff1 )
  TEST_SIMM6_OP( 10, pv.sub.sci.b, 0xfcae209a, 0x16c83ab4, 0x01a )
  TEST_SIMM6_OP( 11, pv.sub.sci.b, 0xea96fd7f, 0xcd79e062, 0xffffffe3 )
  TEST_SIMM6_OP( 12, pv.sub.sci.b, 0xae0c264f, 0xc3213b64, 0x015 )
  TEST_SIMM6_OP( 13, pv.sub.sci.b, 0xf283b94d, 0x11a2d86c, 0x01f )
  TEST_SIMM6_OP( 14, pv.sub.sci.b, 0x4f48d001, 0x4d46ceff, 0xfffffffe )
  TEST_SIMM6_OP( 15, pv.sub.sci.b, 0x588338b2, 0x578237b1, 0xffffffff )
  TEST_SIMM6_OP( 16, pv.sub.sci.b, 0xd9348816, 0xcd287c0a, 0xfffffff4 )
  TEST_SIMM6_OP( 17, pv.sub.sci.b, 0xe1d88ef0, 0xe1d88ef0, 0x000 )
  TEST_SIMM6_OP( 18, pv.sub.sci.b, 0xc075b586, 0xa95e9e6f, 0xffffffe9 )
  TEST_SIMM6_OP( 19, pv.sub.sci.b, 0xb8afeee8, 0xaba2e1db, 0xfffffff3 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.sub.sci.b, 0xb710d781, 0xd32cf39d, 0x01c )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.sub.sci.b, 0x5411fe74, 0x510efb71, 0xfffffffd )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.sub.sci.b, 0xf15f56d5, 0xdb4940bf, 0xffffffea )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.sub.sci.b, 0x4aedee08, 0x3fe2e3fd, 0xfffffff5 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.sub.sci.b, 0x96d9b9ca, 0x79bc9cad, 0xffffffe3 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.sub.sci.b, 0x3ca02210, 0x45a92b19, 0x009 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.sub.sci.b, 0xae162171, 0xc42c3787, 0x016 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.sub.sci.b, 0xde6a5b4f, 0xc955463a, 0xffffffeb )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.sub.sci.b, 0x809eff92, 0x8fad0ea1, 0x00f )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.sub.sci.b, 0x43717a92, 0x406e778f, 0xfffffffd )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.sub.sci.b, 0x0c29e6d1, 0x2441fee9, 0x018 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.sub.sci.b, 0xe3c86e7e, 0xeed37989, 0x00b )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.sub.sci.b, 0x32b9d312, 0x1ea5bffe, 0xffffffec )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.sub.sci.b, 0xd05a1b9a, 0xe77132b1, 0x017 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.sub.sci.b, 0xfcfcfcfc, 0x004 )
  TEST_SIMM6_ZEROSRC1( 35, pv.sub.sci.b, 0x08080808, 0xfffffff8 )
  
  TEST_SIMM6_ZERODEST( 36, pv.sub.sci.b, 0xf87e5ce8, 0x008 )
  TEST_SIMM6_ZERODEST( 37, pv.sub.sci.b, 0x409b1496, 0x00d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
