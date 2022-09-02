# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgtu.sc.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgtu.sc.b, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgtu.sc.b, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgtu.sc.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgtu.sc.b, 0x00000001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgtu.sc.b, 0x01010100, 0xaaa8e00a, 0xf2c92fa1 )
  TEST_RR_OP( 8, pv.cmpgtu.sc.b, 0x00000100, 0x5832d97e, 0x78875797 )
  TEST_RR_OP( 9, pv.cmpgtu.sc.b, 0x01010101, 0xc36fa699, 0x563eef59 )
  TEST_RR_OP( 10, pv.cmpgtu.sc.b, 0x01010101, 0x9489df8b, 0xa621d37d )
  TEST_RR_OP( 11, pv.cmpgtu.sc.b, 0x01010101, 0x7ffe60e5, 0xc2f04a10 )
  TEST_RR_OP( 12, pv.cmpgtu.sc.b, 0x00000000, 0x6671a474, 0xd2aa41b5 )
  TEST_RR_OP( 13, pv.cmpgtu.sc.b, 0x00000100, 0xb632e0c4, 0xb84cbeda )
  TEST_RR_OP( 14, pv.cmpgtu.sc.b, 0x00000100, 0x5c0cc13f, 0x4c913a67 )
  TEST_RR_OP( 15, pv.cmpgtu.sc.b, 0x01010000, 0xfbd0a807, 0x3d5466ca )
  TEST_RR_OP( 16, pv.cmpgtu.sc.b, 0x01010001, 0x91e6015c, 0x0971850e )
  TEST_RR_OP( 17, pv.cmpgtu.sc.b, 0x01000100, 0x8c0e9c53, 0x4899d965 )
  TEST_RR_OP( 18, pv.cmpgtu.sc.b, 0x00010100, 0x0bdc9c2a, 0x0967c651 )
  TEST_RR_OP( 19, pv.cmpgtu.sc.b, 0x01010000, 0xebea067a, 0xb3b56aa3 )
  TEST_RR_OP( 20, pv.cmpgtu.sc.b, 0x01000101, 0x743aa5fa, 0x1a2cf964 )
  TEST_RR_OP( 21, pv.cmpgtu.sc.b, 0x01010101, 0x4f66e3a4, 0x397a111e )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgtu.sc.b, 0x00000000, 0x12e01c27, 0x77974aeb )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgtu.sc.b, 0x00000001, 0x103d1fb2, 0xa3447a62 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgtu.sc.b, 0x01010101, 0x113a52d8, 0xf6ca1f0b )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgtu.sc.b, 0x00000001, 0x302116ad, 0x2e5e3575 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgtu.sc.b, 0x01010100, 0x36f2ef13 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgtu.sc.b, 0x01010100, 0x6dbbce29 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgtu.sc.b, 0x01010100, 0xf748c73d, 0xf748c73d )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgtu.sc.b, 0x00000000, 0x853b8fea, 0x853b8fea )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgtu.sc.b, 0x00000100, 0x091bae77, 0x091bae77 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgtu.sc.b, 0x01010100, 0xa11e3016, 0xa11e3016 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgtu.sc.b, 0x00000100, 0x66298774, 0x66298774 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgtu.sc.b, 0x01000000, 0xb60443a8, 0xb60443a8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgtu.sc.b, 0x01010100, 0xa5dfec2c, 0x7a89cd95 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgtu.sc.b, 0x01000001, 0xce6433d3, 0x69a9b0ae )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgtu.sc.b, 0x01010101, 0xf345abcd, 0x7bec1125 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgtu.sc.b, 0x00000001, 0x404704c8, 0x3d34f9aa )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgtu.sc.b, 0x00000000, 0xd1ad3ab4, 0xe1e212d1 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgtu.sc.b, 0x00000001, 0xb5531ec7, 0xbca18bb7 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgtu.sc.b, 0x00000000, 0xae0f1949, 0x3ed7fbee )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgtu.sc.b, 0x00010001, 0x337434c9, 0x1bea7254 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgtu.sc.b, 0x00000000, 0xae28b33c, 0xb788cefd )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgtu.sc.b, 0x00000001, 0x0b0b0dde, 0x09590387 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgtu.sc.b, 0x01010101, 0x909e6cfa, 0x7a923846 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgtu.sc.b, 0x01000001, 0xfb2f5998, 0x1a4e908a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgtu.sc.b, 0x01010101, 0x98e6adc7, 0x8d6da797 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgtu.sc.b, 0x00000000, 0x8b6b4f2f, 0xbbdc55dc )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgtu.sc.b, 0x01010001, 0xa59a06d2, 0x17802846 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgtu.sc.b, 0x01010101, 0x3d5abd50, 0xd7bcc02b )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgtu.sc.b, 0x00010100, 0x0546ee06, 0x582c5332 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgtu.sc.b, 0x00000000, 0x98701cb3, 0x8c0f73bf )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgtu.sc.b, 0x00000000, 0x94685f58 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgtu.sc.b, 0x00000000, 0x1055d48f )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgtu.sc.b, 0x01010101, 0xd69625a5 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgtu.sc.b, 0x01010101, 0x35d256bc )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgtu.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgtu.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgtu.sc.b, 0xdc8b6d63, 0x43f471d4 )
  TEST_RR_ZERODEST( 59, pv.cmpgtu.sc.b, 0x025b08e9, 0xdcfb134d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
