# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpgeu.sci.b, 0x01010101, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpgeu.sci.b, 0x00010101, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpgeu.sci.b, 0x01010101, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpgeu.sci.b, 0x00010100, 0x04f2f005, 0x026 )
  TEST_UIMM6_OP( 6, pv.cmpgeu.sci.b, 0x01010101, 0xd06dec7c, 0x008 )
  TEST_UIMM6_OP( 7, pv.cmpgeu.sci.b, 0x01000101, 0x650cf9f7, 0x017 )
  TEST_UIMM6_OP( 8, pv.cmpgeu.sci.b, 0x01010001, 0xdeee0750, 0x039 )
  TEST_UIMM6_OP( 9, pv.cmpgeu.sci.b, 0x01010101, 0xbfa0cc20, 0x01a )
  TEST_UIMM6_OP( 10, pv.cmpgeu.sci.b, 0x01010100, 0xc4813715, 0x01e )
  TEST_UIMM6_OP( 11, pv.cmpgeu.sci.b, 0x01010101, 0xa2932ea5, 0x026 )
  TEST_UIMM6_OP( 12, pv.cmpgeu.sci.b, 0x01010101, 0x353649eb, 0x00f )
  TEST_UIMM6_OP( 13, pv.cmpgeu.sci.b, 0x01010101, 0x5c45363a, 0x018 )
  TEST_UIMM6_OP( 14, pv.cmpgeu.sci.b, 0x01010000, 0x4ab01f17, 0x027 )
  TEST_UIMM6_OP( 15, pv.cmpgeu.sci.b, 0x01010101, 0x2144f368, 0x003 )
  TEST_UIMM6_OP( 16, pv.cmpgeu.sci.b, 0x01010100, 0xb5d7e10b, 0x017 )
  TEST_UIMM6_OP( 17, pv.cmpgeu.sci.b, 0x01010101, 0x9020c0ac, 0x009 )
  TEST_UIMM6_OP( 18, pv.cmpgeu.sci.b, 0x01010101, 0xfab5e3f4, 0x01c )
  TEST_UIMM6_OP( 19, pv.cmpgeu.sci.b, 0x01010101, 0x44f57266, 0x024 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpgeu.sci.b, 0x01010101, 0xd767bbdc, 0x015 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpgeu.sci.b, 0x01010101, 0x8d4d7f6d, 0x030 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpgeu.sci.b, 0x01010101, 0xa5e6eeeb, 0x00f )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpgeu.sci.b, 0x01010101, 0x7b8eb8e9, 0x038 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpgeu.sci.b, 0x01010001, 0x92ce0cb7, 0x012 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpgeu.sci.b, 0x01010101, 0x6c3cb52a, 0x013 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpgeu.sci.b, 0x01010101, 0xdf505465, 0x002 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpgeu.sci.b, 0x01010101, 0x6db2a2c8, 0x001 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpgeu.sci.b, 0x01010101, 0x1b6f8f3f, 0x00b )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpgeu.sci.b, 0x01010101, 0xb78bdc8e, 0x036 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpgeu.sci.b, 0x01010101, 0xcc8f7db3, 0x00f )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpgeu.sci.b, 0x01010101, 0x3b529ffc, 0x00f )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpgeu.sci.b, 0x01010101, 0x4046a395, 0x028 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpgeu.sci.b, 0x01010101, 0xc0f7c659, 0x00c )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpgeu.sci.b, 0x00000000, 0x00a )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpgeu.sci.b, 0x00000000, 0x035 )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpgeu.sci.b, 0xb3a4ff97, 0x030 )
  TEST_UIMM6_ZERODEST( 37, pv.cmpgeu.sci.b, 0xfb23b71a, 0x031 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
