# See LICENSE for license details.

#*****************************************************************************
# pv.minu.b
#-----------------------------------------------------------------------------
#
# Test pv.minu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.minu.b, 0x7b7a7978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.minu.b, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.minu.b, 0x20142959, 0xbb2b3459, 0x201429bf )
  TEST_RR_OP( 5, pv.minu.b, 0x28338b46, 0x287d8bae, 0x3833a446 )
  TEST_RR_OP( 6, pv.minu.b, 0x9512105a, 0x951210d9, 0xd878845a )
  TEST_RR_OP( 7, pv.minu.b, 0x2aaa563c, 0x89aa723c, 0x2abb5646 )
  TEST_RR_OP( 8, pv.minu.b, 0x06275a47, 0x7d275a47, 0x06cfe9c7 )
  TEST_RR_OP( 9, pv.minu.b, 0x00065ca6, 0x00065ce0, 0x493fd5a6 )
  TEST_RR_OP( 10, pv.minu.b, 0x4c9f6044, 0x4c9f6044, 0x99bf6bc9 )
  TEST_RR_OP( 11, pv.minu.b, 0x75b0e335, 0x75cefd55, 0x81b0e335 )
  TEST_RR_OP( 12, pv.minu.b, 0x2b3d908f, 0x2bb1f58f, 0xb43d90f8 )
  TEST_RR_OP( 13, pv.minu.b, 0x1e792a55, 0xc379677d, 0x1ebc2a55 )
  TEST_RR_OP( 14, pv.minu.b, 0x92202c81, 0x9220c1be, 0xc3aa2c81 )
  TEST_RR_OP( 15, pv.minu.b, 0x0b10f64f, 0x0b10fbde, 0x7929f64f )
  TEST_RR_OP( 16, pv.minu.b, 0x97676932, 0x9767db57, 0xfc916932 )
  TEST_RR_OP( 17, pv.minu.b, 0x3d42373e, 0x3d423d42, 0xf6ae373e )
  TEST_RR_OP( 18, pv.minu.b, 0x8e70330b, 0x8e8c4378, 0xe370330b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.minu.b, 0x824efa5f, 0x824efa5f, 0x8bbffdce )
  TEST_RR_SRC1_EQ_DEST( 20, pv.minu.b, 0x628a7f20, 0x998a7f20, 0x62d3eb24 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.minu.b, 0x35c91075, 0x35c91075, 0x40fd43c2 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.minu.b, 0x61305e6d, 0x6130d26d, 0xd9675ebb )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.minu.b, 0xea969cab, 0xea969cab )
  TEST_RR_SRC12_EQ_DEST( 24, pv.minu.b, 0x556344d0, 0x556344d0 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.minu.b, 0xe6133f19, 0xe6133f19, 0xe6133f19 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.minu.b, 0xd44eb126, 0xd44eb126, 0xd44eb126 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.minu.b, 0x489258ce, 0x489258ce, 0x489258ce )
  TEST_RR_DEST_BYPASS( 46, 0, pv.minu.b, 0x3c81b79f, 0x3c81b79f, 0x3c81b79f )
  TEST_RR_DEST_BYPASS( 47, 1, pv.minu.b, 0xcb53aeec, 0xcb53aeec, 0xcb53aeec )
  TEST_RR_DEST_BYPASS( 48, 2, pv.minu.b, 0x79f2101e, 0x79f2101e, 0x79f2101e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.minu.b, 0x22384953, 0x22385653, 0x32b84967 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.minu.b, 0xa7006e8b, 0xac46a68b, 0xa7006ef1 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.minu.b, 0x5f0f1c50, 0x5f0f1ce3, 0x7a58a450 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.minu.b, 0xbc973522, 0xbca83522, 0xf297c1ed )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.minu.b, 0x1c9d30a0, 0x1cf1dfa0, 0xc09d30dd )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.minu.b, 0xc80f2a60, 0xee814160, 0xc80f2ab7 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.minu.b, 0x0454dda4, 0x7297e8a4, 0x0454ddfc )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.minu.b, 0x0b2f5311, 0x0b2f7c11, 0xff57535e )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.minu.b, 0x034e216f, 0x034e2193, 0x979a3f6f )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.minu.b, 0x811b5d56, 0x812f5d56, 0x8f1b78c6 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.minu.b, 0x5332502e, 0x5370502e, 0xd732e84f )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.minu.b, 0x9527ee1c, 0x9576fb56, 0xf527ee1c )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.minu.b, 0x64ea7eda, 0x64eaa5f7, 0xcfed7eda )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.minu.b, 0x73013e59, 0xbe2b3e59, 0x7301448c )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.minu.b, 0x5c7b0742, 0x5c8ea842, 0xab7b07e8 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.minu.b, 0x9b188b73, 0x9b308b73, 0xf318d7ad )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.minu.b, 0x30d54f07, 0x30d54f07, 0x93d9a47d )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.minu.b, 0x2b2a437b, 0xe02a43e5, 0x2b9eed7b )
  
  

  TEST_RR_ZEROSRC1( 49, pv.minu.b, 0x00000000, 0x054d6e90 )
  TEST_RR_ZEROSRC1( 50, pv.minu.b, 0x00000000, 0x314fa3ec )
  
  TEST_RR_ZEROSRC2( 51, pv.minu.b, 0x00000000, 0x2d7ba6d5 )
  TEST_RR_ZEROSRC2( 52, pv.minu.b, 0x00000000, 0x3a1204ef )
  
  TEST_RR_ZEROSRC12( 53, pv.minu.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.minu.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.minu.b, 0x63d02ee1, 0xfd4444bb )
  TEST_RR_ZERODEST( 56, pv.minu.b, 0xc3e20ee4, 0x52a5b32c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
