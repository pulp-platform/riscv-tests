# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.h
#-----------------------------------------------------------------------------
#
# Test pv.avgu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avgu.h, 0x7d7c7b7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avgu.h, 0x3bbb3bbb, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.avgu.h, 0x5d002e4c, 0x4a25024a, 0x6fdb5a4f )
  TEST_RR_OP( 5, pv.avgu.h, 0x2d8f7f53, 0x517aed0c, 0x09a4119a )
  TEST_RR_OP( 6, pv.avgu.h, 0x3f7f08dc, 0x01dc7c9b, 0x7d22951d )
  TEST_RR_OP( 7, pv.avgu.h, 0x5499573f, 0xbf0918f9, 0xea299585 )
  TEST_RR_OP( 8, pv.avgu.h, 0x03343bde, 0x598f8412, 0xacdaf3aa )
  TEST_RR_OP( 9, pv.avgu.h, 0x7bd03c0f, 0x3326e3e3, 0xc47a943b )
  TEST_RR_OP( 10, pv.avgu.h, 0x79572353, 0x13b8482c, 0xdef6fe7b )
  TEST_RR_OP( 11, pv.avgu.h, 0x0edc0202, 0x09e702ba, 0x13d2014b )
  TEST_RR_OP( 12, pv.avgu.h, 0x35416988, 0x4c1796d8, 0x1e6b3c38 )
  TEST_RR_OP( 13, pv.avgu.h, 0x6da91385, 0x53e56f48, 0x876db7c2 )
  TEST_RR_OP( 14, pv.avgu.h, 0x50563e04, 0x2293f78b, 0x7e1a847d )
  TEST_RR_OP( 15, pv.avgu.h, 0x03a734e8, 0xe7111a58, 0x203d4f79 )
  TEST_RR_OP( 16, pv.avgu.h, 0x0dfb5184, 0xf08be695, 0x2b6cbc73 )
  TEST_RR_OP( 17, pv.avgu.h, 0x6ba7655d, 0xe93916bd, 0xee16b3fd )
  TEST_RR_OP( 18, pv.avgu.h, 0x2b386ba1, 0x42e321a6, 0x138eb59c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.avgu.h, 0x7a7f31f4, 0xe6d644a8, 0x0e291f40 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.avgu.h, 0x330e61f1, 0x73f55005, 0xf22873de )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.avgu.h, 0x63c73e6e, 0x31ee65c0, 0x95a1171d )
  TEST_RR_SRC2_EQ_DEST( 22, pv.avgu.h, 0x28b41a05, 0x5c2e752e, 0xf53abedd )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.avgu.h, 0x7ac6054f, 0x7ac6854f )
  TEST_RR_SRC12_EQ_DEST( 24, pv.avgu.h, 0x79c0281a, 0xf9c0a81a )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.avgu.h, 0x363a7b33, 0xb63a7b33, 0xb63a7b33 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.avgu.h, 0x05e93c98, 0x05e9bc98, 0x05e9bc98 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.avgu.h, 0x48da0d45, 0xc8da0d45, 0xc8da0d45 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.avgu.h, 0x396f6f65, 0xb96fef65, 0xb96fef65 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.avgu.h, 0x7330451f, 0xf330c51f, 0xf330c51f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.avgu.h, 0x3f4a73d3, 0x3f4af3d3, 0x3f4af3d3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.avgu.h, 0x7a040ad7, 0xc757a422, 0x2cb2718d )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.avgu.h, 0x037d1ed7, 0x7ef4d40f, 0x880769a0 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.avgu.h, 0x417a66d8, 0x1f5da1d3, 0x63972bdd )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.avgu.h, 0x3f2b4e0c, 0x0d8ed97e, 0x70c9c29a )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.avgu.h, 0x123c0842, 0x878c6d31, 0x9ceda353 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.avgu.h, 0x39380bb5, 0xb7f25a6c, 0xba7ebcff )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.avgu.h, 0x79316963, 0xd573da1c, 0x1ceff8ab )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.avgu.h, 0x22a42457, 0xbbb30a59, 0x89963e55 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.avgu.h, 0x440c4b2d, 0x9d065528, 0xeb124132 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.avgu.h, 0x4dc10ebe, 0x16484c6c, 0x853bd110 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.avgu.h, 0x77c8384c, 0x6241b91f, 0x8d4fb77a )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.avgu.h, 0x22da77d7, 0xe9be6c22, 0x5bf7838d )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.avgu.h, 0x7c357fff, 0xff95ed8b, 0xf8d51273 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.avgu.h, 0x127a0f9b, 0x0f8c0b1c, 0x1568141b )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.avgu.h, 0x37b412f6, 0xa33a39d7, 0xcc2fec15 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.avgu.h, 0x56311962, 0x2440d853, 0x88235a71 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.avgu.h, 0x353e5522, 0xb1ca6ad4, 0xb8b23f71 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.avgu.h, 0x4ab218e5, 0x708fb12a, 0x24d580a0 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.avgu.h, 0x414c6935, 0x8298d26a )
  TEST_RR_ZEROSRC1( 50, pv.avgu.h, 0x715532db, 0xe2aa65b6 )
  
  TEST_RR_ZEROSRC2( 51, pv.avgu.h, 0x33b37021, 0x6767e043 )
  TEST_RR_ZEROSRC2( 52, pv.avgu.h, 0x1b0b44a4, 0x36168948 )
  
  TEST_RR_ZEROSRC12( 53, pv.avgu.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.avgu.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.avgu.h, 0x212b8f0d, 0x92d79d18 )
  TEST_RR_ZERODEST( 56, pv.avgu.h, 0xdf4bc9e9, 0xc40b5a93 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
