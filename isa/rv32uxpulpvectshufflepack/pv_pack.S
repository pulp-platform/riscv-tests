# See LICENSE for license details.

#*****************************************************************************
# pv.pack
#-----------------------------------------------------------------------------
#
# Test pv.pack instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.pack, 0x2211eeff, 0x44332211, 0xccddeeff )
  TEST_RR_OP( 3, pv.pack, 0x9364adee, 0x6f149364, 0x2dc8adee )
  TEST_RR_OP( 4, pv.pack, 0x9eaa352a, 0x18ef9eaa, 0xd5da352a )
  TEST_RR_OP( 5, pv.pack, 0xc88deccf, 0xda8bc88d, 0xca0feccf )
  TEST_RR_OP( 6, pv.pack, 0xb10c2f04, 0x5836b10c, 0x5e612f04 )
  TEST_RR_OP( 7, pv.pack, 0x934f3af4, 0xc975934f, 0x3b043af4 )
  TEST_RR_OP( 8, pv.pack, 0x57a11aaa, 0xce0457a1, 0xc2b91aaa )
  TEST_RR_OP( 9, pv.pack, 0x2fb5671d, 0x50852fb5, 0xe349671d )
  TEST_RR_OP( 10, pv.pack, 0xdbb8ad64, 0x1f2cdbb8, 0xc725ad64 )
  TEST_RR_OP( 11, pv.pack, 0xdc998c2c, 0x9b99dc99, 0x400d8c2c )
  TEST_RR_OP( 12, pv.pack, 0x664b4935, 0xca2f664b, 0x1f584935 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 13, pv.pack, 0xe9979df8, 0xf3c5e997, 0x8bf29df8 )
  TEST_RR_SRC1_EQ_DEST( 14, pv.pack, 0x3350bc15, 0x4e033350, 0xba66bc15 )
  
  TEST_RR_SRC2_EQ_DEST( 15, pv.pack, 0x1486945a, 0x70c31486, 0x57c8945a )
  TEST_RR_SRC2_EQ_DEST( 16, pv.pack, 0x807a2429, 0x094d807a, 0x07172429 )
  
  TEST_RR_SRC12_EQ_DEST( 17, pv.pack, 0xaf19af19, 0xba84af19 )
  TEST_RR_SRC12_EQ_DEST( 18, pv.pack, 0xfbd9fbd9, 0x8b94fbd9 )
  
  TEST_RR_DEST_BYPASS( 37, 0, pv.pack, 0x024f024f, 0x75e8024f, 0x75e8024f )
  TEST_RR_DEST_BYPASS( 38, 1, pv.pack, 0x85cb85cb, 0xedfa85cb, 0xedfa85cb )
  TEST_RR_DEST_BYPASS( 39, 2, pv.pack, 0x4d1a4d1a, 0x23b94d1a, 0x23b94d1a )
  TEST_RR_DEST_BYPASS( 40, 0, pv.pack, 0xb65cb65c, 0x5a45b65c, 0x5a45b65c )
  TEST_RR_DEST_BYPASS( 41, 1, pv.pack, 0xfc18fc18, 0x32a8fc18, 0x32a8fc18 )
  TEST_RR_DEST_BYPASS( 42, 2, pv.pack, 0xe58ee58e, 0x213ae58e, 0x213ae58e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 19, 0, 0, pv.pack, 0xc118b15d, 0x62ffc118, 0x0709b15d )
  TEST_RR_SRC12_BYPASS( 20, 0, 1, pv.pack, 0x9ad4988d, 0x41359ad4, 0x752f988d )
  TEST_RR_SRC12_BYPASS( 21, 0, 2, pv.pack, 0x15836c08, 0x7fb61583, 0x2bf46c08 )
  TEST_RR_SRC12_BYPASS( 22, 1, 0, pv.pack, 0x2fa54adb, 0xae362fa5, 0xa3a44adb )
  TEST_RR_SRC12_BYPASS( 23, 1, 1, pv.pack, 0x6fed55c9, 0x5ae96fed, 0xfb1755c9 )
  TEST_RR_SRC12_BYPASS( 24, 1, 2, pv.pack, 0xd07ab8c3, 0x3b57d07a, 0x8769b8c3 )
  TEST_RR_SRC12_BYPASS( 25, 2, 0, pv.pack, 0x0a0dbf3b, 0x4ce50a0d, 0x7768bf3b )
  TEST_RR_SRC12_BYPASS( 26, 2, 1, pv.pack, 0x41970db1, 0xebad4197, 0x26cf0db1 )
  TEST_RR_SRC12_BYPASS( 27, 2, 2, pv.pack, 0x3a3a9c83, 0x045d3a3a, 0x3b5c9c83 )
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.pack, 0x62f37045, 0x254d62f3, 0xb6af7045 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.pack, 0xb440b8f4, 0xa15fb440, 0x0c34b8f4 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.pack, 0xbb60e28b, 0xefbbbb60, 0xcafae28b )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.pack, 0xb51e3c41, 0x5780b51e, 0xea963c41 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.pack, 0x435f646e, 0xc4f8435f, 0x6a44646e )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.pack, 0x5814860a, 0xe9cb5814, 0xff5c860a )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.pack, 0x3d6f67c4, 0x9e6c3d6f, 0xcb9367c4 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.pack, 0x8bf4534f, 0x27f68bf4, 0x68aa534f )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.pack, 0xa4b774f6, 0x4952a4b7, 0x5ee574f6 )
  
  

  TEST_RR_ZEROSRC1( 43, pv.pack, 0x0000dca7, 0x19bddca7 )
  TEST_RR_ZEROSRC1( 44, pv.pack, 0x00002eac, 0xd7522eac )
  
  TEST_RR_ZEROSRC2( 45, pv.pack, 0x9aa90000, 0x3bc89aa9 )
  TEST_RR_ZEROSRC2( 46, pv.pack, 0x926b0000, 0xb902926b )
  
  TEST_RR_ZEROSRC12( 47, pv.pack, 0x00000000 )
  TEST_RR_ZEROSRC12( 48, pv.pack, 0x00000000 )
  
  TEST_RR_ZERODEST( 49, pv.pack, 0x28a3d1f9, 0x2d21ea4c )
  TEST_RR_ZERODEST( 50, pv.pack, 0x3d02c481, 0xec9c09fe )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
