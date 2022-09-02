# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.b
#-----------------------------------------------------------------------------
#
# Test pv.maxu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.maxu.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.maxu.b, 0x77665544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.maxu.b, 0xdab6fe64, 0xdab6de51, 0x547dfe64 )
  TEST_RR_OP( 5, pv.maxu.b, 0xde3bfec8, 0x0d1c23ba, 0xde3bfec8 )
  TEST_RR_OP( 6, pv.maxu.b, 0x83afa454, 0x83061154, 0x69afa445 )
  TEST_RR_OP( 7, pv.maxu.b, 0x2491c5e6, 0x24914e8f, 0x0382c5e6 )
  TEST_RR_OP( 8, pv.maxu.b, 0xebc48f61, 0x02c46661, 0xeb548f3c )
  TEST_RR_OP( 9, pv.maxu.b, 0x6a5c889d, 0x0407469d, 0x6a5c8899 )
  TEST_RR_OP( 10, pv.maxu.b, 0xb099ec5d, 0x5399265d, 0xb08dec36 )
  TEST_RR_OP( 11, pv.maxu.b, 0x729452fc, 0x6794207a, 0x720852fc )
  TEST_RR_OP( 12, pv.maxu.b, 0xf864b0c7, 0xf82bb0b9, 0x7d6413c7 )
  TEST_RR_OP( 13, pv.maxu.b, 0x2f8492f1, 0x2f7220f1, 0x2b8492c0 )
  TEST_RR_OP( 14, pv.maxu.b, 0xc957c3d1, 0xc95700d1, 0x813ec342 )
  TEST_RR_OP( 15, pv.maxu.b, 0xf6def2f9, 0xf6de8145, 0x17abf2f9 )
  TEST_RR_OP( 16, pv.maxu.b, 0x9cdae5ec, 0x9cdae556, 0x2364a9ec )
  TEST_RR_OP( 17, pv.maxu.b, 0xe8862297, 0xe8862297, 0xd44f1766 )
  TEST_RR_OP( 18, pv.maxu.b, 0xa83ccd7f, 0x7822b17f, 0xa83ccd77 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.maxu.b, 0xa864b1d9, 0xa864add9, 0x7b1bb130 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.maxu.b, 0xe3f4caa8, 0xd4f4ca1b, 0xe30d38a8 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.maxu.b, 0x97aae4b2, 0x97aa8406, 0x4365e4b2 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.maxu.b, 0xf459a381, 0xf44f766a, 0xb159a381 )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.maxu.b, 0x9b23f53f, 0x9b23f53f )
  TEST_RR_SRC12_EQ_DEST( 24, pv.maxu.b, 0x990e4f48, 0x990e4f48 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.maxu.b, 0xf41cc8a4, 0xf41cc8a4, 0xf41cc8a4 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.maxu.b, 0xf5b69999, 0xf5b69999, 0xf5b69999 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.maxu.b, 0xab1d8f19, 0xab1d8f19, 0xab1d8f19 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.maxu.b, 0xe2f953c2, 0xe2f953c2, 0xe2f953c2 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.maxu.b, 0x51ec6979, 0x51ec6979, 0x51ec6979 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.maxu.b, 0x35811d67, 0x35811d67, 0x35811d67 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.maxu.b, 0xeef3d39a, 0xb5b17931, 0xeef3d39a )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.maxu.b, 0xdc6974f3, 0xc4696bf3, 0xdc24749a )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.maxu.b, 0xaca2df38, 0xac94df38, 0x39a21226 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.maxu.b, 0x84d6567a, 0x59d64b0f, 0x84c4567a )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.maxu.b, 0xc89be5c8, 0xc89b78c8, 0x4d6de555 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.maxu.b, 0xffc57af0, 0x8dc5603d, 0xff927af0 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.maxu.b, 0x9be48582, 0x957c6c82, 0x9be48521 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.maxu.b, 0xfb9aaa95, 0xfb3f4a94, 0xa69aaa95 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.maxu.b, 0x43a0f89d, 0x43a0f89d, 0x1633ae90 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.maxu.b, 0xeaf1bb7f, 0x94f1bb7f, 0xea546103 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.maxu.b, 0xfdd3ff82, 0xabd3ff82, 0xfdbb7f57 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.maxu.b, 0xfe9aacc1, 0x5a94ac9d, 0xfe9a87c1 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.maxu.b, 0x3dc2b294, 0x2b98b21c, 0x3dc26494 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.maxu.b, 0x8eecf2be, 0x34ecf26c, 0x8e5104be )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.maxu.b, 0x6d40f199, 0x1033b099, 0x6d40f147 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.maxu.b, 0x39e4c2d3, 0x2de467d3, 0x3982c24d )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.maxu.b, 0xebdce5fe, 0x0bdce582, 0xeb9f1bfe )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.maxu.b, 0xbec653df, 0x03035310, 0xbec633df )
  
  

  TEST_RR_ZEROSRC1( 49, pv.maxu.b, 0xf3fa586f, 0xf3fa586f )
  TEST_RR_ZEROSRC1( 50, pv.maxu.b, 0xa21b03ac, 0xa21b03ac )
  
  TEST_RR_ZEROSRC2( 51, pv.maxu.b, 0xdaa3a430, 0xdaa3a430 )
  TEST_RR_ZEROSRC2( 52, pv.maxu.b, 0x180e9ee4, 0x180e9ee4 )
  
  TEST_RR_ZEROSRC12( 53, pv.maxu.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.maxu.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.maxu.b, 0x7835a963, 0xe42149d7 )
  TEST_RR_ZERODEST( 56, pv.maxu.b, 0xda71fea2, 0x32314045 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
