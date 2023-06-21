# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.b
#-----------------------------------------------------------------------------
#
# Test pv.cmple.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmple.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmple.b, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmple.b, 0x01000100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmple.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmple.b, 0x01000100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmple.b, 0x01000100, 0xb945ba78, 0x64bcc4fc )
  TEST_RR_OP( 8, pv.cmple.b, 0x01010100, 0xa9f037f0, 0x4e2c7dc8 )
  TEST_RR_OP( 9, pv.cmple.b, 0x01000000, 0xd6731f26, 0xe06cda15 )
  TEST_RR_OP( 10, pv.cmple.b, 0x00000001, 0x385b2185, 0x8b91caf2 )
  TEST_RR_OP( 11, pv.cmple.b, 0x01010001, 0x16a449fb, 0x632fe377 )
  TEST_RR_OP( 12, pv.cmple.b, 0x01010001, 0xb8c205eb, 0x3626a4f2 )
  TEST_RR_OP( 13, pv.cmple.b, 0x00010100, 0x4a99775d, 0xe5057db8 )
  TEST_RR_OP( 14, pv.cmple.b, 0x00010101, 0x34f72adb, 0x31583bee )
  TEST_RR_OP( 15, pv.cmple.b, 0x00010000, 0x2f897b14, 0x21ee4e9f )
  TEST_RR_OP( 16, pv.cmple.b, 0x00010101, 0xd69ac1b3, 0xbf4b5373 )
  TEST_RR_OP( 17, pv.cmple.b, 0x01010001, 0x84ab2709, 0xc8c9cc49 )
  TEST_RR_OP( 18, pv.cmple.b, 0x01000100, 0xb2deb92c, 0x4fd9078a )
  TEST_RR_OP( 19, pv.cmple.b, 0x01010001, 0xe3bf77dd, 0x1728da0f )
  TEST_RR_OP( 20, pv.cmple.b, 0x00000101, 0x585084ba, 0xc2b9460a )
  TEST_RR_OP( 21, pv.cmple.b, 0x01010101, 0xe6849d06, 0x279e2a31 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmple.b, 0x01000100, 0x88f618c6, 0xf8bf28ba )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmple.b, 0x00010001, 0xd6240098, 0x9a41f82a )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmple.b, 0x00000100, 0x7e599520, 0x40c45bac )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmple.b, 0x01010100, 0xca8ab571, 0x5c2b7f2e )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmple.b, 0x01010101, 0x03836867 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmple.b, 0x01010101, 0xcbcc5495 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmple.b, 0x01010101, 0x79359e3f, 0x79359e3f )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmple.b, 0x01010101, 0xb91b1d37, 0xb91b1d37 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmple.b, 0x01010101, 0xe58cb26b, 0xe58cb26b )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmple.b, 0x01010101, 0x670684d2, 0x670684d2 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmple.b, 0x01010101, 0xa8c0cdc5, 0xa8c0cdc5 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmple.b, 0x01010101, 0x7ec44a94, 0x7ec44a94 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmple.b, 0x00000000, 0x77d9466c, 0x85bdff8d )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmple.b, 0x01010100, 0xe3a0006b, 0xea295896 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmple.b, 0x00000100, 0x447e994b, 0x0f644b2a )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmple.b, 0x01010101, 0x91e6a8f5, 0x50334311 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmple.b, 0x00000001, 0x3f3bc0a7, 0xeb08826b )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmple.b, 0x00000001, 0x66bf59f2, 0x4ab6e45c )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmple.b, 0x00010001, 0x6d960eb2, 0x0ddef077 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmple.b, 0x01010101, 0xbb83d2e7, 0xcc125652 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmple.b, 0x00010000, 0x1f525222, 0x1a708de1 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmple.b, 0x01000101, 0xcb29c92f, 0x71d4f53e )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmple.b, 0x01000000, 0x8a204c7e, 0xd6d794d1 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmple.b, 0x00000000, 0x3532b850, 0x8306ab1a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmple.b, 0x00000101, 0x74131f04, 0xbcfa2e06 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmple.b, 0x00000001, 0x080cc319, 0xccb6b84b )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmple.b, 0x01010101, 0xe8efb124, 0x3e293375 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmple.b, 0x00000001, 0x39e864a4, 0x8184bf0e )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmple.b, 0x01000001, 0xf47119ba, 0x1c9797e2 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmple.b, 0x01010000, 0xd9f64673, 0x3cf81c80 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmple.b, 0x00000001, 0x9a9cf14e )
  TEST_RR_ZEROSRC1( 53, pv.cmple.b, 0x01010000, 0x6654e8d1 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmple.b, 0x00010001, 0x6cc940c3 )
  TEST_RR_ZEROSRC2( 55, pv.cmple.b, 0x00000101, 0x2904f7ce )
  
  TEST_RR_ZEROSRC12( 56, pv.cmple.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmple.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmple.b, 0x154b011a, 0x62e533de )
  TEST_RR_ZERODEST( 59, pv.cmple.b, 0x4f949a59, 0x81e4ed38 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
