# See LICENSE for license details.

#*****************************************************************************
# pv.sub.b
#-----------------------------------------------------------------------------
#
# Test pv.sub.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.b, 0x04040404, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.sub.b, 0xfcfcfcfc, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.sub.b, 0x89abcdef, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.sub.b, 0xa5cabf04, 0xa5f31ba4, 0x00295ca0 )
  TEST_RR_OP( 6, pv.sub.b, 0xe07ffeba, 0xc0a53827, 0xe0263a6d )
  TEST_RR_OP( 7, pv.sub.b, 0xb68dee1f, 0x6609603a, 0xb07c721b )
  TEST_RR_OP( 8, pv.sub.b, 0xaf2dcd81, 0x572742f9, 0xa8fa7578 )
  TEST_RR_OP( 9, pv.sub.b, 0xafdd5275, 0xe8abddaa, 0x39ce8b35 )
  TEST_RR_OP( 10, pv.sub.b, 0xd9dee37f, 0x36b1fb75, 0x5dd318f6 )
  TEST_RR_OP( 11, pv.sub.b, 0x7e9d366a, 0x0cccc301, 0x8e2f8d97 )
  TEST_RR_OP( 12, pv.sub.b, 0x28f83880, 0x1e18c777, 0xf6208ff7 )
  TEST_RR_OP( 13, pv.sub.b, 0x45ca677f, 0xd4f61d75, 0x8f2cb6f6 )
  TEST_RR_OP( 14, pv.sub.b, 0x578485e3, 0x7f0680ce, 0x2882fbeb )
  TEST_RR_OP( 15, pv.sub.b, 0x6622f209, 0x22271a2e, 0xbc052825 )
  TEST_RR_OP( 16, pv.sub.b, 0x014f1fe7, 0xb19eb9bc, 0xb04f9ad5 )
  TEST_RR_OP( 17, pv.sub.b, 0x3abac528, 0x6fdd8af7, 0x3523c5cf )
  TEST_RR_OP( 18, pv.sub.b, 0x63294d67, 0xb98881aa, 0x565f3443 )
  TEST_RR_OP( 19, pv.sub.b, 0x4c4052be, 0xa7304ed7, 0x5bf0fc19 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sub.b, 0x1d70154a, 0x3a209b65, 0x1db0861b )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sub.b, 0xd3495161, 0x1a3670df, 0x47ed1f7e )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sub.b, 0x2504f330, 0xef8de510, 0xca89f2e0 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sub.b, 0x9e0ceb58, 0xacaf50eb, 0x0ea36593 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sub.b, 0x00000000, 0xc773d4e1 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sub.b, 0x00000000, 0x971cd2c8 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sub.b, 0x00000000, 0x04b64e82, 0x04b64e82 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sub.b, 0x00000000, 0x936ee72b, 0x936ee72b )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sub.b, 0x00000000, 0x669d4ad8, 0x669d4ad8 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sub.b, 0x00000000, 0x1e170353, 0x1e170353 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sub.b, 0x00000000, 0x11a8ded0, 0x11a8ded0 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sub.b, 0x00000000, 0xab35361c, 0xab35361c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sub.b, 0xc836b88a, 0xe73e4321, 0x1f088b97 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sub.b, 0xc64a89be, 0xc7050c2e, 0x01bb8370 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sub.b, 0x3c1cea36, 0x99f8320b, 0x5ddc48d5 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sub.b, 0xbce9c01e, 0x821d8081, 0xc634c063 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sub.b, 0x182a116a, 0x1b5f2433, 0x033513c9 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sub.b, 0xe0d61804, 0xc82087a8, 0xe84a6fa4 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sub.b, 0xf5ea54f7, 0xc44bc8c4, 0xcf6174cd )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sub.b, 0x28d09723, 0x96a6e1f4, 0x6ed64ad1 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sub.b, 0xa5954d90, 0x6951fc6b, 0xc4bcafdb )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sub.b, 0x39597022, 0x50602a8f, 0x1707ba6d )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sub.b, 0x5b08b469, 0x4592b617, 0xea8a02ae )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sub.b, 0x92d7bb6a, 0x6af0f95f, 0xd8193ef5 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sub.b, 0x68395864, 0xb18fba0e, 0x495662aa )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sub.b, 0x9247fe79, 0x8047eb59, 0xee00ede0 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sub.b, 0x7530b8ff, 0x727aea7e, 0xfd4a327f )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sub.b, 0xf7d02f4f, 0xb3e902f6, 0xbc19d3a7 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sub.b, 0x7a66c534, 0x88201056, 0x0eba4b22 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sub.b, 0x1b7b35b4, 0x06b1b544, 0xeb368090 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sub.b, 0x9dca8d94, 0x6336736c )
  TEST_RR_ZEROSRC1( 51, pv.sub.b, 0xaa708491, 0x56907c6f )
  
  TEST_RR_ZEROSRC2( 52, pv.sub.b, 0x249a2c5e, 0x249a2c5e )
  TEST_RR_ZEROSRC2( 53, pv.sub.b, 0x2c300d41, 0x2c300d41 )
  
  TEST_RR_ZEROSRC12( 54, pv.sub.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sub.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sub.b, 0x5dcce4f4, 0xc2875c3f )
  TEST_RR_ZERODEST( 57, pv.sub.b, 0xcf46c1b0, 0x4d207aec )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
