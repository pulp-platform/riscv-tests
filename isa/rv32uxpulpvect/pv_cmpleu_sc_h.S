# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpleu.sc.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpleu.sc.h, 0x00010000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpleu.sc.h, 0x00010000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpleu.sc.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpleu.sc.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpleu.sc.h, 0x00010000, 0x22d9cf10, 0x0eaa2f5b )
  TEST_RR_OP( 8, pv.cmpleu.sc.h, 0x00010000, 0x36e6f8ec, 0x24acdff8 )
  TEST_RR_OP( 9, pv.cmpleu.sc.h, 0x00000000, 0x4cc2b204, 0x16a5160f )
  TEST_RR_OP( 10, pv.cmpleu.sc.h, 0x00010001, 0xf0420986, 0x8ec6fc07 )
  TEST_RR_OP( 11, pv.cmpleu.sc.h, 0x00010001, 0xd2e7bdb4, 0x4095ec63 )
  TEST_RR_OP( 12, pv.cmpleu.sc.h, 0x00010001, 0x5b01d470, 0xe748e70b )
  TEST_RR_OP( 13, pv.cmpleu.sc.h, 0x00010001, 0x3c462726, 0xbd139956 )
  TEST_RR_OP( 14, pv.cmpleu.sc.h, 0x00010001, 0x7ddb0d26, 0x8a40a9b6 )
  TEST_RR_OP( 15, pv.cmpleu.sc.h, 0x00000001, 0xb55725c3, 0x07f34490 )
  TEST_RR_OP( 16, pv.cmpleu.sc.h, 0x00010001, 0x08bb39e2, 0xf93fe99b )
  TEST_RR_OP( 17, pv.cmpleu.sc.h, 0x00010000, 0x4931dc14, 0xc13c93d0 )
  TEST_RR_OP( 18, pv.cmpleu.sc.h, 0x00010001, 0xb7ea4a7d, 0xb133dadf )
  TEST_RR_OP( 19, pv.cmpleu.sc.h, 0x00000000, 0xc98d9d21, 0x0d3e83ef )
  TEST_RR_OP( 20, pv.cmpleu.sc.h, 0x00010001, 0x85102a02, 0x1c64ea1c )
  TEST_RR_OP( 21, pv.cmpleu.sc.h, 0x00000000, 0x486aa339, 0xf3d1313f )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpleu.sc.h, 0x00000001, 0xf0792798, 0xb8d76284 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpleu.sc.h, 0x00010001, 0x5cec1380, 0x3639f500 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpleu.sc.h, 0x00010000, 0x662ac595, 0xb002b2ac )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpleu.sc.h, 0x00010000, 0x485ca019, 0xef26509d )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpleu.sc.h, 0x00000001, 0x9ad51b3e )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpleu.sc.h, 0x00000001, 0xf4560042 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpleu.sc.h, 0x00010001, 0x37f0f906, 0x37f0f906 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpleu.sc.h, 0x00010001, 0x0c0e458d, 0x0c0e458d )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpleu.sc.h, 0x00010001, 0x2ce0f5fb, 0x2ce0f5fb )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpleu.sc.h, 0x00000001, 0xa6236822, 0xa6236822 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpleu.sc.h, 0x00000001, 0xd0989569, 0xd0989569 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpleu.sc.h, 0x00000001, 0xfee0905c, 0xfee0905c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpleu.sc.h, 0x00000001, 0xf1876a68, 0xa242acbe )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpleu.sc.h, 0x00010000, 0x0d6db909, 0xd3018533 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpleu.sc.h, 0x00010001, 0x0f8756e7, 0x1156a425 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpleu.sc.h, 0x00010001, 0x58f41f88, 0x9472d4af )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpleu.sc.h, 0x00000000, 0x77339d3c, 0x8bfe4592 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpleu.sc.h, 0x00000000, 0xa52ad997, 0x6e4f2563 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpleu.sc.h, 0x00010001, 0xc742ca2b, 0xabeee425 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpleu.sc.h, 0x00000000, 0x3f967e8f, 0xe94f3b52 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpleu.sc.h, 0x00000000, 0xb339b914, 0xb689680a )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpleu.sc.h, 0x00010001, 0x25e2697a, 0x0f16ef85 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpleu.sc.h, 0x00000001, 0xe36326ab, 0x4d00ae13 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpleu.sc.h, 0x00000000, 0x7a058b33, 0xd9d530ec )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpleu.sc.h, 0x00010000, 0x63def53f, 0x60667039 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpleu.sc.h, 0x00010000, 0x1b0eee35, 0xbf3a86ba )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpleu.sc.h, 0x00000000, 0xa050ad2e, 0x9a4802c4 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpleu.sc.h, 0x00000000, 0xe5b6d5bf, 0x524589fe )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpleu.sc.h, 0x00000001, 0xc1931edf, 0x09649f2c )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpleu.sc.h, 0x00000000, 0x5dc4fa4a, 0x54a72659 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpleu.sc.h, 0x00010001, 0xd097d187 )
  TEST_RR_ZEROSRC1( 53, pv.cmpleu.sc.h, 0x00010001, 0xcaa2cb68 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpleu.sc.h, 0x00000000, 0x44e9b335 )
  TEST_RR_ZEROSRC2( 55, pv.cmpleu.sc.h, 0x00000000, 0xc5e22eb8 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpleu.sc.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpleu.sc.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpleu.sc.h, 0xba72dd8f, 0xfe6e2253 )
  TEST_RR_ZERODEST( 59, pv.cmpleu.sc.h, 0x1708e3bd, 0x0f3f8307 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
