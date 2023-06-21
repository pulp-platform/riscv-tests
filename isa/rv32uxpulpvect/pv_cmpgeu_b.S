# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgeu.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgeu.b, 0x01010101, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgeu.b, 0x01010101, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgeu.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgeu.b, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgeu.b, 0x01010000, 0x6da67a78, 0x51a2e49c )
  TEST_RR_OP( 8, pv.cmpgeu.b, 0x01000001, 0x349675ff, 0x2f978681 )
  TEST_RR_OP( 9, pv.cmpgeu.b, 0x01000101, 0xf76cb4a1, 0xb7ec4151 )
  TEST_RR_OP( 10, pv.cmpgeu.b, 0x00010001, 0x3fe45f41, 0xc480e43a )
  TEST_RR_OP( 11, pv.cmpgeu.b, 0x00010101, 0x19f5f6d4, 0x4bab935f )
  TEST_RR_OP( 12, pv.cmpgeu.b, 0x00000101, 0x081eb5ab, 0x0da4a775 )
  TEST_RR_OP( 13, pv.cmpgeu.b, 0x01010000, 0x464d7347, 0x3b0ca0e8 )
  TEST_RR_OP( 14, pv.cmpgeu.b, 0x00010100, 0x2fe3e932, 0x3ed0305c )
  TEST_RR_OP( 15, pv.cmpgeu.b, 0x00000100, 0x233af726, 0x66acb568 )
  TEST_RR_OP( 16, pv.cmpgeu.b, 0x01010000, 0x95c31630, 0x90465f59 )
  TEST_RR_OP( 17, pv.cmpgeu.b, 0x00010101, 0x56fe8173, 0xff7f4546 )
  TEST_RR_OP( 18, pv.cmpgeu.b, 0x00000001, 0x6c2724d8, 0x88d1c574 )
  TEST_RR_OP( 19, pv.cmpgeu.b, 0x01010100, 0x54eb9f0d, 0x37450ae8 )
  TEST_RR_OP( 20, pv.cmpgeu.b, 0x01000100, 0xc875fc6e, 0x9a97b5aa )
  TEST_RR_OP( 21, pv.cmpgeu.b, 0x01000001, 0xbf46b1b9, 0x62e7ff03 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgeu.b, 0x01000000, 0xc5c53554, 0x2ffeb481 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgeu.b, 0x01010001, 0xfcc6c01e, 0x0092d818 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgeu.b, 0x00010001, 0x8b90c824, 0xd312ec1f )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgeu.b, 0x00000101, 0x1e3cf5f9, 0x3cc88f3d )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgeu.b, 0x01010101, 0xb813a85e )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgeu.b, 0x01010101, 0x9ce72755 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgeu.b, 0x01010101, 0x8136bf89, 0x8136bf89 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgeu.b, 0x01010101, 0x13bd8113, 0x13bd8113 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgeu.b, 0x01010101, 0x4e0d2817, 0x4e0d2817 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgeu.b, 0x01010101, 0xd72adc1f, 0xd72adc1f )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgeu.b, 0x01010101, 0x17aaa2ad, 0x17aaa2ad )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgeu.b, 0x01010101, 0x104bbeb8, 0x104bbeb8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgeu.b, 0x00000001, 0x91af32c0, 0xfedbbaaf )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgeu.b, 0x00010100, 0xa221b69c, 0xe51f3ce7 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgeu.b, 0x00000101, 0x1e1fa56b, 0xb9df5602 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgeu.b, 0x01010000, 0xc1a21728, 0x7ba180e8 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgeu.b, 0x01010100, 0xec2f5ec1, 0x0e2731eb )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgeu.b, 0x00000000, 0xcd5ab609, 0xd172e53e )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgeu.b, 0x01000000, 0x8f821427, 0x89cd3da7 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgeu.b, 0x01010001, 0xbce430bc, 0x73c8429f )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgeu.b, 0x00000101, 0xa18da7a6, 0xd7d4a58f )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgeu.b, 0x00010001, 0x4bc07b85, 0xb215f924 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgeu.b, 0x01010100, 0xd6dfc53c, 0x7e6635ac )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgeu.b, 0x01000000, 0xc66e9722, 0xc5b7fe6a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgeu.b, 0x01010100, 0xe7ad8425, 0x92a91080 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgeu.b, 0x01010101, 0xc8acefb2, 0x860aa688 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgeu.b, 0x00010101, 0x52eef18f, 0xe20cd531 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgeu.b, 0x00000100, 0x396ce55d, 0xddb453ec )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgeu.b, 0x00010100, 0xb478b80d, 0xf94266d1 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgeu.b, 0x00010001, 0x56502ac3, 0x9721983c )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgeu.b, 0x00000000, 0xf7db2c15 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgeu.b, 0x00000000, 0xee59c026 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgeu.b, 0x01010101, 0x60c1edc0 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgeu.b, 0x01010101, 0x16305e28 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgeu.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgeu.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgeu.b, 0x564d12c9, 0x60fdaf8b )
  TEST_RR_ZERODEST( 59, pv.cmpgeu.b, 0xf591cf4c, 0xbdff09c3 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
