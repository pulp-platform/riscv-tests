# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpleu.sci.b, 0x00000000, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpleu.sci.b, 0x01000000, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpleu.sci.b, 0x01000000, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpleu.sci.b, 0x00000001, 0xd6d94120, 0x03c )
  TEST_UIMM6_OP( 6, pv.cmpleu.sci.b, 0x00000000, 0x396e689c, 0x003 )
  TEST_UIMM6_OP( 7, pv.cmpleu.sci.b, 0x00000001, 0x7d655e03, 0x038 )
  TEST_UIMM6_OP( 8, pv.cmpleu.sci.b, 0x00000100, 0xbbba02af, 0x026 )
  TEST_UIMM6_OP( 9, pv.cmpleu.sci.b, 0x00010000, 0x801c95a1, 0x021 )
  TEST_UIMM6_OP( 10, pv.cmpleu.sci.b, 0x00000000, 0xf9b49ae9, 0x012 )
  TEST_UIMM6_OP( 11, pv.cmpleu.sci.b, 0x00000000, 0xaa62509a, 0x03d )
  TEST_UIMM6_OP( 12, pv.cmpleu.sci.b, 0x01000000, 0x00b83094, 0x010 )
  TEST_UIMM6_OP( 13, pv.cmpleu.sci.b, 0x01000000, 0x07dc2df9, 0x01b )
  TEST_UIMM6_OP( 14, pv.cmpleu.sci.b, 0x00000000, 0xf9e6efab, 0x025 )
  TEST_UIMM6_OP( 15, pv.cmpleu.sci.b, 0x00000000, 0x67ef5ce6, 0x03a )
  TEST_UIMM6_OP( 16, pv.cmpleu.sci.b, 0x00000001, 0xd22f8810, 0x01f )
  TEST_UIMM6_OP( 17, pv.cmpleu.sci.b, 0x00010000, 0xe80df934, 0x02f )
  TEST_UIMM6_OP( 18, pv.cmpleu.sci.b, 0x01000000, 0x3b99ae5a, 0x03d )
  TEST_UIMM6_OP( 19, pv.cmpleu.sci.b, 0x00000000, 0xd467921e, 0x004 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpleu.sci.b, 0x00000000, 0xd830c489, 0x021 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpleu.sci.b, 0x00000100, 0x72da33ef, 0x03b )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpleu.sci.b, 0x01000000, 0x13ef6056, 0x01e )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpleu.sci.b, 0x00000100, 0xc7d90df6, 0x03b )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpleu.sci.b, 0x00000100, 0x2bbb098a, 0x009 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpleu.sci.b, 0x00000000, 0x5fbc9759, 0x015 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpleu.sci.b, 0x01000100, 0x1d53188c, 0x02a )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpleu.sci.b, 0x00000000, 0x81bde8fb, 0x00b )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpleu.sci.b, 0x00000001, 0x25b8440b, 0x014 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpleu.sci.b, 0x00000000, 0x9c7834dd, 0x001 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpleu.sci.b, 0x00000001, 0xc944fd14, 0x021 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpleu.sci.b, 0x00000101, 0x3f6a0905, 0x028 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpleu.sci.b, 0x00000000, 0x42d14072, 0x01a )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpleu.sci.b, 0x00000000, 0xaec45e58, 0x03f )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpleu.sci.b, 0x01010101, 0x033 )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpleu.sci.b, 0x01010101, 0x02c )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpleu.sci.b, 0x509fca81, 0x034 )
  TEST_UIMM6_ZERODEST( 37, pv.cmpleu.sci.b, 0x2428df09, 0x039 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
