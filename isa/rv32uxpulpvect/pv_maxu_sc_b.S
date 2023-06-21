# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.maxu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.maxu.sc.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.maxu.sc.b, 0x44444444, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.maxu.sc.b, 0xbbbbbbbb, 0x9150b003, 0xb0ea0bbb )
  TEST_RR_OP( 5, pv.maxu.sc.b, 0x9d9d9d9d, 0x55043c98, 0xa00c829d )
  TEST_RR_OP( 6, pv.maxu.sc.b, 0x478ee05e, 0x128ee05e, 0x2eb92947 )
  TEST_RR_OP( 7, pv.maxu.sc.b, 0x9e7a6ed6, 0x9e7a6ed6, 0x7941d42c )
  TEST_RR_OP( 8, pv.maxu.sc.b, 0xf3f3f3f3, 0xbbebdabf, 0xa2c023f3 )
  TEST_RR_OP( 9, pv.maxu.sc.b, 0x62626f62, 0x365e6f06, 0x2bf44e62 )
  TEST_RR_OP( 10, pv.maxu.sc.b, 0xd4d4d4d4, 0xd2622660, 0x5bd040d4 )
  TEST_RR_OP( 11, pv.maxu.sc.b, 0xc54b9e07, 0xc54b9e07, 0xd1637404 )
  TEST_RR_OP( 12, pv.maxu.sc.b, 0x3e3e8f3e, 0x252d8f13, 0x1133b13e )
  TEST_RR_OP( 13, pv.maxu.sc.b, 0x41a0dc34, 0x41a0dc34, 0x04f7be06 )
  TEST_RR_OP( 14, pv.maxu.sc.b, 0x6767d667, 0x6415d625, 0x87996e67 )
  TEST_RR_OP( 15, pv.maxu.sc.b, 0xb48c8c8c, 0xb409834a, 0x4a44478c )
  TEST_RR_OP( 16, pv.maxu.sc.b, 0x8ab09ce9, 0x8ab09ce9, 0xefdf8c0d )
  TEST_RR_OP( 17, pv.maxu.sc.b, 0x5b8f5b5b, 0x338f5748, 0xede7ef5b )
  TEST_RR_OP( 18, pv.maxu.sc.b, 0x98e47d96, 0x98e40a96, 0x23afe27d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.maxu.sc.b, 0x82225537, 0x82225537, 0x10607c08 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.maxu.sc.b, 0xb3b3b3b3, 0xab877b39, 0x970b57b3 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.maxu.sc.b, 0xd3d3d7d3, 0xb488d793, 0xb136e0d3 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.maxu.sc.b, 0xf9dac2dd, 0xf9da73dd, 0xfe5b3dc2 )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.maxu.sc.b, 0xedededed, 0x709f70ed )
  TEST_RR_SRC12_EQ_DEST( 24, pv.maxu.sc.b, 0x1dd5e614, 0x1dd5e614 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.maxu.sc.b, 0x9d555555, 0x9d0c4f55, 0x9d0c4f55 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.maxu.sc.b, 0xeea76969, 0xeea75369, 0xeea75369 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.maxu.sc.b, 0xf5637663, 0xf5107663, 0xf5107663 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.maxu.sc.b, 0xf6417f1d, 0xf6417f1d, 0xf6417f1d )
  TEST_RR_DEST_BYPASS( 47, 1, pv.maxu.sc.b, 0xde4b9c4b, 0xde129c4b, 0xde129c4b )
  TEST_RR_DEST_BYPASS( 48, 2, pv.maxu.sc.b, 0xd9784444, 0xd9783244, 0xd9783244 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.maxu.sc.b, 0xe7d7e3a5, 0xe7d7e3a5, 0xd970c333 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.maxu.sc.b, 0xb3909090, 0xb3604b6f, 0x0da21b90 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.maxu.sc.b, 0xbabaceba, 0x066ecea1, 0x519b22ba )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.maxu.sc.b, 0x3eabc55a, 0x08abc55a, 0xdc778f3e )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.maxu.sc.b, 0xd5d5d5d5, 0x4a3b46bf, 0xc24533d5 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.maxu.sc.b, 0x5af8ebd5, 0x56f8ebd5, 0x6b93955a )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.maxu.sc.b, 0xa9cbcaa9, 0x81cbca09, 0xbb1fdea9 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.maxu.sc.b, 0xdfdfdfdf, 0x6266d8af, 0x3e6a83df )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.maxu.sc.b, 0xb9b9b9b9, 0x763e0a69, 0x1faa35b9 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.maxu.sc.b, 0x8f8ff2e5, 0x652ef2e5, 0xead8cc8f )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.maxu.sc.b, 0xad6ee0bb, 0xad02e0bb, 0x4b08cd6e )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.maxu.sc.b, 0x6259e695, 0x620ce695, 0xd950aa59 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.maxu.sc.b, 0xfad0d0d0, 0xfa9e5acd, 0xf52d1bd0 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.maxu.sc.b, 0xe7e7e7f9, 0x22cb80f9, 0x4ee69fe7 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.maxu.sc.b, 0xe873b573, 0xe81fb50b, 0x53083673 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.maxu.sc.b, 0xf4858585, 0xf4180c65, 0xeb0ce985 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.maxu.sc.b, 0xd9d9d9d9, 0x3c018574, 0x14ddc3d9 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.maxu.sc.b, 0x87e387c9, 0x37e34ac9, 0xe6cc8b87 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.maxu.sc.b, 0x6f6f6f6f, 0x86b0596f )
  TEST_RR_ZEROSRC1( 50, pv.maxu.sc.b, 0x4d4d4d4d, 0x4f5b1e4d )
  
  TEST_RR_ZEROSRC2( 51, pv.maxu.sc.b, 0xb2252862, 0xb2252862 )
  TEST_RR_ZEROSRC2( 52, pv.maxu.sc.b, 0xdb74e231, 0xdb74e231 )
  
  TEST_RR_ZEROSRC12( 53, pv.maxu.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.maxu.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.maxu.sc.b, 0x40f295a0, 0x418e3d45 )
  TEST_RR_ZERODEST( 56, pv.maxu.sc.b, 0x86358146, 0x5a191ec1 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
