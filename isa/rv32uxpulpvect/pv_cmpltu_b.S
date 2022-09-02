# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpltu.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpltu.b, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpltu.b, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpltu.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpltu.b, 0x01000100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpltu.b, 0x00010100, 0x7b3206f1, 0x02ff3421 )
  TEST_RR_OP( 8, pv.cmpltu.b, 0x01010000, 0xa44ac5e6, 0xafcf5452 )
  TEST_RR_OP( 9, pv.cmpltu.b, 0x01010100, 0x5e7f33d9, 0xd3a79620 )
  TEST_RR_OP( 10, pv.cmpltu.b, 0x01000100, 0x23b5a9d6, 0xf630ec1b )
  TEST_RR_OP( 11, pv.cmpltu.b, 0x00000001, 0xe12bcb59, 0xad13bbf2 )
  TEST_RR_OP( 12, pv.cmpltu.b, 0x00010000, 0xca5dce9b, 0x12aec322 )
  TEST_RR_OP( 13, pv.cmpltu.b, 0x01000100, 0x47ec3988, 0xd6287432 )
  TEST_RR_OP( 14, pv.cmpltu.b, 0x00010100, 0x64da85a9, 0x57e0df37 )
  TEST_RR_OP( 15, pv.cmpltu.b, 0x00010100, 0xc421498f, 0x3cd6bc56 )
  TEST_RR_OP( 16, pv.cmpltu.b, 0x01000100, 0x06d240e4, 0xd94da5a9 )
  TEST_RR_OP( 17, pv.cmpltu.b, 0x01000001, 0x26c8fb83, 0xdbb9ccc4 )
  TEST_RR_OP( 18, pv.cmpltu.b, 0x00010001, 0xbe60f83e, 0x67f796d9 )
  TEST_RR_OP( 19, pv.cmpltu.b, 0x01000000, 0xb9e58d55, 0xfba86f19 )
  TEST_RR_OP( 20, pv.cmpltu.b, 0x00000001, 0xf550c012, 0xc917188d )
  TEST_RR_OP( 21, pv.cmpltu.b, 0x01000001, 0xcce4f5a6, 0xf8d8d5c5 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpltu.b, 0x00010000, 0x3706858c, 0x30be0335 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpltu.b, 0x00000100, 0xf46236c1, 0x870c6927 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpltu.b, 0x00000100, 0xc0e2afd4, 0x1999e157 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpltu.b, 0x00010101, 0x663d1d1e, 0x5444d59a )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpltu.b, 0x00000000, 0x12853f71 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpltu.b, 0x00000000, 0x854e4b6b )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpltu.b, 0x00000000, 0x359d7059, 0x359d7059 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpltu.b, 0x00000000, 0x42cd84de, 0x42cd84de )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpltu.b, 0x00000000, 0xdb8a7198, 0xdb8a7198 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpltu.b, 0x00000000, 0x1a10dffc, 0x1a10dffc )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpltu.b, 0x00000000, 0x144bc357, 0x144bc357 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpltu.b, 0x00000000, 0xfb1a20b8, 0xfb1a20b8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpltu.b, 0x01010100, 0x6b2f2532, 0xfac5320d )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpltu.b, 0x00010101, 0xfc271d82, 0x0cb0608d )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpltu.b, 0x01010101, 0x4cab5a10, 0xfbf7e19a )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpltu.b, 0x00000000, 0xbfdad2d9, 0x192b7e91 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpltu.b, 0x01010001, 0xd95fca61, 0xfe937ce3 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpltu.b, 0x01000000, 0x2ff98ae6, 0x945f7dba )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpltu.b, 0x00010001, 0x96359342, 0x4c3c78e1 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpltu.b, 0x00010100, 0x764674c5, 0x25c9b31b )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpltu.b, 0x01000001, 0x0512be03, 0x4a0a951d )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpltu.b, 0x01000101, 0x173968a1, 0x5a2685da )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpltu.b, 0x00010100, 0x65c62890, 0x1ecc5f5e )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpltu.b, 0x01010001, 0x2746fe53, 0xcc7372be )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpltu.b, 0x00000001, 0xfb7bd200, 0x6a249143 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpltu.b, 0x00010101, 0x471dd139, 0x135ded3e )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpltu.b, 0x00010001, 0xebafed09, 0xb5e5a8f7 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpltu.b, 0x00000001, 0xf071692c, 0xc0563bb5 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpltu.b, 0x00010101, 0x5e4a8fb0, 0x00b6b4ce )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpltu.b, 0x01000001, 0x212b9d07, 0x530a1e74 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpltu.b, 0x01010101, 0x1d534c6a )
  TEST_RR_ZEROSRC1( 53, pv.cmpltu.b, 0x01010101, 0x7af38894 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpltu.b, 0x00000000, 0xb6d3258b )
  TEST_RR_ZEROSRC2( 55, pv.cmpltu.b, 0x00000000, 0xed86d11e )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpltu.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpltu.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpltu.b, 0xd5a3d27f, 0x05e693ab )
  TEST_RR_ZERODEST( 59, pv.cmpltu.b, 0x57be5368, 0x74509bfd )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
