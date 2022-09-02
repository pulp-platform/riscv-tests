# See LICENSE for license details.

#*****************************************************************************
# pv.min.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.min.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.min.sc.b, 0x78787878, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.min.sc.b, 0x80818284, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.min.sc.b, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.min.sc.b, 0x8deb8f0f, 0x8deb8f0f, 0xa7176a74 )
  TEST_RR_OP( 6, pv.min.sc.b, 0xdfd7dee6, 0xdfd7de2e, 0xc49016e6 )
  TEST_RR_OP( 7, pv.min.sc.b, 0xc3caf09a, 0xc3caf09a, 0x0cf56844 )
  TEST_RR_OP( 8, pv.min.sc.b, 0xa9aaaaaa, 0xa9bfc6f1, 0xb3eb94aa )
  TEST_RR_OP( 9, pv.min.sc.b, 0xa7a7a7a7, 0x3ecf5011, 0xe06e0da7 )
  TEST_RR_OP( 10, pv.min.sc.b, 0x88dde8e8, 0x88dd374d, 0x980513e8 )
  TEST_RR_OP( 11, pv.min.sc.b, 0x87878787, 0x14006c10, 0x96163687 )
  TEST_RR_OP( 12, pv.min.sc.b, 0x07b293e0, 0x07b293e0, 0xb9eca873 )
  TEST_RR_OP( 13, pv.min.sc.b, 0xda32c178, 0xda32c17d, 0x26aaab78 )
  TEST_RR_OP( 14, pv.min.sc.b, 0xfefefefe, 0x1e056059, 0xca5612fe )
  TEST_RR_OP( 15, pv.min.sc.b, 0x12048c35, 0x12048c35, 0xad03b756 )
  TEST_RR_OP( 16, pv.min.sc.b, 0xcacaca85, 0xd97e4085, 0x1a33d8ca )
  TEST_RR_OP( 17, pv.min.sc.b, 0x9f9f9f9f, 0x24ae0337, 0xe4600c9f )
  TEST_RR_OP( 18, pv.min.sc.b, 0xc4c4c4c4, 0x5917d3dd, 0xd40b56c4 )
  TEST_RR_OP( 19, pv.min.sc.b, 0xc6a0c224, 0xc6a0c226, 0xb00bba24 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.min.sc.b, 0xb9dd51aa, 0xb9dd60aa, 0xeed88b51 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.min.sc.b, 0xf5c13cec, 0xf5c13cec, 0x59bf8672 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.min.sc.b, 0x1f1f181f, 0x78761823, 0x9852ab1f )
  TEST_RR_SRC2_EQ_DEST( 23, pv.min.sc.b, 0x0c97860c, 0x3e978653, 0x3f2c770c )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.min.sc.b, 0x9bc2c2c2, 0x9bf9d6c2 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.min.sc.b, 0xf3c3d2f8, 0xf3c3d2f8 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.min.sc.b, 0x5d9c5961, 0x5d9c5961, 0x5d9c5961 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.min.sc.b, 0x3c032d7a, 0x3c032d7a, 0x3c032d7a )
  TEST_RR_DEST_BYPASS( 46, 2, pv.min.sc.b, 0x491f5656, 0x491f6e56, 0x491f6e56 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.min.sc.b, 0x2026bd57, 0x2026bd57, 0x2026bd57 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.min.sc.b, 0x96140c14, 0x96280c14, 0x96280c14 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.min.sc.b, 0xe9e9e9e9, 0x506045e9, 0x506045e9 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.min.sc.b, 0x77e420a9, 0x77e420a9, 0xd4862f7a )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.min.sc.b, 0x57096975, 0x57096975, 0xc522be77 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.min.sc.b, 0xf52e2e2e, 0xf5424a61, 0xb99d0e2e )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.min.sc.b, 0x91919191, 0x6304bb4e, 0xd9717491 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.min.sc.b, 0xc5c30101, 0xc5c32b7e, 0x161dc601 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.min.sc.b, 0xc3c3c3c3, 0xcddcffc8, 0xf0fa3dc3 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.min.sc.b, 0x903a9e86, 0x903a9e86, 0x36910c5a )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.min.sc.b, 0x80808080, 0x6d8a5ec7, 0x74fe0880 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.min.sc.b, 0xceb881ec, 0xceb881ec, 0xe84b6c22 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.min.sc.b, 0xfdfdfdfd, 0x754c436a, 0x8b0a01fd )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.min.sc.b, 0x1f931f04, 0x49934f04, 0x70f4961f )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.min.sc.b, 0x0800930a, 0x0800930a, 0x72a09a4f )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.min.sc.b, 0x9d94d051, 0x9d94d066, 0xb7d0c951 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.min.sc.b, 0x20aa20b7, 0x48aa72b7, 0x196ada20 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.min.sc.b, 0x91ececec, 0x914afb45, 0x29a1d1ec )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.min.sc.b, 0x87878787, 0x2f6cd70c, 0xd5adba87 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.min.sc.b, 0xa4bfbfbf, 0xa450c918, 0x340a55bf )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.min.sc.b, 0x2bd306fa, 0x70d306fa, 0x1776e42b )
  
  

  TEST_RR_ZEROSRC1( 50, pv.min.sc.b, 0xedededed, 0x9fc1f6ed )
  TEST_RR_ZEROSRC1( 51, pv.min.sc.b, 0x00000000, 0x677a6060 )
  
  TEST_RR_ZEROSRC2( 52, pv.min.sc.b, 0x87f20000, 0x87f2407a )
  TEST_RR_ZEROSRC2( 53, pv.min.sc.b, 0xdd00c400, 0xdd61c477 )
  
  TEST_RR_ZEROSRC12( 54, pv.min.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.min.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.min.sc.b, 0xbd44fb21, 0x0e80dcda )
  TEST_RR_ZERODEST( 57, pv.min.sc.b, 0xa63ad511, 0x8913d4fa )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
