# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpgeu.sci.h, 0x00010001, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpgeu.sci.h, 0x00010001, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpgeu.sci.h, 0x00010001, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpgeu.sci.h, 0x00010001, 0x0c8b23b3, 0x008 )
  TEST_UIMM6_OP( 6, pv.cmpgeu.sci.h, 0x00010001, 0xcca9f976, 0x014 )
  TEST_UIMM6_OP( 7, pv.cmpgeu.sci.h, 0x00010001, 0x69aa101c, 0x000 )
  TEST_UIMM6_OP( 8, pv.cmpgeu.sci.h, 0x00010001, 0x74480977, 0x012 )
  TEST_UIMM6_OP( 9, pv.cmpgeu.sci.h, 0x00010001, 0x8511490e, 0x030 )
  TEST_UIMM6_OP( 10, pv.cmpgeu.sci.h, 0x00010001, 0x630a96b5, 0x00f )
  TEST_UIMM6_OP( 11, pv.cmpgeu.sci.h, 0x00010001, 0x0ab957a9, 0x026 )
  TEST_UIMM6_OP( 12, pv.cmpgeu.sci.h, 0x00010001, 0x8c049152, 0x028 )
  TEST_UIMM6_OP( 13, pv.cmpgeu.sci.h, 0x00010001, 0x236a09cb, 0x017 )
  TEST_UIMM6_OP( 14, pv.cmpgeu.sci.h, 0x00010001, 0x4f501d8b, 0x031 )
  TEST_UIMM6_OP( 15, pv.cmpgeu.sci.h, 0x00010001, 0x656e78b7, 0x03f )
  TEST_UIMM6_OP( 16, pv.cmpgeu.sci.h, 0x00010001, 0x5cd7f652, 0x010 )
  TEST_UIMM6_OP( 17, pv.cmpgeu.sci.h, 0x00010001, 0x3980d55a, 0x00e )
  TEST_UIMM6_OP( 18, pv.cmpgeu.sci.h, 0x00010001, 0x5eec8f7b, 0x005 )
  TEST_UIMM6_OP( 19, pv.cmpgeu.sci.h, 0x00010001, 0x484feca6, 0x017 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpgeu.sci.h, 0x00010001, 0xae1c4614, 0x023 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpgeu.sci.h, 0x00010001, 0x30ce6070, 0x023 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpgeu.sci.h, 0x00010001, 0x7c68fae7, 0x003 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpgeu.sci.h, 0x00010001, 0xf452d4de, 0x019 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpgeu.sci.h, 0x00010001, 0x81b11741, 0x03d )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpgeu.sci.h, 0x00010001, 0x522e5e06, 0x03f )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpgeu.sci.h, 0x00010001, 0x2852a940, 0x018 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpgeu.sci.h, 0x00010001, 0x6decdd21, 0x00e )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpgeu.sci.h, 0x00010001, 0x619d1f17, 0x00c )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpgeu.sci.h, 0x00010001, 0x20be9f85, 0x012 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpgeu.sci.h, 0x00010001, 0xeddd65e6, 0x025 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpgeu.sci.h, 0x00010001, 0xa3733bfc, 0x039 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpgeu.sci.h, 0x00010001, 0xc1d99321, 0x033 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpgeu.sci.h, 0x00010001, 0x966fc360, 0x037 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpgeu.sci.h, 0x00000000, 0x015 )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpgeu.sci.h, 0x00000000, 0x001 )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpgeu.sci.h, 0x64cd30e4, 0x036 )
  TEST_UIMM6_ZERODEST( 37, pv.cmpgeu.sci.h, 0x936e44ac, 0x01c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
