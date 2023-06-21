# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpge.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpge.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpge.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpge.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpge.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpge.h, 0x00000000, 0xa44d95b9, 0x756c0c4e )
  TEST_RR_OP( 8, pv.cmpge.h, 0x00000001, 0xa3fd58a2, 0x7e0d8e1b )
  TEST_RR_OP( 9, pv.cmpge.h, 0x00010000, 0x44c7b42d, 0xc3dde04b )
  TEST_RR_OP( 10, pv.cmpge.h, 0x00000001, 0x61ab5d4d, 0x7621ffa2 )
  TEST_RR_OP( 11, pv.cmpge.h, 0x00000001, 0x9ecf76e1, 0x1cf490b1 )
  TEST_RR_OP( 12, pv.cmpge.h, 0x00000000, 0xdc97bfa4, 0x5bfe243d )
  TEST_RR_OP( 13, pv.cmpge.h, 0x00000000, 0xf3ceab86, 0x676745e3 )
  TEST_RR_OP( 14, pv.cmpge.h, 0x00000000, 0x9aca9e55, 0x324f3b0a )
  TEST_RR_OP( 15, pv.cmpge.h, 0x00010000, 0x2340af73, 0xbe450eab )
  TEST_RR_OP( 16, pv.cmpge.h, 0x00000001, 0xac0d526c, 0x1389e5ae )
  TEST_RR_OP( 17, pv.cmpge.h, 0x00000001, 0xc6144156, 0x536aede8 )
  TEST_RR_OP( 18, pv.cmpge.h, 0x00010001, 0xd32bc850, 0xc309a586 )
  TEST_RR_OP( 19, pv.cmpge.h, 0x00000001, 0xdb310720, 0x46a89ffd )
  TEST_RR_OP( 20, pv.cmpge.h, 0x00000001, 0xf8e8089c, 0x2c53b69b )
  TEST_RR_OP( 21, pv.cmpge.h, 0x00010000, 0x75f14a02, 0x3da16eae )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpge.h, 0x00000000, 0x908dde7d, 0xafef25fa )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpge.h, 0x00010001, 0xe1a37c23, 0xb964edb7 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpge.h, 0x00000001, 0xc0021bc6, 0x19c1f10f )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpge.h, 0x00000001, 0xee62fb3f, 0xf2cef89c )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpge.h, 0x00010001, 0x20d323e8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpge.h, 0x00010001, 0x1aeab79b )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpge.h, 0x00010001, 0x56550b75, 0x56550b75 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpge.h, 0x00010001, 0x2c20ddd5, 0x2c20ddd5 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpge.h, 0x00010001, 0x8c858999, 0x8c858999 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpge.h, 0x00010001, 0x0b3066e5, 0x0b3066e5 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpge.h, 0x00010001, 0xd16967ac, 0xd16967ac )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpge.h, 0x00010001, 0x08bfa79e, 0x08bfa79e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpge.h, 0x00000001, 0xbe9070d9, 0x421f2c8e )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpge.h, 0x00000000, 0x58ced8c5, 0x758927d1 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpge.h, 0x00000001, 0xf3227e26, 0xf4f5b1db )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpge.h, 0x00010000, 0xac908f21, 0x948ce719 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpge.h, 0x00010000, 0x72f3f33a, 0x11441b3c )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpge.h, 0x00010000, 0x688f988d, 0xcfbf4f3f )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpge.h, 0x00010001, 0x75077915, 0xc10a8505 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpge.h, 0x00010000, 0xc1568536, 0xa101ab36 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpge.h, 0x00010000, 0xa06062e1, 0x83727212 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpge.h, 0x00010001, 0x61487dde, 0x9c839121 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpge.h, 0x00000001, 0x88815517, 0x89cc48d6 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpge.h, 0x00010000, 0x53778ac9, 0xa4aa6a15 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpge.h, 0x00000001, 0xb6ef11a8, 0x492ecb6d )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpge.h, 0x00010000, 0x5ddb8d7c, 0x233d3ce2 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpge.h, 0x00010001, 0x19b90d72, 0x9067c72d )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpge.h, 0x00000001, 0xce23699d, 0xe541a615 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpge.h, 0x00000000, 0xd400b354, 0x4af25f71 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpge.h, 0x00010000, 0x60c696e8, 0xbc615f7b )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpge.h, 0x00000000, 0x30a439a7 )
  TEST_RR_ZEROSRC1( 53, pv.cmpge.h, 0x00000000, 0x35553c6b )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpge.h, 0x00000000, 0xe554e595 )
  TEST_RR_ZEROSRC2( 55, pv.cmpge.h, 0x00010000, 0x76ceaaef )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpge.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpge.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpge.h, 0x955586dc, 0x59c6fb88 )
  TEST_RR_ZERODEST( 59, pv.cmpge.h, 0xae89781b, 0x356d6ca7 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
