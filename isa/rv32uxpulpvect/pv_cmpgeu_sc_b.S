# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgeu.sc.b, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgeu.sc.b, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgeu.sc.b, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgeu.sc.b, 0x00010101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgeu.sc.b, 0x00000101, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgeu.sc.b, 0x00000000, 0x6a914171, 0x7cb060c1 )
  TEST_RR_OP( 8, pv.cmpgeu.sc.b, 0x00000000, 0x7c2e93f7, 0x249418fa )
  TEST_RR_OP( 9, pv.cmpgeu.sc.b, 0x00000000, 0x88af9e18, 0xa5edf0fc )
  TEST_RR_OP( 10, pv.cmpgeu.sc.b, 0x00000100, 0x1f7ffb5d, 0xe1e993b0 )
  TEST_RR_OP( 11, pv.cmpgeu.sc.b, 0x00010000, 0x85ec3f09, 0x2653bb8f )
  TEST_RR_OP( 12, pv.cmpgeu.sc.b, 0x00000101, 0x2b39c5d4, 0x5d6b4f53 )
  TEST_RR_OP( 13, pv.cmpgeu.sc.b, 0x00000001, 0x246f68cc, 0x173de098 )
  TEST_RR_OP( 14, pv.cmpgeu.sc.b, 0x01010101, 0x9e69e474, 0xbc8f6705 )
  TEST_RR_OP( 15, pv.cmpgeu.sc.b, 0x00000000, 0x9ec24b66, 0x8c122ff6 )
  TEST_RR_OP( 16, pv.cmpgeu.sc.b, 0x01000101, 0xf23de6a8, 0x4eff3d8b )
  TEST_RR_OP( 17, pv.cmpgeu.sc.b, 0x01010101, 0xb29d5dde, 0x7cc8ee1d )
  TEST_RR_OP( 18, pv.cmpgeu.sc.b, 0x01000000, 0xe3756749, 0xf44fbb84 )
  TEST_RR_OP( 19, pv.cmpgeu.sc.b, 0x00010100, 0x0794835b, 0x2634cb82 )
  TEST_RR_OP( 20, pv.cmpgeu.sc.b, 0x01010101, 0x82a347cc, 0x56375e3f )
  TEST_RR_OP( 21, pv.cmpgeu.sc.b, 0x01000001, 0xcd1133ae, 0xe5af0e95 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgeu.sc.b, 0x01010001, 0xfe78038e, 0x8ee52a4f )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgeu.sc.b, 0x01010101, 0x5cb1946f, 0x91b5a80e )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgeu.sc.b, 0x01010101, 0x8768a9e8, 0xe921c033 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgeu.sc.b, 0x00000101, 0x5c8da5aa, 0xfb6a5896 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgeu.sc.b, 0x00010001, 0x82d78ab4 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgeu.sc.b, 0x00000101, 0x9f52ccb7 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgeu.sc.b, 0x00000101, 0x0e25d277, 0x0e25d277 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgeu.sc.b, 0x01010101, 0x7dff6101, 0x7dff6101 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgeu.sc.b, 0x00010001, 0x35cc1c58, 0x35cc1c58 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgeu.sc.b, 0x01000101, 0xd54a7b4c, 0xd54a7b4c )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgeu.sc.b, 0x00000001, 0x74533a7b, 0x74533a7b )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgeu.sc.b, 0x01000101, 0xcb25de3c, 0xcb25de3c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgeu.sc.b, 0x00000001, 0x508577de, 0x9a9d4ec9 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgeu.sc.b, 0x01000000, 0xc818bf64, 0xe997a3c2 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgeu.sc.b, 0x00000101, 0x2406b5d9, 0x7fcf0d8e )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgeu.sc.b, 0x01010000, 0x58a90339, 0x3940074c )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgeu.sc.b, 0x01010101, 0xd0769d1f, 0xf9d0360f )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgeu.sc.b, 0x00010101, 0x229dc7ef, 0x59491c60 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgeu.sc.b, 0x01010101, 0xeed6897f, 0x0692547e )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgeu.sc.b, 0x01010101, 0x8563b82b, 0xcf08250f )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgeu.sc.b, 0x01010101, 0xe5ed93a2, 0x70664548 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgeu.sc.b, 0x01010101, 0xfcf77667, 0xbcc17220 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgeu.sc.b, 0x01010101, 0xedb6df90, 0x16126e6f )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgeu.sc.b, 0x01000001, 0x7728345f, 0xfb9f8142 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgeu.sc.b, 0x01010101, 0xc8b9849a, 0x7264e33d )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgeu.sc.b, 0x00010000, 0x98ea285e, 0x2766bfe8 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgeu.sc.b, 0x01000000, 0xf28d1827, 0x22db62c2 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgeu.sc.b, 0x00000001, 0x304d23fe, 0x901846f9 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgeu.sc.b, 0x00000100, 0x626cfb08, 0x8c251b75 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgeu.sc.b, 0x00010001, 0x56ec1ae8, 0xbe02c078 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgeu.sc.b, 0x00000000, 0x0ec1bfbd )
  TEST_RR_ZEROSRC1( 53, pv.cmpgeu.sc.b, 0x00000000, 0xdf804cc8 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgeu.sc.b, 0x01010101, 0x51a7e87d )
  TEST_RR_ZEROSRC2( 55, pv.cmpgeu.sc.b, 0x01010101, 0x23bad6fc )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgeu.sc.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgeu.sc.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgeu.sc.b, 0x4571a1e5, 0xb8f0de8d )
  TEST_RR_ZERODEST( 59, pv.cmpgeu.sc.b, 0x046972a1, 0x4ca6df72 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
