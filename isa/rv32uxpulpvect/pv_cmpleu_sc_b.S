# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpleu.sc.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpleu.sc.b, 0x01010101, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpleu.sc.b, 0x01010100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpleu.sc.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpleu.sc.b, 0x01010100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpleu.sc.b, 0x01010100, 0x2e0f03e1, 0x0dc9fca4 )
  TEST_RR_OP( 8, pv.cmpleu.sc.b, 0x01000001, 0xa2f8eb2d, 0x6eb093a8 )
  TEST_RR_OP( 9, pv.cmpleu.sc.b, 0x00000000, 0xee63c458, 0x245c5307 )
  TEST_RR_OP( 10, pv.cmpleu.sc.b, 0x01010001, 0x4da8f411, 0x35cd8daa )
  TEST_RR_OP( 11, pv.cmpleu.sc.b, 0x01010101, 0x3f424093, 0xd74f33cf )
  TEST_RR_OP( 12, pv.cmpleu.sc.b, 0x01010100, 0x2e365188, 0xfe78b172 )
  TEST_RR_OP( 13, pv.cmpleu.sc.b, 0x01000000, 0x4cd3c8b8, 0xf56b576b )
  TEST_RR_OP( 14, pv.cmpleu.sc.b, 0x00000000, 0x3123e466, 0xc1fe2d1e )
  TEST_RR_OP( 15, pv.cmpleu.sc.b, 0x01010100, 0xbeb530f6, 0xe73042da )
  TEST_RR_OP( 16, pv.cmpleu.sc.b, 0x01000100, 0x13f20aa5, 0x3c8bc022 )
  TEST_RR_OP( 17, pv.cmpleu.sc.b, 0x01000001, 0x4cf5f2af, 0xba2e81c6 )
  TEST_RR_OP( 18, pv.cmpleu.sc.b, 0x01010101, 0xe4d35da7, 0x2f5be0f2 )
  TEST_RR_OP( 19, pv.cmpleu.sc.b, 0x00010101, 0xfd520204, 0x715ed95a )
  TEST_RR_OP( 20, pv.cmpleu.sc.b, 0x00000000, 0x7ba587c2, 0x8249a35d )
  TEST_RR_OP( 21, pv.cmpleu.sc.b, 0x00010000, 0xba0494f3, 0x46a1a334 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpleu.sc.b, 0x00010000, 0xe353afa5, 0x4e6df55c )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpleu.sc.b, 0x01000101, 0x18ef8cb9, 0x4d726abe )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpleu.sc.b, 0x00010001, 0xd9108419, 0xbaa0473c )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpleu.sc.b, 0x01000000, 0x2bf397fb, 0x34267089 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpleu.sc.b, 0x00000001, 0x795a5f00 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpleu.sc.b, 0x00000101, 0xb3a55d9c )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpleu.sc.b, 0x00000001, 0xcf8b920c, 0xcf8b920c )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpleu.sc.b, 0x01000101, 0x16dc16a8, 0x16dc16a8 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpleu.sc.b, 0x00000001, 0x4d3cc801, 0x4d3cc801 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpleu.sc.b, 0x01010001, 0x4d86a988, 0x4d86a988 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpleu.sc.b, 0x00000001, 0x6dc47125, 0x6dc47125 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpleu.sc.b, 0x01010101, 0x78ccf0f1, 0x78ccf0f1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpleu.sc.b, 0x00000001, 0x6fd77705, 0xbbd0201a )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpleu.sc.b, 0x00000000, 0x40fab6a7, 0xa344f126 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpleu.sc.b, 0x00000000, 0x8261c291, 0x657d1627 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpleu.sc.b, 0x01010101, 0x551c4fd8, 0xd8dca3e7 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpleu.sc.b, 0x01010000, 0x5325b8c8, 0xa1acc9a4 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpleu.sc.b, 0x01010101, 0xc988796a, 0x42a611e5 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpleu.sc.b, 0x00000000, 0xfd614a63, 0xe5efea11 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpleu.sc.b, 0x00000000, 0xc69af7a7, 0x1b1ec10e )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpleu.sc.b, 0x00000001, 0xab9c7a16, 0x31de0739 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpleu.sc.b, 0x00000001, 0x847e9233, 0xad169257 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpleu.sc.b, 0x01000100, 0x19bd249a, 0xf8fba230 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpleu.sc.b, 0x00000000, 0xbebd6676, 0xf735ad58 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpleu.sc.b, 0x00000001, 0x958fb114, 0x7552d166 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpleu.sc.b, 0x00010000, 0x8203fc5d, 0xfbeef81f )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpleu.sc.b, 0x01010101, 0x5d37506b, 0x6d03a2f9 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpleu.sc.b, 0x01010000, 0x342bcaea, 0xd4e9b88a )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpleu.sc.b, 0x01010101, 0xf91d2b8e, 0x97247afd )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpleu.sc.b, 0x00010000, 0xeb2dfefd, 0x8b7eace7 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpleu.sc.b, 0x01010101, 0x954ab1da )
  TEST_RR_ZEROSRC1( 53, pv.cmpleu.sc.b, 0x01010101, 0x48020fa1 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpleu.sc.b, 0x00000000, 0xc8bf880b )
  TEST_RR_ZEROSRC2( 55, pv.cmpleu.sc.b, 0x00000000, 0x9ed38068 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpleu.sc.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpleu.sc.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpleu.sc.b, 0xdeb8f586, 0xa5ea5038 )
  TEST_RR_ZERODEST( 59, pv.cmpleu.sc.b, 0x18a7cc4a, 0x6d5508bb )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
