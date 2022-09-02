# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpltu.sci.b, 0x00000000, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpltu.sci.b, 0x01000000, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpltu.sci.b, 0x00000000, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpltu.sci.b, 0x00000000, 0x5a5a51cf, 0x029 )
  TEST_UIMM6_OP( 6, pv.cmpltu.sci.b, 0x00000000, 0xa01bc104, 0x002 )
  TEST_UIMM6_OP( 7, pv.cmpltu.sci.b, 0x00000000, 0xe6fd2ac5, 0x00e )
  TEST_UIMM6_OP( 8, pv.cmpltu.sci.b, 0x01000000, 0x3138d98e, 0x036 )
  TEST_UIMM6_OP( 9, pv.cmpltu.sci.b, 0x00000000, 0x98acac89, 0x01b )
  TEST_UIMM6_OP( 10, pv.cmpltu.sci.b, 0x00000000, 0x7455af9e, 0x00e )
  TEST_UIMM6_OP( 11, pv.cmpltu.sci.b, 0x01000001, 0x18e0510b, 0x01d )
  TEST_UIMM6_OP( 12, pv.cmpltu.sci.b, 0x00000000, 0xbf4e7ae3, 0x021 )
  TEST_UIMM6_OP( 13, pv.cmpltu.sci.b, 0x00000000, 0xc6535c77, 0x02a )
  TEST_UIMM6_OP( 14, pv.cmpltu.sci.b, 0x00000000, 0x91b19459, 0x000 )
  TEST_UIMM6_OP( 15, pv.cmpltu.sci.b, 0x00000100, 0x67b301f0, 0x039 )
  TEST_UIMM6_OP( 16, pv.cmpltu.sci.b, 0x00000000, 0xd626f1ba, 0x00d )
  TEST_UIMM6_OP( 17, pv.cmpltu.sci.b, 0x00000000, 0x559b9e45, 0x037 )
  TEST_UIMM6_OP( 18, pv.cmpltu.sci.b, 0x00000000, 0x19b52018, 0x015 )
  TEST_UIMM6_OP( 19, pv.cmpltu.sci.b, 0x00010000, 0xe50fb279, 0x019 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpltu.sci.b, 0x00000000, 0x1da94b2a, 0x010 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpltu.sci.b, 0x00000000, 0xb5d1499b, 0x027 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpltu.sci.b, 0x00000000, 0x1ce5ad6f, 0x001 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpltu.sci.b, 0x01000000, 0x0a2e62fd, 0x021 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpltu.sci.b, 0x00000000, 0xe887ab9b, 0x01b )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpltu.sci.b, 0x00000000, 0x49a3f9c7, 0x03e )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpltu.sci.b, 0x00000000, 0xa1dae9f2, 0x002 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpltu.sci.b, 0x00000000, 0x286adae6, 0x020 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpltu.sci.b, 0x00010000, 0xac13faa4, 0x034 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpltu.sci.b, 0x00000000, 0x0b1a723f, 0x008 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpltu.sci.b, 0x00000000, 0xa4564556, 0x03f )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpltu.sci.b, 0x00000100, 0x94dd088c, 0x01d )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpltu.sci.b, 0x00000100, 0xb3941d88, 0x03d )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpltu.sci.b, 0x00000001, 0x7dfa7018, 0x030 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpltu.sci.b, 0x01010101, 0x027 )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpltu.sci.b, 0x01010101, 0x03b )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpltu.sci.b, 0xba3bd465, 0x03f )
  TEST_UIMM6_ZERODEST( 37, pv.cmpltu.sci.b, 0x52d121c8, 0x032 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
