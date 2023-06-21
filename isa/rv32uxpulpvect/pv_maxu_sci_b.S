# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.maxu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.maxu.sci.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.maxu.sci.b, 0x10112233, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.maxu.sci.b, 0x38fe5bac, 0x38fe5bac, 0x02d )
  TEST_UIMM6_OP( 5, pv.maxu.sci.b, 0xdcf58729, 0xdcf58720, 0x029 )
  TEST_UIMM6_OP( 6, pv.maxu.sci.b, 0x2fe92da1, 0x2fe90da1, 0x02d )
  TEST_UIMM6_OP( 7, pv.maxu.sci.b, 0xc333c1d4, 0xc333c1d4, 0x01c )
  TEST_UIMM6_OP( 8, pv.maxu.sci.b, 0x5cbd1d6f, 0x5cbd1d6f, 0x000 )
  TEST_UIMM6_OP( 9, pv.maxu.sci.b, 0xee482c67, 0xee482c67, 0x016 )
  TEST_UIMM6_OP( 10, pv.maxu.sci.b, 0x110c5b18, 0x11045b18, 0x00c )
  TEST_UIMM6_OP( 11, pv.maxu.sci.b, 0x38a821f6, 0x38a800f6, 0x021 )
  TEST_UIMM6_OP( 12, pv.maxu.sci.b, 0xa16bc92e, 0xa16bc91f, 0x02e )
  TEST_UIMM6_OP( 13, pv.maxu.sci.b, 0x5ddcb721, 0x5ddcb721, 0x01d )
  TEST_UIMM6_OP( 14, pv.maxu.sci.b, 0x12de0fc7, 0x12de02c7, 0x00f )
  TEST_UIMM6_OP( 15, pv.maxu.sci.b, 0x6dd95db1, 0x6dd95db1, 0x036 )
  TEST_UIMM6_OP( 16, pv.maxu.sci.b, 0xad72407a, 0xad72407a, 0x003 )
  TEST_UIMM6_OP( 17, pv.maxu.sci.b, 0x3c4c927c, 0x3c4c927c, 0x021 )
  TEST_UIMM6_OP( 18, pv.maxu.sci.b, 0x3a574a3a, 0x1e574a1c, 0x03a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.maxu.sci.b, 0x9773c34b, 0x9773c34b, 0x033 )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.maxu.sci.b, 0x1818189f, 0x150f069f, 0x018 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.maxu.sci.b, 0x5d1bdefb, 0x5d1bdefb, 0x005 )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.maxu.sci.b, 0xe0f3ca33, 0xe0f3ca08, 0x033 )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.maxu.sci.b, 0x3662e33a, 0x1b62e33a, 0x036 )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.maxu.sci.b, 0x7f417666, 0x7f417666, 0x018 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.maxu.sci.b, 0xc7e413b0, 0xc7e413b0, 0x003 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.maxu.sci.b, 0x3a58e447, 0x0858e447, 0x03a )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.maxu.sci.b, 0x4d26157b, 0x4d26157b, 0x012 )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.maxu.sci.b, 0x1910309d, 0x1907309d, 0x010 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.maxu.sci.b, 0x5921c567, 0x5921c567, 0x018 )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.maxu.sci.b, 0xf9f4a3c0, 0xf9f4a3c0, 0x03b )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.maxu.sci.b, 0xb0e58e8a, 0xb0e58e8a, 0x039 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.maxu.sci.b, 0x9d67e72f, 0x9d67e72f, 0x009 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.maxu.sci.b, 0x15151515, 0x015 )
  TEST_UIMM6_ZEROSRC1( 34, pv.maxu.sci.b, 0x0a0a0a0a, 0x00a )
  
  TEST_UIMM6_ZERODEST( 35, pv.maxu.sci.b, 0xf85e99da, 0x03f )
  TEST_UIMM6_ZERODEST( 36, pv.maxu.sci.b, 0x128a2a33, 0x02e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
