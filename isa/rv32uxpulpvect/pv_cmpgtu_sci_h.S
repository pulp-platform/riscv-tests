# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpgtu.sci.h, 0x00010001, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpgtu.sci.h, 0x00010001, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpgtu.sci.h, 0x00010001, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpgtu.sci.h, 0x00010001, 0x2d0c8fc4, 0x031 )
  TEST_UIMM6_OP( 6, pv.cmpgtu.sci.h, 0x00010001, 0xfc36bf44, 0x020 )
  TEST_UIMM6_OP( 7, pv.cmpgtu.sci.h, 0x00010001, 0xc3639ba6, 0x032 )
  TEST_UIMM6_OP( 8, pv.cmpgtu.sci.h, 0x00010001, 0x53818912, 0x02f )
  TEST_UIMM6_OP( 9, pv.cmpgtu.sci.h, 0x00010001, 0x84e7e1f5, 0x034 )
  TEST_UIMM6_OP( 10, pv.cmpgtu.sci.h, 0x00010001, 0xd4947d31, 0x03e )
  TEST_UIMM6_OP( 11, pv.cmpgtu.sci.h, 0x00010001, 0xe8090d78, 0x028 )
  TEST_UIMM6_OP( 12, pv.cmpgtu.sci.h, 0x00010001, 0x240fbc9a, 0x024 )
  TEST_UIMM6_OP( 13, pv.cmpgtu.sci.h, 0x00010001, 0xcf604c9a, 0x02e )
  TEST_UIMM6_OP( 14, pv.cmpgtu.sci.h, 0x00010001, 0x7c65c665, 0x036 )
  TEST_UIMM6_OP( 15, pv.cmpgtu.sci.h, 0x00010001, 0xd0484e7a, 0x012 )
  TEST_UIMM6_OP( 16, pv.cmpgtu.sci.h, 0x00010001, 0xd64d2ba2, 0x008 )
  TEST_UIMM6_OP( 17, pv.cmpgtu.sci.h, 0x00010001, 0xe5e45c03, 0x037 )
  TEST_UIMM6_OP( 18, pv.cmpgtu.sci.h, 0x00010001, 0xe655e0d1, 0x011 )
  TEST_UIMM6_OP( 19, pv.cmpgtu.sci.h, 0x00010001, 0xae1d883f, 0x033 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpgtu.sci.h, 0x00010001, 0x695e9461, 0x005 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpgtu.sci.h, 0x00010001, 0x81981aea, 0x02d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpgtu.sci.h, 0x00010001, 0x787b85f5, 0x01b )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpgtu.sci.h, 0x00010001, 0x018a7bc6, 0x003 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpgtu.sci.h, 0x00010001, 0xf582d1c4, 0x003 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpgtu.sci.h, 0x00010001, 0xbd735105, 0x02b )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpgtu.sci.h, 0x00010001, 0xcf56271a, 0x020 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpgtu.sci.h, 0x00010001, 0xeeacbe36, 0x01a )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpgtu.sci.h, 0x00010001, 0xee4f7473, 0x033 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpgtu.sci.h, 0x00010001, 0x9bd22e8e, 0x011 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpgtu.sci.h, 0x00010001, 0xb2dc2672, 0x01e )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpgtu.sci.h, 0x00010001, 0x3d75eb15, 0x03b )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpgtu.sci.h, 0x00010001, 0xe184415a, 0x021 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpgtu.sci.h, 0x00010001, 0xc70c27f1, 0x00d )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpgtu.sci.h, 0x00000000, 0x007 )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpgtu.sci.h, 0x00000000, 0x01a )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpgtu.sci.h, 0xe6a1f179, 0x005 )
  TEST_UIMM6_ZERODEST( 37, pv.cmpgtu.sci.h, 0xdd6d347d, 0x00f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
