# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpltu.sci.h, 0x00000000, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpltu.sci.h, 0x00000000, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpltu.sci.h, 0x00000000, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpltu.sci.h, 0x00000000, 0x66c55ff0, 0x00c )
  TEST_UIMM6_OP( 6, pv.cmpltu.sci.h, 0x00000000, 0x058d8c9b, 0x03c )
  TEST_UIMM6_OP( 7, pv.cmpltu.sci.h, 0x00000000, 0x1659c853, 0x03d )
  TEST_UIMM6_OP( 8, pv.cmpltu.sci.h, 0x00000000, 0xc5daf610, 0x032 )
  TEST_UIMM6_OP( 9, pv.cmpltu.sci.h, 0x00000000, 0x9a089a9b, 0x00b )
  TEST_UIMM6_OP( 10, pv.cmpltu.sci.h, 0x00000000, 0x5df91f58, 0x021 )
  TEST_UIMM6_OP( 11, pv.cmpltu.sci.h, 0x00000000, 0xbaff99c7, 0x036 )
  TEST_UIMM6_OP( 12, pv.cmpltu.sci.h, 0x00000000, 0x076d2e05, 0x03d )
  TEST_UIMM6_OP( 13, pv.cmpltu.sci.h, 0x00000000, 0xa7f147e0, 0x014 )
  TEST_UIMM6_OP( 14, pv.cmpltu.sci.h, 0x00000000, 0x9d4f40d0, 0x029 )
  TEST_UIMM6_OP( 15, pv.cmpltu.sci.h, 0x00000000, 0x4c3751de, 0x008 )
  TEST_UIMM6_OP( 16, pv.cmpltu.sci.h, 0x00000000, 0x8e4272fe, 0x033 )
  TEST_UIMM6_OP( 17, pv.cmpltu.sci.h, 0x00000000, 0x166ece80, 0x009 )
  TEST_UIMM6_OP( 18, pv.cmpltu.sci.h, 0x00000000, 0xdcc18d53, 0x013 )
  TEST_UIMM6_OP( 19, pv.cmpltu.sci.h, 0x00000000, 0x1d35cee1, 0x031 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpltu.sci.h, 0x00000000, 0x94d50bae, 0x038 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpltu.sci.h, 0x00000000, 0x918d57c3, 0x00e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpltu.sci.h, 0x00000000, 0xa003f07b, 0x006 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpltu.sci.h, 0x00000000, 0x0dcef3a9, 0x022 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpltu.sci.h, 0x00000000, 0xb2614f61, 0x00b )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpltu.sci.h, 0x00000000, 0x36686b84, 0x036 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpltu.sci.h, 0x00000000, 0x219d0a5e, 0x036 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpltu.sci.h, 0x00000000, 0xe465d73e, 0x010 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpltu.sci.h, 0x00000000, 0xa4622110, 0x006 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpltu.sci.h, 0x00000000, 0x7bf6b163, 0x037 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpltu.sci.h, 0x00000000, 0x28bb60f2, 0x012 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpltu.sci.h, 0x00000000, 0xecf5f039, 0x034 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpltu.sci.h, 0x00000000, 0x2262aa8f, 0x030 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpltu.sci.h, 0x00000000, 0x0c8e40d9, 0x013 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpltu.sci.h, 0x00010001, 0x03e )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpltu.sci.h, 0x00010001, 0x00a )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpltu.sci.h, 0x6dfcf2c6, 0x03f )
  TEST_UIMM6_ZERODEST( 37, pv.cmpltu.sci.h, 0x346f0f29, 0x03e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
