# See LICENSE for license details.

#*****************************************************************************
# pv.min.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.min.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.min.sci.h, 0x001f001f, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.min.sci.h, 0x80818284, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.min.sci.h, 0x00100010, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.min.sci.h, 0xe06bc845, 0xe06bc845, 0x00f )
  TEST_SIMM6_OP( 6, pv.min.sci.h, 0xffedffed, 0x1513741a, 0xffffffed )
  TEST_SIMM6_OP( 7, pv.min.sci.h, 0x001ab468, 0x251fb468, 0x01a )
  TEST_SIMM6_OP( 8, pv.min.sci.h, 0x00030003, 0x4bc33960, 0x003 )
  TEST_SIMM6_OP( 9, pv.min.sci.h, 0xe88bbddc, 0xe88bbddc, 0xfffffff4 )
  TEST_SIMM6_OP( 10, pv.min.sci.h, 0xef4de44e, 0xef4de44e, 0xffffffee )
  TEST_SIMM6_OP( 11, pv.min.sci.h, 0x000b836f, 0x65dc836f, 0x00b )
  TEST_SIMM6_OP( 12, pv.min.sci.h, 0xde31fff7, 0xde31753f, 0xfffffff7 )
  TEST_SIMM6_OP( 13, pv.min.sci.h, 0xfffda919, 0x3f74a919, 0xfffffffd )
  TEST_SIMM6_OP( 14, pv.min.sci.h, 0xcdc50017, 0xcdc5161e, 0x017 )
  TEST_SIMM6_OP( 15, pv.min.sci.h, 0xc875fff4, 0xc8755535, 0xfffffff4 )
  TEST_SIMM6_OP( 16, pv.min.sci.h, 0xffffffff, 0x248e28a5, 0xffffffff )
  TEST_SIMM6_OP( 17, pv.min.sci.h, 0xfffafffa, 0x71c6179d, 0xfffffffa )
  TEST_SIMM6_OP( 18, pv.min.sci.h, 0xd9bec294, 0xd9bec294, 0x00e )
  TEST_SIMM6_OP( 19, pv.min.sci.h, 0xffefffef, 0x712e6758, 0xffffffef )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.min.sci.h, 0xabe0de92, 0xabe0de92, 0xfffffff3 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.min.sci.h, 0xfff2fc85, 0x09fefc85, 0xfffffff2 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.min.sci.h, 0xffe5ffe5, 0x12935dc5, 0xffffffe5 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.min.sci.h, 0x0012e080, 0x2988e080, 0x012 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.min.sci.h, 0xfff8ed74, 0x3e08ed74, 0xfffffff8 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.min.sci.h, 0xf0b5ffee, 0xf0b51104, 0xffffffee )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.min.sci.h, 0xa119ffe8, 0xa1193dfc, 0xffffffe8 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.min.sci.h, 0xca03c883, 0xca03c883, 0xffffffe9 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.min.sci.h, 0xe4620004, 0xe462511f, 0x004 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.min.sci.h, 0xe989e5f2, 0xe989e5f2, 0xfffffff1 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.min.sci.h, 0xffebc776, 0x7e7fc776, 0xffffffeb )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.min.sci.h, 0x949f9d88, 0x949f9d88, 0xffffffe5 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.min.sci.h, 0x9356ffec, 0x935606d0, 0xffffffec )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.min.sci.h, 0x95060013, 0x95063e22, 0x013 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.min.sci.h, 0xffecffec, 0xffffffec )
  TEST_SIMM6_ZEROSRC1( 35, pv.min.sci.h, 0xffe7ffe7, 0xffffffe7 )
  
  TEST_SIMM6_ZERODEST( 36, pv.min.sci.h, 0x3b740f28, 0xffffffef )
  TEST_SIMM6_ZERODEST( 37, pv.min.sci.h, 0xde44a7d9, 0x003 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
