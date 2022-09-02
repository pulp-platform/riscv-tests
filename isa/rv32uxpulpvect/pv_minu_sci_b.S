# See LICENSE for license details.

#*****************************************************************************
# pv.minu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.minu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.minu.sci.b, 0x1f1f1f1f, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.minu.sci.b, 0x00101010, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.minu.sci.b, 0x18263c3c, 0x1826bdd9, 0x03c )
  TEST_UIMM6_OP( 5, pv.minu.sci.b, 0x11111111, 0x79d51545, 0x011 )
  TEST_UIMM6_OP( 6, pv.minu.sci.b, 0x07070707, 0x0f799d30, 0x007 )
  TEST_UIMM6_OP( 7, pv.minu.sci.b, 0x1f3a3a3a, 0x1f9f4b86, 0x03a )
  TEST_UIMM6_OP( 8, pv.minu.sci.b, 0x02020202, 0xf2c16105, 0x002 )
  TEST_UIMM6_OP( 9, pv.minu.sci.b, 0x2c2c2c2c, 0xd3523786, 0x02c )
  TEST_UIMM6_OP( 10, pv.minu.sci.b, 0x1b1b1b09, 0x348d3009, 0x01b )
  TEST_UIMM6_OP( 11, pv.minu.sci.b, 0x09090909, 0xc57528fb, 0x009 )
  TEST_UIMM6_OP( 12, pv.minu.sci.b, 0x1a1a1a1a, 0x72fddce5, 0x01a )
  TEST_UIMM6_OP( 13, pv.minu.sci.b, 0x2f072f2f, 0x6107bfa7, 0x02f )
  TEST_UIMM6_OP( 14, pv.minu.sci.b, 0x37373737, 0x6a703b5e, 0x037 )
  TEST_UIMM6_OP( 15, pv.minu.sci.b, 0x2f2f2f2f, 0xc94588e0, 0x02f )
  TEST_UIMM6_OP( 16, pv.minu.sci.b, 0x0c0c0c0c, 0xf00fa517, 0x00c )
  TEST_UIMM6_OP( 17, pv.minu.sci.b, 0x20202020, 0xb0758fc4, 0x020 )
  TEST_UIMM6_OP( 18, pv.minu.sci.b, 0x14141400, 0xdf938800, 0x014 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.minu.sci.b, 0x2c2c2c2c, 0xdefd9edc, 0x02c )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.minu.sci.b, 0x2c3d3d07, 0x2cb7d807, 0x03d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.minu.sci.b, 0x19191919, 0xf4da5494, 0x019 )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.minu.sci.b, 0x3d3d3d3d, 0x7ea0bdb7, 0x03d )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.minu.sci.b, 0x02020202, 0xc08b588c, 0x002 )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.minu.sci.b, 0x15022b2b, 0x15026f85, 0x02b )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.minu.sci.b, 0x0d0d0d0d, 0x6f7ebf84, 0x00d )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.minu.sci.b, 0x32323232, 0x5c84bd77, 0x032 )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.minu.sci.b, 0x0c0c0c0c, 0x1cf127ce, 0x00c )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.minu.sci.b, 0x06060606, 0x4696a99e, 0x006 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.minu.sci.b, 0x30303030, 0x71354232, 0x030 )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.minu.sci.b, 0x3a3a103a, 0x518b1055, 0x03a )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.minu.sci.b, 0x24242424, 0xb0879dea, 0x024 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.minu.sci.b, 0x05050505, 0x718579e7, 0x005 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.minu.sci.b, 0x00000000, 0x004 )
  TEST_UIMM6_ZEROSRC1( 34, pv.minu.sci.b, 0x00000000, 0x018 )
  
  TEST_UIMM6_ZERODEST( 35, pv.minu.sci.b, 0x2f2afa29, 0x002 )
  TEST_UIMM6_ZERODEST( 36, pv.minu.sci.b, 0x26285d12, 0x01c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
