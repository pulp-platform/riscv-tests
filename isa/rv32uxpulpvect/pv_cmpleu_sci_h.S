# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpleu.sci.h, 0x00000000, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpleu.sci.h, 0x00000000, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpleu.sci.h, 0x00000000, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpleu.sci.h, 0x00000000, 0x7fcaea6e, 0x033 )
  TEST_UIMM6_OP( 6, pv.cmpleu.sci.h, 0x00000000, 0xcc073845, 0x01b )
  TEST_UIMM6_OP( 7, pv.cmpleu.sci.h, 0x00000000, 0x2f2e133f, 0x03b )
  TEST_UIMM6_OP( 8, pv.cmpleu.sci.h, 0x00000000, 0x750ed622, 0x03d )
  TEST_UIMM6_OP( 9, pv.cmpleu.sci.h, 0x00000000, 0xf05f1041, 0x02b )
  TEST_UIMM6_OP( 10, pv.cmpleu.sci.h, 0x00000000, 0x98ff4c0a, 0x012 )
  TEST_UIMM6_OP( 11, pv.cmpleu.sci.h, 0x00000000, 0xa0dae9f2, 0x037 )
  TEST_UIMM6_OP( 12, pv.cmpleu.sci.h, 0x00000000, 0x28563156, 0x01d )
  TEST_UIMM6_OP( 13, pv.cmpleu.sci.h, 0x00000000, 0x653afa7b, 0x016 )
  TEST_UIMM6_OP( 14, pv.cmpleu.sci.h, 0x00000000, 0x2573bbf3, 0x01f )
  TEST_UIMM6_OP( 15, pv.cmpleu.sci.h, 0x00000000, 0xf4acb009, 0x02f )
  TEST_UIMM6_OP( 16, pv.cmpleu.sci.h, 0x00000000, 0xa38dc827, 0x02c )
  TEST_UIMM6_OP( 17, pv.cmpleu.sci.h, 0x00000000, 0x34b7cd11, 0x03a )
  TEST_UIMM6_OP( 18, pv.cmpleu.sci.h, 0x00000000, 0x01f06a59, 0x00d )
  TEST_UIMM6_OP( 19, pv.cmpleu.sci.h, 0x00000000, 0xabcad0c1, 0x03b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpleu.sci.h, 0x00000000, 0x2235ea44, 0x03d )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpleu.sci.h, 0x00000000, 0xd06d78c6, 0x008 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpleu.sci.h, 0x00000000, 0xffbb35b5, 0x019 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpleu.sci.h, 0x00000000, 0xbf49d99b, 0x00a )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpleu.sci.h, 0x00000000, 0x7b53b326, 0x02c )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpleu.sci.h, 0x00000000, 0xf25873a4, 0x019 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpleu.sci.h, 0x00000000, 0xc8d68bb2, 0x03e )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpleu.sci.h, 0x00000000, 0x12ff6c28, 0x01c )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpleu.sci.h, 0x00000000, 0x3a8c69bc, 0x035 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpleu.sci.h, 0x00000000, 0xba297b4a, 0x026 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpleu.sci.h, 0x00000000, 0xd1402983, 0x013 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpleu.sci.h, 0x00000000, 0x9c2d0931, 0x03c )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpleu.sci.h, 0x00000000, 0xe322f2cd, 0x007 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpleu.sci.h, 0x00000000, 0x4d38382a, 0x00e )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpleu.sci.h, 0x00010001, 0x005 )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpleu.sci.h, 0x00010001, 0x02f )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpleu.sci.h, 0x8603f70f, 0x03b )
  TEST_UIMM6_ZERODEST( 37, pv.cmpleu.sci.h, 0x47c5e32b, 0x00d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
