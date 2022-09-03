# See LICENSE for license details.

#*****************************************************************************
# pv.cplxconj.h
#-----------------------------------------------------------------------------
#
# Test pv.cplxconj.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_R_OP( 2, pv.cplxconj.h, 0x80007fff, 0x80007fff )
  TEST_R_OP( 3, pv.cplxconj.h, 0x80018000, 0x7fff8000 )
  TEST_R_OP( 4, pv.cplxconj.h, 0xeede3344, 0x11223344 )
  TEST_R_OP( 5, pv.cplxconj.h, 0xd437d6a1, 0x2bc9d6a1 )
  TEST_R_OP( 6, pv.cplxconj.h, 0xaf5bc6bf, 0x50a5c6bf )
  TEST_R_OP( 7, pv.cplxconj.h, 0xa6c723dc, 0x593923dc )
  TEST_R_OP( 8, pv.cplxconj.h, 0x4bf41828, 0xb40c1828 )
  TEST_R_OP( 9, pv.cplxconj.h, 0xc354a299, 0x3caca299 )
  TEST_R_OP( 10, pv.cplxconj.h, 0xc99ecf3e, 0x3662cf3e )
  TEST_R_OP( 11, pv.cplxconj.h, 0x3362834b, 0xcc9e834b )
  TEST_R_OP( 12, pv.cplxconj.h, 0xdc4aafa9, 0x23b6afa9 )
  TEST_R_OP( 13, pv.cplxconj.h, 0xfc7825de, 0x038825de )
  TEST_R_OP( 14, pv.cplxconj.h, 0xa3e04f1d, 0x5c204f1d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_R_SRC1_EQ_DEST( 15, pv.cplxconj.h, 0xaa33e77c, 0x55cde77c )
  TEST_R_SRC1_EQ_DEST( 16, pv.cplxconj.h, 0x9567823f, 0x6a99823f )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_R_DEST_BYPASS( 17, 0, pv.cplxconj.h, 0x556cd8f1, 0xaa94d8f1 )
  TEST_R_DEST_BYPASS( 18, 1, pv.cplxconj.h, 0x60888daf, 0x9f788daf )
  TEST_R_DEST_BYPASS( 19, 2, pv.cplxconj.h, 0x300fad71, 0xcff1ad71 )
  TEST_R_DEST_BYPASS( 20, 0, pv.cplxconj.h, 0x3ac3f3fb, 0xc53df3fb )
  TEST_R_DEST_BYPASS( 21, 1, pv.cplxconj.h, 0x8efb450a, 0x7105450a )
  TEST_R_DEST_BYPASS( 22, 2, pv.cplxconj.h, 0xb66a7141, 0x49967141 )
  

  TEST_R_ZEROSRC1( 23, pv.cplxconj.h, 0x00000000 )
  TEST_R_ZEROSRC1( 24, pv.cplxconj.h, 0x00000000 )
  
  TEST_R_ZERODEST( 25, pv.cplxconj.h, 0xf23f62e6 )
  TEST_R_ZERODEST( 26, pv.cplxconj.h, 0xc7a04f3a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
