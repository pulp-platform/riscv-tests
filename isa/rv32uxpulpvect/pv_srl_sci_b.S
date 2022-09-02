# See LICENSE for license details.

#*****************************************************************************
# pv.srl.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.srl.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.srl.sci.b, 0x81818181, 0x81818181, 0x00 )
  TEST_UIMM6_OP( 3, pv.srl.sci.b, 0x01010101, 0x81818181, 0x1f )
  TEST_UIMM6_OP( 4, pv.srl.sci.b, 0x81818181, 0x81818181, 0x10 )
  TEST_UIMM6_OP( 5, pv.srl.sci.b, 0x05070004, 0xacfe0797, 0x1d )
  TEST_UIMM6_OP( 6, pv.srl.sci.b, 0x090a050e, 0x9ba256e5, 0x0c )
  TEST_UIMM6_OP( 7, pv.srl.sci.b, 0x02020103, 0xbeb26bcb, 0x16 )
  TEST_UIMM6_OP( 8, pv.srl.sci.b, 0x00000101, 0x2e02b3c9, 0x1f )
  TEST_UIMM6_OP( 9, pv.srl.sci.b, 0x091e030b, 0x4cf5195a, 0x1b )
  TEST_UIMM6_OP( 10, pv.srl.sci.b, 0x02000301, 0x9923cc46, 0x16 )
  TEST_UIMM6_OP( 11, pv.srl.sci.b, 0x183d1b11, 0x61f76f44, 0x1a )
  TEST_UIMM6_OP( 12, pv.srl.sci.b, 0x05040200, 0xae924702, 0x0d )
  TEST_UIMM6_OP( 13, pv.srl.sci.b, 0x6f025254, 0xde05a4a8, 0x19 )
  TEST_UIMM6_OP( 14, pv.srl.sci.b, 0x08523079, 0x10a461f3, 0x11 )
  TEST_UIMM6_OP( 15, pv.srl.sci.b, 0x92cbb0a9, 0x92cbb0a9, 0x10 )
  TEST_UIMM6_OP( 16, pv.srl.sci.b, 0x03010100, 0xe8594a26, 0x1e )
  TEST_UIMM6_OP( 17, pv.srl.sci.b, 0x8b5030b5, 0x8b5030b5, 0x18 )
  TEST_UIMM6_OP( 18, pv.srl.sci.b, 0x1d1b1319, 0xe9db9aca, 0x1b )
  TEST_UIMM6_OP( 19, pv.srl.sci.b, 0x01010000, 0xf884105a, 0x1f )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.srl.sci.b, 0x15325b4f, 0x2b65b79e, 0x01 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.srl.sci.b, 0x20084c6c, 0x411099d9, 0x19 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.srl.sci.b, 0x00010100, 0x27bbe900, 0x1f )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.srl.sci.b, 0x61660703, 0xc3cc0f07, 0x11 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.srl.sci.b, 0x01010101, 0x635c5d70, 0x06 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.srl.sci.b, 0x03050d04, 0x3558d949, 0x04 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.srl.sci.b, 0x17715020, 0x2ee3a040, 0x01 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.srl.sci.b, 0x09180408, 0x4ec22741, 0x03 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.srl.sci.b, 0x3201586e, 0x6503b0dd, 0x09 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.srl.sci.b, 0x07040204, 0xe9995998, 0x05 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.srl.sci.b, 0x222c7e21, 0x4459fc42, 0x09 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.srl.sci.b, 0x00000100, 0x1e4ad94b, 0x0f )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.srl.sci.b, 0xc2cfc413, 0xc2cfc413, 0x18 )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.srl.sci.b, 0x02030101, 0xa3fc756f, 0x16 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.srl.sci.b, 0x00000000, 0x1b )
  TEST_UIMM6_ZEROSRC1( 35, pv.srl.sci.b, 0x00000000, 0x01 )
  
  TEST_UIMM6_ZERODEST( 36, pv.srl.sci.b, 0x6bda61d8, 0x10 )
  TEST_UIMM6_ZERODEST( 37, pv.srl.sci.b, 0xb0abb6dd, 0x0a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
