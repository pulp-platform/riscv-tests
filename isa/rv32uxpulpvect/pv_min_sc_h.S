# See LICENSE for license details.

#*****************************************************************************
# pv.min.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.min.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.min.sc.h, 0x79787978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.min.sc.h, 0x80818284, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.min.sc.h, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.min.sc.h, 0xa15aad7e, 0xa15aad7e, 0x0da30daf )
  TEST_RR_OP( 6, pv.min.sc.h, 0x5502a8b1, 0x5612a8b1, 0x666a5502 )
  TEST_RR_OP( 7, pv.min.sc.h, 0xdd73a252, 0x4e65a252, 0x6748dd73 )
  TEST_RR_OP( 8, pv.min.sc.h, 0xb61224de, 0xb61224de, 0x9560366e )
  TEST_RR_OP( 9, pv.min.sc.h, 0xf1f4f1f4, 0x00f37e10, 0xc97bf1f4 )
  TEST_RR_OP( 10, pv.min.sc.h, 0x98e398e3, 0xae5173f2, 0xf2cd98e3 )
  TEST_RR_OP( 11, pv.min.sc.h, 0x8a2d8a2d, 0x14251fd9, 0xb17e8a2d )
  TEST_RR_OP( 12, pv.min.sc.h, 0xd97ad97a, 0x40a3f3a9, 0x36bcd97a )
  TEST_RR_OP( 13, pv.min.sc.h, 0xf450c61a, 0x1ee0c61a, 0xfbedf450 )
  TEST_RR_OP( 14, pv.min.sc.h, 0xc328c328, 0x39784f8d, 0x1b5ec328 )
  TEST_RR_OP( 15, pv.min.sc.h, 0xa832a832, 0xd1a9cbb3, 0xa550a832 )
  TEST_RR_OP( 16, pv.min.sc.h, 0xda338d63, 0xdd728d63, 0x81f7da33 )
  TEST_RR_OP( 17, pv.min.sc.h, 0xe92d24f5, 0xe92d6f9c, 0x571924f5 )
  TEST_RR_OP( 18, pv.min.sc.h, 0x932914cc, 0x93295356, 0x9f9514cc )
  TEST_RR_OP( 19, pv.min.sc.h, 0x905b905b, 0x0500c47e, 0xff20905b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.min.sc.h, 0x8ff7e4ba, 0x8ff7144e, 0x4407e4ba )
  TEST_RR_SRC1_EQ_DEST( 21, pv.min.sc.h, 0x8b878b87, 0x12e4bd1a, 0x6afa8b87 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.min.sc.h, 0x9f3f9f3f, 0x224478f8, 0x27529f3f )
  TEST_RR_SRC2_EQ_DEST( 23, pv.min.sc.h, 0x269aa0c4, 0x284aa0c4, 0x747d269a )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.min.sc.h, 0xdf8bdf8b, 0x0838df8b )
  TEST_RR_SRC12_EQ_DEST( 25, pv.min.sc.h, 0xcb1e3c29, 0xcb1e3c29 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.min.sc.h, 0xe25a3cab, 0xe25a3cab, 0xe25a3cab )
  TEST_RR_DEST_BYPASS( 45, 1, pv.min.sc.h, 0xb3e7e8b3, 0xb3e7e8b3, 0xb3e7e8b3 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.min.sc.h, 0x83f92e11, 0x83f92e11, 0x83f92e11 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.min.sc.h, 0x42544254, 0x6b2a4254, 0x6b2a4254 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.min.sc.h, 0x9d809d80, 0x48009d80, 0x48009d80 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.min.sc.h, 0xab13ab13, 0x0a2eab13, 0x0a2eab13 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.min.sc.h, 0xb0edeced, 0xb0edeced, 0x0b3d0b44 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.min.sc.h, 0x983ac082, 0x983ac082, 0x87232f5d )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.min.sc.h, 0xabb5abb5, 0xf48af27d, 0x7a67abb5 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.min.sc.h, 0xef55e168, 0x06ebe168, 0xf10def55 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.min.sc.h, 0x2dd6c821, 0x2dd6c821, 0xd7a07af9 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.min.sc.h, 0x02480248, 0x091c6692, 0xd41a0248 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.min.sc.h, 0x8bf68bf6, 0x3344b533, 0xb35d8bf6 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.min.sc.h, 0xa88ccac2, 0xa88c7373, 0x3598cac2 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.min.sc.h, 0xa625f5d5, 0xa625f5d5, 0x061c3a13 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.min.sc.h, 0x2a26327a, 0x2a26327a, 0x8cd77d40 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.min.sc.h, 0x85738573, 0xf9458e40, 0x15c98573 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.min.sc.h, 0xc3e62a75, 0xc3e62a75, 0xe1a96f0e )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.min.sc.h, 0xa010266f, 0xa010266f, 0xcb203952 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.min.sc.h, 0xcc62669c, 0xcc626799, 0xe696669c )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.min.sc.h, 0xff4e9851, 0x5dcb9851, 0x7483ff4e )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.min.sc.h, 0x82e88629, 0x82e88629, 0x4f380775 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.min.sc.h, 0x05060506, 0x15933785, 0x2c4b0506 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.min.sc.h, 0x91aea7c6, 0x91aed9ff, 0x18e4a7c6 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.min.sc.h, 0xcd8acd8a, 0x33decd8a )
  TEST_RR_ZEROSRC1( 51, pv.min.sc.h, 0x00000000, 0xac7e36ca )
  
  TEST_RR_ZEROSRC2( 52, pv.min.sc.h, 0x9e62e22e, 0x9e62e22e )
  TEST_RR_ZEROSRC2( 53, pv.min.sc.h, 0xbb2cf046, 0xbb2cf046 )
  
  TEST_RR_ZEROSRC12( 54, pv.min.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.min.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.min.sc.h, 0x32f4d512, 0xb6e7b2cb )
  TEST_RR_ZERODEST( 57, pv.min.sc.h, 0x324d91b1, 0x96bb5278 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
