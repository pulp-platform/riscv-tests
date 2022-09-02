# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.maxu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.maxu.sci.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.maxu.sci.h, 0x00112233, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.maxu.sci.h, 0x69b2ce02, 0x69b2ce02, 0x01d )
  TEST_UIMM6_OP( 5, pv.maxu.sci.h, 0xd2a0fd21, 0xd2a0fd21, 0x028 )
  TEST_UIMM6_OP( 6, pv.maxu.sci.h, 0x255237f1, 0x255237f1, 0x000 )
  TEST_UIMM6_OP( 7, pv.maxu.sci.h, 0x39b196ed, 0x39b196ed, 0x03c )
  TEST_UIMM6_OP( 8, pv.maxu.sci.h, 0xb9d47f4a, 0xb9d47f4a, 0x03a )
  TEST_UIMM6_OP( 9, pv.maxu.sci.h, 0xb75e4cdf, 0xb75e4cdf, 0x01a )
  TEST_UIMM6_OP( 10, pv.maxu.sci.h, 0x4b4c0e2a, 0x4b4c0e2a, 0x021 )
  TEST_UIMM6_OP( 11, pv.maxu.sci.h, 0x243637fb, 0x243637fb, 0x026 )
  TEST_UIMM6_OP( 12, pv.maxu.sci.h, 0x128d5e5f, 0x128d5e5f, 0x034 )
  TEST_UIMM6_OP( 13, pv.maxu.sci.h, 0xcd78db77, 0xcd78db77, 0x033 )
  TEST_UIMM6_OP( 14, pv.maxu.sci.h, 0x18cf9703, 0x18cf9703, 0x01a )
  TEST_UIMM6_OP( 15, pv.maxu.sci.h, 0x17645811, 0x17645811, 0x01d )
  TEST_UIMM6_OP( 16, pv.maxu.sci.h, 0x23e6d12b, 0x23e6d12b, 0x012 )
  TEST_UIMM6_OP( 17, pv.maxu.sci.h, 0xd5dd07ee, 0xd5dd07ee, 0x00c )
  TEST_UIMM6_OP( 18, pv.maxu.sci.h, 0x9c3d31b2, 0x9c3d31b2, 0x016 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.maxu.sci.h, 0x9a70ccd5, 0x9a70ccd5, 0x033 )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.maxu.sci.h, 0xdb6cc686, 0xdb6cc686, 0x031 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.maxu.sci.h, 0xfd2a389e, 0xfd2a389e, 0x03c )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.maxu.sci.h, 0xc0884802, 0xc0884802, 0x00b )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.maxu.sci.h, 0x94754f7e, 0x94754f7e, 0x012 )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.maxu.sci.h, 0xf2c5e356, 0xf2c5e356, 0x037 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.maxu.sci.h, 0x725118e5, 0x725118e5, 0x017 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.maxu.sci.h, 0x832cd0aa, 0x832cd0aa, 0x010 )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.maxu.sci.h, 0x68cbc4f7, 0x68cbc4f7, 0x002 )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.maxu.sci.h, 0x7b77ca18, 0x7b77ca18, 0x035 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.maxu.sci.h, 0xa7e09161, 0xa7e09161, 0x03a )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.maxu.sci.h, 0xa21d1bf4, 0xa21d1bf4, 0x019 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.maxu.sci.h, 0x7b8eb6ba, 0x7b8eb6ba, 0x030 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.maxu.sci.h, 0x5b39396a, 0x5b39396a, 0x000 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.maxu.sci.h, 0x000e000e, 0x00e )
  TEST_UIMM6_ZEROSRC1( 34, pv.maxu.sci.h, 0x00200020, 0x020 )
  
  TEST_UIMM6_ZERODEST( 35, pv.maxu.sci.h, 0xf7888613, 0x028 )
  TEST_UIMM6_ZERODEST( 36, pv.maxu.sci.h, 0x3e1eb32a, 0x027 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
