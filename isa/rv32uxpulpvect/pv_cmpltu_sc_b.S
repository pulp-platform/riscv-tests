# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpltu.sc.b, 0x01010100, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpltu.sc.b, 0x01010100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpltu.sc.b, 0x01010100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpltu.sc.b, 0x01000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpltu.sc.b, 0x01010000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpltu.sc.b, 0x01010101, 0x5e947ccf, 0xfd19a3d0 )
  TEST_RR_OP( 8, pv.cmpltu.sc.b, 0x01010100, 0x8f2f03fa, 0xa77c2ce1 )
  TEST_RR_OP( 9, pv.cmpltu.sc.b, 0x00010000, 0xb63d6d85, 0xb7f3986d )
  TEST_RR_OP( 10, pv.cmpltu.sc.b, 0x01010001, 0x5808ec52, 0xf6755977 )
  TEST_RR_OP( 11, pv.cmpltu.sc.b, 0x00000001, 0xb5faf708, 0x8194da9d )
  TEST_RR_OP( 12, pv.cmpltu.sc.b, 0x00000000, 0x78e8eb9d, 0xe8bc6236 )
  TEST_RR_OP( 13, pv.cmpltu.sc.b, 0x00000100, 0xbb590dac, 0x491bab45 )
  TEST_RR_OP( 14, pv.cmpltu.sc.b, 0x01010101, 0x2715810b, 0xcb00a3a6 )
  TEST_RR_OP( 15, pv.cmpltu.sc.b, 0x00010000, 0xd206b1b5, 0x7d364618 )
  TEST_RR_OP( 16, pv.cmpltu.sc.b, 0x01000000, 0x33e46e7d, 0x8bef5835 )
  TEST_RR_OP( 17, pv.cmpltu.sc.b, 0x00010100, 0x5d2807e5, 0x98f7b137 )
  TEST_RR_OP( 18, pv.cmpltu.sc.b, 0x01010101, 0x3e363e6f, 0x674c019d )
  TEST_RR_OP( 19, pv.cmpltu.sc.b, 0x00010101, 0xf85a0262, 0xf6a0ece2 )
  TEST_RR_OP( 20, pv.cmpltu.sc.b, 0x00000000, 0x8998518e, 0x886db13b )
  TEST_RR_OP( 21, pv.cmpltu.sc.b, 0x01000000, 0x73f9e2e5, 0xa02f6b7b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpltu.sc.b, 0x00010001, 0xb421c260, 0x6fc86394 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpltu.sc.b, 0x00000101, 0xa9aa0f1a, 0x12b4a772 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpltu.sc.b, 0x01010101, 0x723c789a, 0xabdf80ea )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpltu.sc.b, 0x01010001, 0x4f4ed65a, 0x95c62fc1 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpltu.sc.b, 0x00010000, 0xb928e198 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpltu.sc.b, 0x00010100, 0xcf797885 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpltu.sc.b, 0x00000100, 0xe2ed045f, 0xe2ed045f )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpltu.sc.b, 0x00000000, 0xdcc9ad1b, 0xdcc9ad1b )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpltu.sc.b, 0x01000100, 0x07eaaab2, 0x07eaaab2 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpltu.sc.b, 0x00010000, 0xf529dad8, 0xf529dad8 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpltu.sc.b, 0x01000000, 0x377aef6b, 0x377aef6b )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpltu.sc.b, 0x00000000, 0x5eaeea5c, 0x5eaeea5c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpltu.sc.b, 0x00000000, 0x64d6167d, 0xecf3d90e )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpltu.sc.b, 0x01010001, 0x7233bb60, 0xb04fce7c )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpltu.sc.b, 0x00010101, 0xc3391608, 0x100bcf5b )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpltu.sc.b, 0x00000101, 0xdbcb7072, 0xa635668d )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpltu.sc.b, 0x01010101, 0x815fb462, 0x2db535ca )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpltu.sc.b, 0x00000100, 0xbc904b85, 0x9f0e0e5d )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpltu.sc.b, 0x01000001, 0x2c676d54, 0x52b04c5a )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpltu.sc.b, 0x00000000, 0xec65f045, 0x06f48c37 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpltu.sc.b, 0x01010001, 0x1129ee0b, 0x1d075f7d )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpltu.sc.b, 0x01010101, 0xc14968e5, 0xb9c0f7e8 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpltu.sc.b, 0x01010101, 0x463ea76d, 0x382e62ba )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpltu.sc.b, 0x01010101, 0x450c39df, 0x125758e8 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpltu.sc.b, 0x00010100, 0xcc3518e0, 0x00c4b755 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpltu.sc.b, 0x00000000, 0x688cf351, 0x29360107 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpltu.sc.b, 0x01010101, 0x2b4c4c6b, 0x5b8be3fc )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpltu.sc.b, 0x00000000, 0x29b58a94, 0x51af360f )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpltu.sc.b, 0x00010101, 0xdca60206, 0xbb7c75d3 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpltu.sc.b, 0x01010101, 0x2f0be90f, 0xc70e5df7 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpltu.sc.b, 0x01010101, 0x918c1049 )
  TEST_RR_ZEROSRC1( 53, pv.cmpltu.sc.b, 0x01010101, 0x65926669 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpltu.sc.b, 0x00000000, 0xeda61adc )
  TEST_RR_ZEROSRC2( 55, pv.cmpltu.sc.b, 0x00000000, 0xce5f5b62 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpltu.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpltu.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpltu.sc.b, 0xb1679799, 0xd3f3cee6 )
  TEST_RR_ZERODEST( 59, pv.cmpltu.sc.b, 0xac556a1a, 0xd14bc74f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
