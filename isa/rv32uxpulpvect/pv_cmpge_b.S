# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpge.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpge.b, 0x01010101, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpge.b, 0x01010101, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpge.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpge.b, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpge.b, 0x01010001, 0xf3e1bc4b, 0xf3a61bd1 )
  TEST_RR_OP( 8, pv.cmpge.b, 0x01010100, 0xe85f0abc, 0xa4c8e564 )
  TEST_RR_OP( 9, pv.cmpge.b, 0x00010100, 0xba1641ed, 0xce98a878 )
  TEST_RR_OP( 10, pv.cmpge.b, 0x01000001, 0x5ed39a2c, 0x5d470fc7 )
  TEST_RR_OP( 11, pv.cmpge.b, 0x01000000, 0x6c34aef2, 0x464a4ef6 )
  TEST_RR_OP( 12, pv.cmpge.b, 0x01010001, 0x69ac3f39, 0xa7a068ca )
  TEST_RR_OP( 13, pv.cmpge.b, 0x00010001, 0x78479b58, 0x79200c12 )
  TEST_RR_OP( 14, pv.cmpge.b, 0x01000100, 0x56bc6d3a, 0x3328e04f )
  TEST_RR_OP( 15, pv.cmpge.b, 0x01010000, 0x29278a07, 0xa7ab973d )
  TEST_RR_OP( 16, pv.cmpge.b, 0x01000001, 0x4bc6c87e, 0xf0fcff45 )
  TEST_RR_OP( 17, pv.cmpge.b, 0x01010000, 0x796b8ca6, 0xa106c5e0 )
  TEST_RR_OP( 18, pv.cmpge.b, 0x00000101, 0xdfb62a49, 0x7ff3c8a3 )
  TEST_RR_OP( 19, pv.cmpge.b, 0x00000001, 0xbfd7d504, 0x4d3b5dc7 )
  TEST_RR_OP( 20, pv.cmpge.b, 0x01010001, 0x34208e10, 0xb5a77903 )
  TEST_RR_OP( 21, pv.cmpge.b, 0x01000001, 0x3220b146, 0xe2615ffe )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpge.b, 0x01000000, 0x67da8bee, 0xf11fbc04 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpge.b, 0x00000101, 0xa1dc36f2, 0xd70fc9ad )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpge.b, 0x00000101, 0x3b0a426f, 0x4a51f623 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpge.b, 0x00000000, 0xb612d62f, 0x01415d4d )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpge.b, 0x01010101, 0xe8ed53dd )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpge.b, 0x01010101, 0x4d4fda4a )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpge.b, 0x01010101, 0x95a01979, 0x95a01979 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpge.b, 0x01010101, 0xc9e3d45a, 0xc9e3d45a )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpge.b, 0x01010101, 0xa5f796f9, 0xa5f796f9 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpge.b, 0x01010101, 0x67ad7502, 0x67ad7502 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpge.b, 0x01010101, 0xc6b7cc31, 0xc6b7cc31 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpge.b, 0x01010101, 0x58335c30, 0x58335c30 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpge.b, 0x01000100, 0xcd823a27, 0xcb25d369 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpge.b, 0x01010001, 0x25ff0639, 0x0fe138a5 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpge.b, 0x01000000, 0x138af08c, 0xe8786d4d )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpge.b, 0x00010100, 0xe9ec778a, 0xf7d4529b )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpge.b, 0x01000000, 0x76dab1ed, 0x0c65c06a )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpge.b, 0x00010101, 0x0573344e, 0x6b8baf0d )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpge.b, 0x01010101, 0xe5437338, 0xdcfdcf17 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpge.b, 0x00000000, 0x529db04d, 0x5ae27d5a )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpge.b, 0x01000000, 0xe0baaa75, 0x92eef07a )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpge.b, 0x01000101, 0xd6864123, 0xd477fdf4 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpge.b, 0x01000100, 0x7c4dc904, 0x6e5ab55e )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpge.b, 0x00000001, 0xb7b60649, 0x0f1058d3 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpge.b, 0x01000100, 0xd33c430f, 0xb8512456 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpge.b, 0x01000100, 0x5edd073a, 0xf922a366 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpge.b, 0x01010001, 0x2e6d0fe3, 0x1a2762b7 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpge.b, 0x01000100, 0x1ef475e9, 0xad7eb21b )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpge.b, 0x00000001, 0xb1c2e0f2, 0x4c200be6 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpge.b, 0x00000000, 0xe180fde4, 0x46ff327b )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpge.b, 0x00010000, 0x02c24f5a )
  TEST_RR_ZEROSRC1( 53, pv.cmpge.b, 0x00010000, 0x50965259 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpge.b, 0x00000000, 0x88f7efff )
  TEST_RR_ZEROSRC2( 55, pv.cmpge.b, 0x01010001, 0x2e7aa522 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpge.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpge.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpge.b, 0xf9fb5ee1, 0x17980b55 )
  TEST_RR_ZERODEST( 59, pv.cmpge.b, 0xd66163bd, 0x79253b3a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
