# See LICENSE for license details.

#*****************************************************************************
# pv.minu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.minu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.minu.sc.b, 0x78787878, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.minu.sc.b, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.minu.sc.b, 0x02020202, 0xb0880e34, 0xbc657302 )
  TEST_RR_OP( 5, pv.minu.sc.b, 0xb95009a5, 0xb95009a5, 0xcbff2ec6 )
  TEST_RR_OP( 6, pv.minu.sc.b, 0x53535353, 0xa4c3bb62, 0x48991653 )
  TEST_RR_OP( 7, pv.minu.sc.b, 0x742f78c1, 0x742f78d3, 0x54115bc1 )
  TEST_RR_OP( 8, pv.minu.sc.b, 0x3f113f3f, 0xce11b6ad, 0x6ecd3d3f )
  TEST_RR_OP( 9, pv.minu.sc.b, 0x574a4f9a, 0x574a4fd9, 0x33d3759a )
  TEST_RR_OP( 10, pv.minu.sc.b, 0x20202020, 0xa073d86b, 0x5a404520 )
  TEST_RR_OP( 11, pv.minu.sc.b, 0x69691422, 0x9e9c1422, 0x1d2b4669 )
  TEST_RR_OP( 12, pv.minu.sc.b, 0x76d1eadf, 0x76d1eadf, 0x56d46df1 )
  TEST_RR_OP( 13, pv.minu.sc.b, 0xf9cdd47a, 0xf9cdd47a, 0x4b8a1afe )
  TEST_RR_OP( 14, pv.minu.sc.b, 0x21221622, 0x21d016cf, 0x4e961f22 )
  TEST_RR_OP( 15, pv.minu.sc.b, 0x38cb3632, 0x38cb3632, 0x25bf81dd )
  TEST_RR_OP( 16, pv.minu.sc.b, 0x7f587f6d, 0xa958856d, 0x4e1fb37f )
  TEST_RR_OP( 17, pv.minu.sc.b, 0x05050505, 0x4e9242a9, 0x3728c205 )
  TEST_RR_OP( 18, pv.minu.sc.b, 0x7b47237b, 0xbc472393, 0xae43217b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.minu.sc.b, 0x44205959, 0x4420936f, 0xc819e859 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.minu.sc.b, 0xc5c88bad, 0xc5c88bad, 0x01f156f2 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.minu.sc.b, 0x30454533, 0x30cdf133, 0xd2d50d45 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.minu.sc.b, 0x10101010, 0x9d1be43f, 0xc6f29610 )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.minu.sc.b, 0x9d6c4bf8, 0x9d6c4bf8 )
  TEST_RR_SRC12_EQ_DEST( 24, pv.minu.sc.b, 0x6a07b5b5, 0x6a07fab5 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.minu.sc.b, 0x345d0179, 0x345d0179, 0x345d0179 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.minu.sc.b, 0x220d2222, 0xb70de322, 0xb70de322 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.minu.sc.b, 0x01010101, 0x14fb1c01, 0x14fb1c01 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.minu.sc.b, 0x44444444, 0xd7dff544, 0xd7dff544 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.minu.sc.b, 0x714c7171, 0x974cb271, 0x974cb271 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.minu.sc.b, 0x5f5f5f5f, 0xcf708a5f, 0xcf708a5f )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.minu.sc.b, 0x415c5c50, 0x41d4e750, 0x9f03315c )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.minu.sc.b, 0x07131313, 0x07be2831, 0xc79e6313 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.minu.sc.b, 0x46223e5f, 0x46223ed9, 0xd44ef55f )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.minu.sc.b, 0x04040404, 0x3aacd5ee, 0x57f33f04 )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.minu.sc.b, 0x19191919, 0xf29fa5d0, 0xfd13d819 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.minu.sc.b, 0x9bc429b3, 0x9bc429b3, 0x66781be3 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.minu.sc.b, 0x350a3535, 0x9f0ad85c, 0x8a383335 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.minu.sc.b, 0x0b0b0b0b, 0x85a5aeee, 0x530dd60b )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.minu.sc.b, 0x3b026ed1, 0x3b026ed2, 0xe7f373d1 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.minu.sc.b, 0x03030303, 0x80f95894, 0x2660a503 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.minu.sc.b, 0x11111111, 0xb456f780, 0x1ccde911 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.minu.sc.b, 0x77147777, 0x7d14f88d, 0x5000db77 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.minu.sc.b, 0x23b909c5, 0x23b909e7, 0xb79311c5 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.minu.sc.b, 0xb8a15044, 0xe2a15044, 0x3f2b80b8 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.minu.sc.b, 0x40404040, 0xd16d598c, 0x6a9bef40 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.minu.sc.b, 0xbfbf9174, 0xe4f39174, 0x9796b1bf )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.minu.sc.b, 0x27082ab1, 0x27082ab1, 0x3d5478fb )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.minu.sc.b, 0x092b2b2b, 0x09e5bc9a, 0x5eabd32b )
  
  

  TEST_RR_ZEROSRC1( 49, pv.minu.sc.b, 0x00000000, 0x82b1e90d )
  TEST_RR_ZEROSRC1( 50, pv.minu.sc.b, 0x00000000, 0x9b738199 )
  
  TEST_RR_ZEROSRC2( 51, pv.minu.sc.b, 0x00000000, 0x3fa72423 )
  TEST_RR_ZEROSRC2( 52, pv.minu.sc.b, 0x00000000, 0x2a231d52 )
  
  TEST_RR_ZEROSRC12( 53, pv.minu.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.minu.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.minu.sc.b, 0x2c589983, 0x00eee11f )
  TEST_RR_ZERODEST( 56, pv.minu.sc.b, 0xc6d93811, 0xa0d3187c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
